/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.205
Source Server Version : 50543
Source Host           : 192.168.1.205:3306
Source Database       : ry_baseactivity

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2018-07-23 18:32:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity_base_info`
-- ----------------------------
DROP TABLE IF EXISTS `activity_base_info`;
CREATE TABLE `activity_base_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动自增id',
  `template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  `template_type` tinyint(4) DEFAULT NULL COMMENT '模板类型（1.标准，2.定制）',
  `parent_id` int(10) DEFAULT NULL COMMENT '活动父id',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '活动名称',
  `image_url` varchar(255) NOT NULL COMMENT '模板图片',
  `merchant_id` varchar(64) NOT NULL DEFAULT '' COMMENT '商城id',
  `merchant_name` varchar(64) NOT NULL DEFAULT '' COMMENT '商城名称',
  `use_terminal_type` tinyint(4) NOT NULL COMMENT '平台（1.H5,2.互动屏，3.多段互动）',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `version` int(11) NOT NULL COMMENT '版本',
  `resource_url` varchar(32) DEFAULT NULL COMMENT '资源包地址',
  `skin_id` int(11) NOT NULL COMMENT '资源包id',
  `start_at` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_at` timestamp NULL DEFAULT NULL COMMENT '活动结束时间',
  `status` tinyint(4) NOT NULL COMMENT '活动投放状态（1.已投放，2.冻结，3.删除）',
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(255) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(255) DEFAULT '' COMMENT '最后更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='活动基本信息';

