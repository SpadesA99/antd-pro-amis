/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:44:15
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-14 09:41:55
 * @FilePath     : \myapp\config\routes.ts
 */
export default [
  {
    path: '/user',
    layout: false,
    routes: [
      { name: '登录', path: '/user/login', component: './user/Login' },
      { component: './404' },
    ],
  },
  {
    path: '/welcome',
    name: '欢迎',
    icon: 'smile',
    component: './Welcome',
  },
  {
    path: '/Editer',
    access: 'canAdmin',
    name: 'Editer',
    layout: false,
    icon: 'smile',
    hideInMenu: true,
    component: './Editer',
  },
  {
    path: '/Render',
    name: 'Render',
    icon: 'smile',
    component: './Render',
  },
  {
    path: '/Vtables',
    name: 'Vtables',
    icon: 'smile',
    component: './Vtables',
  },
  {
    path: '/Test',
    name: 'Test',
    icon: 'smile',
    component: './Render',
  },
  {
    path: '/CRUD',
    name: 'CRUD',
    icon: 'smile',
    component: './Render',
  },
  {
    path: '/product',
    name: '产品管理',
    routes: [
      { path: '/product', redirect: 'product/list' },
      {
        path: '/product/list',
        name: '产品列表',
        component: './Render',
      },
      {
        path: '/product/new',
        name: '新建产品',
        component: './Render',
      },
      {
        path: '/product/id',
        name: '产品详情',
        component: './Render',
      },
      {
        path: '/product/update/id',
        name: '修改产品',
        component: './Render',
      },
    ],
  },
  {
    path: '/RouterSc',
    name: '路由管理',
    icon: 'smile',
    access: 'canSuperAdmin',
    component: './Render',
  },
  {
    name: 'pageA',
    path: '/pageA',
    component: './Render',
    roles: ['admin', 'user'],
    access: 'auth',
    wrappers: ['@/wrappers/auth'],
  },
  {
    name: 'pageB',
    path: '/pageB',
    component: './Render',
    roles: ['admin'],
    access: 'auth',
    wrappers: ['@/wrappers/auth'],
  },
  {
    name: 'pageC',
    path: '/pageC',
    component: './Render',
    roles: ['user'],
    access: 'auth',
    wrappers: ['@/wrappers/auth'],
  },
  {
    path: '/admin',
    name: '管理页',
    icon: 'crown',
    access: 'canAdmin',
    component: './Admin',
    routes: [
      {
        path: '/admin/sub-page',
        name: '二级管理页',
        icon: 'smile',
        component: './Welcome',
      },
      { component: './404' },
    ],
  },
  {
    name: '查询表格',
    icon: 'table',
    path: '/list',
    component: './TableList',
  },
  {
    path: '/',
    redirect: '/welcome',
  },
  {
    component: './404',
  },
];
