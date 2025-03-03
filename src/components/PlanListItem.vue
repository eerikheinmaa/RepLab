<template>
  <li class="itemList"> <div>{{ exercise.name }}</div> <div>{{ exercise.time }} Minutes </div> <div><RouterLink :to="`/info/${exercise.id}`"><img src="/src/assets/question.svg" class="question"></RouterLink></div></li>
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