-- ----------------------------
-- Records of activity_base_info
-- ----------------------------
INSERT INTO `activity_base_info` VALUES ('20', '33', '1', null, '联调', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '15', 'http://www.baidu.com', '1', '2018-06-11 00:00:00', '2018-07-25 00:00:00', '1', '2018-07-04 15:16:50', '', '2018-06-11 10:28:19', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('24', '33', null, '20', '23234', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '9', 'http://www.baidu.com', '2', null, null, '1', '2018-06-29 16:57:53', '', '2018-05-14 18:05:40', '');
INSERT INTO `activity_base_info` VALUES ('25', '39', '1', '20', 'name', 'imageUrl', 'merchantId', 'merchantName', '1', 'remark', '8', 'http://111', '0', null, null, '1', '2018-06-08 18:29:49', '', '2018-05-15 15:34:40', '');
INSERT INTO `activity_base_info` VALUES ('26', '39', null, '20', 'name', 'imageUrl', '5af55afc6b08430d496148ca', '商场-1526029068133', '1', 'remark', '6', 'http://www.baildu.com', '0', null, null, '1', '2018-06-08 18:29:49', '', '2018-05-15 11:31:04', '');
INSERT INTO `activity_base_info` VALUES ('27', '41', null, '20', '2323', '', '5af55afc6b08430d496148ca', '商场-1526029068133', '1', '', '3', 'http://www.baidu.com', '0', null, null, '1', '2018-06-08 18:29:50', '', '2018-05-15 11:27:39', '');
INSERT INTO `activity_base_info` VALUES ('28', '41', '1', '20', '2323223', '', '5af55afc6b08430d496148ca', '商场-1526029068133', '1', '', '4', 'http://wewe', '0', '2018-06-10 11:15:53', null, '1', '2018-06-09 11:16:35', '', '2018-05-15 15:59:59', '');
INSERT INTO `activity_base_info` VALUES ('29', '41', '1', '20', '2323', '', '5af55afc6b08430d496148ca', '商场-1526029068133', '1', '', '4', 'http://32', '0', '2018-06-19 11:04:22', null, '1', '2018-06-09 11:04:19', '', '2018-05-15 14:12:39', 'admin');
INSERT INTO `activity_base_info` VALUES ('30', '41', '1', '20', '1212', '', '5af55afc6b08430d496148ca', '商场-1526029068133', '1', '', '4', 'http://sf', '0', '2018-06-10 11:04:15', null, '1', '2018-06-09 11:04:11', '', '2018-05-15 14:00:38', 'admin');
INSERT INTO `activity_base_info` VALUES ('31', '41', '1', null, '2324', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180515/25c2e4f95f38d095fed518bb9d7310f7.png', '5af55afc6b08430d496148ca', '商场-1526029068133', '1', '', '1', 'http://wer', '0', '2018-06-10 11:04:18', null, '1', '2018-06-09 11:04:15', '', null, '');
INSERT INTO `activity_base_info` VALUES ('32', '33', '1', null, '12234', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '1', 'http://wewe', '3', '2018-06-22 11:04:06', null, '1', '2018-06-29 16:57:55', '', null, '');
INSERT INTO `activity_base_info` VALUES ('33', '33', '1', null, '2323', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '1', 'http://adfsdf', '3', '2018-06-11 11:04:11', null, '1', '2018-06-29 16:57:57', '', null, '');
INSERT INTO `activity_base_info` VALUES ('34', '43', '1', null, '23', '', '5a6fe6ca6d0f0b0d1a3929b3', '弘扬广场', '1', '', '1', 'http://aaa', '0', '2018-06-15 11:04:02', null, '1', '2018-06-09 11:03:59', 'superadmin', null, '');
INSERT INTO `activity_base_info` VALUES ('35', '43', '1', null, '动感夏日', '', '5225a4996038b50147000001', '环贸iapm', '1', '', '1', 'http://aaa', '0', '2018-06-11 00:00:00', '2018-06-30 00:00:00', '2', '2018-06-09 11:03:50', 'superadmin', '2018-06-05 14:28:38', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('36', '43', '1', null, 'iapm 投放', '1', '5225a4996038b50147000001', '环贸iapm', '1', '', '2', 'http://aaa', '0', '2018-06-07 00:00:00', '2018-06-30 00:00:00', '2', '2018-06-09 11:03:55', 'superadmin', '2018-06-05 14:28:41', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('37', '44', '1', null, 'iapm动感夏日', '1', '5225a4996038b50147000001', '环贸iapm', '1', '', '58', 'http://aaa', '0', '2018-06-08 00:00:00', '2018-06-28 23:59:59', '1', '2018-06-05 21:54:04', 'superadmin', '2018-06-05 21:54:04', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('38', '44', '1', null, '固定时间开奖test', '', '54f403eae4b002000cf63762', '雄楚一号', '1', '', '8', 'http://aaa', '0', '2018-06-05 00:00:00', '2018-06-30 00:00:00', '1', '2018-06-06 15:39:26', 'superadmin', '2018-06-06 15:39:26', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('39', '33', '1', null, '世界杯竞猜主活动', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '4', 'http://www.rongyi.com', '3', '2018-06-12 00:00:00', '2018-06-30 00:00:00', '1', '2018-06-29 16:58:00', 'superadmin', '2018-06-11 13:58:59', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('40', '33', '1', '39', '世界杯子活动1', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '11', 'http://www.rongyi.com', '20', '2018-06-03 00:00:00', '2018-07-10 00:00:00', '1', '2018-07-09 17:43:25', 'superadmin', '2018-07-09 17:43:25', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('41', '33', '1', '39', '世界杯子活动2', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '2', 'http://www.rongyi.com', '2', '2018-06-01 00:00:00', '2018-06-15 00:00:00', '1', '2018-06-29 16:58:04', 'superadmin', '2018-06-11 14:02:57', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('42', '33', '1', '39', '世界杯子活动3', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '1', 'http://www.rongyi.com', '1', '2018-06-11 00:00:00', '2018-06-30 00:00:00', '1', '2018-06-29 16:58:08', 'superadmin', '2018-06-11 17:54:21', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('51', '45', '1', null, '大宁世界杯竞猜总活动', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/e405b4c240ac5d8db7bae9b84fe89a37.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '7', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-25 15:48:00', 'superadmin', '2018-06-22 16:12:13', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('52', '45', '1', '51', '大宁世界杯竞猜001', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '1', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-22 16:19:20', 'superadmin', '2018-06-22 16:16:28', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('53', '45', '1', '51', '大宁世界杯竞猜002', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '1', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-22 16:19:21', 'superadmin', '2018-06-22 16:18:07', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('54', '45', '1', '51', '大宁世界杯竞猜003', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '1', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-22 16:19:22', 'superadmin', '2018-06-22 16:18:11', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('55', '45', '1', '51', '大宁世界杯竞猜004', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '1', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-22 16:19:23', 'superadmin', '2018-06-22 16:18:13', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('56', '45', '1', '51', '大宁世界杯竞猜005', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '1', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-22 16:19:25', 'superadmin', '2018-06-22 16:18:15', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('57', '45', '1', '51', '大宁世界杯竞猜006', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '2', 'http://www.rongyi.com', '0', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-06-28 10:26:36', 'superadmin', '2018-06-28 10:26:36', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('58', '45', '1', null, '百联抽奖', '', '5a6fe6ca6d0f0b0d1a3929b3', '弘扬广场', '1', '', '6', 'http://www.baidu.com', '0', '2018-06-26 00:00:00', '2018-06-30 00:00:00', '1', '2018-06-28 15:56:19', 'superadmin', '2018-06-28 15:56:19', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('59', '45', '1', null, '大宁世界杯竞猜002', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/5c1c28e90213fabc8e5d24ba9c1cc7f4.png', '51f9d7f731d6559b7d00014d', '大宁国际商业广场', '1', '', '1', 'http://www.rongyi.com', '1', '2018-06-22 00:00:00', '2018-07-07 00:00:00', '1', '2018-07-04 15:11:12', '', '2018-07-04 15:11:12', '');
INSERT INTO `activity_base_info` VALUES ('60', '42', '1', null, 'test111', '', '54f403eae4b002000cf63762', '雄楚一号', '3', '', '2', 'http://www.baidu.com', '22', '2018-07-10 00:00:00', '2018-07-10 00:00:00', '1', '2018-07-17 18:40:21', 'superadmin', '2018-07-17 18:40:21', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('61', '45', '1', null, 'test2', '', '54f403eae4b002000cf63762', '雄楚一号', '1', '', '2', 'http://www.baidu.com', '25', '2018-07-10 00:00:00', '2018-07-31 00:00:00', '1', '2018-07-11 15:51:01', 'superadmin', '2018-07-11 15:51:01', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('62', '45', '1', null, '你好', '', '54f403eae4b002000cf63762', '雄楚一号', '1', '', '1', 'http://www.rongyi.com', '25', '2018-07-11 00:00:00', '2018-07-11 00:00:00', '1', '2018-07-11 15:52:52', 'superadmin', '2018-07-11 15:52:52', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('63', '45', '1', null, 'test', '', '5a6fe6ca6d0f0b0d1a3929b3', '弘扬广场', '1', '', '1', 'http://www.rongyi.com', '28', '2018-07-16 00:00:00', '2018-08-10 00:00:00', '1', '2018-07-16 15:43:43', 'superadmin', '2018-07-16 15:43:43', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('64', '45', '1', null, 'dsadsa', '', '5a6fe6ca6d0f0b0d1a3929b3', '弘扬广场', '1', '', '7', '', '31', '2018-07-16 00:00:00', '2018-08-11 00:00:00', '1', '2018-07-17 18:39:31', 'superadmin', '2018-07-17 18:39:31', 'superadmin');
INSERT INTO `activity_base_info` VALUES ('66', '45', '1', null, 'sdfsdf', '', '54f403eae4b002000cf63762', '雄楚一号', '1', '', '1', '', '31', '2018-07-17 00:00:00', '2018-07-28 00:00:00', '1', '2018-07-23 13:46:56', 'superadmin', '2018-07-17 18:40:43', 'superadmin');

-- ----------------------------
-- Table structure for `activity_cast_h5`
-- ----------------------------
DROP TABLE IF EXISTS `activity_cast_h5`;
CREATE TABLE `activity_cast_h5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT 'activity_id',
  `channel_id` varchar(64) DEFAULT NULL COMMENT '渠道id',
  `channel_name` varchar(64) DEFAULT NULL COMMENT '渠道名',
  `channel_url` varchar(255) DEFAULT NULL COMMENT '渠道地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='H5投放记录表';

-- ----------------------------
-- Records of activity_cast_h5
-- ----------------------------
INSERT INTO `activity_cast_h5` VALUES ('61', '34', '202cb962ac59075b964b07152d234b70', '123', 'http://aaa?merchantId=5a6fe6ca6d0f0b0d1a3929b3&templateId=43&activityId=34&channel=202cb962ac59075b964b07152d234b70');
INSERT INTO `activity_cast_h5` VALUES ('62', '35', 'bb9d99846b1360d0108a9a8386f8504b', 'iapm', 'http://aaa?merchantId=5225a4996038b50147000001&templateId=43&activityId=35&channel=bb9d99846b1360d0108a9a8386f8504b');
INSERT INTO `activity_cast_h5` VALUES ('64', '36', 'bb9d99846b1360d0108a9a8386f8504b', 'iapm', 'http://aaa?merchantId=5225a4996038b50147000001&templateId=43&activityId=36&channel=bb9d99846b1360d0108a9a8386f8504b');
INSERT INTO `activity_cast_h5` VALUES ('125', '37', 'bb9d99846b1360d0108a9a8386f8504b', 'iapm', 'http://aaa?merchantId=5225a4996038b50147000001&templateId=44&activityId=37&channel=bb9d99846b1360d0108a9a8386f8504b');
INSERT INTO `activity_cast_h5` VALUES ('130', '38', '6512bd43d9caa6e02c990b0a82652dca', '11', 'http://aaa?merchantId=54f403eae4b002000cf63762&templateId=44&activityId=38&channel=6512bd43d9caa6e02c990b0a82652dca');
INSERT INTO `activity_cast_h5` VALUES ('131', '51', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=51&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('132', '52', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=52&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('133', '53', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=53&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('134', '54', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=54&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('135', '55', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=55&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('136', '56', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=56&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('140', '57', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=57&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('144', '58', '4eae35f1b35977a00ebd8086c259d4c9', 'www', 'http://www.rongyi.com?merchantId=5a6fe6ca6d0f0b0d1a3929b3&templateId=45&activityId=58&channel=4eae35f1b35977a00ebd8086c259d4c9');
INSERT INTO `activity_cast_h5` VALUES ('145', '59', '098f6bcd4621d373cade4e832627b4f6', 'test', 'http://www.rongyi.com?merchantId=51f9d7f731d6559b7d00014d&templateId=45&activityId=59&channel=098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `activity_cast_h5` VALUES ('147', '61', 'bfa89e563d9509fbc5c6503dd50faf2e', 'http://www.baidu.com', 'http://www.rongyi.com?merchantId=54f403eae4b002000cf63762&templateId=45&activityId=61&channel=bfa89e563d9509fbc5c6503dd50faf2e');
INSERT INTO `activity_cast_h5` VALUES ('148', '62', 'bfa89e563d9509fbc5c6503dd50faf2e', 'http://www.baidu.com', 'http://www.rongyi.com?merchantId=54f403eae4b002000cf63762&templateId=45&activityId=62&channel=bfa89e563d9509fbc5c6503dd50faf2e');
INSERT INTO `activity_cast_h5` VALUES ('149', '63', '3691308f2a4c2f6983f2880d32e29c84', 'ss', 'http://www.rongyi.com?merchantId=5a6fe6ca6d0f0b0d1a3929b3&templateId=45&activityId=63&channel=3691308f2a4c2f6983f2880d32e29c84');
INSERT INTO `activity_cast_h5` VALUES ('156', '64', '5f039b4ef0058a1d652f13d612375a5b', 'dsa', 'http://www.rongyi.com?merchantId=5a6fe6ca6d0f0b0d1a3929b3&templateId=45&activityId=64&channel=5f039b4ef0058a1d652f13d612375a5b');
INSERT INTO `activity_cast_h5` VALUES ('157', '65', 'b0baee9d279d34fa1dfd71aadb908c3f', '11111', 'http://www.rongyi.com?merchantId=5a6fe6ca6d0f0b0d1a3929b3&templateId=45&activityId=65&channel=b0baee9d279d34fa1dfd71aadb908c3f');

-- ----------------------------
-- Table structure for `activity_cast_multi_screen`
-- ----------------------------
DROP TABLE IF EXISTS `activity_cast_multi_screen`;
CREATE TABLE `activity_cast_multi_screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT 'activity_id',
  `point_location_id` varchar(64) DEFAULT NULL COMMENT '点位id',
  `point_location_name` varchar(64) DEFAULT NULL COMMENT '点位名称',
  `activity_url` varchar(255) DEFAULT NULL COMMENT '游戏地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='多屏互动投放记录表';

-- ----------------------------
-- Records of activity_cast_multi_screen
-- ----------------------------
INSERT INTO `activity_cast_multi_screen` VALUES ('34', '33', '65a93230-8674-4d3c-a2a0-beba500cd099', '1F思佳园店铺旁 靠近2号门', 'http://www.rongyi.com?merchantId=54f403eae4b002000cf63762&templateId=33&activityId=33&channel=65a93230-8674-4d3c-a2a0-beba500cd099');
INSERT INTO `activity_cast_multi_screen` VALUES ('36', '33', '6f6f6335-7d4d-446e-9502-89084c7851aa', '1F VS店铺旁', 'http://www.rongyi.com?merchantId=54f403eae4b002000cf63762&templateId=33&activityId=33&channel=6f6f6335-7d4d-446e-9502-89084c7851aa');
INSERT INTO `activity_cast_multi_screen` VALUES ('41', '20', 'bfe7b414-65f1-4c1f-ba8b-2754ddff8433', '1F尚之银店铺旁', 'http://www.rongyi.com?merchantId=54f403eae4b002000cf63762&templateId=33&activityId=20&channel=bfe7b414-65f1-4c1f-ba8b-2754ddff8433');
INSERT INTO `activity_cast_multi_screen` VALUES ('42', '20', '6f6f6335-7d4d-446e-9502-89084c7851aa', '1F VS店铺旁', 'http://www.rongyi.com?merchantId=54f403eae4b002000cf63762&templateId=33&activityId=20&channel=6f6f6335-7d4d-446e-9502-89084c7851aa');

-- ----------------------------
-- Table structure for `activity_cast_screen`
-- ----------------------------
DROP TABLE IF EXISTS `activity_cast_screen`;
CREATE TABLE `activity_cast_screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT 'activity_id',
  `point_location_id` varchar(64) DEFAULT NULL COMMENT '点位id',
  `point_location_name` varchar(64) DEFAULT NULL COMMENT '点位名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端屏投放记录表';

-- ----------------------------
-- Records of activity_cast_screen
-- ----------------------------

-- ----------------------------
-- Table structure for `activity_discover_times`
-- ----------------------------
DROP TABLE IF EXISTS `activity_discover_times`;
CREATE TABLE `activity_discover_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `prize_time` varchar(32) NOT NULL COMMENT '开奖时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态 0：未执行， 1：已执行',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='固定时间开奖配置表';

-- ----------------------------
-- Records of activity_discover_times
-- ----------------------------
INSERT INTO `activity_discover_times` VALUES ('46', '37', '201806060000', '0');
INSERT INTO `activity_discover_times` VALUES ('47', '37', '201806070000', '0');
INSERT INTO `activity_discover_times` VALUES ('48', '37', '201806080000', '0');
INSERT INTO `activity_discover_times` VALUES ('71', '38', '201806052230', '0');
INSERT INTO `activity_discover_times` VALUES ('72', '38', '201806052232', '0');
INSERT INTO `activity_discover_times` VALUES ('73', '38', '201806052238', '0');
INSERT INTO `activity_discover_times` VALUES ('74', '38', '201806052241', '0');
INSERT INTO `activity_discover_times` VALUES ('75', '38', '201806052250', '0');
INSERT INTO `activity_discover_times` VALUES ('76', '38', '201806052253', '0');
INSERT INTO `activity_discover_times` VALUES ('77', '38', '201806052254', '0');
INSERT INTO `activity_discover_times` VALUES ('78', '38', '201806061545', '0');
INSERT INTO `activity_discover_times` VALUES ('79', '38', '201806061600', '0');
INSERT INTO `activity_discover_times` VALUES ('80', '38', '20180607153600', '0');

-- ----------------------------
-- Table structure for `activity_hourly_summary`
-- ----------------------------
DROP TABLE IF EXISTS `activity_hourly_summary`;
CREATE TABLE `activity_hourly_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '日期时间',
  `hour_of_day` int(11) DEFAULT '0' COMMENT 'HOUR OF DAY',
  `day_of_week` int(11) DEFAULT '0' COMMENT 'DAY OF WEEK',
  `day_of_month` int(11) DEFAULT '0' COMMENT 'DAY OF MONTH',
  `mall_id` varchar(100) NOT NULL DEFAULT '' COMMENT '商场ID',
  `terminal_id` varchar(100) NOT NULL DEFAULT '' COMMENT '互动屏ID',
  `activity_id` int(11) DEFAULT '0' COMMENT '活动ID',
  `activity_type` varchar(100) DEFAULT '' COMMENT '活动类型',
  `terminal_type` varchar(100) DEFAULT '' COMMENT '终端类型',
  `play_times` int(11) DEFAULT '0' COMMENT '参与次数（存在开始记录,前端埋点数据）',
  `play_end_times` int(11) DEFAULT '0' COMMENT '结束次数（存在结束与开始的匹配记录）',
  `interrupt_times` int(11) DEFAULT '0' COMMENT '中断次数（不存在结束记录）',
  `play_population` int(11) DEFAULT '0' COMMENT '参与人数',
  `play_end_population` int(11) DEFAULT '0' COMMENT '完成人数',
  `share_play_times` int(11) DEFAULT '0' COMMENT '通过分享参与次数',
  `share_population` int(11) DEFAULT '0' COMMENT '通过分享参与人数',
  `avg_time` int(11) DEFAULT '0' COMMENT '平均参与时间（秒）',
  `game_win_times` int(11) DEFAULT '0' COMMENT '游戏成功次数',
  `game_win_population` int(11) DEFAULT '0' COMMENT '游戏成功人数',
  `game_lose_times` int(11) DEFAULT '0' COMMENT '游戏失败次数',
  `game_lose_population` int(11) DEFAULT '0' COMMENT '游戏失败人数',
  `share_times` int(11) DEFAULT '0' COMMENT '分享次数',
  `mission_success_times` int(11) DEFAULT '0' COMMENT '通用结果:达成目标次数',
  `mission_success_population` int(11) DEFAULT '0' COMMENT '通用结果:达成目标人数',
  `mission_fail_times` int(11) DEFAULT '0' COMMENT '通用结果:未达成目标次数',
  `mission_fail_population` int(11) DEFAULT '0' COMMENT '通用结果:未达成目标人数',
  `valid_play_times` int(11) DEFAULT '0' COMMENT '有效参与次数，后端根据业务数据判断参与成功的记录',
  `valid_play_population` int(11) DEFAULT '0' COMMENT '有效参与人数，后端根据业务数据判断参与成功的记录',
  `lottery_win_times` int(11) DEFAULT '0' COMMENT '游戏中奖次数',
  `lottery_win_population` int(11) DEFAULT '0' COMMENT '游戏中奖人数',
  `lottery_lose_times` int(11) DEFAULT '0' COMMENT '游戏未中奖次数',
  `lottery_lose_population` int(11) DEFAULT '0' COMMENT '游戏未中奖人数',
  `acccepting_award_times` int(11) DEFAULT '0' COMMENT '领奖次数',
  `acccepting_award_population` int(11) DEFAULT '0' COMMENT '领奖人数',
  `coupon_checked_count` int(11) DEFAULT '0' COMMENT '券码核销总数',
  `coupon_checked_population` int(11) DEFAULT '0' COMMENT '券码核销人数',
  `coupon_code_count` int(11) DEFAULT '0' COMMENT '中奖券码数',
  `activity_points` int(11) DEFAULT '0' COMMENT '活动积分数',
  `flag` smallint(6) DEFAULT '1' COMMENT '1:正常;0:删除',
  PRIMARY KEY (`id`),
  KEY `idx_flag` (`flag`),
  KEY `idx_mall_id` (`mall_id`),
  KEY `idx_terminal_id` (`terminal_id`),
  KEY `idx_topic_date` (`topic_date`),
  KEY `idx_terminal_type` (`terminal_type`),
  KEY `idx_activity_type` (`activity_type`),
  KEY `idx_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='标准活动小时汇总数据表';

-- ----------------------------
-- Records of activity_hourly_summary
-- ----------------------------

-- ----------------------------
-- Table structure for `activity_notice_template`
-- ----------------------------
DROP TABLE IF EXISTS `activity_notice_template`;
CREATE TABLE `activity_notice_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `prize_id` int(11) DEFAULT NULL,
  `type` int(4) DEFAULT NULL COMMENT '通知类型 1:短信',
  `content` varchar(500) DEFAULT NULL COMMENT '模板内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='通知模板配置表';

-- ----------------------------
-- Records of activity_notice_template
-- ----------------------------
INSERT INTO `activity_notice_template` VALUES ('39', '33', '115', '1', '23gffdsgfxxxxxxxx');
INSERT INTO `activity_notice_template` VALUES ('40', '58', null, '1', '券码：{coupon_code}');
INSERT INTO `activity_notice_template` VALUES ('41', '40', '146', '0', '');
INSERT INTO `activity_notice_template` VALUES ('42', '60', '147', '0', '');
INSERT INTO `activity_notice_template` VALUES ('43', '61', '148', '0', '');
INSERT INTO `activity_notice_template` VALUES ('44', '62', '149', '0', '');
INSERT INTO `activity_notice_template` VALUES ('45', '63', '150', '0', '');
INSERT INTO `activity_notice_template` VALUES ('46', '64', '151', '0', '');
INSERT INTO `activity_notice_template` VALUES ('47', '65', '152', '0', '');

-- ----------------------------
-- Table structure for `activity_prize`
-- ----------------------------
DROP TABLE IF EXISTS `activity_prize`;
CREATE TABLE `activity_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `prize_level` varchar(32) DEFAULT '' COMMENT '奖项阶级',
  `prize_name` varchar(32) DEFAULT '' COMMENT '奖品名称',
  `image_url` varchar(255) DEFAULT NULL COMMENT '奖品图片',
  `prize_type` tinyint(4) DEFAULT NULL COMMENT '奖品类型(1卡券，2积分, 3红包， 4文案)',
  `obj_id` varchar(32) DEFAULT '' COMMENT '奖品id',
  `obj_name` varchar(32) DEFAULT '' COMMENT '奖品内容',
  `amount` int(11) DEFAULT NULL COMMENT '红包金额',
  `description_content` varchar(500) DEFAULT NULL COMMENT '文案内容',
  `integrals` int(11) DEFAULT NULL COMMENT '积分数量',
  `version` int(11) DEFAULT NULL COMMENT '乐观锁',
  `stock` int(11) unsigned DEFAULT NULL COMMENT '库存',
  `left_stock` int(11) DEFAULT NULL COMMENT '剩余库存',
  `probability` int(11) unsigned DEFAULT NULL COMMENT '奖品概率',
  `single_max_winning` int(11) DEFAULT NULL COMMENT '单用户最多可抽取次数',
  `single_day_max_winning` int(11) DEFAULT NULL COMMENT '单用户每日最多可抽取次数',
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_activity_id` (`activity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 COMMENT='活动奖品规则';

-- ----------------------------
-- Records of activity_prize
-- ----------------------------
INSERT INTO `activity_prize` VALUES ('95', '24', '一等奖', 'games', null, '1', '5af4fc8b6bcb4a07ba8e9b72', '卡券games', '0', null, null, null, '20', '20', '3', null, null, null);
INSERT INTO `activity_prize` VALUES ('96', '24', '二等奖', '二等奖', null, '2', '', '会员积分20', '20', null, null, null, '100', '100', '5', null, null, null);
INSERT INTO `activity_prize` VALUES ('97', '20', '一等奖', '商场创建卡券001', '', '1', '5af17b0e6b08430778403d77', '卡券商场创建卡券001', '0', null, null, null, '50', '47', '2', null, null, '2018-06-11 10:28:19');
INSERT INTO `activity_prize` VALUES ('98', '20', '二等奖', '商场创建卡券001', '', '1', '5af17b0e6b08430778403d77', '卡券商场创建卡券001', '0', null, null, null, '30', '29', '2', null, null, '2018-06-11 10:28:19');
INSERT INTO `activity_prize` VALUES ('99', '20', '三等奖', 'games', '', '1', '5af17b0e6b08430778403d77', '卡券games', '0', null, null, null, '20', '17', '3', null, null, '2018-06-11 10:28:19');
INSERT INTO `activity_prize` VALUES ('100', '20', '四等奖', '四等奖', '', '2', '', '会员积分200', '200', null, null, null, '10', '9', '4', null, null, '2018-06-11 10:28:19');
INSERT INTO `activity_prize` VALUES ('101', '25', '1', 'games1', null, '1', '5af4fc8b6bcb4a07ba8e9b72', '卡券games', '0', null, null, null, '22', '18', '1', null, null, '2018-07-20 14:45:38');
INSERT INTO `activity_prize` VALUES ('114', '25', 'prizeLevel', 'prizeName', null, '1', 'objId', 'objName', null, null, null, null, '10', '5', '1', null, null, '2018-07-20 14:44:00');
INSERT INTO `activity_prize` VALUES ('115', '33', '3', '3', null, '2', '', '会员积分1', '1', null, null, null, '1', '1', '1', null, null, '2018-07-04 13:53:36');
INSERT INTO `activity_prize` VALUES ('116', '35', '', '微信红包1', null, '3', '', '微信红包1', '1', null, null, null, '6000', '5990', '1', null, null, '2018-06-04 19:58:02');
INSERT INTO `activity_prize` VALUES ('117', '36', '', '微信红包1', '', '3', '', '微信红包1', '1', '', '0', null, '6000', '6000', '0', null, '1', '2018-06-05 13:38:05');
INSERT INTO `activity_prize` VALUES ('124', '37', '', '微信红包1', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180605/26ea734ebf8d9f8810aea8aaa9a37e09.png', '3', '', '微信红包1', '100', '', '0', null, '1300', '1276', '0', null, null, '2018-06-05 21:54:04');
INSERT INTO `activity_prize` VALUES ('125', '37', '', '微信红包2', '', '3', '', '微信红包2', '200', '', '0', null, '1000', '984', '0', null, null, '2018-06-05 21:54:04');
INSERT INTO `activity_prize` VALUES ('126', '37', '', '微信红包5', '', '3', '', '微信红包5', '500', '', '0', null, '150', '148', '0', null, null, '2018-06-05 21:54:04');
INSERT INTO `activity_prize` VALUES ('127', '37', '', '微信红包8', '', '3', '', '微信红包8', '800', '', '0', null, '100', '97', '0', null, null, '2018-06-05 21:54:04');
INSERT INTO `activity_prize` VALUES ('128', '37', '', '微信红包10', '', '3', '', '微信红包10', '1000', '', '0', null, '80', '80', '0', null, null, '2018-06-05 21:54:04');
INSERT INTO `activity_prize` VALUES ('129', '37', '', '微信红包18', '', '3', '', '微信红包18', '1800', '', '0', null, '50', '50', '0', null, null, '2018-06-05 21:54:04');
INSERT INTO `activity_prize` VALUES ('131', '38', '', '微信红包1', '', '3', '', '微信红包1', '100', '', '0', null, '1000', '878', '1', null, null, '2018-06-07 15:36:35');
INSERT INTO `activity_prize` VALUES ('132', '39', '', '文案恭喜你中', '', '4', '', '文案恭喜你中', '0', '恭喜你中了奖', '0', null, '0', '0', '0', null, null, '2018-06-11 13:58:59');
INSERT INTO `activity_prize` VALUES ('133', '40', '', '文案恭喜你中', '', '4', '', '文案恭喜你中', '0', '恭喜你中间两个', '0', null, '100', '98', '10', null, null, '2018-07-09 17:43:25');
INSERT INTO `activity_prize` VALUES ('134', '42', '', '文案中奖了', '', '4', '', '文案中奖了', '0', '中奖了', '0', null, '0', '0', '0', null, null, '2018-06-11 17:54:21');
INSERT INTO `activity_prize` VALUES ('135', '50', '', '会员积分1', '', '2', '', '会员积分1', '0', '', '1', null, '1', '1', '0', null, null, '2018-06-13 15:03:53');
INSERT INTO `activity_prize` VALUES ('136', '51', '', '文案测试', '', '4', '', '文案测试', '0', '测试', '0', null, '100', '100', '0', null, null, '2018-06-22 16:12:13');
INSERT INTO `activity_prize` VALUES ('137', '52', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-06-22 16:16:28');
INSERT INTO `activity_prize` VALUES ('138', '53', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-06-22 16:18:07');
INSERT INTO `activity_prize` VALUES ('139', '54', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-06-22 16:18:11');
INSERT INTO `activity_prize` VALUES ('140', '55', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-06-22 16:18:13');
INSERT INTO `activity_prize` VALUES ('141', '56', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-06-22 16:18:15');
INSERT INTO `activity_prize` VALUES ('142', '57', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-06-28 10:26:36');
INSERT INTO `activity_prize` VALUES ('143', '58', '', '卡券', '', '5', '10692', '卡券', '0', '', '0', null, '100', '78', '1', null, null, '2018-06-28 17:29:13');
INSERT INTO `activity_prize` VALUES ('144', '59', '', '文案test', '', '4', '', '文案test', '0', 'test', '0', null, '2', '2', '0', null, null, '2018-07-04 15:11:13');
INSERT INTO `activity_prize` VALUES ('145', '40', '', '文案文案奖品', '', '4', '', '文案文案奖品', '0', '文案奖品01', '0', null, '100', '100', '20', null, null, '2018-07-09 17:43:25');
INSERT INTO `activity_prize` VALUES ('146', '40', '', '新卡券红桃K-卡券测试12', '', '5', '100101', '新卡券红桃K-卡券测试12', '0', '', '0', null, '10', '10', '0', null, null, '2018-07-09 17:43:25');
INSERT INTO `activity_prize` VALUES ('147', '60', '', '新卡券红桃K-卡券测试12', '', '5', '100101', '新卡券红桃K-卡券测试12', '0', '', '0', null, '0', '0', '0', null, null, '2018-07-17 18:40:21');
INSERT INTO `activity_prize` VALUES ('148', '61', '', '新卡券卡券名称', '', '5', '100130', '新卡券卡券名称', '0', '', '0', null, '10', '10', '0', null, null, '2018-07-11 15:51:01');
INSERT INTO `activity_prize` VALUES ('149', '62', '', '文案你是谁', '', '4', '', '文案你是谁', '0', '你是谁', '0', null, '0', '0', '0', null, null, '2018-07-11 15:52:52');
INSERT INTO `activity_prize` VALUES ('150', '63', '', '文案dsad', '', '4', '', '文案dsad', '0', 'dsadsad', '0', null, '0', '0', '0', null, null, '2018-07-16 15:43:43');
INSERT INTO `activity_prize` VALUES ('151', '64', '', '文案dsad', '', '4', '', '文案dsad', '0', 'dsadsad', '0', null, '0', '0', '0', null, null, '2018-07-17 18:39:31');
INSERT INTO `activity_prize` VALUES ('152', '65', '', '文案你好，我', '', '4', '', '文案你好，我', '0', '你好，我是文案', '0', '1', '10', '4', '1', null, null, '2018-07-23 17:45:47');

-- ----------------------------
-- Table structure for `activity_rule`
-- ----------------------------
DROP TABLE IF EXISTS `activity_rule`;
CREATE TABLE `activity_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `join_mode_json` varchar(512) DEFAULT NULL COMMENT '活动参与方式json',
  `single_max_times` int(11) DEFAULT NULL COMMENT '单用户最大多参与次数',
  `single_day_max_times` int(11) DEFAULT NULL COMMENT '单用户每天最大参加次数',
  `max_times` int(11) DEFAULT NULL COMMENT '活动总次数',
  `max_people` int(11) DEFAULT NULL COMMENT '活动总参与人数',
  `variable_times_json` varchar(512) DEFAULT NULL COMMENT '游戏次数限制',
  `remark` varchar(1000) DEFAULT NULL COMMENT '参与规则说明',
  `single_max_winning` int(11) DEFAULT NULL COMMENT '单用户中奖次数',
  `single_day_max_winning` int(11) DEFAULT NULL COMMENT '单用户每日最多可抽奖次数',
  `probability` double DEFAULT NULL COMMENT '中奖概率',
  `discover_prize_type` tinyint(4) DEFAULT '1' COMMENT '开奖类型（1.参与结束2.固定时间）',
  `set_blacklist` tinyint(4) DEFAULT '0' COMMENT '设置黑名单0不启用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='活动参与规则';

-- ----------------------------
-- Records of activity_rule
-- ----------------------------
INSERT INTO `activity_rule` VALUES ('15', '20', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":0,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":2}', '200', null, '300', '20', null, '', '100', null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('19', '24', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', '33', null, '44', '55', null, null, '6', null, '80', '1', '0');
INSERT INTO `activity_rule` VALUES ('20', '25', '{\"integrals\":10,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', '2', null, '10', '10', null, null, '1', null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('21', '26', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', '11', null, '1', '1', null, null, '1', null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('22', '27', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', '23', null, '23', '23', null, null, '23', null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('23', '28', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('24', '29', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('25', '30', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('26', '31', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('27', '32', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('28', '33', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('29', '34', '{\"integrals\":0,\"memberLimitType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, null, null, null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('30', '35', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":2}', null, null, null, null, null, '', null, null, '1', '1', '0');
INSERT INTO `activity_rule` VALUES ('31', '36', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":2}', null, null, null, null, null, '', null, null, '100', '2', '0');
INSERT INTO `activity_rule` VALUES ('32', '37', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":2}', null, null, null, null, null, '', null, null, '100', '2', '0');
INSERT INTO `activity_rule` VALUES ('33', '38', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":2}', '30', '3', '3000', '300', null, '', null, null, '100', '2', '0');
INSERT INTO `activity_rule` VALUES ('34', '39', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('35', '40', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":true,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, '3', null, null, '{\"addTimes\":1,\"addTimesType\":3,\"initialTimes\":10,\"maxAddTimes\":1,\"point\":10}', '', null, null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('36', '42', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('37', '51', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '3', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('38', '52', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('39', '53', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('40', '54', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('41', '55', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('42', '56', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('43', '57', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('44', '58', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, null, '', null, null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('45', '59', '{\"integrals\":10,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', '3', '1', '5', null, '{\"addTimes\":3,\"addTimesType\":1,\"initialTimes\":2,\"maxAddTimes\":5,\"point\":10}', '', '2', '2', '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('46', '60', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, '{\"addTimes\":0,\"addTimesType\":0,\"initialTimes\":10,\"maxAddTimes\":0,\"point\":0}', '', null, null, '100', '1', '0');
INSERT INTO `activity_rule` VALUES ('47', '61', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, '{\"addTimes\":0,\"addTimesType\":0,\"initialTimes\":10,\"maxAddTimes\":0,\"point\":0}', '', null, null, '0', '1', '0');
INSERT INTO `activity_rule` VALUES ('48', '62', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, '{\"addTimes\":0,\"addTimesType\":0,\"initialTimes\":10,\"maxAddTimes\":0,\"point\":0}', '', null, null, '0', '1', '1');
INSERT INTO `activity_rule` VALUES ('49', '49', null, null, null, null, '1000', null, null, null, null, null, '1', '0');
INSERT INTO `activity_rule` VALUES ('50', '63', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":true,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, '{\"addTimes\":0,\"addTimesType\":0,\"initialTimes\":0,\"maxAddTimes\":0,\"point\":0}', '', null, null, '0', '1', '1');
INSERT INTO `activity_rule` VALUES ('51', '64', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, '{\"addTimes\":0,\"addTimesType\":0,\"initialTimes\":0,\"maxAddTimes\":0,\"point\":0}', '', null, null, '0', '1', '1');
INSERT INTO `activity_rule` VALUES ('52', '65', '{\"integrals\":0,\"memberLimitType\":1,\"memberType\":1,\"needIntegrals\":false,\"needLogin\":false,\"needWechat\":true,\"wechatLimitType\":1}', null, null, null, null, '{\"addTimes\":0,\"addTimesType\":0,\"initialTimes\":10,\"maxAddTimes\":0,\"point\":0}', '', null, null, '100', '1', '0');

-- ----------------------------
-- Table structure for `add_times_record`
-- ----------------------------
DROP TABLE IF EXISTS `add_times_record`;
CREATE TABLE `add_times_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `add_times_type` tinyint(4) DEFAULT '1' COMMENT '添加次数类型1.分享，2关注，3消耗积分',
  `add_times` int(11) DEFAULT '0' COMMENT '添加次数',
  `point` int(255) DEFAULT NULL,
  `openid` varchar(32) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='额外次数记录表';

-- ----------------------------
-- Records of add_times_record
-- ----------------------------
INSERT INTO `add_times_record` VALUES ('1', '1', '1', '0', '10', 'ewqewqewqewqewqe', '2018-07-03 13:26:41');
INSERT INTO `add_times_record` VALUES ('2', '1', '1', '0', '10', 'ewqewqewqewqewqe', '2018-07-03 13:27:28');
INSERT INTO `add_times_record` VALUES ('3', '1', '1', '0', '10', 'ewqewqewqewqewqe', '2018-07-03 13:27:32');
INSERT INTO `add_times_record` VALUES ('4', '59', '1', '0', null, 'dsfas', '2018-07-04 15:48:51');
INSERT INTO `add_times_record` VALUES ('5', '59', '1', '0', null, 'dsfas', '2018-07-04 16:02:39');
INSERT INTO `add_times_record` VALUES ('6', '59', '1', '3', '10', 'dsfas', '2018-07-05 10:43:03');
INSERT INTO `add_times_record` VALUES ('7', '59', '1', '3', '10', 'dsfas', '2018-07-05 13:34:14');

-- ----------------------------
-- Table structure for `auction_dayuecheng_goods`
-- ----------------------------
DROP TABLE IF EXISTS `auction_dayuecheng_goods`;
CREATE TABLE `auction_dayuecheng_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_pic` varchar(255) DEFAULT NULL COMMENT '图片url',
  `price` double(10,2) DEFAULT NULL COMMENT '商品价格',
  `start_score` int(11) DEFAULT NULL COMMENT '起拍积分',
  `start_at` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_at` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `associate_card` varchar(255) DEFAULT NULL COMMENT '关联卡券',
  `show_at` timestamp NULL DEFAULT NULL COMMENT '商品显示时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '结束以后是否处理积分和奖品，0待处理，1已处理',
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除 0：未删除，1：已删除',
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_dayuecheng_goods
-- ----------------------------
INSERT INTO `auction_dayuecheng_goods` VALUES ('4', '今天', 'http://pic.616pic.com/ys_img/00/13/06/9RARz0JNMe.jpg', '123.00', '1', '2018-07-19 20:22:03', '2018-07-21 11:00:03', '0IqFYYJnZQ+x30AWxppKZcjtc9AsxxQlV3F3nvQMlDA=', '2018-07-19 11:00:03', '1', null, '2018-07-21 12:00:03');
INSERT INTO `auction_dayuecheng_goods` VALUES ('6', '本周一', 'http://pic.616pic.com/ys_img/00/13/06/9RARz0JNMe.jpg', '200.00', '1', '2018-07-19 18:23:04', '2018-07-21 16:48:38', '0IqFYYJnZQ+x30AWxppKZcjtc9AsxxQlV3F3nvQMlDA=', '2018-07-16 15:43:36', '0', null, '2018-07-21 16:46:19');
INSERT INTO `auction_dayuecheng_goods` VALUES ('10', '下周', 'http://pic.616pic.com/ys_img/00/13/06/9RARz0JNMe.jpg', '500.00', '10', '2018-07-23 10:18:12', '2018-07-24 10:18:19', '0IqFYYJnZQ+x30AWxppKZcjtc9AsxxQlV3F3nvQMlDA=', '2018-07-25 10:18:27', '0', null, '2018-07-23 12:37:27');
INSERT INTO `auction_dayuecheng_goods` VALUES ('22', '无知大甩卖', 'http://rongyi.b0.upaiyun.com/activity/1807211516363103.png', '1.00', '1', '2018-07-21 15:21:01', '2018-07-21 15:47:14', '123', '2018-07-21 15:20:00', '1', null, '2018-07-21 15:47:57');
INSERT INTO `auction_dayuecheng_goods` VALUES ('23', '123', 'http://rongyi.b0.upaiyun.com/activity/1807211517435717.jpg', '123.00', '123', '2018-07-21 17:49:31', '2018-07-21 16:43:38', '123', '2018-07-21 00:00:00', '1', null, '2018-07-21 16:43:56');

-- ----------------------------
-- Table structure for `auction_dayuecheng_record`
-- ----------------------------
DROP TABLE IF EXISTS `auction_dayuecheng_record`;
CREATE TABLE `auction_dayuecheng_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `openid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openid',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `uid` varchar(32) DEFAULT NULL COMMENT '会员id',
  `nickname` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '昵称',
  `codenickname` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'base64昵称',
  `score` int(11) DEFAULT NULL COMMENT '竞拍积分',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:未处理， 1：已处理',
  `is_bidder` int(11) DEFAULT NULL COMMENT '是否拍中',
  `user_token` varchar(255) DEFAULT NULL COMMENT '会员token',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auction_dayuecheng_record
-- ----------------------------
INSERT INTO `auction_dayuecheng_record` VALUES ('14', '4', 'olH54xG-DM1M34vbAiEUI1cCyITc', '18221413114', '9c6eb65ebccee6e0', '张瑞川', null, '4', '1', null, 'dfd9d8023a78d77f', '2018-07-20 15:23:35', '2018-07-21 12:00:01');
INSERT INTO `auction_dayuecheng_record` VALUES ('15', '4', 'olH54xFkA2pjBlQ6jTxq5bimYYkM', '18903857922', 'bc0663dc6264292b', 'Mallcoo06c94', null, '1', '1', null, 'd177992ec678353a', '2018-07-20 15:26:20', '2018-07-21 12:00:02');
INSERT INTO `auction_dayuecheng_record` VALUES ('16', '4', 'olH54xG-DM1M34vbAiEUI1cCyITz', '15000852470', '395e3fa7c738e3d4', 'Mallcooca0b4', null, '7', '1', null, 'c48ccd9847882356', '2018-07-20 18:07:40', '2018-07-21 12:00:03');
INSERT INTO `auction_dayuecheng_record` VALUES ('17', '4', 'olH54xO1CagvpTRUFP6qVTX9LPi4', '15021708185', 'd76afb9bcadc8391', 'Mallcoo451c4', null, '10', '1', '1', 'cceb094e60e4c225', '2018-07-21 09:54:09', '2018-07-21 14:43:29');
INSERT INTO `auction_dayuecheng_record` VALUES ('18', '6', 'olH54xO1CagvpTRUFP6qVTX9LPi4', '15021708185', 'd76afb9bcadc8391', 'Mallcoo451c4', null, '11', '0', null, 'cceb094e60e4c225', '2018-07-21 11:12:13', '2018-07-21 14:43:29');
INSERT INTO `auction_dayuecheng_record` VALUES ('29', '10', 'dasdaddass', null, null, null, null, '11', '0', null, null, '2018-07-23 13:34:25', null);

-- ----------------------------
-- Table structure for `award_allocation`
-- ----------------------------
DROP TABLE IF EXISTS `award_allocation`;
CREATE TABLE `award_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `ranking` int(11) NOT NULL DEFAULT '0' COMMENT '排名',
  `activity_prize` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `create_at` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='排名发奖配置';

-- ----------------------------
-- Records of award_allocation
-- ----------------------------
INSERT INTO `award_allocation` VALUES ('1', '38', '1', '131', '2018-06-05 20:35:18', '2018-06-05 23:40:05');
INSERT INTO `award_allocation` VALUES ('6', '38', '2', '131', '2018-06-05 20:35:40', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('7', '38', '3', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('8', '38', '4', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('9', '38', '5', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('10', '38', '6', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('11', '38', '7', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('12', '38', '8', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('13', '38', '9', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');
INSERT INTO `award_allocation` VALUES ('14', '38', '10', '131', '0000-00-00 00:00:00', '2018-06-05 23:40:25');

-- ----------------------------
-- Table structure for `blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL DEFAULT '0' COMMENT '手机号',
  `merchant_id` varchar(32) NOT NULL DEFAULT '' COMMENT '商城id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `create_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_phone_mall_act` (`phone`,`merchant_id`,`activity_id`),
  KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=1577 DEFAULT CHARSET=utf8 COMMENT='黑名单';

-- ----------------------------
-- Records of blacklist
-- ----------------------------
INSERT INTO `blacklist` VALUES ('851', '15301809913', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('852', '15221649391', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('853', '15901916660', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('855', '18918007748', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('856', '13701836188', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('857', '13817603008', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('858', '13901954870', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('859', '13817432558', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('860', '15316008317', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('861', '13761559791', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('862', '13818118428', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('863', '13817784736', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('866', '18721083668', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('867', '15618600273', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('868', '13651797233', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('869', '13052551247', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('870', '17701654878', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('871', '13764477359', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('872', '15801831745', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('873', '13601608282', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('874', '13524760087', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('875', '13524557721', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('876', '13524528493', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('877', '13918904538', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('878', '13901663508', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('879', '15800939910', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('880', '18721411826', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('881', '15156538906', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('882', '13162199272', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('883', '13817174370', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('884', '13816877791', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('885', '13917749202', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('886', '15026726291', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('887', '13801681418', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('888', '13501788146', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('889', '13918339747', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('890', '13601626759', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('891', '13817199469', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('892', '13868766052', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('893', '13564726410', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('894', '18917953321', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('895', '13916409711', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('896', '14781936336', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('897', '18721063473', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('898', '13661890681', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('899', '13918606858', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('900', '15902158214', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('901', '13501946200', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('902', '13524291182', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('903', '13166080219', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('904', '13301951035', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('905', '13901651906', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('906', '13671683139', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('907', '15800688075', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('908', '13167146381', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('909', '13801911153', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('910', '18725542887', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('911', '18918590608', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('912', '13651779170', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('913', '13575334234', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('914', '18701960665', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('915', '13564355650', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('916', '13817626666', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('917', '13641619328', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('918', '13585909699', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('919', '18994503709', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('920', '18017528519', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('921', '15990559005', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('922', '13564150329', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('923', '15821697518', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('924', '15800587859', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('925', '13601906855', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('926', '13371971121', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('927', '13564998885', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('928', '15021106136', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('929', '15001857885', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('930', '15000831890', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('931', '13917804338', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('932', '18512111315', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('933', '15821286676', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('934', '13641730247', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('935', '13817539380', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('936', '15601923629', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('937', '18701839465', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('938', '13918700277', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('939', '13901827376', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('940', '15821740778', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('941', '18601701255', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('942', '13816645421', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('943', '15802183576', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('944', '15221745815', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('945', '13291283591', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('946', '13019234621', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('947', '15921546947', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('948', '13917036441', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('949', '13681934109', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('950', '13917468086', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('951', '18918791707', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('952', '18621802202', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('953', '18501618508', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('954', '18930367841', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('955', '13901699156', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('956', '18930396927', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('957', '18918032272', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('958', '15021911256', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('959', '13916673481', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('960', '13916699926', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('961', '18917010728', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('962', '13818923333', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('963', '13901616861', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('964', '13816802748', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('965', '13701756381', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('966', '13621988947', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('967', '13482611631', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('968', '13524515142', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('969', '13681903308', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('970', '13761602336', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('971', '15801805645', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('972', '13916031626', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('973', '13391288837', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('974', '13621912367', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('975', '18918883688', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('976', '13666666666', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('977', '13061721611', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('978', '13641922794', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('979', '13816730033', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('980', '15000220002', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('981', '13641610078', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('982', '13916865959', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('983', '13918821077', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('984', '13818473941', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('985', '15821026805', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('986', '13585768093', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('987', '13817999690', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('988', '13817742920', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('989', '13801918293', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('990', '13671651129', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('991', '13817689027', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('992', '13701663934', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('993', '13501828876', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('994', '13916688301', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('995', '13671711000', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('996', '13671694796', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('997', '13917565674', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('998', '15000300062', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('999', '13761279512', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1000', '15921336898', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1001', '13020156858', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1002', '13341790653', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1003', '13166255000', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1004', '13701828620', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1005', '13801706978', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1006', '13816906308', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1007', '13661582633', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1008', '13818196235', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1009', '13661987173', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1010', '13801621278', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1011', '13817041185', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1012', '13524643891', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1013', '13671536802', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1014', '15801864277', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1015', '13601603303', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1016', '13817962874', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1017', '13641631337', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1018', '13611660500', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1019', '13564395053', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1020', '13585865418', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1021', '15821636872', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1022', '13651986437', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1023', '13381911222', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1024', '13321982702', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1025', '13918607868', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1026', '18918535390', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1027', '18918565060', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1028', '15712117570', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1029', '18918518360', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1030', '18867852310', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1031', '13517524260', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1032', '13917865768', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1033', '18918516070', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1034', '13916804858', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1035', '13818654107', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1036', '15942117841', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1037', '13655432811', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1038', '15943228271', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1039', '18918521450', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1040', '13718453621', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1041', '15711017334', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1042', '13671983560', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1043', '13917868503', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1044', '13918575060', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1045', '15711018975', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1046', '13917894536', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1047', '13917954361', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1048', '13871654231', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1049', '13516758310', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1050', '13917544101', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1051', '18817654231', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1052', '13918575420', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1053', '18917560541', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1054', '18917535370', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1055', '15711012308', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1056', '13916236113', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1057', '13401084575', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1058', '13402074373', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1059', '13402081525', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1060', '13402083565', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1061', '13388911222', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1062', '13916024750', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1063', '13321922444', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1064', '13901724866', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1065', '13817689240', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1066', '13916024888', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1067', '13402062288', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1068', '13302064676', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1069', '13502083676', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1070', '13916332932', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1071', '13402093578', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1072', '13362180086', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1073', '13402077717', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1074', '15802164575', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1075', '13002152221', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1076', '13406013757', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1077', '13402018898', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1078', '13311730606', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1079', '13917257807', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1080', '15912777736', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1081', '13764693200', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1082', '18918575076', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1083', '13302014878', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1084', '13302073848', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1085', '13402024212', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1086', '13302084858', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1087', '13302074757', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1088', '13764629973', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1089', '18019216687', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1090', '13402013898', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1091', '13302054787', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1092', '13061718782', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1093', '13500083847', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1094', '13817041186', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1095', '15000838420', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1096', '15073859563', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1097', '13302087475', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1098', '15001828327', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1099', '15000838427', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1100', '15000828317', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1101', '15001834821', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1102', '13818183902', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1103', '13816810582', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1104', '15921777836', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1105', '13671754552', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1106', '15000848429', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1107', '15911777836', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1108', '13918666955', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1109', '13611658966', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1110', '13641758526', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1111', '13302074686', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1112', '13302081727', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1113', '13302014171', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1114', '13661990065', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1115', '13501681357', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1116', '13501681356', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1117', '15911177836', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1118', '13817815158', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1119', '13572638536', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1120', '13327028738', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1121', '13918090041', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1122', '13636697405', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1123', '13367786842', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1124', '13641836403', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1125', '13918555889', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1126', '13818332109', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1127', '13875736876', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1128', '13325087121', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1129', '15922777736', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1130', '13122667993', 'dsadsadsadsadsads', '1', '2018-05-31 11:31:59');
INSERT INTO `blacklist` VALUES ('1131', '13402094212', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1132', '13817855152', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1133', '13002154444', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1134', '13402014898', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1135', '13818291970', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1136', '13002212211', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1137', '13915223920', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1138', '13916141858', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1139', '13875312897', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1140', '13002152223', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1141', '13585747696', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1142', '15901919700', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1143', '13601681355', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1144', '13501617565', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1145', '13001681113', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1146', '13818915373', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1147', '13002162223', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1148', '13916559286', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1149', '15211221892', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1150', '13918626858', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1151', '13917087534', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1152', '13316997178', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1153', '13611897971', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1154', '13617562201', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1155', '18918523360', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1156', '18918533360', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1157', '13564390498', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1158', '15078535387', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1159', '13002132123', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1160', '13002148406', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1161', '15912777735', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1162', '13761103869', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1163', '13636522897', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1164', '13918616858', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1165', '13501681368', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1166', '13601617584', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1167', '15921117736', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1168', '13003236916', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1169', '13561618782', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1170', '13538795321', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1171', '13901624059', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1172', '15000828685', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1173', '13564390499', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1174', '13901624055', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1175', '15000808299', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1176', '13918702817', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1177', '13611830161', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1178', '13916806858', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1179', '15816905082', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1180', '13122667999', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1181', '13701678219', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1182', '18964796859', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1183', '13728293273', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1184', '13918605867', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1185', '13918676350', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1186', '13918758638', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1187', '15821259778', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1188', '13918676945', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1189', '13002123432', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1190', '13918167546', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1191', '18918575123', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1192', '13917630266', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1193', '18930340030', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1194', '13002152321', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1195', '15801981564', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1196', '18918575069', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1197', '18918513390', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1198', '13664390498', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1199', '15800803732', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1200', '13671875003', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1201', '15000828699', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1202', '15000818298', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1203', '18787155173', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1204', '15002286785', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1205', '13875366237', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1206', '13601617583', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1207', '13340800821', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1208', '13308804082', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1209', '13008688302', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1210', '13817855153', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1211', '13601617589', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1212', '13045682559', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1213', '13308066829', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1214', '13308198280', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1215', '15000213542', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1216', '15000838211', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1217', '13586851455', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1218', '13601816583', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1219', '13057897689', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1220', '13601617522', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1221', '13621988246', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1222', '13402074585', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1223', '13122668830', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1224', '15234785293', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1225', '13564390466', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1226', '13875325827', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1227', '13817978913', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1228', '13501681351', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1229', '13403085747', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1230', '13122667995', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1231', '13651800101', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1232', '13311648218', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1233', '15821636899', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1234', '15800734413', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1235', '13918071856', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1236', '15821636777', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1237', '15821636878', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1238', '15821636875', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1239', '15821636798', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1240', '13524305818', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1241', '13916073396', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1242', '13761103860', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1243', '13585747695', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1244', '13817631896', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1245', '13701806623', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1246', '15800487751', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1247', '13002132223', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1248', '15800431595', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1249', '13301872356', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1250', '15000828199', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1251', '13501768565', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1252', '13601617523', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1253', '13701507252', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1254', '13301609509', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1255', '13651808411', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1256', '15502126522', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1257', '15021636878', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1258', '15618317732', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1259', '13301526780', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1260', '15821484680', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1261', '13916684599', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1262', '15000828211', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1263', '13325671911', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1264', '15000889961', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1265', '15000833280', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1266', '15800838896', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1267', '15000889921', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1268', '15821936877', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1269', '13816857655', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1270', '15000110028', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1271', '15000889911', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1272', '15000878911', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1273', '13917882640', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1274', '15387988212', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1275', '13817876554', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1276', '13585757011', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1277', '13661880974', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1278', '18918059148', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1279', '15026584943', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1280', '18621333600', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1281', '15221964669', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1282', '13478136777', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1283', '18721177656', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1284', '13901786450', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1285', '13661770660', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1286', '13331851731', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1287', '13917733536', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1288', '15026647245', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1289', '13585663325', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1290', '13601893625', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1291', '13482301705', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1292', '13917305656', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1293', '15000639957', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1294', '13917003592', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1295', '15902141555', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1296', '13585918195', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1297', '13472508009', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1298', '13764958161', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1299', '13581675531', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1300', '15000828139', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1301', '13402064898', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1302', '13402025326', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1303', '13801562231', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1304', '13501981356', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1305', '15821636988', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1306', '13917177672', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1307', '15821636898', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1308', '13801615362', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1309', '13801816533', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1310', '13916938030', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1311', '13918666958', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1312', '13641947005', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1313', '13020212625', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1314', '18601705806', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1315', '15921768785', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1316', '13817598510', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1317', '13120788662', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1318', '13701976661', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1319', '13795375053', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1320', '13901831615', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1321', '13585501829', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1322', '13801929584', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1323', '13761363369', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1324', '13788953865', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1325', '13901808291', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1326', '13917277889', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1327', '18621183567', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1328', '13482301704', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1329', '15900568122', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1330', '13671903591', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1331', '13671888890', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1332', '13761620170', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1333', '13564878752', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1334', '13901884942', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1335', '18701858808', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1336', '13818949941', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1337', '13023119225', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1338', '13636436545', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1339', '13621723558', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1340', '13917606196', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1341', '18623151855', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1342', '15162131567', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1343', '15026873983', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1344', '13918987757', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1345', '15921085838', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1346', '13636641305', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1347', '13661848562', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1348', '13901798138', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1349', '13917106140', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1350', '13585979105', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1351', '13774201960', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1352', '18605178829', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1353', '13701802078', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1354', '13971665994', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1355', '13801860730', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1356', '13817667462', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1357', '13918432313', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1358', '18916741002', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1359', '13816983501', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1360', '15921218297', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1361', '13501681355', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1362', '13601617588', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1363', '18917872260', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1364', '13601907733', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1365', '18745222222', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1366', '13661712979', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1367', '13901932849', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1368', '18616511516', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1369', '13901956246', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1370', '13818404004', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1371', '13585598996', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1372', '13651811188', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1373', '15901722424', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1374', '15026655095', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1375', '13564486157', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1376', '15601861196', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1377', '13764463955', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1378', '18918938605', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1379', '13816938603', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1380', '13817959291', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1381', '13918988519', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1382', '13701731395', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1383', '13248115675', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1384', '13661671194', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1385', '15802150568', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1386', '18601690909', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1387', '13817877083', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1388', '13801954709', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1389', '13775710888', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1390', '13962203393', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1391', '13916541327', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1392', '13901714603', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1393', '17317674565', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1394', '15618598428', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1395', '13817570760', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1396', '13817091898', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1397', '13636696660', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1398', '13918910255', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1399', '13775757195', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1400', '18918831766', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1401', '13817792287', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1402', '15000440553', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1403', '13816884216', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1404', '13817296998', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1405', '18721353530', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1406', '13818976905', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1407', '15800739609', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1408', '17717325810', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1409', '18918829038', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1410', '13916511074', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1411', '13901844630', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1412', '18521080349', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1413', '13795220063', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1414', '13917983970', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1415', '13501760985', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1416', '18918328309', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1417', '13917322275', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1418', '13901629342', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1419', '13918548620', 'dsadsadsadsadsads', '1', '2018-05-31 11:32:01');
INSERT INTO `blacklist` VALUES ('1504', '18226619775', 'dsadsadsadsadsads', '1', '2018-05-31 13:09:27');
INSERT INTO `blacklist` VALUES ('1548', '15301809913', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1549', '15221649391', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1550', '15901916660', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1552', '18918007748', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1553', '13701836188', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1554', '13817603008', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1555', '18226619775', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1556', '13901954870', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1557', '13817432558', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1558', '15316008317', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1559', '13761559791', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1560', '13818118428', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1561', '13817784736', 'dsadsadsadsadsads', '1111111', '2018-05-31 18:02:47');
INSERT INTO `blacklist` VALUES ('1569', '15300733125', 'dsadsadsadsadsads', '1', '2018-06-04 19:53:57');
INSERT INTO `blacklist` VALUES ('1570', '13564173998', 'dsadsadsadsadsads', '1', '2018-06-04 19:53:57');
INSERT INTO `blacklist` VALUES ('1571', '18221413114', 'dsadsadsadsadsads', '1', '2018-06-04 19:53:57');
INSERT INTO `blacklist` VALUES ('1572', '13585544324', '5225a4996038b50147000001', '37', '2018-06-05 16:12:20');
INSERT INTO `blacklist` VALUES ('1576', '13061910039', '5225a4996038b50147000001', '37', '2018-06-05 16:17:21');

-- ----------------------------
-- Table structure for `frog_zhengjia_activity_record`
-- ----------------------------
DROP TABLE IF EXISTS `frog_zhengjia_activity_record`;
CREATE TABLE `frog_zhengjia_activity_record` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '青蛙活动消息扩展表主键ID',
  `activity_id` int(20) DEFAULT NULL COMMENT '活动ID',
  `play_record_base_id` int(20) DEFAULT NULL COMMENT '活动表的基础信息表的id',
  `answer` varchar(255) DEFAULT NULL COMMENT '记录活动中的用户输入的答案',
  `answer_time` datetime DEFAULT NULL COMMENT '提交答案时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='青蛙活动消息扩展表';

-- ----------------------------
-- Records of frog_zhengjia_activity_record
-- ----------------------------
INSERT INTO `frog_zhengjia_activity_record` VALUES ('1', '49', '164', '10', '2018-07-17 18:02:31');
INSERT INTO `frog_zhengjia_activity_record` VALUES ('2', '49', '164', 'daaaaaa', '2018-07-17 18:03:07');
INSERT INTO `frog_zhengjia_activity_record` VALUES ('3', '49', '164', '22222222', '2018-07-17 18:03:23');
INSERT INTO `frog_zhengjia_activity_record` VALUES ('4', '49', '165', '9999999', '2018-07-17 18:03:36');
INSERT INTO `frog_zhengjia_activity_record` VALUES ('5', '49', '166', '组织者9', '2018-07-18 14:48:37');

-- ----------------------------
-- Table structure for `frog_zhengjia_activity_record_log`
-- ----------------------------
DROP TABLE IF EXISTS `frog_zhengjia_activity_record_log`;
CREATE TABLE `frog_zhengjia_activity_record_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `latest_record` int(11) DEFAULT NULL COMMENT '修改前的记录数',
  `extra_record` int(11) DEFAULT NULL COMMENT '增加的记录数',
  `operate_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='人工修改青蛙活动操作流水记录表';

-- ----------------------------
-- Records of frog_zhengjia_activity_record_log
-- ----------------------------
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('1', '49', null, '2', '100', '2018-07-17 18:05:05');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('2', '49', null, '0', '100', '2018-07-17 18:08:29');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('3', '49', null, '100', '100', '2018-07-17 18:08:31');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('4', '49', null, '200', '100', '2018-07-17 18:08:32');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('5', '49', null, '300', '100', '2018-07-17 18:08:33');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('6', '49', null, '400', '100', '2018-07-17 18:08:33');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('7', '49', null, '500', '100', '2018-07-17 18:08:34');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('8', '49', null, '600', '100', '2018-07-17 18:08:34');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('9', '49', null, '700', '100', '2018-07-17 18:08:34');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('10', '49', null, '800', '100', '2018-07-17 18:08:35');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('11', '49', null, '900', '100', '2018-07-17 18:08:35');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('12', '49', null, '0', '100', '2018-07-18 14:47:01');
INSERT INTO `frog_zhengjia_activity_record_log` VALUES ('13', '49', null, '100', '11', '2018-07-18 14:47:21');

-- ----------------------------
-- Table structure for `guess_record`
-- ----------------------------
DROP TABLE IF EXISTS `guess_record`;
CREATE TABLE `guess_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) NOT NULL COMMENT '微信openid(用户id)',
  `record_id` int(11) NOT NULL COMMENT '参与id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `worldcup_team_id` int(11) NOT NULL DEFAULT '0' COMMENT '竞猜胜利的球队的id(0 表示猜平局)',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='竞猜结果记录表';

-- ----------------------------
-- Records of guess_record
-- ----------------------------
INSERT INTO `guess_record` VALUES ('1', 'olH54xIPGPplEQRdeI41fBrbfxFI', '123', '10', '9', '2018-06-11 15:58:04', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('2', 'olH54xIPGPplEQRdeI41fBrbfxFI', '124', '25', '0', '2018-06-11 15:58:07', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('3', 'olH54xIKPaF2rjZsxH7g0CcJljbY', '515', '40', '0', '2018-06-11 17:50:21', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('4', 'olH54xG-DM1M34vbAiEUI1cCyITc', '516', '40', '14', '2018-06-21 14:44:34', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('5', 'olH54xGKJnHCJOaBf5-1-lm_R5x0', '517', '40', '14', '2018-06-21 14:44:38', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('6', 'olH54xOQeu2dzi-sE9VhhwvfxdSs', '518', '40', '13', '2018-06-11 19:05:29', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('7', 'olH54xLPS31dk6j7DlR_bcbuAuVU', '519', '40', '13', '2018-06-11 19:10:16', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('8', 'olH54xO1CagvpTRUFP6qVTX9LPi4', '520', '40', '13', '2018-06-12 10:10:04', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('9', 'olHdsdasdasdasd', '534', '40', '13', '2018-06-21 17:13:12', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('13', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '538', '40', '13', '2018-06-23 14:32:42', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('28', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '553', '57', '45', '2018-06-25 14:44:59', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('29', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '554', '56', '43', '2018-06-25 18:19:06', '0000-00-00 00:00:00');
INSERT INTO `guess_record` VALUES ('30', '', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `launch_record`
-- ----------------------------
DROP TABLE IF EXISTS `launch_record`;
CREATE TABLE `launch_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `merchant_id` varchar(64) NOT NULL DEFAULT '' COMMENT '商场id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `position` varchar(32) NOT NULL DEFAULT '' COMMENT '点位&渠道',
  `position_url` varchar(64) NOT NULL DEFAULT '' COMMENT '地址',
  `create_by` varchar(32) NOT NULL DEFAULT '' COMMENT '创建人',
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_position` (`position`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='活动投放';

-- ----------------------------
-- Records of launch_record
-- ----------------------------
INSERT INTO `launch_record` VALUES ('1', '54f403eae4b002000cf63762', '12', '1224', '', '', '0000-00-00 00:00:00', '2018-05-25 11:58:38');
INSERT INTO `launch_record` VALUES ('4', '200', '13', '1224', 'baidu', 'xuepeng', '2018-05-18 13:44:37', '2018-05-25 11:58:40');
INSERT INTO `launch_record` VALUES ('5', '200', '14', '1224', 'baidu', 'xuepeng', '2018-05-18 16:46:56', '2018-05-25 11:58:42');
INSERT INTO `launch_record` VALUES ('6', '200', '15', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:10', '2018-05-25 11:58:45');
INSERT INTO `launch_record` VALUES ('7', '200', '16', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:12', '2018-05-25 11:58:47');
INSERT INTO `launch_record` VALUES ('8', '200', '20', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:14', '2018-05-18 16:47:14');
INSERT INTO `launch_record` VALUES ('9', '200', '20', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:15', '2018-05-18 16:47:15');
INSERT INTO `launch_record` VALUES ('10', '200', '20', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:16', '2018-05-18 16:47:16');
INSERT INTO `launch_record` VALUES ('11', '200', '20', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:17', '2018-05-18 16:47:17');
INSERT INTO `launch_record` VALUES ('12', '200', '20', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:19', '2018-05-18 16:47:19');
INSERT INTO `launch_record` VALUES ('13', '200', '20', '1224', 'baidu', 'xuepeng', '2018-05-18 16:47:20', '2018-05-18 16:47:20');
INSERT INTO `launch_record` VALUES ('14', '200', '13', '1224', 'baidu', 'xuepeng', '2018-05-24 16:47:21', '2018-05-25 11:58:55');
INSERT INTO `launch_record` VALUES ('15', '200', '14', '1224', 'baidu', 'xuepeng', '2018-05-22 16:47:43', '2018-05-25 11:58:57');

-- ----------------------------
-- Table structure for `play_record`
-- ----------------------------
DROP TABLE IF EXISTS `play_record`;
CREATE TABLE `play_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `openid` varchar(32) NOT NULL DEFAULT '' COMMENT '微信openid',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '参与手机号',
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '电子会员uid',
  `username` varchar(64) DEFAULT NULL,
  `session_id` varchar(64) DEFAULT NULL,
  `channel` varchar(64) DEFAULT '' COMMENT '参与渠道',
  `ticket_no` varchar(16) DEFAULT '' COMMENT '票号',
  `point` int(11) DEFAULT '0' COMMENT '参与消耗积分',
  `score` int(11) DEFAULT '0' COMMENT '参与得分',
  `platform` tinyint(4) NOT NULL DEFAULT '0' COMMENT '参与渠道:1-互动屏,2-微信',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `rank` int(11) DEFAULT NULL COMMENT '排名',
  `mall_id` varchar(255) DEFAULT NULL COMMENT 'mallId',
  `nickname` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `codenickname` varchar(255) DEFAULT NULL COMMENT 'base64昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8 COMMENT='参与记录表';

-- ----------------------------
-- Records of play_record
-- ----------------------------
INSERT INTO `play_record` VALUES ('134', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('135', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('136', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('137', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('138', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('139', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('140', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('141', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('142', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('143', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('144', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('145', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('146', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('147', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('148', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('149', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('150', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('151', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('152', '1', '', '', '0', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('153', '1', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('154', '43', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('155', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('156', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('157', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('159', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('160', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('161', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('162', '18', '', '', '1', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('163', '18', '', '', '12', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('164', '18', '', '', '12', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('165', '18', '', '', '13', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('166', '18', '', '', '13', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('167', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('168', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('169', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('170', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('171', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('172', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('173', '18', '', '', '14', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('174', '18', '', '', '15', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('175', '18', '', '', '15', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('176', '18', '', '', '13671521', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('177', '18', '', '', '13671521', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('178', '18', '', '', '17', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('179', '18', '', '', '13671521', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('180', '18', '', '', '13671523', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('181', '18', '', '', '13671522', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('182', '18', '', '', '13671521', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('183', '18', '', '', '13671522', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('184', '18', '', '', '13671523', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('185', '18', '', '', '13671521', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('186', '18', '', '', '17', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('187', '18', '', '', '18', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('188', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('189', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('190', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('191', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('192', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('193', '18', '', '', '13671522', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('194', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('195', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('196', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('197', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('198', '18', '', '', '13671521', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('199', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('200', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('201', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('202', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('203', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('204', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('205', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('206', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('207', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('208', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('209', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('210', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('211', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('212', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('213', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('214', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('215', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('216', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('217', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('218', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('219', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('220', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('221', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('222', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('223', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('224', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('225', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('226', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('227', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('228', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('229', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('230', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('231', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('232', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('233', '18', '', '', '45200000154', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('234', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('235', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('236', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('237', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('238', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('239', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('240', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('241', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('242', '18', '', '', '16900001223', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('243', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('244', '20', '', '', '123', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('245', '20', '', '', '123', null, null, '', '', '0', '0', '0', '0000-00-00 00:00:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('246', '20', '', '', '1', null, null, '', '', '0', '0', '0', null, null, null, null, null, null);
INSERT INTO `play_record` VALUES ('247', '20', '', '', '1', null, null, '', '', '0', '0', '0', '2018-05-13 15:05:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('248', '20', '', '', '888', null, null, '', '', '0', '0', '0', '2018-05-13 15:06:02', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('249', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:06:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('250', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:07:31', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('251', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:10:15', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('252', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:13:49', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('253', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:15:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('254', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:20:14', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('255', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:20:35', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('256', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 15:21:37', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('257', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:34:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('258', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:36:19', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('259', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:34', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('260', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:44', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('261', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('262', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('263', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('264', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('265', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('266', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-13 16:45:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('267', '20', '', '', '45200000019', null, null, '', '', '0', '0', '0', '2018-05-13 17:40:02', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('268', '20', '', '', '45200000019', null, null, '', '', '0', '0', '0', '2018-05-13 18:17:18', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('269', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:41:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('270', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:42:04', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('271', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:43:15', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('272', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:44:07', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('273', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:51:33', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('274', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:54:48', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('275', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 19:59:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('276', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 20:01:09', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('277', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 20:03:18', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('278', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 20:03:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('279', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-13 20:08:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('280', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:00:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('281', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:02:12', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('282', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:02:43', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('283', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:03:02', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('284', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:03:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('285', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:04:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('286', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 10:05:27', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('287', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 14:37:33', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('288', '20', '', '', '45200000019', null, null, '', '', '0', '0', '0', '2018-05-14 15:01:44', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('289', '20', '', '', '45200000019', null, null, '', '', '0', '0', '0', '2018-05-14 15:02:40', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('290', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-14 15:03:26', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('291', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-14 15:06:30', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('292', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-14 15:10:37', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('293', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-14 15:17:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('294', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:37:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('295', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:38:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('296', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:38:56', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('297', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:38:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('298', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:38:58', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('299', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:38:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('300', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('301', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('302', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('303', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('304', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:20', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('305', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('306', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('307', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('308', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('309', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('310', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('311', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('312', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('313', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:50', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('314', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('315', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('316', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('317', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:54', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('318', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:55', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('319', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:56', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('320', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:56', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('321', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-14 16:39:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('322', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:04:30', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('323', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:16', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('324', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:19', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('325', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:20', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('326', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('327', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('328', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('329', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-15 10:05:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('330', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-30 10:05:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('331', '20', '', '', '8888', null, null, '', '', '0', '0', '0', '2018-05-30 10:05:25', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('332', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-30 13:58:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('333', '20', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-05-31 13:59:12', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('334', '38', '', '', '1234', null, null, '', '', '0', '59', '0', '2018-05-31 10:38:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('335', '38', '', '', '12', null, null, '', '', '0', '45', '0', '2018-05-31 10:48:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('336', '38', '', '', '13', null, null, '', '', '0', '23', '0', '2018-05-31 10:48:13', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('337', '38', '', '', '14', null, null, '', '', '0', '78', '0', '2018-05-31 10:48:18', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('338', '38', '', '', '15', null, null, '', '', '0', '234', '0', '2018-05-31 10:48:21', '7', null, null, null, null);
INSERT INTO `play_record` VALUES ('339', '38', '', '', '16', null, null, '', '', '0', '99', '0', '2018-05-31 10:48:26', '4', null, null, null, null);
INSERT INTO `play_record` VALUES ('340', '38', '', '', '32', null, null, '', '', '0', '234', '0', '2018-05-31 16:21:34', '7', null, null, null, null);
INSERT INTO `play_record` VALUES ('341', '38', '', '', '27', null, null, '', '', '0', '234', '0', '2018-05-31 16:46:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('342', '12', '', '', '45200000155', null, null, '', '', '0', '0', '0', '2018-06-02 10:45:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('343', '1', '', '', '0', null, null, '', '1234', '0', '0', '0', '2018-06-04 16:00:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('344', '25', '', '', '123', null, null, '', '', '0', '0', '0', '2018-06-04 16:41:43', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('345', '25', '', '', '123', null, null, '', '', '0', '0', '0', '2018-06-04 16:41:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('346', '25', '', '', '123', null, null, '', '', '0', '0', '0', '2018-06-04 16:48:58', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('347', '25', '', '', '1234', null, null, '', '', '0', '0', '0', '2018-06-04 16:49:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('348', '20', '', '', '1234', null, null, '', '', '0', '0', '0', '2018-06-04 16:50:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('349', '35', '', '', '1234', null, null, '', '', '0', '0', '0', '2018-06-04 16:51:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('350', '35', '', '', '1234', null, null, '', '', '0', '0', '0', '2018-06-04 16:55:26', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('351', '35', '', '', '1234', null, null, '', '', '0', '0', '0', '2018-06-04 17:04:38', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('352', '35', '', '', '1234', null, null, '', '', '0', '0', '0', '2018-06-04 17:22:26', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('353', '123', '', '', '0', null, null, '', '88888888', '0', '0', '0', '2018-06-04 17:25:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('354', '35', '', '', '12343', null, null, '', '', '0', '0', '0', '2018-06-04 17:26:33', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('355', '35', '', '', '1223', null, null, '', '', '0', '0', '0', '2018-06-04 17:29:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('356', '123', '', '', '0', null, null, '', '22222222', '0', '0', '0', '2018-06-04 17:30:34', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('357', '35', '', '', '1223', null, null, '', '', '0', '0', '0', '2018-06-04 17:36:35', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('358', '35', '', '', '1223', null, null, '', '', '0', '0', '0', '2018-06-04 17:37:05', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('359', '35', '', '', '1223', null, null, '', '', '0', '0', '0', '2018-06-04 17:37:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('360', '123', '', '', '0', null, null, '', '55522222', '0', '15', '0', '2018-06-24 17:47:39', null, '', '这周日', null, null);
INSERT INTO `play_record` VALUES ('361', '123', '', '', '0', null, null, '', '55555535', '0', '12', '0', '2018-06-17 18:45:19', null, null, '上周日', null, null);
INSERT INTO `play_record` VALUES ('362', '38', '', '', '19930111', null, null, '', '', '0', '50', '0', '2018-06-04 19:24:54', '1', null, null, null, null);
INSERT INTO `play_record` VALUES ('363', '38', '', '', '19920111', null, null, '', '', '0', '49', '0', '2018-06-04 19:43:52', '2', null, null, null, null);
INSERT INTO `play_record` VALUES ('364', '35', '', '', '1223', null, null, '', '', '0', '0', '0', '2018-06-04 19:48:31', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('365', '35', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-04 19:50:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('366', '35', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-04 19:51:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('367', '35', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-04 20:01:04', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('368', '35', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-04 20:04:18', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('369', '38', '', '', '199201122', null, null, '', '', '0', '36', '0', '2018-06-04 20:20:55', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('370', '38', '', '', '199201123', null, null, '', '', '0', '37', '0', '2018-06-04 20:21:05', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('371', '38', '', '', '199201124', null, null, '', '', '0', '27', '0', '2018-06-04 20:21:11', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('372', '38', '', '', '199201125', null, null, '', '', '0', '26', '0', '2018-06-04 20:21:16', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('373', '12', '', '', '1212', null, null, '', '', '0', '200', '0', '2018-06-05 10:03:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('374', '38', '', '', '9900222', null, null, '', '', '0', '47', '0', '2018-06-05 10:15:11', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('375', '35', '', '', '12343', null, null, '', '', '0', '0', '0', '2018-06-05 11:13:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('376', '35', 'fdasfasf', '', '12343', null, null, '', '', '0', '0', '0', '2018-06-05 11:15:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('377', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 15:44:17', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('378', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 15:44:26', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('379', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 15:46:40', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('380', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 15:48:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('381', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 15:48:33', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('382', '35', '', '', '0', null, null, '', '33333333', '0', '0', '0', '2018-06-05 15:49:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('383', '35', '', '', '0', null, null, '', '22222299', '0', '0', '0', '2018-06-05 16:07:31', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('384', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:20:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('385', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:20:40', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('386', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:20:54', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('387', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:20:56', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('388', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:22:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('389', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:22:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('390', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('391', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('392', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('393', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:04', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('394', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:05', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('395', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('396', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('397', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:07', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('398', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:08', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('399', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:09', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('400', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:11', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('401', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:11', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('402', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:12', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('403', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:13', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('404', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:14', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('405', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:15', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('406', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('407', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:23:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('408', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:24:02', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('409', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:24:09', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('410', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:24:11', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('411', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 16:24:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('412', '35', '', '', '0', null, null, '', '33333336', '0', '0', '0', '2018-06-05 17:38:31', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('413', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 18:01:40', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('414', '38', '', '', '46800111049', null, null, '', '', '0', '89', '0', '2018-06-05 18:30:46', null, null, '456', '123', null);
INSERT INTO `play_record` VALUES ('415', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:48:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('416', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:48:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('417', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:48:27', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('418', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:48:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('419', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:48:30', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('420', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:53:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('421', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:53:55', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('422', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:53:56', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('423', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:53:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('424', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:53:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('425', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:54:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('426', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:54:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('427', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:54:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('428', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 19:56:49', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('435', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 20:17:39', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('436', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 20:17:41', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('440', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:08:54', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('441', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:08:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('442', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:10:30', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('443', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:14:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('444', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:23:27', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('445', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:23:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('446', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:23:34', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('447', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:26:44', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('448', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:27:11', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('449', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:45', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('450', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:49', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('451', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:50', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('452', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:50', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('453', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:51', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('454', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('455', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('456', '37', '213fdsfgsdgsdhgfj', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:34:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('457', '1', '', '18221413114', '30', null, null, '', '20', '0', '0', '0', '2018-06-05 21:39:55', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('458', '37', '213fdsfgsdgsdhrearj', '', '40', null, null, '', '', '0', '0', '0', '2018-06-05 21:40:54', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('459', '37', '213fdsfgsdgsdh', '', '50', null, null, '', '', '0', '0', '0', '2018-06-05 21:40:55', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('460', '37', '213fdsfgsdgsdhhfdshhfgj', '', '55', null, null, '', '', '0', '0', '0', '2018-06-05 21:44:34', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('461', '37', '213fdsfgsdgsdhjhhfgj', '', '56', null, null, '', '', '0', '0', '0', '2018-06-05 21:44:39', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('462', '37', '213fdhhjjdgsdhre', '', '12', null, null, '', '', '0', '0', '0', '2018-06-05 21:44:51', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('463', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '45', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('464', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '56', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('465', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:06', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('466', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('467', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:23', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('468', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('469', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:46:25', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('470', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:17', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('471', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:19', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('472', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:34', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('473', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:36', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('474', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:37', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('475', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:38', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('476', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:39', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('477', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:40', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('478', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:42', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('479', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:43', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('480', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:44', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('481', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:47', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('482', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:48', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('483', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:49', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('484', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:51', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('485', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('486', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:56', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('487', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('488', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:58', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('489', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:47:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('490', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:48:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('491', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:48:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('492', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:48:55', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('493', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:48:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('494', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:48:58', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('495', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:49:10', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('496', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:49:13', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('497', '38', 'fdasfhghdshfhd', '11111111111', '0', null, null, '', '11111112', '0', '0', '0', '2018-06-05 21:53:22', null, null, '123', '456', null);
INSERT INTO `play_record` VALUES ('498', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:54:08', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('499', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:55:16', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('500', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:55:20', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('501', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:55:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('502', '37', 'oj-6xw0gsaKMFtcE-WPRaQjzWDgs', '', '0', null, null, '', '', '0', '0', '0', '2018-06-05 21:59:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('503', '38', 'fdasfhghdshfhd', '', '0', null, null, '', '', '0', '0', '0', '2018-06-06 11:16:16', null, null, '123', '456', null);
INSERT INTO `play_record` VALUES ('504', '121212', '', '', '46800000049', null, null, '', '', '0', '35', '0', '2018-06-06 11:20:19', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('505', '121212', '', '', '46800000051', null, null, '', '', '0', '5', '0', '2018-06-06 13:04:08', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('513', '75', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', '123123214124', null, null, '', '', '0', '366', '0', '2018-06-06 23:01:08', null, null, '、、、', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erhv77xbfauUC9wKwHOScXRGOIk9J3vXzUe7Dm2nvOm8AKWYTWNZEILm4BSFru0SgeV9h0XNZ3vng/132', null);
INSERT INTO `play_record` VALUES ('514', '76', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', '123123214124', null, null, '', '', '0', '100', '0', '2018-06-06 23:35:50', null, null, '、、、', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erhv77xbfauUC9wKwHOScXRGOIk9J3vXzUe7Dm2nvOm8AKWYTWNZEILm4BSFru0SgeV9h0XNZ3vng/132', null);
INSERT INTO `play_record` VALUES ('515', '40', 'olH54xIKPaF2rjZsxH7g0CcJljbY', '', '0', null, null, '', '', '0', '0', '0', '2018-06-11 17:50:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('516', '40', 'olH54xG-DM1M34vbAiEUI1cCyITc', '', '0', null, null, '', '', '0', '0', '0', '2018-06-11 18:45:24', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('517', '40', 'olH54xGKJnHCJOaBf5-1-lm_R5x0', '', '0', null, null, '', '', '0', '0', '0', '2018-06-11 18:51:03', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('518', '40', 'olH54xOQeu2dzi-sE9VhhwvfxdSs', '', '0', null, null, '', '', '0', '20', '0', '2018-06-11 19:05:29', null, null, 'dasd', 'dasda', null);
INSERT INTO `play_record` VALUES ('519', '40', 'olH54xLPS31dk6j7DlR_bcbuAuVU', '', '0', null, null, '', '', '0', '10', '0', '2018-06-11 19:10:16', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('520', '40', 'olH54xO1CagvpTRUFP6qVTX9LPi4', '', '0', null, null, '', '', '0', '10', '0', '2018-06-12 10:10:04', '6', null, null, null, null);
INSERT INTO `play_record` VALUES ('521', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('522', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('523', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('524', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('525', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('526', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('527', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('528', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('529', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('530', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('531', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('532', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('533', '123', '', '', '0', null, null, '', '', '0', '0', '0', '2018-06-19 10:45:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('534', '40', 'olHdsdasdasdasd', '', '0', null, null, '', '', '0', '0', '0', '2018-06-21 17:13:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('538', '40', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-23 14:32:42', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('539', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:10:42', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('540', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:18:18', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('541', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:18:50', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('542', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:18:51', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('543', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:18:52', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('544', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:18:52', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('545', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:18:52', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('546', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:19:25', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('547', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:20:02', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('548', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:20:16', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('549', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:20:59', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('550', '51', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:21:37', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('551', '53', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '10', '0', '2018-06-25 14:22:42', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('552', '52', 'dada', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 14:38:17', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('553', '57', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '10', '0', '2018-06-25 14:44:59', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('554', '56', 'olH54xP_ICpiMbZ2PKBbkIwwSftk', '', '0', null, null, '', '', '0', '0', '0', '2018-06-25 18:19:06', null, null, '晕血的小蚊子', 'http://thirdwx.qlogo.cn/mmopen/vi_32/0RbHHMMSlgSrwcnrlGrU1IVFe3empLnnvyY6XJDdaqKw4v6PyaSYzSLiasAMLLvpGAgtrgtkDpibVc7U7ufAJbyA/132', null);
INSERT INTO `play_record` VALUES ('555', '58', '', '', '15000852470', null, null, '', '', '0', '0', '0', '2018-06-27 14:24:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('556', '58', '', '', '15000852470', null, null, '', '', '0', '0', '0', '2018-06-27 14:25:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('557', '58', '', '', '15000852470', null, null, '', '', '0', '0', '0', '2018-06-27 14:25:22', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('558', '58', '', '', '15000852470', null, null, '', '', '0', '0', '0', '2018-06-27 14:27:50', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('559', '58', '', '', '15000852470', null, null, '', '', '0', '0', '0', '2018-06-27 14:28:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('560', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 14:36:17', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('561', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 14:37:52', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('562', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 14:40:46', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('563', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 15:03:31', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('564', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 15:35:21', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('565', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 15:40:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('566', '58', '', '18717878626', '0', null, null, '', '', '0', '0', '0', '2018-06-27 16:23:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('567', '58', '', '15000852470', '0', null, null, '', '', '0', '0', '0', '2018-06-27 16:56:40', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('568', '58', '', '13851650041', '0', null, null, '', '', '0', '0', '0', '2018-06-27 16:58:34', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('569', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-27 17:01:10', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('570', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-27 17:03:19', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('571', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 10:19:09', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('572', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 10:20:10', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('573', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 10:27:36', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('574', '58', '', '15837878181', '0', null, null, '', '111111', '0', '0', '0', '2018-06-28 10:52:59', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('575', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 10:56:33', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('576', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 10:56:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('577', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 10:59:29', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('578', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 11:02:18', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('579', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 11:03:01', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('580', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 11:04:02', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('581', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:00:19', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('582', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:04:57', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('583', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:09:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('584', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:10:53', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('585', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:27:50', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('586', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:30:17', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('587', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:37:13', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('588', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:40:14', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('589', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 16:44:51', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('590', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 17:01:07', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('591', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 17:02:00', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('592', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 17:21:04', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('593', '58', '', '13851650041', '0', null, null, '', '', '0', '0', '0', '2018-06-28 17:22:42', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('594', '58', '', '18521054106', '0', null, null, '', '', '0', '0', '0', '2018-06-28 17:29:13', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('595', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 18:35:43', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('596', '58', '', '15837878181', '0', null, null, '', '', '0', '0', '0', '2018-06-28 18:39:08', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('597', '40', 'aaaaa', '', '123456', null, null, '', '', '0', '0', '0', '2018-07-03 15:43:22', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('598', '40', 'aaaaa', '', '123456', null, null, '', '', '0', '0', '0', '2018-07-03 15:45:06', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('599', '40', 'aaaaa', '', '123456', null, null, '', '', '0', '0', '0', '2018-07-03 15:45:19', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('600', '40', 'bbbbb', '', '12345678', null, null, '', '', '0', '0', '0', '2010-07-03 15:47:38', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('601', '40', 'bbbbb', '', '12345678', null, null, '', '', '0', '0', '0', '2010-07-03 15:47:51', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('602', '40', 'bbbbb', '', '12345678', null, null, '', '', '0', '0', '0', '2010-07-03 15:47:57', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('603', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '45', '0', '2018-07-03 15:59:59', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('604', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '34', '0', '2018-07-03 16:00:50', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('605', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-03 17:21:13', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('606', '40', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', '0', null, null, '', '', '0', '0', '0', '2018-07-04 13:59:28', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/5x0vbFtwbbBKvTEdUqcia255wGA2R6t3txiaTHwu7DePIoLtFdKibb24U5huhRLzrr19QVfRgLS9ib0t2T7JOl1Mprc3bvY30Xbe/132', '5omT5byA5pe25YWJ');
INSERT INTO `play_record` VALUES ('607', '40', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', '0', null, null, '', '', '0', '40', '0', '2018-07-04 13:59:42', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/5x0vbFtwbbBKvTEdUqcia255wGA2R6t3txiaTHwu7DePIoLtFdKibb24U5huhRLzrr19QVfRgLS9ib0t2T7JOl1Mprc3bvY30Xbe/132', '5omT5byA5pe25YWJ');
INSERT INTO `play_record` VALUES ('608', '40', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', '0', null, null, '', '', '0', '160', '0', '2018-07-04 14:06:53', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/5x0vbFtwbbBKvTEdUqcia255wGA2R6t3txiaTHwu7DePIoLtFdKibb24U5huhRLzrr19QVfRgLS9ib0t2T7JOl1Mprc3bvY30Xbe/132', '5omT5byA5pe25YWJ');
INSERT INTO `play_record` VALUES ('609', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-04 14:16:44', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('610', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-04 14:16:48', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('611', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-04 14:16:49', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('612', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-04 14:16:50', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('613', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-04 14:16:52', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('614', '40', 'ccccc', '', '123456789', null, null, '', '', '0', '35', '0', '2018-07-04 14:16:53', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('615', '40', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', '0', null, null, '', '', '0', '140', '0', '2018-07-04 14:17:26', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/5x0vbFtwbbBKvTEdUqcia255wGA2R6t3txiaTHwu7DePIoLtFdKibb24U5huhRLzrr19QVfRgLS9ib0t2T7JOl1Mprc3bvY30Xbe/132', '5omT5byA5pe25YWJ');
INSERT INTO `play_record` VALUES ('616', '40', 'oTZNDwBItVW1kID4NFg00Jy010PA', '', '0', null, null, '', '', '0', '135', '0', '2018-07-04 14:32:55', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmB9vUkasiar2Drv6iasys1yZXLgdb7wEeeoI3A3yGxIHicbcdH9lzALCWGO0WWOKRck7NXnhd4tLibw/132', 'Vml2aQ==');
INSERT INTO `play_record` VALUES ('617', '40', 'oTZNDwBItVW1kID4NFg00Jy010PA', '', '0', null, null, '', '', '0', '0', '0', '2018-07-04 14:42:01', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmB9vUkasiar2Drv6iasys1yZXLgdb7wEeeoI3A3yGxIHicbcdH9lzALCWGO0WWOKRck7NXnhd4tLibw/132', 'Vml2aQ==');
INSERT INTO `play_record` VALUES ('618', '40', 'oTZNDwBItVW1kID4NFg00Jy010PA', '', '0', null, null, '', '', '0', '55', '0', '2018-07-04 14:42:35', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmB9vUkasiar2Drv6iasys1yZXLgdb7wEeeoI3A3yGxIHicbcdH9lzALCWGO0WWOKRck7NXnhd4tLibw/132', 'Vml2aQ==');
INSERT INTO `play_record` VALUES ('619', '40', 'oTZNDwBItVW1kID4NFg00Jy010PA', '', '0', null, null, '', '', '0', '225', '0', '2018-07-04 14:44:25', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmB9vUkasiar2Drv6iasys1yZXLgdb7wEeeoI3A3yGxIHicbcdH9lzALCWGO0WWOKRck7NXnhd4tLibw/132', 'Vml2aQ==');
INSERT INTO `play_record` VALUES ('620', '40', 'oTZNDwBItVW1kID4NFg00Jy010PA', '', '0', null, null, '', '', '0', '0', '0', '2018-07-04 14:44:36', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmB9vUkasiar2Drv6iasys1yZXLgdb7wEeeoI3A3yGxIHicbcdH9lzALCWGO0WWOKRck7NXnhd4tLibw/132', 'Vml2aQ==');
INSERT INTO `play_record` VALUES ('621', '40', 'oTZNDwBItVW1kID4NFg00Jy010PA', '', '0', null, null, '', '', '0', '135', '0', '2018-07-04 14:45:41', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLmB9vUkasiar2Drv6iasys1yZXLgdb7wEeeoI3A3yGxIHicbcdH9lzALCWGO0WWOKRck7NXnhd4tLibw/132', 'Vml2aQ==');
INSERT INTO `play_record` VALUES ('622', '20', 'xuepeng', '', '0', null, null, '', '', '0', '35', '0', '2018-07-04 15:19:01', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('623', '20', 'xuepeng', '', '0', null, null, '', '', '0', '0', '0', '2018-07-04 15:21:28', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('624', '20', 'xuepeng', '', '0', null, null, '', '', '0', '35', '0', '2018-07-04 15:21:45', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('625', '20', 'xuepeng', '', '0', null, null, '', '', '0', '0', '0', '2018-07-04 15:22:10', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('626', '20', 'xuepeng', '', '0', null, null, '', '', '0', '0', '0', '2018-07-04 15:22:18', null, null, null, null, null);
INSERT INTO `play_record` VALUES ('627', '20', 'xuepeng', '', '0', null, null, '', '', '0', '35', '0', '2018-07-04 15:22:26', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('628', '40', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', '0', null, null, '', '', '0', '110', '0', '2018-07-04 15:37:49', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/5x0vbFtwbbBKvTEdUqcia255wGA2R6t3txiaTHwu7DePIoLtFdKibb24U5huhRLzrr19QVfRgLS9ib0t2T7JOl1Mprc3bvY30Xbe/132', '5omT5byA5pe25YWJ');
INSERT INTO `play_record` VALUES ('629', '40', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', '0', null, null, '', '', '0', '180', '0', '2018-07-04 15:48:10', null, null, null, 'http://thirdwx.qlogo.cn/mmopen/5x0vbFtwbbBKvTEdUqcia255wGA2R6t3txiaTHwu7DePIoLtFdKibb24U5huhRLzrr19QVfRgLS9ib0t2T7JOl1Mprc3bvY30Xbe/132', '5omT5byA5pe25YWJ');
INSERT INTO `play_record` VALUES ('630', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '35', '0', '2018-07-04 21:19:43', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('631', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '35', '0', '2018-07-04 21:22:22', null, null, null, 'url', 'bmljaw==');
INSERT INTO `play_record` VALUES ('632', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 11:53:25', null, null, null, 'www.baidu.com', '19PSuQ==');
INSERT INTO `play_record` VALUES ('633', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 11:54:22', null, null, null, 'www.baidu.com', '19PSuQ==');
INSERT INTO `play_record` VALUES ('634', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 11:54:26', null, null, null, 'www.baidu.com', '19PSuQ==');
INSERT INTO `play_record` VALUES ('635', '40', 'ssd', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 12:53:48', null, null, null, 'www.baidu.com', '19PSuQ==');
INSERT INTO `play_record` VALUES ('636', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 13:08:53', null, null, null, 'www.baidu.com', '19PSuQ==');
INSERT INTO `play_record` VALUES ('637', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 13:09:08', null, null, null, 'www.baidu.com', '19PSuQ==');
INSERT INTO `play_record` VALUES ('638', '40', 'ozIumuGDTUZy1I1xGzIdfMkEHDiQ', '', '0', null, null, '', '', '0', '50', '0', '2018-07-05 13:09:15', null, null, null, 'www.baidu.com', '19PSuQ==');

-- ----------------------------
-- Table structure for `play_record_base`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base`;
CREATE TABLE `play_record_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base
-- ----------------------------
INSERT INTO `play_record_base` VALUES ('2', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:25:15');
INSERT INTO `play_record_base` VALUES ('3', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:26:05');
INSERT INTO `play_record_base` VALUES ('4', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:31:26');
INSERT INTO `play_record_base` VALUES ('5', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:41:36');
INSERT INTO `play_record_base` VALUES ('6', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:52:38');
INSERT INTO `play_record_base` VALUES ('7', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:53:14');
INSERT INTO `play_record_base` VALUES ('8', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('9', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('10', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('11', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('12', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('13', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('14', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('15', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('16', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('17', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('18', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('19', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('20', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('21', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('22', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('23', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('24', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('25', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('26', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('27', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('28', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('29', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('30', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('31', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('32', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('33', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('34', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('35', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('36', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('37', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('38', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:20');
INSERT INTO `play_record_base` VALUES ('39', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('40', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('41', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('42', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('43', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('44', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('45', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('46', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('47', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('48', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('49', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('50', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('51', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('52', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('53', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('54', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('55', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('56', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('57', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('58', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('59', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('60', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('61', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('62', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('63', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('64', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('65', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('66', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('67', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('68', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('69', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('70', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:21');
INSERT INTO `play_record_base` VALUES ('71', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('72', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('73', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('74', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('75', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('76', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('77', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('78', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('79', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('80', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('81', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('82', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('83', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('84', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('85', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('86', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('87', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('88', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('89', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('90', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('91', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('92', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('93', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('94', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('95', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('96', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('97', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('98', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('99', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('100', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('101', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('102', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('103', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('104', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('105', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('106', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('107', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-11 14:54:22');
INSERT INTO `play_record_base` VALUES ('108', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 13:59:18');
INSERT INTO `play_record_base` VALUES ('109', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 14:13:04');
INSERT INTO `play_record_base` VALUES ('110', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 14:35:11');
INSERT INTO `play_record_base` VALUES ('111', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 15:24:02');
INSERT INTO `play_record_base` VALUES ('112', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 15:45:25');
INSERT INTO `play_record_base` VALUES ('113', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 15:47:10');
INSERT INTO `play_record_base` VALUES ('114', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 15:47:15');
INSERT INTO `play_record_base` VALUES ('115', '40', null, 'o7rXxv1RtwjZAxS1NyrxFHOSmLfo', '8J+Yig==', 'http://thirdwx.qlogo.cn/mmopen/MT1SMzRYJDB60IOJORZs8crOMBiaC7Kxjxy88xv3bqBqpc1DqrIFrYfRzaeHu5SI3v7ny1YZriaK9VtjlbVMI2ctzwu3wo2bXv/132', null, null, '0', '2018-07-12 15:48:05');
INSERT INTO `play_record_base` VALUES ('116', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 15:58:19');
INSERT INTO `play_record_base` VALUES ('117', '40', null, 'o7rXxv1RtwjZAxS1NyrxFHOSmLfo', '8J+Yig==', 'http://thirdwx.qlogo.cn/mmopen/MT1SMzRYJDB60IOJORZs8crOMBiaC7Kxjxy88xv3bqBqpc1DqrIFrYfRzaeHu5SI3v7ny1YZriaK9VtjlbVMI2ctzwu3wo2bXv/132', null, null, '0', '2018-07-12 15:58:55');
INSERT INTO `play_record_base` VALUES ('118', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-12 16:48:22');
INSERT INTO `play_record_base` VALUES ('119', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 17:02:19');
INSERT INTO `play_record_base` VALUES ('120', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 17:04:46');
INSERT INTO `play_record_base` VALUES ('121', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 17:06:41');
INSERT INTO `play_record_base` VALUES ('122', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 17:08:31');
INSERT INTO `play_record_base` VALUES ('123', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 17:09:09');
INSERT INTO `play_record_base` VALUES ('124', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-12 17:10:24');
INSERT INTO `play_record_base` VALUES ('125', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-13 10:11:30');
INSERT INTO `play_record_base` VALUES ('126', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-13 10:12:47');
INSERT INTO `play_record_base` VALUES ('127', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 10:15:31');
INSERT INTO `play_record_base` VALUES ('128', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-13 10:16:51');
INSERT INTO `play_record_base` VALUES ('129', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-13 10:17:39');
INSERT INTO `play_record_base` VALUES ('130', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-13 10:33:51');
INSERT INTO `play_record_base` VALUES ('131', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 10:35:01');
INSERT INTO `play_record_base` VALUES ('132', '40', null, 'o7rXxv--ascpvJT1fUcJ6AMp-7JA', '5Y+k5LqV5LiL', 'http://thirdwx.qlogo.cn/mmopen/kpGMZJ4xm3oGZ1Ln1n6knBcDl5G8E9VgLcmNXp5dRsyFNY4xfW1DUVHIyJD6H8yiakibXGfrv3XYbz8gXRTN6QqgKFR3g9Ft1X/132', null, null, '0', '2018-07-13 10:40:39');
INSERT INTO `play_record_base` VALUES ('133', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 10:41:49');
INSERT INTO `play_record_base` VALUES ('134', '40', null, 'o7rXxv1RtwjZAxS1NyrxFHOSmLfo', '8J+Yig==', 'http://thirdwx.qlogo.cn/mmopen/MT1SMzRYJDB60IOJORZs8crOMBiaC7Kxjxy88xv3bqBqpc1DqrIFrYfRzaeHu5SI3v7ny1YZriaK9VtjlbVMI2ctzwu3wo2bXv/132', null, null, '0', '2018-07-13 11:06:49');
INSERT INTO `play_record_base` VALUES ('135', '40', null, 'o7rXxv1RtwjZAxS1NyrxFHOSmLfo', '8J+Yig==', 'http://thirdwx.qlogo.cn/mmopen/MT1SMzRYJDB60IOJORZs8crOMBiaC7Kxjxy88xv3bqBqpc1DqrIFrYfRzaeHu5SI3v7ny1YZriaK9VtjlbVMI2ctzwu3wo2bXv/132', null, null, '0', '2018-07-13 11:10:23');
INSERT INTO `play_record_base` VALUES ('136', '40', null, 'o7rXxv1RtwjZAxS1NyrxFHOSmLfo', '8J+Yig==', 'http://thirdwx.qlogo.cn/mmopen/MT1SMzRYJDB60IOJORZs8crOMBiaC7Kxjxy88xv3bqBqpc1DqrIFrYfRzaeHu5SI3v7ny1YZriaK9VtjlbVMI2ctzwu3wo2bXv/132', null, null, '0', '2018-07-13 11:13:18');
INSERT INTO `play_record_base` VALUES ('137', '40', null, 'o7rXxv684Ffg1R6VbYMKKB7EEN8o', 'T25l5a2Q', 'http://thirdwx.qlogo.cn/mmopen/CGSgzJLzxoWL32R2VfOFPjSKyicsf6iarMobAFghw9Q0g2AI62bOOClN5gOOESxJZPh81Azj6czVpc0OSeIWexF4icYIYeOIU5U/132', null, null, '0', '2018-07-13 14:13:14');
INSERT INTO `play_record_base` VALUES ('138', '40', null, 'o7rXxv684Ffg1R6VbYMKKB7EEN8o', 'T25l5a2Q', 'http://thirdwx.qlogo.cn/mmopen/CGSgzJLzxoWL32R2VfOFPjSKyicsf6iarMobAFghw9Q0g2AI62bOOClN5gOOESxJZPh81Azj6czVpc0OSeIWexF4icYIYeOIU5U/132', null, null, '0', '2018-07-13 14:13:45');
INSERT INTO `play_record_base` VALUES ('139', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 14:21:59');
INSERT INTO `play_record_base` VALUES ('140', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 14:33:29');
INSERT INTO `play_record_base` VALUES ('141', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 14:34:55');
INSERT INTO `play_record_base` VALUES ('142', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 14:35:12');
INSERT INTO `play_record_base` VALUES ('143', '40', null, 'o7rXxv6WVzJP0pxD7zbOpddMR6nI', 'eWF3ZW4=', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBue91RopjtbXBh2GJYFxE173heEaJMD73ZicJicUQGgvzlMa74Sg91Kny7uzbKWcfWsexgVibRAwUbw/132', null, null, '0', '2018-07-13 14:35:37');
INSERT INTO `play_record_base` VALUES ('144', '40', null, 'o7rXxv1RtwjZAxS1NyrxFHOSmLfo', '8J+Yig==', 'http://thirdwx.qlogo.cn/mmopen/MT1SMzRYJDB60IOJORZs8crOMBiaC7Kxjxy88xv3bqBqpc1DqrIFrYfRzaeHu5SI3v7ny1YZriaK9VtjlbVMI2ctzwu3wo2bXv/132', null, null, '0', '2018-07-13 15:53:42');
INSERT INTO `play_record_base` VALUES ('164', '49', null, 'XXXXXXXX00010', '测试10', null, null, null, '0', '2018-07-17 18:01:57');
INSERT INTO `play_record_base` VALUES ('165', '49', null, 'XXXXXXXX00009', '测试0', null, null, null, '0', '2018-07-17 18:03:36');
INSERT INTO `play_record_base` VALUES ('166', '49', null, 'XXXXXXXXZZZ1', '万家', null, null, null, '0', '2018-07-18 14:48:36');
INSERT INTO `play_record_base` VALUES ('167', '20', null, '1234567', null, null, null, null, '1', '2018-07-18 16:43:28');
INSERT INTO `play_record_base` VALUES ('168', '20', null, '1234567', null, null, null, null, '0', '2018-07-18 16:47:34');

-- ----------------------------
-- Table structure for `play_record_base_001`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_001`;
CREATE TABLE `play_record_base_001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_001
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_002`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_002`;
CREATE TABLE `play_record_base_002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_002
-- ----------------------------
INSERT INTO `play_record_base_002` VALUES ('169', '65', null, '123456dfsa7', null, null, null, null, '1', '2018-07-20 15:29:05');
INSERT INTO `play_record_base_002` VALUES ('170', '65', null, '123456dfsa7', null, null, null, null, '1', '2018-07-20 15:45:33');

-- ----------------------------
-- Table structure for `play_record_base_003`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_003`;
CREATE TABLE `play_record_base_003` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_003
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_004`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_004`;
CREATE TABLE `play_record_base_004` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_004
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_005`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_005`;
CREATE TABLE `play_record_base_005` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_005
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_006`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_006`;
CREATE TABLE `play_record_base_006` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_006
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_007`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_007`;
CREATE TABLE `play_record_base_007` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_007
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_008`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_008`;
CREATE TABLE `play_record_base_008` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_008
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_009`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_009`;
CREATE TABLE `play_record_base_009` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_009
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_010`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_010`;
CREATE TABLE `play_record_base_010` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_010
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_011`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_011`;
CREATE TABLE `play_record_base_011` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_011
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_012`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_012`;
CREATE TABLE `play_record_base_012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_012
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_013`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_013`;
CREATE TABLE `play_record_base_013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_013
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_014`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_014`;
CREATE TABLE `play_record_base_014` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_014
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_015`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_015`;
CREATE TABLE `play_record_base_015` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_015
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_016`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_016`;
CREATE TABLE `play_record_base_016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_016
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_017`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_017`;
CREATE TABLE `play_record_base_017` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_017
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_018`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_018`;
CREATE TABLE `play_record_base_018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_018
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_019`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_019`;
CREATE TABLE `play_record_base_019` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_019
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_020`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_020`;
CREATE TABLE `play_record_base_020` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_020
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_021`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_021`;
CREATE TABLE `play_record_base_021` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_021
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_022`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_022`;
CREATE TABLE `play_record_base_022` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_022
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_023`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_023`;
CREATE TABLE `play_record_base_023` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_023
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_024`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_024`;
CREATE TABLE `play_record_base_024` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_024
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_025`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_025`;
CREATE TABLE `play_record_base_025` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_025
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_026`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_026`;
CREATE TABLE `play_record_base_026` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_026
-- ----------------------------
INSERT INTO `play_record_base_026` VALUES ('169', '65', null, 'fdasfdasfasdf', null, null, null, null, '1', '2018-07-20 10:14:07');
INSERT INTO `play_record_base_026` VALUES ('170', '65', null, '1234567', null, null, null, null, '1', '2018-07-20 10:16:05');

-- ----------------------------
-- Table structure for `play_record_base_027`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_027`;
CREATE TABLE `play_record_base_027` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_027
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_028`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_028`;
CREATE TABLE `play_record_base_028` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_028
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_029`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_029`;
CREATE TABLE `play_record_base_029` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_029
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_030`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_030`;
CREATE TABLE `play_record_base_030` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_030
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_031`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_031`;
CREATE TABLE `play_record_base_031` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_031
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_032`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_032`;
CREATE TABLE `play_record_base_032` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_032
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_033`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_033`;
CREATE TABLE `play_record_base_033` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_033
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_034`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_034`;
CREATE TABLE `play_record_base_034` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_034
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_035`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_035`;
CREATE TABLE `play_record_base_035` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_035
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_036`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_036`;
CREATE TABLE `play_record_base_036` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_036
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_037`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_037`;
CREATE TABLE `play_record_base_037` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_037
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_038`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_038`;
CREATE TABLE `play_record_base_038` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_038
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_039`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_039`;
CREATE TABLE `play_record_base_039` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_039
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_040`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_040`;
CREATE TABLE `play_record_base_040` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_040
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_041`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_041`;
CREATE TABLE `play_record_base_041` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_041
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_042`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_042`;
CREATE TABLE `play_record_base_042` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_042
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_043`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_043`;
CREATE TABLE `play_record_base_043` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_043
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_044`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_044`;
CREATE TABLE `play_record_base_044` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_044
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_045`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_045`;
CREATE TABLE `play_record_base_045` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_045
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_046`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_046`;
CREATE TABLE `play_record_base_046` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_046
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_047`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_047`;
CREATE TABLE `play_record_base_047` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_047
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_048`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_048`;
CREATE TABLE `play_record_base_048` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_048
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_049`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_049`;
CREATE TABLE `play_record_base_049` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_049
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_050`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_050`;
CREATE TABLE `play_record_base_050` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_050
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_051`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_051`;
CREATE TABLE `play_record_base_051` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_051
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_052`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_052`;
CREATE TABLE `play_record_base_052` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_052
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_053`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_053`;
CREATE TABLE `play_record_base_053` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_053
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_054`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_054`;
CREATE TABLE `play_record_base_054` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_054
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_055`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_055`;
CREATE TABLE `play_record_base_055` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_055
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_056`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_056`;
CREATE TABLE `play_record_base_056` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_056
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_057`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_057`;
CREATE TABLE `play_record_base_057` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_057
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_058`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_058`;
CREATE TABLE `play_record_base_058` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_058
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_059`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_059`;
CREATE TABLE `play_record_base_059` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_059
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_060`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_060`;
CREATE TABLE `play_record_base_060` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_060
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_061`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_061`;
CREATE TABLE `play_record_base_061` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_061
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_062`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_062`;
CREATE TABLE `play_record_base_062` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_062
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_063`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_063`;
CREATE TABLE `play_record_base_063` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_063
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_base_064`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_base_064`;
CREATE TABLE `play_record_base_064` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表';

-- ----------------------------
-- Records of play_record_base_064
-- ----------------------------

-- ----------------------------
-- Table structure for `play_record_helecheng_gongyi`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_helecheng_gongyi`;
CREATE TABLE `play_record_helecheng_gongyi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_base_id` int(11) NOT NULL COMMENT '基础参与表id',
  `pic` varchar(256) DEFAULT NULL COMMENT '图片',
  `check` int(11) DEFAULT '0' COMMENT '审核: 0 待审核,1 审核通过,2 审核失败',
  `activity_type` int(11) NOT NULL DEFAULT '1' COMMENT '活动类型: 1 需要帮助,2 爱心助力',
  `sort` int(11) DEFAULT '99' COMMENT '置顶:1~99,越小越靠顶',
  `describe` varchar(512) DEFAULT NULL COMMENT '描述说明',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COMMENT='嘉兴合乐城公益活动参与记录表';

-- ----------------------------
-- Records of play_record_helecheng_gongyi
-- ----------------------------
INSERT INTO `play_record_helecheng_gongyi` VALUES ('1', '2', 'http://img0.t.rongyi.com/1531286803Q5MVCPlcDsY6j8H4.jpg', '1', '1', '99', '111', '2018-07-11 13:26:45', '2018-07-12 17:04:07');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('2', '2', 'http://img0.t.rongyi.com/153128869181T5pGUsr8c4xWTF.jpg', '0', '2', '99', 'nihao', '2018-07-11 14:25:15', '2018-07-11 15:35:14');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('3', '3', 'http://img0.t.rongyi.com/153128869181T5pGUsr8c4xWTF.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:26:05', '2018-07-13 11:26:55');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('4', '4', 'http://img0.t.rongyi.com/1531290680IKopsymOd3f5VmCa.jpg', '1', '2', '99', '你好', '2018-07-11 14:31:26', '2018-07-13 11:26:54');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('105', '5', 'http://img0.t.rongyi.com/1531291291UxFK5YRMo46awrYI.jpg', '1', '2', '99', '你好', '2018-07-11 14:41:36', '2018-07-13 11:11:39');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('106', '6', 'http://cued.xunlei.com/demos/publ/img/P_001.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:52:38', '2018-07-11 15:06:46');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('107', '7', 'http://cued.xunlei.com/demos/publ/img/P_065.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:53:14', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('108', '8', 'http://cued.xunlei.com/demos/publ/img/P_040.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('109', '9', 'http://cued.xunlei.com/demos/publ/img/P_064.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('110', '10', 'http://cued.xunlei.com/demos/publ/img/P_026.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('111', '11', 'http://cued.xunlei.com/demos/publ/img/P_061.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('112', '12', 'http://cued.xunlei.com/demos/publ/img/P_097.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('113', '13', 'http://cued.xunlei.com/demos/publ/img/P_084.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('114', '14', 'http://cued.xunlei.com/demos/publ/img/P_021.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('115', '15', 'http://cued.xunlei.com/demos/publ/img/P_042.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('116', '16', 'http://cued.xunlei.com/demos/publ/img/P_077.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('117', '17', 'http://cued.xunlei.com/demos/publ/img/P_075.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('118', '18', 'http://cued.xunlei.com/demos/publ/img/P_080.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('119', '19', 'http://cued.xunlei.com/demos/publ/img/P_065.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('120', '20', 'http://cued.xunlei.com/demos/publ/img/P_018.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('121', '21', 'http://cued.xunlei.com/demos/publ/img/P_084.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('122', '22', 'http://cued.xunlei.com/demos/publ/img/P_018.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('123', '23', 'http://cued.xunlei.com/demos/publ/img/P_039.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('124', '24', 'http://cued.xunlei.com/demos/publ/img/P_088.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('125', '25', 'http://cued.xunlei.com/demos/publ/img/P_097.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('126', '26', 'http://cued.xunlei.com/demos/publ/img/P_031.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('127', '27', 'http://cued.xunlei.com/demos/publ/img/P_074.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('128', '28', 'http://cued.xunlei.com/demos/publ/img/P_058.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('129', '29', 'http://cued.xunlei.com/demos/publ/img/P_015.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('130', '30', 'http://cued.xunlei.com/demos/publ/img/P_060.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('131', '31', 'http://cued.xunlei.com/demos/publ/img/P_079.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('132', '32', 'http://cued.xunlei.com/demos/publ/img/P_063.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('133', '33', 'http://cued.xunlei.com/demos/publ/img/P_038.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('134', '34', 'http://cued.xunlei.com/demos/publ/img/P_068.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('135', '35', 'http://cued.xunlei.com/demos/publ/img/P_088.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('136', '36', 'http://cued.xunlei.com/demos/publ/img/P_070.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('137', '37', 'http://cued.xunlei.com/demos/publ/img/P_025.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:20', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('138', '38', 'http://cued.xunlei.com/demos/publ/img/P_059.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('139', '39', 'http://cued.xunlei.com/demos/publ/img/P_060.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('140', '40', 'http://cued.xunlei.com/demos/publ/img/P_063.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('141', '41', 'http://cued.xunlei.com/demos/publ/img/P_090.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('142', '42', 'http://cued.xunlei.com/demos/publ/img/P_039.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('143', '43', 'http://cued.xunlei.com/demos/publ/img/P_090.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('144', '44', 'http://cued.xunlei.com/demos/publ/img/P_089.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('145', '45', 'http://cued.xunlei.com/demos/publ/img/P_051.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('146', '46', 'http://cued.xunlei.com/demos/publ/img/P_050.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('147', '47', 'http://cued.xunlei.com/demos/publ/img/P_018.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('148', '48', 'http://cued.xunlei.com/demos/publ/img/P_038.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('149', '49', 'http://cued.xunlei.com/demos/publ/img/P_089.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('150', '50', 'http://cued.xunlei.com/demos/publ/img/P_059.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('151', '51', 'http://cued.xunlei.com/demos/publ/img/P_083.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('152', '52', 'http://cued.xunlei.com/demos/publ/img/P_017.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('153', '53', 'http://cued.xunlei.com/demos/publ/img/P_055.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('154', '54', 'http://cued.xunlei.com/demos/publ/img/P_047.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('155', '55', 'http://cued.xunlei.com/demos/publ/img/P_026.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('156', '56', 'http://cued.xunlei.com/demos/publ/img/P_057.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('157', '57', 'http://cued.xunlei.com/demos/publ/img/P_072.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('158', '58', 'http://cued.xunlei.com/demos/publ/img/P_038.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('159', '59', 'http://cued.xunlei.com/demos/publ/img/P_071.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('160', '60', 'http://cued.xunlei.com/demos/publ/img/P_070.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('161', '61', 'http://cued.xunlei.com/demos/publ/img/P_091.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('162', '62', 'http://cued.xunlei.com/demos/publ/img/P_079.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('163', '63', 'http://cued.xunlei.com/demos/publ/img/P_077.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('164', '64', 'http://cued.xunlei.com/demos/publ/img/P_092.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('165', '65', 'http://cued.xunlei.com/demos/publ/img/P_057.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('166', '66', 'http://cued.xunlei.com/demos/publ/img/P_037.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('167', '67', 'http://cued.xunlei.com/demos/publ/img/P_089.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('168', '68', 'http://cued.xunlei.com/demos/publ/img/P_062.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('169', '69', 'http://cued.xunlei.com/demos/publ/img/P_042.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('170', '70', 'http://cued.xunlei.com/demos/publ/img/P_076.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:21', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('171', '71', 'http://cued.xunlei.com/demos/publ/img/P_041.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('172', '72', 'http://cued.xunlei.com/demos/publ/img/P_084.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('173', '73', 'http://cued.xunlei.com/demos/publ/img/P_048.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('174', '74', 'http://cued.xunlei.com/demos/publ/img/P_017.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', '2018-07-11 15:57:23');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('175', '75', 'http://cued.xunlei.com/demos/publ/img/P_014.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', '2018-07-11 15:57:28');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('176', '76', 'http://cued.xunlei.com/demos/publ/img/P_099.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', '2018-07-11 15:21:30');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('177', '77', 'http://cued.xunlei.com/demos/publ/img/P_092.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('178', '78', 'http://cued.xunlei.com/demos/publ/img/P_043.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('179', '79', 'http://cued.xunlei.com/demos/publ/img/P_079.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('180', '80', 'http://cued.xunlei.com/demos/publ/img/P_063.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('181', '81', 'http://cued.xunlei.com/demos/publ/img/P_082.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('182', '82', 'http://cued.xunlei.com/demos/publ/img/P_039.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('183', '83', 'http://cued.xunlei.com/demos/publ/img/P_015.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('184', '84', 'http://cued.xunlei.com/demos/publ/img/P_014.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('185', '85', 'http://cued.xunlei.com/demos/publ/img/P_049.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('186', '86', 'http://cued.xunlei.com/demos/publ/img/P_097.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('187', '87', 'http://cued.xunlei.com/demos/publ/img/P_098.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('188', '88', 'http://cued.xunlei.com/demos/publ/img/P_042.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('189', '89', 'http://cued.xunlei.com/demos/publ/img/P_034.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('190', '90', 'http://cued.xunlei.com/demos/publ/img/P_022.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', '2018-07-12 17:37:34');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('191', '91', 'http://cued.xunlei.com/demos/publ/img/P_052.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('192', '92', 'http://cued.xunlei.com/demos/publ/img/P_013.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('193', '93', 'http://cued.xunlei.com/demos/publ/img/P_052.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('194', '94', 'http://cued.xunlei.com/demos/publ/img/P_097.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('195', '95', 'http://cued.xunlei.com/demos/publ/img/P_064.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('196', '96', 'http://cued.xunlei.com/demos/publ/img/P_048.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('197', '97', 'http://cued.xunlei.com/demos/publ/img/P_057.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('198', '98', 'http://cued.xunlei.com/demos/publ/img/P_063.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('199', '99', 'http://cued.xunlei.com/demos/publ/img/P_015.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('200', '100', 'http://cued.xunlei.com/demos/publ/img/P_034.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('201', '101', 'http://cued.xunlei.com/demos/publ/img/P_043.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('202', '102', 'http://cued.xunlei.com/demos/publ/img/P_040.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('203', '103', 'http://cued.xunlei.com/demos/publ/img/P_074.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('204', '104', 'http://cued.xunlei.com/demos/publ/img/P_079.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('205', '105', 'http://cued.xunlei.com/demos/publ/img/P_081.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('206', '106', 'http://cued.xunlei.com/demos/publ/img/P_074.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('207', '107', 'http://cued.xunlei.com/demos/publ/img/P_017.jpg', '1', '2', '99', 'nihao', '2018-07-11 14:54:22', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('208', '108', 'http://img0.t.rongyi.com/1531375135dZSRUyHD6GqAXQ9w.jpg', '1', '2', '99', 'nihaoa', '2018-07-12 13:59:19', '2018-07-13 11:26:51');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('209', '109', 'http://img0.t.rongyi.com/1531375977dTl6370tgygpyXor.jpg', '2', '1', '99', 'haode', '2018-07-12 14:13:04', '2018-07-12 15:49:37');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('210', '110', 'http://img0.t.rongyi.com/1531377301NlIi8Cq0ExVsuK8O.jpg', '1', '1', '6', '你好', '2018-07-12 14:35:11', '2018-07-13 18:19:07');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('211', '111', 'http://img0.t.rongyi.com/1531380230utd8T61Hi0FeJrDw.jpg', '1', '1', '9', '你好', '2018-07-12 15:24:02', '2018-07-12 17:06:32');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('212', '112', 'http://img0.t.rongyi.com/1531381522bBFu0D3YE2grkQ5f.jpg', '1', '1', '99', 'q', '2018-07-12 15:45:25', '2018-07-12 17:13:34');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('213', '113', 'http://img0.t.rongyi.com/1531380739RjEBGZBT6kns2iY2.jpg', '1', '1', '99', '123范德萨发', '2018-07-12 15:47:10', '2018-07-12 17:13:26');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('214', '114', 'http://img0.t.rongyi.com/1531380739RjEBGZBT6kns2iY2.jpg', '1', '1', '99', '123范德萨发', '2018-07-12 15:47:15', '2018-07-13 18:18:36');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('215', '115', 'http://img0.t.rongyi.com/1531381680Sc1NERVuMimzIU6t.jpg', '1', '2', '99', 'qq', '2018-07-12 15:48:05', '2018-07-13 11:27:42');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('216', '118', 'http://img0.t.rongyi.com/1531385290kIyBZeFVGFF8Upp2.jpg', '1', '1', '99', '好', '2018-07-12 16:48:22', '2018-07-12 17:13:24');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('217', '119', 'http://img0.t.rongyi.com/1531386129WfoyQ1JWVKnJskqr.jpg', '1', '1', '99', '111', '2018-07-12 17:02:19', '2018-07-12 17:05:59');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('218', '120', 'http://img0.t.rongyi.com/1531380739RjEBGZBT6kns2iY2.jpg', '1', '1', '99', 'MTIz6IyD5b636JCo5Y+R', '2018-07-12 17:04:46', '2018-07-12 17:13:44');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('219', '121', 'http://img0.t.rongyi.com/1531380739RjEBGZBT6kns2iY2.jpg', '1', '1', '99', '5aSn6am+6I6F5Li057u/5Yab5Yab5Yab5Yab5aSa57u/5Yab5LuY', '2018-07-12 17:06:41', '2018-07-12 17:13:20');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('220', '122', 'http://img0.t.rongyi.com/1531386503OA3UOOgKOlyIReVx.jpg', '1', '1', '99', 'IDEyMzQ1Njc4OQ==', '2018-07-12 17:08:31', '2018-07-13 18:18:41');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('221', '123', 'http://img0.t.rongyi.com/1531386538tzPQ1jFVLSupXCtn.jpg', '1', '1', '6', '8J+QpPCfkKTwn5Ck8J+QpPCfkKTwn5Ck8J+QpD8=', '2018-07-12 17:09:09', '2018-07-12 17:09:36');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('222', '124', 'http://img0.t.rongyi.com/1531386596jaHGka60z9z7pODj.jpg', '1', '1', '99', '5bCP6bih8J+QpPCfkKTwn5Ck8J+QpPCfkKTwn5CkPw==', '2018-07-12 17:10:24', '2018-07-12 17:13:19');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('223', '125', 'http://img0.t.rongyi.com/15314478886qDW8RmlN0fLtgQJ.jpg', '1', '1', '99', 'MTIzNDU2N/CfkKTwn5Ck8J+QpA==', '2018-07-13 10:11:30', '2018-07-13 11:12:04');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('224', '126', 'http://img0.t.rongyi.com/1531447958RS8C3bqvWFOb1DzA.jpg', '1', '2', '5', '5L2g', '2018-07-13 10:12:47', '2018-07-13 11:27:52');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('225', '127', 'http://img0.t.rongyi.com/1531448118BXHc5R7UbIlUi3g4.jpg', '1', '2', '99', '5L2g5aW9', '2018-07-13 10:15:31', '2018-07-13 11:27:50');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('226', '128', 'http://img0.t.rongyi.com/1531448194tCdtrreQKusNbV9L.jpg', '1', '2', '1', '5L2g', '2018-07-13 10:16:51', '2018-07-13 11:28:04');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('227', '129', 'http://img0.t.rongyi.com/1531448246K14RlGKG6pPCc9vg.jpg', '1', '1', '99', '5bCP6bih8J+QpPCfkKTwn5Ck8J+QpPCfkKTwn5CkPw==', '2018-07-13 10:17:39', '2018-07-13 10:45:07');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('228', '130', 'http://img0.t.rongyi.com/1531449218bhC7ZwlGfsZJ9oki.jpg', '2', '2', '1', '5LqG', '2018-07-13 10:33:51', '2018-07-13 11:28:31');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('229', '131', 'http://img0.t.rongyi.com/1531449295JCuNLrMxKY3E8vLc.jpg', '0', '2', '99', 'MQ==', '2018-07-13 10:35:01', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('230', '132', 'http://img0.t.rongyi.com/1531449632aujlsLc96fDg6fLg.jpg', '0', '2', '99', '5L2g', '2018-07-13 10:40:39', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('231', '133', 'http://img0.t.rongyi.com/1531449700lpkcoiFu9wlYhMVI.jpg', '1', '2', '1', 'MQ==', '2018-07-13 10:41:49', '2018-07-13 11:28:19');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('232', '134', 'http://img0.t.rongyi.com/1531451207eHdfv7gXUPmC6hN8.jpg', '1', '1', '99', 'Iy7wn5iK8J+SlfCfmKnwn5ij8J+YqfCfkLfvv70=', '2018-07-13 11:06:49', '2018-07-13 11:12:03');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('233', '135', 'http://img0.t.rongyi.com/1531451225cEEjNT8uOpjwpVzW.jpg', '1', '1', '99', 'L0Bq4oCGU+KAhmrigIZo4oCGZGXigIZq4oCG', '2018-07-13 11:10:23', '2018-07-13 11:12:01');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('234', '136', 'http://img0.t.rongyi.com/153145155737u66zEVUnjExyb9.jpg', '1', '1', '99', '8J+QpPCfkKTwn5Ck8J+QpPCfkKTwn5Ck8J+QpO+/vQ==', '2018-07-13 11:13:18', '2018-07-13 11:15:24');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('235', '137', 'http://img0.t.rongyi.com/1531462387FGdef5dISN1ISk8n.jpg', '0', '1', '99', 'MTIzNDU2', '2018-07-13 14:13:14', '2018-07-13 16:34:36');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('236', '138', 'http://img0.t.rongyi.com/1531462419My4XiatILCKsfmIC.jpg', '0', '1', '99', 'MTIzNDU2', '2018-07-13 14:13:45', '2018-07-13 17:12:30');
INSERT INTO `play_record_helecheng_gongyi` VALUES ('237', '139', 'http://img0.t.rongyi.com/1531462914LbpC3MvdeoQkdrgE.jpg', '0', '2', '99', 'MQ==', '2018-07-13 14:21:59', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('238', '140', 'http://img0.t.rongyi.com/1531463604srwTTZKCvPx1xasT.jpg', '0', '2', '99', 'MQ==', '2018-07-13 14:33:29', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('239', '141', 'http://img0.t.rongyi.com/15314636926qyLVDQtotTICQAh.jpg', '0', '2', '99', 'MQ==', '2018-07-13 14:34:55', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('240', '142', 'http://img0.t.rongyi.com/1531463709kMVUtdgXmpU7xOJ7.jpg', '0', '2', '99', 'MQ==', '2018-07-13 14:35:12', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('241', '143', 'http://img0.t.rongyi.com/1531463732QXl3n2VwMk7K8f2K.jpg', '0', '2', '99', 'MQ==', '2018-07-13 14:35:37', null);
INSERT INTO `play_record_helecheng_gongyi` VALUES ('242', '144', 'http://img0.t.rongyi.com/1531468409XHiqQMfeFqkv1Unl.jpg', '0', '2', '99', '5L2g5aW95LiW55WMCg==', '2018-07-13 15:53:42', null);

-- ----------------------------
-- Table structure for `play_record_rank`
-- ----------------------------
DROP TABLE IF EXISTS `play_record_rank`;
CREATE TABLE `play_record_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `play_record_base_id` int(11) NOT NULL COMMENT '基础参与表id',
  `score` int(11) DEFAULT NULL COMMENT '排行所需分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排行相关记录';

-- ----------------------------
-- Records of play_record_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `qingdao_activity`
-- ----------------------------
DROP TABLE IF EXISTS `qingdao_activity`;
CREATE TABLE `qingdao_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `openid` varchar(32) DEFAULT NULL COMMENT '微信openid',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `pic` varchar(128) DEFAULT NULL COMMENT '自拍图',
  `like_count` int(11) DEFAULT '0' COMMENT '点赞数',
  `code` varchar(32) DEFAULT NULL COMMENT '编号，eg:001,002,...010',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `status` int(4) DEFAULT '0' COMMENT 'status 0:未参与PK， 1：参与pk',
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='自拍集赞记录表';

-- ----------------------------
-- Records of qingdao_activity
-- ----------------------------
INSERT INTO `qingdao_activity` VALUES ('1', '66', '1234214ss', '电风扇', '1.jpg', '1', '001', null, '0', '2018-06-20 10:55:02', '2018-06-19 16:36:35');
INSERT INTO `qingdao_activity` VALUES ('2', '66', '13l4jkl5', '', '234.jpg', '2', '002', null, '0', '2018-06-20 10:52:42', '2018-06-20 10:52:33');
INSERT INTO `qingdao_activity` VALUES ('3', '66', 'dsf', '', '23444ss4.jpg', '33', '003', null, '0', '2018-06-20 10:56:01', '2018-06-20 10:55:47');
INSERT INTO `qingdao_activity` VALUES ('4', '66', '4354ffgfggg', '', '23444ss4.jpg', '1', '003', null, '0', '2018-06-20 10:56:01', '2018-06-20 10:55:47');
INSERT INTO `qingdao_activity` VALUES ('5', '66', '瑟瑟发抖', '', '23444ss4.jpg', '22', '003', null, '0', '2018-06-20 10:56:01', '2018-06-20 10:55:47');
INSERT INTO `qingdao_activity` VALUES ('6', '66', '水电费第三个', '', '23444ss4.jpg', '11', '003', null, '0', '2018-06-20 10:56:01', '2018-06-20 10:55:47');
INSERT INTO `qingdao_activity` VALUES ('7', '66', '鼎折覆餗', '', '23444ss4.jpg', '23', '003', null, '0', '2018-06-20 10:56:01', '2018-06-20 10:55:47');
INSERT INTO `qingdao_activity` VALUES ('8', '66', '热热乎乎', '', '23444ss4.jpg', '44', '003', null, '0', '2018-06-20 10:56:01', '2018-06-20 10:55:47');
INSERT INTO `qingdao_activity` VALUES ('9', '66', '1234214ss1', '六棘拟鲈', '1.jpg', '0', '009', '睡懒觉', '0', null, '2018-06-21 14:43:48');
INSERT INTO `qingdao_activity` VALUES ('10', '66', '213dffff', 'sdfds', '1.jpg', '0', '010', '睡懒觉', '0', null, '2018-06-22 10:24:31');
INSERT INTO `qingdao_activity` VALUES ('11', '66', 'olH54xPLSkXFh9U0Gq786wcwQAwQ', '5LiH5bGx6aOe6Zuq', 'http://hf.rongyi.com/o2o/test/qd/qdjw/resource/assets/img/poto_test.png', '0', '011', null, '1', null, '2018-07-21 17:50:34');
INSERT INTO `qingdao_activity` VALUES ('12', '66', 'oaBwkwAd0kREhmXQcZX0DMqsS-xA', '5LiH5bGx6aOe6Zuq', 'http://rongyi.b0.upaiyun.com/activity/1806261051239791.png', '0', '012', null, '1', null, '2018-07-21 18:20:33');
INSERT INTO `qingdao_activity` VALUES ('13', '66', 'olH54xG-DM1M34vbAiEUI1cCyITc', '5byg55Ge5bed', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket', '0', '013', null, '0', null, '2018-07-21 18:48:46');
INSERT INTO `qingdao_activity` VALUES ('14', '66', 'olH54xG-DM1M34vbAiEUI1cCyITc', '5byg55Ge5bed', 'http://rongyi.b0.upaiyun.com/activity/image/381adb35a90af22762a713bf45bf21f3.jpg', '2', '014', null, '1', null, '2018-07-21 18:55:24');

-- ----------------------------
-- Table structure for `qingdao_goods`
-- ----------------------------
DROP TABLE IF EXISTS `qingdao_goods`;
CREATE TABLE `qingdao_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '父id',
  `name` varchar(32) DEFAULT NULL COMMENT '分类名称',
  `sku_id` varchar(32) DEFAULT NULL COMMENT '绑定的sku_id',
  `spu_id` varchar(32) DEFAULT NULL COMMENT '隶属的spu_id',
  `pic` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='青岛金王商品分类表';

-- ----------------------------
-- Records of qingdao_goods
-- ----------------------------
INSERT INTO `qingdao_goods` VALUES ('1', '0', '唇彩', null, null, '', '1', null, '2018-06-20 10:27:14');
INSERT INTO `qingdao_goods` VALUES ('2', '0', '腮红', null, null, '', '2', null, '2018-06-20 10:27:38');
INSERT INTO `qingdao_goods` VALUES ('3', '0', '眼影', null, null, '', '3', null, '2018-06-20 10:27:52');
INSERT INTO `qingdao_goods` VALUES ('4', '1', 'mouthaa', '131', '5b2c61c2130b38000acf4cd4', 'http://rongyi.b0.upaiyun.com/activity/1806271636492743.png', '10', null, '2018-06-20 10:28:31');
INSERT INTO `qingdao_goods` VALUES ('5', '1', 'mouthab', '132', '5b2c61c2130b38000acf4cd4', 'http://rongyi.b0.upaiyun.com/activity/1806271637089090.png', '20', null, '2018-06-20 10:28:40');
INSERT INTO `qingdao_goods` VALUES ('6', '1', 'mouthac', '133', '5b2c61c2130b38000acf4cd4', 'http://rongyi.b0.upaiyun.com/activity/1806271637280460.png', '30', null, '2018-06-20 10:29:01');
INSERT INTO `qingdao_goods` VALUES ('7', '1', 'mouthad', '134', '5b2c61c2130b38000acf4cd4', 'http://rongyi.b0.upaiyun.com/activity/1806271638075003.png', '40', null, '2018-06-20 10:29:11');
INSERT INTO `qingdao_goods` VALUES ('8', '1', 'mouthae', '135', '5b2c61c2130b38000acf4cd4', 'http://rongyi.b0.upaiyun.com/activity/1806271638274232.png', '50', null, '2018-06-20 10:30:07');
INSERT INTO `qingdao_goods` VALUES ('9', '1', 'mouthaf', '111', '5b2a4b09130b38000bd9cc4d', 'http://rongyi.b0.upaiyun.com/activity/1806271633500055.png', '60', null, '2018-06-25 13:46:26');
INSERT INTO `qingdao_goods` VALUES ('10', '1', 'mouthag', '121', '5b2bb2d8130b38000ba24004', 'http://rongyi.b0.upaiyun.com/activity/1806271636273228.png', '70', null, '2018-06-25 13:48:43');
INSERT INTO `qingdao_goods` VALUES ('11', '1', 'mouthah', '112', '5b2a4b09130b38000bd9cc4d', 'http://rongyi.b0.upaiyun.com/activity/1806271635213731.png', '80', null, '2018-06-25 13:48:43');
INSERT INTO `qingdao_goods` VALUES ('12', '1', 'mouthai', '113', '5b2a4b09130b38000bd9cc4d', 'http://rongyi.b0.upaiyun.com/activity/1806271635482334.png', '90', null, '2018-06-25 13:48:43');
INSERT INTO `qingdao_goods` VALUES ('13', '1', 'mouthaj', '114', '5b2a4b09130b38000bd9cc4d', 'http://rongyi.b0.upaiyun.com/activity/1806271636082310.png', '100', null, '2018-06-25 13:48:43');
INSERT INTO `qingdao_goods` VALUES ('14', '2', 'blushaa', '141', '5b2c62b1130b38000b0c9d23', 'http://rongyi.b0.upaiyun.com/activity/1806291542361637.png', '10', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('15', '2', 'blushab', '142', '5b2c62b1130b38000b0c9d23', 'http://rongyi.b0.upaiyun.com/activity/1806291543106387.png', '20', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('16', '2', 'blushac', '143', '5b2c62b1130b38000b0c9d23', 'http://rongyi.b0.upaiyun.com/activity/1806271639516888.png', '30', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('17', '2', 'blushad', '144', '5b2c62b1130b38000b0c9d23', 'http://rongyi.b0.upaiyun.com/activity/1806271640098985.png', '40', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('18', '2', 'blushae', '145', '5b2c62b1130b38000b0c9d23', 'http://rongyi.b0.upaiyun.com/activity/1806271642101302.png', '50', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('19', '2', 'blushaf', '151', '5b30629f130b38000ab41cb8', 'http://rongyi.b0.upaiyun.com/activity/1806271642357559.png', '60', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('20', '2', 'blushag', '152', '5b30629f130b38000ab41cb8', 'http://rongyi.b0.upaiyun.com/activity/1806271643072642.png', '70', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('21', '2', 'blushah', '153', '5b30629f130b38000ab41cb8', 'http://rongyi.b0.upaiyun.com/activity/1806271643262520.png', '80', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('22', '2', 'blushai', '154', '5b30629f130b38000ab41cb8', 'http://rongyi.b0.upaiyun.com/activity/1806271643492967.png', '90', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('23', '2', 'blushaj', '155', '5b30629f130b38000ab41cb8', 'http://rongyi.b0.upaiyun.com/activity/1806271644064624.png', '100', null, '2018-06-25 13:54:31');
INSERT INTO `qingdao_goods` VALUES ('24', '3', 'eyeshadowaa', '161', '5b3064e2130b38000ab46d57', 'http://rongyi.b0.upaiyun.com/activity/1807041252433822.png', '10', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('25', '3', 'eyeshadowab', '162', '5b3064e2130b38000ab46d57', 'http://rongyi.b0.upaiyun.com/activity/1807041253482926.png', '20', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('26', '3', 'eyeshadowac', '163', '5b3064e2130b38000ab46d57', 'http://rongyi.b0.upaiyun.com/activity/1807041746251189.png', '30', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('27', '3', 'eyeshadowad', '164', '5b3064e2130b38000ab46d57', 'http://rongyi.b0.upaiyun.com/activity/1806271645284785.png', '40', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('28', '3', 'eyeshadowae', '165', '5b3064e2130b38000ab46d57', 'http://rongyi.b0.upaiyun.com/activity/1806271645460230.png', '50', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('29', '3', 'eyeshadowaf', '171', '5b3067ce130b38000b81676d', 'http://rongyi.b0.upaiyun.com/activity/1806271646114055.png', '60', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('30', '3', 'eyeshadowag', '172', '5b3067ce130b38000b81676d', 'http://rongyi.b0.upaiyun.com/activity/1807041255135821.png', '70', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('31', '3', 'eyeshadowah', '173', '5b3067ce130b38000b81676d', 'http://rongyi.b0.upaiyun.com/activity/1806271646501756.png', '80', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('32', '3', 'eyeshadowai', '174', '5b3067ce130b38000b81676d', 'http://rongyi.b0.upaiyun.com/activity/1807041255504857.png', '90', null, '2018-06-25 13:57:29');
INSERT INTO `qingdao_goods` VALUES ('33', '3', 'eyeshadowaj', '175', '5b3067ce130b38000b81676d', 'http://rongyi.b0.upaiyun.com/activity/1807041256117395.png', '100', null, '2018-06-25 13:57:29');

-- ----------------------------
-- Table structure for `skin_bag`
-- ----------------------------
DROP TABLE IF EXISTS `skin_bag`;
CREATE TABLE `skin_bag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '资源包名称',
  `template_id` int(10) DEFAULT NULL COMMENT '模板id',
  `h5_skin` varchar(255) NOT NULL DEFAULT '' COMMENT 'H5皮肤包',
  `screen_skin` varchar(255) NOT NULL DEFAULT '' COMMENT '终端屏皮肤包',
  `pic` varchar(255) DEFAULT NULL COMMENT '皮肤包图片',
  `create_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='皮肤包';

-- ----------------------------
-- Records of skin_bag
-- ----------------------------
INSERT INTO `skin_bag` VALUES ('1', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 15:52:01');
INSERT INTO `skin_bag` VALUES ('2', '皮肤2', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 15:52:36');
INSERT INTO `skin_bag` VALUES ('3', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:19');
INSERT INTO `skin_bag` VALUES ('4', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:20');
INSERT INTO `skin_bag` VALUES ('5', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:21');
INSERT INTO `skin_bag` VALUES ('6', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:21');
INSERT INTO `skin_bag` VALUES ('7', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:22');
INSERT INTO `skin_bag` VALUES ('8', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:22');
INSERT INTO `skin_bag` VALUES ('9', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:23');
INSERT INTO `skin_bag` VALUES ('10', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:23');
INSERT INTO `skin_bag` VALUES ('11', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:24');
INSERT INTO `skin_bag` VALUES ('12', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:24');
INSERT INTO `skin_bag` VALUES ('13', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:25');
INSERT INTO `skin_bag` VALUES ('14', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:26');
INSERT INTO `skin_bag` VALUES ('15', '皮肤1', null, 'h5Skinurl', 'dsaasd', 'dadas', '2018-06-29 16:24:26');
INSERT INTO `skin_bag` VALUES ('16', '皮肤3', '33', 'http://wewewewe', 'http://sdfsdfsdf', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180706/153aefec3b39f4c1f0c84bcf375813c8.png', '2018-07-06 13:45:35');
INSERT INTO `skin_bag` VALUES ('17', 'sdf', '33', 'http://sdfasdf', 'http://sdfsdf', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180706/b472e48ad245f8228d8ba121f01dd9cd.png', '2018-07-06 13:50:28');
INSERT INTO `skin_bag` VALUES ('18', 'sdfasdf', '33', 'http://wersdf', 'http://sdfsdf', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180706/f0e391fba48154eab9744ac3c0f83506.png', '2018-07-06 13:58:16');
INSERT INTO `skin_bag` VALUES ('19', 'add1', '33', 'http://www.baidu.com', 'http://www.baidu.com', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180709/d1d9387d06ba47685907de3d43a53898.png', '2018-07-09 10:19:19');
INSERT INTO `skin_bag` VALUES ('20', 'add2', '33', 'http://www.baidu.com', 'http://www.baidu.com', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180709/8fccebdb2bc7151c12bf4a1f2747ab1d.png', '2018-07-09 10:20:49');
INSERT INTO `skin_bag` VALUES ('21', 'add3', '33', 'http://www.baidu.com', 'http://www.baidu.com', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180709/5aba80f7f82bab20e85fd5d9449385a5.png', '2018-07-09 10:22:22');
INSERT INTO `skin_bag` VALUES ('22', '测试皮肤1', '42', 'http://www.baidu.com', 'http://www.baidu.com', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180710/0d20f73077adbdd6f781aef0f3809f5a.png', '2018-07-10 15:33:49');
INSERT INTO `skin_bag` VALUES ('25', 'ceshi', '45', 'http://www.baidu.com', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180710/b106d9fbcba1b16fa8145bbd10b5f85b.png', '2018-07-10 16:31:49');
INSERT INTO `skin_bag` VALUES ('26', '424', '45', 'http://www.rongyi.com', '', '', '2018-07-10 18:09:07');
INSERT INTO `skin_bag` VALUES ('27', '你好，我没上传图', '45', 'http://rongyi.b0.upaiyun.com/activity/skin/c11d68f78577b8aa31a1c462c4404f37', '', '', '2018-07-16 15:15:22');
INSERT INTO `skin_bag` VALUES ('28', '没图', '45', 'http://www.rongyi.com', '', '', '2018-07-16 15:42:32');
INSERT INTO `skin_bag` VALUES ('29', '100', '45', 'http://rongyi.b0.upaiyun.com/activity/skin/e1417316ea277eedb4a4a1cede5fec68', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 16:21:15');
INSERT INTO `skin_bag` VALUES ('30', '101', '45', 'http://rongyi.b0.upaiyun.com/activity/skin/1b7685df0c0dd2325f07718f7e26be9c', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 16:27:59');
INSERT INTO `skin_bag` VALUES ('31', '102', '45', 'http://rongyi.b0.upaiyun.com/activity/skin/dfca9719e990eff91268cd8ec92fda05', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 16:34:14');
INSERT INTO `skin_bag` VALUES ('32', '103', '45', 'http://rongyi.b0.upaiyun.com/activity/skin/a657ed5c38cafdf79da3f4fb39d3ea40', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 16:37:47');
INSERT INTO `skin_bag` VALUES ('33', 'asdf', '45', 'http://afadfsdf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:16:35');
INSERT INTO `skin_bag` VALUES ('34', 'asdf', '45', 'http://adf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:16:49');
INSERT INTO `skin_bag` VALUES ('35', 'sdf', '45', 'http://asdfsdf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:19:53');
INSERT INTO `skin_bag` VALUES ('36', 'sdfsf', '45', 'http://asdfsdf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:20:36');
INSERT INTO `skin_bag` VALUES ('37', 'sdfsdf', '45', 'http://asdfsdfsdf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:22:27');
INSERT INTO `skin_bag` VALUES ('38', 'sdf', '45', 'http://sadf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:24:01');
INSERT INTO `skin_bag` VALUES ('39', 'asdf', '45', 'http://asdf', '', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '2018-07-17 22:24:41');

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板自增id',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '模板名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '模板类型（1.标准，2.定制）',
  `use_terminal` tinyint(4) NOT NULL DEFAULT '1' COMMENT '使用终端（1.H5,2.互动屏，3.多段互动）',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '模板图片',
  `core_resource` varchar(255) NOT NULL DEFAULT '' COMMENT '内核地址',
  `app_resource` varchar(255) NOT NULL DEFAULT '' COMMENT '游戏地址',
  `h5_resource` varchar(255) NOT NULL DEFAULT '' COMMENT 'H5地址',
  `default_resource` varchar(255) DEFAULT NULL COMMENT '默认地址',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '模板状态（1.正常，2.删除）',
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `create_by` varchar(255) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_by` varchar(255) DEFAULT '' COMMENT '最后更新人',
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='活动模板';

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('33', '手机与大屏-标准', '1', '1', 'http://qa0.test.rongyi.com/123456789012345678901234/20180505/a35451ecb99aa2c2a02ce7936f99d5da.png', 'http://www.baidu.com', 'http://www.baidu.com', 'http://www.rongyi.com', null, '手机与大屏-标准', '1', '2018-05-05 17:27:03', '123', '', '2018-07-10 16:24:01');
INSERT INTO `template` VALUES ('39', '34345', '1', '2', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180514/1d81751f15c9a5a6bf689dc870d10474.png', '', 'http://asdsdf', '', null, '', '1', '2018-05-14 18:07:52', '', '', '2018-07-10 16:23:47');
INSERT INTO `template` VALUES ('40', '2323', '1', '1', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180514/8bc2376fd30ec77229ffcb4bac7aea05.png', '', 'http://www.baiduc.om', '', null, '', '1', '2018-05-14 18:24:31', '', '', null);
INSERT INTO `template` VALUES ('41', '超长名称显示问题测试，你别哔哔，小心弄你', '1', '1', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180514/365718069fe4caa364ec7373a7b21cc9.png', '', 'http://www.baodiadf', '', null, '', '1', '2018-05-14 18:34:57', '', '', null);
INSERT INTO `template` VALUES ('42', '多动屏', '1', '3', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180515/20721627f497eb4489069d73ec840287.png', 'http://core.rongyi.com', 'http://game.rongyi.com', 'http://h5.rongyi.com', null, 'tttt', '1', '2018-05-15 14:06:39', '', '', null);
INSERT INTO `template` VALUES ('43', '23234', '1', '1', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180516/59a725c0682ecb69204e482ed78608f0.png', '', 'http://aaa', '', 'http://aaa', '', '1', '2018-05-16 21:02:42', 'superadmin', '', null);
INSERT INTO `template` VALUES ('44', '微信红包-iapm-不具备模板特征', '1', '1', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180605/049ec6fd58d9b049c25e061ecd2f06c1.png', '', 'http://aaa', '', 'http://aaa', '因项目时间紧急，未对H5活动模板化，所以该模板不具备通用性', '1', '2018-06-05 14:02:30', 'superadmin', '', null);
INSERT INTO `template` VALUES ('45', 'H5竞猜模板', '1', '1', 'http://dev.hdp.rongyi.com/123456789012345678901234/20180622/2ba0dd49520db6e13d12c2e0277434c8.png', '', 'http://www.rongyi.com', '', 'http://www.rongyi.com', '', '1', '2018-06-22 14:34:43', 'superadmin', '', null);

-- ----------------------------
-- Table structure for `winning_record`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record`;
CREATE TABLE `winning_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `mall_id` varchar(24) NOT NULL DEFAULT '' COMMENT '商城id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员卡号',
  `openid` varchar(32) NOT NULL DEFAULT '' COMMENT '微信id',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `discover_times` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `prize_name` varchar(64) DEFAULT '' COMMENT '奖品名称',
  `prize_level` varchar(32) NOT NULL DEFAULT '' COMMENT '奖项名称',
  `platform` tinyint(4) NOT NULL DEFAULT '0' COMMENT '中奖渠道:1-互动屏,2-微信',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record
-- ----------------------------
INSERT INTO `winning_record` VALUES ('103', '', '1', '133', '0', '', '', null, '1', '2', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('104', '', '1', '134', '0', '', '', null, '1', '3', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('105', '', '1', '135', '0', '', '', null, '1', '3', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('106', '', '1', '136', '0', '', '', null, '1', '1', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('107', '', '1', '137', '0', '', '', null, '1', '2', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('108', '', '1', '138', '0', '', '', null, '1', '3', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('109', '', '1', '140', '0', '', '', null, '1', '1', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('110', '', '18', '155', '1', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('111', '', '18', '156', '1', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('112', '', '18', '157', '1', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('113', '', '18', '176', '13671521', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('114', '', '18', '177', '13671521', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('116', '', '18', '179', '13671521', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('117', '', '18', '180', '13671523', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('118', '', '18', '181', '13671522', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('119', '', '18', '182', '13671521', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('120', '', '18', '184', '13671523', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('121', '', '18', '183', '13671522', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('123', '', '18', '187', '18', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('124', '', '18', '189', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('125', '', '18', '191', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('126', '', '18', '192', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('128', '', '18', '201', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('129', '', '18', '202', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('130', '', '18', '203', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('131', '', '18', '205', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('132', '', '18', '206', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('133', '', '18', '207', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('134', '', '18', '208', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('135', '', '18', '209', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('136', '', '18', '211', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('137', '', '18', '212', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('138', '', '18', '213', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('139', '', '18', '215', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('140', '', '18', '216', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('141', '', '18', '217', '45200000154', '', '', null, '1', '43', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('142', '', '18', '219', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('143', '', '18', '220', '45200000154', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('144', '', '18', '235', '16900001223', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('145', '', '18', '236', '16900001223', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('146', '', '18', '240', '16900001223', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('147', '', '18', '241', '16900001223', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('148', '', '18', '242', '16900001223', '', '', null, '1', '42', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('149', '', '20', '243', '8888', '', '', null, '1', '46', '', '', '0', null, '1', '2018-06-02 12:35:00', '2018-06-02 12:35:00', '');
INSERT INTO `winning_record` VALUES ('150', '', '20', '244', '123', '', '', null, '1', '46', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('151', '', '20', '245', '123', '', '', null, '1', '46', '', '', '0', null, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `winning_record` VALUES ('152', '', '20', '246', '1', '', '', null, '1', '46', '', '', '0', null, '0', null, null, '');
INSERT INTO `winning_record` VALUES ('153', '', '20', '267', '45200000019', '', '', null, '1', '48', '', '', '0', null, '0', '2018-05-13 17:40:02', null, '');
INSERT INTO `winning_record` VALUES ('154', '', '20', '268', '45200000019', '', '', null, '1', '48', '', '', '0', null, '0', '2018-05-13 18:17:18', null, '');
INSERT INTO `winning_record` VALUES ('155', '', '20', '269', '45200000155', '', '', null, '1', '48', '', '', '0', null, '0', '2018-05-13 19:41:00', null, '');
INSERT INTO `winning_record` VALUES ('156', '', '20', '270', '45200000155', '', '', null, '1', '48', '', '', '0', null, '0', '2018-05-13 19:42:04', null, '');
INSERT INTO `winning_record` VALUES ('157', '', '20', '271', '45200000155', '', '', null, '1', '48', '', '', '0', null, '0', '2018-05-13 19:43:15', null, '');
INSERT INTO `winning_record` VALUES ('158', '', '20', '295', '8888', '', '', null, '1', '75', '', '', '0', '180514000212163853', '0', '2018-05-14 16:38:53', null, '');
INSERT INTO `winning_record` VALUES ('159', '', '20', '296', '8888', '', '', null, '1', '75', '', '', '0', '180514000213163856', '0', '2018-05-14 16:38:56', null, '');
INSERT INTO `winning_record` VALUES ('160', '', '20', '297', '8888', '', '', null, '1', '75', '', '', '0', '180514000214163857', '0', '2018-05-14 16:38:57', null, '');
INSERT INTO `winning_record` VALUES ('161', '', '20', '298', '8888', '', '', null, '1', '75', '', '', '0', '180514000215163858', '0', '2018-05-14 16:38:58', null, '');
INSERT INTO `winning_record` VALUES ('162', '', '20', '299', '8888', '', '', null, '1', '75', '', '', '0', '180514000216163859', '0', '2018-05-14 16:38:59', null, '');
INSERT INTO `winning_record` VALUES ('163', '', '20', '300', '8888', '', '', null, '1', '75', '', '', '0', '180514000217163900', '0', '2018-05-14 16:39:00', null, '');
INSERT INTO `winning_record` VALUES ('164', '', '20', '301', '8888', '', '', null, '1', '75', '', '', '0', '180514000218163900', '0', '2018-05-14 16:39:00', null, '');
INSERT INTO `winning_record` VALUES ('165', '', '20', '302', '8888', '', '', null, '1', '75', '', '', '0', '180514000219163901', '0', '2018-05-14 16:39:01', null, '');
INSERT INTO `winning_record` VALUES ('166', '', '20', '303', '8888', '', '', null, '1', '75', '', '', '0', '180514000220163901', '0', '2018-05-14 16:39:01', null, '');
INSERT INTO `winning_record` VALUES ('167', '', '20', '304', '8888', '', '', null, '1', '75', '', '', '0', '180514000221163920', '0', '2018-05-14 16:39:20', null, '');
INSERT INTO `winning_record` VALUES ('168', '', '20', '305', '8888', '', '', null, '1', '75', '', '', '0', '180514000222163921', '0', '2018-05-14 16:39:21', null, '');
INSERT INTO `winning_record` VALUES ('169', '', '20', '306', '8888', '', '', null, '1', '75', '', '', '0', '180514000223163922', '0', '2018-05-14 16:39:22', null, '');
INSERT INTO `winning_record` VALUES ('170', '', '20', '307', '8888', '', '', null, '1', '75', '', '', '0', '180514000224163922', '0', '2018-05-14 16:39:22', null, '');
INSERT INTO `winning_record` VALUES ('171', '', '20', '308', '8888', '', '', null, '1', '75', '', '', '0', '180514000225163923', '0', '2018-05-14 16:39:23', null, '');
INSERT INTO `winning_record` VALUES ('172', '', '20', '309', '8888', '', '', null, '1', '75', '', '', '0', '180514000226163923', '0', '2018-05-14 16:39:23', null, '');
INSERT INTO `winning_record` VALUES ('173', '', '20', '310', '8888', '', '', null, '1', '75', '', '', '0', '180514000227163924', '0', '2018-05-14 16:39:24', null, '');
INSERT INTO `winning_record` VALUES ('174', '', '20', '311', '8888', '', '', null, '1', '75', '', '', '0', '180514000228163924', '0', '2018-05-14 16:39:24', null, '');
INSERT INTO `winning_record` VALUES ('175', '', '20', '312', '8888', '', '', null, '1', '77', '', '', '0', '180514000229163945', '0', '2018-05-14 16:39:45', null, '');
INSERT INTO `winning_record` VALUES ('176', '', '20', '313', '8888', '', '', null, '1', '75', '', '', '0', '180514000230163950', '0', '2018-05-14 16:39:50', null, '');
INSERT INTO `winning_record` VALUES ('177', '', '20', '314', '8888', '', '', null, '1', '75', '', '', '0', '180514000231163952', '0', '2018-05-14 16:39:52', null, '');
INSERT INTO `winning_record` VALUES ('178', '', '20', '315', '8888', '', '', null, '1', '77', '', '', '0', '180514000232163953', '0', '2018-05-14 16:39:52', null, '');
INSERT INTO `winning_record` VALUES ('179', '', '20', '316', '8888', '', '', null, '1', '76', '', '', '0', '180514000233163953', '0', '2018-05-14 16:39:53', null, '');
INSERT INTO `winning_record` VALUES ('180', '', '20', '317', '8888', '', '', null, '1', '76', '', '', '0', '180514000234163954', '0', '2018-05-14 16:39:54', null, '');
INSERT INTO `winning_record` VALUES ('181', '', '20', '318', '8888', '', '', null, '1', '77', '', '', '0', '180514000235163955', '0', '2018-05-14 16:39:55', null, '');
INSERT INTO `winning_record` VALUES ('182', '', '20', '319', '8888', '', '', null, '1', '75', '', '', '0', '180514000236163956', '0', '2018-05-14 16:39:56', null, '');
INSERT INTO `winning_record` VALUES ('183', '', '20', '320', '8888', '', '', null, '1', '77', '', '', '0', '180514000237163957', '0', '2018-05-14 16:39:56', null, '');
INSERT INTO `winning_record` VALUES ('184', '', '20', '321', '8888', '', '', null, '1', '76', '', '', '0', '180514000238163957', '0', '2018-05-14 16:39:57', null, '');
INSERT INTO `winning_record` VALUES ('185', '', '20', '323', '8888', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', null, '1', '97', '', '', '0', '180515000387100516', '0', '2018-05-15 10:05:16', null, '');
INSERT INTO `winning_record` VALUES ('186', '', '20', '325', '8888', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', null, '1', '99', '', '', '0', '180515000388100520', '0', '2018-05-15 10:05:20', null, '');
INSERT INTO `winning_record` VALUES ('187', '', '20', '326', '8888', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', null, '1', '99', '', '', '0', '180515000389100521', '0', '2018-05-15 10:05:21', null, '');
INSERT INTO `winning_record` VALUES ('188', '', '20', '327', '8888', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', null, '1', '97', '', '', '0', '180515000390100522', '0', '2018-05-15 10:05:21', null, '');
INSERT INTO `winning_record` VALUES ('189', '', '20', '329', '8888', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', null, '1', '97', '', '', '0', '180515000391100523', '0', '2018-05-15 10:05:23', null, '');
INSERT INTO `winning_record` VALUES ('190', '', '20', '330', '8888', 'olH54xIPGPplEQRdeI41fBrbfxFI', '', null, '1', '99', '', '', '0', '180515000392100524', '0', '2018-05-15 10:05:24', null, '');
INSERT INTO `winning_record` VALUES ('191', '', '20', '332', '45200000155', '', '', null, '1', '98', '', '', '0', '180515000396135822', '0', '2018-05-15 13:58:22', null, '');
INSERT INTO `winning_record` VALUES ('192', '', '20', '333', '45200000155', '', '', null, '1', '100', '', '', '0', null, '0', '2018-05-15 13:59:12', null, '');
INSERT INTO `winning_record` VALUES ('193', '', '35', '1', '0', '', '', '1', '0', '0', '', '', '0', null, '1', '2018-06-05 14:32:01', '2018-06-05 14:32:01', '');
INSERT INTO `winning_record` VALUES ('221', '', '37', '440', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:08:54', null, '');
INSERT INTO `winning_record` VALUES ('222', '', '37', '441', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:08:59', null, '');
INSERT INTO `winning_record` VALUES ('232', '', '37', '442', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:10:30', null, '');
INSERT INTO `winning_record` VALUES ('233', '', '37', '443', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:14:52', null, '');
INSERT INTO `winning_record` VALUES ('234', '', '37', '447', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:26:44', null, '');
INSERT INTO `winning_record` VALUES ('235', '', '37', '448', '0', '', '', null, '1', '127', '微信红包8', '', '0', null, '0', '2018-06-05 21:27:11', null, '');
INSERT INTO `winning_record` VALUES ('236', '', '37', '449', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:34:45', null, '');
INSERT INTO `winning_record` VALUES ('237', '', '37', '450', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:34:49', null, '');
INSERT INTO `winning_record` VALUES ('238', '', '37', '451', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:34:50', null, '');
INSERT INTO `winning_record` VALUES ('239', '', '37', '452', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:34:50', null, '');
INSERT INTO `winning_record` VALUES ('240', '', '37', '453', '0', '', '', null, '1', '126', '微信红包5', '', '0', null, '0', '2018-06-05 21:34:51', null, '');
INSERT INTO `winning_record` VALUES ('241', '', '37', '454', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:34:52', null, '');
INSERT INTO `winning_record` VALUES ('242', '', '37', '455', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:34:53', null, '');
INSERT INTO `winning_record` VALUES ('243', '', '37', '456', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:34:53', null, '');
INSERT INTO `winning_record` VALUES ('244', '', '37', '458', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:40:54', null, '');
INSERT INTO `winning_record` VALUES ('245', '', '37', '459', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:40:55', null, '');
INSERT INTO `winning_record` VALUES ('246', '', '37', '460', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:44:34', null, '');
INSERT INTO `winning_record` VALUES ('247', '', '37', '461', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:44:39', null, '');
INSERT INTO `winning_record` VALUES ('248', '', '37', '462', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:44:51', null, '');
INSERT INTO `winning_record` VALUES ('249', '', '37', '463', '0', '', '', null, '1', '127', '微信红包8', '', '0', null, '0', '2018-06-05 21:46:01', null, '');
INSERT INTO `winning_record` VALUES ('250', '', '37', '464', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:46:03', null, '');
INSERT INTO `winning_record` VALUES ('251', '', '37', '465', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:46:06', null, '');
INSERT INTO `winning_record` VALUES ('252', '', '37', '472', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:47:34', null, '');
INSERT INTO `winning_record` VALUES ('253', '', '37', '473', '0', '', '', null, '1', '125', '微信红包2', '', '0', null, '0', '2018-06-05 21:47:36', null, '');
INSERT INTO `winning_record` VALUES ('254', '', '37', '474', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:47:37', null, '');
INSERT INTO `winning_record` VALUES ('255', '', '37', '475', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:47:38', null, '');
INSERT INTO `winning_record` VALUES ('256', '', '37', '476', '0', '', '', null, '1', '124', '微信红包1', '', '0', null, '0', '2018-06-05 21:47:39', null, '');
INSERT INTO `winning_record` VALUES ('257', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:00', null, '');
INSERT INTO `winning_record` VALUES ('258', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:01', null, '');
INSERT INTO `winning_record` VALUES ('259', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:01', null, '');
INSERT INTO `winning_record` VALUES ('260', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:02', null, '');
INSERT INTO `winning_record` VALUES ('261', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:02', null, '');
INSERT INTO `winning_record` VALUES ('262', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:02', null, '');
INSERT INTO `winning_record` VALUES ('263', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:03', null, '');
INSERT INTO `winning_record` VALUES ('264', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:03', null, '');
INSERT INTO `winning_record` VALUES ('265', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:50:03', null, '');
INSERT INTO `winning_record` VALUES ('266', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:00', null, '');
INSERT INTO `winning_record` VALUES ('267', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:00', null, '');
INSERT INTO `winning_record` VALUES ('268', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:00', null, '');
INSERT INTO `winning_record` VALUES ('269', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:00', null, '');
INSERT INTO `winning_record` VALUES ('270', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:00', null, '');
INSERT INTO `winning_record` VALUES ('271', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:00', null, '');
INSERT INTO `winning_record` VALUES ('272', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:01', null, '');
INSERT INTO `winning_record` VALUES ('273', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:01', null, '');
INSERT INTO `winning_record` VALUES ('274', '', '38', '0', '0', '', '', '36', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 21:51:01', null, '');
INSERT INTO `winning_record` VALUES ('275', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:30:00', null, '');
INSERT INTO `winning_record` VALUES ('276', '', '38', '0', '0', '', '', '51', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:32:06', null, '');
INSERT INTO `winning_record` VALUES ('277', '', '38', '0', '0', '', '', '52', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:34:06', null, '');
INSERT INTO `winning_record` VALUES ('278', '', '38', '0', '0', '', '', '52', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:38:06', null, '');
INSERT INTO `winning_record` VALUES ('279', '', '38', '0', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:41:00', null, '');
INSERT INTO `winning_record` VALUES ('280', '', '38', '0', '0', '', '', '54', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:50:00', null, '');
INSERT INTO `winning_record` VALUES ('281', '', '38', '0', '0', '', '', '55', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:53:06', null, '');
INSERT INTO `winning_record` VALUES ('282', '', '38', '0', '0', '', '', '56', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 22:54:00', null, '');
INSERT INTO `winning_record` VALUES ('283', '', '38', '414', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:33:41', null, '');
INSERT INTO `winning_record` VALUES ('284', '', '38', '362', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:33:41', null, '');
INSERT INTO `winning_record` VALUES ('285', '', '38', '363', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:33:42', null, '');
INSERT INTO `winning_record` VALUES ('286', '', '38', '374', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:33:42', null, '');
INSERT INTO `winning_record` VALUES ('287', '', '38', '362', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:40:35', null, '');
INSERT INTO `winning_record` VALUES ('288', '', '38', '363', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:40:35', null, '');
INSERT INTO `winning_record` VALUES ('289', '', '38', '374', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:40:36', null, '');
INSERT INTO `winning_record` VALUES ('290', '', '38', '414', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:40:51', null, '');
INSERT INTO `winning_record` VALUES ('291', '', '38', '362', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:41:03', null, '');
INSERT INTO `winning_record` VALUES ('292', '', '38', '363', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:41:03', null, '');
INSERT INTO `winning_record` VALUES ('293', '', '38', '374', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-05 23:41:03', null, '');
INSERT INTO `winning_record` VALUES ('294', '', '38', '503', '0', '', '', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 11:16:16', null, '');
INSERT INTO `winning_record` VALUES ('295', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:00', null, '');
INSERT INTO `winning_record` VALUES ('296', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:00', null, '');
INSERT INTO `winning_record` VALUES ('297', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:00', null, '');
INSERT INTO `winning_record` VALUES ('298', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:00', null, '');
INSERT INTO `winning_record` VALUES ('299', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:00', null, '');
INSERT INTO `winning_record` VALUES ('300', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('301', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('302', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('303', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('304', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('305', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('306', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:01', null, '');
INSERT INTO `winning_record` VALUES ('307', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:02', null, '');
INSERT INTO `winning_record` VALUES ('308', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:02', null, '');
INSERT INTO `winning_record` VALUES ('309', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:02', null, '');
INSERT INTO `winning_record` VALUES ('310', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:02', null, '');
INSERT INTO `winning_record` VALUES ('311', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:02', null, '');
INSERT INTO `winning_record` VALUES ('312', '', '38', '0', '0', '', '', '78', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-06 15:45:02', null, '');
INSERT INTO `winning_record` VALUES ('313', '', '38', '0', '46800000049', '', '15026921603', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:22:56', null, '');
INSERT INTO `winning_record` VALUES ('314', '', '38', '0', '46800000049', '', '15026921603', null, '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:26:18', null, '');
INSERT INTO `winning_record` VALUES ('315', '', '38', '337', '14', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:33', null, '');
INSERT INTO `winning_record` VALUES ('316', '', '38', '414', '46800111049', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:34', null, '');
INSERT INTO `winning_record` VALUES ('317', '', '38', '340', '32', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:34', null, '');
INSERT INTO `winning_record` VALUES ('318', '', '38', '370', '199201123', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:34', null, '');
INSERT INTO `winning_record` VALUES ('319', '', '38', '371', '199201124', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:35', null, '');
INSERT INTO `winning_record` VALUES ('320', '', '38', '369', '199201122', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:35', null, '');
INSERT INTO `winning_record` VALUES ('321', '', '38', '372', '199201125', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:35', null, '');
INSERT INTO `winning_record` VALUES ('322', '', '38', '341', '27', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:35', null, '');
INSERT INTO `winning_record` VALUES ('323', '', '38', '339', '16', '', '', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:35', null, '');
INSERT INTO `winning_record` VALUES ('324', '', '38', '497', '0', '', '11111111111', '20180607153600', '1', '131', '微信红包1', '', '0', null, '0', '2018-06-07 15:36:35', null, '');
INSERT INTO `winning_record` VALUES ('325', '', '58', '560', '0', '', '15000852470', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-27 14:36:17', null, '');
INSERT INTO `winning_record` VALUES ('326', '', '58', '561', '0', '', '15000852470', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-27 14:37:52', null, '');
INSERT INTO `winning_record` VALUES ('327', '', '58', '562', '0', '', '15000852470', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-27 14:40:47', null, '');
INSERT INTO `winning_record` VALUES ('328', '', '58', '573', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 10:27:36', null, '');
INSERT INTO `winning_record` VALUES ('329', '', '58', '574', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 10:52:59', null, '');
INSERT INTO `winning_record` VALUES ('330', '', '58', '575', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 10:56:33', null, '');
INSERT INTO `winning_record` VALUES ('331', '', '58', '576', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 10:56:53', null, '');
INSERT INTO `winning_record` VALUES ('332', '', '58', '577', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 10:59:30', null, '');
INSERT INTO `winning_record` VALUES ('333', '', '58', '578', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 11:02:18', null, '');
INSERT INTO `winning_record` VALUES ('334', '', '58', '579', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 11:03:01', null, '');
INSERT INTO `winning_record` VALUES ('335', '', '58', '580', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 11:04:02', null, '');
INSERT INTO `winning_record` VALUES ('336', '', '58', '581', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 16:00:20', null, '');
INSERT INTO `winning_record` VALUES ('337', '', '58', '583', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 16:09:53', null, '');
INSERT INTO `winning_record` VALUES ('338', '', '58', '584', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 16:10:53', null, '');
INSERT INTO `winning_record` VALUES ('339', '', '58', '586', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', '23', '0', '2018-06-28 16:30:17', null, '');
INSERT INTO `winning_record` VALUES ('340', '', '58', '587', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', '23', '0', '2018-06-28 16:37:13', null, '');
INSERT INTO `winning_record` VALUES ('341', '', '58', '588', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', '23', '0', '2018-06-28 16:40:14', null, '');
INSERT INTO `winning_record` VALUES ('342', '', '58', '589', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', '23', '0', '2018-06-28 16:44:51', null, '');
INSERT INTO `winning_record` VALUES ('343', '', '58', '591', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', null, '0', '2018-06-28 17:02:00', null, '');
INSERT INTO `winning_record` VALUES ('344', '', '58', '592', '0', '', '15837878181', null, '1', '143', '卡券', '', '0', 'SUCCESS', '0', '2018-06-28 17:21:04', null, '');
INSERT INTO `winning_record` VALUES ('345', '', '58', '593', '0', '', '13851650041', null, '1', '143', '卡券', '', '0', 'SUCCESS', '0', '2018-06-28 17:22:42', null, '');
INSERT INTO `winning_record` VALUES ('346', '', '58', '594', '0', '', '18521054106', null, '1', '143', '卡券', '', '0', 'SUCCESS', '0', '2018-06-28 17:29:13', null, '');
INSERT INTO `winning_record` VALUES ('347', '', '40', '628', '0', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', null, '1', '133', '文案恭喜你中', '', '0', null, '0', '2018-07-04 15:37:50', null, '');
INSERT INTO `winning_record` VALUES ('348', '', '40', '629', '0', 'oTZNDwPFnZoIUWDEAQ1kSKatzUTE', '', null, '1', '133', '文案恭喜你中', '', '0', null, '0', '2018-07-04 15:48:11', null, '');

-- ----------------------------
-- Table structure for `winning_record_base_001`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_001`;
CREATE TABLE `winning_record_base_001` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_001
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_002`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_002`;
CREATE TABLE `winning_record_base_002` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_002
-- ----------------------------
INSERT INTO `winning_record_base_002` VALUES ('349', '65', '169', null, '123456dfsa7', null, null, '1', '152', null, '0', '', '2018-07-20 16:01:56', null);
INSERT INTO `winning_record_base_002` VALUES ('350', '65', '169', null, '123456dfsa7', null, null, '1', '152', null, '0', '', '2018-07-23 17:30:22', null);
INSERT INTO `winning_record_base_002` VALUES ('351', '65', '169', null, '123456dfsa7', null, null, '1', '152', null, '0', '', '2018-07-23 17:32:43', null);
INSERT INTO `winning_record_base_002` VALUES ('352', '65', '169', null, '123456dfsa7', null, null, '1', '152', null, '0', '', '2018-07-23 17:34:55', null);
INSERT INTO `winning_record_base_002` VALUES ('353', '65', '169', null, '123456dfsa7', null, null, '1', '152', null, '0', '', '2018-07-23 17:41:32', null);
INSERT INTO `winning_record_base_002` VALUES ('354', '65', '169', null, '123456dfsa7', null, null, '1', '152', null, '0', '', '2018-07-23 17:45:22', null);

-- ----------------------------
-- Table structure for `winning_record_base_003`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_003`;
CREATE TABLE `winning_record_base_003` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_003
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_004`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_004`;
CREATE TABLE `winning_record_base_004` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_004
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_005`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_005`;
CREATE TABLE `winning_record_base_005` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_005
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_006`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_006`;
CREATE TABLE `winning_record_base_006` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_006
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_007`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_007`;
CREATE TABLE `winning_record_base_007` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_007
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_008`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_008`;
CREATE TABLE `winning_record_base_008` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_008
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_009`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_009`;
CREATE TABLE `winning_record_base_009` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_009
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_010`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_010`;
CREATE TABLE `winning_record_base_010` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_010
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_011`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_011`;
CREATE TABLE `winning_record_base_011` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_011
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_012`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_012`;
CREATE TABLE `winning_record_base_012` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_012
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_013`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_013`;
CREATE TABLE `winning_record_base_013` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_013
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_014`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_014`;
CREATE TABLE `winning_record_base_014` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_014
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_015`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_015`;
CREATE TABLE `winning_record_base_015` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_015
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_016`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_016`;
CREATE TABLE `winning_record_base_016` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_016
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_017`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_017`;
CREATE TABLE `winning_record_base_017` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_017
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_018`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_018`;
CREATE TABLE `winning_record_base_018` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_018
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_019`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_019`;
CREATE TABLE `winning_record_base_019` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_019
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_020`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_020`;
CREATE TABLE `winning_record_base_020` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_020
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_021`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_021`;
CREATE TABLE `winning_record_base_021` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_021
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_022`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_022`;
CREATE TABLE `winning_record_base_022` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_022
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_023`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_023`;
CREATE TABLE `winning_record_base_023` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_023
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_024`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_024`;
CREATE TABLE `winning_record_base_024` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_024
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_025`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_025`;
CREATE TABLE `winning_record_base_025` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_025
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_026`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_026`;
CREATE TABLE `winning_record_base_026` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_026
-- ----------------------------
INSERT INTO `winning_record_base_026` VALUES ('349', '25', '169', null, '123', null, null, '1', '114', null, '0', '', '2018-07-20 10:23:25', null);
INSERT INTO `winning_record_base_026` VALUES ('350', '25', '169', null, 'fdasfdasfasdf', null, null, '1', '101', null, '0', '', '2018-07-20 14:45:38', null);

-- ----------------------------
-- Table structure for `winning_record_base_027`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_027`;
CREATE TABLE `winning_record_base_027` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_027
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_028`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_028`;
CREATE TABLE `winning_record_base_028` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_028
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_029`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_029`;
CREATE TABLE `winning_record_base_029` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_029
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_030`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_030`;
CREATE TABLE `winning_record_base_030` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_030
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_031`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_031`;
CREATE TABLE `winning_record_base_031` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_031
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_032`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_032`;
CREATE TABLE `winning_record_base_032` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_032
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_033`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_033`;
CREATE TABLE `winning_record_base_033` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_033
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_034`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_034`;
CREATE TABLE `winning_record_base_034` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_034
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_035`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_035`;
CREATE TABLE `winning_record_base_035` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_035
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_036`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_036`;
CREATE TABLE `winning_record_base_036` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_036
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_037`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_037`;
CREATE TABLE `winning_record_base_037` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_037
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_038`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_038`;
CREATE TABLE `winning_record_base_038` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_038
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_039`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_039`;
CREATE TABLE `winning_record_base_039` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_039
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_040`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_040`;
CREATE TABLE `winning_record_base_040` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_040
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_041`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_041`;
CREATE TABLE `winning_record_base_041` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_041
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_042`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_042`;
CREATE TABLE `winning_record_base_042` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_042
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_043`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_043`;
CREATE TABLE `winning_record_base_043` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_043
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_044`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_044`;
CREATE TABLE `winning_record_base_044` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_044
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_045`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_045`;
CREATE TABLE `winning_record_base_045` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_045
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_046`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_046`;
CREATE TABLE `winning_record_base_046` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_046
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_047`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_047`;
CREATE TABLE `winning_record_base_047` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_047
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_048`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_048`;
CREATE TABLE `winning_record_base_048` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_048
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_049`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_049`;
CREATE TABLE `winning_record_base_049` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_049
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_050`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_050`;
CREATE TABLE `winning_record_base_050` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_050
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_051`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_051`;
CREATE TABLE `winning_record_base_051` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_051
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_052`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_052`;
CREATE TABLE `winning_record_base_052` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_052
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_053`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_053`;
CREATE TABLE `winning_record_base_053` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_053
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_054`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_054`;
CREATE TABLE `winning_record_base_054` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_054
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_055`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_055`;
CREATE TABLE `winning_record_base_055` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_055
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_056`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_056`;
CREATE TABLE `winning_record_base_056` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '-1:失败 订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_056
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_057`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_057`;
CREATE TABLE `winning_record_base_057` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_057
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_058`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_058`;
CREATE TABLE `winning_record_base_058` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_058
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_059`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_059`;
CREATE TABLE `winning_record_base_059` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_059
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_060`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_060`;
CREATE TABLE `winning_record_base_060` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_060
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_061`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_061`;
CREATE TABLE `winning_record_base_061` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_061
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_062`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_062`;
CREATE TABLE `winning_record_base_062` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_062
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_063`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_063`;
CREATE TABLE `winning_record_base_063` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_063
-- ----------------------------

-- ----------------------------
-- Table structure for `winning_record_base_064`
-- ----------------------------
DROP TABLE IF EXISTS `winning_record_base_064`;
CREATE TABLE `winning_record_base_064` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
  `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表';

-- ----------------------------
-- Records of winning_record_base_064
-- ----------------------------

-- ----------------------------
-- Table structure for `worldcup_team`
-- ----------------------------
DROP TABLE IF EXISTS `worldcup_team`;
CREATE TABLE `worldcup_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `team_name` varchar(32) DEFAULT NULL COMMENT '球队名称',
  `team_pic` varchar(255) DEFAULT NULL COMMENT '球队图片',
  `score` int(11) DEFAULT NULL COMMENT '得分',
  `is_delete` int(11) DEFAULT '1' COMMENT '是否删除，1 未删除，0 删除',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `start_at` varchar(32) DEFAULT NULL COMMENT '比赛开始时间',
  `show_at` timestamp NULL DEFAULT NULL COMMENT '展示时间',
  `elimination` int(11) DEFAULT NULL COMMENT '场次信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='世界杯球队记录表';

-- ----------------------------
-- Records of worldcup_team
-- ----------------------------
INSERT INTO `worldcup_team` VALUES ('11', '25', '澳大利亚', 'http://rongyi.b0.upaiyun.com/commodity/text/201806111546412645.png', null, '1', '2018-06-11 15:49:41', '0000-00-00 00:00:00', null, null, null);
INSERT INTO `worldcup_team` VALUES ('12', '25', '比利时', 'http://rongyi.b0.upaiyun.com/commodity/text/201806111546379475.png', null, '1', '2018-06-11 15:50:01', '0000-00-00 00:00:00', null, null, null);
INSERT INTO `worldcup_team` VALUES ('13', '40', '中国队', 'http://rongyi.b0.upaiyun.com/commodity/text/201806111546379475.png', null, '1', '2018-06-22 16:51:38', '0000-00-00 00:00:00', '6月20', '2018-06-15 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('14', '40', '美国队', 'http://rongyi.b0.upaiyun.com/commodity/text/201806111546379475.png', null, '1', '2018-06-22 16:51:40', '0000-00-00 00:00:00', '6月20', '2018-06-14 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('17', '42', '西班牙1', 'http://rongyi.b0.upaiyun.com/sephora/1806111750131722.jpg', '1', '1', '2018-06-22 15:26:00', '2018-06-11 17:35:52', '6月20', '2018-06-14 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('18', '42', '意大利1', 'http://rongyi.b0.upaiyun.com/sephora/1806111750168562.jpg', '2', '1', '2018-06-22 15:26:01', '2018-06-11 17:35:52', '6月20', '2018-06-15 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('19', '38', '亚洲', 'http://rongyi.b0.upaiyun.com/sephora/1806111750131722.jpg', null, '1', '2018-06-13 09:55:12', '0000-00-00 00:00:00', '6月20', '2018-06-15 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('20', '38', '美国队', 'http://rongyi.b0.upaiyun.com/sephora/1806111750168562.jpg', null, '1', '2018-06-13 09:55:15', '0000-00-00 00:00:00', '6月20', '2018-06-15 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('21', '50', '西班牙', 'http://rongyi.b0.upaiyun.com/sephora/1806111754256487.jpg', null, '1', '2018-06-13 10:02:28', '0000-00-00 00:00:00', '6月20', '2018-06-13 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('22', '50', '澳大利亚', 'http://rongyi.b0.upaiyun.com/sephora/1806111754319739.png', null, '1', '2018-06-13 10:02:23', '0000-00-00 00:00:00', '6月20', '2018-06-13 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('23', '44', '西班牙2', 'url', null, '1', '2018-06-13 09:55:25', '0000-00-00 00:00:00', '6月22', '2018-06-10 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('24', '44', '意大利2', 'url', null, '1', '2018-06-13 09:55:29', '0000-00-00 00:00:00', '6月22', '2018-06-22 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('25', '46', '阿根廷', 'url', null, '1', '2018-06-13 10:42:10', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('26', '46', '智利', 'url', '2', '1', '2018-06-13 10:42:10', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('27', '47', '阿根廷2', 'url', null, '1', '2018-06-13 10:47:24', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('28', '47', '智2利', 'url', '2', '1', '2018-06-13 10:47:24', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('29', '48', '阿根廷2', 'url', null, '1', '2018-06-13 10:49:03', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('30', '48', '智2利', 'url', '2', '1', '2018-06-13 10:49:03', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('31', '49', '阿根廷2', 'url', null, '1', '2018-06-13 10:49:40', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('32', '49', '智2利', 'url', '2', '1', '2018-06-13 10:49:40', '0000-00-00 00:00:00', '6月23', null, null);
INSERT INTO `worldcup_team` VALUES ('33', '51', '阿根廷2', 'url', '1', '1', '2018-06-13 10:51:04', '0000-00-00 00:00:00', '6月23', '2018-06-23 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('34', '51', '智2利', 'url', '2', '1', '2018-06-13 10:51:04', '0000-00-00 00:00:00', '6月23', '2018-06-23 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('35', '52', '南非', 'url', '1', '1', '2018-06-13 11:31:21', '0000-00-00 00:00:00', '6月24', '2018-06-24 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('36', '52', '韩国', 'url', '2', '1', '2018-06-13 11:31:21', '0000-00-00 00:00:00', '6月24', '2018-06-24 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('37', '53', '巴西队', 'http://rongyi.b0.upaiyun.com/sephora/1806121301429620.png', '3', '1', '2018-06-25 11:35:46', '0000-00-00 00:00:00', '6月13号', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('38', '53', '日本队', 'http://rongyi.b0.upaiyun.com/sephora/1806121301513514.png', '4', '1', '2018-06-13 11:34:22', '0000-00-00 00:00:00', '6月13号', '2018-06-14 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('39', '54', '巴西队', 'http://rongyi.b0.upaiyun.com/sephora/1806121301429620.png', '3', null, '2018-06-13 11:40:36', '2018-06-13 11:40:36', '6月13号', '2018-06-15 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('40', '54', '日本队', 'http://rongyi.b0.upaiyun.com/sephora/1806121301513514.png', '4', null, '2018-06-13 11:40:36', '2018-06-13 11:40:36', '6月13号', '2018-06-15 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('41', '52', '中国队', 'http://rongyi.b0.upaiyun.com/sephora/1806251025448854.jpg', null, '1', '2018-06-25 10:40:44', '0000-00-00 00:00:00', '6月28号', '2018-06-28 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('42', '52', '日本队', 'http://rongyi.b0.upaiyun.com/sephora/1806251025507318.jpg', null, '1', '2018-06-25 10:40:47', '0000-00-00 00:00:00', '6月28号', '2018-06-28 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('43', '56', '中国队', 'http://rongyi.b0.upaiyun.com/sephora/1806251041060685.jpg', null, '1', '2018-06-25 10:58:14', '2018-06-25 10:58:14', '6月28号', '2018-06-28 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('44', '56', '日本队', 'http://rongyi.b0.upaiyun.com/sephora/1806251041113102.png', null, '1', '2018-06-25 10:58:14', '2018-06-25 10:58:14', '6月28号', '2018-06-28 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('45', '57', '巴西', 'http://rongyi.b0.upaiyun.com/sephora/1806251121106095.png', '3', '1', '2018-06-25 15:48:00', '2018-06-25 15:48:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('46', '57', '冰岛', 'http://rongyi.b0.upaiyun.com/sephora/1806251121242002.png', '0', '1', '2018-06-25 15:48:00', '2018-06-25 15:48:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('57', '58', '巴西', 'http://rongyi.b0.upaiyun.com/sephora/1806251121106095.png', '3', '1', '2018-06-25 17:02:07', '0000-00-00 00:00:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('58', '58', '冰岛', 'http://rongyi.b0.upaiyun.com/sephora/1806251121242002.png', '0', '1', '2018-06-25 17:02:07', '0000-00-00 00:00:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('63', '59', '巴西', 'http://rongyi.b0.upaiyun.com/sephora/1806251121106095.png', '3', '1', '2018-06-25 17:27:35', '0000-00-00 00:00:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('64', '59', '冰岛', 'http://rongyi.b0.upaiyun.com/sephora/1806251121242002.png', '0', '1', '2018-06-25 17:27:35', '0000-00-00 00:00:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('65', '55', '巴西', 'http://rongyi.b0.upaiyun.com/sephora/1806251746528914.png', null, '1', '2018-06-25 17:52:09', '0000-00-00 00:00:00', '6月30 21:00', '2018-06-30 00:00:00', null);
INSERT INTO `worldcup_team` VALUES ('66', '55', '冰岛', 'http://rongyi.b0.upaiyun.com/sephora/1806251746573583.png', null, '1', '2018-06-25 17:52:09', '0000-00-00 00:00:00', '6月30 21:00', '2018-06-30 00:00:00', null);

-- ----------------------------
-- Procedure structure for `gameLog_month`
-- ----------------------------
DROP PROCEDURE IF EXISTS `gameLog_month`;
DELIMITER ;;
CREATE DEFINER=`rongyi`@`%` PROCEDURE `gameLog_month`(in val_s int, in val_e int)
begin
declare i int;
DECLARE num VARCHAR(10);
set i=val_s;
while i<val_e+1 do
	case 
		when i<10 THEN set num=CONCAT("00",i);
		else set num=CONCAT("0",i);
	end case;
set @sql_create_table = concat(
'CREATE TABLE IF NOT EXISTS play_record_base_', num,
"(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `nickname` varchar(256) DEFAULT NULL COMMENT '微信昵称',
  `head_portrait` varchar(256) DEFAULT NULL COMMENT '微信头像url',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `channel_type` tinyint(4) DEFAULT NULL COMMENT '渠道类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未确认。 1:确认 (用作事物控制)',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COMMENT='活动基础表'
");
PREPARE sql_create_table FROM @sql_create_table;   
EXECUTE sql_create_table;
set i=i+1;
end while;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `winning_record`
-- ----------------------------
DROP PROCEDURE IF EXISTS `winning_record`;
DELIMITER ;;
CREATE DEFINER=`rongyi`@`%` PROCEDURE `winning_record`(in val_s int, in val_e int)
begin
declare i int;
DECLARE num VARCHAR(10);
set i=val_s;
while i<val_e+1 do
	case 
		when i<10 THEN set num=CONCAT("00",i);
		else set num=CONCAT("0",i);
	end case;
set @sql_create_table = concat(
'CREATE TABLE IF NOT EXISTS winning_record_base_', num,
"(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `record_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'user_id',
  `open_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT 'openId',
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `discover_time` varchar(16) DEFAULT NULL COMMENT '开奖时间',
  `num` int(11) DEFAULT '0' COMMENT '中奖数量/积分',
  `prize_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖品id',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单号',
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态（0待领取，1已领取，2已放弃）',
   `desc` varchar(20) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='中奖纪录表'
");
PREPARE sql_create_table FROM @sql_create_table;   
EXECUTE sql_create_table;
set i=i+1;
end while;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `winning_record_delete`
-- ----------------------------
DROP PROCEDURE IF EXISTS `winning_record_delete`;
DELIMITER ;;
CREATE DEFINER=`rongyi`@`%` PROCEDURE `winning_record_delete`(in val_s int, in val_e int)
begin
declare i int;
DECLARE num VARCHAR(10);
set i=val_s;
while i<val_e+1 do
	case 
		when i<10 THEN set num=CONCAT("00",i);
		else set num=CONCAT("0",i);
	end case;
set @sql_create_table = concat(
'drop table winning_record_base_', num);
PREPARE sql_create_table FROM @sql_create_table;   
EXECUTE sql_create_table;
set i=i+1;
end while;
end
;;
DELIMITER ;
