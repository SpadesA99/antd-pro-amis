/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 14:20:18
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-21 14:22:19
 * @FilePath     : \myapp\src\utils\notification.tsx
 */

import { notification } from 'antd';

const openNotificationWithIcon = (type: any, message: string, description: string) => {
  notification[type]({
    message: message,
    description: description,
  });
};

export default openNotificationWithIcon;
