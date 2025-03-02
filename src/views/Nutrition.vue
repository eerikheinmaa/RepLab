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
      <button class="meal-button" @click="toggleBox">
        <p class="big-text">Update</p>
      </button>
    </div>

    <div class="box" v-show="isBoxOpen">
      <h1>GATEGORY</h1>
      <div>
        <select hidden class="choice-item">
          <option>Water</option>
          <option>Calories</option>
          <option>Fats</option>
          <option>Sugar</option>
          <option>Protein</option>
        </select>
        </div>
      <h1>NUMBER</h1>
      <input class="input" required placeholder="Insert your new number here..." type="Number">

    </input>
      <div class="button">
        <button @click="toggleBox">APPLY</button>
      </div>
    </div>

  </div>
</template>

<style scoped>
.big-text {
  color: white;
  font-family: roboto;
  font-size: 18px;
  font-weight: bold;
}

h2 {
  font-size: 25px;
  font-family: Oswald;
  font-weight: bold;
  color: white;
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

.three-pic {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.two-pic {
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

.add-meal-container {
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
  margin-bottom: 120px;
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

.box{
  width: 460px;
  height: fit-content;
  padding: 20px;
  background-color: #d9d9d9;
  display: flex;
  justify-content: flex-start;
  align-items: flex-start;
  flex-direction: column;

}

.box h2 {
  color: black;
  font-family: roboto;
  font-weight: normal;
  font-size: 20px;
}

.box h1 {
  color: black;
  font-family: roboto;
  font-size: 20px;
  letter-spacing: 5px;
}

.box h3 {
  color: #8E8585;
  font-family: roboto;
  font-size: 20px;
  letter-spacing: 5px;
  font-weight: normal;
}

.box .circle{
  width: fit-content;
  height: fit-content;
  border-radius: 50%;
  border: 15px solid white;
}

.box button{
  width: 100px;
  height: 50px;
  background-color: white;
  font-family: roboto;
  border: 4px solid black;
  font-size: 20px;
  color: black;
  margin-top: 70px;
  margin-bottom: 20px;
}

.box .choice {
  border: 4px solid black;
  width: fit-content;
  height: 50px;
  display: flex;
  overflow: hidden;
  flex-direction: row;
  align-items: center;
  padding-left: 10px;
  padding-right: 10px;
  margin-bottom: 10px;
  font-size: xx-large;
  background-color: white;
}

.box .choice2 {
  border: 4px solid black;
  width: fit-content;
  height: fit-content;
  display: flex;
  overflow: hidden;
  flex-direction: row;
  align-items: center;
  padding-left: 10px;
  padding-right: 10px;
  margin-bottom: 10px;
  background-color: white;
}

.box .choice-item{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: flex-start;
}

.box .arrow {
  margin-left: 10px;
  width: auto;
  height: 40px;
  color: black;
}

.box .input{
  border: 4px solid black;
  width: 95%;
  height: 50px;
  display: flex;
  align-items: center;
  padding-left: 10px;
  font-size: x-large;
  background-color: white;
}

.box .button{
  width: 100%;
  display: flex;
  justify-content: flex-end;
  margin-top: 20px;
}

.box #Opened {
  z-index: 10;
}

select {
  display: flex;
  font-size: 30px;
  border: 4px solid black;
  width: fit-content;
  height: 50px;
  align-items: center;
  padding-top: 3px;
}

</style>

<script setup>

import { ref } from "vue";

const isBoxOpen = ref(false);

const toggleBox = () => {
  isBoxOpen.value = !isBoxOpen.value;
};

</script>
