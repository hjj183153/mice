import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Text from './components/Abb/Text.vue' 
import Details from './views/Details.vue'
import Index from './views/Index.vue'
import add_become_a_host_room from './views/add_become_a_host_room.vue'
<<<<<<< HEAD
import Search from './views/search/Search.vue'
import add_become_a_host_room2 from './components/Add/add_become_a_host_room2.vue'
import Story from './components/Abb/Story.vue'
import Search_result from './components/Abb/Search_result.vue'
import userdata from './views/userdata.vue'
=======
import add_room from './components/Add/add_become_a_host_room1.vue'
import add_bedrooms from './components/Add/add_become_a_host_room2.vue'
import add_bathrooms from './components/Add/add_become_a_host_room3.vue'
import add_location from './components/Add/add_become_a_host_room4.vue'
import add_location2 from './components/Add/add_become_a_host_room5.vue'
import add_photos from './components/Add/add_become_a_host_room6.vue'
import add_description from './components/Add/add_become_a_host_room7.vue'
import Story from './components/Abb/Story.vue'
import Search_result from './components/Abb/Search_result.vue'
import userdata from './views/userdata.vue'
import userguide from './views/userguide.vue'
>>>>>>> 7e9c5ef5cf946babb242bddcf8b6a5d0bb3c9b7d

Vue.use(Router)
import login from './views/login.vue'
import loginzmw from './views/loginzmw.vue'

export default new Router({
  routes: [
    {path: '/details',component: Details},
    {path:'/index',component:Index},
    {path:'/text',component:Text},
    {path:'/add_become_a_host_room',component:add_become_a_host_room,
      redirect: '/add_become_a_host_room/room',
      children:[
        {
          path: '/add_become_a_host_room/room',
          component: add_room
        },
        {
          path: '/add_become_a_host_room/bedrooms',
          component: add_bedrooms
        },
        {
          path: '/add_become_a_host_room/bathrooms',
          component: add_bathrooms
        },
        {
          path: '/add_become_a_host_room/location',
          component: add_location
        },
        {
          path: '/add_become_a_host_room/location2',
          component: add_location2
        },
        {
          path: '/add_become_a_host_room/photos',
          component: add_photos
        },
        {
          path: '/add_become_a_host_room/description',
          component: add_description
        },
      ]
    },
    {path: '/',component: Home},
    {path: '/Search',component: Search},
    {path:'/Story',component:Story},
    {path:'/Search_result',component:Search_result},   
<<<<<<< HEAD
    {path:'/userdata',component:userdata}, 
=======
    {path:'/userdata',component:userdata},    
    {path:'/userguide',component:userguide},    
>>>>>>> 7e9c5ef5cf946babb242bddcf8b6a5d0bb3c9b7d
    {
      path: '/about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
<<<<<<< HEAD
    }
    
=======
    },
    {path:'/login',component:login},
    {path:'/loginzmw',component:loginzmw},
>>>>>>> 7e9c5ef5cf946babb242bddcf8b6a5d0bb3c9b7d
  ]
})
