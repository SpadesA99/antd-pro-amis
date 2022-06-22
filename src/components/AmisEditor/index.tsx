/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:43:53
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-11 14:16:05
 * @FilePath     : \myapp\src\components\AmisEditor\index.tsx
 */
import { Editor } from 'amis-editor';
import { useState } from 'react';
//amis style
import 'amis-editor/dist/style.css';
import 'amis/lib/helper.css';
import 'amis/lib/themes/antd.css';
import 'amis/lib/themes/default.css';
import 'amis/sdk/iconfont.css';

import { Button, Card } from 'antd';

function AmisEditor({ schema, onChange, onSave }: any) {
  const [isMobile, setisMobile] = useState<boolean>();
  const [Preview, setPreview] = useState<boolean>();

  return (
    <div>
      <div style={{ width: '100%', height: '50px', position: 'absolute' }}>
        <Card size={'small'}>
          <Button
            type="primary"
            style={{ marginRight: '10px' }}
            onClick={() => {
              setisMobile(!isMobile);
            }}
          >
            {isMobile ? 'PC' : 'Mobile'}
          </Button>
          <Button
            type="primary"
            style={{ marginRight: '10px' }}
            onClick={() => {
              setPreview(!Preview);
            }}
          >
            切换预览
          </Button>
          <Button type="primary" style={{ marginRight: '10px' }} onClick={onSave}>
            保存
          </Button>
        </Card>
      </div>
      <div
        style={{
          top: '50px',
          width: '100%',
          height: 'calc(100% - 50px)',
          position: 'absolute',
        }}
      >
        <Editor
          theme={'antd'}
          preview={Preview}
          value={schema}
          onChange={(value: any) => onChange(value)}
          className="is-fixed"
          isMobile={isMobile}
          //plugins={[MyRendererPlugin]}
        />
      </div>
    </div>
  );
}

export default AmisEditor;
