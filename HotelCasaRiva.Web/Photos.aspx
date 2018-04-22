<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Photos.aspx.cs" Inherits="HotelCasaRiva.Web.Photos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="Content/Scripts/Custom/photos.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- delicious -->
    <div class="delicious">
        <div class="container">
            <div class="delicious-info">
                <h3>PHOTOS</h3>
                <div class="strip-line"></div>
            </div>
            <div class="delicious-grids">
                <%--  title --%>
                <div class="col-md-12">
                    <div class="title"><a><i class="fa fa-minus" aria-hidden="true"></i>&nbsp;Hotel Views</a></div>
                </div>
                <%-- blocks --%>
                <div class="col-md-12">
                    <%--                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>FRIED CHICKEN</h3>
                        <img src="Content/images/g6.jpg" alt="" />
                        <%--				<p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                        <a href="#">MORE</a>
                    </div>--%>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Exterior</a></div>
                        <p style="display: none">Located in Suburb and surrounded by greenery, the Courtyard by Marriott Surat Hotel offers a tranquil retreat here in the bustling city.</p>
                    </div>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Front View</a></div>
                        <p style="display: none">Located in Suburb and surrounded by greenery, the Courtyard by Marriott Surat Hotel offers a tranquil retreat here in the bustling city.</p>
                    </div>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Lobby</a></div>
                        <p style="display: none">The hotel's lobby showcases beautiful chandeliers representing Uttarayan fastival of Gujarat and Crystal shine representing the diamonds.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%-- line --%>
                <div class="col-md-12">
                    <hr />
                </div>
                <%--  title --%>
                <div class="col-md-12">
                    <div class="title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Guest Rooms</a></div>
                </div>
                <%-- blocks --%>
                <div class="col-md-12" style="display:none;">
                    <%--                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>FRIED CHICKEN</h3>
                        <img src="Content/images/g6.jpg" alt="" />
                        <%--				<p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                        <a href="#">MORE</a>
                    </div>--%>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Deluxe King Room</a></div>
                        <p style="display: none">Our 5-star hotel rooms provide the setting for memorable Surat visits. A luxurious bedding is perfect for relaxing after a hard day at work. Get some work done with high-speed Internet or relax in front of the 47-inch LED-screen TV.</p>
                    </div>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;King Larger Guest Room - Bedroom</a></div>
                        <p style="display: none">Our spacious Club King guest rooms in Surat features a well-lit work desk, high-speed Internet access, flat-screen 55 inch LCD TV featuring international channels and world-renowned Marriott bedding along with the sofa bed.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%-- line --%>
                <div class="col-md-12">
                    <hr />
                </div>
                <%--  title --%>
                <div class="col-md-12">
                    <div class="title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Dining</a></div>
                </div>
                <%-- blocks --%>
                <div class="col-md-12" style="display:none;">
                    <%--                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>FRIED CHICKEN</h3>
                        <img src="Content/images/g6.jpg" alt="" />
                        <%--				<p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                        <a href="#">MORE</a>
                    </div>--%>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;The Bistro</a></div>
                        <p style="display: none">An all-day dining restaurant offering interactive buffet stations with an A-La-Carte menu option.</p>
                    </div>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Healthy Start Breakfast Sandwich</a></div>
                        <p style="display: none">Start your day with our Healthy Start sandwich made with egg whites, roast turkey, spinach, Havarti cheese on an English muffin.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%-- line --%>
                <div class="col-md-12">
                    <hr />
                </div>
                <%--  title --%>
                <div class="col-md-12">
                    <div class="title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Recreation & Fitness</a></div>
                </div>
                <%-- blocks --%>
                <div class="col-md-12" style="display:none;">
                    <%--                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>FRIED CHICKEN</h3>
                        <img src="Content/images/g6.jpg" alt="" />
                        <%--				<p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                        <a href="#">MORE</a>
                    </div>--%>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Outdoor Pool</a></div>
                        <p style="display: none">Indulge in a relaxing swim and unwind after a busy day in our Surat Hotel.</p>
                    </div>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Fitness Center</a></div>
                        <p style="display: none">Keep up your fitness routine while traveling in Surat with our 24-hour fitness center.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%-- line --%>
                <div class="col-md-12">
                    <hr />
                </div>
                <%--  title --%>
                <div class="col-md-12">
                    <div class="title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Events & Meetings</a></div>
                </div>
                <%-- blocks --%>
                <div class="col-md-12" style="display:none;">
                    <%--                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>FRIED CHICKEN</h3>
                        <img src="Content/images/g6.jpg" alt="" />
                        <%--				<p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                        <a href="#">MORE</a>
                    </div>--%>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Solitaire Meeting Room - Banquet Setup</a></div>
                        <p style="display: none">Whether you require one impressive space or more intimate rooms, our banquet areas can be adjusted to meet your requirements. Our Surat venue will make your next event a success, no matter what your needs.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%-- line --%>
                <div class="col-md-12">
                    <hr />
                </div>
                <%--  title --%>
                <div class="col-md-12">
                    <div class="title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Weddings</a></div>
                </div>
                <%-- blocks --%>
                <div class="col-md-12" style="display:none;">
                    <%--                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>FRIED CHICKEN</h3>
                        <img src="Content/images/g6.jpg" alt="" />
                        <%--				<p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                        <a href="#">MORE</a>
                    </div>--%>
                    <div class="col-md-3 delicious-grid">
                        <%--				<h3>PASTA SPECIAL</h3>--%>
                        <img src="Content/images/g3.jpg" alt="" />
                        <div class="sub-title"><a><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Solitaire Banquet - View</a></div>
                        <p style="display: none">Our dedicated event and meeting managers will take care of the most minute details. Plan your perfect event in Surat with the help of our talented team.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <%-- line --%>
                <div class="col-md-12">
                    <hr />
                </div>
            </div>
        </div>
    </div>
    <!-- //delicious -->

</asp:Content>
