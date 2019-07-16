import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Text from './components/Abb/Text.vue'
import Details from './views/Details.vue'

import Index from './views/Index.vue'
import add_become_a_host_room from './views/add_become_a_host_room.vue'
import add_become_a_host_room8 from './components/Add/add_become_a_host_room8.vue'
import Story from './components/Abb/Story.vue'
import Search_result from './components/Abb/Search_result.vue'
import userdata from './views/userdata.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/details',component: Details},
    {path:'/index',component:Index},
    {path:'/text',component:Text},
    {path:'/add_become_a_host_room',component:add_become_a_host_room},
    {path:'/add_become_a_host_room8',component:add_become_a_host_room8},
    {path: '/',component: Home},
    {path:'/Story',component:Story},
    {path:'/Search_result',component:Search_result},   
    {path:'/userdata',component:userdata},    
    {
      path: '/about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
