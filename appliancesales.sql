/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3307
Source Database       : appliancesales

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-07-07 14:28:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系我们 是指联系研发者  留言板是留言给卖家',
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', 'liyunfengfengfeng', 'm18746046951@163.com', '18746046951', 'xxx');

-- ----------------------------
-- Table structure for db_order
-- ----------------------------
DROP TABLE IF EXISTS `db_order`;
CREATE TABLE `db_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `total` double DEFAULT NULL COMMENT '订单总价格',
  `carid` int(11) DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sasasasasada` (`carid`) USING BTREE,
  CONSTRAINT `sasasasasada` FOREIGN KEY (`carid`) REFERENCES `shoppingcar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_order
-- ----------------------------
INSERT INTO `db_order` VALUES ('1', '10', '1', '2017-06-25 11:07:58');
INSERT INTO `db_order` VALUES ('3', '98', '4', '2017-06-29 10:12:38');
INSERT INTO `db_order` VALUES ('4', '98', '4', '2017-06-29 10:31:53');
INSERT INTO `db_order` VALUES ('5', '98', '1', '2017-06-29 10:51:20');
INSERT INTO `db_order` VALUES ('6', '60', '6', '2017-06-29 16:28:26');
INSERT INTO `db_order` VALUES ('7', '98', '1', '2017-06-29 10:51:50');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(25) DEFAULT NULL COMMENT '管理员名称',
  `password` varchar(25) DEFAULT NULL COMMENT '管理员密码',
  `account` varchar(25) DEFAULT NULL COMMENT '管理员余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for messageboard
-- ----------------------------
DROP TABLE IF EXISTS `messageboard`;
CREATE TABLE `messageboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言板id',
  `name` varchar(255) DEFAULT NULL COMMENT '留言者姓名',
  `user_message` varchar(255) DEFAULT NULL COMMENT '用户信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messageboard
-- ----------------------------
INSERT INTO `messageboard` VALUES ('1', 'liyunfengfengfeng', '222222222');
INSERT INTO `messageboard` VALUES ('2', 'liyunfengfengfeng', '1111111');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `original_price` double(10,0) DEFAULT NULL COMMENT '商品原始价格',
  `orderid` int(11) DEFAULT NULL COMMENT '订单id',
  `storeid` int(11) DEFAULT NULL COMMENT '店面id',
  `favorable_price` double(10,2) DEFAULT NULL COMMENT '优惠后的价格',
  `type` varchar(255) DEFAULT NULL COMMENT '商品类型SPECIAL PRODUCTS还是FEATURED PRODUCTS',
  `icon` varchar(255) DEFAULT NULL COMMENT '商品图片的位置',
  PRIMARY KEY (`id`),
  KEY `agfsdadsadsas` (`orderid`),
  KEY `gasdadasdadafgs` (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'Apple/苹果 iPhone 6 32G 全网通4G智能手机正品', '122', '0', '1', '60.00', 'SPECIAL PRODUCTS', '../images/iphone.png');
INSERT INTO `product` VALUES ('2', '6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通', '122', '13', '1', '88.00', 'SPECIAL PRODUCTS', '../images/galaxy-s4.jpg');
INSERT INTO `product` VALUES ('3', 'Samsung/三星 SM-G9280S6Edge+plus国行曲屏', '122', '0', '1', '40.00', 'SPECIAL PRODUCTS', '../images/galaxy-note.jpg');
INSERT INTO `product` VALUES ('4', '索尼 Xperia XZ Premium增立体声蓝牙耳机', '122', '0', '1', '54.00', 'SPECIAL PRODUCTS', '../images/Z1.png');
INSERT INTO `product` VALUES ('5', 'Apple/苹果 iPhone 6 32G 全网通4G智能手机正品', '122', '0', '1', '37.00', 'FEATURED PRODUCTS', '../images/iphone.png');
INSERT INTO `product` VALUES ('6', '6期免息 Samsung/三星 Galaxy S8 SM-G9500 全网通', '122', '0', '1', '66.00', 'FEATURED PRODUCTS', '../images/galaxy-s4.jpg');
INSERT INTO `product` VALUES ('7', 'Samsung/三星 SM-G9280S6Edge+plus国行曲屏', '122', '4', '1', '10.00', 'FEATURED PRODUCTS', '../images/galaxy-note.jpg');
INSERT INTO `product` VALUES ('8', '索尼 Xperia XZ Premium增立体声蓝牙耳机', '122', '0', '1', '20.00', 'FEATURED PRODUCTS', '../images/Z1.png');
INSERT INTO `product` VALUES ('9', '索尼 Xperia XZ Premium增立体声蓝牙耳机', '122', '0', '1', '20.00', null, '../images/Z1.png');
INSERT INTO `product` VALUES ('10', '索尼 Xperia XZ Premium增立体声蓝牙耳机', '122', '0', '1', '55.00', null, '../images/Z1.png');
INSERT INTO `product` VALUES ('11', '索尼 Xperia XZ Premium增立体声蓝牙耳机', '122', '0', '1', '44.00', null, '../images/Z1.png');
INSERT INTO `product` VALUES ('12', '索尼 Xperia XZ Premium增立体声蓝牙耳机', '122', '0', '1', '77.00', null, '../images/Z1.png');

