<script setup>
import { ref, onMounted } from "vue";

// Reactive state to track overlay visibility
const isBoxOpen1 = ref(false);
const isBoxOpen2 = ref(false);
const isBoxOpen3 = ref(false);
const isBoxOpen4 = ref(false);
const isBoxOpen5 = ref(false);
const isBoxOpen6 = ref(false);
const isBoxOpen7 = ref(false);
const isBoxOpen8 = ref(false);
const isBoxOpen9 = ref(false);
const isBoxOpen10 = ref(false);
const isBoxOpen11 = ref(false);
const isBoxOpen12 = ref(false);
const isBoxOpen13 = ref(false);
const isBoxOpen14 = ref(false);
const isBoxOpen15 = ref(false);
const isBoxOpen16 = ref(false);
const isBoxOpen17 = ref(false);
const isBoxOpen18 = ref(false);
const isBoxOpen19 = ref(false);
const isBoxOpen20 = ref(false);
const isBoxOpen21 = ref(false);
const isBoxOpen22 = ref(false);
const isBoxOpen23 = ref(false);
const isBoxOpen24 = ref(false);
const isBoxOpen25 = ref(false);
const isBoxOpen26 = ref(false);
const isBoxOpen27 = ref(false);
const isBoxOpen28 = ref(false);
const isBoxOpen29 = ref(false);
const isBoxOpen30 = ref(false);
const isBoxOpen31 = ref(false);
const isBoxOpen32 = ref(false);
const isBoxOpen33 = ref(false);
const isBoxOpen34 = ref(false);
const isBoxOpen35 = ref(false);

// Function to toggle the overlay when clicking the 11th date
const toggleBox1 = () => {
  isBoxOpen1.value = !isBoxOpen1.value;
};
const toggleBox2 = () => {
  isBoxOpen2.value = !isBoxOpen2.value;
};
const toggleBox3 = () => {
  isBoxOpen3.value = !isBoxOpen3.value;
};
const toggleBox4 = () => {
  isBoxOpen4.value = !isBoxOpen4.value;
};
const toggleBox5 = () => {
  isBoxOpen5.value = !isBoxOpen5.value;
};
const toggleBox6 = () => {
  isBoxOpen6.value = !isBoxOpen6.value;
};
const toggleBox7 = () => {
  isBoxOpen7.value = !isBoxOpen7.value;
};
const toggleBox8 = () => {
  isBoxOpen8.value = !isBoxOpen8.value;
};
const toggleBox9 = () => {
  isBoxOpen9.value = !isBoxOpen9.value;
};
const toggleBox10 = () => {
  isBoxOpen10.value = !isBoxOpen10.value;
};
const toggleBox11 = () => {
  isBoxOpen11.value = !isBoxOpen11.value;
};
const toggleBox12 = () => {
  isBoxOpen12.value = !isBoxOpen12.value;
};
const toggleBox13 = () => {
  isBoxOpen13.value = !isBoxOpen13.value;
};
const toggleBox14 = () => {
  isBoxOpen14.value = !isBoxOpen14.value;
};
const toggleBox15 = () => {
  isBoxOpen15.value = !isBoxOpen15.value;
};
const toggleBox16 = () => {
  isBoxOpen16.value = !isBoxOpen16.value;
};
const toggleBox17 = () => {
  isBoxOpen17.value = !isBoxOpen17.value;
};
const toggleBox18 = () => {
  isBoxOpen18.value = !isBoxOpen18.value;
};
const toggleBox19 = () => {
  isBoxOpen19.value = !isBoxOpen19.value;
};
const toggleBox20 = () => {
  isBoxOpen20.value = !isBoxOpen20.value;
};
const toggleBox21 = () => {
  isBoxOpen21.value = !isBoxOpen21.value;
};
const toggleBox22 = () => {
  isBoxOpen22.value = !isBoxOpen22.value;
};
const toggleBox23 = () => {
  isBoxOpen23.value = !isBoxOpen23.value;
};
const toggleBox24 = () => {
  isBoxOpen24.value = !isBoxOpen24.value;
};
const toggleBox25 = () => {
  isBoxOpen25.value = !isBoxOpen25.value;
};
const toggleBox26 = () => {
  isBoxOpen26.value = !isBoxOpen26.value;
};
const toggleBox27 = () => {
  isBoxOpen27.value = !isBoxOpen27.value;
};
const toggleBox28 = () => {
  isBoxOpen28.value = !isBoxOpen28.value;
};
const toggleBox29 = () => {
  isBoxOpen29.value = !isBoxOpen29.value;
};
const toggleBox30 = () => {
  isBoxOpen30.value = !isBoxOpen30.value;
};
const toggleBox31 = () => {
  isBoxOpen31.value = !isBoxOpen31.value;
};
const toggleBox32 = () => {
  isBoxOpen32.value = !isBoxOpen32.value;
};
const toggleBox33 = () => {
  isBoxOpen33.value = !isBoxOpen33.value;
};const toggleBox34 = () => {
  isBoxOpen34.value = !isBoxOpen34.value;
};
const toggleBox35 = () => {
  isBoxOpen35.value = !isBoxOpen35.value;
};


