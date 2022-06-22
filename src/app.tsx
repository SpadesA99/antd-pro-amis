import Footer from '@/components/Footer';
import RightContent from '@/components/RightContent';
import { createFromIconfontCN } from '@ant-design/icons';
import type { Settings as LayoutSettings } from '@ant-design/pro-layout';
import { PageLoading, SettingDrawer } from '@ant-design/pro-layout';
import { dynamic, history, RunTimeLayoutConfig } from 'umi';
import defaultSettings from '../config/defaultSettings';
import { currentUser as queryCurrentUser } from './services/ant-design-pro/api';

const isDev = process.env.NODE_ENV === 'development';
const loginPath = '/user/login';

/** 获取用户信息比较慢的时候会展示一个 loading */
export const initialStateConfig = {
  loading: <PageLoading />,
};

/**
 * @see  https://umijs.org/zh-CN/plugins/plugin-initial-state
 * */
export async function getInitialState(): Promise<{
  settings?: Partial<LayoutSettings>;
  currentUser?: API.CurrentUser;
  loading?: boolean;
  fetchUserInfo?: () => Promise<API.CurrentUser | undefined>;
}> {
  const fetchUserInfo = async () => {
    try {
      const msg = await queryCurrentUser();
      return msg.data;
    } catch (error) {
      history.push(loginPath);
    }
    return undefined;
  };
  // 如果不是登录页面，执行
  if (history.location.pathname !== loginPath) {
    const currentUser = await fetchUserInfo();
    return {
      fetchUserInfo,
      currentUser,
      settings: defaultSettings,
    };
  }
  return {
    fetchUserInfo,
    settings: defaultSettings,
  };
}

const IconFont = createFromIconfontCN({
  scriptUrl: [
    '//at.alicdn.com/t/font_1788044_0dwu4guekcwr.js', // icon-javascript, icon-java, icon-shoppingcart (overrided)
    '//at.alicdn.com/t/font_1788592_a5xf2bdic3u.js', // icon-shoppingcart, icon-python
  ],
});

//替换菜单图标
const fixMenuItemIcon = (menus: any): any => {
  for (let index = 0; index < menus.length; index++) {
    const element = menus[index];
    if (typeof element.icon === 'string' && element.icon.indexOf('icon-') === 0) {
      element.icon = <IconFont type={element.icon} />; //<CaretUpOutlined />// <IconFont type={element.icon} />;
    }
    element.children && element.children.length > 0
      ? (element.children = fixMenuItemIcon(element.children))
      : null;
  }
  return menus;
};

//动态加载渲染组件
const menuRender = (menu: any) => {
  for (let i = 0; i < menu.length; i++) {
    if (
      menu[i].component != '' &&
      menu[i].component != undefined &&
      menu[i].component != '@/pages/404'
    ) {
      menu[i] = {
        component: dynamic({
          loader: () => import('@/pages/Render'),
          loading: () => <PageLoading />,
        }),
        name: menu[i].name,
        path: menu[i].path,
        icon: menu[i].icon,
        access: 'auth',
        exact: true,
        roles: menu[i].roles,
        wrappers: [
          dynamic({
            loader: () => import('@/wrappers/auth'),
            loading: () => <PageLoading />,
          }),
        ],
      };
    }

    if (menu[i].routes != null && menu[i].routes.length > 0) {
      menu[i].routes = menuRender(menu[i].routes);
      menu[i] = {
        path: menu[i].path,
        name: menu[i].name,
        icon: menu[i].icon,
        routes: [
          ...menu[i].routes,
          {
            component: dynamic({
              loader: () => import('@/pages/404'),
              loading: () => <PageLoading />,
            }),
          },
        ],
      };
      // if (menu[i].icon != "" && menu[i].icon != undefined) {
      //   menu[i].icon = menu[i].icon;
      // }
    }
  }
  //console.log('menuRender: ', menu);
  return menu;
};

// ProLayout 支持的api https://procomponents.ant.design/components/layout
export const layout: RunTimeLayoutConfig = ({ initialState, setInitialState }: any) => {
  return {
    rightContentRender: () => <RightContent />,
    disableContentMargin: false,
    waterMarkProps: {
      content: initialState?.currentUser?.name,
    },

    footerRender: () => <Footer />,
    onPageChange: () => {
      const { location } = history;
      // 如果没有登录，重定向到 login
      if (!initialState?.currentUser && location.pathname !== loginPath) {
        history.push(loginPath);
      }
    },
    links: [],
    //menuHeaderRender: undefined,
    menuDataRender: (menuItemProps: any) => fixMenuItemIcon(menuItemProps),
    // 自定义 403 页面
    // unAccessible: <div>unAccessible</div>,
    // 增加一个 loading 的状态
    childrenRender: (children, props) => {
      // if (initialState?.loading) return <PageLoading />;
      return (
        <>
          {children}
          {!props.location?.pathname?.includes('/login') && (
            <SettingDrawer
              disableUrlParams
              enableDarkTheme
              settings={initialState?.settings}
              onSettingChange={(settings) => {
                setInitialState((preInitialState: any) => ({
                  ...preInitialState,
                  settings,
                }));
              }}
            />
          )}
        </>
      );
    },
    ...initialState?.settings,
  };
};

let extraRoutes: any;

function addRoutes(routes: any) {
  for (let i = 0; i < extraRoutes.length; i++) {
    routes.push(extraRoutes[i]);
  }
}

export function patchRoutes({ routes }: any) {
  //debugger;
  //addRoutes(routes[0].routes);
  for (let i = 0; i < extraRoutes.length; i++) {
    routes[0].routes.push(extraRoutes[i]);
  }
}

export function render(oldRender: any) {
  fetch('/api/v1/get-menu-tree?roles=superadmin')
    .then((res) => res.json())
    .then((res) => {
      extraRoutes = menuRender(res.data);

      oldRender();
    });
}
