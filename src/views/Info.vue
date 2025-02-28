<template>
  <router-link :to="'/help/' + choice.name"></router-link>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Info</title>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
  <div class="app">
    <div class="info">
      <h1 id="headtext"></h1>
      <div id="container">
        <div id="image"></div>
        <h2 id="text">The bench press is a strength exercise that works the chest, shoulders, and</h2>
      </div>
   </div>

  </div>
</body>
</template>

<style scoped>
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
  font-size: 40px;
  font-weight: normal;
  margin-left: 40px;
  margin-bottom: 20px;
}

h2 {
  font-size: 25px;
  font-family: Oswald;
  font-weight: normal;
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


.bench{
  width: auto;
  height: 150px;
  margin-right: 20px;
}

.info {
  display: flex;
  flex-direction: column;
}

.description{
  display: flex;
  flex-direction: row;
}

.text2 {
  margin-top: -10px;
  margin-right: 20px;
}
</style>

<script setup></script>
