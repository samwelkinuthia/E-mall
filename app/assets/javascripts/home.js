// function initMap() {
//   var directionsService = new google.maps.DirectionsService;
//   var directionsDisplay = new google.maps.DirectionsRenderer;
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 7,
//     center: {
//       lat: -1.2833,
//       lng: 36.7833
//     }
//   });
//   directionsDisplay.setMap(map);
//
//   var onChangeHandler = function() {
//     calculateAndDisplayRoute(directionsService, directionsDisplay);
//   };
//   document.getElementById('start').addEventListener('change', onChangeHandler);
//   document.getElementById('end').addEventListener('change', onChangeHandler);
// }
//
// function calculateAndDisplayRoute(directionsService, directionsDisplay) {
//   directionsService.route({
//     origin: document.getElementById('start').value,
//     destination: document.getElementById('end').value,
//     travelMode: 'DRIVING'
//   }, function(response, status) {
//     if (status === 'OK') {
//       directionsDisplay.setDirections(response);
//     } else {
//       window.alert('Directions request failed due to ' + status);
//     }
//   });
// }


function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
}
