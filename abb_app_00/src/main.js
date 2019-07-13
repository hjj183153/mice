import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入elementUI
import ElementUI from 'element-ui'
import '../node_modules/element-ui/lib/theme-chalk/index.css'
//引入axios
import axios from './axios'
import Viewer from 'v-viewer'
import 'viewerjs/dist/viewer.css'
Vue.config.productionTip = false
Vue.use(ElementUI)
Vue.use(Viewer)
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
