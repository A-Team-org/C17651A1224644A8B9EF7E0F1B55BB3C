<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="HotelCasaRiva.Web.Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?key=<%=ConfigurationSettings.AppSettings["googleAPIKey"]%>"></script>
    <script src="Content/Scripts/Custom/Map.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="delicious">
        <div class="container">
            <div class="delicious-info">
                <h3>MAP</h3>
                <div class="strip-line"></div>
            </div>
            <div id="map">
                <%--                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d66818.66823625914!2d72.72165848109589!3d21.170628654550082!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04d16b54428e7%3A0x8c0f7f983ee3af7c!2sHOTEL+CASA+RIVA!5e0!3m2!1sen!2sin!4v1513658428496" height="100%" width="100%" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
            </div>
        </div>
    </div>

</asp:Content>
