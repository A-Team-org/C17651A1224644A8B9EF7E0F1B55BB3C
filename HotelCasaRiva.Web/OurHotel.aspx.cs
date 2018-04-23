using HotelCasaRiva.Data;
using HotelCasaRiva.Services.Interfaces;
using HotelCasaRiva.Services.Repositiories;
using System;

namespace HotelCasaRiva.Web
{
    public partial class OurHotel : System.Web.UI.Page
    {
        private IRoomService _service;
        public OurHotel()
        {
            _service = new RoomService(new ApplicationDbContext());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            roomBLock.DataSource = _service.GetRoomBlockData();
            roomBLock.DataBind();
            //string test = _service.GetRoomDetails(1);

        }
    }
}