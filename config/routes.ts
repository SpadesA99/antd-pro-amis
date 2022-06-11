/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:44:15
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-11 11:52:07
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
  { path: '/welcome', name: '欢迎', icon: 'smile', component: './Welcome' },
  { path: '/Editer', name: 'Editer', layout: false, icon: 'smile', component: './Editer' },
  { path: '/Render', name: 'Render', icon: 'smile', component: './Render' },
  { path: '/Vtables', name: 'Vtables', icon: 'smile', component: './Vtables' },
  { path: '/Test', name: 'Test', icon: 'smile', component: './Render' },
  {
    path: '/admin',
    name: '管理页',
    icon: 'crown',
    access: 'canAdmin',
    component: './Admin',
    routes: [
      { path: '/admin/sub-page', name: '二级管理页', icon: 'smile', component: './Welcome' },
      { component: './404' },
    ],
  },
  { name: '查询表格', icon: 'table', path: '/list', component: './TableList' },
  { path: '/', redirect: '/welcome' },
  { component: './404' },
];
