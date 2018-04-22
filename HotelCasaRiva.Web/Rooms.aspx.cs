using HotelCasaRiva.Data;
using HotelCasaRiva.Services.Interfaces;
using HotelCasaRiva.Services.Repositiories;
using System;
namespace HotelCasaRiva.Web
{
    public partial class Rooms : System.Web.UI.Page
    {
        private IRoomService _service;
        public Rooms()
        {
            _service = new RoomService(new ApplicationDbContext());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            roomBLock.DataSource = _service.GetRoomBlockData();
            roomBLock.DataBind();
        }

        [System.Web.Services.WebMethod]
        public string RoomDetails(string roomID)
        {
            var roomDetails = string.Empty;
            roomDetails = _service.GetRoomDetails(Convert.ToInt32(roomID));
            return roomDetails;
        }
    }
}