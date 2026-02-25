import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'main',
      component: () => import('../pages/Main.vue'),
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('../pages/About.vue'),
    }
  ]
})

export default router
