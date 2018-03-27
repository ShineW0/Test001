/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : houserentingsystem

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-11-14 14:27:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '地址表的主键',
  `ad_provice` varchar(255) DEFAULT NULL COMMENT '地址的省',
  `ad_city` varchar(255) DEFAULT NULL COMMENT '地址的市',
  `ad_area` varchar(255) DEFAULT NULL COMMENT '地址的区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '数据字典的主键',
  `data_name` varchar(255) DEFAULT NULL COMMENT '数据名称',
  `data_code` varchar(255) DEFAULT NULL COMMENT '数据编码',
  `data_type` varchar(255) DEFAULT NULL COMMENT '数据类型',
  `data_pared` int(10) DEFAULT NULL COMMENT '父级元素',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', '性别', 'sex', null, '0');
INSERT INTO `dict` VALUES ('2', '用户类型', 'user_type', null, '0');
INSERT INTO `dict` VALUES ('3', '超级管理员', 'super_m', 'manage', '2');
INSERT INTO `dict` VALUES ('4', '区域管理员', 'area_m', 'manage', '2');
INSERT INTO `dict` VALUES ('5', '女', 'female', 'sex', '1');
INSERT INTO `dict` VALUES ('6', '男', 'male', 'sex', '1');
INSERT INTO `dict` VALUES ('7', '太原市', 'ty', 'city', '0');
INSERT INTO `dict` VALUES ('8', '尖草坪区', 'jcp', 'area', '7');
INSERT INTO `dict` VALUES ('9', '万柏林区', 'yz', 'area', '7');
INSERT INTO `dict` VALUES ('11', '权限', 'function', null, '0');
INSERT INTO `dict` VALUES ('12', '租赁房屋管理', 'room_func', 'function', '11');
INSERT INTO `dict` VALUES ('13', '用户账户管理', 'user_func', 'function', '11');
INSERT INTO `dict` VALUES ('14', '数据字典管理', 'dict_func', 'function', '11');
INSERT INTO `dict` VALUES ('15', '权限管理', 'power_func', 'function', '11');
INSERT INTO `dict` VALUES ('16', '财务报告管理', 'money_func', 'function', '11');
INSERT INTO `dict` VALUES ('17', '数据初始化管理', 'datainit_fiunc', 'function', '11');
INSERT INTO `dict` VALUES ('18', '普通用户', 'user', 'manage', '2');
INSERT INTO `dict` VALUES ('31', 'man', 'manage', '管理用户', '11');
INSERT INTO `dict` VALUES ('32', '方向', 'direction', null, '0');
INSERT INTO `dict` VALUES ('33', '东', null, 'direction', '32');
INSERT INTO `dict` VALUES ('34', '西', null, 'direction', '32');
INSERT INTO `dict` VALUES ('35', '南', null, 'direction', '32');
INSERT INTO `dict` VALUES ('36', '北', null, 'direction', '32');
INSERT INTO `dict` VALUES ('37', '东西', null, 'direction', '32');
INSERT INTO `dict` VALUES ('38', '南北', null, 'direction', '32');
INSERT INTO `dict` VALUES ('39', '东南', null, 'direction', '32');
INSERT INTO `dict` VALUES ('40', '西北', null, 'direction', '32');
INSERT INTO `dict` VALUES ('41', '装修情况', 'decoration', null, '0');
INSERT INTO `dict` VALUES ('42', '豪华装修', null, 'decoration', '41');
INSERT INTO `dict` VALUES ('43', '中等装修', null, 'decoration', '41');
INSERT INTO `dict` VALUES ('44', '普通装修', null, 'decoration', '41');
INSERT INTO `dict` VALUES ('45', '精装修', null, 'decoration', '41');
INSERT INTO `dict` VALUES ('46', '毛坯', null, 'decoration', '41');
INSERT INTO `dict` VALUES ('47', '房屋类型', 'houseType', null, '0');
INSERT INTO `dict` VALUES ('48', '普通住宅', null, 'houseType', '47');
INSERT INTO `dict` VALUES ('49', '公寓', null, 'houseType', '47');
INSERT INTO `dict` VALUES ('50', '别墅', null, 'houseType', '47');
INSERT INTO `dict` VALUES ('51', '平房', null, 'houseType', '47');
INSERT INTO `dict` VALUES ('52', '酒店公寓', null, 'houseType', '47');

