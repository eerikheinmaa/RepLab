import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

/*
const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
*/

// export const eventBus  = new Vue();


const app = createApp(App)

app.use(router)

app.mount('#app')
