using System.Collections.Generic;

namespace HotelCasaRiva.Services.Models
{
    public class RoomDetail
    {
        public string RoomType { get; set; }
        public string RoomDescCategory { get; set; }
        public string RoomDescTitle { get; set; }
        public List<string> RoomDesc { get; set; }
    }
}
