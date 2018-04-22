using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("RoomImage")]
    public class RoomImage
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RoomImageId { get; set; }
        public int RoomTypeId { get; set; }
        public string ImagePath { get; set; }

        public virtual RoomType RoomType { get; set; }
    }
}
