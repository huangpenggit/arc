/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50720
Source Host           : 127.0.01:3306
Source Database       : hla

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-08-14 18:12:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_realm`
-- ----------------------------
DROP TABLE IF EXISTS `sys_realm`;
CREATE TABLE `sys_realm` (
  `id` varchar(20) NOT NULL COMMENT '主键',
  `realm_name` varchar(50) NOT NULL COMMENT '资源名',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `path` varchar(255) NOT NULL COMMENT '资源路径',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '上级节点ID',
  `priority` int(2) NOT NULL DEFAULT '0' COMMENT '优先级',
  `type` varchar(10) NOT NULL COMMENT '资源类型（PART，LINK，ACTION）',
  `method` varchar(10) NOT NULL COMMENT '请求方法（GET，POST，ALL）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_realm
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(20) NOT NULL COMMENT '自增id',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `root_admin` int(2) NOT NULL COMMENT '是否系统管理员',
  `state` int(2) NOT NULL COMMENT '状态',
  `note` varchar(255) DEFAULT NULL COMMENT '备注 描述',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_realm`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_realm`;
CREATE TABLE `sys_role_realm` (
  `role_id` varchar(20) NOT NULL COMMENT '角色ID',
  `realm_id` varchar(20) NOT NULL COMMENT '资源ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`,`realm_id`),
  KEY `realm_id` (`realm_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源表';

-- ----------------------------
-- Records of sys_role_realm
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `display_name` varchar(255) DEFAULT NULL COMMENT '账号姓名',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(128) DEFAULT NULL COMMENT '电子邮箱',
  `status` int(10) NOT NULL DEFAULT '0' COMMENT '账号状态(0：正常 1:暂停)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` varchar(20) NOT NULL COMMENT '角色ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
