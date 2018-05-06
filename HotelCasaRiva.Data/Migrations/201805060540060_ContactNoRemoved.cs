namespace HotelCasaRiva.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ContactNoRemoved : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.AspNetUsers", "ContactNo");
        }
        
        public override void Down()
        {
            AddColumn("dbo.AspNetUsers", "ContactNo", c => c.String());
        }
    }
}
