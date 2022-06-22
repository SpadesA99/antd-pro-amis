/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:53
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-15 15:59:31
 * @FilePath     : \myapp\src\pages\Editer.tsx
 */
import AmisEditor from '@/components/AmisEditor';
import openNotificationWithIcon from '@/utils/notification';
import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { history } from 'umi';

const Editer: React.FC = () => {
  const [schema, setschema] = useState(
    JSON.parse(
      '{"type":"page","body":[{"type":"code","language":"html","value":"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>","id":"u:4c464d8f466a"}]}',
    ),
  );

  useEffect(() => {
    if (
      history == undefined ||
      history.location == undefined ||
      history.location.query == undefined
    ) {
      return;
    }
    if (history.location.query.router != undefined || history.location.query.router != '') {
      axios
        .get('/api/v1/get-schema?router=' + history.location.query.router)
        .then((res) => {
          if (res.data.status != 200) {
            alert(res.data.message);
            return;
          }
          setschema(JSON.parse(res.data.data.schema));
        })
        .catch((err) => {
          console.log(err);
        });
    }
  }, []);

  return (
    <AmisEditor
      schema={schema}
      onSave={() => {
        if (
          history == undefined ||
          history.location == undefined ||
          history.location.query == undefined
        ) {
          return;
        }
        const data = { router: history.location.query.router, schema: JSON.stringify(schema) };
        axios
          .post('/api/v1/update-schema', data)
          .then((res) => {
            console.log('res=>', res);
            if (res.data.status != 200) {
              openNotificationWithIcon('success', '保存失败', res.data.message);
              return;
            }
            openNotificationWithIcon('success', '保存成功', '');
            history.goBack();
          })
          .catch((err) => {
            openNotificationWithIcon('success', '保存失败', err);
          });
      }}
      onChange={(value: any) => {
        setschema(value);
      }}
    />
  );
};

export default Editer;
