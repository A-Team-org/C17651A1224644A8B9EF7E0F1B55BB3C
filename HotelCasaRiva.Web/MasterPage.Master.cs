using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelCasaRiva.Web
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String activepage = Request.RawUrl;
                NavigatePage(activepage);
            }
            catch (Exception)
            {

            }

        }

        public void NavigatePage(string activePage)
        {
            try
            {
                ourhotel.Attributes.Remove("class");
                photos.Attributes.Remove("class");
                dining.Attributes.Remove("class");
                fitness.Attributes.Remove("class");
                localarea.Attributes.Remove("class");
                location.Attributes.Remove("class");
                if (activePage.Contains("OurHotel.aspx"))
                {
                    ourhotel.Attributes.Add("class", "active");
                }
                else if (activePage.Contains("Rooms.aspx"))
                {
                    Rooms.Attributes.Add("class", "active");
                }
                else if (activePage.Contains("Photos.aspx"))
                {
                    photos.Attributes.Add("class", "active");
                }
                else if (activePage.Contains("Dining.aspx"))
                {
                    dining.Attributes.Add("class", "active");
                }
                else if (activePage.Contains("Fitness.aspx"))
                {
                    fitness.Attributes.Add("class", "active");
                }
                else if (activePage.Contains("Local_Area.aspx"))
                {
                    localarea.Attributes.Add("class", "active");
                }
                else if (activePage.Contains("Map.aspx"))
                {
                    location.Attributes.Add("class", "active");
                }
            }
            catch (Exception)
            {

            }
        }

    }
}