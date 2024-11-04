/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.78.201
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : 192.168.78.201:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 04/11/2024 21:09:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for WORKER_NODE
-- ----------------------------
DROP TABLE IF EXISTS `WORKER_NODE`;
CREATE TABLE `WORKER_NODE`  (
  `ID` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'auto increment id',
  `HOST_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'host name',
  `PORT` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'port',
  `TYPE` int(0) NOT NULL COMMENT 'node type: CONTAINER(1), ACTUAL(2), FAKE(3)',
  `LAUNCH_DATE` date NOT NULL COMMENT 'launch date',
  `MODIFIED` timestamp(0) NOT NULL COMMENT 'modified time',
  `CREATED` timestamp(0) NOT NULL COMMENT 'created time',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'DB WorkerID Assigner for UID Generator' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of WORKER_NODE
-- ----------------------------
INSERT INTO `WORKER_NODE` VALUES (1, '192.168.1.3', '1729463265970-12265', 2, '2024-10-20', '2024-10-21 06:27:45', '2024-10-21 06:27:45');
INSERT INTO `WORKER_NODE` VALUES (2, '192.168.1.3', '1729463770453-43472', 2, '2024-10-20', '2024-10-21 06:36:10', '2024-10-21 06:36:10');
INSERT INTO `WORKER_NODE` VALUES (3, '192.168.1.3', '1729464785824-70548', 2, '2024-10-20', '2024-10-21 06:53:05', '2024-10-21 06:53:05');
INSERT INTO `WORKER_NODE` VALUES (4, '192.168.1.3', '1729472554668-8565', 2, '2024-10-21', '2024-10-21 09:02:34', '2024-10-21 09:02:34');
INSERT INTO `WORKER_NODE` VALUES (5, '192.168.1.3', '1729473023255-59783', 2, '2024-10-21', '2024-10-21 09:10:23', '2024-10-21 09:10:23');

-- ----------------------------
-- Table structure for sharding_order_0
-- ----------------------------
DROP TABLE IF EXISTS `sharding_order_0`;
CREATE TABLE `sharding_order_0`  (
  `id` bigint(0) NOT NULL DEFAULT 0,
  `order_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharding_order_0
-- ----------------------------
INSERT INTO `sharding_order_0` VALUES (1, 'efefer', 'jfowejfow', 4.23);
INSERT INTO `sharding_order_0` VALUES (2, '风骨而通过', 'jfowejfow', 1.23);
INSERT INTO `sharding_order_0` VALUES (3, '分册哥谭', 'jfowejfow', 3.25);
INSERT INTO `sharding_order_0` VALUES (1842697428303097856, '风哥哥', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_0` VALUES (1842731268165873664, '风哥哥', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_0` VALUES (1842745962880577536, '32让', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_0` VALUES (1842983822900604928, '额范文芳', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_0` VALUES (1842983897076871168, '范围分为', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_0` VALUES (1842983966110920704, 'vv额v二', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_0` VALUES (1842984040077471744, 'vv额v二', 'jfowejfow', 11.25);
INSERT INTO `sharding_order_0` VALUES (1842984072361029632, 'vv额v二', '发热反而', 11.25);
INSERT INTO `sharding_order_0` VALUES (1842989401027129344, '范围分为', '发热反而', 33.25);

-- ----------------------------
-- Table structure for sharding_order_1
-- ----------------------------
DROP TABLE IF EXISTS `sharding_order_1`;
CREATE TABLE `sharding_order_1`  (
  `id` bigint(0) NOT NULL DEFAULT 0,
  `order_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharding_order_1
-- ----------------------------
INSERT INTO `sharding_order_1` VALUES (1842731268165873664, '风哥哥', 'jfowejfow', 10.25);
INSERT INTO `sharding_order_1` VALUES (1842989712038965248, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989754078474240, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989773066088448, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989778434797568, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989782704599040, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989787230253056, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989791554580480, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989796566773760, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989800656220160, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989804665974784, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989809556533248, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989824786051072, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989831379496960, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989835301171200, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989840560828416, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989844671246336, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989849985429504, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989854032932864, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989858709581824, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989863331704832, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989869165981696, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989873398034432, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989879580438528, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989883686662144, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989888954707968, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989893690077184, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989897855021056, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989902405840896, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989908361752576, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989912933543936, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989916842635264, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989921263431680, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989925470318592, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989929752702976, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989933649211392, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989937466028032, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989941240901632, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989944357269504, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842989947947593728, '范围分为', '我范围分为', 33.25);
INSERT INTO `sharding_order_1` VALUES (1842996088639336448, '我饿范围分为', '抚慰费', 33.25);

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` bigint(0) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num` int(0) NOT NULL,
  `version` int(0) NOT NULL DEFAULT 0,
  `des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (1, '商品A', 98, 0, 'gfergerger');
INSERT INTO `stock` VALUES (2, '商品B', 150, 0, '主从同步测试123');
INSERT INTO `stock` VALUES (3, '商品C', 200, 0, 'fwrefefere');
INSERT INTO `stock` VALUES (4, '商品D', 20, 13, 'fewfwfwe');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `enabled` bit(1) NULL DEFAULT NULL,
  `head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_del` bit(1) NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for tiny_id_info
-- ----------------------------
DROP TABLE IF EXISTS `tiny_id_info`;
CREATE TABLE `tiny_id_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `biz_type` varchar(63) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '业务类型，唯一',
  `begin_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '开始id，仅记录初始值，无其他含义。初始化时begin_id和max_id应相同',
  `max_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '当前最大id',
  `step` int(11) NULL DEFAULT 0 COMMENT '步长',
  `delta` int(11) NOT NULL DEFAULT 1 COMMENT '每次id增量',
  `remainder` int(11) NOT NULL DEFAULT 0 COMMENT '余数',
  `create_time` timestamp(0) NOT NULL DEFAULT '2010-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT '2010-01-01 00:00:00' COMMENT '更新时间',
  `version` bigint(20) NOT NULL DEFAULT 0 COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_biz_type`(`biz_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'id信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tiny_id_info
-- ----------------------------
INSERT INTO `tiny_id_info` VALUES (1, 'test', 1, 200001, 100000, 1, 0, '2018-07-22 14:52:58', '2024-05-21 15:31:52', 3);
INSERT INTO `tiny_id_info` VALUES (2, 'test_odd', 1, 1, 100000, 2, 1, '2018-07-22 14:52:58', '2018-07-23 15:39:24', 3);

-- ----------------------------
-- Table structure for tiny_id_token
-- ----------------------------
DROP TABLE IF EXISTS `tiny_id_token`;
CREATE TABLE `tiny_id_token`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `biz_type` varchar(63) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '此token可访问的业务类型标识',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` timestamp(0) NOT NULL DEFAULT '2010-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT '2010-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tiny_id_token
-- ----------------------------
INSERT INTO `tiny_id_token` VALUES (1, '0f673adf80504e2eaa552f5d791b644c', 'test', '1', '2017-12-15 08:36:46', '2017-12-15 08:36:48');
INSERT INTO `tiny_id_token` VALUES (2, '0f673adf80504e2eaa552f5d791b644c', 'test_odd', '1', '2017-12-15 08:36:46', '2017-12-15 08:36:48');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(0) NOT NULL,
  `xid` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `context` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(0) NOT NULL,
  `log_created` datetime(0) NOT NULL,
  `log_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_undo_log`(`xid`, `branch_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of undo_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` bigint(20) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `enabled` bit(1) NULL DEFAULT NULL,
  `head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_del` bit(1) NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nick_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `user_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
