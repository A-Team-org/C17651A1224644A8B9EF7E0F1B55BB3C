using HotelCasaRiva.Data;
using HotelCasaRiva.Data.Dtos;
using HotelCasaRiva.Services.Interfaces;
using HotelCasaRiva.Services.Models;
using HotelCasaRiva.Utilities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace HotelCasaRiva.Services.Repositiories
{
    public class RoomService : IRoomService
    {
        private ApplicationDbContext _context;
        public RoomService(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Room> AvailableRoom(int NoOfPerson, DateTime? CheckIndate, DateTime? CheckOutDate)
        {
            var ListRoom = new List<Room>();
            try
            {
                      //  select* from ReservationDetails
                      //  WHERE('2018-05-14' >= ReservationDetails.CheckInDate and '2018-05-14' <= ReservationDetails.CheckOutDate)
                      //  or('2018-05-16' >= ReservationDetails.CheckInDate AND '2018-05-16' <= ReservationDetails.CheckOutDate)
                      //  or('2018-05-14' <= ReservationDetails.CheckInDate AND '2018-05-16' >= ReservationDetails.CheckOutDate)


                var resarvationRoomList = _context.RoomReservationDetails.
                    Where(x=>(x.ReservationDetails.CheckInDate<=CheckIndate && x.ReservationDetails.CheckOutDate>=CheckIndate)||
                    (x.ReservationDetails.CheckInDate <= CheckOutDate && x.ReservationDetails.CheckOutDate >= CheckOutDate)||
                    (x.ReservationDetails.CheckInDate >= CheckIndate && x.ReservationDetails.CheckOutDate <= CheckOutDate)).
                    Select(x => x.RoomId);

                ListRoom = _context.Rooms.Where(x =>!resarvationRoomList.Contains(x.RoomId)).ToList();
                if(Math.Round(Convert.ToDouble(NoOfPerson/2))<=ListRoom.Count)
                {
                   
                    return ListRoom;
                }
                else
                {
                    return null;
                }
               
            }
            catch(Exception)
            {
                return null;
            }
        }


        public DataTable GetRoomBlockData()
        {
            var dtRoom = new DataTable();
            try
            {
                var listRoomBlock = new List<RoomBlock>();
                listRoomBlock = (from rt in _context.RoomTypes.AsNoTracking()
                                 join ri in _context.RoomImages on rt.RoomTypeId equals ri.RoomTypeId
                                 select new RoomBlock { RoomID = rt.RoomTypeId, RoomImage = ri.ImagePath, RoomTitle = rt.Title, RoomType = rt.Type }).ToList();
                listRoomBlock = listRoomBlock.GroupBy(x => x.RoomID).Select(x => x.First()).ToList();
                dtRoom = listRoomBlock.ToDataTable();
                return dtRoom;
            }
            catch (Exception)
            {
                return dtRoom;
            }
        }

        public string GetRoomDetails(int roomId)
        {
            string roomDetails = string.Empty;
            try
            {
                var listRoomDetail = new List<RoomDetail>();
                listRoomDetail = (from rt in _context.RoomTypes.AsNoTracking()
                                  join ri in _context.RoomImages on rt.RoomTypeId equals ri.RoomTypeId
                                  join rd in _context.RoomDescriptions on rt.RoomTypeId equals rd.RoomTypeId
                                  join crd in _context.CategoryRoomDescriptions on rd.RoomDescriptionId equals crd.RoomDescriptionId
                                  join rc in _context.RoomDescriptionCategories on crd.RoomDescriptionCategoryId equals rc.RoomDescriptionCategoryId
                                  where rt.RoomTypeId == roomId
                                  select new RoomDetail
                                  {
                                      RoomType = rt.Type,
                                      RoomTitle=rt.Title,
                                      RoomImage=ri.ImagePath,
                                      RoomDescCategory = rc.Category,
                                      RoomDescTitle = rd.Title,
                                      RoomDesc = rd.Description
                                  }).ToList().GroupBy(x=>x.RoomDescTitle).Select(x=>x.FirstOrDefault()).ToList();
                var groupByListRoomDetail = listRoomDetail.GroupBy(x => x.RoomDescCategory).ToList();
                roomDetails = JsonConvert.SerializeObject(groupByListRoomDetail);

                //var roomType = hotel.Worksheet("RoomType").Where(x => x["RoomTypeID"].Equals(roomID)).Select(x => x["Type"]).FirstOrDefault().ToString();
                //var roomDescription = hotel.Worksheet("RoomDescription").Where(x => x["RoomTypeID"].Equals(roomID)).Select(x => x).ToList();
                //for (int i = 0; i < roomDescription.Count; i++)
                //{
                //    string roomDescCatID = string.Empty;
                //    var listRoomDescCatIDs = hotel.Worksheet("RDescInRDescCategory").Where(x => x["RoomDescriptionID"].Equals(roomDescription[i][0].Value)).Select(x => x["RoomDescriptionCategoryID"]).ToList();
                //    if (listRoomDescCatIDs.Count > 0)
                //    {
                //        roomDescCatID = listRoomDescCatIDs.FirstOrDefault().ToString();
                //        var roomDescCat = hotel.Worksheet("RoomDescriptionCategory").Where(x => x["RoomDescriptionCategoryID"].Equals(roomDescCatID)).FirstOrDefault()[1].ToString();
                //        var roomDesc = roomDescription[i][3].ToString();
                //        RoomDetail rd = new RoomDetail();
                //        rd.roomType = roomType.ToString();
                //        rd.rommDescCate = roomDescCat;
                //        rd.roomDescTitle = roomDescription[i][2].ToString();
                //        rd.roomDesc = roomDesc.Split(new string[] { "&#32;" }, StringSplitOptions.None).ToList();
                //        listRoomDetail.Add(rd);
                //    }
                //}
                //var listRoomDetailInGroupByTitle = listRoomDetail.GroupBy(x => x.rommDescCate);
                //roomDetails = JsonConvert.SerializeObject(listRoomDetailInGroupByTitle);
                return roomDetails;
            }
            catch (Exception ex)
            {
                return roomDetails;
            }

        }
    }
}
