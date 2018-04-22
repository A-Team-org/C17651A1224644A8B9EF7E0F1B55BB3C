<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="HotelCasaRiva.Web.Rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Content/Scripts/Custom/Room.js"></script>
    <script src="Content/Scripts/moment.js"></script>
    <script src="Content/Scripts/daterangepicker.js"></script>
    <script src="Content/Scripts/require.js"></script>
    <script src="Content/Scripts/main.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="delicious">
        <div class="container">
            <div class="delicious-info">
                <h3>ROOMS</h3>
                <div class="strip-line"></div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 custom-datepicker">
                        <input type="text" id="config-demo" class="form-control">
                        <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                    </div>
                    <div class="col-lg-4 col-md-4">
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div id="1" class="btn btn-primary btn-roomsearch">View Rates</div>
                    </div>
                </div>
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
    <!-- Modal -->
    <div class="modal fade" id="roomModal" role="dialog">
        <div class="modal-dialog modal-lg">

            <!-- Modal content-->
            <div class="modal-content">
                <%--        <div class="modal-header">
        </div>--%>
                <div class="modal-body" id="modalBody">
                    <div class="row">
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <div class="room-title" id="roomTitle">Test</div>
                            <div class="room-subTitle" id="roomSubTitle">Test</div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-2">
                            <button type="button" class="close cross-button" data-dismiss="modal">&times;</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <img src="Content/Images/room/Deluxe%20King/1.jpg" width="100%" />
                        </div>
                    </div>
                    <hr class="hr-line" />
                    <div id="roomFeatures">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="feature-category" id="featureCategory">Test</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="feature-title">Test</div>
                                <div class="feature-description">Test</div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="feature-title">Test</div>
                                <div class="feature-description">Test</div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="feature-title">Test</div>
                                <div class="feature-description">Test</div>
                            </div>
                        </div>
                    </div>
                    <%--          <p>Some text in the modal.</p>--%>
                </div>
                <%--        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
            </div>

        </div>
    </div>

</asp:Content>
