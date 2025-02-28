<template>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
  </head>

  <div class="app">

    <h1 class="title">IF YOU ARE HAVING A PROBLEM THEN CONTACT US</h1>
    <div class="map">
    </div>
    <h2>Contacts:</h2>
    <h3>Email: beast.app@gmail.com</h3>
    <h3>Phone nr: +372 3490 2330</h3>


  </div>

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
