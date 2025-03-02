<template>
  <div class="plan">
    <h1>{{ day }}</h1>
    <h2>Estimated time: {{ Total_Time(exercises) }}</h2>
  </div>
</template>

<style scoped>
h1 {
  color: black;
  font-family: Oswald;
  font-size: 40px;
  font-weight: normal;
  margin-top: 3px;
  margin-bottom: 1px;
}

h2 {
  font-size: 25px;
  font-family: Oswald;
  font-weight: normal;
  color: black;
}

h3 {
  font-size: 20px;
  font-family: roboto;
  color: white;
  font-weight: normal;
}


.plan {
  width: 410px;
  height: 150px;
  padding: 15px;
  margin-top: 20px;
  background-color: #d9d9d9;
  border-radius: 30px;
}

.plans {
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 3px;
  margin-left: 30px;
  margin-top: 50px;
}
</style>

<script setup>
import { ref } from "vue";

defineProps({
  day: {
    type: String,
    required: true,
  },
  exercises: {
    type: Array,
    required: false,
  },
})

function Total_Time(exercises) {
  let total = 0;
  exercises.array.forEach(element => {
    total += element.time;
  });
  if (total == 0) {
    return "0 Minutes"
  } else {
    let minutes = total % 60
    if (minutes == 0) {
      return "${Math.floor(total/60)} Hours"
    } else {
      return "${Math.floor(total/60)} Hours ${minutes} Minutes"
    }
  }
}

</script>
