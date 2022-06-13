/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-07 13:44:15
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-13 14:23:01
 * @FilePath     : \myapp\config\proxy.ts
 */

/**
 * 在生产环境 代理是无法生效的，所以这里没有生产环境的配置
 * -------------------------------
 * The agent cannot take effect in the production environment
 * so there is no configuration of the production environment
 * For details, please see
 * https://pro.ant.design/docs/deploy
 */

export default {
  dev: {
    // localhost:8000/api/** -> https://preview.pro.ant.design/api/**
    '/api': {
      // 要代理的地址
      target: 'http://10.1.7.175:8888',
      //target: 'http://10.1.7.90:57879',
      // 配置了这个可以从 http 代理到 https
      // 依赖 origin 的功能可能需要这个，比如 cookie
      pathRewrite: { '/api': '' },
      changeOrigin: true,
    },
  },
  test: {
    '/api/': {
      target: 'https://proapi.azurewebsites.net',
      changeOrigin: true,
      pathRewrite: { '^': '' },
    },
  },
  pre: {
    '/api/': {
      target: 'your pre url',
      changeOrigin: true,
      pathRewrite: { '^': '' },
    },
  },
};
