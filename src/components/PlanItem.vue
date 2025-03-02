<template>
  <div class="plan" @click="Switch()">
    <h1>{{ day }}</h1>
    <h2 class="est">Estimated time: {{ Total_Time(exercises) }}</h2>
    <ol :class="{'opened': !opened }" type="1">
      <PlanListItem :key="`List-item-${index}`" v-for="(item, index) in exercises" :exercise="item"></PlanListItem>
    </ol>
  </div>
</template>

<style scoped>

.opened {
  display: none;
}

.est {
  padding-top: 5px;
}

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
  min-height: 150px;
  padding: 15px;
  margin-top: 20px;
  background-color: #d9d9d9;
  border-radius: 0.75rem;
  box-shadow: rgba(126, 126, 126, 0.427) 0px 3px 8px;
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
import PlanListItem from "./PlanListItem.vue";

let opened = ref(false);

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

function Switch() {
  opened.value = !opened.value
}

function Total_Time(exercises) {
  let total = ref(0);
  console.log("Here " + exercises)
  exercises.forEach(element => {
    total.value += element.time;
  });
  if (total.value=== 0) {
    return "0 Minutes";
  } else {
    let minutes = total.value% 60;
    if (minutes === 0) {
      return `${Math.floor(total.value/ 60)} Hours`;
    } else if (Math.floor(total.value/ 60) == 0) {
      return `${minutes} Minutes`;
    }
    else {
      return `${Math.floor(total.value/ 60)} Hours ${minutes} Minutes`;
    }
  }
}
</script>
