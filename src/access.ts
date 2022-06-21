/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:52
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-21 18:08:18
 * @FilePath     : \myapp\src\access.ts
 */
let hasAuth = (route: any, roleId?: any) => {
  //console.log('access.ts route', route, roleId);
  if (roleId == '' || roleId == undefined) {
    return false;
  }

  let access = roleId.split(',');
  for (let i = 0; i < access.length; i++) {
    if (route.roles.includes(access[i])) {
      return true;
    }
  }
  return false;
};

export default function access(initialState: { currentUser?: API.CurrentUser } | undefined) {
  const { currentUser } = initialState ?? {};
  return {
    auth: (route: any) => hasAuth(route, currentUser?.access),
  };
}
