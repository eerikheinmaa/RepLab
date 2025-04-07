<template>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>replit</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&family=Roboto:wght@400;700&family=Albert+Sans:wght@400;700&display=swap" rel="stylesheet">
  </head>

<body>
  <header>
    <div class="header1">
      <img src="/src/assets/logo.png" class="logo">"
      <h1>RepLab</h1>
    </div>
    <div class="header2">
      <h2 class="language">English</h2>
      <button class="arrow-button"><img src="/src/assets/arrow.png" class="arrow"></button>
      <button class="menu-button"><img src="/src/assets/menu.svg" class="menu"></button>
    </div>

  </header>
  <div class="introduction">,
    <div class="intro-text">
      <h3>RepLab</h3>
      <p>Is an app that helps people of all ages and body types<br>
      achieve their fitness goals.</br></p>
      <button class=" journey-button">Start your journey! <img src="/src/assets/pointer.png" class="pointer"></button>
      <div class="stores">
        <button class="store1"><img src= "/src/assets/google-play.png" class="google-play"></button>
        <button class="store1"><img src= "/src/assets/apple-play.png" class="apple-play"></button>
      </div>
    </div>
    <div class="screen-div">
      <img src=/src/assets/screen1.png class="screen1">
    </div>

  </div>
  <div class="training-div">
    <div class="screen-div2">
      <img src=/src/assets/screen2.png class="screen2">
    </div>
    <div class="plans-text">
      <h4>Personalized Training Plans</h4>
      <p2>Whether you're a beginner or a seasoned athlete, our app tailors workouts to your goals, fitness level, and progress. </p2>
      <p2>Say goodbye to guesswork—get a structured, science-backed plan designed just for you. Stay motivated, train smarter, and see real results!</p2>
    </div>




  </div>

  <div class="nutrition">,
    <div class="nutrition-text">
      <h5>Eat Smart, Get Fit!</h5>
      <p3>Enjoy easy, delicious recipes tailored to your<br> preferences and dietary needs. Eat what you love while</br> getting in your best shape—no stress, just results!</p3>
      <p>👨‍🍳 Delicious recipes crafted by expert chefs – easy and healthy 🍽️🔥</p>
    </div>
    <div class="foods">
      <img src="/src/assets/food1.png" class="food">
      <img src="/src/assets/food2.png" class="food2">
      <img src="/src/assets/food3.png" class="food">
    </div>
  </div>
  <div class="review">
    <h4>❤️ Loved by Our Users!</h4>
    <div class="reviews">
      <div class="box">
      <h6>⭐ 95% </h6>
      <p>Say RepLab keeps them on track!</p>
      </div >
      <div class="box">
        <h6>🥗 9/10</h6>
        <p>Love the easy, tasty meal plans!</p>
      </div>
      <div class="box">
        <h6>💪 +1M</h6>
        <p>Workouts completed and counting!</p>
      </div>
    </div>
  </div>
  <div class="start-section">
    <h4>Start Your Journey Now!</h4>
    <p></p>
    <button class=" journey-button">Start your journey! <img src="/src/assets/pointer.png" class="pointer"></button>
  </div>
  <div class="info">
    <div class="info-buttons">
      <button class="store1"><img src= "/src/assets/google-play.png" class="google-play2"></button>
      <button class="store1"><img src= "/src/assets/apple-play.png" class="apple-play2"></button>
    </div>
    <p5>Privacy and Security  I  Terms and Conditions</p5>
    <p5>RepLab – Your Ultimate Fitness Partner</p5>
    <p5> 📧 Need help? Contact us at support@replab.com
</p5>
    <p5>RepLab, 17276, Tallinn, Estonia, European Union.</p5>
    <p5>
    © 2025 RepLab. All Rights Reserved.</p5>
  </div>



</body>

</template>


<style scoped>


body {
  height: 100%;
  width: 100%;
  padding: 0;
  margin: 0;
  background-color: #0d0101;
}

header {
  width: 100%;
  height: 13%;
  margin: 0;
  display: flex;
  flex-direction: row;
  background-color: #0d0101;
  justify-content: flex-start;
  align-items: center;
}

h1 {
  color: #ffffff;
  font-size: 32px;
  font-family: Oswald;
  margin-left: 20px;
  font-weight: bold;
}

h2 {
  color: #ffffff;
  font-size: 32px;
  font-family: Albert Sans;
  margin-left: 20px;
  font-weight: normal;
}

h3 {
  color: #ffffff;
  font-size: 64px;
  font-family: Albert Sans;
  font-weight: bold;
  margin-bottom: 20px;
}

