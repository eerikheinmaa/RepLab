<template>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
  </head>

  <div class="plans" v-if="data">
    <PlanItem :key="`neutrition-item-${index}`" v-for="(item, index) in data" :day="item.name" :exercises="item.exercises"></PlanItem>
    <!--<div class="plan" id="plan1">
        <h1>Chest + tricep</h1>
        <h2>Estimated time:   1h 30min</h2>
      </div>
      <div class="plan" id="plan2">
        <h1>Hands + shoulders</h1>
        <h2>Estimated time:   1h 45min</h2>

      </div>
      <div class="plan" id="plan3">
        <h1>Back</h1>
        <h2>Estimated time:   1h 15min</h2>

      </div>
      <div class="plan" id="plan4">
        <h1>Legs</h1>
        <h2>Estimated time:   1h 45min</h2>
      </div>-->
  </div>
</template>

<style scoped>
html,
body {
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
  font-weight: bold;
}

.small-text {
  color: white;
  font-family: roboto;
  font-size: 15px;
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
import { ref, onMounted } from 'vue';
import PlanItem from '@/components/PlanItem.vue';

const data = ref([]);

async function Fetch_Items() {
  const response = await fetch("http://localhost:3000/api/workout")
  return await response.json();
}

onMounted(async () => {
  data.value = await Fetch_Items();
  console.log("Fetched data:", data.value);
});

</script>
