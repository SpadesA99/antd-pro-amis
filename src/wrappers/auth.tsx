/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-13 17:56:43
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-14 09:37:02
 * @FilePath     : \myapp\src\wrappers\auth.tsx
 */

import { useAccess } from 'umi';
import { useModel } from 'umi';

export default (props: any) => {
  const { initialState } = useModel('@@initialState');
  const access = useAccess();
  const { currentUser } = initialState || {};

  if (access.auth(props.route) && currentUser) {
    return <div>{props.children}</div>;
  } else {
    return <div>无权限</div>;
  }
};
