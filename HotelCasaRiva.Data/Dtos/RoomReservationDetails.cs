using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("RoomReservationDetails")]
    public class RoomReservationDetails
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int RoomReservationDetailsId { get; set; }
        public int ReservationDetailsId { get; set; }
        public int RoomId { get; set; }

        public virtual ReservationDetails ReservationDetails { get; set; }
        public virtual Room Room { get; set; }
    }
}
