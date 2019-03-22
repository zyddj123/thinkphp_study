/*
Navicat MySQL Data Transfer

Source Server         : Eric
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-22 15:28:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for think_banji
-- ----------------------------
DROP TABLE IF EXISTS `think_banji`;
CREATE TABLE `think_banji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banji_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_banji
-- ----------------------------
INSERT INTO `think_banji` VALUES ('1', '1班');
INSERT INTO `think_banji` VALUES ('2', '2班');
INSERT INTO `think_banji` VALUES ('3', '3班');
INSERT INTO `think_banji` VALUES ('4', '4班');
INSERT INTO `think_banji` VALUES ('5', '5班');
INSERT INTO `think_banji` VALUES ('6', '6班');
INSERT INTO `think_banji` VALUES ('7', '7班');
INSERT INTO `think_banji` VALUES ('8', '8班');
INSERT INTO `think_banji` VALUES ('9', '9班');
INSERT INTO `think_banji` VALUES ('10', '10班');
INSERT INTO `think_banji` VALUES ('11', '11班');
INSERT INTO `think_banji` VALUES ('12', '12班');
INSERT INTO `think_banji` VALUES ('13', '13班');
INSERT INTO `think_banji` VALUES ('14', '14班');

-- ----------------------------
-- Table structure for think_data
-- ----------------------------
DROP TABLE IF EXISTS `think_data`;
CREATE TABLE `think_data` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_data
-- ----------------------------
INSERT INTO `think_data` VALUES ('1', 'thinkphp');
INSERT INTO `think_data` VALUES ('2', 'php');
INSERT INTO `think_data` VALUES ('3', 'framework');

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `upwd` varchar(255) NOT NULL,
  `banji_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('7', 'zhangsan6', '123456', '4', '1');
INSERT INTO `think_user` VALUES ('8', 'zhangsan7', '123456', '5', '1');
INSERT INTO `think_user` VALUES ('9', 'zhangsan8', '123456', '5', '1');
INSERT INTO `think_user` VALUES ('10', 'zhangsan9', '123456', '6', '1');
INSERT INTO `think_user` VALUES ('11', 'zhangsan10', '123456', '4', '1');
INSERT INTO `think_user` VALUES ('12', 'zhangsan11', '123456', '4', '1');
INSERT INTO `think_user` VALUES ('13', 'zhangsan12', '123456', '4', '1');
INSERT INTO `think_user` VALUES ('14', 'zhangsan13', '123456', '5', '1');
INSERT INTO `think_user` VALUES ('15', 'zhangsan14', '123456', '5', '1');
INSERT INTO `think_user` VALUES ('16', 'zhangsan15', '123456', '5', '1');
INSERT INTO `think_user` VALUES ('17', 'zhangsan16', '123456', '5', '1');
INSERT INTO `think_user` VALUES ('18', 'zhangsan17', '123456', '6', '1');
INSERT INTO `think_user` VALUES ('19', 'zhangsan18', '123456', '6', '1');
INSERT INTO `think_user` VALUES ('20', 'zhangsan19', '123456', '6', '1');
