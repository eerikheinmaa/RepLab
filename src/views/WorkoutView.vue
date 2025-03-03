<template>
  <div class="thing">
    <div class="message">
      <h1>💪</h1>
      <h1 class="top-message">TODAY WE ARE GOING TO HIT BACK</h1>
      <h1 class="muscle-right">💪</h1>
    </div>
    <div class="plan" v-if="data.length">
      <WorkoutItem :key="`workout-item-${index}`" v-for="(item, index) in data"
      :title="data.length"
      :name="data[index].name"
      :reps="item.reps"
      @increment-counter="(n) => Update_Progress(true, n)"
      @decrease-counter="(n) => Update_Progress(false, n)" />
    </div>
    <div class="progress">
      <h4>P R O G R E S S</h4>
      <div class="progress-bar">
        <div id="green-bar" :style="{ 'width': progress_percent + '%' }"></div>
        <div id="red-bar" :style="{ 'width': anti_progress_percent + '%' }"></div>
      </div>

      <RouterLink to="/profile" class="done" :style="{ 'display': doneButton }" @click="DoneButtonPress()">
        <p class="big-text" >DONE</p>
      </RouterLink>
    </div>
  </div>
</template>

<style scoped>
h1 {
  color: white;
  font-family: Oswald;
  font-size: 23px;
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

.big-text {
  border-radius: 20px;
  margin-top: 10px;
  font-weight: bold;
  margin-bottom: 65px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-family: roboto;
  font-size: 18px;
  font-weight: bold;
}

#green-bar {
  width: 0%;
  transition: 2s;
  position: absolute;
  background-color: rgb(66, 174, 66);
  height: 100%;
}

#red-bar {
  position: absolute;
  rotate: 180deg;
  right: 0px;
  width: 0%;
  transition: 2s;
  position: absolute;
  background-color: rgb(196, 14, 8);
  height: 100%;
}

.progress-bar #red-bar {
  float: right;
}


.done {
  display: flex;
  align-items: center;
  justify-content: center;
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

#overlay {
  position: fixed; /* Sit on top of the page content */
  display: none; /* Hidden by default */
  width: 100%; /* Full width (cover the whole page) */
  height: 100%; /* Full height (cover the whole page) */
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0,0,0,0.5); /* Black background with opacity */
  z-index: 2; /* Specify a stack order in case you're using a different order for other elements */
  cursor: pointer; /* Add a pointer on hover */
}

</style>

<script setup>
import { ref, onMounted } from 'vue';
import WorkoutItem from '@/components/WorkoutItem.vue';


const data = ref([]);

async function Fetch_Items() {
  try {
    const response = await fetch('http://localhost:3000/api/workout');
    const workouts = await response.json();

    if (!response.ok) {
      throw new Error(workouts.message || 'Failed to fetch workouts');
    }

    // Flattening exercises from all workouts into a single array
    const exercises = workouts.flatMap(workout => workout.exercises);

    console.log("Exercises fetched:", exercises);  // Log the fetched exercises array to check image_id

    return exercises;
  } catch (error) {
    console.error('Error fetching workouts:', error);
    return [];
  }
}



let max_index = 1;
let progress = 0;
let anti_progress = 0;
let doneButton = ref([""]);
doneButton.value = "none";
const progress_percent = ref([]);
const anti_progress_percent = ref([]);
const overlay = ref(["none"]);

function DoneButtonPress() {
  overlay.value = "block";
}

function WorkoutDone() {
  doneButton.value = "block";
}

function Update_Progress(thing, i) {
  console.log(thing, i)
  if (!thing) {
    if (i) {
      progress++
    } else {
      anti_progress++
    }
  } else {
    if (i) {
      progress++
      anti_progress--
    } else {
      anti_progress++
      progress--
    }
  }

  anti_progress_percent.value = anti_progress / max_index * 100;
  progress_percent.value = progress / max_index * 100;

  console.log(progress, anti_progress);
  console.log(progress_percent.value, anti_progress_percent.value);
  if ((progress_percent.value + anti_progress_percent.value) == 100) {
    WorkoutDone()
    console.log("Workout Complete")
  }
}

onMounted(async () => {
  data.value = await Fetch_Items();
  console.log("Fetched data:", data.value);
  // Log each item to check if image_id is available
  data.value.forEach((item, index) => {
    console.log(`Item ${index} image_id:`, item.image_id);
  });
  max_index = data.value.length;
});
</script>
