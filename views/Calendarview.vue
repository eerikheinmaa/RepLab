<template>
  <h1 style="color: white">HI</h1>
  <router-link to="/calendar">Got to about</router-link>
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
  <div class="app">
    <div class="calender">
      <div class="february-text">
        <h1>December, 2024</h1>
      </div>
      <div class="numbers-days">
        <div class="number-row">
          <div class="days">M</div>
          <div class="numbers">1</div>
          <div class="numbers">8</div>
          <div class="numbers">15</div>
          <div class="numbers">22</div>
          <div class="numbers">29</div>
        </div>
        <div class="number-row">
          <div class="days">T</div>
          <div class=" numbers">2</div>
          <div class=" numbers">9</div>
          <div class=" numbers">16</div>
          <div class=" numbers">23</div>
          <div class=" numbers">30</div>
        </div>
        <div class="number-row">
          <div class="days">W</div>
          <div class=" numbers">3</div>
          <div class=" numbers">10</div>
          <div class=" numbers">17</div>
          <div class=" numbers">24</div>
          <div class=" numbers">31</div>
        </div>
         <div class="number-row">
           <div class="days">T</div>
          <div class="numbers">4</div>
          <div class="numbers">11</div>
          <div class="numbers">18</div>
          <div class="numbers">25</div>
          <div class="numbers next-month">1</div>
         </div>
         <div class="number-row">
           <div class="days">F</div>
          <div class="numbers">5</div>
          <div class="numbers">12</div>
          <div class="numbers">19</div>
          <div class="numbers">26</div>
          <div class="numbers next-month">2</div>
        </div>
        <div class="number-row">
          <div class="days">S</div>
          <div class="numbers">6</div>
          <div class="numbers">13</div>
          <div class="numbers">20</div>
          <div class="numbers">27</div>
          <div class="numbers next-month">3</div>
        </div>
          <div class="number-row">
          <div class="days">S</div>
          <div class="numbers">7</div>
          <div class="numbers">14</div>
          <div class="numbers">21</div>
          <div class="numbers">28</div>
          <div class="next-month">4</div>
        </div>

      </div>
      <button class="calender-extencion" ><img src="assets/arrow.svg" class="arrow"></button>
    </div>


    <div class="nutrition">
      <div>
        <h2 class="daily-nutrition">DAILY NUTRITON</h2>
      </div>
      <div class="nutrition-pictures"> 
          <img src="assets/water.svg" class="water">
          <img src="assets/calories.svg" class="calories">
          <img src="assets/protein.svg" class="protein">
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
    <div class="footer">
      <div class="footer-pictures">
        <button class="footer-buttons">
          <img src="assets/profile.svg" class="profile">
        </button>
        <button class="footer-buttons">
          <img src="assets/home.svg" class="home">
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

.days {
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  margin-left: 22.5px;
  margin-right: 22.5px;
}

.numbers-days {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
}

.numbers {
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  text-align: center;
  margin-left: 15px;
  margin-right: 15px;
  text-shadow: 8px 4px 4px #18152b;
}
.number-row {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 5px;
  margin-top: 5px;
}

.next-month {
  color: #2f2f2f;
  text-shadow: 8px 4px 4px #18152b;
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
  position: relative;
  display: flex;
  flex-direction: column;
  width: 100%; 
  height: 500px;
  overflow-x: auto; 
  white-space: nowrap;
  scrollbar-width: none;
  background-color: #26262d;
  scroll-behavior: smooth;
  border-bottom: 2px solid white;
}

.february-text {
  display: flex;
  align-items: center;
  justify-content: center;
}

.arrow {
  width: auto;
  height: 40px;
  transform: scaleY(-1);
}

.calender-extencion {
  height: 50px;
  width: 50px;
  border: none;
  background: transparent;
  display: flex;
  align-items: center;
  justify-content: flex-end;
  position: absolute;
  right: 0px;  
  bottom: 5px;
  transform: translateY(0);
}



.nutrition {
  max-width: 500px;
  margin-top: 20px;
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
  margin-bottom: 50px;
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

<script setup></script>
