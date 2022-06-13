/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:52
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-13 16:35:39
 * @FilePath     : \myapp\src\access.ts
 */
/**
 * @see https://umijs.org/zh-CN/plugins/plugin-access
 * */
export default function access(initialState: { currentUser?: API.CurrentUser } | undefined) {
  const { currentUser } = initialState ?? {};
  return {
    canAdmin: currentUser && currentUser.access === 'admin',
    canSuperAdmin: currentUser && currentUser.access === 'superadmin',
  };
}
