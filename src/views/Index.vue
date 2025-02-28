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
    <div>
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
        <p2 class="small-text">READ MORE</p2>
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
    </div>
  </body>

</template>

<style scoped>
html,
body {
  height: 100%;
  padding-top: 25px;
  color: white;
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



.news {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
}

.greeting {
  color: white;
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
  color: white;
  margin-bottom: 10px;
  font-family: Oswald;
  font-size: 20px;
  font-weigth: bold;
  
}

.lebron {
  color: white;
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
  background-color: #c92f1e;
  width: 250px;
  height: 50px;
  border-radius: 20px;
  margin-top: 60px;
  font-weight: bold;
  margin-bottom: 65px;
  display: flex;
  align-items: center;
  justify-content: center;
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

h2 {
  font-size: 25px;
  font-family: Oswald;
  font-weight: bold;
  color: white;
}

h1 {
    font-family: Oswald;
    font-size: 40px;
    font-weight: bold;
}

h3 {
    font-size: 20px;
    font-family: roboto;
    color: white;
    font-weight: normal;
}
</style>
