/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:52
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-21 14:08:42
 * @FilePath     : \myapp\src\access.ts
 */
let hasAuth = (route: any, roleId?: string) => {
  console.log('access.ts route', route, roleId);
  return route.roles ? route.roles.includes(roleId) : false;
};

export default function access(initialState: { currentUser?: API.CurrentUser } | undefined) {
  const { currentUser } = initialState ?? {};
  return {
    auth: (route: any) => hasAuth(route, currentUser?.access),
  };
}
