<template>
  <div class="app">

    <div class="calender" id="Closed">
      <button class="calender-extencion"><img src="/src/assets/arrow.svg" class="arrow"></button>
      <h3 class="calender-text">15.12</h3>
      <h3 class="calender-text">14.12</h3>
      <h3 class="calender-text">13.12</h3>
      <h3 class="calender-text">12.12</h3>
      <h3 class="calender-text today">11.12</h3>
      <h3 class="calender-text">10.12</h3>
      <h3 class="calender-text">09.12</h3>
      <h3 class="calender-text">08.12</h3>
      <h3 class="calender-text">07.12</h3>
    </div>

    <div class="calender" id="Opened" style="display:none;">
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
          <div class="numbers">2</div>
          <div class="numbers">9</div>
          <div class="numbers">16</div>
          <div class="numbers">23</div>
          <div class="numbers">30</div>
        </div>
        <div class="number-row">
          <div class="days">W</div>
          <div class="numbers">3</div>
          <div class="numbers">10</div>
          <div class="numbers">17</div>
          <div class="numbers">24</div>
          <div class="numbers">31</div>
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
      <button class="calender-extencion"><img src="/src/assets/arrow.svg" class="arrow"></button>
    </div>

    <main>
      <router-view />
    </main>

    <div class="footer">

      <div class="footer-pictures">
        <RouterLink to="/profile" class="footer-buttons">
          <img src="/src/assets/profile.svg" class="profile">
        </RouterLink>
        <RouterLink to="/" class="footer-buttons">
          <img src="/src/assets/home1.svg" class="home">
        </RouterLink>
        <RouterLink to="/plans" class="footer-buttons">
          <img src="/src/assets/plans.svg" class="plans">
        </RouterLink>
        <RouterLink to="/help" class="footer-buttons">
          <img src="/src/assets/help.svg" class="help">
        </RouterLink>
      </div>
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

.today {
  color: white;
  font-weight: bold;
  text-shadow: 0 0 10px white, 0 0 20px white, 0 0 40px white, 0 0 60px white, 0 0 80px white, 0 0 100px white, 0 0 120px white, 0 0 140px white, 0 0 160px white, 0 0 180px white, 0 0 200px white;
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

.arrow {
  width: auto;
  height: 40px;
  position: relative;
  z-index: 10;
}

.february-text {
  display: flex;
  align-items: center;
  justify-content: center;
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

.days {
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  margin-left: 22.5px;
  margin-right: 22.5px;
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
</style>

<script setup>

calendar_cl = getElementById("Opened")
calendar_op = getElementById("Closed")

arrows = document.querySelectorAll(".arrow");

for (const element of arrows) {
  element.addEventListener("click", function () {
    if (calendar_cl.style.display === "block") {
      calendar_cl.style.display = "none";
      calendar_op.style.display = "block";
    } else {
      calendar_cl.style.display = "block";
      calendar_op.style.display = "none";
    }
  })
}

</script>
