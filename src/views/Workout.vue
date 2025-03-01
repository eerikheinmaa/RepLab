<template>
  <div class="thing">

    <div class="message">
      <h1>💪</h1>
      <h1 class="top-message">TODAY WE ARE GOING TO HIT BACK</h1>
      <h1 class="muscle-right">💪</h1>
    </div>
    <div class="plan" v-if="data">
      <WorkoutItem v-for="(item, index) in data" :title="GenerateTitle(index, data.length)" :name="item" :index="index "></WorkoutItem>
    </div>
    <div class="progress">
      <h4>P R O G R E S S</h4>
      <div class="progress-bar">
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
  width: 460px;
  height: 40px;
  border: 4px solid #d9d9d9;
  border-radius: 10px;
  margin-bottom: 30px;
  margin-top: -5px;
}
</style>

<script setup>
import { ref, onMounted } from 'vue';
import WorkoutItem from '@/components/WorkoutItem.vue';

const data = ref([]);

const Motivations = {
  beginning: [
    "LETS START!!!",
    "We're going to DESTROY this equipment!",
    "Every Marathon starts with a single step!! YOU CAN DO IT",
    "Time to CRUSH it!",
    "No excuses, just RESULTS!",
    "This is where champions are made!",
    "Commit now, thank yourself later!",
    "Activate BEAST MODE!"
  ],
  middle: [
    "KEEP ON WORKING!!",
    "DON'T STOP!",
    "YOU ARE ON FIRE",
    "No pain, no gain!",
    "Push past your limits!",
    "You’re stronger than you think!",
    "Make sweat your victory!",
    "This is where progress happens!"
  ],
  end: [
    "FINAL PUSH!!!",
    "ONE MORE EXERCISE",
    "YOUR MUSCLES ARE THE PINNACLE OF DISCIPLINE",
    "Almost there—give it EVERYTHING!",
    "The finish line is RIGHT THERE!",
    "One last push for GLORY!",
    "Your future self is cheering for you!",
    "End STRONG, finish LIKE A CHAMP!"
  ]
};

async function Fetch_Items() {
  return ["RepStart", "RepEnd"];
}

function GenerateTitle(index, max_index) {
  let category = index === 0 ? "beginning" : index === max_index - 1 ? "end" : "middle";
  return Motivations[category][Math.floor(Math.random() * Motivations[category].length)];
}

onMounted(async () => {
  data.value = await Fetch_Items();
  console.log("Fetched data:", data.value);
});
</script>
