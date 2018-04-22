using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("Room")]
    public class Room
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RoomId { get; set; }
        public int RoomTypeId { get; set; }
        public int RoomNumber { get; set; }
        public int? MaximumAdults { get; set; }
        public int? MaximumChildrens { get; set; }

        public virtual RoomType RoomType { get; set; }
    }
}