// Calendar open/close logic
onMounted(() => {
  const calendar_cl = document.getElementById("Opened");
  const calendar_op = document.getElementById("Closed");

  const arrows = document.querySelectorAll('.calender-extension');

  arrows.forEach(element => {
    element.addEventListener("click", function () {
      if (calendar_cl.style.display === "flex") {
        calendar_cl.style.display = "none";
        calendar_op.style.display = "flex";
      } else {
        calendar_cl.style.display = "flex";
        calendar_op.style.display = "none";
      }
    });
  });
});
</script>





<template>
  <header>
    <div class="calender" id="Closed">

      <h3 class="calender-text">15.12</h3>
      <h3 class="calender-text">14.12</h3>
      <h3 class="calender-text">13.12</h3>
      <h3 class="calender-text">12.12</h3>
      <h3 class="calender-text today">11.12</h3>
      <h3 class="calender-text">10.12</h3>
      <h3 class="calender-text">09.12</h3>
      <h3 class="calender-text">08.12</h3>
      <h3 class="calender-text">07.12</h3>
      <img src="/src/assets/arrow.svg" class="op arrow calender-extension">
    </div>

    <div class="calender" id="Opened" style="display:none;">
      <div class="february-text">
        <h1>December, 2024</h1>
      </div>
      <div class="numbers-days">
        <div class="number-row">
          <div class="days">M</div>
          <div class="numbers" @click="toggleBox1">1</div>
          <div class="numbers" @click="toggleBox2">8</div>
          <div class="numbers" @click="toggleBox3">15</div>
          <div class="numbers" @click="toggleBox4">22</div>
          <div class="numbers" @click="toggleBox5">29</div>
        </div>
        <div class="number-row">
          <div class="days">T</div>
          <div class="numbers" @click="toggleBox6">2</div>
          <div class="numbers" @click="toggleBox7">9</div>
          <div class="numbers" @click="toggleBox8">16</div>
          <div class="numbers" @click="toggleBox9">23</div>
          <div class="numbers" @click="toggleBox10">30</div>
        </div>
        <div class="number-row">
          <div class="days">W</div>
          <div class="numbers" @click="toggleBox11">3</div>
          <div class="numbers" @click="toggleBox12">10</div>
          <div class="numbers" @click="toggleBox13">17</div>
          <div class="numbers" @click="toggleBox14">24</div>
          <div class="numbers" @click="toggleBox15">31</div>
        </div>
        <div class="number-row">
          <div class="days">T</div>
          <div class="numbers" @click="toggleBox16">4</div>
          <div class="numbers1" @click="toggleBox17">11</div>
          <div class="numbers" @click="toggleBox18">18</div>
          <div class="numbers" @click="toggleBox19">25</div>
          <div class="numbers next-month" @click="toggleBox20">1</div>
        </div>
        <div class="number-row">
          <div class="days">F</div>
          <div class="numbers" @click="toggleBox21">5</div>
          <div class="numbers" @click="toggleBox22">12</div>
          <div class="numbers" @click="toggleBox23">19</div>
          <div class="numbers" @click="toggleBox24">26</div>
          <div class="numbers next-month" @click="toggleBox25">2</div>
        </div>
        <div class="number-row">
          <div class="days">S</div>
          <div class="numbers" @click="toggleBox26">6</div>
          <div class="numbers" @click="toggleBox27">13</div>
          <div class="numbers" @click="toggleBox28">20</div>
          <div class="numbers" @click="toggleBox29">27</div>
          <div class="numbers next-month" @click="toggleBox30">3</div>
        </div>
        <div class="number-row">
          <div class="days">S</div>
          <div class="numbers" @click="toggleBox31">7</div>
          <div class="numbers" @click="toggleBox32">14</div>
          <div class="numbers" @click="toggleBox33">21</div>
          <div class="numbers" @click="toggleBox34">28</div>
          <div class="numbers next-month" @click="toggleBox35">4</div>
        </div>

      </div>
      <div class="overlay34" v-show="isBoxOpen1">Back</div>
      <div class="overlay31" v-show="isBoxOpen2">Legs</div>
      <div class="overlay29" v-show="isBoxOpen3">Chest</div>
      <div class="overlay19" v-show="isBoxOpen4">Legs</div>
      <div class="overlay26" v-show="isBoxOpen5">Arms</div>
      <div class="overlay33" v-show="isBoxOpen6">Chest</div>
      <div class="overlay30" v-show="isBoxOpen7">Back</div>
      <div class="overlay28" v-show="isBoxOpen8">Arms</div>
      <div class="overlay18" v-show="isBoxOpen9">Back</div>
      <div class="overlay25" v-show="isBoxOpen10">Chest</div>
      <div class="overlay32" v-show="isBoxOpen11">Arms</div>
      <div class="overlay4" v-show="isBoxOpen12">Arms</div>
      <div class="overlay27" v-show="isBoxOpen13">Legs</div>
      <div class="overlay17" v-show="isBoxOpen14">Chest</div>
      <div class="overlay24" v-show="isBoxOpen15">Back</div>
      <div class="overlay9" v-show="isBoxOpen16">Chest</div>
      <div class="overlay36" v-show="isBoxOpen17">Arms</div>
      <div class="overlay5" v-show="isBoxOpen18">Chest</div>
      <div class="overlay13" v-show="isBoxOpen19">Chest</div>
      <div class="overlay23" v-show="isBoxOpen20">Legs</div>
      <div class="overlay10" v-show="isBoxOpen21">Back</div>
      <div class="overlay" v-show="isBoxOpen22">Back</div>
      <div class="overlay6" v-show="isBoxOpen23">Chest</div>
      <div class="overlay14" v-show="isBoxOpen24">Back</div>
      <div class="overlay22" v-show="isBoxOpen25">Arms</div>
      <div class="overlay11" v-show="isBoxOpen26">Legs</div>
      <div class="overlay2" v-show="isBoxOpen27">Back</div>
      <div class="overlay7" v-show="isBoxOpen28">Back</div>
      <div class="overlay15" v-show="isBoxOpen29">Legs</div>
      <div class="overlay21" v-show="isBoxOpen30">Chest</div>
      <div class="overlay12" v-show="isBoxOpen31">Arms</div>
      <div class="overlay3" v-show="isBoxOpen32">Legs</div>
      <div class="overlay8" v-show="isBoxOpen33">Legs</div>
      <div class="overlay16" v-show="isBoxOpen34">Arms</div>
      <div class="overlay20" v-show="isBoxOpen35">Back</div>


  
      
      
      
      
     
      
      
      
      <img src="/src/assets/arrow.svg" class="cl arrow calender-extension">
    </div>
  </header>

  <RouterView />

  <footer>
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
  </footer>
