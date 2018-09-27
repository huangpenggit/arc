/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.205
Source Server Version : 50543
Source Host           : 192.168.1.205:3306
Source Database       : hla

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2018-08-20 14:53:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pull_log`
-- ----------------------------
DROP TABLE IF EXISTS `pull_log`;
CREATE TABLE `pull_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `success` tinyint(4) DEFAULT NULL COMMENT '状态码成功与否',
  `name` varchar(100) DEFAULT NULL COMMENT '操作名称',
  `source_address` varchar(100) DEFAULT NULL COMMENT '操作的资源地址',
  `operator` varchar(100) DEFAULT NULL COMMENT '操作者名称',
  `remark` varchar(225) DEFAULT NULL COMMENT '操作备注',
  `success_quantity` int(11) DEFAULT '0' COMMENT '成功数量  successQuantity=updateQuantity+saveQuantity',
  `update_quantity` int(11) DEFAULT '0' COMMENT '更新数量',
  `insert_quantity` int(11) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL COMMENT '任务请求时刻',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `url` varchar(225) DEFAULT NULL COMMENT '操作者的HOST',
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of pull_log
-- ----------------------------
INSERT INTO `pull_log` VALUES ('1', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:47:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('2', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:47:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('3', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:47:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('4', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:48:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('5', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:48:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('6', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:48:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('7', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:49:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('8', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:49:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('9', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:49:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('10', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:50:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('11', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:50:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('12', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:50:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('13', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:51:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('14', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:51:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('15', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:51:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('16', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:52:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('17', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:52:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('18', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:52:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('19', '0', 'SYNCHRONIZE_SKU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:53:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('20', '0', 'SYNCHRONIZE_SPU', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:53:00', null, '0.0.0.0');
INSERT INTO `pull_log` VALUES ('21', '0', 'SYNCHRONIZE_GROUP', null, '程序', '失败的同步商品', '0', '0', '0', '2018-08-20 14:53:00', null, '0.0.0.0');
