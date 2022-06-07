/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:53
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-07 14:22:26
 * @FilePath     : \myapp\src\pages\Editer.tsx
 */
import React, { useEffect, useState } from 'react';
import AmisEditor from '@/components/AmisEditor';
import { history } from 'umi';
import axios from 'axios';
import openNotificationWithIcon from '@/utils/notification';



const Editer: React.FC = () => {
  const [schema, setschema] = useState({
    type: "page",
    title: "Hello world2255522",
    initApi: "/v1api/list",
    body: "date is ${code}"
  });

  useEffect(() => {
    if (history.location.query.router != undefined || history.location.query.router != '') {
      axios.get("/api/admin/common/schema?router=" + history.location.query.router).then(res => {
        if (res.data.status != 200) {
          alert(res.data.message);
          return;
        }
        setschema(JSON.parse(res.data.data.schema));
      }).catch(err => {
        console.log(err);
      })
    }
  }, []);

  return (
    <div>
      <AmisEditor schema={schema} onSave={() => {
        console.log('save');
        const data = { 'router': 'test', 'schema': JSON.stringify(schema) };
        axios.post("/api/admin/common/upschema", data).then(res => {
          console.log('res=>', res);
          if (res.data.status != 200) {
            openNotificationWithIcon('success', "保存失败", res.data.message);
            return;
          }
          openNotificationWithIcon('success', "保存成功", '');
          history.goBack();
        }).catch(err => {
          openNotificationWithIcon('success', "保存失败", err);
        });
      }} onChange={(value: any) => {
        setschema(value);
      }} />
    </div>
  );
};

export default Editer;
