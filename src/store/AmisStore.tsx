import { makeAutoObservable, observable } from 'mobx';

class AmisStore {
  rootStore: any;

  todos = [];

  @observable
  schema = {
    type: 'page',
    title: 'Hello world2255522',
    initApi: '/v1api/list',
    body: 'date is ${code}',
  };

  preview = false;
  isMobile = false;

  constructor(rootStore: any) {
    makeAutoObservable(this, rootStore);
    this.rootStore = rootStore;
  }

  updateSchema(schema: any) {
    console.log('updateSchema', schema);
    this.schema = schema;
  }

  updateModel() {
    this.isMobile = !this.isMobile;
  }
  updatePreview() {
    this.preview = !this.preview;
  }
}

export default AmisStore;
