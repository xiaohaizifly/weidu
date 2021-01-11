/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : weidu

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2017-10-23 10:22:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL,
  `add_time` int(11) NOT NULL,
  `nav_list` text NOT NULL,
  `level` varchar(25) NOT NULL COMMENT '管理员等级',
  `nav-list` text NOT NULL COMMENT '权限',
  `loginnum` varchar(10) NOT NULL COMMENT '登录次数',
  `lastdate` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `edit_time` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'xhz', '123456', '0', '', '业务部', '', '45', '0', '', '1504594720');
INSERT INTO `admin_users` VALUES ('2', 'admin', '123456', '1504594400', '', '工程部', '', '13', '0', '', '0');
INSERT INTO `admin_users` VALUES ('3', 'ddd', '123456', '1506480448', '', '', '', '2', '0', '', '0');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL COMMENT '公司logo',
  `phone` varchar(60) NOT NULL COMMENT '公司电话',
  `profile` varchar(500) NOT NULL COMMENT '公司简介',
  `address` varchar(255) NOT NULL COMMENT '公司地址',
  `information` varchar(255) NOT NULL COMMENT '备案信息',
  `company_name` varchar(60) NOT NULL COMMENT '公司名称',
  `qq` varchar(20) NOT NULL COMMENT 'QQ号',
  `qr` varchar(255) NOT NULL COMMENT '微信二维码',
  `keyword` text NOT NULL COMMENT '关键词',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'Public/Upload/images/2017-09-11/59b62ee5d0c70.png', '8562-147614749', '杭州维度工业设计有限公司是一家致力于为企业提供产品外观设计、结构设计以及企业战略规划、品牌策划等专业服务', '杭州市西湖屈云栖小镇云计算产业园D3', 'Copyright © 1feel.com 1998-2017 京ICP备140551号 京公网安备110105015392', '杭州维度工业设计有限公司', '12345678', 'Public/Upload/images/2017-09-15/59bb3e25a3a8b.jpg', '平面设计 网站设计');

