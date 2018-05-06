<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OurHotel.aspx.cs" Inherits="HotelCasaRiva.Web.OurHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?key=<%=ConfigurationSettings.AppSettings["googleAPIKey"]%>"></script>
    <script src="Content/Scripts/Custom/Map.js"></script>
    <script src="Content/Scripts/Custom/Room.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- banner -->
    <div id="homeCarousel" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#homeCarousel" data-slide-to="1"></li>
            <li data-target="#homeCarousel" data-slide-to="2"></li>
            <li data-target="#homeCarousel" data-slide-to="3"></li>
            <li data-target="#homeCarousel" data-slide-to="4"></li>
            <li data-target="#homeCarousel" data-slide-to="5"></li>
            <li data-target="#homeCarousel" data-slide-to="6"></li>
            <li data-target="#homeCarousel" data-slide-to="7"></li>
            <li data-target="#homeCarousel" data-slide-to="8"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active moving">
                <img class="img-responsive" src="Content/Images/HomeSlider/01.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img class="img-responsive" src="Content/Images/HomeSlider/02.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img src="Content/Images/HomeSlider/03.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img class="img-responsive" src="Content/Images/HomeSlider/04.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img src="Content/Images/HomeSlider/05.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img class="img-responsive" src="Content/Images/HomeSlider/06.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img src="Content/Images/HomeSlider/07.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img class="img-responsive" src="Content/Images/HomeSlider/08.jpg" alt="CasaRiva" style="width: 100%;">
            </div>
            <div class="item moving">
                <img class="img-responsive" src="Content/Images/HomeSlider/09.jpg" alt="CasaRiva" style="width: 100%;">
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="clearfix"></div>

    <!-- banner-bottom -->
    <!-- //banner-bottom -->
    <!-- //banner -->
    <!-- welcome -->
    <div class="delicious">
        <div class="container">
            <div class="delicious-info">
                <h3>HOTEL ROOMS</h3>
                <div class="strip-line"></div>
                <div class="row">
                    <asp:Repeater ID="roomBLock" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="room-block">
                                    <div class="room-image">
                                        <img src="<%#Eval("roomImage")%>">
                                        <div class="room-description">
                                            <div class="main-caption"><%#Eval("roomType")%></div>
                                            <div class="sub-caption"><%#Eval("roomTitle")%></div>
                                        </div>
                                    </div>
                                    <div id="<%#Eval("roomID")%>" class="btn btn-primary btn-room roomModal">View Details</div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <!-- //welcome -->
    <!-- good -->
    <div class="good">
        <div class="container">
            <div class="good-info">
                <h3>FINE DESERTS</h3>
                <div class="strip-line"></div>
            </div>
            <div class="good-grids">
                <div class="col-md-5 good-right">
                    <img src="Content/images/pic12.jpg" alt="" />
                    <div class="desc">
                        <p>DESERT</p>
                    </div>
                </div>
                <div class="col-md-7 good-left">
                    <h3>GOOD FOOD KEEPS YOU HEALTHY</h3>
                    <div class="strip"></div>
                    <p>Integer vitae ligula sed lectus consectetur pellentesque blandit nec orci. Nulla ultricies nunc et lorem semper, quis accumsan dui integer vitae ligula sed lectus consectetur pellentesque blandit nec orci. Nulla ultricies nunc et lorem semper, <span>quis accumsan dui aliquam aucibus sagittis placerat	Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers piciis </span>iste natus scele risque auctor volutpat et massa.</p>
                    <p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers piciis iste natus scele risque auctor volutpat et massa.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //good -->
    <!-- delicious -->
    <div class="delicious">
        <div class="container">
            <div class="delicious-info">
                <h3>DELICIOUS FOOD FOR ALL TASTES</h3>
                <div class="strip-line"></div>
            </div>
            <div class="delicious-grids">
                <div class="col-md-3 delicious-grid">
                    <h3>PASTA SPECIAL</h3>
                    <img src="Content/images/g3.jpg" alt="" />
                    <p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                    <a href="#">MORE</a>
                </div>
                <div class="col-md-3 delicious-grid">
                    <h3>FRIED CHICKEN</h3>
                    <img src="Content/images/g6.jpg" alt="" />
                    <p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                    <a href="#">MORE</a>
                </div>
                <div class="col-md-3 delicious-grid">
                    <h3>SAUSAGES</h3>
                    <img src="Content/images/g5.jpg" alt="" />
                    <p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                    <a href="#">MORE</a>
                </div>
                <div class="col-md-3 delicious-grid">
                    <h3>BREAD SLICE</h3>
                    <img src="Content/images/g1.jpg" alt="" />
                    <p>Pellentesque ut urna eu mauris scele risque auctor volutpat et massa pers lectus consectetur pellentesque blandit nec orci</p>
                    <a href="#">MORE</a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //delicious -->
    <div id="map">
        <%--                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d66818.66823625914!2d72.72165848109589!3d21.170628654550082!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04d16b54428e7%3A0x8c0f7f983ee3af7c!2sHOTEL+CASA+RIVA!5e0!3m2!1sen!2sin!4v1513658428496" height="100%" width="100%" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
    </div>


    <div class="modal fade" id="roomModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-body" id="modalBody">
                    <div class="row">
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <div class="room-title" id="roomTitle"></div>
                            <div class="room-subTitle" id="roomSubTitle"></div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-2">
                            <button type="button" class="close cross-button" data-dismiss="modal">&times;</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <img src="Content/Images/room/Deluxe%20King/1.jpg" width="100%" id="roomImage" />
                        </div>
                    </div>
                    <hr class="hr-line" />
                    <div id="roomFeatures">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="feature-category" id="featureCategory"></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="feature-title"></div>
                                <div class="feature-description"></div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="feature-title"></div>
                                <div class="feature-description"></div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="feature-title"></div>
                                <div class="feature-description"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


</asp:Content>
