/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : cloud

Target Server Type    : MYSQL
Target Server Version : 50721
SystemFile Encoding         : 65001

Date: 2018-07-26 10:50:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '化身头像路径',
  `level` int(11) DEFAULT NULL COMMENT '级别(权限控制中用)',
  `gender` int(2) DEFAULT NULL COMMENT '性别｛0未知/1男/2女｝',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `sign` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', '啊', '1', '1', '2018-07-01 11:21:37', '1', '1');
INSERT INTO `user` VALUES ('2', 'May', '五月', '1', '2', '2018-05-01 11:22:03', '1', '1');
