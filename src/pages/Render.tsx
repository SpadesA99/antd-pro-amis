/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:53
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-22 16:44:02
 * @FilePath     : \myapp\src\pages\Render.tsx
 */
import AmisRender from '@/components/AmisRender';
import openNotificationWithIcon from '@/utils/notification';
import { Button } from 'antd';
import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { history, useAccess } from 'umi';

const Render: React.FC = () => {
  const [schema, setSchema] = useState<string>();
  const [Router, setRouter] = useState<string>(history.location.pathname);
  const access = useAccess();

  useEffect(() => {
    axios
      .get('/api/v1/get-schema?router=' + Router)
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
      {access.auth({ roles: ['editor'] }) ? (
        <div>
          <Button
            style={{ position: 'fixed', zIndex: 999, right: '0px', top: '150px' }}
            onClick={() => {
              history.push({
                pathname: '/editor',
                query: {
                  router: Router,
                },
              });
            }}
          >
            Go Editor
          </Button>
          <Button
            style={{ position: 'fixed', zIndex: 999, right: '0px', top: '185px' }}
            onClick={() => {
              history.push({
                pathname: Router,
                query: {
                  amisDebug: '1',
                },
              });
              history.go(0);
            }}
          >
            DEBUG
          </Button>
        </div>
      ) : null}
      <AmisRender schema={schema} />
    </div>
  );
};

export default Render;
