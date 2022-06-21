/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:44:15
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-21 18:21:50
 * @FilePath     : \myapp\config\routes.ts
 */
export default [
  {
    path: '/user',
    layout: false,
    routes: [
      { name: '登录', path: '/user/login', component: '@/pages/user/Login' },
      { component: './404' },
    ],
  },
  {
    path: '/editor',
    hideInMenu: true,
    layout: false,
    roles: ['superadmin'],
    access: 'auth',
    wrappers: ['@/wrappers/auth'],
    component: '@/pages/Editer',
  },
];