-- ----------------------------
-- Table structure for facility
-- ----------------------------
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '设备表的主键',
  `fac_name` varchar(255) DEFAULT NULL COMMENT '设备的名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of facility
-- ----------------------------

-- ----------------------------
-- Table structure for function
-- ----------------------------
DROP TABLE IF EXISTS `function`;
CREATE TABLE `function` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '权限的编号',
  `fun_name` varchar(255) DEFAULT NULL COMMENT '权限的名字',
  `did` int(10) DEFAULT NULL COMMENT '外键：数据字典的外键',
  `state` int(10) DEFAULT NULL COMMENT '权限的状态',
  PRIMARY KEY (`id`),
  KEY `foreign_function_dict_id` (`did`),
  CONSTRAINT `foreign_function_dict_id` FOREIGN KEY (`did`) REFERENCES `dict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function
-- ----------------------------
INSERT INTO `function` VALUES ('1', '房源信息管理', '3', '1');
INSERT INTO `function` VALUES ('2', '用户账户管理', '3', '1');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '房屋表的主键',
  `u_id` int(10) DEFAULT NULL COMMENT '用户表的外键',
  `rental_mode` varchar(10) DEFAULT NULL COMMENT '出租方式',
  `village_name` varchar(255) DEFAULT NULL COMMENT '小区名称',
  `address` varchar(10) DEFAULT NULL COMMENT '地址表的外键',
  `house_room` int(10) DEFAULT NULL COMMENT '室',
  `living_room` int(10) DEFAULT NULL COMMENT '房屋户型：厅',
  `house_toilet` int(10) DEFAULT NULL COMMENT '房屋户型：厅',
  `house_direction` varchar(255) DEFAULT NULL COMMENT '房屋情况：朝向',
  `decoration` varchar(255) DEFAULT NULL COMMENT '装修情况',
  `house_type` varchar(255) DEFAULT NULL COMMENT '房屋类型',
  `rental` int(10) DEFAULT NULL COMMENT '租金要求',
  `house_title` varchar(255) DEFAULT NULL COMMENT '房源标题',
  `house_intro` varchar(255) DEFAULT NULL COMMENT '房源描述',
  `image1` varchar(255) DEFAULT NULL COMMENT '图片表的外键',
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `house_area` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_house_user_id` (`u_id`),
  KEY `foreign_house_address_id` (`address`),
  KEY `foreign_house_img_id` (`image1`),
  CONSTRAINT `house_copy_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '1', '整租', '花园小区', '尖草坪区', '3', '1', '1', '朝南', '精装修', '别墅', '2400', '温馨小屋', '地铁：距离地铁10号线五角场站521米，步行9分钟；距离地铁10号线江湾体育场站651米，步行11分钟；距离地铁8号线翔殷路站1375米，步行23分钟；临近地铁，大大减少员工浪费在路上的时间，让员工可以更好的投入到工作之中 ；\r\n公交：附近有59路、133路、139路、325路等多条公交线路汇聚于此，员工上下班在地理位置上没有任何困扰 ；', 'upload/01.jpg', 'upload/02.jpg', 'upload/03.jpg', '100');
INSERT INTO `house` VALUES ('2', '2', '合租', '绿叶小区', '尖草坪区', '4', '1', '1', '朝南', '精装修', '别墅', '3500', '温馨小屋', '好', 'upload/02.jpg', 'upload/04.jpg', 'upload/01.jpg', '300');
INSERT INTO `house` VALUES ('3', '3', '整租', '绿叶小区', '尖草坪区', '4', '1', '1', '朝南', '精装修', '别墅', '3453', 'er小区', '公交： \r\n       附近有59路、133路、139路、325路等多条公交线路汇聚于此，员工上下班在地理位置上没有任何困扰 ；', 'upload/10.jpg', 'upload/04.jpg', 'upload/03.jpg', '200');
INSERT INTO `house` VALUES ('4', '3', '整租', '花园小区', '尖草坪区', '4', '1', '1', '朝南', '精装修', '别墅', '5600', '温馨小屋', '好', 'upload/04.jpg', 'upload/04.jpg', 'upload/03.jpg', '300');
INSERT INTO `house` VALUES ('5', '1', '合租', '兰馨小区', '尖草坪区', '3', '1', '1', '朝南', '精装修', '别墅', '1200', '温馨小屋', '地铁：距离地铁10号线五角场站521米，步行9分钟；距离地铁10号线江湾体育场站651米，步行11分钟；距离地铁8号线翔殷路站1375米，步行23分钟；临近地铁，大大减少员工浪费在路上的时间，让员工可以更好的投入到工作之中 ；\r\n公交：附近有59路、133路、139路、325路等多条公交线路汇聚于此，员工上下班在地理位置上没有任何困扰 ；', 'upload/09.jpg', 'upload/10.jpg', 'upload/08.jpg', '100');
INSERT INTO `house` VALUES ('6', '1', '整租', '花园小区', '尖草坪区', '3', '1', '1', '朝南', '精装修', '别墅', '4543', '温馨小屋', '地铁：距离地铁10号线五角场站521米，步行9分钟；距离地铁10号线江湾体育场站651米，步行11分钟；距离地铁8号线翔殷路站1375米，步行23分钟；临近地铁，大大减少员工浪费在路上的时间，让员工可以更好的投入到工作之中 ；\r\n公交：附近有59路、133路、139路、325路等多条公交线路汇聚于此，员工上下班在地理位置上没有任何困扰 ；', 'upload/08.jpg', 'upload/02.jpg', 'upload/03.jpg', '100');
INSERT INTO `house` VALUES ('8', '2', '合租', '绿叶小区', '尖草坪区', '4', '1', '1', '朝南', '精装修', '别墅', '5654', '温馨小屋', '好', 'upload/05.jpg', 'upload/04.jpg', 'upload/01.jpg', '300');
INSERT INTO `house` VALUES ('10', '3', '整租', '绿叶小区', '尖草坪区', '4', '1', '1', '朝南', '精装修', '别墅', '2312', '兰馨小区', '公交： \r\n       附近有59路、133路、139路、325路等多条公交线路汇聚于此，员工上下班在地理位置上没有任何困扰 ；', 'upload/02.jpg', 'upload/04.jpg', 'upload/04.jpg', '200');
INSERT INTO `house` VALUES ('11', '1', '整租', '绿叶小区', '万柏林区', '2', '1', '1', '朝南', '精装修', '普通住宅', '232', '可爱舒适房', '公交：附近有59路、133路、139路、325路等多条公交线路汇聚于此，员工上下班在地理位置上没有任何困扰 ；             地铁：距离地铁10号线五角场站521米，步行9分钟；距离地铁10号线江湾体育场站651米，步行11分钟；距离地铁8号线翔殷路站1375米，步行23分钟；临近地铁，大大减少员工浪费在路上的时间，让员工可以更好的投入到工作之中 ；', 'upload/03.jpg', 'upload/01.jpg', 'upload/03.jpg', '200');
INSERT INTO `house` VALUES ('12', '3', '整租', '花园小区', '尖草坪区', '4', '1', '1', '朝南', '精装修', '别墅', '5000', '温馨小屋', '好', 'upload/04.jpg', 'upload/04.jpg', 'upload/03.jpg', '300');
INSERT INTO `house` VALUES ('21', '3', '合租', '1', '', '1', '1', '1', '东', '装修情况', '普通住宅', '1', '1', '1', 'upload/06.jpg', 'upload/08.jpg', 'upload/11.jpg', '12');
INSERT INTO `house` VALUES ('22', '3', '合租', '1', '', '1', '1', '1', '东', '装修情况', '普通住宅', '1', '1', '1', 'upload/06.jpg', 'upload/08.jpg', 'upload/10.jpg', '12');
INSERT INTO `house` VALUES ('23', '1', '合租', '1', '尖草坪区', '1', '1', '1', '朝向', '装修情况', '普通住宅', '1', '1', '1', 'upload/10.jpg', 'upload/10.jpg', 'upload/09.jpg', '1');
INSERT INTO `house` VALUES ('24', '3', '整租', '12', '', '1', '1', '1', '东西', '毛坯', '公寓', '1234', '兰馨', '12', 'upload/09.jpg', 'upload/04.jpg', 'upload/10.jpg', '12');
INSERT INTO `house` VALUES ('25', '3', '整租', '1', '尖草坪区', '1', '1', '1', '北', '精装修', '公寓', '1', 'qw', '12', 'upload/carousel04.jpg', 'upload/carousel08.jpg', 'upload/carousel04.jpg', '1');
INSERT INTO `house` VALUES ('28', '1', '合租', 'qw', '尖草坪区', '2', '1', '1', '东西', '中等装修', '公寓', '1200', 'qw', 'qw', 'upload/carousel09.jpg', 'upload/carousel05.jpg', 'upload/carousel.jpg', '123');
INSERT INTO `house` VALUES ('29', '3', '合租', 'q', '', '3', '3', '3', '南', '精装修', '公寓', '120', 'q', 'q', 'upload/carousel04.jpg', 'upload/carousel09.jpg', 'upload/carousel.jpg', '123');

-- ----------------------------
-- Table structure for img
-- ----------------------------
DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '图片的主键',
  `img_name` varchar(255) DEFAULT NULL COMMENT '图片的名称',
  `img_path` varchar(255) DEFAULT NULL COMMENT '图片的路径',
  `img_type` varchar(255) DEFAULT NULL COMMENT '图片的类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img
-- ----------------------------

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_value` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES ('1', '0');
INSERT INTO `price` VALUES ('2', '1500');
INSERT INTO `price` VALUES ('3', '3000');
INSERT INTO `price` VALUES ('4', '4500');
INSERT INTO `price` VALUES ('5', '6000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `type` varchar(255) DEFAULT NULL COMMENT '用户类型',
  `age` int(3) unsigned zerofill DEFAULT '000' COMMENT '用户年龄',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `email` varchar(255) DEFAULT NULL COMMENT '常用邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '常用电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '超级管理员', '015', '女', '123@qq.com', '12343323445');
