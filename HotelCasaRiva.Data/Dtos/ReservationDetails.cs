using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using HotelCasaRiva.Data.Identity;

namespace HotelCasaRiva.Data.Dtos
{
    [Table("ReservationDetails")]
    public class ReservationDetails
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ReservationDetailsId { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public int NumberOfPerson { get; set; }
        public DateTime CreatedOnDate { get; set; }
        public DateTime ModifiedOnDate { get; set; }
        public bool IsCancel { get; set; }

        public string UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual ApplicationUser User { get; set; }
    }
}
