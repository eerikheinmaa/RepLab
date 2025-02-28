import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
/*
const express = require('express');
const fs = require('fs');
const path = require('path');
const bodyParser = require('body-parser');
const sqlite3 = require('sqlite3').verbose();
*/
const app = createApp(App)

app.use(router)

app.mount('#app')
