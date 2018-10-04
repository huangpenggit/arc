/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : cloud

Target Server Type    : MYSQL
Target Server Version : 50720
SystemFile Encoding         : 65001

Date: 2018-04-19 17:32:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `detailed` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `openid` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('31', '天津市天津市区fdfdfd', '433434', '34363533', '天津市', '天津市区', 'fdfdfd', null);
INSERT INTO `address` VALUES ('34', '重庆市重庆市辖区ereee', '3434343', '34434', '重庆市', '重庆市辖区', 'ereee', null);
INSERT INTO `address` VALUES ('35', '天津市天津市区ggcc', '5572888', '5873588', '天津市', '天津市区', 'ggcc', null);
INSERT INTO `address` VALUES ('36', '浙江省温州市4444', '444', '44444', '浙江省', '温州市', '4444', null);
INSERT INTO `address` VALUES ('37', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `recode_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', null, null, null, '谁最漂亮', '你猜', 'text', null);
INSERT INTO `answer` VALUES ('2', null, null, null, '谁最帅', '你', 'text', null);
INSERT INTO `answer` VALUES ('3', null, null, null, '测试', '测试已收到现已返回', 'text', '2017-11-18 20:20:29');
INSERT INTO `answer` VALUES ('7', null, null, null, '电话', '33333', 'text', null);
INSERT INTO `answer` VALUES ('8', null, null, null, 'tel', '123', 'text', null);
INSERT INTO `answer` VALUES ('9', null, null, null, '地址', '我在大广州', 'text', null);

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billNumber` bigint(255) DEFAULT NULL,
  `buildTime` datetime DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `totalCost` decimal(10,2) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('6', '1511256861770', '2017-11-21 17:34:15', 'o-Pqtw5U7vNcoXZ1KH0mcH3y2ywM', '44.00', null, '1', '15842585', 'ggfddd');
INSERT INTO `bill` VALUES ('7', '1511257567736', '2017-11-21 17:46:03', 'o-Pqtwz6ewPX0ylobless0gCWibU', '42.00', null, '3', '18955556', '陈陈');

-- ----------------------------
-- Table structure for billitem
-- ----------------------------
DROP TABLE IF EXISTS `billitem`;
CREATE TABLE `billitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) DEFAULT NULL,
  `foodNumber` decimal(10,0) DEFAULT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of billitem
-- ----------------------------
INSERT INTO `billitem` VALUES ('20', '辣椒炒肉', '1', '6', '21');
INSERT INTO `billitem` VALUES ('21', '油炸薯片', '1', '6', '23');
INSERT INTO `billitem` VALUES ('22', '油炸薯片', '1', '7', '23');
INSERT INTO `billitem` VALUES ('23', '白切鸡', '1', '7', '19');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'mkyong', '111@yahoo.com', '2017-02-11');
INSERT INTO `customer` VALUES ('2', 'yflow', '222@yahoo.com', '2017-02-12');
INSERT INTO `customer` VALUES ('3', 'zilap', '333@yahoo.com', '2017-02-13');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', '辣椒炒肉', '21', null, null);
INSERT INTO `food` VALUES ('2', '白切鸡', '19', null, null);
INSERT INTO `food` VALUES ('3', '小鸡顿蘑菇', '18', null, null);
INSERT INTO `food` VALUES ('4', '油炸薯片', '23', null, null);
INSERT INTO `food` VALUES ('5', '小龙虾', '21', null, null);
INSERT INTO `food` VALUES ('6', '蔬菜沙拉', '21', null, null);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `operator_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for messagecenter
-- ----------------------------
DROP TABLE IF EXISTS `messagecenter`;
CREATE TABLE `messagecenter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messagecenter
-- ----------------------------
INSERT INTO `messagecenter` VALUES ('1', '服饰、饰品、日杂等百货购物信息、打折情报,', '2017-11-20 19:02:02', null);
INSERT INTO `messagecenter` VALUES ('2', '产品种类多，大多产品均来自厂家直销价，活动多多，还不如赶紧买买买!', '2017-10-29 19:03:00', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(85) NOT NULL COMMENT '角色名称',
  `ROLE_TYPE` varchar(45) NOT NULL COMMENT '角色类型',
  `STATUS` int(11) NOT NULL DEFAULT '1',
  `CREATION_DATE` datetime NOT NULL COMMENT '创建时间',
  `CREATED_BY` int(11) NOT NULL COMMENT '创建人',
  `LAST_UPDATE_DATE` datetime NOT NULL COMMENT '最后更新时间',
  `LAST_UPDATED_BY` int(11) NOT NULL COMMENT '最后更新人',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', 'ADMIN', '1', '2016-10-11 00:00:00', '1', '2016-10-11 00:00:00', '1');
INSERT INTO `role` VALUES ('2', '普通用户', 'USER', '1', '2016-10-11 00:00:00', '1', '2016-10-11 00:00:00', '1');

-- ----------------------------
-- Table structure for tree
-- ----------------------------
DROP TABLE IF EXISTS `tree`;
CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `open` bit(1) DEFAULT NULL,
  `checked` bit(1) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `icon_open` varchar(100) DEFAULT NULL,
  `icon_close` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `systemFile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tree
-- ----------------------------
INSERT INTO `tree` VALUES ('1', null, '湖北省', '', '\0', null, null, null, null, null);
INSERT INTO `tree` VALUES ('2', null, '湖南', '\0', '\0', null, null, null, null, null);
INSERT INTO `tree` VALUES ('3', '1', '武汉市', '', null, null, null, null, null, null);
INSERT INTO `tree` VALUES ('4', '1', '十堰市', '\0', null, null, null, null, null, null);
INSERT INTO `tree` VALUES ('5', '2', '长沙市', '\0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `subscribe` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL,
  `unsubscribe_time` datetime DEFAULT NULL,
  `becomeVip_time` datetime DEFAULT NULL,
  `totalPoint` bigint(11) DEFAULT NULL,
  `cardNumber` bigint(11) DEFAULT NULL,
  `vipLevel` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User
-- ----------------------------
INSERT INTO `user` VALUES ('1', '5757', '5757', '劳德正', 'o-Pqtw5U7vNcoXZ1KH0mcH3y2ywM', 'q7X3i95gHNR8nppW5TxquoE-pSk1eJo2sZSctyNdrpMsi3etwb4EKKq9h52-T4d04xkXmFbD1xymQIwyglHpHu80EVmtCnIwDcExtHr5V-D76laSQPMT_yqM2Vtobf5qEFBjAAAIJF', '0', null, '1', 'http://wx.qlogo.cn/mmopen/VGmccWQ3w93BasrcMQbMq7X5V5bweibGjIOjLlpJQHKHuytPrAyegiaxaRGGP7Jw4JTCibNrorkwrDWGOV3DHS1zwfluCNcQDvE/0', '2017-11-21 17:28:21', '2017-11-21 16:26:06', '2017-11-21 17:28:21', '44', '1511256501185', '0');
INSERT INTO `user` VALUES ('2', 'admin', '1111', '尹大昌', 'o-Pqtw9CUaFkOTGeCZnB7DE7TC7c', 'q7X3i95gHNR8nppW5TxquoE-pSk1eJo2sZSctyNdrpMsi3etwb4EKKq9h52-T4d04xkXmFbD1xymQIwyglHpHu80EVmtCnIwDcExtHr5V-D76laSQPMT_yqM2Vtobf5qEFBjAAAIJF', '1', null, null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKibEjvrbvquZw2wF4fxb5wAibKuwIvbAThSKF4Tg5B3ALWKDGfdjBwLxN3fOkelr9icKCd2w6NPU4Lg/0', '2017-11-21 17:29:46', '2017-11-21 17:30:27', '2017-11-21 17:29:46', '0', '1511256586272', '0');
INSERT INTO `user` VALUES ('3', 'ceshi', '1111', 'H', 'o-Pqtwz6ewPX0ylobless0gCWibU', 'q7X3i95gHNR8nppW5TxquoE-pSk1eJo2sZSctyNdrpMsi3etwb4EKKq9h52-T4d04xkXmFbD1xymQIwyglHpHu80EVmtCnIwDcExtHr5V-D76laSQPMT_yqM2Vtobf5qEFBjAAAIJF', '0', null, '2', 'http://wx.qlogo.cn/mmopen/OVNrpGUtZlmo8iae0nYl5Eic96QsCibZGAu7Dh1D9Bp1qlVraibQZib8ibuFuyxvFkdlT7siaMW3FDGels3UNFESWviakvNcdpJiaVib6E/0', '2017-11-21 17:43:26', null, '2017-11-21 17:43:26', '42', '1511257406203', '0');
INSERT INTO `user` VALUES ('4', 'a', '1111', 'Boyhood', 'o-Pqtw9c9_PL0W7JOsYYnSzrnjHE', 'q7X3i95gHNR8nppW5TxquoE-pSk1eJo2sZSctyNdrpMsi3etwb4EKKq9h52-T4d04xkXmFbD1xymQIwyglHpHu80EVmtCnIwDcExtHr5V-D76laSQPMT_yqM2Vtobf5qEFBjAAAIJF', '0', null, '1', 'http://wx.qlogo.cn/mmopen/rAypvuiaIsEkwKNiaPlq9Mf7BaIwsFCiapq0zNsPpW5KJ6cP8yfCruUPOTJj8ejCRVAazESeynSFr2lmUMlTNzR67SkbIfYF0wia/0', '2017-11-21 17:49:18', null, '2017-11-21 17:49:18', '0', '1511257758629', '0');
INSERT INTO `user` VALUES ('5', 'b', '1111', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `USER_ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL COMMENT '用户ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`USER_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
INSERT INTO `user_role` VALUES ('2', '1', '2');
INSERT INTO `user_role` VALUES ('3', '2', '2');
