/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:53
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-07 14:23:17
 * @FilePath     : \myapp\src\pages\Render.tsx
 */
import React, { useEffect, useState } from 'react';
import AmisRender from '@/components/AmisRender';
import axios from 'axios';
import { history } from 'umi';
import { Button } from 'antd';
import openNotificationWithIcon from '@/utils/notification';

const isDev = process.env.NODE_ENV === 'development';

const Render: React.FC = () => {
    const [schema, setSchema] = useState<string>();
    const [Router, setRouter] = useState<string>('test');

    useEffect(() => {
        axios.get("/api/admin/common/schema?router=" + Router).then(res => {
            if (res.data.status != 200) {
                openNotificationWithIcon('info', "失败", res.data.message);
                return;
            }
            setSchema(res.data.data.schema);
        }).catch(err => {
            console.log(err);
        })
    }, []);

    return (
        <div>
            {isDev ? <Button style={{ position: 'fixed', zIndex: 999, right: '0px', top: '150px' }} onClick={() => {
                history.push({
                    pathname: '/Editer',
                    query: {
                        router: Router,
                    },
                });
            }}>Go Editer</Button> : null}
            <AmisRender theme={'cxd'} locale={'zh-CN'} schema={schema} />
        </div>
    );
};

export default Render;
