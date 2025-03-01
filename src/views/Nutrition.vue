<template>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
  </head>

  <div class="nutrition">
      <div>
        <h2 class="daily-nutrition">YOUR NUTRITION TODAY</h2>
      </div>
      <div class="nutrition-pictures"> 
        <div class="three-pic">
          <img src="/src/assets/water.svg" class="water">
          <img src="/src/assets/calories.svg" class="calories">
          <img src="/src/assets/protein.svg" class="protein">
        </div>
        <div class="two-pic">
          <img src="/src/assets/sugar.svg" class="sugar">
          <img src="/src/assets/fats.svg" class="fats">
        </div>
      </div>
      <div class="add-meal-container">
        <button class="meal-button">
          <p class="big-text">UPDATE</p>
        </button>
      </div>

    </div>




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

h2 {
  font-size: 25px;
  font-family: Oswald;
  font-weight: bold;
  color: white;
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



.greeting {
  margin-top: 20px;
  margin-bottom: 25px;
}







.nutrition {
  margin-top: 70px;
  height: 100%;
  border: 2px solid white;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #26262d;
  border-left: none;
  border-right: none;
  flex-direction: column;
  padding-bottom: 180px;
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

.fats {
  height: 100px;
  width: auto;
  margin-left: 20px;
  margin-right: 20px;
}

.sugar {
  height: 100px;
  width: auto;
  margin-left: 20px;
  margin-right: 20px;
}

.daily-nutrition {
  margin-bottom: 20px;
  margin-top: 20px;
}

.nutrition-pictures {
  margin-bottom: 80px;
  margin-top: 30px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.three-pic{
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.two-pic{
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
}


.meal-button {
  background-color: #c92f1e;
  width: 200px;
  border-radius: 20px;
  height: 50px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 20px;
  font-weight: bold;
}

.add-meal-container{
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
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

.meals-today {
  margin-bottom: 3px;
}
</style>

<script setup></script>