INSERT INTO `user` VALUES ('2', 'admin001', 'admin001', '区域管理员', '015', '女', '123', '123');
INSERT INTO `user` VALUES ('3', 'admin03', 'admin003', '普通用户', '020', '男', '123@qq.com', '18435186525');
INSERT INTO `user` VALUES ('4', '12', '12', null, '012', '男', '12', 'qwq');
INSERT INTO `user` VALUES ('5', 'we', '', '超级管理员', '012', '男', '', '');
INSERT INTO `user` VALUES ('9', 'sd', '', null, '012', '男', '', '');
INSERT INTO `user` VALUES ('19', '孙伟森', '123', '超级管理员', '020', '男', '345435@qq.com', '18323232');
INSERT INTO `user` VALUES ('21', '胡亚男', '123·', '超级管理员', '012', '女', '123', '123');
INSERT INTO `user` VALUES ('23', 'sun', '121', '超级管理员', '012', '女', '2323', '2322');
INSERT INTO `user` VALUES ('24', '1231', '121', '超级管理员', '121', '女', '12', '121');
INSERT INTO `user` VALUES ('25', '54', '13', '超级管理员', '021', '女', '23', '23');
INSERT INTO `user` VALUES ('28', '23', '12345', '普通用户', '023', '男', '123', '12');
INSERT INTO `user` VALUES ('29', '胡亚男', 'asd', '区域管理员', '021', '女', '232@qq.com', '18324323456');
INSERT INTO `user` VALUES ('30', 'admin', '123', '区域管理员', '012', '女', '121', '231');
INSERT INTO `user` VALUES ('31', 'xs', 'xs', '普通用户', '021', '女', '234223@qq.com', '14543454323');
