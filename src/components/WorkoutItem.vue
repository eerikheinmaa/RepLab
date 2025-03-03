<template>
  <h1>{{ GenerateTitle(index, title) }}</h1>
  <div class="exercise">
    <div class="exercise-details">
      <h2 class="exercise-name">{{ name }}</h2>
      <p><strong>Reps:</strong> {{ reps }}</p>
    </div>
    <div class="images">
      <div class="buttons" style="display: flex;">
        <img src="/src/assets/yes.png" class="no choice-buttons"
          :class="{ grayscale: activeButton !== 'yes', active: activeButton !== 'no' }"
          @click="() => { handleClick('yes'); }">
        <img src="/src/assets/no.png" class="no choice-buttons"
          :class="{ grayscale: activeButton !== 'no', active: activeButton !== 'yes' }"
          @click="() => { handleClick('no'); }">
      </div>
    </div>
  </div>
</template>

<style scoped>
.exercise-details p {
  margin: 0;
  font-size: 14px;
  color: black;
}

.buttons * {
  filter: grayscale(80%);
  cursor: pointer;
  transition: filter 0.2s ease;
}

.active {
  filter: grayscale(0%);
}

.grayscale {
  filter: grayscale(80%);
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
  color: black;
}

.no {
  width: 45px;
  height: auto;
  margin-left: 5px;
  margin-right: 5px;
}

.exercise {
  margin-bottom: 20px;
  padding-left: 10px;
  display: flex;
  flex-direction: row;
  align-items: center;
  width: 97%;
  height: auto;
  background-color: #d9d9d9;
  padding: 10px;
  border-radius: 10px;
}

.images {
  width: 100px;
  display: flex;
  justify-content: flex-end;
  margin-left: 10px;
}

.exercise-name {
  width: 450px;
  display: flex;
  justify-content: flex-start;
}

.choice-buttons {
  border: none;
  background-color: transparent;
  margin: none;
}
</style>

<script setup>
import { ref } from "vue";

const emit = defineEmits(['incrementCounter', 'decreaseCounter'])

defineProps({
  title: {
    type: String,
    required: true,
  },
  name: {
    type: String,
    required: true,
  },
  reps: {
    type: Number,
    required: false,
  },
  time: {
    type: String,
    required: false,
  },
  description: {
    type: String,
    required: false,
  },
  index: {
    type: Number,
    required: true,
  },
  image_id: {
    type: String,
    required: true,
  }
})

const selected = ref(null);
const counted = ref(false);
let activeButton = ref("");

const handleClick = (choice) => {
  if (selected.value == choice) {
    return;
  }
  selected.value = choice;
  activeButton.value = choice;

  if (!counted.value) {
    if (choice == "yes") {
      emit("decreaseCounter", true);
    } else {
      emit("decreaseCounter", false);
    }
    counted.value = true;
  } else {
    if (choice == "yes") {
      emit("incrementCounter", true);
    } else {
      emit("incrementCounter", false);
    }
  }
};

const getExerciseImageUrl = (image_id) => {
  // If image_id is undefined or empty, return a fallback image
  if (!image_id) {
    console.warn("No image_id provided, using fallback image.");
    return '/src/assets/no-image.png';  // Fallback image path
  }

  // Log the image_id to ensure it's being passed correctly
  console.log("Received image_id:", image_id);

  // If the path starts with /src/assets/exercise_image/ then we can return it directly
  if (image_id.startsWith('/src/assets/exercise_image/')) {
    return image_id;  // Return the image path directly
  }

  // Otherwise, append the image formats (webp, png, jpg)
  const imageFormats = ['png', 'jpg', 'webp'];
  for (const format of imageFormats) {
    try {
      const imagePath = new URL(image_id, import.meta.url).href;  // Try resolving the path
      console.log(`Image URL generated: ${imagePath}`);
      return imagePath;
    } catch (err) {
      console.log(`Error loading image ${image_id}.${format}`, err);
    }
  }

  // If no image format is found, return a default image
  console.warn("Returning default image because no valid format was found.");
  return '/src/assets/no-image.png';  // Ensure this path works
};






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
function GenerateTitle(index, max_index) {
  let category = index === 0 ? "beginning" : index === max_index - 1 ? "end" : "middle";
  return Motivations[category][Math.floor(Math.random() * Motivations[category].length)];
}

</script>
