$(document).ready(function () {
    initMap();
});

$(window).resize(function () {
    initMap();
});

function initMap() {
    var hotel = { lat: 21.1743976, lng: 72.73921109999992 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: hotel
    });
    var marker = new google.maps.Marker({
        position: hotel,
        map: map
    });
}
