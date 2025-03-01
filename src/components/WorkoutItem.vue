<template>
  <h1>{{ title }}</h1>
  <div class="exercise">
    <h2 class="exercise-name">{{ name }}</h2>
    <div class="images">
      <button class="choice-buttons"><img src="/src/assets/no.png" class="no"></button>
      <button class="choice-buttons"><img src="/src/assets/yes.png" class="no"></button>
    </div>
  </div>
</template>

<style scoped>

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
  height: 50px;
  background-color: #d9d9d9;
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
defineProps({
  title: {
    type: String,
    required: true,
  },
  name: {
    type: String,
    required: true,
  },
})
</script>
