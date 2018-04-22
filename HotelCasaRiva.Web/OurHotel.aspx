<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OurHotel.aspx.cs" Inherits="HotelCasaRiva.Web.OurHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- banner -->
    <div class="container">
        <div id="homeCarousel" class="carousel slide" data-ride="carousel">
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
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Content/Images/HomeSlider/01.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/02.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/03.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/04.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/05.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/06.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/07.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/08.jpg" alt="CasaRiva" style="width: 100%;">
                </div>
                <div class="item">
                    <img src="Content/Images/HomeSlider/09.jpg" alt="CasaRiva" style="width: 100%;">
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
    </div>
    <div class="clearfix"></div>

    <!-- banner-bottom -->
    <!-- //banner-bottom -->
    <!-- //banner -->
    <!-- welcome -->
    <div class="welcome">
        <div class="container">
            <div class="wel-info">
                <h3>WELCOME</h3>
                <div class="strip-line"></div>
                <p>
                    Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet 
			ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur 
			a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis 
			doloribus asperiores repellat.
                </p>
            </div>
            <div class="welcome-grids">
                <div class="col-md-4 welcome-grid-img">
                    <img src="Content/images/pic10.jpg" alt="" />
                    <div class="wel-pos">
                        <h4>FRUIT SALAD</h4>
                    </div>
                </div>
                <div class="col-md-4 welcome-grid">
                    <div class="welcome-gd second">
                        <h4>Temporibus autem </h4>
                        <p>
                            Nam libero tempore, cum soluta nobis 
					est eligendi optioi mpedit quo minus id quod maxime cumque nihil 
					impedit quo minus id quod maxime 
					placeat facere possimus,eligendi optio cumque nihil omnis 
					voluptas assumenda est libero tempore  
                        </p>
                    </div>
                </div>
                <div class="col-md-4 welcome-grid-img">
                    <img src="Content/images/pic11.jpg" alt="" />
                    <div class="wel-pos">
                        <h4>CARROT EGG</h4>
                    </div>
                </div>
                <div class="col-md-4 welcome-grid">
                    <div class="welcome-gd second">
                        <h4>Temporibus autem</h4>
                        <p>
                            Nam libero tempore, cum soluta nobis 
					est eligendi optioi mpedit quo minus id quod maxime cumque nihil 
					impedit quo minus id quod maxime 
					placeat facere possimus,eligendi optio cumque nihil omnis 
					voluptas assumenda est libero tempore 
                        </p>
                    </div>
                </div>
                <div class="col-md-4 welcome-grid-img">
                    <img src="Content/images/pic2.jpg" alt="" />
                    <div class="wel-pos">
                        <h4>SPECIAL PRAWNS</h4>
                    </div>
                </div>
                <div class="col-md-4 welcome-grid">
                    <div class="welcome-gd second">
                        <h4>Temporibus autem </h4>
                        <p>
                            Nam libero tempore, cum soluta nobis 
					est eligendi optioi mpedit quo minus id quod maxime cumque nihil 
					impedit quo minus id quod maxime 
					placeat facere possimus,eligendi optio cumque nihil omnis 
					voluptas assumenda est  libero tempore
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
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

</asp:Content>
