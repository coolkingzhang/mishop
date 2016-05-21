/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : springboot

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-05-17 19:16:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='市级信息';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '石家庄', '河北');
INSERT INTO `city` VALUES ('2', '邯郸', '河北');

-- ----------------------------
-- Table structure for commentreply
-- ----------------------------
DROP TABLE IF EXISTS `commentreply`;
CREATE TABLE `commentreply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回复ID，主键',
  `version` bigint(20) NOT NULL COMMENT '版本号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` varchar(45) DEFAULT NULL,
  `operTime` datetime DEFAULT NULL,
  `oper` varchar(45) DEFAULT NULL,
  `commentId` bigint(20) NOT NULL COMMENT '评价ID',
  `adminUuid` varchar(32) NOT NULL COMMENT '管理员ID',
  `adminName` varchar(50) DEFAULT NULL,
  `replyContent` varchar(500) NOT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评价回复表';

-- ----------------------------
-- Records of commentreply
-- ----------------------------

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `countryname` varchar(255) DEFAULT NULL COMMENT '名称',
  `countrycode` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=utf8 COMMENT='国家信息';

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Angola', 'AO123a');
INSERT INTO `country` VALUES ('2', 'Afghanistan', 'AF');
INSERT INTO `country` VALUES ('3', 'Albania', 'AL');
INSERT INTO `country` VALUES ('4', 'Algeria', 'DZ');
INSERT INTO `country` VALUES ('5', 'Andorra', 'AD');
INSERT INTO `country` VALUES ('6', 'Anguilla', 'AI');
INSERT INTO `country` VALUES ('7', 'Antigua and Barbuda', 'AG');
INSERT INTO `country` VALUES ('8', 'Argentina', 'AR');
INSERT INTO `country` VALUES ('9', 'Armenia', 'AM');
INSERT INTO `country` VALUES ('10', 'Australia', 'AU');
INSERT INTO `country` VALUES ('11', 'Austria', 'AT100');
INSERT INTO `country` VALUES ('12', 'Azerbaijan', 'AZ');
INSERT INTO `country` VALUES ('13', 'Bahamas', 'BS');
INSERT INTO `country` VALUES ('14', 'Bahrain', 'BH');
INSERT INTO `country` VALUES ('15', 'Bangladesh', 'BD');
INSERT INTO `country` VALUES ('16', 'Barbados', 'BBgg');
INSERT INTO `country` VALUES ('17', 'Belarus', 'BY');
INSERT INTO `country` VALUES ('18', 'Belgium', 'BE');
INSERT INTO `country` VALUES ('19', 'Belize', 'BZ');
INSERT INTO `country` VALUES ('20', 'Benin', 'BJ');
INSERT INTO `country` VALUES ('21', 'Bermuda Is.', 'BM');
INSERT INTO `country` VALUES ('22', 'Bolivia', 'BO');
INSERT INTO `country` VALUES ('23', 'Botswana', 'BW');
INSERT INTO `country` VALUES ('24', 'Brazil', 'BR');
INSERT INTO `country` VALUES ('25', 'Brunei', 'BN');
INSERT INTO `country` VALUES ('26', 'Bulgaria', 'BG');
INSERT INTO `country` VALUES ('27', 'Burkina-faso', 'BF');
INSERT INTO `country` VALUES ('28', 'Burma', 'MM');
INSERT INTO `country` VALUES ('29', 'Burundi', 'BI');
INSERT INTO `country` VALUES ('30', 'Cameroon', 'CM');
INSERT INTO `country` VALUES ('31', 'Canada', 'CA');
INSERT INTO `country` VALUES ('32', 'Central African Republic', 'CF');
INSERT INTO `country` VALUES ('33', 'Chad', 'TD');
INSERT INTO `country` VALUES ('34', 'Chile', 'CL');
INSERT INTO `country` VALUES ('35', 'China', 'CN');
INSERT INTO `country` VALUES ('36', 'Colombia', 'CO');
INSERT INTO `country` VALUES ('37', 'Congo', 'CG');
INSERT INTO `country` VALUES ('38', 'Cook Is.', 'CK');
INSERT INTO `country` VALUES ('39', 'Costa Rica', 'CR');
INSERT INTO `country` VALUES ('40', 'Cuba', 'CU');
INSERT INTO `country` VALUES ('41', 'Cyprus', 'CY');
INSERT INTO `country` VALUES ('42', 'Czech Republic', 'CZ');
INSERT INTO `country` VALUES ('43', 'Denmark', 'DK');
INSERT INTO `country` VALUES ('44', 'Djibouti', 'DJ');
INSERT INTO `country` VALUES ('45', 'Dominica Rep.', 'DO');
INSERT INTO `country` VALUES ('46', 'Ecuador', 'EC');
INSERT INTO `country` VALUES ('47', 'Egypt', 'EG');
INSERT INTO `country` VALUES ('48', 'EI Salvador', 'SV');
INSERT INTO `country` VALUES ('49', 'Estonia', 'EEf ffff');
INSERT INTO `country` VALUES ('50', 'Ethiopia', 'ET');
INSERT INTO `country` VALUES ('51', 'Fiji', 'FJ');
INSERT INTO `country` VALUES ('52', 'Finland', 'FI');
INSERT INTO `country` VALUES ('53', 'France', 'FR');
INSERT INTO `country` VALUES ('54', 'French Guiana', 'GF');
INSERT INTO `country` VALUES ('55', 'Gabon', 'GA');
INSERT INTO `country` VALUES ('56', 'Gambia', 'GM');
INSERT INTO `country` VALUES ('57', 'Georgia', 'GE');
INSERT INTO `country` VALUES ('58', 'Germany', 'DE');
INSERT INTO `country` VALUES ('59', 'Ghana', 'GH');
INSERT INTO `country` VALUES ('60', 'Gibraltar', 'GI');
INSERT INTO `country` VALUES ('61', 'Greece', 'GR');
INSERT INTO `country` VALUES ('62', 'Grenada', 'GD');
INSERT INTO `country` VALUES ('63', 'Guam', 'GU');
INSERT INTO `country` VALUES ('64', 'Guatemala', 'GT');
INSERT INTO `country` VALUES ('65', 'Guinea', 'GN');
INSERT INTO `country` VALUES ('66', 'Guyana', 'GY');
INSERT INTO `country` VALUES ('67', 'Haiti', 'HT');
INSERT INTO `country` VALUES ('68', 'Honduras', 'HN');
INSERT INTO `country` VALUES ('69', 'Hongkong', 'HK');
INSERT INTO `country` VALUES ('70', 'Hungary', 'HU');
INSERT INTO `country` VALUES ('71', 'Iceland', 'IS');
INSERT INTO `country` VALUES ('72', 'India', 'IN');
INSERT INTO `country` VALUES ('73', 'Indonesia', 'ID');
INSERT INTO `country` VALUES ('74', 'Iran', 'IR');
INSERT INTO `country` VALUES ('75', 'Iraq', 'IQ');
INSERT INTO `country` VALUES ('76', 'Ireland', 'IE');
INSERT INTO `country` VALUES ('77', 'Israel', 'IL');
INSERT INTO `country` VALUES ('78', 'Italy', 'IT');
INSERT INTO `country` VALUES ('79', 'Jamaica', 'JM');
INSERT INTO `country` VALUES ('80', 'Japan', 'JP');
INSERT INTO `country` VALUES ('81', 'Jordan', 'JO');
INSERT INTO `country` VALUES ('82', 'Kampuchea (Cambodia )', 'KH');
INSERT INTO `country` VALUES ('83', 'Kazakstan', 'KZ');
INSERT INTO `country` VALUES ('84', 'Kenya', 'KE');
INSERT INTO `country` VALUES ('85', 'Korea', 'KR');
INSERT INTO `country` VALUES ('86', 'Kuwait', 'KW');
INSERT INTO `country` VALUES ('87', 'Kyrgyzstan', 'KG');
INSERT INTO `country` VALUES ('88', 'Laos', 'LA');
INSERT INTO `country` VALUES ('89', 'Latvia', 'LV');
INSERT INTO `country` VALUES ('90', 'Lebanon', 'LB');
INSERT INTO `country` VALUES ('91', 'Lesotho', 'LS');
INSERT INTO `country` VALUES ('92', 'Liberia', 'LR');
INSERT INTO `country` VALUES ('93', 'Libya', 'LY');
INSERT INTO `country` VALUES ('94', 'Liechtenstein', 'LI');
INSERT INTO `country` VALUES ('95', 'Lithuania', 'LT');
INSERT INTO `country` VALUES ('96', 'Luxembourg', 'LU');
INSERT INTO `country` VALUES ('97', 'Macao', 'MO');
INSERT INTO `country` VALUES ('98', 'Madagascar', 'MG');
INSERT INTO `country` VALUES ('99', 'Malawi', 'MW');
INSERT INTO `country` VALUES ('100', 'Malaysia', 'MY');
INSERT INTO `country` VALUES ('101', 'Maldives', 'MV');
INSERT INTO `country` VALUES ('102', 'Mali', 'ML');
INSERT INTO `country` VALUES ('103', 'Malta', 'MT');
INSERT INTO `country` VALUES ('104', 'Mauritius', 'MU');
INSERT INTO `country` VALUES ('105', 'Mexico', 'MX');
INSERT INTO `country` VALUES ('106', 'Moldova, Republic of', 'MD');
INSERT INTO `country` VALUES ('107', 'Monaco', 'MC');
INSERT INTO `country` VALUES ('108', 'Mongolia', 'MN');
INSERT INTO `country` VALUES ('109', 'Montserrat Is', 'MS');
INSERT INTO `country` VALUES ('110', 'Morocco', 'MA');
INSERT INTO `country` VALUES ('111', 'Mozambique', 'MZ');
INSERT INTO `country` VALUES ('112', 'Namibia', 'NA');
INSERT INTO `country` VALUES ('113', 'Nauru', 'NR');
INSERT INTO `country` VALUES ('114', 'Nepal', 'NP');
INSERT INTO `country` VALUES ('115', 'Netherlands', 'NL');
INSERT INTO `country` VALUES ('116', 'New Zealand', 'NZ');
INSERT INTO `country` VALUES ('117', 'Nicaragua', 'NI');
INSERT INTO `country` VALUES ('118', 'Niger', 'NE');
INSERT INTO `country` VALUES ('119', 'Nigeria', 'NG');
INSERT INTO `country` VALUES ('120', 'North Korea', 'KP');
INSERT INTO `country` VALUES ('121', 'Norway', 'NO');
INSERT INTO `country` VALUES ('122', 'Oman', 'OM');
INSERT INTO `country` VALUES ('123', 'Pakistan', 'PK');
INSERT INTO `country` VALUES ('124', 'Panama', 'PA');
INSERT INTO `country` VALUES ('125', 'Papua New Cuinea', 'PG');
INSERT INTO `country` VALUES ('126', 'Paraguay', 'PY');
INSERT INTO `country` VALUES ('127', 'Peru', 'PE');
INSERT INTO `country` VALUES ('128', 'Philippines', 'PH');
INSERT INTO `country` VALUES ('129', 'Poland', 'PL');
INSERT INTO `country` VALUES ('130', 'French Polynesia', 'PF');
INSERT INTO `country` VALUES ('131', 'Portugal', 'PT');
INSERT INTO `country` VALUES ('132', 'Puerto Rico', 'PR');
INSERT INTO `country` VALUES ('133', 'Qatar', 'QA');
INSERT INTO `country` VALUES ('134', 'Romania', 'RO');
INSERT INTO `country` VALUES ('135', 'Russia', 'RU');
INSERT INTO `country` VALUES ('136', 'Saint Lueia', 'LC');
INSERT INTO `country` VALUES ('137', 'Saint Vincent', 'VC');
INSERT INTO `country` VALUES ('138', 'San Marino', 'SM');
INSERT INTO `country` VALUES ('139', 'Sao Tome and Principe', 'ST');
INSERT INTO `country` VALUES ('140', 'Saudi Arabia', 'SA');
INSERT INTO `country` VALUES ('141', 'Senegal', 'SN');
INSERT INTO `country` VALUES ('142', 'Seychelles', 'SC');
INSERT INTO `country` VALUES ('143', 'Sierra Leone', 'SL');
INSERT INTO `country` VALUES ('144', 'Singapore', 'SG');
INSERT INTO `country` VALUES ('145', 'Slovakia', 'SK');
INSERT INTO `country` VALUES ('146', 'Slovenia', 'SI');
INSERT INTO `country` VALUES ('147', 'Solomon Is', 'SB');
INSERT INTO `country` VALUES ('148', 'Somali', 'SO');
INSERT INTO `country` VALUES ('149', 'South Africa', 'ZA');
INSERT INTO `country` VALUES ('150', 'Spain', 'ES');
INSERT INTO `country` VALUES ('151', 'Sri Lanka', 'LK');
INSERT INTO `country` VALUES ('152', 'St.Lucia', 'LC');
INSERT INTO `country` VALUES ('153', 'St.Vincent', 'VC');
INSERT INTO `country` VALUES ('154', 'Sudan', 'SD');
INSERT INTO `country` VALUES ('155', 'Suriname', 'SR');
INSERT INTO `country` VALUES ('156', 'Swaziland', 'SZ');
INSERT INTO `country` VALUES ('157', 'Sweden', 'SE');
INSERT INTO `country` VALUES ('158', 'Switzerland', 'CH');
INSERT INTO `country` VALUES ('159', 'Syria', 'SY');
INSERT INTO `country` VALUES ('160', 'Taiwan', 'TW');
INSERT INTO `country` VALUES ('161', 'Tajikstan', 'TJ');
INSERT INTO `country` VALUES ('162', 'Tanzania', 'TZ');
INSERT INTO `country` VALUES ('163', 'Thailand', 'TH');
INSERT INTO `country` VALUES ('164', 'Togo', 'TG');
INSERT INTO `country` VALUES ('165', 'Tonga', 'TO');
INSERT INTO `country` VALUES ('166', 'Trinidad and Tobago', 'TT');
INSERT INTO `country` VALUES ('167', 'Tunisia', 'TN');
INSERT INTO `country` VALUES ('168', 'Turkey', 'TR');
INSERT INTO `country` VALUES ('169', 'Turkmenistan', 'TM');
INSERT INTO `country` VALUES ('170', 'Uganda', 'UG');
INSERT INTO `country` VALUES ('171', 'Ukraine', 'UA');
INSERT INTO `country` VALUES ('172', 'United Arab Emirates', 'AE');
INSERT INTO `country` VALUES ('173', 'United Kiongdom', 'GB');
INSERT INTO `country` VALUES ('174', 'United States of America', 'US');
INSERT INTO `country` VALUES ('175', 'Uruguay', 'UY');
INSERT INTO `country` VALUES ('176', 'Uzbekistan', 'UZ');
INSERT INTO `country` VALUES ('177', 'Venezuela', 'VE');
INSERT INTO `country` VALUES ('178', 'Vietnam', 'VN');
INSERT INTO `country` VALUES ('179', 'Yemen', 'YE');
INSERT INTO `country` VALUES ('180', 'Yugoslavia', 'YU');
INSERT INTO `country` VALUES ('181', 'Zimbabwe', 'ZW');
INSERT INTO `country` VALUES ('182', 'Zaire', 'ZR');
INSERT INTO `country` VALUES ('183', 'Zambia', 'ZM');
INSERT INTO `country` VALUES ('888', '我来测试了', '898989');
INSERT INTO `country` VALUES ('889', 'test china', '7788');
INSERT INTO `country` VALUES ('890', null, '7788');
INSERT INTO `country` VALUES ('891', null, '7788');
INSERT INTO `country` VALUES ('892', null, '7788');
INSERT INTO `country` VALUES ('893', null, '7788');
INSERT INTO `country` VALUES ('894', null, '7788');
INSERT INTO `country` VALUES ('895', '', '');
INSERT INTO `country` VALUES ('896', 'aaff', 'fffdd');