h4 {
  color: #ffffff;
  font-size: 48px;
  font-family: Albert Sans;
  font-weight: bold;
  margin-bottom: 20px;
}

h5 {
  color: #ffffff;
  font-size: 48px;
  font-family: Albert Sans;
  font-weight: bold;
  margin-bottom: 40px;
}

h6 {
  color: #ffffff;
  font-size: 64px;
  font-family: Albert Sans;
  font-weight: bold;
  margin-bottom: 20px;
}

p, p2 {
  color: #ffffff;
  font-size: 24px;
  font-family: Albert Sans;
  font-weight: normal;
  margin-bottom: 50px;
}

p3 {
  color: #ffffff;
  font-size: 24px;
  font-family: Albert Sans;
  font-weight: normal;
  margin-bottom: 100px;
}

p5 {
  color: #f2f3f4;
  font-size: 14px;
  font-family: Albert Sans;
  font-weight: lighter;
  margin-bottom: 20px;
}

p2 {
  line-height: 50px;
}

.logo {
  width: auto;
  height: 70px;
  margin-left: 20px;
}

.h2.languagetext {
  margin-bottom: 30px;
}

.menu {
  width: 45px;
  height: 45px;
  margin-left: 20px;
  margin-right: 20px;
  color: #ffffff;
}

.menu-button {
  background-color: transparent;
  border: none;
}

.header1 {
  width: 50%;
  height: 20%;
  margin: 0;
  display: flex;
  flex-direction: row;
  background-color: #0d0101;
  justify-content: flex-start;
  align-items: center;
}

.header2 {
  width: 500%;
  height: 20%;
  margin: 0;
  display: flex;
  flex-direction: row;
  background-color: #0d0101;
  justify-content: flex-end;
  align-items: center;
}

.arrow {
  width: 30px;
  height: 30px;
  margin-left: 0px;
  margin-right: 0px;
  color: #ffffff;
}

.arrow-button {
  background-color: transparent;
  border: none;
  display: flex;
  justify-content: center;
  align-items: center;
}

.introduction {
  position: relative;
  width: 100%;
  height: fit-content;
  margin: 0;
  display: flex;
  flex-direction: row;
  background-color: #26262D;
  justify-content: center;
  align-items: center;
  padding-top: 50px;
  padding-bottom: 200px;
  padding-left: 150px;
  overflow: hidden;
}



.intro-text {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  width: 700px;
}

.screen-div {
  width: 500px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  padding-top: 10px;
}

.screen1 {
  height: 650px;
  width: auto;
  margin-left: 50px;
}

.screen2 {
  height: 650px;
  width: auto;
}

.journey-button {
  width: fit-content;
  height: fit-content;
  padding: 20px;
  font-size: 32px;
  font-family: Albert Sans;
  font-weight: bold;
  color: #ffffff;
  background-color: #ff6554;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 100px;
}

.pointer {
  width: 50px;
  height: 50px;
  margin-left: 10px;
}

.apple-play,
.google-play {
  width: 300px;
  height: auto;
}

.google-play {
  margin-left: -35px;
}

.stores {
  display: flex;
  flex-direction: row;
}

.store1 {
  background-color: transparent;
  border: none;
}

.training-div {
  position: relative;
  width: 100%;
  height: fit-content;
  margin: 0;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding-top: 100px;
  padding-bottom: 200px;
  padding-left: 165px;
  overflow: hidden;
}

/* Fade effect at the top of the training div */
.training-div::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100px;
  background: linear-gradient(to top, rgba(38, 38, 45, 0.9), rgba(38, 38, 45, 0));
  pointer-events: none;
}

.training-div::before {
  content: "";
  position: absolute;
  top: -10%;
  left: -10%;
  width: 120%;
  height: 120%;
  background-image: url('/src/assets/background-image.png');
  background-size: cover;
  background-position: center;
  filter: blur(15px);
  z-index: -1;
}

.training-div > * {
  position: relative;
  z-index: 1;
}

.plans-text {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  width: 700px;
  padding-right: 200px;
}

.screen-div2 {
  width: 350px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  padding-top: 10px;
}


.nutrition {
  position: relative;
  width: 100%;
  height: fit-content;
  margin: 0;
  display: flex;
  flex-direction: row;
  background-color: #26262D;
  justify-content: center;
  align-items: flex-start;
  padding-top: 50px;
  padding-bottom: 100px;
  padding-left: 190px;
  overflow: hidden;
}

.food {
  width: 350px;
  height: auto;
  margin-bottom: 40px;
}
.food2 {
  width: 350px;
  height: auto;
  margin-bottom: 40px;
  margin-left: 15%;
}

