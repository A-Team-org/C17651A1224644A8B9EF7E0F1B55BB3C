<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AvailableRooms.aspx.cs" Inherits="HotelCasaRiva.Web.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="delicious">
        <div class="container">
            <div class="delicious-info">
                <h3>ROOMS</h3>
                <div class="strip-line"></div>
            </div>
            <div class="availableroom-block">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="title">Dining Services</div>
                        <hr />
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="availableroom-image">
                                    <img src="Content/Images/room/Deluxe%20King/1.jpg">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="info-title">Regular Rate</div>
                                <div class="feature-title">Beds and Bedding</div>
                                <div class="feature-description">Maximum Occupancy: 2</div>
                                <div class="feature-description">1 King</div>
                                <div class="feature-description">Rollaway beds permitted: 1 at 1,000.00 INR per night</div>
                                <div class="btn btn-link">View more room details</div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="btn btn-primary disabled">Select</div>
                            </div>
                        </div>

                        <%--                        <div class="info">Room service, 24-hour</div>
                        <div class="info-botom">Room service</div>--%>
                    </div>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="title">
                            Breakfast               
                        </div>
                        <div class="info">Buffet breakfast, fee from 550.00 INR</div>
                    </div>--%>
                </div>
            </div>
            <div class="availableroom-block">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="title">Dining Services</div>
                        <hr />
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3">
                                <div class="availableroom-image">
                                    <img src="Content/Images/Goggle%20review%20images/CasaRiva24.png" />
                                </div>
                            </div>
                            <div class="col-lg-9 col-md-9 col-sm-9">
                                <div class="info-title">Regular Rate</div>
                            </div>
                        </div>

                        <%--                        <div class="info">Room service, 24-hour</div>
                        <div class="info-botom">Room service</div>--%>
                    </div>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="title">
                            Breakfast               
                        </div>
                        <div class="info">Buffet breakfast, fee from 550.00 INR</div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
