<template>
  <router-link to="/help">Got to help</router-link>
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>replit</title>
  <link href="help.css" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
  <div class="app">
    <div class="calender">
      <button class="calender-extencion" ><img src="assets/arrow.svg" class="arrow"></button>
      <h3 class="calender-text">15.12</h3>
      <h3 class="calender-text">14.12</h3>
      <h3 class="calender-text">13.12</h3>
      <h3 class="calender-text">12.12</h3>
      <h3 class="calender-text today">11.12</h3>
      <h3 class="calender-text">10.12</h3>
      <h3 class="calender-text">09.12</h3>
      <h3 class="calender-text">08.12</h3>
      <h3 class="calender-text">07.12</h3>


    </div>
    <h1 class="title">IF YOU ARE HAVING A PROBLEM THEN CONTACT US</h1>
    <div class="map">
    </div>
    <h2>Contacts:</h2>
    <h3>Email: beast.app@gmail.com</h3>
    <h3>Phone nr: +372 3490 2330</h3>



    <div class="footer">
      <div class="footer-pictures">
        <button class="footer-buttons">
          <img src="assets/profile.svg" class="profile">
        </button>
        <button class="footer-buttons">
          <img src="assets/home1.svg" class="home">
        </button>
        <button class="footer-buttons">
          <img src="assets/plans.svg" class="plans">
        </button>
        <button class="footer-buttons">
          <img src="assets/help.svg" class="help">
        </button>
      </div>
    </div>


  </div>
  <script src="script.js"></script>
</body>

</template>

<style>
html, body {
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
}

.small-text {
  color: white;
  font-family: roboto;
  font-size: 15px;
}

h1 {
  color: white;
  font-family: Oswald;
  font-size: 30px;
  font-weight: normal;
  margin-left: 40px;
  margin-bottom: 20px;
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

.app {
  width: 500px;
  height: 150vh;
  border: 2px solid black;
  border-color: black;
  position: relative;
  overflow: hidden; 
  background-color: #0D0101;
  padding-bottom: 50px; 
  display: flex;
  flex-direction: column;
}

.calender {
  display: flex;
  align-items: center;
  flex-direction: row;
  width: 100%; 
  height: 50px;
  overflow-x: auto; 
  white-space: nowrap;
  scrollbar-width: none;
  background-color: #0D0101;
  scroll-behavior: smooth;
}

.calender::-webkit-scrollbar {
  display: none;
}

.arrow {
  width: auto;
  height: 40px;
  position: relative;
  z-index: 10;
}

.calender-extencion {
  position: absolute;
  right: 0;
  top: 0;
  height: 50px;
  width: 50px;
  border: none;
  background: #0D0101;
  display: flex;
  align-items: center;
  justify-content: center;
}

.calender-text {
  background-color: transparent;
  color: white;
  margin-left: 20px;
  margin-right: 20px;
}

.today {
  color: white;
  font-weight: bold;
  text-shadow: 0 0 10px white, 0 0 20px white, 0 0 40px white, 0 0 60px white, 0 0 80px white, 0 0 100px white, 0 0 120px white, 0 0 140px white, 0 0 160px white, 0 0 180px white, 0 0 200px white;
}


.profile {
  width: 50px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.home {
  width: 50px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.plans {
  width: 50px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.help {
  width: 40px;
  height: 40px; 
  margin-right: 30px;
  margin-left: 30px;
  border: 2px solid white;
  padding: 5px;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.footer-pictures {
  display: flex;
  align-items: center;
  justify-content: center;
}

.footer-buttons {
  background-color: transparent;
  border: none;
}

.footer {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #26262d;
  width: 100%;
  bottom: 0; 
  padding: 10px 0;
  border-top: 2px solid white;
  z-index: 1;
  position: relative;
  margin-top: 240px;
}



.map{
  width: 83%;
  height: 400px;
  margin-left: 40px;
  margin-right: 30px;
  border: 2px solid white;
  margin-bottom: 40px;
}

</style>

<script setup></script>