.foods{
  display: flex;
  flex-direction: column;
  padding-top: 100px;
  width: 800px;
}

.nutrition-text {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  height: 500px;
  padding-top: 70px;
}

.review {
  position: relative;
  width: 100%;
  height: fit-content;
  margin: 0;
  display: flex;
  flex-direction: column;
  background-color: #2f2f2f;
  justify-content: center;
  align-items: center;
  padding-top: 50px;
  padding-bottom: 100px;
  overflow: hidden;
}

.reviews {
  display: flex;
  flex-direction: row;

}

.box{
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  margin-left: 80px;
  margin-right: 80px;
}

.start-section {
  position: relative;
  width: 100%;
  height: fit-content;
  margin: 0;
  display: flex;
  flex-direction: column;
  background-color: #26262D;
  justify-content: center;
  align-items: center;
  padding-top: 100px;
  padding-bottom: 100px;
  overflow: hidden;
}


.info {
  position: relative;
  width: 100%;
  height: fit-content;
  margin: 0;
  display: flex;
  flex-direction: column;
  background-color: #2f2f2f;
  justify-content: center;
  align-items: center;
  padding-top: 50px;
  padding-bottom: 100px;
  overflow: hidden;
}

.info-buttons{
  display: flex;
  flex-direction: row;
}


.apple-play2,
.google-play2 {
  width: 250px;
  height: auto;
}








