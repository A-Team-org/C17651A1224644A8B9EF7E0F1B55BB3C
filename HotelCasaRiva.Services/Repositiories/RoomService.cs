using HotelCasaRiva.Data;
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
                                  join rd in _context.RoomDescriptions on rt.RoomTypeId equals rd.RoomTypeId
                                  join crd in _context.CategoryRoomDescriptions on rd.RoomDescriptionId equals crd.RoomDescriptionId
                                  join rc in _context.RoomDescriptionCategories on crd.RoomDescriptionCategoryId equals rc.RoomDescriptionCategoryId
                                  where rt.RoomTypeId == roomId
                                  select new RoomDetail { RoomType = rt.Type, RoomDescCategory = rc.Category, RoomDescTitle = rd.Title, RoomDesc = string.IsNullOrEmpty(rd.Description) == false ? rd.Description.Split(new string[] { "&#32;" }, StringSplitOptions.None).ToList() : null }).ToList();

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
            catch (Exception)
            {
                return roomDetails;
            }

        }
    }
}
