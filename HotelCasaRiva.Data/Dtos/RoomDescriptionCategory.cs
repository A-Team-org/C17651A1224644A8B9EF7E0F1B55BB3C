using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("RoomDescriptionCategory")]
    public class RoomDescriptionCategory
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RoomDescriptionCategoryId { get; set; }
        public string Category { get; set; }

        public virtual ICollection<CategoryRoomDescription> CategoryRoomDescriptions { get; set; }
    }
}
