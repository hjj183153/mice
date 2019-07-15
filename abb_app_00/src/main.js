import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/Abb/MyHeader'
import MyFooter from './components/Abb/MyFooter'
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);
//将axios对象强行添加到Vue对象的原型对象中

//引入elementUI
import ElementUI from 'element-ui'
import '../node_modules/element-ui/lib/theme-chalk/index.css'
//引入axios
import axios from './axios'

//要求在node-modules下载v-viewer
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
