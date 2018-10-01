/*
Navicat MySQL Data Transfer

Source Server         : loacl
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : we002

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-25 13:30:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_content` varchar(64) DEFAULT NULL,
  `address_contact` varchar(15) DEFAULT NULL,
  `address_type` varchar(1) DEFAULT NULL,
  `address_phone` varchar(15) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address_memo` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '山东省青岛市黄岛区嘉陵江路777号', '张三', '1', '110', '1', '默认地址');
INSERT INTO `address` VALUES ('2', '地址二', '李四', '', '110', '1', null);

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `attribute_name` varchar(16) DEFAULT NULL,
  `attribute_repertory` int(11) DEFAULT NULL,
  `attribute_price0` decimal(10,2) DEFAULT NULL COMMENT '进价',
  `attribute_price` decimal(10,2) DEFAULT NULL,
  `attribute_price_agent` decimal(10,2) DEFAULT NULL,
  `attribute_price_vip` decimal(10,2) DEFAULT NULL,
  `attribute_memo` text,
  PRIMARY KEY (`attribute_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `attribute_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES ('1', '1', '白色', '777', '11.00', '11.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('4', '1', '黑色', '3', '22.00', '33.00', '32.00', '30.00', '3');
INSERT INTO `attribute` VALUES ('5', '1', '蓝色', '5', '33.00', '33.00', '5.00', '5.00', '5');
INSERT INTO `attribute` VALUES ('6', '1', '绿色', '6', '44.00', '44.00', '6.00', '6.00', '6');
INSERT INTO `attribute` VALUES ('11', '1', '红色', '1', '55.00', '55.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('12', '2', '1', '1', '1.00', '1.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('30', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('32', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('33', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('34', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('35', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('36', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('37', '11', '白色XL', '12', '11.00', '22.00', '15.00', '13.00', '??');
INSERT INTO `attribute` VALUES ('38', null, null, null, null, null, null, null, null);
INSERT INTO `attribute` VALUES ('39', null, null, null, null, null, null, null, null);
INSERT INTO `attribute` VALUES ('40', null, null, null, null, null, null, null, null);
INSERT INTO `attribute` VALUES ('41', null, null, null, null, null, null, null, null);
INSERT INTO `attribute` VALUES ('42', '12', '白色M', '1', '1.00', '1.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('43', '12', '白色L', '1', '1.00', '1.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('44', '12', '红色M', '1', '1.00', '1.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('45', '12', '红色L', '1', '1.00', '1.00', '1.00', '1.00', '1');
INSERT INTO `attribute` VALUES ('46', '14', '白色M', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('47', '14', '白色L', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('48', '14', '白色XL', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('49', '14', '红色M', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('50', '14', '红色L', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('51', '14', '红色XL', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('52', '14', '绿色M', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('53', '14', '绿色L', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('54', '14', '绿色XL', '100', '1.00', '22.00', '15.00', '13.00', 'ee');
INSERT INTO `attribute` VALUES ('55', '15', '红色细的', '12', '11.00', '13.00', '14.00', '15.00', '');
INSERT INTO `attribute` VALUES ('56', '15', '红色宽的', '12', '11.00', '13.00', '14.00', '15.00', '');
INSERT INTO `attribute` VALUES ('57', '15', '绿色细的', '12', '11.00', '13.00', '14.00', '15.00', '');
INSERT INTO `attribute` VALUES ('58', '15', '绿色宽的', '12', '11.00', '13.00', '14.00', '15.00', '');

-- ----------------------------
-- Table structure for clerk_permission
-- ----------------------------
DROP TABLE IF EXISTS `clerk_permission`;
CREATE TABLE `clerk_permission` (
  `ckerk_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `clerk_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`ckerk_permission_id`),
  KEY `clerk_permission_ibfk_2` (`permission_id`),
  KEY `clerk_permission_ibfk_1` (`clerk_id`),
  CONSTRAINT `clerk_permission_ibfk_1` FOREIGN KEY (`clerk_id`) REFERENCES `seller` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `clerk_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clerk_permission
-- ----------------------------
INSERT INTO `clerk_permission` VALUES ('9', '10003', '102');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `customer_login_name` varchar(32) DEFAULT NULL,
  `customer_real_name` varchar(15) DEFAULT NULL,
  `customer_password` varchar(32) DEFAULT NULL,
  `customer_img` varchar(255) DEFAULT NULL,
  `customer_reg_date` date DEFAULT NULL,
  `customer_phone` varchar(15) DEFAULT NULL,
  `customer_epay` varchar(32) DEFAULT NULL,
  `customer_state` varchar(1) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `customer_email` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`role_id`),
  KEY `role_id` (`role_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '4', 'yp', '2', 'cdfa52ee2648487c378f8cd45f9e0c69', null, '2018-05-11', null, null, '1', '2', '2');
INSERT INTO `customer` VALUES ('2', '4', 'guke', '张三', 'cdfa52ee2648487c378f8cd45f9e0c69', null, '2018-05-13', '110', '110', '1', '2', '4');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL,
  `goods_name` varchar(32) DEFAULT NULL,
  `goods_img1` varchar(32) DEFAULT NULL,
  `goods_img2` varchar(32) DEFAULT NULL,
  `goods_img3` varchar(32) DEFAULT NULL,
  `goods_content` text,
  `goods_state` varchar(1) DEFAULT NULL COMMENT '0下架，1在售，2预售',
  `goods_start_time` datetime DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `sort_id` (`sort_id`),
  KEY `store_id` (`store_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`sort_id`) REFERENCES `sort` (`sort_id`),
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `goods_ibfk_4` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '3', '阿迪达斯外套', '2018-06-14h8Kp7.png', '2018-05-072Az3m.png', '2018-05-072Az3m.png', '2018新款运动服休闲时尚立领防风夹克外套 DM7297 BR1024/18新款', '1', '2018-05-09 17:31:05', '10087', '1', '10002');
INSERT INTO `goods` VALUES ('2', '3', '连帽男士夹克外套', '2018-06-14iY7cI.png', '2018-05-072Az3m.png', '2018-05-072Az3m.png', '厂家直销连帽男士夹克外套春秋新款青年宽松大码男装风衣透气防水\r\n举报\r\n本产品支持七天无理由退货', '1', '2018-05-09 17:32:22', '10087', '1', '10002');
INSERT INTO `goods` VALUES ('11', '3', '户外衣服登山服', '2018-06-14bExNM.png', '2017-12-31UUraq.png', '2017-12-31UUraq.png', '春秋季新款夹克外套休闲男装加肥佬特体大码单层户外衣服登山服', '1', '2018-05-10 00:00:00', '10087', '1', '10002');
INSERT INTO `goods` VALUES ('12', '4', '运动速干裤子韩版', '2018-06-145QjJI.png', '2017-12-31UUraq.png', '2017-12-31UUraq.png', '2018夏季男式休闲裤新款薄款运动速干裤子韩版潮牌男装修身长西裤', '1', '2018-05-11 00:00:00', '10087', '5', '10002');
INSERT INTO `goods` VALUES ('14', '1', '纯色T恤', '2018-06-14YX3zV.png', null, null, '纯色可印刷', '1', '2018-05-14 00:00:00', '10087', '1', '10002');
INSERT INTO `goods` VALUES ('15', '10', '中大童牛仔短裤', '2018-06-14S00EJ.png', null, null, '018夏装新款中大童牛仔短裤 童装男童牛仔裤 儿童中裤薄款厂家批', '1', '2018-06-14 00:00:00', '10087', '5', '10002');
INSERT INTO `goods` VALUES ('16', '10', '纯棉屁屁裤子', '2018-06-145FDXl.png', null, null, 'INS爆款童装夏季2018新款宝宝大pp裤婴儿纯棉屁屁裤子童裤批发', '1', '2018-06-14 00:00:00', '10087', '1', '10002');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `grade_type` varchar(1) NOT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `store_id` (`store_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('2', '10087', '2', '1');
INSERT INTO `grade` VALUES ('4', '10087', '1', '3');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_time` datetime DEFAULT NULL,
  `order_money` float DEFAULT NULL,
  `order_state` varchar(1) DEFAULT NULL,
  `customer` varchar(32) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `address` text,
  `store_id` int(11) NOT NULL,
  `order_time_send` datetime DEFAULT NULL,
  `order_epay_type` varchar(1) DEFAULT NULL COMMENT '1.支付宝2.微信',
  `seller_id` int(11) DEFAULT NULL,
  `wx` varchar(31) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '2018-05-12 19:23:22', '88', '2', 'dianzhu', '20180511ee7yQnbX5Vd6Vc7Soc5bsB3', null, '10087', null, null, '10002', null);
INSERT INTO `order` VALUES ('2', '2018-05-12 19:27:47', '110', '2', 'dianzhu', '2018051AmdDEWQ2AiWcVa7M4BiENvKE', null, '10087', null, null, null, null);
INSERT INTO `order` VALUES ('3', '2018-05-12 19:30:11', '88', '2', 'dianzhu', '2018051aIUiJHt3Wi15ugrk3zDyFbj8', null, '10087', null, '1', '10002', null);
INSERT INTO `order` VALUES ('4', '2018-05-12 19:46:38', '44', '2', 'dianzhu', '2018051RRm92MXQ5PQnyynHmgVfLlrV', null, '10087', null, '1', null, null);
INSERT INTO `order` VALUES ('5', '2018-05-12 19:48:11', '11', '2', 'dianzhu', '2018051j631er0iVk4xZu6HRDvUEYip', '收件人:null,手机号:null,地址:null', '10087', null, '1', null, null);
INSERT INTO `order` VALUES ('6', '2018-05-12 19:50:38', '33', '2', 'dianzhu', '2018051IW9G3aAIF9tDRGhxL9NJWFef', '收件人:sd,手机号:sds,地址:sds', '10087', null, '1', null, null);
INSERT INTO `order` VALUES ('7', '2018-05-13 14:51:30', '187', '2', 'dianzhu', '2018051MAlpaE6X2TdyIXZx6Ycph5Do', '收件人:sss,手机号:221,地址:sss', '10087', '2018-05-23 15:23:27', '1', null, null);
INSERT INTO `order` VALUES ('9', '2018-05-18 16:41:46', '610', '2', 'dianzhu', '2018051jAE0GWgL2fd5X2pWz2ZYWhPK', '收件人:杨鹏,手机号:110,地址:山东', '10087', '2018-05-22 15:26:54', '1', '10002', null);
INSERT INTO `order` VALUES ('10', '2018-05-23 14:07:18', '12', '1', 'dianzhu', '20180526DddRC9Uf36LwC1W8RvgpzDN', '收件人:杨鹏,手机号:110,地址:山东', '10087', null, '2', '10002', 'yyyppp');
INSERT INTO `order` VALUES ('11', '2018-05-23 14:10:47', '23', '1', 'dianzhu', '20180521DJdz2wDUSE8QZrJP7F9UJlJ', '收件人:杨鹏,手机号:110,地址:山东', '10087', null, '1', '10002', 'yypppp');
INSERT INTO `order` VALUES ('12', '2018-05-23 14:12:24', '556', '2', 'dianzhu', '2018052sNZVy734UGFpAEteFUTPAr62', '收件人:杨鹏,手机号:110,地址:山东', '10087', '2018-05-23 15:48:35', '1', '10002', 'qqq');
INSERT INTO `order` VALUES ('13', '2018-06-14 22:48:38', '14', '0', 'yp', '2018061TW8v2i9cWcJzZLp0S05F7IXr', '收件人:张三,手机号:1213213213,地址:青岛理工', '10087', null, '1', null, 'wqeq');
INSERT INTO `order` VALUES ('14', '2018-06-14 22:50:19', '45', '0', 'yp', '2018061gednV7ZVU5iYUtjJEa6QWjiu', '收件人:杨鹏,手机号:12321313,地址:山东', '10087', null, '1', null, '12321321');
INSERT INTO `order` VALUES ('15', '2018-06-14 22:58:49', '1', '0', 'yp', '2018061RG7TnldVB3hawc2PrGHLadwS', '收件人:杨鹏,手机号:12,地址:河南', '10087', null, '1', null, '12313');
INSERT INTO `order` VALUES ('16', '2018-06-14 22:59:42', '26', '0', 'yp', '2018061bkflyiP49wSegl3xxNBvL9Kk', '收件人:孙悟空,手机号:11022,地址:山东', '10087', null, '1', null, '11022');
INSERT INTO `order` VALUES ('17', '2018-06-14 23:00:31', '1', '0', 'yp', '2018061Lxf5BReT4JHpT45FXHgIciob', '收件人:花和尚,手机号:12321,地址:山东', '10087', null, '1', null, '12321');
INSERT INTO `order` VALUES ('18', '2018-06-14 23:01:40', '15', '0', 'yp', '2018061f2BGb1mjMaa1g0gcXrDlB0tt', '收件人:鲁智深,手机号:12321321,地址:梁山', '10087', null, '1', null, '131313');

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `order_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_price` decimal(10,0) DEFAULT NULL,
  `order_goods_state` varchar(1) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `customer` varchar(32) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `attribute` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`order_goods_id`),
  KEY `goods_id` (`goods_id`),
  KEY `order_id` (`order_id`),
  KEY `attribute_id` (`attribute`),
  CONSTRAINT `order_goods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `order_goods_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('11', '1', '1', '11', '1', '3', 'yp', '10087', '白色');
INSERT INTO `order_goods` VALUES ('12', '1', '1', '33', '1', '3', 'yp', '10087', '蓝色');
INSERT INTO `order_goods` VALUES ('13', '4', '1', '22', '2', '3', 'yp', '10087', '黑色');
INSERT INTO `order_goods` VALUES ('14', '2', '1', '55', '2', '3', 'yp', '10087', '红色');
INSERT INTO `order_goods` VALUES ('15', '3', '1', '44', '1', '3', 'yp', '10087', '绿色');
INSERT INTO `order_goods` VALUES ('16', '5', '1', '11', '2', '3', 'yp', '10087', '白色');
INSERT INTO `order_goods` VALUES ('17', '6', '1', '33', '2', '3', 'yp', '10087', '蓝色');
INSERT INTO `order_goods` VALUES ('18', null, '1', '11', '0', '6', 'dianzhu', '10087', '白色');
INSERT INTO `order_goods` VALUES ('19', '7', '1', '22', '2', '4', 'dianzhu', '10087', '黑色');
INSERT INTO `order_goods` VALUES ('20', '7', '1', '33', '2', '3', 'dianzhu', '10087', '蓝色');
INSERT INTO `order_goods` VALUES ('21', '9', '1', '555', '2', '1', 'dianzhu', '10087', '黑色');
INSERT INTO `order_goods` VALUES ('22', '9', '1', '55', '2', '1', 'dianzhu', '10087', '红色');
INSERT INTO `order_goods` VALUES ('23', '10', '1', '11', '0', '1', 'dianzhu', '10087', '白色');
INSERT INTO `order_goods` VALUES ('24', '10', '12', '1', '0', '1', 'dianzhu', '10087', '红色M');
INSERT INTO `order_goods` VALUES ('25', '11', '11', '22', '0', '1', 'dianzhu', '10087', '白色XL');
INSERT INTO `order_goods` VALUES ('26', '11', '12', '1', '0', '1', 'dianzhu', '10087', '红色M');
INSERT INTO `order_goods` VALUES ('27', '12', '1', '555', '2', '1', 'dianzhu', '10087', '黑色');
INSERT INTO `order_goods` VALUES ('28', '12', '12', '1', '2', '1', 'dianzhu', '10087', '红色M');
INSERT INTO `order_goods` VALUES ('29', '13', '2', '1', '1', '1', 'yp', '10087', '1');
INSERT INTO `order_goods` VALUES ('30', '13', '11', '13', '1', '1', 'yp', '10087', '白色XL');
INSERT INTO `order_goods` VALUES ('31', '14', '15', '15', '1', '3', 'yp', '10087', '红色细的');
INSERT INTO `order_goods` VALUES ('32', '15', '2', '1', '1', '1', 'yp', '10087', '1');
INSERT INTO `order_goods` VALUES ('33', '16', '14', '13', '1', '1', 'yp', '10087', '白色XL');
INSERT INTO `order_goods` VALUES ('34', '16', '14', '13', '1', '1', 'yp', '10087', '绿色M');
INSERT INTO `order_goods` VALUES ('35', '17', '2', '1', '1', '1', 'yp', '10087', '1');
INSERT INTO `order_goods` VALUES ('36', '18', '15', '15', '1', '1', 'yp', '10087', '红色宽的');
INSERT INTO `order_goods` VALUES ('37', null, '12', '1', '0', '1', 'dianzhu', '10087', '白色M');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_parent` int(11) DEFAULT NULL,
  `permission_name` varchar(20) DEFAULT NULL,
  `permission_code` varchar(20) DEFAULT NULL,
  `permission_url` varchar(50) DEFAULT NULL,
  `permission_state` varchar(1) DEFAULT NULL,
  `permission_isNavi` varchar(1) DEFAULT NULL,
  `permission_icon` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('2', '-1', '信息管理', null, null, '1', '1', null);
INSERT INTO `permission` VALUES ('3', '-1', '电子商务', null, null, '1', '1', null);
INSERT INTO `permission` VALUES ('101', '2', '个人信息管理', '1seller:*', 'user/query', '1', '0', null);
INSERT INTO `permission` VALUES ('102', '2', '店铺信息管理', 'store:*', 'store/query', '1', '0', null);
INSERT INTO `permission` VALUES ('103', '2', '店员管理', 'clerk:*', 'clerk/list', '1', '0', null);
INSERT INTO `permission` VALUES ('104', '3', '供应商管理', 'supplier:*', 'supplier/list', '1', '0', null);
INSERT INTO `permission` VALUES ('105', '3', '分类管理', 'sort:*', 'sort/list', '1', '0', null);
INSERT INTO `permission` VALUES ('106', '3', '商品管理', 'goods:*', 'goods/list', '1', '0', null);
INSERT INTO `permission` VALUES ('107', '3', '订单管理', 'order:*', 'order/list', '1', '0', null);
INSERT INTO `permission` VALUES ('108', '3', '等级管理', 'grade:*', 'grade/list', '1', '0', null);
INSERT INTO `permission` VALUES ('109', '3', '代客下单', 'sellerOrder:*', 'sellerOrder/list', '1', '0', null);
INSERT INTO `permission` VALUES ('110', '3', '进货管理', 'supplierOrder:*', 'supplierOrder/list', '1', '0', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  `role_code` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', 'admin');
INSERT INTO `role` VALUES ('2', '店主', 'master');
INSERT INTO `role` VALUES ('3', '店员', 'clerk');
INSERT INTO `role` VALUES ('4', '顾客', 'customer');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_permission_id`),
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '101');
INSERT INTO `role_permission` VALUES ('2', '2', '101');
INSERT INTO `role_permission` VALUES ('3', '2', '102');
INSERT INTO `role_permission` VALUES ('4', '2', '103');
INSERT INTO `role_permission` VALUES ('5', '3', '101');
INSERT INTO `role_permission` VALUES ('6', '2', '104');
INSERT INTO `role_permission` VALUES ('7', '2', '105');
INSERT INTO `role_permission` VALUES ('8', '2', '106');
INSERT INTO `role_permission` VALUES ('9', '2', '107');
INSERT INTO `role_permission` VALUES ('10', '2', '108');
INSERT INTO `role_permission` VALUES ('11', '2', '109');
INSERT INTO `role_permission` VALUES ('12', '2', '110');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店主编号',
  `seller_login_name` varchar(50) DEFAULT NULL,
  `seller_password` varchar(32) DEFAULT NULL,
  `seller_state` varchar(1) DEFAULT NULL,
  `seller_img` varchar(50) DEFAULT NULL,
  `seller_phone` varchar(15) DEFAULT NULL,
  `seller_epay` varchar(32) DEFAULT NULL,
  `seller_reg_date` date DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `seller_real_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`seller_id`),
  KEY `store_id` (`store_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `seller_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('10001', 'admin', 'cdfa52ee2648487c378f8cd45f9e0c69', '1', '2017-12-31UUraq.png', '111', '111', '2018-05-06', '10086', '1', '管理员');
INSERT INTO `seller` VALUES ('10002', 'dianzhu', 'cdfa52ee2648487c378f8cd45f9e0c69', '1', '2018-05-14nT2JX.png', '1', '3', '2018-05-06', '10087', '2', '店主4');
INSERT INTO `seller` VALUES ('10003', 'dianyuan', 'cdfa52ee2648487c378f8cd45f9e0c69', '1', '2017-12-31UUraq.png', '111', '111', '2018-05-06', '10087', '3', '李四');

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `sort_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_name` varchar(20) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sort_id`),
  KEY `sort_ibfk_3` (`store_id`),
  CONSTRAINT `sort_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES ('1', '上衣', '10087');
INSERT INTO `sort` VALUES ('3', '男士外套', '10087');
INSERT INTO `sort` VALUES ('4', '女士外套', '10087');
INSERT INTO `sort` VALUES ('9', '孕妇装', '10087');
INSERT INTO `sort` VALUES ('10', '亲子装', '10087');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(32) NOT NULL,
  `store_img` varchar(40) DEFAULT NULL,
  `store_content` text,
  `seller_id` int(11) DEFAULT NULL,
  `store_state` varchar(1) DEFAULT NULL,
  `store_start_time` datetime DEFAULT NULL,
  `store_end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10088 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('10086', '助微力官方旗舰店', '2018-05-072Az3m.png', '服务内容', '10001', '1', '2018-05-07 13:25:47', '2018-05-07 13:25:44');
INSERT INTO `store` VALUES ('10087', '无印良品4', '2018-05-21xxHo4.png', '无印良品的内容2', '10002', '1', '2018-05-07 13:25:38', '2018-05-07 13:25:42');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(32) DEFAULT NULL,
  `supplier_contacts` varchar(15) DEFAULT NULL,
  `supplier_phone` varchar(15) DEFAULT NULL,
  `supplier_epay` varchar(32) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `supplier_wx` varchar(32) DEFAULT NULL,
  `supplier_memo` text,
  PRIMARY KEY (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '老王服装厂', '老王', '110', '110', '10087', null, null);
INSERT INTO `supplier` VALUES ('5', '义乌市黛吉服装厂', '王经理', '13100000000', '13100000000', '10087', null, null);
INSERT INTO `supplier` VALUES ('6', '深圳市凯兰德服饰有限公司', '杨老板', '15111112222', '15111112222', '10087', null, null);
INSERT INTO `supplier` VALUES ('7', '广州市衣说说服装有限公司', '李四', '17822225555', '17822225555', '10087', null, null);
INSERT INTO `supplier` VALUES ('8', '青岛诚信杰林制衣有限公司', '孙经理', '18266666666', '18266666666', '10087', null, null);
INSERT INTO `supplier` VALUES ('9', '瑞安市海达服装有限公司', '王五', '18588888888', '18588888888', '10087', null, null);
INSERT INTO `supplier` VALUES ('10', '青州法宝电子商贸公司', '朱八戒', '15599999999', '15599999999', '10087', null, null);

-- ----------------------------
-- Table structure for supplier_order
-- ----------------------------
DROP TABLE IF EXISTS `supplier_order`;
CREATE TABLE `supplier_order` (
  `supplier_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_number` varchar(255) DEFAULT NULL COMMENT '订单号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名',
  `attribute_name` varchar(255) DEFAULT NULL COMMENT '属性名',
  `attribute_id` int(11) DEFAULT NULL COMMENT '属性id',
  `goods_num` int(11) DEFAULT NULL COMMENT '商品数量',
  `order_state` varchar(2) DEFAULT NULL COMMENT '订单状态',
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`supplier_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier_order
-- ----------------------------
INSERT INTO `supplier_order` VALUES ('15', '20180531wTdVQLJ4XQgdj0r9nfkgHWxh', '1', '阿迪达斯外套', '白色', '1', '9', '2', '10087');
INSERT INTO `supplier_order` VALUES ('16', '20180531gbgRZGXxe9NEwnzReeJ05gzf', '1', '阿迪达斯外套', '黑色', '4', '9', '2', '10087');
INSERT INTO `supplier_order` VALUES ('17', '20180531Qs4QwwYSrynv28EzahefxMa3', '1', '阿迪达斯外套', '蓝色', '5', '9', '1', '10087');
INSERT INTO `supplier_order` VALUES ('18', '20180531xljhv3Sto0XT8t0b7U9LB9Rp', '1', '阿迪达斯外套', '绿色', '6', '9', '1', '10087');
INSERT INTO `supplier_order` VALUES ('19', '201805311Qg2A6hQPc8ApMFiGvUl7UrE', '1', '阿迪达斯外套', '红色', '11', '9', '1', '10087');
INSERT INTO `supplier_order` VALUES ('20', '20180531ks0sMxw9P4LU2ytir1S1WuTz', '12', '333', '白色M', '42', '1', '1', '10087');
INSERT INTO `supplier_order` VALUES ('21', '201805313qj2D8BAD865TWMKmqbuSpaY', '12', '333', '白色L', '43', '1', '1', '10087');
INSERT INTO `supplier_order` VALUES ('22', '20180531VExIvlxSmaE2qMsX8Ztz0hT1', '12', '333', '红色M', '44', '1', '1', '10087');
INSERT INTO `supplier_order` VALUES ('23', '2018053114xWbSXDTSMkjASmh6PcdLg1', '12', '333', '红色L', '45', '1', '1', '10087');
