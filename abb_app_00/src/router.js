import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Text from './components/Abb/Text.vue'
import Index from './views/Index.vue'
import add_become_a_host_room from './views/add_become_a_host_room.vue'
import Story from './components/Abb/Story.vue'
Vue.use(Router)
import login from './views/login.vue'
import loginzmw from './views/loginzmw.vue'

export default new Router({
  routes: [
    {path:'/index',component:Index},
    {path:'/text',component:Text},
    {path:'/add_become_a_host_room',component:add_become_a_host_room},
    {path: '/',component: Home},
    {path:'/Story',component:Story},  
    {
      path: '/about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {path:'/login',component:login},
    {path:'/loginzmw',component:loginzmw},
  ]
})
