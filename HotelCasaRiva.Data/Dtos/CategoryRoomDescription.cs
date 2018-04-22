using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("CategoryRoomDescription")]
    public class CategoryRoomDescription
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CategoryRoomDescriptionId { get; set; }
        public int RoomDescriptionCategoryId { get; set; }
        public int RoomDescriptionId { get; set; }

        public virtual RoomDescription RoomDescription { get; set; }
        public virtual RoomDescriptionCategory RoomDescriptionCategory { get; set; }
    }
}
