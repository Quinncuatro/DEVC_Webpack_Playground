import Vue from 'vue';
import Router from 'vue-router';

Vue.use(Router);

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/Chambers',
      name: 'Chambers',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/Chambers.vue'),
    },
    {
      path: '/CourtFamily',
      name: 'CourtFamily',
      component: () => import(/* webpackChunkName: "about" */ './views/CourtFamily.vue'),
    },
    {
      path: '/Forms',
      name: 'Forms',
      component: () => import(/* webpackChunkName: "about" */ './views/Forms.vue'),
    },
    {
      path: '/HR',
      name: 'HR',
      component: () => import(/* webpackChunkName: "about" */ './views/HR.vue'),
    },
    {
      path: '/IT',
      name: 'IT',
      component: () => import(/* webpackChunkName: "about" */ './views/IT.vue'),
    },
    {
      path: '/Jury',
      name: 'Jury',
      component: () => import(/* webpackChunkName: "about" */ './views/Jury.vue'),
    },
    {
      path: '/NextGen',
      name: 'NextGen',
      component: () => import(/* webpackChunkName: "about" */ './views/NextGen.vue'),
    },
    {
      path: '/Operations',
      name: 'Operations',
      component: () => import(/* webpackChunkName: "about" */ './views/Operations.vue'),
    },
    {
      path: '/WhatsNew',
      name: 'WhatsNew',
      component: () => import(/* webpackChunkName: "about" */ './views/WhatsNew.vue'),
    },
    {
      path: '/',
      name: 'Home',
      component: () => import(/* webpackChunkName: "about" */ './views/Operations.vue'),
    },
    {
      path: '/about',
      name: 'about',
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue'),
    },
  ],
});
