using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("RoomDescription")]
    public class RoomDescription
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RoomDescriptionId { get; set; }
        public int RoomTypeId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

        public virtual RoomType RoomType { get; set; }
        //public virtual CategoryRoomDescription CategoryRoomDescription { get; set; }
    }
}
