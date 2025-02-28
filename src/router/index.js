import { createRouter, createWebHistory } from 'vue-router'
import Index from '../views/Index.vue'
import Info from '../views/Info.vue'
import Help from '../views/Help.vue'
import About from '../views/About.vue'
import Profile from '../views/Profile.vue'
import Plan from '../views/Plan.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'index',
      component: Index,
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
    {
      path: '/about',
      name: 'About',
      // route level code-splitting
      // this generates a separate chunk (info.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: About,
    },
    {
      path: '/profile',
      name: 'Profile',
      component: Profile,
    },
    {
      path: '/plan',
      name: 'Plan',
      component: Plan,
    },
  ],
})

export default router
