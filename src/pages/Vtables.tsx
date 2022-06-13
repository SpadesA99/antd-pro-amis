/*
 * @Author       : SpadesA.yanjuan9998@gmail.com
 * @Date         : 2022-06-08 10:37:08
 * @LastEditors  : SpadesA.yanjuan9998@gmail.com
 * @LastEditTime : 2022-06-13 15:09:59
 * @FilePath     : \myapp\src\pages\Vtables.tsx
 */

import React, { useContext, useEffect, useReducer, useState } from 'react';
import { List } from 'react-virtualized';
import 'react-virtualized/styles.css';
import { Button, Row, Modal, Input } from 'antd';
import useForceUpdate from 'use-force-update';

const Vtables: React.FC = () => {
  const [isModalVisible, setIsModalVisible] = useState(false);
  const [SelectItem, setSelectItem] = useState(0);

  const vtablehead = [
    { title: '商品名', width: '228px' },
    { title: '批', width: '50px' },
    { title: '序', width: '50px' },
    { title: '商品类型', width: '100px' },
    { title: '规格', width: '100px' },
    { title: '单位', width: '100px' },
    { title: '采购价', width: '100px' },
    { title: '销售价', width: '100px' },
    { title: '生产厂家', width: '100px' },
  ];
  const forceUpdate = useForceUpdate();

  const handleUpdate = React.useCallback(() => {
    forceUpdate();
  }, [forceUpdate]);

  function vTableHead({ title, width, key }: any) {
    return <div style={{ width: width }}>{title}</div>;
  }

  function rowRenderer({
    key, // 唯一值
    index, // 索引号
    isScrolling, // 是否在滚动中
    isVisible, // 当前行在list中是否可见
    style, // 每行的样式对象
  }: any) {
    return (
      <Row
        key={key}
        style={{
          ...style,
          border: '1px solid #dcdfe6',
          borderRadius: '2px',
          paddingBottom: '2px',
          paddingTop: '2px',
          whiteSpace: 'nowrap',
          backgroundColor: SelectItem === index ? 'blue' : '#fff',
        }}
      >
        <div style={{ width: '228px' }}>{datas[index].sp_name}</div>
        <div style={{ width: '50px' }}>{datas[index].is_pihao}</div>
        <div style={{ width: '50px' }}>{datas[index].is_serial}</div>
        <div style={{ width: '100px' }}>{datas[index].sp_class?.sp_class_name}</div>
        <div style={{ width: '100px' }}>{datas[index].gg_xiaoshou}</div>
        <div style={{ width: '100px' }}>{datas[index].dw_caigou}</div>
        <div style={{ width: '100px' }}>{datas[index].cgj}</div>
        <div style={{ width: '100px' }}>{datas[index].xsj}</div>
        <div style={{ width: '100px' }}>{datas[index].sp_extend_yp?.yp_manufacturer}</div>
      </Row>
    );
  }

  return (
    <div>
      <Input
        placeholder="名称/简拼/全拼"
        style={{ width: '200px' }}
        size={'small'}
        onClick={() => {
          setIsModalVisible(true);
        }}
      />
      <Modal
        mask={false}
        width={1070}
        visible={isModalVisible}
        onOk={() => {
          setIsModalVisible(false);
        }}
        onCancel={() => {
          setIsModalVisible(false);
        }}
        footer={null}
        closable={false}
      >
        <Row>
          {vtablehead.map((item: any, index: number) => {
            return <>{vTableHead({ title: item.title, width: item.width, key: index })}</>;
          })}
        </Row>
        <List
          width={1030}
          height={300}
          rowCount={datas.length}
          rowHeight={30}
          rowRenderer={rowRenderer}
          autoWidth
        />
      </Modal>
    </div>
  );
};

export default Vtables;

