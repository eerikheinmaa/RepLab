<template>
  <div class="thing">

    <div class="message">
      <h1>💪</h1>
      <h1 class="top-message">TODAY WE ARE GOING TO HIT BACK</h1>
      <h1 class="muscle-right">💪</h1>
    </div>

      <h1>LETS START!!!</h1>
      <div class="exercise">
        <h2 class="exercise-name">1. ROWS 3-10REPS</h2>
        <div class="images">
          <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
          <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
        </div>
      </div>
      <h1>KEEP ON WORKING!!</h1>
      <div class="exercise">
        <h2 class="exercise-name">2. LAT PULLDOWN - 3x8REPS</h2>
        <div class="images">
          <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
          <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
        </div>
      </div>
      <h1>DON´T STOP!</h1>
      <div class="exercise">
        <h2 class="exercise-name">3. DEADLIFT - 3x6REPS</h2>
        <div class="images">
          <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
          <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
        </div>
      </div>
      <h1>YOU ARE ON FIRE</h1>
      <div class="exercise">
        <h2 class="exercise-name">4. PULL UPS - 3x8REPS</h2>
        <div class="images">
          <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
          <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
        </div>
      </div>
      <h1>LAST PUSH</h1>
      <div class="exercise">
        <h2 class="exercise-name">5. SEATED ROWS - 3x8REPS</h2>
        <div class="images">
          <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
          <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
        </div>
      </div>

l,l,l
    <div class="plan" :v-if="data">
      <WorkoutItem :v-for="item in data" :title="item.type" :name="item.name"></WorkoutItem>
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
import WorkoutItem from '@/components/WorkoutItem.vue';
import { onMounted } from 'vue';


// function Create_Workout(type, exercise_name) {
//   // Create the main title (motivation message)
//   let title = document.createElement("h1");
//   let messages = Motivations.get(type);
//   if (messages) {
//     title.textContent = messages[Math.floor(Math.random() * messages.length)];
//   } else {
//     title.textContent = "Let's get moving!";
//   }

//   // Create the exercise div
//   let exerciseDiv = document.createElement("div");
//   exerciseDiv.className = "exercise";

//   // Create the exercise name heading
//   let exerciseTitle = document.createElement("h2");
//   exerciseTitle.className = "exercise-name";
//   exerciseTitle.textContent = `${exercise_name}`;

//   // Create the images div
//   let imagesDiv = document.createElement("div");
//   imagesDiv.className = "images";

//   // Create the "no" button
//   let noButton = document.createElement("button");
//   noButton.className = "choice-buttons";
//   let noImage = document.createElement("img");
//   noImage.src = "/src/assets/no.png";
//   noImage.className = "no";
//   noButton.appendChild(noImage);

//   // Create the "yes" button
//   let yesButton = document.createElement("button");
//   yesButton.className = "choice-buttons";
//   let yesImage = document.createElement("img");
//   yesImage.src = "/src/assets/yes.png";
//   yesImage.className = "no";
//   yesButton.appendChild(yesImage);

//   // Append buttons to imagesDiv
//   imagesDiv.appendChild(noButton);
//   imagesDiv.appendChild(yesButton);

//   // Append elements to exerciseDiv
//   exerciseDiv.appendChild(exerciseTitle);
//   exerciseDiv.appendChild(imagesDiv);

//   // Create a wrapper div and append all elements
//   let workoutDiv = document.createElement("div");
//   workoutDiv.appendChild(title);
//   workoutDiv.appendChild(exerciseDiv);

//   return workoutDiv;
// }

const Motivations = new Map();

const data = await Fetch_Items();
console.log(data)

Motivations.set("beginning", [
  "LETS START!!!",
  "We're going to DESTROY this equipment!",
  "Every Marathon starts with a single step!! YOU CAN DO IT",
  "Time to CRUSH it!",
  "No excuses, just RESULTS!",
  "This is where champions are made!",
  "Commit now, thank yourself later!",
  "Activate BEAST MODE!"
]);

Motivations.set("middle", [
  "KEEP ON WORKING!!",
  "DON'T STOP!",
  "YOU ARE ON FIRE",
  "No pain, no gain!",
  "Push past your limits!",
  "You’re stronger than you think!",
  "Make sweat your victory!",
  "This is where progress happens!"
]);

Motivations.set("end", [
  "FINAL PUSH!!!",
  "ONE MORE EXERCISE",
  "YOUR MUSCLES ARE THE PINNACLE OF DISCIPLINE",
  "Almost there—give it EVERYTHING!",
  "The finish line is RIGHT THERE!",
  "One last push for GLORY!",
  "Your future self is cheering for you!",
  "End STRONG, finish LIKE A CHAMP!"
]);

async function Fetch_Items() {
  const items = [{ "type": "beginning", "name": "RepStart" }, { "type": "end", "name": "RepEnd" }]
  return items;
}
onMounted(() => {

  //const Plan = document.querySelector(".plan");
  //const Progress = document.querySelector(".progress-bar");

  //console.log(Create_Workout("beginning", "Ankle Spreader 3-10 Whores per minute"))
  //Create_Workout("beginning", "Ankle Spreader 3-10 Whores per minute")
  //const n =
})
</script>

<!--
<script>
export default {
  props: ["type", "exercise_name"],
  methods: {
    generateWorkout() {
      const motivations = {
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
        end: ["FINAL PUSH!!!", "ONE MORE EXERCISE"],
      };
      const title = motivations[this.type]?.[Math.floor(Math.random() * motivations[this.type].length)] || "Let's go!";

      return `
        <h1>${title}</h1>
        <div class="exercise">
          <h2 class="exercise-name">1. ${this.exercise_name} 3-10REPS</h2>
          <div class="images">
            <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
            <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
          </div>
        </div>
      `;
    },
  },
};
</script>
-->
