/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50720
Source Host           : 127.0.01:3306
Source Database       : cloud

Target Server Type    : MYSQL
Target Server Version : 50720
SystemFile Encoding         : 65001

Date: 2018-09-26 23:58:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `systemFile`
-- ----------------------------
DROP TABLE IF EXISTS `systemFile`;
CREATE TABLE `systemFile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `path` varchar(255) DEFAULT NULL COMMENT '图片本地地址',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `suffix` varchar(10) DEFAULT NULL COMMENT '后缀',
  `create_date` datetime DEFAULT NULL COMMENT '记录时间',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemFile
-- ----------------------------
INSERT INTO `systemFile` VALUES ('1', 'wwww.www', '/sss/1.jpg', 'ces ', '.jpg', null, '2018-09-10 19:27:18');
