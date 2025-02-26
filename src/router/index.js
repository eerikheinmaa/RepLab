import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Index.vue'
import Info from '../views/Info.vue'
import Help from '../views/Help.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
    },
    {
      path: '/info',
      name: 'info',
      // route level code-splitting
      // this generates a separate chunk (info.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: Info,
    },
    {
      path: '/help',
      name: 'Help',
      // route level code-splitting
      // this generates a separate chunk (info.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: Help,
    },
  ],
})

export default router