-- ----------------------------
-- Table structure for saler
-- ----------------------------
DROP TABLE IF EXISTS `saler`;
CREATE TABLE `saler` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '卖家id',
  `name` varchar(25) DEFAULT NULL COMMENT '卖家姓名',
  `password` varchar(25) DEFAULT NULL COMMENT '卖家密码',
  `account` int(11) DEFAULT NULL COMMENT '卖家余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saler
-- ----------------------------
INSERT INTO `saler` VALUES ('1', 'liyunfeng', '123456', '114');

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------
INSERT INTO `shoppingcar` VALUES ('1');
INSERT INTO `shoppingcar` VALUES ('2');
INSERT INTO `shoppingcar` VALUES ('3');
INSERT INTO `shoppingcar` VALUES ('4');
INSERT INTO `shoppingcar` VALUES ('5');
INSERT INTO `shoppingcar` VALUES ('6');
INSERT INTO `shoppingcar` VALUES ('7');
INSERT INTO `shoppingcar` VALUES ('8');
INSERT INTO `shoppingcar` VALUES ('9');
INSERT INTO `shoppingcar` VALUES ('10');
INSERT INTO `shoppingcar` VALUES ('11');
INSERT INTO `shoppingcar` VALUES ('12');
INSERT INTO `shoppingcar` VALUES ('13');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店面id',
  `salerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dsfsjkfddsdshkjcnskjcs` (`salerid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('1', '1');
INSERT INTO `store` VALUES ('2', '1');
INSERT INTO `store` VALUES ('3', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `account` int(11) DEFAULT '1000' COMMENT '用户余额',
  `gender` char(2) DEFAULT NULL COMMENT '用户性别',
  `carid` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sadadsaccsasaa` (`carid`) USING BTREE,
  CONSTRAINT `sadadsaccsasaa` FOREIGN KEY (`carid`) REFERENCES `shoppingcar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhaohongming', 'E10ADC3949BA59ABBE56E057F20F883E', '1000000', '男', '1', '865499184@qq.com', '18204613193');
INSERT INTO `user` VALUES ('2', 'sunxiaodong', 'E10ADC3949BA59ABBE56E057F20F883E', '1000000', '男', '2', '2464712160@qq.com', '13030066787');
INSERT INTO `user` VALUES ('3', 'houshiduo', 'E10ADC3949BA59ABBE56E057F20F883E', '1000000', '男', '3', '244336655@qq.com', '13009877581');
INSERT INTO `user` VALUES ('31', 'liyunfengfengfeng', 'E10ADC3949BA59ABBE56E057F20F883E', '999516', '男', '4', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('32', 'liubojin', 'E10ADC3949BA59ABBE56E057F20F883E', '1000000', '男', '5', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('33', 'jibaoping', 'E10ADC3949BA59ABBE56E057F20F883E', '1000000', '男', '6', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('34', 'a', '0CC175B9C0F1B6A831C399E269772661', '1000000', '男', '7', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('35', 'sunxiangyue', 'E10ADC3949BA59ABBE56E057F20F883E', '1000000', '男', '8', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('36', 'hanlizhi', 'E10ADC3949BA59ABBE56E057F20F883E', '1000', '男', '9', 'hanlizhihai@hotmail.com', '18204614870');
INSERT INTO `user` VALUES ('37', 'wangjianfeng', 'E10ADC3949BA59ABBE56E057F20F883E', '1000', '男', '10', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('38', 'zhaozhiyuan', 'E10ADC3949BA59ABBE56E057F20F883E', '1000', '男', '11', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('39', '刘子旭', 'E10ADC3949BA59ABBE56E057F20F883E', '1000', '男', '12', 'm18746046951@163.com', '18746046951');
INSERT INTO `user` VALUES ('40', 'q', 'E10ADC3949BA59ABBE56E057F20F883E', '1000', '男', '13', 'm18746046951@163.com', '18746046951');
