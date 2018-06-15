/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : db15436324

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2018-05-24 17:52:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cmenu`
-- ----------------------------
DROP TABLE IF EXISTS `cmenu`;
CREATE TABLE `cmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '指定父级id',
  `name` varchar(50) DEFAULT NULL COMMENT '栏目名称',
  `url` varchar(100) DEFAULT NULL COMMENT '链接',
  `permission` varchar(50) DEFAULT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='存放后台管理员需要的菜单栏目';

-- ----------------------------
-- Records of cmenu
-- ----------------------------
INSERT INTO `cmenu` VALUES ('1', '0', '新闻管理', null, '1');
INSERT INTO `cmenu` VALUES ('2', '1', '新闻列表', '/news/goList', '1');
INSERT INTO `cmenu` VALUES ('3', '1', '添加新闻', '/news/goAdd', '1');

-- ----------------------------
-- Table structure for `loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) DEFAULT NULL,
  `loginip` varchar(15) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `bver` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginlog
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `title` varchar(255) DEFAULT NULL COMMENT '新闻标题',
  `content` text COMMENT '新闻内容',
  `tjdate` datetime DEFAULT NULL COMMENT '发布日期',
  `cruser` varchar(50) DEFAULT NULL COMMENT '发布人',
  `hitnum` int(10) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='存储新闻信息的表';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'demo', '<p>AAAA<img src=\"http://pic.58pic.com/58pic/14/64/56/25h58PIC3eG_1024.jpg\"/></p>', '2018-04-17 10:34:18', 'demo', '6');


-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(8) NOT NULL COMMENT '考号',
  `xm` varchar(20) NOT NULL COMMENT '姓名',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `deparetment` varchar(50) NOT NULL COMMENT '部门',
  `role` varchar(1) NOT NULL COMMENT '角色1管理员5考生',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储用户信息';

-- ----------------------------
-- Records of user
-- ----------------------------

INSERT INTO `user` VALUES ('15436321', 'xpj', '1234', '信息学院', '1');
