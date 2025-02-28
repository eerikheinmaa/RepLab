<template>
  <div class="nutrition">
      <div>
        <h2 class="daily-nutrition">YOUR NUTRITION TODAY</h2>
      </div>
      <div class="nutrition-pictures">
        <div class="three-pic">
          <img src="assets/water.svg" class="water">
          <img src="assets/calories.svg" class="calories">
          <img src="assets/protein.svg" class="protein">
        </div>
        <div class="two-pic">
          <img src="assets/sugar.svg" class="sugar">
          <img src="assets/fats.svg" class="fats">
        </div>
      </div>
      <div class="add-meal-container">
        <button class="meal-button">
          <p class="big-text">+ Add meal</p>
        </button>
        <h2 class="meals-today">MEALS TODAY:</h2>
        <h3>NONE</h3>
      </div>

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
}

.small-text {
  color: white;
  font-family: roboto;
  font-size: 15px;
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
  height: 600px;
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
  padding-left: 80px;
  width: 500px;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: flex-start;
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

.meals-today {
  margin-bottom: 3px;
}
</style>

<script setup></script>
