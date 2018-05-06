namespace HotelCasaRiva.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UpdateReservation : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ReservationDetails",
                c => new
                    {
                        ReservationDetailsId = c.Int(nullable: false, identity: true),
                        CheckInDate = c.DateTime(nullable: false),
                        CheckOutDate = c.DateTime(nullable: false),
                        NumberOfPerson = c.Int(nullable: false),
                        CreatedOnDate = c.DateTime(nullable: false),
                        ModifiedOnDate = c.DateTime(nullable: false),
                        IsCancel = c.Boolean(nullable: false),
                        UserId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.ReservationDetailsId)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.RoomReservationDetails",
                c => new
                    {
                        RoomReservationDetailsId = c.Int(nullable: false, identity: true),
                        ReservationDetailsId = c.Int(nullable: false),
                        RoomId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RoomReservationDetailsId)
                .ForeignKey("dbo.ReservationDetails", t => t.ReservationDetailsId, cascadeDelete: true)
                .ForeignKey("dbo.Room", t => t.RoomId, cascadeDelete: true)
                .Index(t => t.ReservationDetailsId)
                .Index(t => t.RoomId);
            
            CreateTable(
                "dbo.Room",
                c => new
                    {
                        RoomId = c.Int(nullable: false, identity: true),
                        RoomTypeId = c.Int(nullable: false),
                        RoomNumber = c.Int(nullable: false),
                        MaximumAdults = c.Int(),
                        MaximumChildrens = c.Int(),
                    })
                .PrimaryKey(t => t.RoomId)
                .ForeignKey("dbo.RoomType", t => t.RoomTypeId, cascadeDelete: true)
                .Index(t => t.RoomTypeId);
            
            AddColumn("dbo.AspNetUsers", "ContactNo", c => c.String());
            AddColumn("dbo.AspNetUsers", "Address", c => c.String());
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RoomReservationDetails", "RoomId", "dbo.Room");
            DropForeignKey("dbo.Room", "RoomTypeId", "dbo.RoomType");
            DropForeignKey("dbo.RoomReservationDetails", "ReservationDetailsId", "dbo.ReservationDetails");
            DropForeignKey("dbo.ReservationDetails", "UserId", "dbo.AspNetUsers");
            DropIndex("dbo.Room", new[] { "RoomTypeId" });
            DropIndex("dbo.RoomReservationDetails", new[] { "RoomId" });
            DropIndex("dbo.RoomReservationDetails", new[] { "ReservationDetailsId" });
            DropIndex("dbo.ReservationDetails", new[] { "UserId" });
            DropColumn("dbo.AspNetUsers", "Address");
            DropColumn("dbo.AspNetUsers", "ContactNo");
            DropTable("dbo.Room");
            DropTable("dbo.RoomReservationDetails");
            DropTable("dbo.ReservationDetails");
        }
    }
}
