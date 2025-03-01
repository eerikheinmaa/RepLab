<template>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"/>
  </head>

  <div class="app">

    <h1 class="title">IF YOU ARE HAVING A PROBLEM THEN CONTACT US</h1>
    <div id="map">
    </div>
    <h2>Contacts:</h2>
    <h3>Email: beast.app@gmail.com</h3>
    <h3>Phone nr: +372 3490 2330</h3>


  </div>

</template>

<style scoped>
html,
body {
  height: 1030px;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: flex-start;
  overflow: hidden;
}

.big-text {
  color: white;
  font-family: roboto;
  font-size: 18px;
  font-weight: bold;
}

.small-text {
  color: white;
  font-family: roboto;
  font-size: 15px;
}



h1 {
  color: white;
  font-family: Oswald;
  font-size: 35px;
  font-weight: normal;
  margin-left: 35px;
  margin-bottom: 20px;
  margin-top: 90px;
}

h2 {
  font-size: 20px;
  font-family: Roboto;
  font-weight: bold;
  color: white;
  margin-bottom: 8px;
  margin-top: 3px;
  margin-left: 40px;
}

h3 {
  margin-left: 40px;
  font-size: 20px;
  font-family: roboto;
  color: white;
  font-weight: normal;
  margin-top: 3px;
  margin-bottom: 3px;
}

#map {
  width: 83%;
  height: 400px;
  margin-left: 40px;
  margin-right: 30px;
  border: 2px solid white;
  margin-bottom: 40px;
}


</style>


<script setup>
import { onMounted } from "vue";

onMounted(() => {
  const script = document.createElement("script");
  script.src = "https://unpkg.com/leaflet@1.9.4/dist/leaflet.js";
  script.async = true;
  script.onload = () => {
    setTimeout(() => {
      var map = L.map('map').setView([59.422441040621614, 24.743238628835822], 16);
      var marker = L.marker([59.422441040621614, 24.743238628835822]).addTo(map);
      marker.bindPopup("<b>We are here!</b><br>Pärnu mnt 71/73").openPopup();
      L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '© OpenStreetMap contributors'
      }).addTo(map);
    }, 500);
  };
  document.head.appendChild(script);
});

/*import { onMounted } from "vue";

function loadGoogleMaps(callback) {
  if (window.google && window.google.maps) {
    callback();
    return;
  }

  const script = document.createElement("script");
  script.src = `https://maps.googleapis.com/maps/api/js?key=AIzaSyAT67Gn8Y9H25G3Jv0T0u5oz9tIzm_1I50&callback=initMap`;
  script.async = true;
  script.defer = true;
  document.head.appendChild(script);

  window.initMap = callback; // Attach callback to window so Google API can call it
}

function initMap() {
  const map = new google.maps.Map(document.getElementById("googleMap"), {
    center: { lat: 59.4223428, lng: 24.7406476 },
    zoom: 5,
  });
}

onMounted(() => {
  loadGoogleMaps(initMap);
});

*/
</script>
