import openNotificationWithIcon from '@/utils/notification';
import { PageContainer } from '@ant-design/pro-layout';
import { AlertComponent, render as renderAmis, ToastComponent } from 'amis';
import { ToastLevel } from 'amis/lib/components/Toast';
import axios from 'axios';
import copy from 'copy-to-clipboard';
//amis style
import 'amis-editor/dist/style.css';
import 'amis/lib/helper.css';
import 'amis/lib/themes/antd.css';
import 'amis/lib/themes/default.css';
import 'amis/sdk/iconfont.css';

function AmisRender({ schema }: any) {
  //let amisScoped;
  const theme = 'antd';
  const locale = 'zh-CN';
  return (
    <PageContainer>
      <div>
        <ToastComponent theme={theme} key="toast" position={'top-right'} locale={locale} />
        <AlertComponent theme={theme} key="alert" locale={locale} />
        {renderAmis(
          schema == undefined
            ? {
                type: 'page',
                title: '简单页面',
                body: '内容',
              }
            : JSON.parse(schema),
          {
            // props...
            // locale: 'en-US' // 请参考「多语言」的文档
            // scopeRef: (ref: any) => (amisScoped = ref)  // 功能和前面 SDK 的 amisScoped 一样
          },
          {
            // 下面三个接口必须实现
            fetcher: ({
              url, // 接口地址
              method, // 请求方法 get、post、put、delete
              data, // 请求数据
              responseType,
              config, // 其他配置
              headers, // 请求头
            }: any) => {
              // eslint-disable-next-line no-param-reassign
              config = config || {};
              config.withCredentials = true;
              // eslint-disable-next-line @typescript-eslint/no-unused-expressions
              responseType && (config.responseType = responseType);

              if (config.cancelExecutor) {
                config.cancelToken = new (axios as any).CancelToken(config.cancelExecutor);
              }

              config.headers = headers || {};

              if (method !== 'post' && method !== 'put' && method !== 'patch') {
                if (data) {
                  config.params = data;
                }

                return (axios as any)[method](url, config);
              } else if (data && data instanceof FormData) {
                config.headers = config.headers || {};
                config.headers['Content-Type'] = 'multipart/form-data';
              } else if (
                data &&
                typeof data !== 'string' &&
                !(data instanceof Blob) &&
                !(data instanceof ArrayBuffer)
              ) {
                // eslint-disable-next-line no-param-reassign
                data = JSON.stringify(data);
                config.headers = config.headers || {};
                config.headers['Content-Type'] = 'application/json';
              }

              return (axios as any)[method](url, data, config);
            },
            isCancel: (value: any) => (axios as any).isCancel(value),
            copy: (content) => {
              copy(content);
              openNotificationWithIcon('success', '内容已复制到粘贴板', '');
            },
            theme,

            // 后面这些接口可以不用实现

            // 默认是地址跳转
            // jumpTo: (
            //   location: string /*目标地址*/,
            //   action: any /* action对象*/
            // ) => {
            //   // 用来实现页面跳转, actionType:link、url 都会进来。
            // },

            // updateLocation: (
            //   location: string /*目标地址*/,
            //   replace: boolean /*是replace，还是push？*/
            // ) => {
            //   // 地址替换，跟 jumpTo 类似
            // },

            // isCurrentUrl: (
            //   url: string /*url地址*/,
            // ) => {
            //   // 用来判断是否目标地址当前地址
            // },

            notify: (type: ToastLevel, msg: string, conf?: any) => {
              openNotificationWithIcon(type, msg, '');
            },
            // alert,
            // confirm,
            // tracker: (eventTracke) => {}
          },
        )}
      </div>
    </PageContainer>
  );
}

export default AmisRender;
