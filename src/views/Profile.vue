<template>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
  </head>

    <div class="profile">
      <div class="profile-top">
        <div class="profile-pic">
          <img src="/src/assets/lebron.png" class="lebron-pic">
        </div>
        <div class="profile-name">
          <h4 class="lebron-name">LE GOAT</h4>
          <h2 class="streak">Streak: <img src="/src/assets/fire.svg" class="fire"> 107</h2>
        </div>
      </div>
    </div>

    <div class="bio-boxes">
      <div class="bio-box">
        <h1>Physical background</h1>
        <li>Basketball</li>
        <li>Deadlifting</li>
        <li>Weightlifting</li>
        <li>Donut lifting</li>
        <li>Lechasedown</li>
        <li>Shooting</li>
        <li>Running</li>
      </div>
      <div class="achievments-box">
        <img src="/src/assets/achievment1.svg" class="achievments">
        <img src="/src/assets/achievment2.svg" class="achievments">
        <img src="/src/assets/achievment3.svg" class="achievments">
        <img src="/src/assets/achievment4.svg" class="achievments">

       </div>
    </div>

    <div class="nutrition">
      <div>
        <h2 class="daily-nutrition">DAILY NUTRITON</h2>
      </div>
      <div class="nutrition-pictures">
          <img src="/src/assets/water (2).svg" class="water">
          <img src="/src/assets/calories (2).svg" class="calories">
          <img src="/src/assets/protein (2).svg" class="protein">
      </div>
      <RouterLink to="/nutrition">
          <button class="open-button"><p class="big-text">OPEN</p></button>
      </RouterLink>
    </div>
    <RouterLink to="/workout" class="start-workout-button">
      <button class="start-workout">
        <p class="big-text">START WORKOUT</p>
      </button>
    </RouterLink>
</template>

<style scoped>
html, body {
  color: black;
  height: 100%;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
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
  color: black;
  font-family: Oswald;
  font-size: 25px;
  font-weight: bold;
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

li {
  color: black;
  font-family: Oswald;
  font-size: 25px;
  font-weight: regular;
}



.greeting {
  margin-top: 20px;
  margin-bottom: 25px;
}





.nutrition {
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
  color: white;
  margin-bottom: 20px;
}

.nutrition-pictures {
  margin-bottom: 20px;
  padding-top: 10px;
}

.open-button {
  background-color: #FF6554;
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
  background-color: #FF6554;
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

.fire {
  height: 30px;
  width: auto;
}

.lebron-pic {
  height: 125px;
  width: auto;
}

.profile{
  margin-top: 60px;
}

.profile-pic {
  height: 150px;
  width: 150px;
  background-color: #d9d9d9;
  margin-top: 20px;
  margin-right: 15px;
  flex-shrink: 0;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  overflow: hidden;
}

.profile-top {
  width: 500px;
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  justify-content: center;
  margin-left: 5px;
}

.profile-name{
  background-color: #d9d9d9;
  height: 150px;
  width: 56%;
  margin-right: 15px;
  margin-top: 20px;
  overflow: hidden;
}

.streak{
  font-size: 20px;
  font-family: Oswald;
  color: black;
  font-weight: regular;
  display: flex;
  flex-direction: row;
  margin-left: 15px;

}

.lebron-name {
  font-family: oswald;
  font-weight: bold;
  font-size: 30px;
  margin-left: 10px;
  margin-top: 5px;
  margin-bottom: 5px;
  color:black;
}

.bio-boxes{
  display: flex;
  flex-direction: row;
  margin-top: 15px;
}

.bio-box {
  background-color: #d9d9d9;
  height: 300px;
  width: 320px;
  margin-left: 25px;
  padding-left: 10px;
  display: flex;
  flex-direction: column;
  overflow-y: auto;
  scrollbar-width: none;
}

.bio-box::-webkit-scrollbar {
  display: none;
}

.achievments-box {
  background-color: #d9d9d9;
  display: flex;
  flex-direction: column;
  height: 300px;
  width: 100px;
  margin-left: 15px;
  justify-content: flex-start;
  align-items: center;
  overflow-y: scroll;
  overflow-x: hidden;
  scrollbar-width: none;
}

.achievments-box::-webkit-scrollbar {
  display: none;
}


.achievments{
  margin-left: 3px;
  margin-top: 5px;
  height: auto;
  width: 80px;
}



</style>

<script setup></script>
