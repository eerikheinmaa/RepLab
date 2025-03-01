import { createRouter, createWebHistory } from 'vue-router'
import Index from '../views/Index.vue'
import Info from '../views/Info.vue'
import Help from '../views/Help.vue'
import Profile from '../views/Profile.vue'
import Plan from '../views/Plan.vue'
import Nutrition from '@/views/Nutrition.vue'
import Workout from '@/views/Workout.vue'
import Test from '@/views/Test.vue'


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
      path: '/profile',
      name: 'Profile',
      component: Profile,
    },
    {
      path: '/plans',
      name: 'Plan',
      component: Plan,
    },
    {
      path: '/nutrition',
      name: 'Nutrition',
      component: Nutrition,
    },
    {
      path: '/workout',
      name: 'Workout',
      component: Workout,
    },
    {
      path: '/Test',
      name: 'Test',
      component: Test,
    },
  ],
})

export default router
