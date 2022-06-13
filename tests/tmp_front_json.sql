/*
 Navicat Premium Data Transfer

 Source Server         : his测试库
 Source Server Type    : MySQL
 Source Server Version : 100703
 Source Host           : 10.1.7.98:3306
 Source Schema         : aios_v1

 Target Server Type    : MySQL
 Target Server Version : 100703
 File Encoding         : 65001

 Date: 11/06/2022 12:03:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tmp_front_json
-- ----------------------------
DROP TABLE IF EXISTS `tmp_front_json`;
CREATE TABLE `tmp_front_json`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tmp_front_json
-- ----------------------------
INSERT INTO `tmp_front_json` VALUES (1, 'test', '{\"type\":\"page\",\"body\":[{\"type\":\"code\",\"language\":\"html\",\"value\":\"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>\",\"id\":\"u:4c464d8f466a\"},{\"type\":\"iframe\",\"src\":\"//www.baidu.com\",\"id\":\"u:823216e6f55d\"}]}');
INSERT INTO `tmp_front_json` VALUES (2, '/Render', '{\"type\":\"page\",\"body\":[{\"type\":\"code\",\"language\":\"html\",\"value\":\"<div>\\r\\n    <Show>\\r\\n        Hello FLY\\r\\n    </Show>\\r\\n</div>\",\"id\":\"u:4c464d8f466a\"},{\"type\":\"form\",\"title\":\"表单\",\"body\":[{\"label\":\"文本框\",\"type\":\"checkbox\",\"name\":\"text\"},{\"type\":\"checkboxes\",\"label\":\"aaaa\",\"name\":\"aaa\"},{\"type\":\"group\"},{\"type\":\"input-date\",\"label\":\"t\",\"name\":\"t\"}],\"api\":\"\",\"mode\":\"inline\",\"id\":\"u:8a23ff2968ae\"}]}');

SET FOREIGN_KEY_CHECKS = 1;
