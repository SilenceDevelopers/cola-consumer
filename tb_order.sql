/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.78.201
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : 192.168.78.201:3306
 Source Schema         : tb_order

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 04/11/2024 21:09:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sharding_order_0
-- ----------------------------
DROP TABLE IF EXISTS `sharding_order_0`;
CREATE TABLE `sharding_order_0`  (
  `id` bigint(0) NOT NULL DEFAULT 0,
  `order_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `store_id` bigint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharding_order_0
-- ----------------------------
INSERT INTO `sharding_order_0` VALUES (1, 'efefer', 'jfowejfow', 1.23, 0);
INSERT INTO `sharding_order_0` VALUES (2, '风骨而通过', 'jfowejfow', 1.23, 0);
INSERT INTO `sharding_order_0` VALUES (3, '分册哥谭', 'jfowejfow', 3.25, 0);

-- ----------------------------
-- Table structure for sharding_order_1
-- ----------------------------
DROP TABLE IF EXISTS `sharding_order_1`;
CREATE TABLE `sharding_order_1`  (
  `id` bigint(0) NOT NULL DEFAULT 0,
  `order_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `order_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `store_id` bigint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sharding_order_1
-- ----------------------------
INSERT INTO `sharding_order_1` VALUES (1853169912794066944, '测试', '123', 2.90, 1);
INSERT INTO `sharding_order_1` VALUES (1853169912794066946, '测试', '123', 2.90, 1);

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

SET FOREIGN_KEY_CHECKS = 1;
