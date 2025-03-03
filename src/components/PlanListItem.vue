<template>
  <li class="itemList"> <div class="text">{{ exercise.name }}</div> <div class="reps">{{ exercise.reps }}</div> <div ><RouterLink :to="`/info/${exercise.id}`"><img src="/src/assets/question.svg" class="question"></RouterLink></div></li>
</template>

<style scoped>

.question {
  height: 40px;
}

.itemList {
  display: flex;
}

.opened {
  display: none;
}

.text{
  height: fit-content;
  width: 200px;
}

.reps{
  width: 100px;
  height: fit-content;
}

.more-info-button{
  background-color: transparent;
  border: none;
  height: fit-content;
  width: fit-content;
  margin-top: 25px;
}

.info{
  height: 35px;
  width: auto;
  color: black;
  margin-top: 0px;
  margin-bottom: 0px;
}

.exercise-button-container{
  display: flex;
  flex-direction: row;
  margin-bottom: -3px;
  margin-top: -3px;
}

h1 {
  color: black;
  font-family: Oswald;
  font-size: 40px;
  font-weight: normal;
  margin-top: 3px;
  margin-bottom: 1px;
}

li {
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

defineProps({
  opened: {
    type: Boolean,
    required: true,
  },
  exercise: {
    type: Map,
    required: false,
  },
})


</script>
