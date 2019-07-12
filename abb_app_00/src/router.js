import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Text from './components/Abb/Text.vue'
import aaa from './views/aaa.vue'
import Details from './components/Abb/Details.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {path: '/details',component: Details},
    {path:'/text',component:Text},
    {path:'/aaa',component:aaa},
    {path: '/',component: Home},
    {
      path: '/about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
