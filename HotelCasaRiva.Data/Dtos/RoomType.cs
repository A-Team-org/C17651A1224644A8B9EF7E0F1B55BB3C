using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("RoomType")]
    public class RoomType
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RoomTypeId { get; set; }
        public string Type { get; set; }
        public string Title { get; set; }

        public virtual ICollection<RoomImage> RoomImages { get; set; }
        public virtual ICollection<RoomDescription> RoomDescriptions { get; set; }
    }
}
