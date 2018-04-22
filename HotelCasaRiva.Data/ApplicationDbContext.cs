using HotelCasaRiva.Data.Dtos;
using HotelCasaRiva.Data.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Data.Entity;

namespace HotelCasaRiva.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public DbSet<RoomType> RoomTypes { get; set; }
        public DbSet<RoomDescription> RoomDescriptions { get; set; }
        public DbSet<RoomImage> RoomImages { get; set; }
        public DbSet<RoomDescriptionCategory> RoomDescriptionCategories { get; set; }
        public DbSet<CategoryRoomDescription> CategoryRoomDescriptions { get; set; }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

        public void EnsureDatabaseCreated()
        {
            Database.CreateIfNotExists();
        }
    }
}