</template>

<style scoped>
html,
body,
template {
  height: 100%;
  width: 0%;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden;
}


footer {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #26262d;
  width: 100%;
  bottom: 0px;
  border-top: 2px solid white;
  z-index: 1;
  position: fixed;
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

h1 {
  color: white;
  font-family: Oswald;
  font-size: 25px;
  margin-top: 5px;
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

.footer-pictures {
  display: flex;
  align-items: center;
  justify-content: center;
}

.footer-buttons {
  background-color: transparent;
  border: none;
}

.arrow {
  width: auto;
  height: 40px;
  transform: scaleY(-1);
  z-index: 12;
}

.today {
  color: white;
  font-weight: bold;
  text-shadow: 0 0 10px white, 0 0 20px white, 0 0 40px white, 0 0 60px white, 0 0 80px white, 0 0 100px white, 0 0 120px white, 0 0 140px white, 0 0 160px white, 0 0 180px white, 0 0 200px white;
}




.calender {
  display: flex;
  align-items: center;
  position: fixed;
  flex-direction: row;
  top: 0;
  width: 100%;
  height: 50px;
  overflow-x: auto;
  white-space: nowrap;
  scrollbar-width: none;
  background-color: #0D0101;
  scroll-behavior: smooth;
  z-index: 10;
}



#Opened {
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
  z-index: 10;

}

.calender::-webkit-scrollbar {
  display: none;
}



.calender-text {
  background-color: transparent;
  color: white;
  margin-left: 20px;
  margin-right: 20px;
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

.numbers1 {
  width: 100%;
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  text-align: center;
  text-shadow: 8px 4px 4px #18152b;
  border-radius: 50%;
  background-color: #43454D;
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

.cl {
  height: 50px;
  width: 50px;
  border: none;
  background: transparent;
  display: flex;
  align-items: center;
  justify-content: flex-end;
  position: absolute;
  right: 5px;
  bottom: 0px;
  transform: translateY(0);
}

.op {
  position: fixed;
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


.overlay36{
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 215px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}
.overlay{
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 146px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}


.overlay2 {
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 75px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay3 {
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 5px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay4 {
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 285px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay5 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 213px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay6 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 145px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay7 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 73px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay8 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 5px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay9 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 210px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay10 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 146px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay11 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 76px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay12 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 5px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay13 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 212px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay14 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 146px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay15 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 76px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay16 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 5px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay17 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 285px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay18 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 355px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay19 {
  z-index: 10;
  position: fixed;
  top: 300px;
  right: 427px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay20 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 5px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay21 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 73px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay22 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 146px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay23 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 215px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay24 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 285px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay25 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 355px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay26 {
  z-index: 10;
  position: fixed;
  top: 365px;
  right: 427px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay27 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 288px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay28 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 355px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay29 {
  z-index: 10;
  position: fixed;
  top: 225px;
  right: 425px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay30 {
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 355px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay31 {
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 427px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay32 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 285px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay33 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 355px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

.overlay34 {
  z-index: 10;
  position: fixed;
  top: 84px;
  right: 427px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}

#Closed #Opened {
  position: absolute;
  z-index: 2;
}
</style>
