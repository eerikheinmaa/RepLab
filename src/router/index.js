import { createRouter, createWebHistory } from 'vue-router'
import HomeView from "../views/Index.vue";
import AboutView from "../views/About.vue";

const routes = [
  { path: '/', name: "Home", component: HomeView },
  { path: '/about', name: "About", component: AboutView },
]

const router = createRouter({
  history: createMemoryHistory(process.env.BASE_URL),
  routes
})

export default router
