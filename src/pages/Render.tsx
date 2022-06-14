/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:53
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-13 18:16:52
 * @FilePath     : \myapp\src\pages\Render.tsx
 */
import React, { useEffect, useState } from 'react';
import AmisRender from '@/components/AmisRender';
import axios from 'axios';
import { history, useRouteMatch } from 'umi';
import { Button } from 'antd';
import openNotificationWithIcon from '@/utils/notification';
import { useAccess } from 'umi';

const isDev = process.env.NODE_ENV === 'development';

const Render: React.FC = () => {
  const [schema, setSchema] = useState<string>();
  const [Router, setRouter] = useState<string>(history.location.pathname);
  const access = useAccess();

  useEffect(() => {
    axios
      .get('/api/admin/common/schema?router=' + Router)
      .then((res) => {
        if (res.data.status != 200) {
          openNotificationWithIcon('info', '失败', res.data.message);
          return;
        }
        if (res.data.data.schema == '') {
          //默认页面
          setSchema(
            '{"type":"page","body":[{"type":"code","language":"html","value":"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>","id":"u:4c464d8f466a"}]}',
          );
        } else {
          setSchema(res.data.data.schema);
        }
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  return (
    <div>
      {isDev && access.canAdmin ? (
        <Button
          style={{ position: 'fixed', zIndex: 999, right: '0px', top: '150px' }}
          onClick={() => {
            history.push({
              pathname: '/Editer',
              query: {
                router: Router,
              },
            });
          }}
        >
          Go Editer
        </Button>
      ) : null}
      <AmisRender schema={schema} />
    </div>
  );
};

export default Render;