-- ----------------------------
-- Table structure for guser
-- ----------------------------
DROP TABLE IF EXISTS `guser`;
CREATE TABLE `guser` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(45) NOT NULL COMMENT '用户名称',
  `user_age` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户年龄',
  `user_sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户性别',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of guser
-- ----------------------------
INSERT INTO `guser` VALUES ('1', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('2', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('3', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('4', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('5', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('6', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('7', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('8', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('9', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('10', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('11', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('12', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('13', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('14', 'tony', '20', '1');
INSERT INTO `guser` VALUES ('15', 'tony', '20', '1');

-- ----------------------------
-- Table structure for idgenerator
-- ----------------------------
DROP TABLE IF EXISTS `idgenerator`;
CREATE TABLE `idgenerator` (
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT 'id名',
  `id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '当前的最大id',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idgenerator
-- ----------------------------
INSERT INTO `idgenerator` VALUES ('myid', '4000', '', '0');
INSERT INTO `idgenerator` VALUES ('test', '2000', '', '0');

-- ----------------------------
-- Table structure for product_main_set
-- ----------------------------
DROP TABLE IF EXISTS `product_main_set`;
CREATE TABLE `product_main_set` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `version` int(11) DEFAULT NULL COMMENT '版本号 ',
  `delFlag` tinyint(3) DEFAULT NULL COMMENT '逻辑删除标记位 0 正常 1 删除',
  `opeTime` datetime DEFAULT NULL COMMENT '操作时间',
  `oper` varchar(32) DEFAULT NULL COMMENT '操作人',
  `storeUuid` varchar(35) NOT NULL COMMENT '商户标识uuid',
  `setName` varchar(100) NOT NULL COMMENT '集合名词',
  `displayName` varchar(50) NOT NULL COMMENT '显示名称，在商品详细页显示的名称',
  `createTime` datetime NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `storeUuid` (`storeUuid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品集合，如：手机的版本、电视的系列，将相关性很强的商品定义到一个集合里面，方便顾客选择';

-- ----------------------------
-- Records of product_main_set
-- ----------------------------
INSERT INTO `product_main_set` VALUES ('1', '1', '0', '2016-05-10 14:52:28', '66', 'agagagkk', '彩电机', '选择颜色', '2016-05-10 14:52:41');
INSERT INTO `product_main_set` VALUES ('35', '1', '0', '2016-05-18 17:39:30', '93', 'akakak', '63', 'bb35', '2016-05-17 14:55:10');
INSERT INTO `product_main_set` VALUES ('36', '1', '0', '2016-05-12 14:38:19', 'ff', 'ff', 'tcl 电视', '选择大小', '2016-05-12 14:38:11');

-- ----------------------------
-- Table structure for product_main_set_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_main_set_detail`;
CREATE TABLE `product_main_set_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `delFlag` tinyint(3) DEFAULT NULL COMMENT '逻辑删除标记位 0 正常 1 删除',
  `opeTime` datetime DEFAULT NULL COMMENT '操作时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `oper` varchar(32) DEFAULT NULL COMMENT '操作人',
  `storeUuid` varchar(35) NOT NULL COMMENT '商户标识uuid',
  `productMainSetId` bigint(35) NOT NULL COMMENT '集合标识uuid',
  `productMainUuid` varchar(35) NOT NULL COMMENT '商品标识uuid',
  `displayName` varchar(50) NOT NULL COMMENT '显示名称，在商品详细页显示的名称',
  `createTime` datetime NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `storeUuid` (`storeUuid`),
  KEY `productMainUuid` (`productMainUuid`),
  KEY `productMainSetId` (`productMainSetId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='集合关联的商品明细表';

-- ----------------------------
-- Records of product_main_set_detail
-- ----------------------------
INSERT INTO `product_main_set_detail` VALUES ('1', '0', null, '1', '99', '300', '1', 'aa4fbb374e13439596df2ed511916d53', '55寸 黑色', '2016-05-12 15:24:46');
INSERT INTO `product_main_set_detail` VALUES ('4', '0', null, '1', '35', '353', '1', 'd80aedb1bb4a475ca359152f2daaf371', '55寸 白色', '2016-05-10 17:43:25');
INSERT INTO `product_main_set_detail` VALUES ('5', '0', null, '1', '35', '33', '1', '514b023d7a6d4782bb28b7186d0b622b', '59寸 蓝色', '2016-05-10 17:44:11');

-- ----------------------------
-- Table structure for shopcomment
-- ----------------------------
DROP TABLE IF EXISTS `shopcomment`;
CREATE TABLE `shopcomment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` bigint(20) NOT NULL COMMENT '版本号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` varchar(255) DEFAULT NULL,
  `operTime` datetime DEFAULT NULL,
  `oper` varchar(255) DEFAULT NULL,
  `comments` varchar(2000) DEFAULT NULL,
  `appTag` varchar(45) DEFAULT NULL,
  `appTime` datetime DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `customerUuid` varchar(50) DEFAULT NULL,
  `orderDetailUuid` varchar(50) DEFAULT NULL,
  `orderUuid` varchar(50) DEFAULT NULL,
  `productUuid` varchar(50) DEFAULT NULL,
  `productSkuNo` varchar(50) DEFAULT NULL,
  `reviewDesc` varchar(500) DEFAULT NULL,
  `reviewTime` datetime DEFAULT NULL,
  `reviewUserUuid` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `imgQty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcomment
-- ----------------------------

-- ----------------------------
-- Table structure for shopcommentscore
-- ----------------------------
DROP TABLE IF EXISTS `shopcommentscore`;
CREATE TABLE `shopcommentscore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` bigint(20) NOT NULL COMMENT '版本号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` varchar(45) DEFAULT NULL,
  `operTime` datetime DEFAULT NULL,
  `oper` varchar(45) DEFAULT NULL,
  `appScore` int(11) DEFAULT NULL,
  `appType` int(11) DEFAULT NULL COMMENT '1:商品评价 2:卖家服务 3:物流服务',
  `appCommentId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1 ：可用状态 2:前台不显示',
  `productSkuNo` varchar(50) DEFAULT NULL,
  `productUuid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcommentscore
-- ----------------------------

-- ----------------------------
-- Table structure for showimg
-- ----------------------------
DROP TABLE IF EXISTS `showimg`;
CREATE TABLE `showimg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` bigint(20) NOT NULL COMMENT '版本号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` varchar(45) DEFAULT NULL,
  `operTime` datetime DEFAULT NULL,
  `oper` varchar(45) DEFAULT NULL,
  `appCommentId` bigint(20) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `imgId` varchar(255) DEFAULT NULL COMMENT '文件编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showimg
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('269341969fcb41a4a92c5992f544e3ca', 'eric1', '1234567', null, null, null, null);
INSERT INTO `t_user` VALUES ('43cd70714cb64c898ccc8338de11bf50', 'eric2', '123456', null, null, null, null);
INSERT INTO `t_user` VALUES ('4ba44da3a6e7419197323bd653e1be57', 'eric3', '123456', null, null, null, null);
INSERT INTO `t_user` VALUES ('82b88853ce85486bba73b0ef66c106e5', 'eric4', '123456', null, null, null, null);
INSERT INTO `t_user` VALUES ('9b1b574043dc41dcb572190378bddbb7', 'eric5', '123456', null, null, null, null);
INSERT INTO `t_user` VALUES ('ead7b4c3331e442984a36b3fc7c78bc0', 'eric6', '123456', null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50250 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('50128', '2', '2', '2');
INSERT INTO `user` VALUES ('50129', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50130', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50131', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50132', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50133', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50134', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50135', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50136', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50137', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50138', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50139', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50140', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50141', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50142', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50143', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50144', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50145', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50146', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50147', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50148', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50149', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50150', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50151', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50152', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50153', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50154', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50155', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50156', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50157', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50158', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50159', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50160', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50161', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50162', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50163', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50164', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50165', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50166', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50167', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50168', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50169', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50170', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50171', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50172', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50173', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50174', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50175', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50176', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50177', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50178', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50179', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50180', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50181', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50182', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50183', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50184', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50185', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50186', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50187', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50188', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50189', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50190', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50191', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50192', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50193', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50194', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50195', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50196', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50197', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50198', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50199', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50200', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50201', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50202', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50203', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50204', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50205', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50206', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50207', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50208', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50209', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50210', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50211', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50212', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50213', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50214', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50215', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50216', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50217', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50218', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50219', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50220', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50221', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50222', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50223', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50224', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50225', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50226', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50227', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50228', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50229', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50230', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50231', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50232', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50233', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50234', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50235', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50236', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50237', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50238', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50239', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50240', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50241', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50242', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50243', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50244', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50245', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50246', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50247', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50248', 'myname', '100', 'mypassword');
INSERT INTO `user` VALUES ('50249', 'myname', '100', 'mypassword');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `usertype` varchar(2) DEFAULT NULL COMMENT '用户类型',
  `enabled` int(2) DEFAULT NULL COMMENT '是否可用',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `qq` varchar(14) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'KKGG', '12345678', '1', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('2', 'test2', 'aaaa', '2', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('3', 'test3', 'bbbb', '1', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('4', 'test4', 'cccc', '2', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('5', 'test5', 'dddd', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for usergo
-- ----------------------------
DROP TABLE IF EXISTS `usergo`;
CREATE TABLE `usergo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=50240 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergo
-- ----------------------------
INSERT INTO `usergo` VALUES ('50226', '??', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50227', '??', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50228', '??', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50229', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50230', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50231', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50232', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50233', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50234', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50235', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50236', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50237', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50238', '???', 'dotcoo.com');
INSERT INTO `usergo` VALUES ('50239', '???', 'dotcoo.com');

-- ----------------------------
-- Table structure for uuidp
-- ----------------------------
DROP TABLE IF EXISTS `uuidp`;
CREATE TABLE `uuidp` (
  `uuid` int(11) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uuidp
-- ----------------------------
INSERT INTO `uuidp` VALUES ('100', 'aa');
INSERT INTO `uuidp` VALUES ('102', 'aa_');
INSERT INTO `uuidp` VALUES ('200', 'bb');
INSERT INTO `uuidp` VALUES ('201', 'bb_');
INSERT INTO `uuidp` VALUES ('300', 'cc');
INSERT INTO `uuidp` VALUES ('301', 'cc_');
INSERT INTO `uuidp` VALUES ('400', 'dd');
INSERT INTO `uuidp` VALUES ('401', 'dd_');
