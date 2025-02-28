<template>
  <div class="plans">
      <div class="plan" id="plan1">
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
      </div>
    </div>
</template>

<style>
html, body {
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


.plan {
  width: 410px;
  height: 150px;
  padding: 15px;
  margin-top: 20px;
  background-color: #d9d9d9;
  border-radius: 30px;
}

.plans{
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 3px;
  margin-left: 30px;
}
</style>

<script setup></script>