let datas = [
  {
    sp_id: 215743530737734,
    gg_xiaoshou: '',
    dw_xiaoshou: '包',
    cgj: '700.0000',
    xsj: '700.0000',
    sp_name_jp: 'blb',
    sp_name_qp: 'zhongyaobaoerbihouke',
    dw_caigou: '包',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 217169891115077,
    sp_class_id: 163991625429063,
    sp_name: '中药包（耳鼻喉科）',
    is_pihao: 2,
    sp_self_code: '2000000003',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 215743530737734,
      yp_name: '中药包（耳鼻喉科）',
      yp_manufacturer: '',
    },
    sp_class: {
      sp_class_id: 163991625429063,
      sp_class_name: '中草药',
    },
  },
  {
    sp_id: 225570678607942,
    gg_xiaoshou: '',
    dw_xiaoshou: '盒',
    cgj: '5.0000',
    xsj: '5.0000',
    sp_name_jp: 'ycxhcwhg',
    sp_name_qp: 'yicixinghaocaiwuhuaguan',
    dw_caigou: '盒',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 225570678607941,
    sp_class_id: 163991625429061,
    sp_name: '一次性耗材（雾化管）',
    is_pihao: 1,
    sp_self_code: 'ycxhcwhg',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 225570678607942,
      yp_name: '一次性耗材（雾化管）',
      yp_manufacturer: '',
    },
    sp_class: {
      sp_class_id: 163991625429061,
      sp_class_name: '卫材',
    },
  },
  {
    sp_id: 228777881837638,
    gg_xiaoshou: '1ml:0.5mg',
    dw_xiaoshou: '支',
    cgj: '40.0000',
    xsj: '4.0000',
    sp_name_jp: 'lsatpzsy',
    sp_name_qp: 'liusuanatuopinzhusheye',
    dw_caigou: '盒',
    xs_xiaocai: '10.00',
    is_serial: 2,
    sp_snap_id: 230166301532229,
    sp_class_id: 163991625424965,
    sp_name: '硫酸阿托品注射液',
    is_pihao: 1,
    sp_self_code: 'lsatpzsy',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 228777881837638,
      yp_name: '硫酸阿托品注射液',
      yp_manufacturer: '天津金耀药业有限公司',
    },
    sp_class: {
      sp_class_id: 163991625424965,
      sp_class_name: '西药',
    },
  },
  {
    sp_id: 229908530286662,
    gg_xiaoshou: '每支装10ml',
    dw_xiaoshou: '盒',
    cgj: '30.0000',
    xsj: '30.0000',
    sp_name_jp: 'ejhqkfyw',
    sp_name_qp: 'ejiaohuangqikoufuyewu',
    dw_caigou: '盒',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 229908530286661,
    sp_class_id: 163991625429063,
    sp_name: '阿胶黄芪口服液（无）',
    is_pihao: 1,
    sp_self_code: '1998',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 229908530286662,
      yp_name: '阿胶黄芪口服液',
      yp_manufacturer: '河北君临药业有限公司',
    },
    sp_class: {
      sp_class_id: 163991625429063,
      sp_class_name: '中草药',
    },
  },
  {
    sp_id: 229941145473094,
    gg_xiaoshou: '2ml:100mg',
    dw_xiaoshou: '支',
    cgj: '5.5000',
    xsj: '0.5500',
    sp_name_jp: 'jgzsyw',
    sp_name_qp: 'jiganzhusheyewu',
    dw_caigou: '盒',
    xs_xiaocai: '10.00',
    is_serial: 2,
    sp_snap_id: 230127757021253,
    sp_class_id: 163991625424965,
    sp_name: '肌苷注射液（无）',
    is_pihao: 1,
    sp_self_code: '12131',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 229941145473094,
      yp_name: '肌苷注射液',
      yp_manufacturer: '天津金耀集团湖北天药药业股份有限公司',
    },
    sp_class: {
      sp_class_id: 163991625424965,
      sp_class_name: '西药',
    },
  },
  {
    sp_id: 229977515384902,
    gg_xiaoshou: '每粒装0.25g',
    dw_xiaoshou: '盒',
    cgj: '27.0000',
    xsj: '31.0000',
    sp_name_jp: 'dhljnw',
    sp_name_qp: 'dahuoluojiaonangwu',
    dw_caigou: '盒',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 230206693937221,
    sp_class_id: 163991625424965,
    sp_name: '大活络胶囊',
    is_pihao: 1,
    sp_self_code: '1300000194',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 229977515384902,
      yp_name: '大活络胶囊',
      yp_manufacturer: '江西药都樟树制药有限公司',
    },
    sp_class: {
      sp_class_id: 163991625424965,
      sp_class_name: '西药',
    },
  },
  {
    sp_id: 229980223705158,
    gg_xiaoshou: '',
    dw_xiaoshou: '支',
    cgj: '93.0000',
    xsj: '111.6000',
    sp_name_jp: 'dklsnyylas',
    sp_name_qp: 'dikualinsuonayanyeliaisi',
    dw_caigou: '支',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 229980223705157,
    sp_class_id: 163991625424965,
    sp_name: '地夸磷索纳眼液（丽爱思）',
    is_pihao: 1,
    sp_self_code: '1300000185',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 229980223705158,
      yp_name: '地夸磷索纳眼液（丽爱思）',
      yp_manufacturer: '参天制药（中国）有限公司',
    },
    sp_class: {
      sp_class_id: 163991625424965,
      sp_class_name: '西药',
    },
  },
  {
    sp_id: 230150257348678,
    gg_xiaoshou: '10ml：90mg*5支',
    dw_xiaoshou: '支',
    cgj: '0.2600',
    xsj: '0.2600',
    sp_name_jp: 'lhnzsy',
    sp_name_qp: 'lyuhuanazhusheye',
    dw_caigou: '支',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 230150257348677,
    sp_class_id: 163991625424965,
    sp_name: '氯化钠注射液',
    is_pihao: 1,
    sp_self_code: '5001070',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 230150257348678,
      yp_name: '氯化钠注射液',
      yp_manufacturer: '',
    },
    sp_class: {
      sp_class_id: 163991625424965,
      sp_class_name: '西药',
    },
  },
  {
    sp_id: 230863588585542,
    gg_xiaoshou: '1.8ML(蓝）',
    dw_xiaoshou: '支',
    cgj: '0.7000',
    xsj: '0.7000',
    sp_name_jp: 'ycxsyrtjmxycjrq',
    sp_name_qp: 'yicixingshiyongrentijingmaixueyangcaijirongqi',
    dw_caigou: '支',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 230864051343429,
    sp_class_id: 163991625429061,
    sp_name: '一次性使用人体静脉血样采集容器',
    is_pihao: 1,
    sp_self_code: '1200000298',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 230863588585542,
      yp_name: '一次性使用人体静脉血样采集容器',
      yp_manufacturer: '江苏康捷医疗',
    },
    sp_class: {
      sp_class_id: 163991625429061,
      sp_class_name: '卫材',
    },
  },
  {
    sp_id: 230865439658054,
    gg_xiaoshou: '1.28ML黑色',
    dw_xiaoshou: '支',
    cgj: '1.0000',
    xsj: '1.0000',
    sp_name_jp: 'ycxjmcxghs',
    sp_name_qp: 'yicixingjingmaicaixieguanheise',
    dw_caigou: '支',
    xs_xiaocai: '1.00',
    is_serial: 2,
    sp_snap_id: 230865439658053,
    sp_class_id: 163991625429061,
    sp_name: '一次性静脉采血管黑色',
    is_pihao: 1,
    sp_self_code: '1200000271',
    org_id: 214984910659653,
    sp_extend_yp: {
      sp_id: 230865439658054,
      yp_name: '一次性静脉采血管黑色',
      yp_manufacturer: '江苏康捷医疗',
    },
    sp_class: {
      sp_class_id: 163991625429061,
      sp_class_name: '卫材',
    },
  },
];
