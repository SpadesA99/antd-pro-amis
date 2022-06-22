/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-05-18 12:35:04
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-05-18 14:40:08
 * @FilePath     : \myapp\src\store\rootstore.tsx
 */

import AmisStore from './AmisStore';

class RootStore {
  amisStore: AmisStore;

  constructor() {
    this.amisStore = new AmisStore(this);
  }
}

export default RootStore;
