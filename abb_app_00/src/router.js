import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Text from './components/Abb/Text.vue'
import Details from './views/Details.vue'

import Index from './views/Index.vue'
import add_become_a_host_room from './views/add_become_a_host_room.vue'
<<<<<<< HEAD
import Search from './views/search/Search.vue'
=======
import add_become_a_host_room2 from './components/Add/add_become_a_host_room2.vue'
import Story from './components/Abb/Story.vue'
import Search_result from './components/Abb/Search_result.vue'
import user from './views/user.vue'
import userdata from './views/user_data.vue'

>>>>>>> 443d8958b1b1e788d86655dd5307d412167dc53e
Vue.use(Router)

export default new Router({
  routes: [
    {path: '/details',component: Details},
    {path:'/index',component:Index},
    {path:'/text',component:Text},
    {path:'/add_become_a_host_room',component:add_become_a_host_room},
    {path:'/add_become_a_host_room2',component:add_become_a_host_room2},
    {path: '/',component: Home},
    {path: '/Search',component: Search},
    {path:'/Story',component:Story},
    {path:'/Search_result',component:Search_result},
    {path:'/user',component:user},    
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