-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` smallint(4) NOT NULL COMMENT '排序',
  `img_introduce` text NOT NULL COMMENT '介绍',
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '0', 'Upload/images/2017-09-06/59af703cd311b.jpg', '1', '');
INSERT INTO `images` VALUES ('2', '0', 'Upload/images/2017-09-06/59af706c62bcb.jpg', '2', '');
INSERT INTO `images` VALUES ('3', '0', 'Upload/images/2017-09-06/59af707610400.jpg', '3', '');
INSERT INTO `images` VALUES ('6', '53', 'Public/Upload/images/2017-09-06/59afb91126dc0.png', '0', '');
INSERT INTO `images` VALUES ('8', '56', 'Public/Upload/images/2017-09-06/59afbfadf2f85.png', '0', '');
INSERT INTO `images` VALUES ('9', '57', 'Public/Upload/images/2017-09-06/59afbfd557e67.png', '0', '');
INSERT INTO `images` VALUES ('10', '58', 'Public/Upload/images/2017-09-06/59afc07a72a00.png', '0', '');
INSERT INTO `images` VALUES ('11', '59', 'Public/Upload/images/2017-09-06/59afc0a59e1e9.png', '0', '');
INSERT INTO `images` VALUES ('15', '61', 'Public/Upload/images/2017-09-06/59afc1a523930.png', '0', '');
INSERT INTO `images` VALUES ('16', '62', 'Public/Upload/images/2017-09-06/59afc1c1092a0.png', '0', '');
INSERT INTO `images` VALUES ('17', '63', 'Public/Upload/images/2017-09-06/59afc203409f2.png', '0', '');
INSERT INTO `images` VALUES ('18', '64', 'Public/Upload/images/2017-09-06/59afc22e53fe9.png', '0', '');
INSERT INTO `images` VALUES ('20', '55', 'Public/Upload/images/2017-09-07/59b0a3aa66b1a.png', '0', '');
INSERT INTO `images` VALUES ('22', '65', 'Public/Upload/images/2017-09-07/59b0a4c2a6664.png', '2', 'e');
INSERT INTO `images` VALUES ('23', '66', 'Public/Upload/images/2017-09-07/59b0e02945b42.png', '0', '');
INSERT INTO `images` VALUES ('24', '67', 'Public/Upload/images/2017-09-07/59b0e0a90a332.jpg', '0', '');
INSERT INTO `images` VALUES ('26', '68', 'Public/Upload/images/2017-09-07/59b0e1141cf3c.jpg', '0', '');
INSERT INTO `images` VALUES ('27', '69', 'Public/Upload/images/2017-09-07/59b0e15fd08c8.jpg', '0', '');
INSERT INTO `images` VALUES ('28', '70', 'Public/Upload/images/2017-09-07/59b0e18db2157.jpg', '0', '');
INSERT INTO `images` VALUES ('29', '71', 'Public/Upload/images/2017-09-07/59b0e65446746.png', '0', '');
INSERT INTO `images` VALUES ('31', '73', 'Public/Upload/images/2017-09-07/59b0eb3b176b5.jpg', '0', '');
INSERT INTO `images` VALUES ('32', '74', 'Public/Upload/images/2017-09-07/59b0eb70f10cc.jpg', '0', '');
INSERT INTO `images` VALUES ('33', '75', 'Public/Upload/images/2017-09-07/59b0ebaf7e680.jpg', '0', '');
INSERT INTO `images` VALUES ('34', '76', 'Public/Upload/images/2017-09-07/59b0ebee7d500.jpg', '0', '');
INSERT INTO `images` VALUES ('35', '77', 'Public/Upload/images/2017-09-07/59b0ec198d40c.jpg', '0', '');
INSERT INTO `images` VALUES ('36', '78', 'Public/Upload/images/2017-09-07/59b0ec322f52c.jpg', '0', '');
INSERT INTO `images` VALUES ('37', '79', 'Public/Upload/images/2017-09-07/59b0ec6fbeb8b.jpg', '0', '');
INSERT INTO `images` VALUES ('38', '80', 'Public/Upload/images/2017-09-07/59b0ecbe9ec47.png', '0', '');
INSERT INTO `images` VALUES ('39', '81', 'Public/Upload/images/2017-09-07/59b0ece99872e.png', '0', '');
INSERT INTO `images` VALUES ('40', '72', 'Public/Upload/images/2017-09-07/59b0ee40bac0b.jpg', '0', '');
INSERT INTO `images` VALUES ('41', '82', 'Public/Upload/images/2017-09-07/59b0f68be1ea7.jpg', '0', '');
INSERT INTO `images` VALUES ('44', '87', 'Public/Upload/images/2017-09-07/59b0f7cb846f4.png', '0', '');
INSERT INTO `images` VALUES ('45', '88', 'Public/Upload/images/2017-09-07/59b0f8571c917.png', '0', '');
INSERT INTO `images` VALUES ('46', '89', 'Public/Upload/images/2017-09-07/59b0f87dada2e.png', '0', '');
INSERT INTO `images` VALUES ('47', '92', 'Public/Upload/images/2017-09-07/59b0f9768ce9d.png', '0', '');
INSERT INTO `images` VALUES ('48', '93', 'Public/Upload/images/2017-09-07/59b0f98a43c15.png', '0', '');
INSERT INTO `images` VALUES ('49', '94', 'Public/Upload/images/2017-09-07/59b0f9959ec62.png', '0', '');
INSERT INTO `images` VALUES ('50', '95', 'Public/Upload/images/2017-09-07/59b0f9a48369f.png', '0', '');
INSERT INTO `images` VALUES ('51', '96', 'Public/Upload/images/2017-09-07/59b0f9b2093be.png', '0', '');
INSERT INTO `images` VALUES ('52', '97', 'Public/Upload/images/2017-09-07/59b0f9bcca187.png', '0', '');
INSERT INTO `images` VALUES ('53', '98', 'Public/Upload/images/2017-09-07/59b0f9c538b9d.png', '0', '');
INSERT INTO `images` VALUES ('54', '99', 'Public/Upload/images/2017-09-07/59b0f9d29bde1.png', '0', '');
INSERT INTO `images` VALUES ('55', '100', 'Public/Upload/images/2017-09-07/59b0f9ea5accd.png', '0', '');
INSERT INTO `images` VALUES ('56', '101', 'Public/Upload/images/2017-09-07/59b0f9f419377.png', '0', '');
INSERT INTO `images` VALUES ('57', '102', 'Public/Upload/images/2017-09-07/59b0f9fb3e0c3.png', '0', '');
INSERT INTO `images` VALUES ('58', '103', 'Public/Upload/images/2017-09-07/59b0fa04acd61.png', '0', '');
INSERT INTO `images` VALUES ('59', '104', 'Public/Upload/images/2017-09-07/59b0fa13b7549.png', '0', '');
INSERT INTO `images` VALUES ('60', '105', 'Public/Upload/images/2017-09-07/59b0fa1bd646e.png', '0', '');
INSERT INTO `images` VALUES ('61', '106', 'Public/Upload/images/2017-09-07/59b0fa246bb94.png', '0', '');
INSERT INTO `images` VALUES ('62', '107', 'Public/Upload/images/2017-09-07/59b0fa7540f3b.jpg', '0', '');
INSERT INTO `images` VALUES ('63', '110', 'Public/Upload/images/2017-09-08/59b1fe8269ab1.jpg', '0', '');
INSERT INTO `images` VALUES ('67', '111', 'Public/Upload/images/2017-09-08/59b202993d874.jpg', '1', '');
INSERT INTO `images` VALUES ('68', '111', 'Public/Upload/images/2017-09-08/59b202a850fbc.jpg', '2', '');
INSERT INTO `images` VALUES ('69', '111', 'Public/Upload/images/2017-09-08/59b202b8918aa.jpg', '3', '');
INSERT INTO `images` VALUES ('70', '112', 'Public/Upload/images/2017-09-08/59b2030d47987.jpg', '1', '');
INSERT INTO `images` VALUES ('71', '112', 'Public/Upload/images/2017-09-08/59b2036b1b3fc.jpg', '2', '');
INSERT INTO `images` VALUES ('72', '112', 'Public/Upload/images/2017-09-08/59b2038815f0a.jpg', '3', '');
INSERT INTO `images` VALUES ('73', '108', 'Public/Upload/images/2017-09-08/59b203ccb7f53.jpg', '1', '');
INSERT INTO `images` VALUES ('74', '108', 'Public/Upload/images/2017-09-08/59b203e1a6367.jpg', '2', '');
INSERT INTO `images` VALUES ('75', '108', 'Public/Upload/images/2017-09-08/59b203f2d9c06.jpg', '3', '');
INSERT INTO `images` VALUES ('76', '84', 'Public/Upload/images/2017-09-08/59b205874de01.jpg', '0', '');
INSERT INTO `images` VALUES ('77', '60', 'Public/Upload/images/2017-09-08/59b217a7ca7c2.png', '1', '');
INSERT INTO `images` VALUES ('78', '60', 'Public/Upload/images/2017-09-08/59b217a7cb762.png', '2', '');
INSERT INTO `images` VALUES ('79', '86', 'Public/Upload/images/2017-09-08/59b22d7d31170.jpg', '1', '');
INSERT INTO `images` VALUES ('80', '86', 'Public/Upload/images/2017-09-08/59b22d7d32110.jpg', '2', '');
INSERT INTO `images` VALUES ('81', '85', 'Public/Upload/images/2017-09-09/59b34f6d8fa66.jpg', '0', '');
INSERT INTO `images` VALUES ('82', '125', 'Public/Upload/images/2017-09-09/59b39b80b28a9.jpg', '0', '');
INSERT INTO `images` VALUES ('83', '126', 'Public/Upload/images/2017-09-09/59b39e9aa3814.png', '0', '');
INSERT INTO `images` VALUES ('84', '109', 'Public/Upload/images/2017-09-09/59b39f300b0cb.png', '0', '');
INSERT INTO `images` VALUES ('85', '127', 'Public/Upload/images/2017-09-09/59b39f6099d16.png', '0', '');
INSERT INTO `images` VALUES ('86', '128', 'Public/Upload/images/2017-09-09/59b39f8c55d33.png', '0', '');
INSERT INTO `images` VALUES ('87', '129', 'Public/Upload/images/2017-09-09/59b39fb1c7a12.png', '0', '');
INSERT INTO `images` VALUES ('88', '130', 'Public/Upload/images/2017-09-09/59b39fdb58a32.png', '0', '');
INSERT INTO `images` VALUES ('89', '83', 'Public/Upload/images/2017-09-09/59b3a1053444e.jpg', '0', '');
INSERT INTO `images` VALUES ('90', '131', 'Public/Upload/images/2017-09-11/59b5f7a981afb.png', '0', '');
INSERT INTO `images` VALUES ('91', '132', 'Public/Upload/images/2017-09-11/59b5f80183ec8.png', '0', '');
INSERT INTO `images` VALUES ('92', '133', 'Public/Upload/images/2017-09-11/59b5f81f0b9db.png', '0', '');
INSERT INTO `images` VALUES ('93', '134', 'Public/Upload/images/2017-09-11/59b5f83b0c6c4.png', '0', '');
INSERT INTO `images` VALUES ('94', '135', 'Public/Upload/images/2017-09-11/59b5f86393c62.png', '0', '');
INSERT INTO `images` VALUES ('95', '136', 'Public/Upload/images/2017-09-11/59b5f87f686cc.png', '0', '');
INSERT INTO `images` VALUES ('96', '137', 'Public/Upload/images/2017-09-11/59b5f893045a2.png', '0', '');
INSERT INTO `images` VALUES ('97', '139', 'Public/Upload/images/2017-09-11/59b5f8e748fdf.png', '0', '');
INSERT INTO `images` VALUES ('98', '140', 'Public/Upload/images/2017-09-11/59b5f9170a5c4.png', '0', '');
INSERT INTO `images` VALUES ('100', '141', 'Public/Upload/images/2017-09-11/59b5f93a9e4ba.png', '0', '');
INSERT INTO `images` VALUES ('101', '21', 'Public/Upload/images/2017-09-11/59b5fa7fb5a82.png', '0', '');
INSERT INTO `images` VALUES ('102', '144', 'Public/Upload/images/2017-09-11/59b60588a9b4a.png', '0', '');
INSERT INTO `images` VALUES ('103', '145', 'Public/Upload/images/2017-09-11/59b6201cd470c.png', '0', '');
INSERT INTO `images` VALUES ('104', '146', 'Public/Upload/images/2017-09-11/59b6209e61fa7.png', '0', '');
INSERT INTO `images` VALUES ('105', '147', 'Public/Upload/images/2017-09-11/59b620b9a0a40.png', '0', '');
INSERT INTO `images` VALUES ('106', '148', 'Public/Upload/images/2017-09-11/59b620c93c8dd.png', '0', '');
INSERT INTO `images` VALUES ('107', '149', 'Public/Upload/images/2017-09-11/59b620d715d0d.png', '0', '');
INSERT INTO `images` VALUES ('108', '150', 'Public/Upload/images/2017-09-11/59b6210690cf4.png', '0', '');
INSERT INTO `images` VALUES ('109', '151', 'Public/Upload/images/2017-09-11/59b621279ccfd.png', '0', '');
INSERT INTO `images` VALUES ('110', '152', 'Public/Upload/images/2017-09-11/59b62140618ea.png', '0', '');
INSERT INTO `images` VALUES ('111', '153', 'Public/Upload/images/2017-09-11/59b6214fb142b.png', '0', '');
INSERT INTO `images` VALUES ('112', '154', 'Public/Upload/images/2017-09-11/59b6215e7a7c9.png', '0', '');
INSERT INTO `images` VALUES ('113', '155', 'Public/Upload/images/2017-09-11/59b62173ccee5.png', '0', '');
INSERT INTO `images` VALUES ('114', '156', 'Public/Upload/images/2017-09-11/59b6217f17baf.png', '0', '');
INSERT INTO `images` VALUES ('115', '157', 'Public/Upload/images/2017-09-11/59b62189e1e79.png', '0', '');
INSERT INTO `images` VALUES ('116', '158', 'Public/Upload/images/2017-09-12/59b74459a870f.jpg', '0', '');
INSERT INTO `images` VALUES ('117', '161', 'Public/Upload/images/2017-09-12/59b7453d16301.png', '0', '');
INSERT INTO `images` VALUES ('118', '162', 'Public/Upload/images/2017-09-12/59b7455cb2f03.png', '0', '');
INSERT INTO `images` VALUES ('119', '163', 'Public/Upload/images/2017-09-12/59b7458ac44e4.png', '0', '');
INSERT INTO `images` VALUES ('120', '164', 'Public/Upload/images/2017-09-12/59b745acbe5f8.png', '0', '');
INSERT INTO `images` VALUES ('121', '165', 'Public/Upload/images/2017-09-12/59b745d044dba.png', '0', '');
INSERT INTO `images` VALUES ('122', '171', 'Public/Upload/images/2017-09-12/59b74ddcbbe1a.png', '0', '');
INSERT INTO `images` VALUES ('123', '172', 'Public/Upload/images/2017-09-12/59b74dfd808e6.png', '0', '');
INSERT INTO `images` VALUES ('124', '173', 'Public/Upload/images/2017-09-12/59b74e273b0a2.png', '0', '');
INSERT INTO `images` VALUES ('125', '174', 'Public/Upload/images/2017-09-12/59b74e49879b4.png', '0', '');
INSERT INTO `images` VALUES ('126', '175', 'Public/Upload/images/2017-09-12/59b74e76291fd.png', '0', '');
INSERT INTO `images` VALUES ('128', '169', 'Public/Upload/images/2017-09-12/59b753f0ebd34.png', '0', '');
INSERT INTO `images` VALUES ('129', '113', 'Public/Upload/images/2017-09-12/59b75652495ff.png', '0', '');
INSERT INTO `images` VALUES ('130', '177', 'Public/Upload/images/2017-09-12/59b757a8b24be.jpg', '0', '');
INSERT INTO `images` VALUES ('131', '178', 'Public/Upload/images/2017-09-12/59b757bf0e7ea.png', '0', '');
INSERT INTO `images` VALUES ('132', '179', 'Public/Upload/images/2017-09-12/59b757d9ddba4.png', '0', '');
INSERT INTO `images` VALUES ('133', '180', 'Public/Upload/images/2017-09-12/59b757f01c000.png', '0', '');
INSERT INTO `images` VALUES ('134', '181', 'Public/Upload/images/2017-09-12/59b7580111722.png', '0', '');
INSERT INTO `images` VALUES ('135', '182', 'Public/Upload/images/2017-09-12/59b77bdb1c3d5.png', '0', '');
INSERT INTO `images` VALUES ('136', '183', 'Public/Upload/images/2017-09-12/59b77bee1d5e6.jpg', '0', '');
INSERT INTO `images` VALUES ('137', '185', 'Public/Upload/images/2017-09-12/59b77d0544dfa.jpg', '0', '');
INSERT INTO `images` VALUES ('138', '186', 'Public/Upload/images/2017-09-12/59b77d141980d.png', '0', '');
INSERT INTO `images` VALUES ('139', '187', 'Public/Upload/images/2017-09-12/59b77d1fa0a55.png', '0', '');
INSERT INTO `images` VALUES ('140', '188', 'Public/Upload/images/2017-09-12/59b77d2b9e89a.png', '0', '');
INSERT INTO `images` VALUES ('141', '189', 'Public/Upload/images/2017-09-12/59b77d3ca233d.png', '0', '');
INSERT INTO `images` VALUES ('142', '190', 'Public/Upload/images/2017-09-12/59b77d62b1a14.png', '0', '');
INSERT INTO `images` VALUES ('143', '191', 'Public/Upload/images/2017-09-12/59b77d6dca183.jpg', '0', '');
INSERT INTO `images` VALUES ('144', '193', 'Public/Upload/images/2017-09-12/59b77d8e38e2e.jpg', '0', '');
INSERT INTO `images` VALUES ('145', '194', 'Public/Upload/images/2017-09-12/59b77d997e514.png', '0', '');
INSERT INTO `images` VALUES ('146', '195', 'Public/Upload/images/2017-09-12/59b77da4aa96d.png', '0', '');
INSERT INTO `images` VALUES ('147', '196', 'Public/Upload/images/2017-09-12/59b77dc4857fb.png', '0', '');
INSERT INTO `images` VALUES ('148', '197', 'Public/Upload/images/2017-09-12/59b77dd0a427b.png', '0', '');
INSERT INTO `images` VALUES ('149', '198', 'Public/Upload/images/2017-09-12/59b77de27c8ba.png', '0', '');
INSERT INTO `images` VALUES ('150', '199', 'Public/Upload/images/2017-09-12/59b77df9725be.jpg', '0', '');
INSERT INTO `images` VALUES ('151', '200', 'Public/Upload/images/2017-09-14/59ba225e95543.png', '0', '');
INSERT INTO `images` VALUES ('152', '201', 'Public/Upload/images/2017-09-14/59ba22d6bf88c.png', '0', '');
INSERT INTO `images` VALUES ('153', '203', 'Public/Upload/images/2017-09-14/59ba2396d2d17.png', '0', '');
INSERT INTO `images` VALUES ('154', '204', 'Public/Upload/images/2017-09-14/59ba23be0e968.png', '0', '');
INSERT INTO `images` VALUES ('155', '205', 'Public/Upload/images/2017-09-14/59ba23d45ad3d.png', '0', '');
INSERT INTO `images` VALUES ('156', '206', 'Public/Upload/images/2017-09-14/59ba23e7f13f7.png', '0', '');
INSERT INTO `images` VALUES ('157', '207', 'Public/Upload/images/2017-09-14/59ba23fb3a694.png', '0', '');
INSERT INTO `images` VALUES ('158', '209', 'Public/Upload/images/2017-09-14/59ba243fcc637.jpg', '0', '');
INSERT INTO `images` VALUES ('159', '210', 'Public/Upload/images/2017-09-14/59ba2458bf10a.jpg', '0', '');
INSERT INTO `images` VALUES ('160', '211', 'Public/Upload/images/2017-09-14/59ba2469b54ac.jpg', '0', '');
INSERT INTO `images` VALUES ('161', '212', 'Public/Upload/images/2017-09-14/59ba249a4facf.png', '0', '');
INSERT INTO `images` VALUES ('162', '213', 'Public/Upload/images/2017-09-14/59ba2aeb10507.png', '0', '');
INSERT INTO `images` VALUES ('163', '215', 'Public/Upload/images/2017-09-14/59ba2b657d33b.png', '0', '');
INSERT INTO `images` VALUES ('164', '216', 'Public/Upload/images/2017-09-14/59ba2b7b0b7d2.png', '0', '');
INSERT INTO `images` VALUES ('165', '217', 'Public/Upload/images/2017-09-14/59ba2b9185df9.png', '0', '');
INSERT INTO `images` VALUES ('166', '218', 'Public/Upload/images/2017-09-14/59ba2ba91086b.png', '0', '');
INSERT INTO `images` VALUES ('167', '219', 'Public/Upload/images/2017-09-14/59ba2bcf9042e.png', '0', '');
INSERT INTO `images` VALUES ('168', '220', 'Public/Upload/images/2017-09-14/59ba2be9b677e.png', '0', '');
INSERT INTO `images` VALUES ('169', '221', 'Public/Upload/images/2017-09-14/59ba2c0301ab3.png', '0', '');
INSERT INTO `images` VALUES ('170', '223', 'Public/Upload/images/2017-09-14/59ba2c4c4557a.png', '0', '');
INSERT INTO `images` VALUES ('171', '224', 'Public/Upload/images/2017-09-14/59ba2c7c2b27d.png', '0', '');
INSERT INTO `images` VALUES ('172', '225', 'Public/Upload/images/2017-09-14/59ba2c9223e4e.png', '0', '');
INSERT INTO `images` VALUES ('173', '226', 'Public/Upload/images/2017-09-14/59ba2cad8ef77.png', '0', '');
INSERT INTO `images` VALUES ('174', '227', 'Public/Upload/images/2017-09-14/59ba2cc3012d1.png', '0', '');
INSERT INTO `images` VALUES ('175', '229', 'Public/Upload/images/2017-09-14/59ba2d04d40e8.png', '0', '');
INSERT INTO `images` VALUES ('176', '230', 'Public/Upload/images/2017-09-14/59ba2d22e39cf.png', '0', '');
INSERT INTO `images` VALUES ('177', '231', 'Public/Upload/images/2017-09-14/59ba2d3c13f4e.png', '0', '');
INSERT INTO `images` VALUES ('178', '232', 'Public/Upload/images/2017-09-14/59ba2d5fa1911.png', '0', '');
INSERT INTO `images` VALUES ('179', '233', 'Public/Upload/images/2017-09-14/59ba2d83ab1a6.png', '0', '');
INSERT INTO `images` VALUES ('180', '234', 'Public/Upload/images/2017-09-14/59ba2db51eae1.png', '0', '');
INSERT INTO `images` VALUES ('181', '235', 'Public/Upload/images/2017-09-14/59ba2dd6c009e.png', '0', '');
INSERT INTO `images` VALUES ('182', '237', 'Public/Upload/images/2017-09-14/59ba2e5fb5fd0.png', '0', '');
INSERT INTO `images` VALUES ('183', '238', 'Public/Upload/images/2017-09-14/59ba2e782ed4e.png', '0', '');
INSERT INTO `images` VALUES ('184', '239', 'Public/Upload/images/2017-09-14/59ba2e8b80668.png', '0', '');
INSERT INTO `images` VALUES ('185', '240', 'Public/Upload/images/2017-09-14/59ba2ea395bba.png', '0', '');
INSERT INTO `images` VALUES ('186', '241', 'Public/Upload/images/2017-09-14/59ba2eb603bfe.png', '0', '');
INSERT INTO `images` VALUES ('187', '51', 'Public/Upload/images/2017-09-14/59ba33932e48a.jpg', '0', '');
INSERT INTO `images` VALUES ('188', '244', 'Public/Upload/images/2017-09-14/59ba353f26198.png', '0', '');
INSERT INTO `images` VALUES ('189', '245', 'Public/Upload/images/2017-09-14/59ba3581f2287.png', '0', '');
INSERT INTO `images` VALUES ('190', '246', 'Public/Upload/images/2017-09-14/59ba35aee22f1.png', '0', '');
INSERT INTO `images` VALUES ('191', '247', 'Public/Upload/images/2017-09-14/59ba35dd06db6.png', '0', '');
INSERT INTO `images` VALUES ('192', '249', 'Public/Upload/images/2017-09-14/59ba364621b72.png', '0', '');
INSERT INTO `images` VALUES ('193', '250', 'Public/Upload/images/2017-09-14/59ba3661778bf.png', '0', '');
INSERT INTO `images` VALUES ('194', '251', 'Public/Upload/images/2017-09-14/59ba368390315.png', '0', '');
INSERT INTO `images` VALUES ('195', '252', 'Public/Upload/images/2017-09-14/59ba369a6125e.png', '0', '');
INSERT INTO `images` VALUES ('196', '253', 'Public/Upload/images/2017-09-14/59ba36b6bae64.png', '0', '');
INSERT INTO `images` VALUES ('197', '254', 'Public/Upload/images/2017-09-14/59ba36cf95679.png', '0', '');
INSERT INTO `images` VALUES ('198', '255', 'Public/Upload/images/2017-09-14/59ba3730973f6.jpg', '1', '');
INSERT INTO `images` VALUES ('199', '255', 'Public/Upload/images/2017-09-14/59ba373097bc6.png', '2', '');
INSERT INTO `images` VALUES ('200', '256', 'Public/Upload/images/2017-09-14/59ba376cba82e.png', '0', '');
INSERT INTO `images` VALUES ('201', '257', 'Public/Upload/images/2017-09-14/59ba379847a40.png', '0', '');
INSERT INTO `images` VALUES ('202', '259', 'Public/Upload/images/2017-09-14/59ba37e895aaa.png', '0', '');
INSERT INTO `images` VALUES ('203', '260', 'Public/Upload/images/2017-09-14/59ba380202cde.png', '0', '');
INSERT INTO `images` VALUES ('204', '261', 'Public/Upload/images/2017-09-14/59ba3816efab6.png', '0', '');
INSERT INTO `images` VALUES ('205', '262', 'Public/Upload/images/2017-09-14/59ba382b57dab.png', '0', '');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `message_name` varchar(60) NOT NULL COMMENT '留言人',
  `message_phone` varchar(20) NOT NULL COMMENT '联系方式',
  `message_content` text NOT NULL COMMENT '留言信息',
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('10', '建议', '建议', ' 建议', '1504938195');

-- ----------------------------
-- Table structure for `plate`
-- ----------------------------
DROP TABLE IF EXISTS `plate`;
CREATE TABLE `plate` (
  `plate_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `plate_name` varchar(90) NOT NULL COMMENT '名称',
  `parent_id` smallint(6) NOT NULL COMMENT '父ID',
  `introduce` text NOT NULL COMMENT '介绍详情',
  `customized-buttonpane` text NOT NULL COMMENT '文章详情',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示',
  `sort_order` tinyint(1) NOT NULL COMMENT '排序',
  `add_time` int(11) NOT NULL,
  `edit_time` int(11) NOT NULL,
  PRIMARY KEY (`plate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plate
-- ----------------------------
INSERT INTO `plate` VALUES ('13', '珠宝设计', '0', 'Jewelry', '&lt;br&gt;', '1', '1', '0', '1505370845');
INSERT INTO `plate` VALUES ('20', '工业设计', '0', 'Industrial', '', '1', '2', '0', '1505126935');
INSERT INTO `plate` VALUES ('21', '建筑设计', '0', 'Architectural', '&lt;p class=&quot;slogon&quot;&gt;每次出手都不死不休&lt;/p&gt;\r\n				&lt;span&gt;用心做设计&lt;/span&gt;', '1', '3', '0', '1505127015');
INSERT INTO `plate` VALUES ('46', '界面设计', '0', 'Interfacial', '', '1', '4', '0', '1505127063');
INSERT INTO `plate` VALUES ('48', '关于我们', '0', 'About Us', '', '1', '5', '1504233935', '1505127074');
INSERT INTO `plate` VALUES ('49', '品牌建设', '0', 'Brand Design', '', '1', '6', '1504683639', '1505127294');
INSERT INTO `plate` VALUES ('50', '网站建设', '0', 'Website', '', '1', '7', '1504683653', '1505127366');
INSERT INTO `plate` VALUES ('51', '平面设计', '0', 'Graphic Design', '&lt;h2 style=&quot;margin-top: 12%;font-weight: 500;&quot;&gt;我的每一次出手都必有斩获&lt;/h2&gt;\r\n			&lt;span class=&quot;hengx&quot;&gt;————&lt;/span&gt;\r\n			&lt;span&gt;维度出品，必出精品&lt;/span&gt;', '1', '8', '1504683670', '1505375123');
INSERT INTO `plate` VALUES ('52', '影视摄影', '0', 'Photography', '', '1', '9', '1504683685', '1505127456');
INSERT INTO `plate` VALUES ('53', 'banner图', '49', '', '是人与机器之间传递和交换信息的媒介，包括硬件界面和软件界面，是计算机科学与心理学、设计艺术学、认知科学和人机工程学的交叉研究领域。&lt;br&gt;', '1', '0', '1504688401', '1505127304');
INSERT INTO `plate` VALUES ('54', '展示图', '49', '', '', '1', '0', '1504688575', '1505127329');
INSERT INTO `plate` VALUES ('55', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '1', '1504688765', '1504748458');
INSERT INTO `plate` VALUES ('56', '星玛电梯品牌建设', '54', '', '', '0', '2', '1504690093', '1504690211');
INSERT INTO `plate` VALUES ('57', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '3', '1504690133', '1504690149');
INSERT INTO `plate` VALUES ('58', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '4', '1504690298', '0');
INSERT INTO `plate` VALUES ('59', '包商银行品牌建设', '54', '', '', '0', '5', '1504690341', '0');
INSERT INTO `plate` VALUES ('60', '雪域之光品牌建设', '54', '', '', '0', '6', '1504690381', '1504843687');
INSERT INTO `plate` VALUES ('61', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '0', '1504690597', '0');
INSERT INTO `plate` VALUES ('62', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '0', '1504690624', '0');
INSERT INTO `plate` VALUES ('63', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '0', '1504690691', '0');
INSERT INTO `plate` VALUES ('66', '商业摄影', '52', '追求完美卓越，进步永无止境，将创新的元素淬炼到策划、创意、拍摄、制作每一个细节，我们总是打破常规的思维，缔造全新的价值空间', '', '1', '0', '1504763945', '1505127480');
INSERT INTO `plate` VALUES ('67', '独立是一种态度', '66', 'Independence is an attitude it must be observed', '&lt;div style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/thinkphp/Public/Upload/images/cache/20170908500.png&quot;&gt;&lt;/div&gt;', '0', '0', '1504764072', '1504853307');
INSERT INTO `plate` VALUES ('68', '注重品位这是你最好的选择', '66', 'Focus on fashion and taste this is your best choice', '', '0', '0', '1504764146', '1504764180');
INSERT INTO `plate` VALUES ('69', '留住属于你的感动', '66', 'Keep track of all your brilliant aspects', '', '0', '0', '1504764255', '0');
INSERT INTO `plate` VALUES ('70', '净水流香', '66', 'I wear nothing but a few drops  of Chanel No.5', '', '0', '0', '1504764301', '0');
INSERT INTO `plate` VALUES ('71', '巴宝品牌建设巴宝品牌建设巴宝品牌品牌', '54', '', '', '0', '0', '1504765524', '0');
INSERT INTO `plate` VALUES ('72', 'banner图', '50', '是人们为了满足社会生活需要.利用所掌握的物质技术手段.并运用一定的科学规律、风水理念和美学法则创造的人工环境', '&lt;h3 class=&quot;slogon&quot; style=&quot;text-align: center;&quot;&gt;我们的每一次出手必有斩获&lt;/h3&gt;				&lt;span&gt;&lt;div style=&quot;text-align: center;&quot;&gt;维度出品，必出精品&lt;br&gt;&lt;/div&gt;&lt;/span&gt;', '1', '0', '1504766561', '1505127397');
INSERT INTO `plate` VALUES ('73', '华领', '50', '中国国家外专局与美国管理会计师协会双重授权CMA官方培训机构，国内唯一一家连续三年荣获国家外专局', '', '0', '0', '1504766778', '0');
INSERT INTO `plate` VALUES ('74', '华领', '50', '中国国家外专局与美国管理会计师协会双重授权CMA官方培训机构，国内唯一一家连续三年荣获国家外专局', '', '0', '0', '1504766832', '0');
INSERT INTO `plate` VALUES ('75', '华领', '50', '中国国家外专局与美国管理会计师协会双重授权CMA官方培训机构，国内唯一一家连续三年荣获国家外专局', '', '0', '0', '1504766895', '0');
INSERT INTO `plate` VALUES ('76', '华领', '50', '中国国家外专局与美国管理会计师协会双重授权CMA官方培训机构，国内唯一一家连续三年荣获国家外专局', '', '0', '0', '1504766958', '0');
INSERT INTO `plate` VALUES ('77', '华领', '50', '中国国家外专局与美国管理会计师协会双重授权CMA官方培训机构，国内唯一一家连续三年荣获国家外专局', '', '0', '0', '1504767001', '0');
INSERT INTO `plate` VALUES ('78', '华领', '50', '中国国家外专局与美国管理会计师协会双重授权CMA官方培训机构，国内唯一一家连续三年荣获国家外专局', '', '0', '0', '1504767026', '0');
INSERT INTO `plate` VALUES ('79', '网站建设', '50', '', '杭州维度工业设计有限公司将以最专业的精神为您提供安全、经济、专业的服务。 \r\n							在设计美感与设计艺术上，我们比客户还要有着更高的要求，每一次设计的委托，\r\n							我们都当做自己的艺术品来雕琢，为的不止是给客户的信任一份回报，更是对自己的一份执着追求。', '1', '0', '1504767087', '1505127417');
INSERT INTO `plate` VALUES ('80', '专注', '50', '', '对待每一位客户，我们都会拿出百分之二百的\r\n							热情去对待，我们会实时跟进，随时了解用户\r\n							需求，抓准痛点并解决它，对待界面中的每一\r\n							个像素、每一个代码我们都会去细心调节，保\r\n							证整个画质的完美', '1', '0', '1504767166', '1505127429');
INSERT INTO `plate` VALUES ('81', '开启云兰装潢开启装修云时代', '50', '', '对待每一位客户，我们都会拿出百分之二百的\r\n							热情去对待，我们会实时跟进，随时了解用户\r\n							需求，抓准痛点并解决它，对待界面中的每一\r\n							个像素、每一个代码我们都会去细心调节，保\r\n							证整个画质的完美', '1', '0', '1504767209', '1505127439');
INSERT INTO `plate` VALUES ('82', '品牌文化', '48', '', '&lt;h3 class=&quot;slogon&quot;&gt;品牌&lt;span class=&quot;green&quot;&gt;文化&lt;/span&gt;&lt;/h3&gt;\r\n				&lt;span&gt;杭州维度工业设计有限公司品牌文化、品牌精神、团队精神、理念介绍相关类目介绍&lt;/span&gt;', '1', '1', '1504769675', '1505127087');
INSERT INTO `plate` VALUES ('83', '团队介绍', '48', '', '&lt;h3 class=&quot;slogon&quot;&gt;团队&lt;span class=&quot;green&quot;&gt;介绍&lt;/span&gt;&lt;/h3&gt;\r\n				&lt;span&gt;杭州维度工业设计有限公司设计团队(个人信息)信息详细介绍&lt;/span&gt;', '1', '2', '1504769722', '1505127126');
INSERT INTO `plate` VALUES ('84', '新闻资讯', '48', '', '				&lt;h3 class=&quot;slogon&quot; style=&quot;text-align: center;&quot;&gt;新闻&lt;span class=&quot;green&quot;&gt;资讯&lt;/span&gt;&lt;/h3&gt;\r\n				&lt;span&gt;&lt;div style=&quot;text-align: center;&quot;&gt;杭州维度工业设计有限公司最新的新闻资、最新信息的发布与分享类目&lt;/div&gt;&lt;/span&gt;', '1', '3', '1504769730', '1505127152');
INSERT INTO `plate` VALUES ('85', '联系我们', '48', '', '', '1', '4', '1504769737', '1505127218');
INSERT INTO `plate` VALUES ('86', '公司简介', '82', '', '&lt;h4 class=&quot;cp_title&quot;&gt;维度工业设计有限公司&lt;/h4&gt;\r\n								&lt;p&gt;\r\n									致力于为企业提供产品外观设计、结构设计以及企业战略规划、品 牌策划等专业服务。\r\n									公司以高级设计师和MBA团队为核心竞争力，为 牌策划等专业服务。\r\n									公司以高级设计师和MBA团队为核心竞争力，为顾客定制新产品的个性方案，做到造型、功能与所需工艺以及产品市场定位的整体策划。&lt;br&gt;\r\n									公司一成立就赢得多家上市公司的的信赖，为古越龙山（600059）喜临门（603008)万丰奥威（002085）明牌珠宝（002574）等知名上\r\n									上市公司提供全方位设计体验服务。\r\n								&lt;/p&gt;', '1', '0', '1504769869', '1505127098');
INSERT INTO `plate` VALUES ('87', '年轻', '90', '年轻无极限', '我们是一支年轻的团队。我们的平均年龄&lt;br&gt;\r\n										仅有31岁，充满了朝气和创新精神。', '0', '0', '1504769995', '1504770315');
INSERT INTO `plate` VALUES ('88', '专业', '90', '年轻无极限', '我们是一支年轻的团队。我们的平均年龄&lt;br&gt;\r\n										仅有31岁，充满了朝气和创新精神。', '0', '0', '1504770135', '1504770326');
INSERT INTO `plate` VALUES ('89', '梦想', '90', '年轻无极限', '我们是一支年轻的团队。我们的平均年龄&lt;br&gt;\r\n										仅有31岁，充满了朝气和创新精神。', '0', '0', '1504770173', '1504770335');
INSERT INTO `plate` VALUES ('90', '文化理念', '82', '', '', '1', '0', '1504770300', '1505127106');
INSERT INTO `plate` VALUES ('91', '合作企业', '82', '', '', '1', '0', '1504770368', '1505127115');
INSERT INTO `plate` VALUES ('92', '阿里巴巴', '91', '', '', '0', '0', '1504770422', '0');
INSERT INTO `plate` VALUES ('93', '阿里巴巴', '91', '', '', '0', '0', '1504770442', '0');
INSERT INTO `plate` VALUES ('94', '阿里巴巴', '91', '', '', '0', '0', '1504770453', '0');
INSERT INTO `plate` VALUES ('95', '阿里巴巴', '91', '', '', '0', '0', '1504770468', '0');
INSERT INTO `plate` VALUES ('96', '阿里巴巴', '91', '', '', '0', '0', '1504770481', '0');
INSERT INTO `plate` VALUES ('97', '阿里巴巴', '91', '', '', '0', '0', '1504770492', '0');
INSERT INTO `plate` VALUES ('98', '阿里巴巴', '91', '', '', '0', '0', '1504770501', '0');
INSERT INTO `plate` VALUES ('99', '阿里巴巴', '91', '', '', '0', '0', '1504770514', '0');
INSERT INTO `plate` VALUES ('107', '底部banner', '48', '', '', '1', '0', '1504770677', '1505127266');
INSERT INTO `plate` VALUES ('108', '如何通过交互取悦用户', '84', '色彩是最有说服力的一种设计元素。它能吸引眼球，营造气氛，影响用户的情绪、观念和行为。在扁平化设计中，色彩对设计的影响更为突出，同样明亮的色彩适合于卡通设计，这种功能性的设计在UI设计的应用具有一定的趋势。', '', '1', '0', '1504837048', '1505127173');
INSERT INTO `plate` VALUES ('109', '路焘', '83', '清华大学工业设计硕士毕业，获得中国工业设计金奖。', '', '0', '2', '1504837122', '1504949140');
INSERT INTO `plate` VALUES ('110', 'banner图', '84', '', '&lt;h3 class=&quot;slogon&quot; style=&quot;text-align: center;&quot;&gt;新闻&lt;span class=&quot;green&quot;&gt;资讯&lt;/span&gt;&lt;/h3&gt;\r\n				&lt;span&gt;&lt;div style=&quot;text-align: center;&quot;&gt;杭州维度工业设计有限公司最新的新闻资、最新信息的发布与分享类目&lt;/div&gt;&lt;/span&gt;', '1', '0', '1504837166', '1505127184');
INSERT INTO `plate` VALUES ('111', '四种动感色彩提升设计水品', '84', '色彩是最有说服力的一种设计元素。它能吸引眼球，营造气氛，影响用户的情绪、观念和行为。在扁平化设计中，色彩对设计的影响更为突出，同样明亮的色彩适合于卡通设计，这种功能性的设计在UI设计的应用具有一定的趋势。', '', '1', '0', '1504837631', '1505127195');
INSERT INTO `plate` VALUES ('112', '如何通过交互取悦用户', '84', '色彩是最有说服力的一种设计元素。它能吸引眼球，营造气氛，影响用户的情绪、观念和行为。在扁平化设计中，色彩对设计的影响更为突出，同样明亮的色彩适合于卡通设计，这种功能性的设计在UI设计的应用具有一定的趋势。', '', '1', '0', '1504838413', '1505127207');
INSERT INTO `plate` VALUES ('113', '影视制作', '52', '', '追求完美卓越，进步永无止境，将创新的元素淬炼到策划、创意、拍摄、制作每一个细节，我们&lt;br&gt; 总是打破常规的思维，缔造全新的价值空间', '1', '0', '1504848049', '1505187410');
INSERT INTO `plate` VALUES ('114', '地址', '85', '', '', '1', '0', '1504921725', '1505127227');
INSERT INTO `plate` VALUES ('115', '杭州市西湖区转塘中国云机算产业园3栋2层D3', '114', '', '', '0', '0', '1504921887', '0');
INSERT INTO `plate` VALUES ('116', '电话', '85', '', '', '1', '0', '1504921948', '1505127239');
INSERT INTO `plate` VALUES ('117', '15527866215', '116', '', '', '0', '0', '1504922769', '0');
INSERT INTO `plate` VALUES ('118', '15527866215', '116', '', '', '0', '0', '1504922807', '0');
INSERT INTO `plate` VALUES ('119', 'QQ', '85', '', '', '1', '0', '1504922824', '1505127247');
INSERT INTO `plate` VALUES ('120', '15527866215', '119', '', '', '0', '0', '1504922838', '0');
INSERT INTO `plate` VALUES ('121', '15527866215', '119', '', '', '0', '0', '1504922848', '0');
INSERT INTO `plate` VALUES ('122', '邮箱', '85', '', '', '1', '0', '1504922861', '1505127256');
INSERT INTO `plate` VALUES ('123', '15527866215@163.com', '122', '', '', '0', '0', '1504922873', '0');
INSERT INTO `plate` VALUES ('124', '15527866215@qq.com', '122', '', '', '0', '0', '1504922886', '0');
INSERT INTO `plate` VALUES ('125', 'banner图', '83', '', '&lt;h3 class=&quot;slogon&quot;&gt;团队&lt;span class=&quot;green&quot;&gt;介绍&lt;/span&gt;&lt;/h3&gt;\r\n				&lt;span&gt;杭州维度工业设计有限公司设计团队(个人信息)信息详细介绍&lt;/span&gt;', '0', '0', '1504942976', '0');
INSERT INTO `plate` VALUES ('126', '董文远', '83', '浙江省著名平面设计师,毕业于中国美术学院，后专攻平面设计.从事平面设计近三十年，多次在全国、省市级广告设计展中获奖。1999年荣获中国第六届广告优秀作品展金奖。因设计成绩杰出其名字和头像永久镌刻在中国广告人星光大道上。是浙江平面设计界唯一获此殊荣的设计师。', '', '0', '1', '1504943120', '1504949124');
INSERT INTO `plate` VALUES ('127', '杨涛', '83', '从2002年9月起，先后获得计算机学士、硕士、工程科学博士学位。有着3年以上图像处理，计算机视觉处理经验；2年以上云计算平台使用经验包括公有云、私有云，计算机集群的配置2年以上网络应用编程经验；5年以上面向对象语言编程经验', '', '0', '3', '1504943547', '1504949152');
INSERT INTO `plate` VALUES ('128', '刘奕彤', '83', '曾任西安交大工业设计讲师，资深产品研发专家，法国罗奇堡签约设计师，曾荣获数次100%DESIGN、IF大奖、瑞士雷达表新锐设计师大奖、首届中国红星奖、大阪国际设计奖、小泉国际灯具设计比赛。', '', '0', '4', '1504944012', '1504949163');
INSERT INTO `plate` VALUES ('129', '毛萌彦', '83', '日本名古屋工业大学社会工学研究生，研究方向：人机工程学和产品设计中曲线的美学构建。', '', '0', '5', '1504944049', '1504949178');
INSERT INTO `plate` VALUES ('130', '吴秀笔', '83', '毕业于浙江大学，曾任省报主编，20年新闻工作，多次获得中国新闻一等奖', '', '0', '6', '1504944091', '1504949187');
INSERT INTO `plate` VALUES ('131', 'banner图', '21', '是人与机器之间传递和交换信息的媒介，包括硬件界面和软件界面，是计算机科学与心理学、设计艺术学、认知科学和人机工程学的交叉研究', '&lt;p class=&quot;slogon&quot;&gt;每次出手都不死不休&lt;/p&gt;\r\n				&lt;span&gt;用心做设计&lt;/span&gt;', '1', '0', '1505097641', '1505127006');
INSERT INTO `plate` VALUES ('132', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097729', '0');
INSERT INTO `plate` VALUES ('133', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097758', '0');
INSERT INTO `plate` VALUES ('134', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097787', '0');
INSERT INTO `plate` VALUES ('135', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097827', '0');
INSERT INTO `plate` VALUES ('136', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097855', '0');
INSERT INTO `plate` VALUES ('137', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097874', '0');
INSERT INTO `plate` VALUES ('138', '文字二', '21', '设计师首先将各个功能区分开布置，再将它们于中心部位交汇，形成中央连通区域，在保证各区域私密性的同时，尽可能多的将空间开放。被称为门厅的空间，是空间的连接区域，同时可作为儿童游乐区，工作区，家庭休息区或起居室。随着家庭成员的成长，这个空间也在发挥更多的用途。', '', '1', '0', '1505097937', '1505127025');
INSERT INTO `plate` VALUES ('139', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505097959', '0');
INSERT INTO `plate` VALUES ('140', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505098006', '0');
INSERT INTO `plate` VALUES ('141', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505098024', '1505098042');
INSERT INTO `plate` VALUES ('142', '文字三', '21', 'For their own house, partners Vivian Lee and Robert Edmonds had the peculiar luxury of extraordinary insight into San Francisco’s permitting process, 24/7 access to each other for discussions of ideal rebar and the best window frames, and the particular freedom that comes from being experienced architects finally doing their \r\n					', '', '1', '0', '1505098074', '1505127035');
INSERT INTO `plate` VALUES ('143', '文字一', '21', '', '是人与机器之间传递和交换信息的媒介，包括硬件界面和软件界面，是计算机科学与心理学、设计艺术学、认知&lt;br&gt; 科学和人机工程学的交叉研究', '1', '0', '1505098421', '1505127044');
INSERT INTO `plate` VALUES ('144', '新镇之家', '21', '设计师在一处极具社区氛围的空间里打造了一栋非传统日式住宅。在这里，居住者可以享受户外的樱花树和邻里之间的种种乐趣。', '', '0', '0', '1505101192', '0');
INSERT INTO `plate` VALUES ('145', 'banner图', '20', '', '是人与机器之间传递和交换信息的媒介，包括硬件界面和软件界面，是计算机科学与心理学、设计艺术学、认知&lt;br&gt; 科学和人机工程学的交叉研究', '1', '0', '1505107996', '1505126943');
INSERT INTO `plate` VALUES ('146', '杭州公共自行车 2.0', '20', 'Backed by early supporters, Faraday began their commercial   \r\n				   Backed by early supporters, Faraday began their commercial   \r\n				   Backed by early supporters, Faraday began their commercial   \r\n				   Backed by early supporters, Faraday began their commercial   \r\n				   Backed by early supporters, Faraday began their commercial    \r\n				   Backed by early supporters, Faraday began their commercial    \r\n				   Backed by early supporters, Faraday began their commercial  ', '', '0', '0', '1505108126', '1505108724');
INSERT INTO `plate` VALUES ('147', '苏泊尔电饭煲', '20', '', '', '0', '0', '1505108153', '0');
INSERT INTO `plate` VALUES ('148', '智能灭蚊器', '20', '', '', '0', '0', '1505108169', '0');
INSERT INTO `plate` VALUES ('149', 'GE路灯设计', '20', '', '', '0', '0', '1505108183', '0');
INSERT INTO `plate` VALUES ('150', '家用小音箱设计', '20', '', '&lt;h5&gt;THE OUTCOME&lt;/h5&gt;\r\n						&lt;div&gt;\r\n							hroughout our process, we wanted to guarantee \r\n							that consumers were not only discovering unique \r\n							pages and functionality, but also being informed \r\n							about the products and their features. We designed\r\n							each page as an opportunity to showcase the \r\n							craftsmanship of the product for the Faraday \r\n							customer who appreciates the little details.\r\n							« Return to Case Studies\r\n						&lt;/div&gt;', '0', '0', '1505108230', '0');
INSERT INTO `plate` VALUES ('151', '小型家用智能吸尘器', '20', '', '&lt;h5&gt;THE OUTCOME&lt;/h5&gt;\r\n						&lt;div&gt;\r\n							hroughout our process, we wanted to guarantee \r\n							that consumers were not only discovering unique \r\n							pages and functionality, but also being informed \r\n							about the products and their features. We designed\r\n							each page as an opportunity to showcase the \r\n							craftsmanship of the product for the Faraday \r\n							customer who appreciates the little details.\r\n							« Return to Case Studies\r\n						&lt;/div&gt;', '0', '0', '1505108263', '0');
INSERT INTO `plate` VALUES ('152', '“嘿咻”音箱设计', '20', '', '', '0', '0', '1505108288', '0');
INSERT INTO `plate` VALUES ('153', '家用小型微波炉', '20', '', '', '0', '0', '1505108303', '0');
INSERT INTO `plate` VALUES ('154', '创意小音箱', '20', '', '', '0', '0', '1505108318', '0');
INSERT INTO `plate` VALUES ('155', '创意木质小吊灯', '20', '', '', '0', '0', '1505108339', '0');
INSERT INTO `plate` VALUES ('156', '家用小型电饭煲', '20', '', '', '0', '0', '1505108351', '0');
INSERT INTO `plate` VALUES ('157', '智能吸尘器设计', '20', '', '', '0', '0', '1505108361', '0');
INSERT INTO `plate` VALUES ('158', 'banner图', '166', '', '&lt;p class=&quot;slogon&quot;&gt;每次出手都不死不休&lt;/p&gt;\r\n				&lt;span&gt;用心做设计&lt;/span&gt;', '1', '0', '1505182809', '1505183536');
INSERT INTO `plate` VALUES ('159', '文字一', '166', '', 'APP开发，是随着信息科技时代的飞速发展而诞生的。APP开发意味着一场新的科技革命在开始。APP开发代表了新技术，\r\n			代表着&lt;br&gt;时代发展的趋势所在。', '1', '0', '1505182840', '1505183553');
INSERT INTO `plate` VALUES ('160', '作品展示', '166', '', '', '1', '0', '1505182985', '1505183568');
INSERT INTO `plate` VALUES ('161', 'LIGHT', '160', 'LIGHT是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505183037', '0');
INSERT INTO `plate` VALUES ('162', '茶城APP', '160', '茶城APP是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505183068', '0');
INSERT INTO `plate` VALUES ('163', '爱买', '160', '爱买是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505183114', '0');
INSERT INTO `plate` VALUES ('164', '趣吃', '160', '趣吃是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505183148', '0');
INSERT INTO `plate` VALUES ('165', '爱买', '160', '爱买是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505183184', '0');
INSERT INTO `plate` VALUES ('166', 'web', '46', '', '', '1', '0', '1505183508', '0');
INSERT INTO `plate` VALUES ('167', 'app', '46', '', '&lt;ol&gt;&lt;li&gt;&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;', '1', '0', '1505184754', '1505186788');
INSERT INTO `plate` VALUES ('168', '文字一', '167', '', 'APP开发，是随着信息科技时代的飞速发展而诞生的。APP开发意味着一场新的科技革命在开始。APP开发代表了新技术，\r\n			代表着&lt;br&gt;时代发展的趋势所在。', '1', '0', '1505185142', '1505186941');
INSERT INTO `plate` VALUES ('169', 'banner图', '167', '', '&lt;p class=&quot;slogon&quot;&gt;每次出手都不死不休&lt;/p&gt;\r\n				&lt;span&gt;用心做设计&lt;/span&gt;', '1', '0', '1505185171', '1505186930');
INSERT INTO `plate` VALUES ('170', '作品展示', '167', '', '', '1', '0', '1505185201', '0');
INSERT INTO `plate` VALUES ('171', 'LIGHT', '170', 'LIGHT是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505185244', '0');
INSERT INTO `plate` VALUES ('172', '茶城APP', '170', '茶城APP是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505185277', '0');
INSERT INTO `plate` VALUES ('173', '爱买', '170', '爱买是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505185319', '0');
INSERT INTO `plate` VALUES ('174', '趣吃', '170', '趣吃是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505185353', '0');
INSERT INTO `plate` VALUES ('175', '茶城APP', '170', '茶城APP是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简\r\n									茶城是一款讲解东方茶文化，茶道为主的APP，支持搜索、定位、在线交易、\r\n									沟通等功能，整个界面以黑白灰为主，符合东方茶文化的质朴简', '', '0', '0', '1505185398', '0');
INSERT INTO `plate` VALUES ('176', '页面一', '113', '', '', '1', '0', '1505187694', '0');
INSERT INTO `plate` VALUES ('177', '沧海之巅', '176', '', '', '0', '1', '1505187752', '0');
INSERT INTO `plate` VALUES ('178', '沧海之巅', '176', '', '', '0', '2', '1505187774', '0');
INSERT INTO `plate` VALUES ('179', '沧海之巅', '176', '', '', '0', '3', '1505187801', '0');
INSERT INTO `plate` VALUES ('180', '沧海之巅', '176', '', '', '0', '4', '1505187824', '0');
INSERT INTO `plate` VALUES ('181', '沧海之巅', '176', '', '', '0', '5', '1505187840', '0');
INSERT INTO `plate` VALUES ('182', '沧海之巅', '176', '', '', '0', '6', '1505197019', '0');
INSERT INTO `plate` VALUES ('183', '沧海之巅', '176', '', '', '0', '7', '1505197038', '0');
INSERT INTO `plate` VALUES ('184', '页面二', '113', '', '', '1', '0', '1505197290', '0');
INSERT INTO `plate` VALUES ('185', '沧海之巅', '184', '', '', '0', '1', '1505197317', '0');
INSERT INTO `plate` VALUES ('186', '沧海之巅', '184', '', '', '0', '2', '1505197331', '0');
INSERT INTO `plate` VALUES ('187', '沧海之巅', '184', '', '', '0', '3', '1505197343', '0');
INSERT INTO `plate` VALUES ('188', '沧海之巅', '184', '', '', '0', '4', '1505197355', '0');
INSERT INTO `plate` VALUES ('189', '沧海之巅', '184', '', '', '0', '5', '1505197372', '0');
INSERT INTO `plate` VALUES ('190', '沧海之巅', '184', '', '', '0', '6', '1505197410', '0');
INSERT INTO `plate` VALUES ('191', '沧海之巅', '184', '', '', '0', '7', '1505197421', '0');
INSERT INTO `plate` VALUES ('192', '页面三', '113', '', '', '1', '0', '1505197439', '0');
INSERT INTO `plate` VALUES ('193', '沧海之巅', '192', '', '', '0', '1', '1505197454', '0');
INSERT INTO `plate` VALUES ('194', '沧海之巅', '192', '', '', '0', '2', '1505197465', '0');
INSERT INTO `plate` VALUES ('195', '沧海之巅', '192', '', '', '0', '3', '1505197476', '0');
INSERT INTO `plate` VALUES ('196', '沧海之巅', '192', '', '', '0', '4', '1505197508', '0');
INSERT INTO `plate` VALUES ('197', '沧海之巅', '192', '', '', '0', '5', '1505197520', '0');
INSERT INTO `plate` VALUES ('198', '沧海之巅', '192', '', '', '0', '6', '1505197538', '0');
INSERT INTO `plate` VALUES ('199', '沧海之巅2', '192', '', '', '0', '7', '1505197561', '0');
INSERT INTO `plate` VALUES ('200', '珠宝设计', '13', '', '追求完美卓越，进步永无止境，将创新的元素淬炼到策划、创意、拍摄、制作每一个细节，我们&lt;br&gt; 总是打破常规的思维，缔造全新的价值空间', '1', '0', '1505370718', '1505370855');
INSERT INTO `plate` VALUES ('201', '大图一', '200', '', '', '1', '0', '1505370838', '1505371262');
INSERT INTO `plate` VALUES ('202', '展示区一', '200', '', '', '1', '0', '1505370942', '0');
INSERT INTO `plate` VALUES ('203', '图片一', '202', '', '', '1', '1', '1505371030', '1505372106');
INSERT INTO `plate` VALUES ('204', '图片二', '202', '', '', '1', '2', '1505371069', '1505372118');
INSERT INTO `plate` VALUES ('205', '图片三', '202', '', '', '1', '3', '1505371092', '1505372130');
INSERT INTO `plate` VALUES ('206', '图片四', '202', '', '', '1', '4', '1505371111', '1505372140');
INSERT INTO `plate` VALUES ('207', '图片五', '202', '', '', '1', '5', '1505371131', '1505372150');
INSERT INTO `plate` VALUES ('208', '展示区二', '200', '', '', '1', '0', '1505371168', '0');
INSERT INTO `plate` VALUES ('209', '图片一', '208', '', '', '1', '0', '1505371199', '0');
INSERT INTO `plate` VALUES ('210', '图片二', '208', '', '', '1', '0', '1505371224', '0');
INSERT INTO `plate` VALUES ('211', '图片三', '208', '', '', '1', '0', '1505371241', '0');
INSERT INTO `plate` VALUES ('212', '大图二', '200', '', '', '1', '0', '1505371290', '0');
INSERT INTO `plate` VALUES ('213', '珠宝展示', '13', '', '追求完美卓越，进步永无止境，将创新的元素淬炼到策划、创意、拍摄、制作每一个细节，我们&lt;br&gt; 总是打破常规的思维，缔造全新的价值空间', '1', '0', '1505372907', '0');
INSERT INTO `plate` VALUES ('214', '耳环展示区', '213', '', '', '1', '0', '1505372949', '0');
INSERT INTO `plate` VALUES ('215', 'blue', '214', '', '', '0', '1', '1505373029', '0');
INSERT INTO `plate` VALUES ('216', 'cafe', '214', '', '', '0', '2', '1505373050', '0');
INSERT INTO `plate` VALUES ('217', 'high', '214', '', '', '0', '3', '1505373073', '0');
INSERT INTO `plate` VALUES ('218', 'bang', '214', '', '', '0', '4', '1505373096', '0');
INSERT INTO `plate` VALUES ('219', 'bea', '214', '', '', '0', '5', '1505373135', '0');
INSERT INTO `plate` VALUES ('220', 'monster', '214', '', '', '0', '6', '1505373161', '0');
INSERT INTO `plate` VALUES ('221', 'sober', '214', '', '', '0', '7', '1505373186', '0');
INSERT INTO `plate` VALUES ('222', '吊坠展示区', '213', '', '', '1', '0', '1505373227', '0');
INSERT INTO `plate` VALUES ('223', 'pa bo ya', '222', '', '', '0', '1', '1505373260', '0');
INSERT INTO `plate` VALUES ('224', 'crayon', '222', '', '', '0', '2', '1505373308', '0');
INSERT INTO `plate` VALUES ('225', 'fantastic', '222', '', '', '0', '3', '1505373330', '0');
INSERT INTO `plate` VALUES ('226', 'si du', '222', '', '', '0', '4', '1505373357', '0');
INSERT INTO `plate` VALUES ('227', 'ego', '222', '', '', '0', '5', '1505373378', '0');
INSERT INTO `plate` VALUES ('228', '戒指展示区', '213', '', '', '1', '0', '1505373413', '0');
INSERT INTO `plate` VALUES ('229', '余生', '228', '', '', '0', '1', '1505373444', '0');
INSERT INTO `plate` VALUES ('230', '灼华', '228', '', '', '0', '2', '1505373474', '0');
INSERT INTO `plate` VALUES ('231', '清韵', '228', '', '', '0', '3', '1505373499', '0');
INSERT INTO `plate` VALUES ('232', '泛尘', '228', '', '', '0', '4', '1505373535', '0');
INSERT INTO `plate` VALUES ('233', '清冽', '228', '', '', '0', '5', '1505373571', '0');
INSERT INTO `plate` VALUES ('234', '无瑕', '228', '', '', '0', '6', '1505373621', '0');
INSERT INTO `plate` VALUES ('235', '绝迹', '228', '', '', '0', '7', '1505373654', '0');
INSERT INTO `plate` VALUES ('236', '手链展示区', '213', '', '', '1', '0', '1505373728', '0');
INSERT INTO `plate` VALUES ('237', '手链', '236', '', '', '0', '1', '1505373791', '0');
INSERT INTO `plate` VALUES ('238', '手链', '236', '', '', '0', '2', '1505373816', '0');
INSERT INTO `plate` VALUES ('239', '手链', '236', '', '', '0', '3', '1505373835', '0');
INSERT INTO `plate` VALUES ('240', '手链', '236', '', '', '0', '4', '1505373859', '0');
INSERT INTO `plate` VALUES ('241', '手链', '236', '', '', '0', '5', '1505373877', '0');
INSERT INTO `plate` VALUES ('242', '文字一', '51', '', '平面设计具有艺术性和专业性，以“视觉”作为沟通和表现的方式。透过多种方式来创造、图片和文字，借此作出用来传达想法或讯息的视觉表', '1', '0', '1505375181', '1505375422');
INSERT INTO `plate` VALUES ('243', '文字二', '51', '', '&lt;h1 style=&quot;text-align: right;font-size: 38px;font-weight: 100;margin-bottom: 1em;margin-top: 1em;&quot;&gt;简 · 约&lt;/h1&gt;\r\n				&lt;p style=&quot;text-align:right&quot;&gt;为用户展现你的核心理念&lt;/p&gt;\r\n				&lt;p style=&quot;text-align:right&quot;&gt;简单明确&lt;/p&gt;\r\n				&lt;p style=&quot;text-align:right&quot;&gt;来让用户觉得使用是一种享受&lt;/p&gt;\r\n				&lt;p style=&quot;text-align:right&quot;&gt;使用起来更加愉悦&lt;/p&gt;', '1', '0', '1505375410', '0');
INSERT INTO `plate` VALUES ('244', '时间的启示', '51', '', '', '0', '0', '1505375551', '0');
INSERT INTO `plate` VALUES ('245', '时间的启示', '51', '', '', '0', '0', '1505375617', '0');
INSERT INTO `plate` VALUES ('246', '午后咖啡', '51', '', '', '0', '0', '1505375662', '0');
INSERT INTO `plate` VALUES ('247', '音乐盛典', '51', '', '', '0', '0', '1505375708', '0');
INSERT INTO `plate` VALUES ('248', '轮播图', '51', '', '', '0', '0', '1505375740', '0');
INSERT INTO `plate` VALUES ('249', '图片一', '248', '', '', '0', '1', '1505375767', '1505375814');
INSERT INTO `plate` VALUES ('250', '图片二', '248', '', '', '0', '2', '1505375841', '0');
INSERT INTO `plate` VALUES ('251', '图片三', '248', '', '', '0', '3', '1505375875', '0');
INSERT INTO `plate` VALUES ('252', '图片四', '248', '', '', '0', '4', '1505375898', '0');
INSERT INTO `plate` VALUES ('253', '图片五', '248', '', '', '0', '5', '1505375926', '0');
INSERT INTO `plate` VALUES ('254', '图片六', '248', '', '', '0', '6', '1505375951', '0');
INSERT INTO `plate` VALUES ('255', '林子娱乐', '51', '', '', '0', '0', '1505376048', '0');
INSERT INTO `plate` VALUES ('256', '跑山牛', '51', '', '', '0', '0', '1505376108', '0');
INSERT INTO `plate` VALUES ('257', '沃歌斯', '51', '', '', '0', '0', '1505376152', '0');
INSERT INTO `plate` VALUES ('258', '作品展示区', '51', '', '', '1', '0', '1505376191', '0');
INSERT INTO `plate` VALUES ('259', '图标一', '258', '', '', '0', '1', '1505376232', '0');
INSERT INTO `plate` VALUES ('260', '图标二', '258', '', '', '0', '2', '1505376257', '0');
INSERT INTO `plate` VALUES ('261', '图标三', '258', '', '', '0', '3', '1505376278', '0');
INSERT INTO `plate` VALUES ('262', '图标四', '258', '', '', '0', '4', '1505376299', '0');

-- ----------------------------
-- Table structure for `recruit`
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `recruit_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `recruit_name` varchar(90) NOT NULL COMMENT '工作岗位',
  `job` varchar(25) NOT NULL COMMENT '职位类别',
  `place` varchar(10) NOT NULL COMMENT '工作地点',
  `number` int(5) NOT NULL COMMENT '招聘人数',
  `add_time` int(11) NOT NULL COMMENT '发布时间',
  `phone` varchar(20) NOT NULL COMMENT '联系电话',
  `address` varchar(255) NOT NULL COMMENT '公司地址',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示',
  `recruit_order` tinyint(1) NOT NULL COMMENT '排序',
  `customized-buttonpane` text NOT NULL COMMENT '岗位职责与任职要求',
  PRIMARY KEY (`recruit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES ('1', '包装设计师', '设计师', '杭州', '3', '1504579072', '13805729777', '杭州市西湖区转塘中国云机算产业 园3栋2层D3', '0', '1', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
INSERT INTO `recruit` VALUES ('2', '平面设计师', '设计师', '北京', '1', '1504923100', '13805729777', '杭州市西湖区转塘中国云机算产业 园3栋2层D3', '0', '2', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
INSERT INTO `recruit` VALUES ('3', '工业设计师', '设计师', '杭州', '3', '1504923159', '13805729777', '杭州市西湖区转塘中国云机算产业 园3栋2层D3', '0', '3', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
INSERT INTO `recruit` VALUES ('4', '文案策划', '策划', '杭州', '3', '1504923220', '13805729777', '杭州市西湖区转塘中国云机算产业园3栋2层D3', '0', '4', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
INSERT INTO `recruit` VALUES ('5', '网页设计师', '策划', '杭州', '3', '1504923272', '13805729777', '杭州市西湖区转塘中国云机算产业园3栋2层D3', '0', '5', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
INSERT INTO `recruit` VALUES ('6', '空间设计师', '策划', '杭州', '3', '1504923324', '13805729777', '杭州市西湖区转塘中国云机算产业园3栋2层D3', '0', '6', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
INSERT INTO `recruit` VALUES ('7', '交互设计师', '策划', '杭州', '3', '1504923366', '13805729777', '杭州市西湖区转塘中国云机算产业园3栋2层D3', '0', '7', '&lt;p class=&quot;p_title&quot;&gt;岗位职责: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、熟练操作办公软件和包装设计的相关软件，如Photoshop、CoreIDRAW等&lt;/li&gt;\r\n										&lt;li&gt; 2、熟悉纸品印刷工艺流程，对印刷包装消费品（例如：彩盒、精品盒等）有深入了解，熟悉纸品类 包装行业设计和发展趋势，懂得包装印刷的基本知识；&lt;/li&gt;\r\n										&lt;li&gt;3、善于沟通、协调各部门工作，有责任心。&lt;/li&gt;\r\n									&lt;/ul&gt;\r\n									&lt;p class=&quot;p_title&quot;&gt;任职要求: &lt;/p&gt;\r\n									&lt;ul&gt;\r\n										&lt;li&gt;1、性别不限，20—35岁，大专以上学历；&lt;/li&gt;\r\n										&lt;li&gt; 2、有包装设计1年以上工作经验；&lt;/li&gt;\r\n									&lt;/ul&gt;');
