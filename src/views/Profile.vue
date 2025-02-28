<template>
 <div>
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
  color: black;
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

li {
  color: black;
  font-family: Oswald;
  font-size: 25px;
  font-weight: regular;
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
  top: 2;
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
  margin-top: 23px;
  font-weight: bold;
  margin-bottom: 23px;
}

.start-workout-button {
  display: flex;
  align-items: center;
  justify-content: center;
}

.profile {
  width: 55px;
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

.fire {
  height: 30px;
  width: auto;
}

.lebron-pic {
  height: 125px;
  width: auto;
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
  justify-content: flex-start;
}

.profile-name{
  background-color: #d9d9d9;
  height: 150px;
  width: 55%;
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
  font-weight: regular;
  font-size: 30px;
  margin-left: 10px;
  margin-top: 5px;
  margin-bottom: 5px;
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
