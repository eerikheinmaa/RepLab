<script setup>
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'

const router = useRouter()
const route = useRoute()
</script>

<template>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
  </head>

  <body>

    <div class="news">
      <h1 class="greeting"> HELLO, JOHN!</h1>
      <div class="news1">
        <h2 class="mike">MIKE TYSON DEAD AT 57</h2>
        <h3>AFTER YEARS OF FIGHTING MIK...</h3>
      </div>
      <div class="news2">
        <h2 class="lebron">LEBRON SPOTTED AT WENDYS</h2>
        <h3>LEBRON IS A GLIZZY GOBBLER...</h3>
      </div>
      <p2> class="small-text">READ MORE</p2>
    </div>

    <div class="nutrition">
      <div>
        <h2 class="daily-nutrition">DAILY NUTRITON</h2>
      </div>
      <div class="nutrition-pictures">
        <img src="/src/assets/water.svg" class="water">
        <img src="/src/assets/calories.svg" class="calories">
        <img src="/src/assets/protein.svg" class="protein">
      </div>
      <button class="open-button">
        <p class="big-text">OPEN</p>
      </button>
    </div>
    <div class="start-workout-button">
      <button class="start-workout">
        <p class="big-text">START WORKOUT</p>
      </button>
    </div>

  </body>

</template>

<style>
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
}

.small-text {
  color: white;
  font-family: roboto;
  font-size: 15px;
}

h1 {
  color: white;
  font-family: Oswald;
  font-size: 25px;
}

h2 {
  font-size: 20px;
  font-family: Oswald;
  font-weight: bold;
  color: white;
}

h3 {
  font-size: 20px;
  font-family: roboto;
  color: white;
  font-weight: normal;
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

.news {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
}

.greeting {
  margin-top: 20px;
  margin-bottom: 25px;
}

.news1 {
  background-color: #26262d;
  height: auto;
  width: 500px;
  display: flex;
  align-items: flex-start;
  flex-direction: column;
  margin-bottom: 25px;
  padding-left: 20px;
}

.news2 {
  background-color: #26262d;
  height: auto;
  width: 500px;
  display: flex;
  align-items: left;
  flex-direction: column;
  padding-left: 20px;
  margin-bottom: 12px;
}

.mike {
  margin-bottom: 10px;
}

.lebron {
  margin-bottom: 10px;
}

.nutrition {
  max-width: 500px;
  margin-top: 50px;
  border: 2px solid white;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #26262d;
  border-left: none;
  border-right: none;
  flex-direction: column;
}

.water {
  height: 100px;
  width: auto;
  margin-left: 20px;
  margin-right: 20px;
}

.calories {
  height: 100px;
  width: auto;
  margin-left: 20px;
  margin-right: 20px;
}

.protein {
  height: 100px;
  width: auto;
  margin-left: 20px;
  margin-right: 20px;
}

.daily-nutrition {
  margin-bottom: 20px;
}

.nutrition-pictures {
  margin-bottom: 20px;
}

.open-button {
  background-color: #c92f1e;
  width: 150px;
  border-radius: 20px;
  height: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 20px;
  font-weight: bold;
}

.start-workout {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #c92f1e;
  width: 250px;
  border-radius: 20px;
  height: auto;
  margin-top: 60px;
  font-weight: bold;
  margin-bottom: 65px;
}

.start-workout-button {
  display: flex;
  align-items: center;
  justify-content: center;
}

.profile {
  width: 50px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.home {
  width: 60px;
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
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
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
}
</style>
