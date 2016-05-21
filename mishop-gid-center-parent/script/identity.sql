/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : ttwg_identity

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-05-21 23:02:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aaa
-- ----------------------------
DROP TABLE IF EXISTS `aaa`;
CREATE TABLE `aaa` (
  `lgg` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lgg`)
) ENGINE=InnoDB AUTO_INCREMENT=733703209301835808 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aaa
-- ----------------------------
INSERT INTO `aaa` VALUES ('733703209301835807');

-- ----------------------------
-- Table structure for identity
-- ----------------------------
DROP TABLE IF EXISTS `identity`;
CREATE TABLE `identity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `system` varchar(512) NOT NULL,
  `sub_sys` varchar(512) NOT NULL,
  `module` varchar(512) NOT NULL,
  `table_name` varchar(512) NOT NULL,
  `identity` bigint(20) NOT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identity
-- ----------------------------
INSERT INTO `identity` VALUES ('29', 'ttwg', 'item', 'info', 't_item_info', '10', '2016-03-31', '2016-04-06 10:12:19');
INSERT INTO `identity` VALUES ('30', 'wap', 'dealer', 'tcl', 'identity', '15', '2016-05-20', '2016-05-20 22:04:12');
INSERT INTO `identity` VALUES ('33', 'tclshop', 'dealer', 'wap', 'identity', '22', '2016-05-20', '2016-05-21 15:44:55');
INSERT INTO `identity` VALUES ('35', 'tclshop', 'dealer', 'wap2', 'identity', '15', '2016-05-21', '2016-05-21 00:03:04');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('56', 'CC', 'aa');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('100', 'This is title', 'This is content');

-- ----------------------------
-- Table structure for t_identity
-- ----------------------------
DROP TABLE IF EXISTS `t_identity`;
CREATE TABLE `t_identity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `system` varchar(512) NOT NULL,
  `sub_sys` varchar(512) NOT NULL,
  `module` varchar(512) NOT NULL,
  `table_name` varchar(512) NOT NULL,
  `identity` bigint(20) NOT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_identity
-- ----------------------------
INSERT INTO `t_identity` VALUES ('29', 'ttwg', 'item', 'info', 't_item_info', '10', '2016-03-31', '2016-04-06 10:12:19');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123506 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('123487', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123488', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123489', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123490', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123491', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123492', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123493', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123494', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123495', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123496', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123497', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123498', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123499', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123500', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123501', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123502', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123503', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123504', 'world', 'hello');
INSERT INTO `user_info` VALUES ('123505', 'world', 'hello');
