import Vue from 'vue';
import Router from 'vue-router';

Vue.use(Router);

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [{
    path: '/Forms',
    name: 'Forms',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/Forms.vue'),
  },
  {
    path: '/HR',
    name: 'HR',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/HR.vue'),
  },
  {
    path: '/IT',
    name: 'IT',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/IT.vue'),
  },
  {
    path: '/Operations',
    name: 'Operations',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/Operations.vue'),
  },
  {
    path: '/WhatsNew',
    name: 'WhatsNew',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/WhatsNew.vue'),
  },
  {
    path: '/',
    name: 'Home',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/Operations.vue'),
  },
  {
    path: '/about',
    name: 'about',
    component: () =>
        import(/* webpackChunkName: "about" */ './views/About.vue'),
  },
  ],
});
