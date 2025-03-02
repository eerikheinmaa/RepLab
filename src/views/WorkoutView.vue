<template>
  <div class="thing">

    <div class="message">
      <h1>💪</h1>
      <h1 class="top-message">TODAY WE ARE GOING TO HIT BACK</h1>
      <h1 class="muscle-right">💪</h1>
    </div>
    <div class="plan" v-if="data">
      <WorkoutItem :key="`workout-item-${index}`" v-for="(item, index) in data" :title="data.length" :name="item"
        :index="index" @increment-counter="Update_Progress()">
      </WorkoutItem>
    </div>
    <div class="progress">
      <h4>P R O G R E S S</h4>
      <div class="progress-bar">
        <div id="green-bar" :style="{'width': progress_percent + '%'}"></div>
      </div>
    </div>
  </div>
</template>

<style scoped>
h1 {
  color: white;
  font-family: Oswald;
  font-size: 25px;
}

h4 {
  font-size: 30px;
  font-family: oswald;
  color: white;
  font-weight: bold;
  margin-top: -5px;
  margin-bottom: 20px;
  letter-spacing: 5px;
}

#green-bar {
  width: 0%;
  transition: 2s;
  position: absolute;
  background-color: rgb(66, 174, 66);
  height: 100%;
}

.thing {
  padding-top: 40px;
}

.message {
  margin-top: 30px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
}


.muscle-right {
  -moz-transform: scaleX(-1);
  -o-transform: scaleX(-1);
  -webkit-transform: scaleX(-1);
  transform: scaleX(-1);
  filter: FlipH;
  -ms-filter: "FlipH";
}


.plan {
  padding: 20px;
  padding-top: 10px;
}


.exercise-name {
  width: 450px;
  display: flex;
  justify-content: flex-start;
}

.top-message {
  margin-left: 5px;
  margin-right: 5px;
}

.choice-buttons {
  border: none;
  background-color: transparent;
  margin: none;
}

.progress {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  margin-bottom: 100px;
}

.progress-bar {
  position: relative;
  width: 460px;
  height: 40px;
  border: 4px solid #d9d9d9;
  border-radius: 10px;
  margin-bottom: 30px;
  margin-top: -5px;
  overflow-x: hidden;
}
</style>

<script setup>
import { ref, onMounted } from 'vue';
import WorkoutItem from '@/components/WorkoutItem.vue';


const data = ref([]);

async function Fetch_Items() {
  return ["RepStart", "RepEnd"];
}



let max_index = 1;
let progress = 0;
const progress_percent = ref([]);

function Update_Progress() {
  progress++;
  max_index
  progress_percent.value = progress / max_index * 100;
  console.log(progress_percent.value);
  if (progress_percent.value == 100) {

  }
}

onMounted(async () => {
  data.value = await Fetch_Items();
  max_index = data.value.length
  console.log("Fetched data:", data.value);
});
</script>
