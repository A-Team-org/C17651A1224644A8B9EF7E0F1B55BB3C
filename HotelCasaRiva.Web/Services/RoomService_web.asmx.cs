using HotelCasaRiva.Data;
using HotelCasaRiva.Services.Interfaces;
using HotelCasaRiva.Services.Repositiories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

namespace HotelCasaRiva.Web.Services
{
    /// <summary>
    /// Summary description for RoomService_web
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class RoomService_web : System.Web.Services.WebService
    {
        private IRoomService _service;
        public RoomService_web()
        {
            _service = new RoomService(new ApplicationDbContext());
        }

        [WebMethod]
        public string RoomDetails(string roomID)
        {
            string roomDetails = string.Empty;
            try
            {
                roomDetails = _service.GetRoomDetails(Convert.ToInt32(roomID));

            }
            catch (Exception ex)
            {

            }
            return roomDetails;

        }
    }
}