@media screen and (max-width: 650px){
  body{
    display: flex;
    flex-wrap: wrap;
  }

  html {
    height: 100%;
    width: 100%;
    padding: 0;
  }

  body {
    height: 100%;
    width: 100%;
    padding: 0;
    margin: 0;
    background-color: #0d0101;
  }

  header {
    width: 100%;
    height: 13%;
    margin: 0;
    display: flex;
    flex-direction: row;
    background-color: #0d0101;
    justify-content: flex-start;
    align-items: center;
  }

  h1 {
    color: #ffffff;
    font-size: 32px;
    font-family: Oswald;
    margin-left: 20px;
    font-weight: bold;
  }

  h2 {
    color: #ffffff;
    font-size: 32px;
    font-family: Albert Sans;
    margin-left: 20px;
    font-weight: normal;
  }

  h3 {
    color: #ffffff;
    font-size: 56px;
    font-family: Albert Sans;
    font-weight: extrabold;
    margin-bottom: 20px;
  }

  h4 {
    color: #ffffff;
    font-size: 40px;
    font-family: Albert Sans;
    font-weight: bold;
    margin-bottom: 40px;
  }

  h5 {
    color: #ffffff;
    font-size: 40px;
    font-family: Albert Sans;
    font-weight: bold;
    margin-bottom: 40px;
  }

  h6 {
    color: #ffffff;
    font-size: 42px;
    font-family: Albert Sans;
    font-weight: bold;
    margin-bottom: 20px;
  }

  p, p2 {
    color: #ffffff;
    font-size: 20px;
    font-family: Albert Sans;
    font-weight: normal;
    margin-bottom: 20px;
  }

  p3 {
    color: #ffffff;
    font-size: 20px;
    font-family: Albert Sans;
    font-weight: normal;
    margin-bottom: 40px;
  }

  p5 {
    color: #f2f3f4;
    font-size: 14px;
    font-family: Albert Sans;
    font-weight: lighter;
    margin-bottom: 20px;
  }

  p2 {
    line-height: 30px;
  }

  .logo {
    width: auto;
    height: 70px;
    margin-left: 20px;
  }

  .h2.languagetext {
    margin-bottom: 30px;
  }

  .menu {
    width: 45px;
    height: 45px;
    margin-left: 0px;
    margin-right: 20px;
    color: #ffffff;
  }

  .menu-button {
    background-color: transparent;
    border: none;
  }

  .header1 {
    width: 50%;
    height: 20%;
    margin: 0;
    display: flex;
    flex-direction: row;
    background-color: #0d0101;
    justify-content: flex-start;
    align-items: center;
  }

  .header2 {
    width: 500%;
    height: 20%;
    margin: 0;
    display: flex;
    flex-direction: row;
    background-color: #0d0101;
    justify-content: flex-end;
    align-items: center;
  }

  .arrow {
    width: 30px;
    height: 30px;
    margin-left: 0px;
    margin-right: 0px;
    color: #ffffff;
  }

  .arrow-button {
    background-color: transparent;
    border: none;
  }

  .introduction {
    position: relative;
    width: 100%;
    height: fit-content;
    margin: 0;
    display: flex;
    flex-direction: column;
    background-color: #26262D;
    justify-content: center;
    align-items: center;
    padding-top: 0px;
    padding-bottom: 40px;
    overflow: hidden;
    padding-left: 0px;
  }



  .intro-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: fit-content;
    text-align: center;
  }

  .screen-div {
    width: fit-content;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    padding-top: 10px;
  }

  .screen1 {
    height: 650px;
    width: auto;
    margin-left: 0px;
  }

  .screen2 {
    height: 650px;
    width: auto;
  }

  .journey-button {
    width: fit-content;
    height: fit-content;
    padding-right: 20px;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 20px;
    font-size: 24px;
    font-family: Albert Sans;
    font-weight: bold;
    color: #ffffff;
    background-color: #ff6554;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 40px;
  }

  .pointer {
    width: 50px;
    height: 50px;
    margin-left: 10px;
  }

  .apple-play,
  .google-play {
    width: 300px;
    height: auto;
  }

  .google-play {
    margin-left: 0px;
  }

  .stores {
    display: flex;
    flex-direction: row;
  }

  .store1 {
    background-color: transparent;
    border: none;
  }

  .training-div {
    position: relative;
    width: 100%;
    height: fit-content;
    margin: 0;
    display: flex;
    flex-direction: column-reverse;
    justify-content: center;
    align-items: center;
    padding-top: 100px;
    padding-bottom: 40px;
    padding-left: 0px;
    overflow: hidden;
  }

  /* Fade effect at the top of the training div */
  .training-div::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100px;
    background: linear-gradient(to top, rgba(38, 38, 45, 0.9), rgba(38, 38, 45, 0));
    pointer-events: none;
  }

  .training-div::before {
    content: "";
    position: absolute;
    top: -10%;
    left: -10%;
    width: 120%;
    height: 120%;
    background-image: url('/src/assets/background-image.png');
    background-size: cover;
    background-position: center;
    filter: blur(15px);
    z-index: -1;
  }

  .training-div > * {
    position: relative;
    z-index: 1;
  }

  .plans-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: fit-content;
    text-align: center;
    margin-top: -80px;
    padding-left: 40px;
    padding-right: 40px;
  }

  .screen-div2 {
    width: fit-content;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    padding-top: 10px;
  }


  .nutrition {
    position: relative;
    width: 100%;
    height: fit-content;
    margin: 0;
    display: flex;
    flex-direction: column;
    background-color: #26262D;
    justify-content: center;
    align-items: center;
    padding-top: 0px;
    padding-bottom: 100px;
    padding-left: 0px;
    overflow: hidden;
  }

  .food {
    width: 265px;
    height: auto;
    margin-bottom: 40px;
  }
  .food2 {
    width: 269px;
    height: auto;
    margin-bottom: 40px;
    margin-left: 20px;

  }

  .foods{
    display: flex;
    flex-direction: row;
    padding-top: 100px;
    width: fit-content;
    justify-content: center;
    align-items: center;
    padding-right: 20px;
    padding-left: 20px;
    flex-wrap: wrap;
  }

  .nutrition-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: fit-content;
    padding-top: 0px;
    text-align: center;
    padding-right: 20px;
    padding-left: 20px;
  }

  .review {
    position: relative;
    width: 100%;
    height: fit-content;
    margin: 0;
    display: flex;
    flex-direction: column;
    background-color: #2f2f2f;
    justify-content: center;
    align-items: center;
    padding-top: 50px;
    padding-bottom: 100px;
    overflow: hidden;
  }

  .reviews {
    display: flex;
    flex-direction: row;

  }

  .box{
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
    flex-direction: column;
    margin-left: 20px;
    margin-right: 20px;
    text-align: center;
    margin-top: -50px;
  }

  .start-section {
    position: relative;
    width: 100%;
    height: fit-content;
    margin: 0;
    display: flex;
    flex-direction: column;
    background-color: #26262D;
    justify-content: center;
    align-items: center;
    padding-top: 100px;
    padding-bottom: 100px;
    overflow: hidden;
  }


  .info {
    position: relative;
    width: 100%;
    height: fit-content;
    margin: 0;
    display: flex;
    flex-direction: column;
    background-color: #2f2f2f;
    justify-content: center;
    align-items: center;
    padding-top: 50px;
    padding-bottom: 100px;
    overflow: hidden;
  }

  .info-buttons{
    display: flex;
    flex-direction: row;
    margin-bottom: 15px;
  }


  .apple-play2,
  .google-play2 {
    width: 200px;
    height: auto;
  }
}

</style>

<script setup></script>
