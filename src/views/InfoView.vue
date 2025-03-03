<template>

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Info</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet">
  </head>

  <body>
    <div class="app" v-if="data">
      <div class="info">
        <h1 id="headtext">{{ data.name }}</h1>
        <div id="container">
          <img id="image" class="image bench" :src="data.image_id" alt="Exercise Image">
          <span class="text" style="white-space: pre-line">{{ formatText(data.description) }}</span>
        </div>
      </div>
    </div>
  </body>
</template>

<style scoped>
#conteiner {
  display: flex;
  text-align: right;
}

.big-text {
  color: white;
  font-family: roboto;
  font-size: 18px;
}

.small-text {
  color: white;
  font-family: roboto;
  font-size: 15px;
}

h1 {
  color: white;
  font-family: Oswald;
  font-size: 40px;
  font-weight: normal;
  margin-bottom: 20px;
}

h2 {
  font-size: 25px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  margin-bottom: 8px;
  margin-top: 3px;
  text-wrap: wrap;
}

h3 {
  font-size: 20px;
  font-family: roboto;
  color: white;
  font-weight: normal;
  margin-top: 3px;
  margin-bottom: 3px;
}

.app {
  width: 500px;
  height: 150vh;
  border: 2px solid black;
  border-color: black;
  position: relative;
  overflow: hidden;
  background-color: #0D0101;
  padding-bottom: 50px;
  display: flex;
  flex-direction: column;
}

.bench {
  width: auto;
  height: 150px;
  margin-right: 20px;
}

.info {
  display: flex;
  flex-direction: column;
  margin-left: 40px;
}

.description {
  display: flex;
  flex-direction: row;
}

.text2 {
  margin-top: -10px;
  margin-right: 20px;
}

html,
body {
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
  color: white;
  font-family: Oswald;
  font-size: 40px;
  font-weight: normal;
  margin-bottom: 20px;
}

.text {
  font-size: 25px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  margin-bottom: 8px;
  margin-top: 3px;
}

h3 {
  font-size: 20px;
  font-family: roboto;
  color: white;
  font-weight: normal;
  margin-top: 3px;
  margin-bottom: 3px;
}


.info {
  display: flex;
  flex-direction: column;
}

.description {
  display: flex;
  flex-direction: row;
}

.text2 {
  margin-top: -10px;
  margin-right: 20px;
}

#headtext {
  padding-top: 60px;
}

#image {
  float: left;
  right: 0px;
  min-height: 140px;
  width: auto;
  margin-right: 15px;
}

#text {
  float: left;
}
</style>

<script setup>
import { ref, onMounted } from "vue";
import { useRoute } from "vue-router";

const route = useRoute();
const data = ref({});

function formatText(text) {
  if (typeof text !== "string") return "";
  return text.replace(/\n/g, "").replace(/(\d\.)/g, "\n$1");
}
async function fetchItems() {
  const response = await fetch(`http://localhost:3000/api/exercise/id/${route.params.id}`);
  return await response.json();
}

onMounted(async () => {
  data.value = await fetchItems();
  console.log("Fetched data:", data.value);
});

</script>
