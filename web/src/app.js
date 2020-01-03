import Vue from 'vue'
import router from './router'
import store from './store/store'
import App from './components/App.vue'
import './assets/app.scss'

new Vue({
    el: '#app',
    router,
    store,
    render: h => h(App)
})