namespace HotelCasaRiva.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddDtos : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.CategoryRoomDescription",
                c => new
                    {
                        CategoryRoomDescriptionId = c.Int(nullable: false, identity: true),
                        RoomDescriptionCategoryId = c.Int(nullable: false),
                        RoomDescriptionId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CategoryRoomDescriptionId)
                .ForeignKey("dbo.RoomDescription", t => t.RoomDescriptionId, cascadeDelete: true)
                .ForeignKey("dbo.RoomDescriptionCategory", t => t.RoomDescriptionCategoryId, cascadeDelete: true)
                .Index(t => t.RoomDescriptionCategoryId)
                .Index(t => t.RoomDescriptionId);
            
            CreateTable(
                "dbo.RoomDescription",
                c => new
                    {
                        RoomDescriptionId = c.Int(nullable: false, identity: true),
                        RoomTypeId = c.Int(nullable: false),
                        Title = c.String(),
                        Description = c.String(),
                    })
                .PrimaryKey(t => t.RoomDescriptionId)
                .ForeignKey("dbo.RoomType", t => t.RoomTypeId, cascadeDelete: true)
                .Index(t => t.RoomTypeId);
            
            CreateTable(
                "dbo.RoomType",
                c => new
                    {
                        RoomTypeId = c.Int(nullable: false, identity: true),
                        Type = c.String(),
                        Title = c.String(),
                    })
                .PrimaryKey(t => t.RoomTypeId);
            
            CreateTable(
                "dbo.RoomImage",
                c => new
                    {
                        RoomImageId = c.Int(nullable: false, identity: true),
                        RoomTypeId = c.Int(nullable: false),
                        ImagePath = c.String(),
                    })
                .PrimaryKey(t => t.RoomImageId)
                .ForeignKey("dbo.RoomType", t => t.RoomTypeId, cascadeDelete: true)
                .Index(t => t.RoomTypeId);
            
            CreateTable(
                "dbo.RoomDescriptionCategory",
                c => new
                    {
                        RoomDescriptionCategoryId = c.Int(nullable: false, identity: true),
                        Category = c.String(),
                    })
                .PrimaryKey(t => t.RoomDescriptionCategoryId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CategoryRoomDescription", "RoomDescriptionCategoryId", "dbo.RoomDescriptionCategory");
            DropForeignKey("dbo.CategoryRoomDescription", "RoomDescriptionId", "dbo.RoomDescription");
            DropForeignKey("dbo.RoomImage", "RoomTypeId", "dbo.RoomType");
            DropForeignKey("dbo.RoomDescription", "RoomTypeId", "dbo.RoomType");
            DropIndex("dbo.RoomImage", new[] { "RoomTypeId" });
            DropIndex("dbo.RoomDescription", new[] { "RoomTypeId" });
            DropIndex("dbo.CategoryRoomDescription", new[] { "RoomDescriptionId" });
            DropIndex("dbo.CategoryRoomDescription", new[] { "RoomDescriptionCategoryId" });
            DropTable("dbo.RoomDescriptionCategory");
            DropTable("dbo.RoomImage");
            DropTable("dbo.RoomType");
            DropTable("dbo.RoomDescription");
            DropTable("dbo.CategoryRoomDescription");
        }
    }
}
