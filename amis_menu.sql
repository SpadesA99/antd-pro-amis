/*
 Navicat Premium Data Transfer

 Source Server         : t
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : rm-wz9isl7r0650x2pqm2o.mysql.rds.aliyuncs.com:3306
 Source Schema         : amis_menu

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 23/04/2023 16:00:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amis_schemas
-- ----------------------------
DROP TABLE IF EXISTS `amis_schemas`;
CREATE TABLE `amis_schemas`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of amis_schemas
-- ----------------------------
INSERT INTO `amis_schemas` VALUES (2, '/Render', '{\"type\":\"page\",\"body\":[{\"type\":\"grid\",\"columns\":[{\"columnClassName\":\"bg-green-300\",\"body\":[{\"type\":\"plain\",\"text\":\"第一栏\"}]},{\"columnClassName\":\"bg-blue-300\",\"body\":[{\"type\":\"plain\",\"text\":\"第二栏\"}]}]},{\"type\":\"grid\",\"className\":\"m-t\",\"columns\":[{\"columnClassName\":\"bg-green-300\",\"body\":[{\"type\":\"plain\",\"text\":\"第一栏\"}]},{\"columnClassName\":\"bg-blue-300\",\"body\":[{\"type\":\"plain\",\"text\":\"第二栏\"}]},{\"columnClassName\":\"bg-red-300\",\"body\":[{\"type\":\"plain\",\"text\":\"第三栏\"}]}]},{\"type\":\"audio\",\"autoPlay\":false,\"src\":\"\",\"id\":\"u:bdd4f73bc3e7\"},{\"type\":\"video\",\"autoPlay\":false,\"src\":\"https://media.w3.org/2010/05/sintel/trailer_hd.mp4\",\"poster\":\"data:image/svg+xml,%3C%3Fxml version=\'1.0\' standalone=\'no\'%3F%3E%3C!DOCTYPE svg PUBLIC \'-//W3C//DTD SVG 1.1//EN\' \'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\'%3E%3Csvg t=\'1631083237695\' class=\'icon\' viewBox=\'0 0 1024 1024\' version=\'1.1\' xmlns=\'http://www.w3.org/2000/svg\' p-id=\'2420\' xmlns:xlink=\'http://www.w3.org/1999/xlink\' width=\'1024\' height=\'1024\'%3E%3Cdefs%3E%3Cstyle type=\'text/css\'%3E%3C/style%3E%3C/defs%3E%3Cpath d=\'M959.872 128c0.032 0.032 0.096 0.064 0.128 0.128v767.776c-0.032 0.032-0.064 0.096-0.128 0.128H64.096c-0.032-0.032-0.096-0.064-0.128-0.128V128.128c0.032-0.032 0.064-0.096 0.128-0.128h895.776zM960 64H64C28.8 64 0 92.8 0 128v768c0 35.2 28.8 64 64 64h896c35.2 0 64-28.8 64-64V128c0-35.2-28.8-64-64-64z\' p-id=\'2421\' fill=\'%23bfbfbf\'%3E%3C/path%3E%3Cpath d=\'M832 288c0 53.024-42.976 96-96 96s-96-42.976-96-96 42.976-96 96-96 96 42.976 96 96zM896 832H128V704l224-384 256 320h64l224-192z\' p-id=\'2422\' fill=\'%23bfbfbf\'%3E%3C/path%3E%3C/svg%3E\",\"id\":\"u:a14373617f50\"}]}', NULL, NULL);
INSERT INTO `amis_schemas` VALUES (3, '/CRUD', '{\"type\":\"page\",\"body\":[{\"type\":\"card\",\"body\":[{\"type\":\"crud\",\"id\":\"u:5f0f73b71829\",\"syncLocation\":false,\"api\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols\"},\"headerToolbar\":[{\"label\":\"刷新\",\"type\":\"reload\",\"level\":\"primary\",\"align\":\"right\",\"icon\":\"iconfont icon-refresh\",\"tooltip\":\"\"},{\"label\":\"新增\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"primary\",\"dialog\":{\"title\":\"新增\",\"body\":{\"type\":\"form\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/add-menu-rols\"},\"body\":[{\"type\":\"input-text\",\"label\":\"角色名\",\"name\":\"role_name\"}]}}},\"bulkActions\"],\"columns\":[{\"name\":\"id\",\"label\":\"id\",\"type\":\"text\",\"placeholder\":\"-\",\"sortable\":true,\"searchable\":{\"type\":\"input-text\",\"name\":\"id\",\"label\":\"角色名\",\"placeholder\":\"请输入角色名\"}},{\"name\":\"role_name\",\"label\":\"角色名\",\"type\":\"text\"},{\"type\":\"operation\",\"label\":\"操作\",\"buttons\":[{\"label\":\"删除\",\"type\":\"button\",\"level\":\"link\",\"className\":\"text-danger\",\"actionType\":\"ajax\",\"confirmText\":\"确认要删除？\",\"api\":\"post:/api/v1/del-menu-rols\"}]}],\"bulkActions\":[{\"type\":\"button\",\"level\":\"danger\",\"label\":\"批量删除\",\"actionType\":\"ajax\",\"confirmText\":\"确定要删除？\",\"api\":\"/xxx/batch-delete\"}],\"itemActions\":[],\"features\":[\"create\",\"filter\",\"bulkDelete\"],\"filterColumnCount\":3,\"perPageAvailable\":[12],\"messages\":{},\"autoGenerateFilter\":true}]}]}', NULL, NULL);
INSERT INTO `amis_schemas` VALUES (4, '/product/list', '{\"type\":\"page\",\"body\":[{\"type\":\"code\",\"language\":\"html\",\"value\":\"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>\",\"id\":\"u:4c464d8f466a\"},{\"type\":\"form\",\"title\":\"表单\",\"body\":[{\"label\":\"文本框\",\"type\":\"input-text\",\"name\":\"text\"}],\"id\":\"u:5ea68bcddf2f\"}]}', NULL, NULL);
INSERT INTO `amis_schemas` VALUES (5, '/menu/rols', '{\"type\":\"page\",\"body\":[{\"type\":\"crud\",\"id\":\"u:5f0f73b71829\",\"syncLocation\":false,\"api\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols\"},\"headerToolbar\":[{\"label\":\"刷新\",\"type\":\"reload\",\"level\":\"primary\",\"align\":\"right\",\"icon\":\"iconfont icon-refresh\",\"tooltip\":\"\"},{\"label\":\"新增\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"primary\",\"dialog\":{\"title\":\"新增\",\"body\":{\"type\":\"form\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/add-menu-rols\"},\"body\":[{\"type\":\"input-text\",\"label\":\"角色名\",\"name\":\"role_name\"}]}}},\"bulkActions\"],\"columns\":[{\"name\":\"ID\",\"label\":\"id\",\"type\":\"text\",\"placeholder\":\"-\",\"sortable\":true,\"searchable\":{\"type\":\"input-text\",\"name\":\"id\",\"label\":\"角色名\",\"placeholder\":\"请输入角色名\"}},{\"name\":\"role_name\",\"label\":\"角色名\",\"type\":\"text\"},{\"type\":\"operation\",\"label\":\"操作\",\"buttons\":[{\"label\":\"删除\",\"type\":\"button\",\"level\":\"link\",\"className\":\"text-danger\",\"actionType\":\"ajax\",\"confirmText\":\"确认要删除？\",\"api\":\"post:/api/v1/del-menu-rols\"}]}],\"bulkActions\":[{\"type\":\"button\",\"level\":\"danger\",\"label\":\"批量删除\",\"actionType\":\"ajax\",\"confirmText\":\"确定要删除？\",\"api\":\"/xxx/batch-delete\"}],\"itemActions\":[],\"features\":[\"create\",\"filter\",\"bulkDelete\"],\"filterColumnCount\":3,\"perPageAvailable\":[12],\"messages\":{},\"autoGenerateFilter\":true}],\"messages\":{},\"style\":{}}', NULL, '2022-06-21 06:12:50');
INSERT INTO `amis_schemas` VALUES (6, '/menu/list', '{\"type\":\"page\",\"body\":[{\"type\":\"crud\",\"id\":\"u:3728872e2559\",\"syncLocation\":false,\"api\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu\"},\"columns\":[{\"name\":\"id\",\"label\":\"菜单id\",\"type\":\"text\",\"id\":\"u:75b7b67cb4d0\"},{\"type\":\"text\",\"name\":\"menu_name\",\"label\":\"菜单名\",\"id\":\"u:9efb14b31379\"},{\"type\":\"text\",\"label\":\"路由\",\"name\":\"path\",\"id\":\"u:52ab5b3ba6c3\"},{\"type\":\"text\",\"name\":\"icon\",\"label\":\"图标\",\"id\":\"u:b817a007ab74\"},{\"name\":\"roles\",\"type\":\"text\",\"label\":\"角色\",\"id\":\"u:ea68ca7b9d59\"},{\"type\":\"status\",\"name\":\"layout\",\"map\":{\"0\":\"fa fa-check-circle\",\"1\":\"fa fa-times-circle\"},\"labelMap\":{\"0\":\"不使用\",\"1\":\"使用\"},\"value\":0,\"label\":\"使用布局\",\"id\":\"u:3bf4126dd980\"},{\"type\":\"status\",\"name\":\"hide_in_menu\",\"map\":{\"0\":\"fa fa-check-circle\",\"1\":\"fa fa-times-circle\"},\"labelMap\":{\"0\":\"显示\",\"1\":\"隐藏\"},\"value\":0,\"label\":\"左菜单显示\",\"id\":\"u:9683b232b451\"},{\"type\":\"status\",\"label\":\"状态\",\"name\":\"status\",\"labelMap\":{\"0\":\"禁用\",\"1\":\"启用\"},\"value\":0,\"id\":\"u:cf151976738f\"},{\"type\":\"operation\",\"label\":\"操作\",\"buttons\":[{\"type\":\"button\",\"id\":\"u:540c6f5f2285\",\"label\":\"编辑\",\"actionType\":\"dialog\",\"level\":\"link\",\"dialog\":{\"title\":\"编辑\",\"body\":{\"type\":\"form\",\"api\":{\"url\":\"/api/v1/update-menu\",\"requestAdaptor\":\"api.body.parent_id=Number(api.body.parent_id);return api;\",\"method\":\"post\"},\"body\":[{\"name\":\"id\",\"type\":\"hidden\"},{\"label\":\"上级菜单\",\"name\":\"parent_id\",\"type\":\"select\",\"selectMode\":\"tree\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu?page=1\"}},{\"name\":\"menu_name\",\"label\":\"菜单名\",\"type\":\"input-text\"},{\"name\":\"path\",\"label\":\"路由\",\"type\":\"input-text\"},{\"name\":\"icon\",\"label\":\"图标\",\"type\":\"input-text\"},{\"name\":\"roles\",\"label\":\"角色\",\"type\":\"select\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols?page=1&perPage=10000\",\"responseData\":{\"options\":\"${items|pick:label~role_name,value~role_name}\"}},\"multiple\":true},{\"name\":\"layout\",\"label\":\"使用布局\",\"type\":\"select\",\"options\":[{\"label\":\"是\",\"value\":1},{\"label\":\"否\",\"value\":0}]},{\"name\":\"hide_in_menu\",\"label\":\"左菜单显示\",\"type\":\"select\",\"options\":[{\"label\":\"是\",\"value\":0},{\"label\":\"否\",\"value\":1}]},{\"name\":\"status\",\"label\":\"状态\",\"type\":\"select\",\"options\":[{\"label\":\"启用\",\"value\":1},{\"label\":\"禁用\",\"value\":0}]}],\"resetAfterSubmit\":true}}},{\"type\":\"button\",\"label\":\"删除\",\"actionType\":\"ajax\",\"level\":\"link\",\"className\":\"text-danger\",\"confirmText\":\"确定要删除？\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/del-menu\"},\"id\":\"u:f71672d0403e\"}],\"id\":\"u:5104ccaf4534\"}],\"bulkActions\":[{\"type\":\"button\",\"level\":\"danger\",\"label\":\"批量删除\",\"actionType\":\"ajax\",\"confirmText\":\"确定要删除？\",\"api\":\"/api/v1/bluk-del-menu\",\"id\":\"u:67db302898d7\"}],\"itemActions\":[],\"features\":[\"create\",\"filter\",\"bulkDelete\",\"delete\",\"view\",\"update\"],\"filterColumnCount\":3,\"headerToolbar\":[{\"label\":\"刷新\",\"type\":\"reload\",\"level\":\"primary\",\"align\":\"right\",\"icon\":\"iconfont icon-refresh\",\"tooltip\":\"\",\"id\":\"u:f5175c9ce5a5\"},{\"label\":\"新增\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"primary\",\"dialog\":{\"title\":\"新增\",\"body\":{\"type\":\"form\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/add-menu\",\"requestAdaptor\":\"api.body.parent_id=Number(api.body.parent_id);return api;\"},\"body\":[{\"type\":\"select\",\"name\":\"parent_id\",\"label\":\"上级菜单\",\"selectMode\":\"tree\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu\"}},{\"type\":\"input-text\",\"name\":\"menu_name\",\"label\":\"菜单名\"},{\"type\":\"input-text\",\"name\":\"path\",\"label\":\"路由\"},{\"type\":\"input-text\",\"name\":\"icon\",\"label\":\"图标\"},{\"type\":\"select\",\"name\":\"roles\",\"label\":\"角色\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols?page=1&perPage=10000\",\"responseData\":{\"options\":\"${items|pick:label~role_name,value~role_name}\"}},\"multiple\":true},{\"type\":\"select\",\"name\":\"layout\",\"label\":\"使用布局\",\"options\":[{\"label\":\"是\",\"value\":1},{\"label\":\"否\",\"value\":0}],\"value\":1},{\"type\":\"select\",\"name\":\"hide_in_menu\",\"label\":\"左菜单显示\",\"options\":[{\"label\":\"是\",\"value\":0},{\"label\":\"否\",\"value\":1}],\"value\":0}]}},\"id\":\"u:310b6f48a4fa\"},\"bulkActions\"],\"draggable\":true,\"saveOrderApi\":{\"url\":\"/api/v1/sort-menu\"},\"filter\":{\"title\":\"条件搜索\",\"body\":[{\"type\":\"input-number\",\"name\":\"id\",\"label\":\"菜单id\",\"id\":\"u:7cb3925fee09\"},{\"type\":\"input-number\",\"name\":\"parent_id\",\"label\":\"上级菜单id\",\"id\":\"u:737bfcc45fd5\"},{\"name\":\"roles\",\"label\":\"角色\",\"type\":\"select\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols?page=1&perPage=10000\",\"responseData\":{\"options\":\"${items|pick:label~role_name,value~role_name}\"}},\"id\":\"u:a6070d7e3c5c\"},{\"type\":\"select\",\"label\":\"状态\",\"name\":\"status\",\"options\":[{\"label\":\"启用\",\"value\":1},{\"label\":\"禁用\",\"value\":0}],\"id\":\"u:f38b43c7715a\"}],\"actions\":[{\"type\":\"reset\",\"label\":\"重置\",\"id\":\"u:3f306492fb9f\"},{\"type\":\"submit\",\"label\":\"提交\",\"id\":\"u:15841ee6ea4c\"}],\"id\":\"u:2f667d13f823\"},\"loadDataOnce\":true}],\"messages\":{},\"style\":{},\"data\":{},\"id\":\"u:2326c9fdac15\"}', NULL, '2022-08-27 15:28:36');
INSERT INTO `amis_schemas` VALUES (7, '/menu/icons', '{\"type\":\"page\",\"body\":[{\"type\":\"crud\",\"syncLocation\":false,\"api\":{\"method\":\"get\",\"url\":\"asdasdasd\"},\"columns\":[{\"name\":\"id\",\"label\":\"ID\",\"type\":\"text\"},{\"name\":\"cdnlink\",\"label\":\"链接\",\"type\":\"text\"},{\"type\":\"text\",\"label\":\"图标名\",\"name\":\"icon_name\"},{\"type\":\"operation\",\"label\":\"操作\",\"buttons\":[{\"label\":\"编辑\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"link\",\"dialog\":{\"title\":\"编辑\",\"body\":{\"type\":\"form\",\"api\":\"xxx/update\",\"body\":[{\"name\":\"id\",\"label\":\"ID\",\"type\":\"input-text\"},{\"name\":\"cdnlink\",\"label\":\"链接\",\"type\":\"input-text\"},{\"label\":\"图标名\",\"name\":\"icon_name\",\"type\":\"input-text\"}]}}},{\"type\":\"button\",\"label\":\"删除\",\"actionType\":\"ajax\",\"level\":\"link\",\"className\":\"text-danger\",\"confirmText\":\"确定要删除？\",\"api\":{\"method\":\"post\",\"url\":\"asdasdasd\"}}]}],\"bulkActions\":[],\"itemActions\":[],\"features\":[\"create\",\"update\",\"delete\"],\"headerToolbar\":[{\"label\":\"新增\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"primary\",\"dialog\":{\"title\":\"新增\",\"body\":{\"type\":\"form\",\"api\":{\"method\":\"post\",\"url\":\"asdasdasd\"},\"body\":[{\"type\":\"input-text\",\"name\":\"id\",\"label\":\"ID\"},{\"type\":\"input-text\",\"name\":\"cdnlink\",\"label\":\"链接\"},{\"type\":\"input-text\",\"name\":\"icon_name\",\"label\":\"图标名\"}]}}},\"bulkActions\"],\"id\":\"u:50608c6bce67\"}]}', '2022-06-21 08:18:04', '2022-06-21 08:18:04');
INSERT INTO `amis_schemas` VALUES (8, '/welcome/eeee', '{\"type\":\"page\",\"body\":[{\"type\":\"code\",\"language\":\"html\",\"value\":\"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>\",\"id\":\"u:4c464d8f466a\"},{\"type\":\"input-year\",\"name\":\"year\",\"id\":\"u:1ce50aa7b669\"},{\"type\":\"button-toolbar\",\"buttons\":[{\"type\":\"button\",\"label\":\"按钮1\",\"actionType\":\"dialog\",\"dialog\":{\"title\":\"系统提示\",\"body\":\"对你点击了\"}},{\"type\":\"button\",\"label\":\"按钮2\",\"actionType\":\"dialog\",\"dialog\":{\"title\":\"系统提示\",\"body\":\"对你点击了\"}}],\"id\":\"u:496fb00e6a43\"},{\"type\":\"checkbox\",\"option\":\"勾选框\",\"name\":\"checkbox\",\"id\":\"u:c6e4af5591ee\"},{\"type\":\"checkbox\",\"option\":\"勾选框\",\"name\":\"checkbox\",\"id\":\"u:8ec368f2377b\"},{\"type\":\"input-color\",\"label\":\"颜色\",\"name\":\"color\",\"id\":\"u:e531e65ed868\"},{\"type\":\"condition-builder\",\"label\":\"条件组件\",\"name\":\"conditions\",\"description\":\"适合让用户自己拼查询条件，然后后端根据数据生成 query where\",\"fields\":[{\"label\":\"文本\",\"type\":\"text\",\"name\":\"text\",\"operators\":[\"not_equal\",\"is_empty\",\"is_not_empty\",\"like\",\"not_like\",\"starts_with\",\"ends_with\",\"equal\"]},{\"label\":\"数字\",\"type\":\"number\",\"name\":\"number\",\"operators\":[\"equal\",\"not_equal\",\"less\",\"less_or_equal\",\"greater\",\"greater_or_equal\",\"between\",\"not_between\",\"is_empty\",\"is_not_empty\"]},{\"label\":\"布尔\",\"type\":\"boolean\",\"name\":\"boolean\",\"operators\":[\"equal\",\"not_equal\"]},{\"label\":\"选项\",\"type\":\"select\",\"name\":\"select\",\"options\":[{\"label\":\"A\",\"value\":\"a\"},{\"label\":\"B\",\"value\":\"b\"},{\"label\":\"C\",\"value\":\"c\"},{\"label\":\"D\",\"value\":\"d\"},{\"label\":\"E\",\"value\":\"e\"}],\"operators\":[\"select_equals\",\"select_not_equals\",\"select_any_in\",\"select_not_any_in\"]},{\"label\":\"日期\",\"type\":\"date\",\"name\":\"date\",\"operators\":[\"equal\",\"not_equal\",\"less\",\"less_or_equal\",\"greater\",\"greater_or_equal\",\"between\",\"not_between\",\"is_empty\",\"is_not_empty\"]},{\"label\":\"时间\",\"type\":\"time\",\"name\":\"time\",\"operators\":[\"equal\",\"not_equal\",\"less\",\"less_or_equal\",\"greater\",\"greater_or_equal\",\"between\",\"not_between\",\"is_empty\",\"is_not_empty\"]},{\"label\":\"日期时间\",\"type\":\"datetime\",\"name\":\"datetime\",\"operators\":[\"equal\",\"not_equal\",\"less\",\"less_or_equal\",\"greater\",\"greater_or_equal\",\"between\",\"not_between\",\"is_empty\",\"is_not_empty\"]}],\"id\":\"u:3e0f7e1ffc16\"},{\"type\":\"uuid\",\"name\":\"uuid\",\"id\":\"u:7f354485c554\"},{\"type\":\"matrix-checkboxes\",\"name\":\"matrix\",\"label\":\"矩阵开关\",\"rowLabel\":\"行标题说明\",\"columns\":[{\"label\":\"列1\"},{\"label\":\"列2\"},{\"type\":\"picker\",\"label\":\"列表选取\",\"name\":\"picker\",\"options\":[{\"label\":\"选项A\",\"value\":\"A\"},{\"label\":\"选项B\",\"value\":\"B\"}],\"id\":\"u:42e9fd0b75ee\"}],\"rows\":[{\"label\":\"行1\"},{\"label\":\"行2\"}],\"id\":\"u:e5560bfa4207\"},{\"type\":\"input-repeat\",\"label\":\"周期\",\"name\":\"repeat\",\"id\":\"u:ce8dc512bd20\"},{\"type\":\"markdown\",\"value\":\"## 这是标题\",\"id\":\"u:d1090a32227a\"},{\"type\":\"status\",\"value\":1,\"id\":\"u:c1c9852bd1ed\"},{\"type\":\"sparkline\",\"height\":30,\"value\":[3,5,2,4,1,8,3,7],\"id\":\"u:0310e791fe36\"},{\"type\":\"time\",\"value\":1655876471,\"id\":\"u:d9a82848be5e\"},{\"type\":\"tpl\",\"tpl\":\"请编辑内容\",\"inline\":false,\"id\":\"u:d98c5d1d8f97\"},{\"type\":\"code\",\"language\":\"html\",\"value\":\"<div>html</div>\",\"id\":\"u:74f977a8d603\"},{\"type\":\"carousel\",\"options\":[{\"image\":\"data:image/svg+xml,%3C%3Fxml version=\'1.0\' standalone=\'no\'%3F%3E%3C!DOCTYPE svg PUBLIC \'-//W3C//DTD SVG 1.1//EN\' \'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\'%3E%3Csvg t=\'1631083237695\' class=\'icon\' viewBox=\'0 0 1024 1024\' version=\'1.1\' xmlns=\'http://www.w3.org/2000/svg\' p-id=\'2420\' xmlns:xlink=\'http://www.w3.org/1999/xlink\' width=\'1024\' height=\'1024\'%3E%3Cdefs%3E%3Cstyle type=\'text/css\'%3E%3C/style%3E%3C/defs%3E%3Cpath d=\'M959.872 128c0.032 0.032 0.096 0.064 0.128 0.128v767.776c-0.032 0.032-0.064 0.096-0.128 0.128H64.096c-0.032-0.032-0.096-0.064-0.128-0.128V128.128c0.032-0.032 0.064-0.096 0.128-0.128h895.776zM960 64H64C28.8 64 0 92.8 0 128v768c0 35.2 28.8 64 64 64h896c35.2 0 64-28.8 64-64V128c0-35.2-28.8-64-64-64z\' p-id=\'2421\' fill=\'%23bfbfbf\'%3E%3C/path%3E%3Cpath d=\'M832 288c0 53.024-42.976 96-96 96s-96-42.976-96-96 42.976-96 96-96 96 42.976 96 96zM896 832H128V704l224-384 256 320h64l224-192z\' p-id=\'2422\' fill=\'%23bfbfbf\'%3E%3C/path%3E%3C/svg%3E\"},{\"html\":\"<div style=\\\"width: 100%; height: 300px; background: #e3e3e3; text-align: center; line-height: 300px;\\\">carousel data</div>\"},{\"image\":\"data:image/svg+xml,%3C%3Fxml version=\'1.0\' standalone=\'no\'%3F%3E%3C!DOCTYPE svg PUBLIC \'-//W3C//DTD SVG 1.1//EN\' \'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\'%3E%3Csvg t=\'1631083237695\' class=\'icon\' viewBox=\'0 0 1024 1024\' version=\'1.1\' xmlns=\'http://www.w3.org/2000/svg\' p-id=\'2420\' xmlns:xlink=\'http://www.w3.org/1999/xlink\' width=\'1024\' height=\'1024\'%3E%3Cdefs%3E%3Cstyle type=\'text/css\'%3E%3C/style%3E%3C/defs%3E%3Cpath d=\'M959.872 128c0.032 0.032 0.096 0.064 0.128 0.128v767.776c-0.032 0.032-0.064 0.096-0.128 0.128H64.096c-0.032-0.032-0.096-0.064-0.128-0.128V128.128c0.032-0.032 0.064-0.096 0.128-0.128h895.776zM960 64H64C28.8 64 0 92.8 0 128v768c0 35.2 28.8 64 64 64h896c35.2 0 64-28.8 64-64V128c0-35.2-28.8-64-64-64z\' p-id=\'2421\' fill=\'%23bfbfbf\'%3E%3C/path%3E%3Cpath d=\'M832 288c0 53.024-42.976 96-96 96s-96-42.976-96-96 42.976-96 96-96 96 42.976 96 96zM896 832H128V704l224-384 256 320h64l224-192z\' p-id=\'2422\' fill=\'%23bfbfbf\'%3E%3C/path%3E%3C/svg%3E\"}],\"id\":\"u:4c0e4dd9d3d3\"},{\"type\":\"property\",\"title\":\"机器配置\",\"items\":[{\"label\":\"cpu\",\"content\":\"1 core\",\"span\":1},{\"label\":\"memory\",\"content\":\"4G\",\"span\":1},{\"label\":\"disk\",\"content\":\"80G\",\"span\":1},{\"label\":\"network\",\"content\":\"4M\",\"span\":2},{\"label\":\"IDC\",\"content\":\"beijing\",\"span\":1},{\"label\":\"Note\",\"content\":\"其它说明\",\"span\":3}],\"id\":\"u:9e9ff1c448aa\",\"column\":3,\"mode\":\"table\"},{\"type\":\"avatar\",\"icon\":\"fa fa-user\",\"id\":\"u:be9f1b046c3f\",\"column\":3,\"mode\":\"circle\",\"size\":40,\"style\":{}},{\"type\":\"alert\",\"body\":[{\"type\":\"tpl\",\"tpl\":\"提示内容\",\"inline\":false}],\"level\":\"info\",\"id\":\"u:835458f0aab0\"}]}', '2022-06-22 05:43:11', '2022-06-22 05:43:11');
INSERT INTO `amis_schemas` VALUES (9, '/menu/rolsmgr', '{\"type\":\"page\",\"body\":[{\"type\":\"crud\",\"id\":\"u:b51f48fb911e\",\"syncLocation\":false,\"api\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols\"},\"columns\":[{\"name\":\"ID\",\"label\":\"id\",\"type\":\"text\",\"id\":\"u:8deeeb22ed8c\"},{\"name\":\"role_name\",\"label\":\"角色名\",\"type\":\"text\",\"id\":\"u:a1f39a74c6d9\",\"searchable\":{\"type\":\"input-text\",\"name\":\"role_name\",\"label\":\"角色名\",\"placeholder\":\"输入角色名\",\"id\":\"u:9bc88c0b62bb\"}},{\"type\":\"text\",\"label\":\"说明\",\"name\":\"note\",\"id\":\"u:d50781cf27ae\"},{\"type\":\"operation\",\"label\":\"操作\",\"buttons\":[{\"label\":\"删除\",\"type\":\"button\",\"level\":\"link\",\"className\":\"text-danger\",\"actionType\":\"ajax\",\"confirmText\":\"确认要删除？\",\"api\":\"post:/api/v1/del-menu-rols\",\"id\":\"u:837b58622dd2\"}],\"id\":\"u:8162aa9ce790\"}],\"bulkActions\":[{\"type\":\"button\",\"level\":\"danger\",\"label\":\"批量删除\",\"actionType\":\"ajax\",\"confirmText\":\"确定要删除？\",\"api\":\"/xxx/batch-delete\",\"id\":\"u:0b73b242c184\"}],\"itemActions\":[],\"features\":[\"delete\",\"bulkDelete\",\"create\",\"filter\"],\"filterColumnCount\":3,\"headerToolbar\":[{\"label\":\"新增\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"primary\",\"dialog\":{\"title\":\"新增\",\"body\":{\"type\":\"form\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/add-menu-rols\"},\"body\":[{\"type\":\"input-text\",\"name\":\"role_name\",\"label\":\"角色名\"},{\"type\":\"input-text\",\"name\":\"note\",\"label\":\"说明\"}]}},\"id\":\"u:c3a5346f10fa\"},\"bulkActions\"],\"perPageAvailable\":[10],\"messages\":{},\"filter\":null,\"primaryField\":\"ID\",\"autoGenerateFilter\":true}],\"id\":\"u:bc10684de4ed\"}', '2022-08-27 15:46:33', '2022-08-27 17:05:24');
INSERT INTO `amis_schemas` VALUES (10, '/menu/mgr', '{\"type\":\"page\",\"body\":[{\"type\":\"crud\",\"id\":\"u:b5bad26d325e\",\"syncLocation\":false,\"api\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu\"},\"columns\":[{\"name\":\"id\",\"label\":\"菜单id\",\"type\":\"text\",\"id\":\"u:ca0c06f9a451\"},{\"name\":\"menu_name\",\"label\":\"菜单名\",\"type\":\"text\",\"id\":\"u:abaac45ad94c\"},{\"type\":\"text\",\"label\":\"路由\",\"name\":\"path\",\"id\":\"u:186c2ee7dd41\"},{\"type\":\"text\",\"label\":\"图标\",\"name\":\"icon\",\"id\":\"u:f76b799d2c68\"},{\"type\":\"text\",\"label\":\"角色\",\"name\":\"roles\",\"id\":\"u:e4ad3cab9388\"},{\"type\":\"status\",\"label\":\"使用布局\",\"name\":\"layout\",\"id\":\"u:25e42c3f6dfa\",\"labelMap\":{\"0\":\"不使用\",\"1\":\"使用\"},\"map\":{\"0\":\"fas fa-check-circle\",\"1\":\"fas fa-times-circle\"}},{\"type\":\"status\",\"label\":\"左菜单显示\",\"name\":\"hide_in_menu\",\"id\":\"u:19477caa4e84\",\"labelMap\":{\"0\":\"显示\",\"1\":\"隐藏\"},\"map\":{\"0\":\"fas fa-check-circle\",\"1\":\"fas fa-times-circle\"}},{\"type\":\"status\",\"label\":\"状态\",\"name\":\"status\",\"id\":\"u:c755c636e23b\",\"labelMap\":{\"0\":\"禁用\",\"1\":\"启用\"},\"map\":{\"0\":\"fas fa-check-circle\",\"1\":\"fas fa-times-circle\"}},{\"type\":\"text\",\"label\":\"说明\",\"name\":\"note\",\"id\":\"u:99fa8a717779\"},{\"type\":\"operation\",\"label\":\"操作\",\"buttons\":[{\"type\":\"button\",\"label\":\"编辑\",\"actionType\":\"dialog\",\"level\":\"link\",\"id\":\"u:6aa0f40c4473\",\"dialog\":{\"title\":\"编辑\",\"body\":[{\"type\":\"form\",\"api\":{\"url\":\"/api/v1/update-menu\",\"requestAdaptor\":\"api.body.parent_id=Number(api.body.parent_id);return api;\",\"method\":\"post\"},\"body\":[{\"name\":\"id\",\"type\":\"hidden\",\"id\":\"u:b48d7d3cb95e\"},{\"label\":\"上级菜单\",\"name\":\"parent_id\",\"type\":\"tree-select\",\"selectMode\":\"tree\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu?page=1\"},\"id\":\"u:524c52d5e91d\"},{\"name\":\"menu_name\",\"label\":\"菜单名\",\"type\":\"input-text\",\"id\":\"u:9ebf752a23fc\"},{\"label\":\"路由\",\"name\":\"path\",\"type\":\"input-text\",\"id\":\"u:8bbdd06b3f48\"},{\"label\":\"图标\",\"name\":\"icon\",\"type\":\"input-text\",\"id\":\"u:f323bd778054\"},{\"name\":\"roles\",\"label\":\"角色\",\"type\":\"select\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols?page=1&perPage=10000\",\"responseData\":{\"options\":\"${items|pick:label~role_name,value~role_name}\"}},\"multiple\":true,\"id\":\"u:72987cf07701\"},{\"label\":\"使用布局\",\"name\":\"layout\",\"type\":\"select\",\"options\":[{\"label\":\"是\",\"value\":1},{\"label\":\"否\",\"value\":0}],\"id\":\"u:0241fe7329eb\"},{\"label\":\"左菜单显示\",\"name\":\"hide_in_menu\",\"type\":\"select\",\"options\":[{\"label\":\"是\",\"value\":0},{\"label\":\"否\",\"value\":1}],\"id\":\"u:ce9694beaf77\"},{\"label\":\"状态\",\"name\":\"status\",\"type\":\"select\",\"options\":[{\"label\":\"启用\",\"value\":1},{\"label\":\"禁用\",\"value\":0}],\"id\":\"u:d7478e9153f0\"},{\"label\":\"说明\",\"name\":\"note\",\"type\":\"input-text\",\"id\":\"u:8bbdd06b3f49\"}],\"id\":\"u:7354d95fc9ae\"}],\"type\":\"dialog\",\"id\":\"u:5668ab385f6c\",\"closeOnEsc\":true,\"closeOnOutside\":false,\"showCloseButton\":true,\"onEvent\":{},\"resetAfterSubmit\":true},\"hidden\":false,\"disabled\":false},{\"type\":\"button\",\"label\":\"删除\",\"actionType\":\"ajax\",\"level\":\"link\",\"className\":\"text-danger\",\"confirmText\":\"确定要删除？\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/del-menu\"},\"id\":\"u:fbad4485d996\"}],\"id\":\"u:42a6fd6bda5f\"}],\"bulkActions\":[{\"type\":\"button\",\"level\":\"danger\",\"label\":\"批量删除\",\"actionType\":\"ajax\",\"confirmText\":\"确定要删除？\",\"api\":\"/api/v1/bluk-del-menu\",\"id\":\"u:ff8701620a30\"}],\"itemActions\":[],\"features\":[\"delete\",\"view\",\"update\",\"bulkDelete\",\"filter\",\"create\"],\"filterColumnCount\":3,\"headerToolbar\":[{\"label\":\"新增\",\"type\":\"button\",\"actionType\":\"dialog\",\"level\":\"primary\",\"dialog\":{\"title\":\"新增\",\"body\":{\"type\":\"form\",\"api\":{\"method\":\"post\",\"url\":\"/api/v1/add-menu\",\"requestAdaptor\":\"api.body.parent_id=Number(api.body.parent_id);return api;\"},\"body\":[{\"type\":\"tree-select\",\"name\":\"parent_id\",\"label\":\"上级菜单\",\"selectMode\":\"tree\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu\"},\"value\":0,\"multiple\":false},{\"type\":\"input-text\",\"name\":\"menu_name\",\"label\":\"菜单名\"},{\"type\":\"input-text\",\"name\":\"path\",\"label\":\"路由\"},{\"type\":\"input-text\",\"name\":\"icon\",\"label\":\"图标\"},{\"type\":\"select\",\"name\":\"roles\",\"label\":\"角色\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols?page=1&perPage=10000\",\"responseData\":{\"options\":\"${items|pick:label~role_name,value~role_name}\"}},\"multiple\":true},{\"type\":\"select\",\"name\":\"layout\",\"label\":\"使用布局\",\"options\":[{\"label\":\"是\",\"value\":1},{\"label\":\"否\",\"value\":0}],\"value\":1},{\"type\":\"select\",\"name\":\"hide_in_menu\",\"label\":\"左菜单显示\",\"options\":[{\"label\":\"是\",\"value\":0},{\"label\":\"否\",\"value\":1}],\"value\":0},{\"type\":\"input-text\",\"name\":\"note\",\"label\":\"说明\"}]}},\"id\":\"u:ca9e4557f104\"},\"bulkActions\"],\"draggable\":true,\"saveOrderApi\":{\"url\":\"/api/v1/sort-menu\"},\"defaultParams\":{\"perPage\":50},\"filter\":{\"title\":\"条件搜索\",\"body\":[{\"type\":\"input-number\",\"name\":\"id\",\"label\":\"菜单id\",\"id\":\"u:7cb3925fee09\"},{\"type\":\"input-number\",\"name\":\"parent_id\",\"label\":\"上级菜单id\",\"id\":\"u:737bfcc45fd5\"},{\"name\":\"roles\",\"label\":\"角色\",\"type\":\"select\",\"source\":{\"method\":\"get\",\"url\":\"/api/v1/get-menu-rols?page=1&perPage=10000\",\"responseData\":{\"options\":\"${items|pick:label~role_name,value~role_name}\"}},\"id\":\"u:a6070d7e3c5c\"},{\"type\":\"select\",\"label\":\"状态\",\"name\":\"status\",\"options\":[{\"label\":\"启用\",\"value\":1},{\"label\":\"禁用\",\"value\":0}],\"id\":\"u:f38b43c7715a\"}],\"actions\":[{\"type\":\"reset\",\"label\":\"重置\",\"id\":\"u:3f306492fb9f\"},{\"type\":\"submit\",\"label\":\"提交\",\"id\":\"u:15841ee6ea4c\"}],\"id\":\"u:2f667d13f823\"}}],\"id\":\"u:00522c82ef64\"}', '2022-08-27 16:08:29', '2022-08-28 05:16:21');
INSERT INTO `amis_schemas` VALUES (11, '/dev/home', '{\"type\":\"page\",\"body\":[{\"type\":\"card\",\"header\":{\"title\":\"\",\"subTitle\":\"\"},\"body\":[{\"type\":\"alert\",\"body\":[{\"type\":\"tpl\",\"tpl\":\"<pre class=\\\"pre___1nImf\\\"><code><span class=\\\"ant-typography\\\"><a href=\\\"https://jq.qq.com/?_wv=1027&amp;k=9gL13vFI\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">点击加入QQ交流群：952094885</a></span></code></pre>\",\"inline\":false,\"id\":\"u:d30c00bf4be8\"}],\"level\":\"info\",\"id\":\"u:7de1ee7c73d0\",\"label\":false}],\"actions\":[],\"id\":\"u:6940f6181269\"},{\"type\":\"card\",\"header\":{\"title\":\"\",\"subTitle\":\"\"},\"body\":[{\"type\":\"container\",\"body\":[{\"type\":\"tpl\",\"tpl\":\"<p><span class=\\\"ant-typography\\\"><strong>橘子网络验证是一个非常灵活安全的网络验证<br>采用顶级RSA加密算法，HTTPS接口，多重数据验证<br>保障通讯数据安全，云端变量， 随时更新，我们还提供了多语言<a href=\\\"https://gitee.com/king66666/juzhi_demo\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">SDK DEMO</a><br>开发调用简单方便，让您安心让心， 专注于开发。</strong></span><br><br><span class=\\\"ant-typography ant-typography-secondary\\\">计费方式<br>1. 每个用户每天登录计费 0.02￥.</span></p>\",\"inline\":false,\"id\":\"u:c03f67594019\"}],\"id\":\"u:2844feed2271\",\"label\":false}],\"actions\":[],\"id\":\"u:d0986a9aef89\"},{\"type\":\"card\",\"header\":{\"title\":\"核心指标\",\"subTitle\":\"\"},\"body\":[{\"type\":\"tpl\",\"tpl\":\"内容\",\"inline\":false,\"label\":false,\"id\":\"u:49e000d831f3\"}],\"actions\":[],\"id\":\"u:946b165ad02f\"},{\"type\":\"card\",\"header\":{\"title\":\"系统公告\",\"subTitle\":\"\"},\"body\":[{\"type\":\"tpl\",\"tpl\":\"内容\",\"inline\":false,\"label\":false,\"id\":\"u:51986c290dc4\"}],\"actions\":[],\"id\":\"u:510c462df656\"},{\"type\":\"card\",\"header\":{\"title\":\"15天内登录数据\",\"subTitle\":\"\"},\"body\":[{\"type\":\"tpl\",\"tpl\":\"内容\",\"inline\":false,\"label\":false,\"id\":\"u:fcbd5e18aa04\"},{\"type\":\"sparkline\",\"height\":30,\"value\":[3,5,2,4,1,8,3,7],\"id\":\"u:0db13ba6a2e8\",\"label\":\"走势图\"}],\"actions\":[],\"id\":\"u:be6a7fe8c55e\"}],\"id\":\"u:4a42e5d62122\"}', '2022-08-27 18:42:05', '2022-08-27 18:56:51');
INSERT INTO `amis_schemas` VALUES (12, '/rander', '{\"type\":\"page\",\"body\":[{\"type\":\"code\",\"language\":\"html\",\"value\":\"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>\",\"id\":\"u:4c464d8f466a\"},{\"type\":\"textarea\",\"label\":\"多行文本\",\"name\":\"textarea\",\"id\":\"u:9e05d77388ea\"},{\"type\":\"select\",\"label\":\"选项\",\"name\":\"select\",\"options\":[{\"label\":\"选项A\",\"value\":\"A\"},{\"label\":\"选项B\",\"value\":\"B\"}],\"id\":\"u:f3919ebadb23\"}],\"id\":\"u:85ca5cadfe0f\"}', '2022-10-23 14:10:21', '2022-10-23 14:10:21');

-- ----------------------------
-- Table structure for menu_roles
-- ----------------------------
DROP TABLE IF EXISTS `menu_roles`;
CREATE TABLE `menu_roles`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_roles
-- ----------------------------
INSERT INTO `menu_roles` VALUES (3, 'superadmin', NULL, NULL, '');
INSERT INTO `menu_roles` VALUES (4, 'user', NULL, NULL, '');
INSERT INTO `menu_roles` VALUES (5, 'admin', NULL, NULL, '');
INSERT INTO `menu_roles` VALUES (9, 'editor', NULL, NULL, '');
INSERT INTO `menu_roles` VALUES (11, 'CardAgent', '2022-08-25 16:02:46', '2022-08-25 16:02:46', '');
INSERT INTO `menu_roles` VALUES (12, 'Developer', '2022-08-25 16:03:02', '2022-08-25 16:03:02', '');
INSERT INTO `menu_roles` VALUES (14, 'fsdfas', '2022-08-28 17:32:26', '2022-08-28 17:32:26', 'asdasd');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `roles` json NOT NULL,
  `layout` tinyint(1) NOT NULL,
  `hide_in_menu` tinyint(1) NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `sort` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (19, '菜单角色列表', '/menu/rols', 'icon-java', '[\"superadmin\"]', 1, 0, 0, 1655821300, '2022-06-20 13:09:01', '2022-08-27 17:50:03', 1, '1');
INSERT INTO `menus` VALUES (20, '菜单列表', '/menu/list', 'icon-java', '[\"superadmin\", \"editor\"]', 1, 0, 0, 1655798078, '2022-06-20 13:09:23', '2022-08-27 17:50:02', 1, '1');
INSERT INTO `menus` VALUES (22, '1', '1', '1', '[\"superadmin\", \"user\"]', 1, 0, 1, 1655792156, '2022-06-21 06:15:57', '2022-06-21 06:15:57', 1, '');
INSERT INTO `menus` VALUES (23, '5555', '25555', '2555', '[\"superadmin\", \"user\"]', 0, 0, 2, 1655792175, '2022-06-21 06:16:15', '2022-06-21 06:42:39', 0, '');
INSERT INTO `menus` VALUES (25, '444', '444', '444', '[\"superadmin\"]', 1, 0, 444, 1655793571, '2022-06-21 06:39:32', '2022-06-21 06:46:20', 0, '');
INSERT INTO `menus` VALUES (26, '测啊啊', '/welcomea/adasd', 'icon-java', '[\"superadmin\"]', 1, 0, 14, 1655795713, '2022-06-21 07:15:13', '2022-08-27 18:01:00', 1, '');
INSERT INTO `menus` VALUES (28, '图标列表', '/menu/icons', 'icon-java', '[\"superadmin\", \"admin\"]', 1, 0, 28, 1655880554, '2022-06-21 07:54:39', '2022-08-25 15:55:27', 1, '');
INSERT INTO `menus` VALUES (29, 'ccccc', '/welcomea/ccccc', 'icon-java', '[\"superadmin\"]', 1, 0, 14, 1655730563, '2022-06-21 10:12:10', '2022-08-27 18:00:56', 1, '');
INSERT INTO `menus` VALUES (31, 'dwdwd', '/welcome/eeee/edwqdwe', 'icon-java', '[\"superadmin\", \"user\", \"admin\"]', 1, 0, 30, 1655720489, '2022-06-22 05:55:41', '2022-08-27 17:50:02', 1, '');
INSERT INTO `menus` VALUES (34, '菜单管理v2', '/menu/mgr', 'icon-java', '[\"superadmin\"]', 1, 0, 0, 1661614818, '2022-08-27 15:40:18', '2022-08-27 17:50:03', 1, '1');
INSERT INTO `menus` VALUES (35, '菜单角色管理v2', '/menu/rolsmgr', 'icon-java', '[\"superadmin\"]', 1, 0, 0, 1661614949, '2022-08-27 15:42:30', '2022-08-27 17:50:03', 1, '1');
INSERT INTO `menus` VALUES (41, '首页', '/dev/home', '', '[\"Developer\", \"superadmin\"]', 1, 0, 0, 1661621656, '2022-08-27 17:34:16', '2022-08-28 05:15:13', 1, '2');
INSERT INTO `menus` VALUES (42, '软件管理', '/jzdev', '', '[\"Developer\", \"superadmin\"]', 1, 0, 0, 1661621833, '2022-08-27 17:37:14', '2022-08-27 17:50:04', 1, '2');
INSERT INTO `menus` VALUES (43, '软件列表', '/jzdev/appls', '', '[\"Developer\", \"superadmin\"]', 1, 0, 42, 1661621871, '2022-08-27 17:37:51', '2022-08-27 17:50:04', 1, '2');
INSERT INTO `menus` VALUES (44, '变量列表', '/jzdev/var', '', '[\"Developer\", \"superadmin\"]', 1, 0, 42, 1661623413, '2022-08-27 18:03:34', '2022-08-27 18:31:33', 1, '2');
INSERT INTO `menus` VALUES (45, '版本列表', '/jzdev/appver', '', '[\"superadmin\", \"Developer\"]', 1, 0, 42, 1661624564, '2022-08-27 18:22:44', '2022-08-27 18:22:44', 1, '');
INSERT INTO `menus` VALUES (46, '留言列表', '/jzdev/msg', '', '[\"superadmin\", \"Developer\"]', 1, 0, 42, 1661624596, '2022-08-27 18:23:17', '2022-08-27 18:23:17', 1, '');
INSERT INTO `menus` VALUES (47, '软件配置', '/jzdev/appinfo', '', '[\"superadmin\", \"Developer\"]', 1, 0, 42, 1661624619, '2022-08-27 18:23:40', '2022-08-27 18:23:40', 1, '');
INSERT INTO `menus` VALUES (48, '代理管理', '/agent', '', '[\"superadmin\", \"Developer\"]', 1, 0, 0, 1661624660, '2022-08-27 18:24:20', '2022-08-27 18:24:20', 1, '');
INSERT INTO `menus` VALUES (49, '代理商列表', '/agent/ls', '', '[\"superadmin\", \"Developer\"]', 1, 0, 48, 1661624677, '2022-08-27 18:24:37', '2022-08-27 18:24:37', 1, '');
INSERT INTO `menus` VALUES (50, '代理商购卡记录', '/agent/agentbuylog', '', '[\"superadmin\", \"Developer\"]', 1, 0, 48, 1661624694, '2022-08-27 18:24:55', '2022-08-27 18:24:55', 1, '');
INSERT INTO `menus` VALUES (51, '卡密管理', '/c', '', '[\"superadmin\", \"Developer\"]', 1, 0, 0, 1661624725, '2022-08-27 18:25:26', '2022-08-27 18:25:26', 1, '');
INSERT INTO `menus` VALUES (52, '卡密配置', '/c/cardinfo', '', '[\"superadmin\", \"Developer\"]', 1, 0, 51, 1661624750, '2022-08-27 18:25:50', '2022-08-27 18:25:50', 1, '');
INSERT INTO `menus` VALUES (53, '卡密列表', '/c/cardlist', '', '[\"superadmin\", \"Developer\"]', 1, 0, 51, 1661624761, '2022-08-27 18:26:01', '2022-08-27 18:31:15', 1, '');
INSERT INTO `menus` VALUES (54, '用户管理', '/u', '', '[\"superadmin\", \"Developer\"]', 1, 0, 0, 1661624779, '2022-08-27 18:26:20', '2022-08-27 18:26:20', 1, '');
INSERT INTO `menus` VALUES (55, '用户列表', '/u/user', '', '[\"superadmin\", \"Developer\"]', 1, 0, 54, 1661624794, '2022-08-27 18:26:35', '2022-08-27 18:26:35', 1, '');
INSERT INTO `menus` VALUES (56, '单码列表', '/u/cduser', '', '[\"superadmin\", \"Developer\"]', 1, 0, 54, 1661624810, '2022-08-27 18:26:51', '2022-08-27 18:26:51', 1, '');
INSERT INTO `menus` VALUES (57, '在线列表', '/u/online', '', '[\"superadmin\", \"Developer\"]', 1, 0, 54, 1661624822, '2022-08-27 18:27:03', '2022-08-27 18:31:24', 1, '');
INSERT INTO `menus` VALUES (58, '登录日志', '/u/llog', '', '[\"superadmin\", \"Developer\"]', 1, 0, 54, 1661624846, '2022-08-27 18:27:27', '2022-08-27 18:27:27', 1, '');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
