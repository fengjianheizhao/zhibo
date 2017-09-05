/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lxzcms_com

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-04 18:53:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lxzcms_admin
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_admin`;
CREATE TABLE `lxzcms_admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `logins` varchar(255) DEFAULT NULL,
  `logintime` int(11) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_admin
-- ----------------------------
INSERT INTO `lxzcms_admin` VALUES ('1', 'lxzzyr', '69c7a197c70ed1b28da376711c6280f5', '1453181191', '212', '1504491407', '192.168.1.88');
INSERT INTO `lxzcms_admin` VALUES ('2', 'admin', '69c7a197c70ed1b28da376711c6280f5', '1371652594', '172', '1504088304', '192.168.1.88');

-- ----------------------------
-- Table structure for lxzcms_ads
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_ads`;
CREATE TABLE `lxzcms_ads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aid` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `edittime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_ads
-- ----------------------------
INSERT INTO `lxzcms_ads` VALUES ('41', '21', '首页_学员反馈1', '/file/uploads/image/201612/20161226172438_90554.jpg', '', '1', '100', '1482478358', '1482909372');
INSERT INTO `lxzcms_ads` VALUES ('4', '2', '返佣网', '', 'http://www.hoo666.com/', '1', '100', '1465638227', '1469067722');
INSERT INTO `lxzcms_ads` VALUES ('33', '3', '首页_中部通栏海报', '/file/uploads/image/201701/20170116165850_92780.jpg', '', '1', '100', '1481102671', '1484557132');
INSERT INTO `lxzcms_ads` VALUES ('34', '16', '关于我们_顶部banner', '/file/uploads/image/201612/20161227141554_40382.jpg', '', '1', '100', '1481191764', '1482819567');
INSERT INTO `lxzcms_ads` VALUES ('35', '17', '关于我们_右侧二维码', '/file/uploads/image/201612/20161228152236_45082.png', '', '1', '100', '1481249101', '1482909758');
INSERT INTO `lxzcms_ads` VALUES ('36', '18', '首页_场地展示_03', '/file/uploads/image/201612/20161227142302_32474.jpg', '', '1', '100', '1481794494', '1482819782');
INSERT INTO `lxzcms_ads` VALUES ('37', '18', '首页_场地展示_02', '/file/uploads/image/201612/20161227142252_42812.jpg', '', '1', '100', '1481794494', '1482819782');
INSERT INTO `lxzcms_ads` VALUES ('38', '18', '首页_场地展示_01', '/file/uploads/image/201612/20161227142245_95332.jpg', '', '1', '100', '1481794494', '1482819782');
INSERT INTO `lxzcms_ads` VALUES ('39', '19', '学车问答_顶部banner', '/file/uploads/image/201612/20161228151023_47960.jpg', '', '1', '100', '1482302619', '1482909025');
INSERT INTO `lxzcms_ads` VALUES ('40', '20', '新闻动态_顶部banner', '/file/uploads/image/201612/20161226164737_80755.jpg', '', '1', '100', '1482302704', '1482907935');
INSERT INTO `lxzcms_ads` VALUES ('50', '1', '海报', '/file/uploads/image/201702/20170216180915_70070.jpg', '', '1', '1', '1487239772', '1487239772');
INSERT INTO `lxzcms_ads` VALUES ('42', '21', '首页_学员反馈3', '/file/uploads/image/201612/20161226172426_77472.jpg', '', '1', '100', '1482478358', '1482909372');
INSERT INTO `lxzcms_ads` VALUES ('29', '1', '测试海报1', '/file/uploads/image/201612/20161228111304_94765.jpg', '', '1', '5', '1470117036', '1487239772');
INSERT INTO `lxzcms_ads` VALUES ('43', '21', '首页_学员反馈2', '/file/uploads/image/201612/20161228151610_90205.jpg', '', '1', '100', '1482742969', '1482909372');
INSERT INTO `lxzcms_ads` VALUES ('44', '22', '学车保障_banner', '/file/uploads/image/201701/20170104184810_95413.jpg', '', '1', '100', '1483526893', '1483526893');
INSERT INTO `lxzcms_ads` VALUES ('45', '1', '学车送自行车', '/file/uploads/image/201701/20170113153207_64384.jpg', 'http://www.77xueche.com/pages/show-itemid-24.html', '1', '3', '1484291867', '1487239772');
INSERT INTO `lxzcms_ads` VALUES ('46', '1', '海报', '/file/uploads/image/201701/20170116170619_69105.jpg', '', '1', '4', '1484557581', '1487239772');
INSERT INTO `lxzcms_ads` VALUES ('48', '1', '七七学车无忧险', '/file/uploads/image/201702/20170209155448_50338.jpg', 'http://www.77xueche.com/pages/show-itemid-25.html', '1', '2', '1486626909', '1487239772');
INSERT INTO `lxzcms_ads` VALUES ('49', '24', '单页报名须知栏目_banner', '/file/uploads/image/201702/20170215184457_96046.png', '', '1', '100', '1487155512', '1487155512');

-- ----------------------------
-- Table structure for lxzcms_adszone
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_adszone`;
CREATE TABLE `lxzcms_adszone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '代码，图片，幻灯，flash',
  `sort` bigint(20) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `addtime` int(10) DEFAULT NULL,
  `edittime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_adszone
-- ----------------------------
INSERT INTO `lxzcms_adszone` VALUES ('1', '首页banner', '2', null, '1920', '460', '1', null, '1465187013', '1487239772');
INSERT INTO `lxzcms_adszone` VALUES ('2', '友情链接', '5', null, '0', '0', '1', null, '1465638227', '1469067722');
INSERT INTO `lxzcms_adszone` VALUES ('3', '首页_中部通栏海报', '1', null, '1920', '440', '1', '', '1465786301', '1484557132');
INSERT INTO `lxzcms_adszone` VALUES ('16', '关于我们_顶部banner', '1', null, '1920', '420', '1', null, '1481191764', '1482819567');
INSERT INTO `lxzcms_adszone` VALUES ('17', '关于我们_右侧二维码', '1', null, '165', '165', '1', null, '1481249101', '1482909758');
INSERT INTO `lxzcms_adszone` VALUES ('18', '首页_场地展示', '2', null, '1200', '620', '1', null, '1481794494', '1482819782');
INSERT INTO `lxzcms_adszone` VALUES ('19', '学车问答_顶部banner', '1', null, '1920', '405', '1', null, '1482302619', '1482909025');
INSERT INTO `lxzcms_adszone` VALUES ('20', '新闻动态_顶部banner', '1', null, '1920', '305', '1', null, '1482302704', '1482907935');
INSERT INTO `lxzcms_adszone` VALUES ('21', '首页_学员反馈', '2', null, '1200', '480', '1', null, '1482478358', '1482909372');
INSERT INTO `lxzcms_adszone` VALUES ('22', '学车保障_banner', '1', null, '1920', '600', '1', null, '1483526893', '1483526893');
INSERT INTO `lxzcms_adszone` VALUES ('24', '单页报名须知栏目_banner', '1', null, '1920', '170', '1', null, '1487155512', '1487155512');

-- ----------------------------
-- Table structure for lxzcms_area
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_area`;
CREATE TABLE `lxzcms_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `childstatus` tinyint(4) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `areaid` (`areaid`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `id` (`id`,`areaid`,`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=800066 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_area
-- ----------------------------
INSERT INTO `lxzcms_area` VALUES ('1', '110000', '0', '北京市', '1', '0', '1', '17', '1');
INSERT INTO `lxzcms_area` VALUES ('2', '120000', '0', '天津市', '1', '0', '1', '18', '1');
INSERT INTO `lxzcms_area` VALUES ('3', '130000', '0', '河北省', '1', '1', '1', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('4', '140000', '0', '山西省', '1', '1', '1', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('5', '150000', '0', '内蒙古', '1', '1', '1', '12', '1');
INSERT INTO `lxzcms_area` VALUES ('6', '210000', '0', '辽宁省', '1', '1', '1', '14', '1');
INSERT INTO `lxzcms_area` VALUES ('7', '220000', '0', '吉林省', '1', '1', '1', '9', '1');
INSERT INTO `lxzcms_area` VALUES ('8', '230000', '0', '黑龙江省', '1', '1', '1', '13', '1');
INSERT INTO `lxzcms_area` VALUES ('9', '310000', '0', '上海市', '1', '0', '1', '20', '1');
INSERT INTO `lxzcms_area` VALUES ('10', '320000', '0', '江苏省', '1', '1', '1', '13', '1');
INSERT INTO `lxzcms_area` VALUES ('11', '330000', '0', '浙江省', '1', '1', '1', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('12', '340000', '0', '安徽省', '1', '1', '1', '17', '1');
INSERT INTO `lxzcms_area` VALUES ('13', '350000', '0', '福建省', '1', '1', '1', '9', '1');
INSERT INTO `lxzcms_area` VALUES ('14', '360000', '0', '江西省', '1', '1', '1', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('15', '370000', '0', '山东省', '1', '1', '1', '17', '1');
INSERT INTO `lxzcms_area` VALUES ('16', '410000', '0', '河南省', '1', '1', '1', '17', '1');
INSERT INTO `lxzcms_area` VALUES ('17', '420000', '0', '湖北省', '1', '1', '1', '14', '1');
INSERT INTO `lxzcms_area` VALUES ('18', '430000', '0', '湖南省', '1', '1', '1', '14', '1');
INSERT INTO `lxzcms_area` VALUES ('19', '440000', '0', '广东省', '1', '1', '1', '21', '1');
INSERT INTO `lxzcms_area` VALUES ('20', '450000', '0', '广西', '1', '1', '1', '14', '1');
INSERT INTO `lxzcms_area` VALUES ('21', '460000', '0', '海南省', '1', '1', '1', '3', '1');
INSERT INTO `lxzcms_area` VALUES ('22', '500000', '0', '重庆市', '1', '0', '1', '38', '1');
INSERT INTO `lxzcms_area` VALUES ('23', '510000', '0', '四川省', '1', '1', '1', '21', '1');
INSERT INTO `lxzcms_area` VALUES ('24', '520000', '0', '贵州省', '1', '1', '1', '9', '1');
INSERT INTO `lxzcms_area` VALUES ('25', '530000', '0', '云南省', '1', '1', '1', '16', '1');
INSERT INTO `lxzcms_area` VALUES ('26', '540000', '0', '西藏', '1', '1', '1', '7', '1');
INSERT INTO `lxzcms_area` VALUES ('27', '610000', '0', '陕西省', '1', '1', '1', '10', '1');
INSERT INTO `lxzcms_area` VALUES ('28', '620000', '0', '甘肃省', '1', '1', '1', '14', '1');
INSERT INTO `lxzcms_area` VALUES ('29', '630000', '0', '青海省', '1', '1', '1', '8', '1');
INSERT INTO `lxzcms_area` VALUES ('30', '640000', '0', '宁夏', '1', '1', '1', '5', '1');
INSERT INTO `lxzcms_area` VALUES ('31', '650000', '0', '新疆', '1', '1', '1', '15', '1');
INSERT INTO `lxzcms_area` VALUES ('32', '710000', '0', '台湾省', '0', '1', '1', '0', '1');
INSERT INTO `lxzcms_area` VALUES ('33', '810000', '0', '香港', '0', '1', '1', '0', '1');
INSERT INTO `lxzcms_area` VALUES ('34', '820000', '0', '澳门', '0', '1', '1', '0', '1');
INSERT INTO `lxzcms_area` VALUES ('39', '130100', '130000', '石家庄市', '1', '2', '2', '23', '0');
INSERT INTO `lxzcms_area` VALUES ('40', '130200', '130000', '唐山市', '1', '2', '2', '14', '0');
INSERT INTO `lxzcms_area` VALUES ('41', '130300', '130000', '秦皇岛市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('42', '130400', '130000', '邯郸市', '1', '2', '2', '19', '0');
INSERT INTO `lxzcms_area` VALUES ('43', '130500', '130000', '邢台市', '1', '2', '2', '19', '0');
INSERT INTO `lxzcms_area` VALUES ('44', '130600', '130000', '保定市', '1', '2', '2', '25', '0');
INSERT INTO `lxzcms_area` VALUES ('45', '130700', '130000', '张家口市', '1', '2', '2', '17', '0');
INSERT INTO `lxzcms_area` VALUES ('46', '130800', '130000', '承德市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('47', '130900', '130000', '沧州市', '1', '2', '2', '16', '0');
INSERT INTO `lxzcms_area` VALUES ('48', '131000', '130000', '廊坊市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('49', '131100', '130000', '衡水市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('50', '140100', '140000', '太原市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('51', '140200', '140000', '大同市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('52', '140300', '140000', '阳泉市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('53', '140400', '140000', '长治市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('54', '140500', '140000', '晋城市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('55', '140600', '140000', '朔州市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('56', '140700', '140000', '晋中市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('57', '140800', '140000', '运城市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('58', '140900', '140000', '忻州市', '1', '2', '2', '14', '0');
INSERT INTO `lxzcms_area` VALUES ('59', '141000', '140000', '临汾市', '1', '2', '2', '17', '0');
INSERT INTO `lxzcms_area` VALUES ('60', '141100', '140000', '吕梁市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('61', '150100', '150000', '呼和浩特市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('62', '150200', '150000', '包头市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('63', '150300', '150000', '乌海市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('64', '150400', '150000', '赤峰市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('65', '150500', '150000', '通辽市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('66', '150600', '150000', '鄂尔多斯市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('67', '150700', '150000', '呼伦贝尔市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('68', '150800', '150000', '巴彦淖尔市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('69', '150900', '150000', '乌兰察布市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('70', '152200', '150000', '兴安盟', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('71', '152500', '150000', '锡林郭勒盟', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('72', '152900', '150000', '阿拉善盟', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('73', '210100', '210000', '沈阳市', '1', '2', '2', '13', '1');
INSERT INTO `lxzcms_area` VALUES ('74', '210200', '210000', '大连市', '1', '2', '2', '10', '1');
INSERT INTO `lxzcms_area` VALUES ('75', '210300', '210000', '鞍山市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('76', '210400', '210000', '抚顺市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('77', '210500', '210000', '本溪市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('78', '210600', '210000', '丹东市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('79', '210700', '210000', '锦州市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('80', '210800', '210000', '营口市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('81', '210900', '210000', '阜新市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('82', '211000', '210000', '辽阳市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('83', '211100', '210000', '盘锦市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('84', '211200', '210000', '铁岭市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('85', '211300', '210000', '朝阳市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('86', '211400', '210000', '葫芦岛市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('87', '220100', '220000', '长春市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('88', '220200', '220000', '吉林市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('89', '220300', '220000', '四平市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('90', '220400', '220000', '辽源市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('91', '220500', '220000', '通化市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('92', '220600', '220000', '白山市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('93', '220700', '220000', '松原市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('94', '220800', '220000', '白城市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('95', '222400', '220000', '延边朝鲜族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('96', '230100', '230000', '哈尔滨市', '1', '2', '2', '19', '1');
INSERT INTO `lxzcms_area` VALUES ('97', '230200', '230000', '齐齐哈尔市', '1', '2', '2', '16', '0');
INSERT INTO `lxzcms_area` VALUES ('98', '230300', '230000', '鸡西市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('99', '230400', '230000', '鹤岗市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('100', '230500', '230000', '双鸭山市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('101', '230600', '230000', '大庆市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('102', '230700', '230000', '伊春市', '1', '2', '2', '17', '0');
INSERT INTO `lxzcms_area` VALUES ('103', '230800', '230000', '佳木斯市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('104', '230900', '230000', '七台河市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('105', '231000', '230000', '牡丹江市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('106', '231100', '230000', '黑河市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('107', '231200', '230000', '绥化市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('108', '232700', '230000', '大兴安岭地区', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('111', '320100', '320000', '南京市', '1', '2', '2', '13', '1');
INSERT INTO `lxzcms_area` VALUES ('112', '320200', '320000', '无锡市', '1', '2', '2', '8', '1');
INSERT INTO `lxzcms_area` VALUES ('113', '320300', '320000', '徐州市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('114', '320400', '320000', '常州市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('115', '320500', '320000', '苏州市', '1', '2', '2', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('116', '320600', '320000', '南通市', '1', '2', '2', '8', '1');
INSERT INTO `lxzcms_area` VALUES ('117', '320700', '320000', '连云港市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('118', '320800', '320000', '淮安市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('119', '320900', '320000', '盐城市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('120', '321000', '320000', '扬州市', '1', '2', '2', '7', '1');
INSERT INTO `lxzcms_area` VALUES ('121', '321100', '320000', '镇江市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('122', '321200', '320000', '泰州市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('123', '321300', '320000', '宿迁市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('124', '330100', '330000', '杭州市', '1', '2', '2', '13', '1');
INSERT INTO `lxzcms_area` VALUES ('125', '330200', '330000', '宁波市', '1', '2', '2', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('126', '330300', '330000', '温州市', '1', '2', '2', '11', '1');
INSERT INTO `lxzcms_area` VALUES ('127', '330400', '330000', '嘉兴市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('128', '330500', '330000', '湖州市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('129', '330600', '330000', '绍兴市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('130', '330700', '330000', '金华市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('131', '330800', '330000', '衢州市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('132', '330900', '330000', '舟山市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('133', '331000', '330000', '台州市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('134', '331100', '330000', '丽水市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('135', '340100', '340000', '合肥市', '1', '2', '2', '7', '1');
INSERT INTO `lxzcms_area` VALUES ('136', '340200', '340000', '芜湖市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('137', '340300', '340000', '蚌埠市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('138', '340400', '340000', '淮南市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('139', '340500', '340000', '马鞍山市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('140', '340600', '340000', '淮北市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('141', '340700', '340000', '铜陵市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('142', '340800', '340000', '安庆市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('143', '341000', '340000', '黄山市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('144', '341100', '340000', '滁州市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('145', '341200', '340000', '阜阳市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('146', '341300', '340000', '宿州市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('147', '341400', '340000', '巢湖市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('148', '341500', '340000', '六安市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('149', '341600', '340000', '亳州市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('150', '341700', '340000', '池州市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('151', '341800', '340000', '宣城市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('152', '350100', '350000', '福州市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('153', '350200', '350000', '厦门市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('154', '350300', '350000', '莆田市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('155', '350400', '350000', '三明市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('156', '350500', '350000', '泉州市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('157', '350600', '350000', '漳州市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('158', '350700', '350000', '南平市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('159', '350800', '350000', '龙岩市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('160', '350900', '350000', '宁德市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('161', '360100', '360000', '南昌市', '1', '2', '2', '9', '1');
INSERT INTO `lxzcms_area` VALUES ('162', '360200', '360000', '景德镇市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('163', '360300', '360000', '萍乡市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('164', '360400', '360000', '九江市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('165', '360500', '360000', '新余市', '1', '2', '2', '2', '0');
INSERT INTO `lxzcms_area` VALUES ('166', '360600', '360000', '鹰潭市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('167', '360700', '360000', '赣州市', '1', '2', '2', '18', '0');
INSERT INTO `lxzcms_area` VALUES ('168', '360800', '360000', '吉安市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('169', '360900', '360000', '宜春市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('170', '361000', '360000', '抚州市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('171', '361100', '360000', '上饶市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('172', '370100', '370000', '济南市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('173', '370200', '370000', '青岛市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('174', '370300', '370000', '淄博市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('175', '370400', '370000', '枣庄市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('176', '370500', '370000', '东营市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('177', '370600', '370000', '烟台市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('178', '370700', '370000', '潍坊市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('179', '370800', '370000', '济宁市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('180', '370900', '370000', '泰安市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('181', '371000', '370000', '威海市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('182', '371100', '370000', '日照市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('183', '371200', '370000', '莱芜市', '1', '2', '2', '2', '0');
INSERT INTO `lxzcms_area` VALUES ('184', '371300', '370000', '临沂市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('185', '371400', '370000', '德州市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('186', '371500', '370000', '聊城市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('187', '371600', '370000', '滨州市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('188', '371700', '370000', '荷泽市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('189', '410100', '410000', '郑州市', '1', '2', '2', '12', '1');
INSERT INTO `lxzcms_area` VALUES ('190', '410200', '410000', '开封市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('191', '410300', '410000', '洛阳市', '1', '2', '2', '15', '0');
INSERT INTO `lxzcms_area` VALUES ('192', '410400', '410000', '平顶山市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('193', '410500', '410000', '安阳市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('194', '410600', '410000', '鹤壁市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('195', '410700', '410000', '新乡市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('196', '410800', '410000', '焦作市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('197', '410900', '410000', '濮阳市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('198', '411000', '410000', '许昌市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('199', '411100', '410000', '漯河市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('200', '411200', '410000', '三门峡市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('201', '411300', '410000', '南阳市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('202', '411400', '410000', '商丘市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('203', '411500', '410000', '信阳市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('204', '411600', '410000', '周口市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('205', '411700', '410000', '驻马店市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('206', '420100', '420000', '武汉市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('207', '420200', '420000', '黄石市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('208', '420300', '420000', '十堰市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('209', '420500', '420000', '宜昌市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('210', '420600', '420000', '襄樊市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('211', '420700', '420000', '鄂州市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('212', '420800', '420000', '荆门市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('213', '420900', '420000', '孝感市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('214', '421000', '420000', '荆州市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('215', '421100', '420000', '黄冈市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('216', '421200', '420000', '咸宁市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('217', '421300', '420000', '随州市', '1', '2', '2', '2', '0');
INSERT INTO `lxzcms_area` VALUES ('218', '422800', '420000', '恩施土家族苗族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('220', '430100', '430000', '长沙市', '1', '2', '2', '9', '1');
INSERT INTO `lxzcms_area` VALUES ('221', '430200', '430000', '株洲市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('222', '430300', '430000', '湘潭市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('223', '430400', '430000', '衡阳市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('224', '430500', '430000', '邵阳市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('225', '430600', '430000', '岳阳市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('226', '430700', '430000', '常德市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('227', '430800', '430000', '张家界市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('228', '430900', '430000', '益阳市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('229', '431000', '430000', '郴州市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('230', '431100', '430000', '永州市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('231', '431200', '430000', '怀化市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('232', '431300', '430000', '娄底市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('233', '433100', '430000', '湘西土家族苗族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('234', '440100', '440000', '广州市', '1', '2', '2', '12', '1');
INSERT INTO `lxzcms_area` VALUES ('235', '440200', '440000', '韶关市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('236', '440300', '440000', '深圳市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('237', '440400', '440000', '珠海市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('238', '440500', '440000', '汕头市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('239', '440600', '440000', '佛山市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('240', '440700', '440000', '江门市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('241', '440800', '440000', '湛江市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('242', '440900', '440000', '茂名市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('243', '441200', '440000', '肇庆市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('244', '441300', '440000', '惠州市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('245', '441400', '440000', '梅州市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('246', '441500', '440000', '汕尾市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('247', '441600', '440000', '河源市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('248', '441700', '440000', '阳江市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('249', '441800', '440000', '清远市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('250', '441900', '440000', '东莞市', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('251', '442000', '440000', '中山市', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('252', '445100', '440000', '潮州市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('253', '445200', '440000', '揭阳市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('254', '445300', '440000', '云浮市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('255', '450100', '450000', '南宁市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('256', '450200', '450000', '柳州市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('257', '450300', '450000', '桂林市', '1', '2', '2', '17', '0');
INSERT INTO `lxzcms_area` VALUES ('258', '450400', '450000', '梧州市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('259', '450500', '450000', '北海市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('260', '450600', '450000', '防城港市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('261', '450700', '450000', '钦州市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('262', '450800', '450000', '贵港市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('263', '450900', '450000', '玉林市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('264', '451000', '450000', '百色市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('265', '451100', '450000', '贺州市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('266', '451200', '450000', '河池市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('267', '451300', '450000', '来宾市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('268', '451400', '450000', '崇左市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('269', '460100', '460000', '海口市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('270', '460200', '460000', '三亚市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('275', '510100', '510000', '成都市', '1', '2', '1', '19', '1');
INSERT INTO `lxzcms_area` VALUES ('276', '510300', '510000', '自贡市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('277', '510400', '510000', '攀枝花市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('278', '510500', '510000', '泸州市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('279', '510600', '510000', '德阳市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('280', '510700', '510000', '绵阳市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('281', '510800', '510000', '广元市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('282', '510900', '510000', '遂宁市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('283', '511000', '510000', '内江市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('284', '511100', '510000', '乐山市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('285', '511300', '510000', '南充市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('286', '511400', '510000', '眉山市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('287', '511500', '510000', '宜宾市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('288', '511600', '510000', '广安市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('289', '511700', '510000', '达州市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('290', '511800', '510000', '雅安市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('291', '511900', '510000', '巴中市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('292', '512000', '510000', '资阳市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('293', '513200', '510000', '阿坝藏族羌族自治州', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('294', '513300', '510000', '甘孜藏族自治州', '1', '2', '2', '18', '0');
INSERT INTO `lxzcms_area` VALUES ('295', '513400', '510000', '凉山彝族自治州', '1', '2', '2', '17', '0');
INSERT INTO `lxzcms_area` VALUES ('296', '520100', '520000', '贵阳市', '1', '2', '2', '10', '1');
INSERT INTO `lxzcms_area` VALUES ('297', '520200', '520000', '六盘水市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('298', '520300', '520000', '遵义市', '1', '2', '2', '14', '0');
INSERT INTO `lxzcms_area` VALUES ('299', '520400', '520000', '安顺市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('300', '522200', '520000', '铜仁地区', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('301', '522300', '520000', '黔西南布依族苗族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('302', '522400', '520000', '毕节地区', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('303', '522600', '520000', '黔东南苗族侗族自治州', '1', '2', '2', '16', '0');
INSERT INTO `lxzcms_area` VALUES ('304', '522700', '520000', '黔南布依族苗族自治州', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('305', '530100', '530000', '昆明市', '1', '2', '2', '14', '1');
INSERT INTO `lxzcms_area` VALUES ('306', '530300', '530000', '曲靖市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('307', '530400', '530000', '玉溪市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('308', '530500', '530000', '保山市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('309', '530600', '530000', '昭通市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('310', '530700', '530000', '丽江市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('311', '530800', '530000', '思茅市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('312', '530900', '530000', '临沧市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('313', '532300', '530000', '楚雄彝族自治州', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('314', '532500', '530000', '红河哈尼族彝族自治州', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('315', '532600', '530000', '文山壮族苗族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('316', '532800', '530000', '西双版纳傣族自治州', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('317', '532900', '530000', '大理白族自治州', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('318', '533100', '530000', '德宏傣族景颇族自治州', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('319', '533300', '530000', '怒江傈僳族自治州', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('320', '533400', '530000', '迪庆藏族自治州', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('321', '540100', '540000', '拉萨市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('322', '542100', '540000', '昌都地区', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('323', '542200', '540000', '山南地区', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('324', '542300', '540000', '日喀则地区', '1', '2', '2', '18', '0');
INSERT INTO `lxzcms_area` VALUES ('325', '542400', '540000', '那曲地区', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('326', '542500', '540000', '阿里地区', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('327', '542600', '540000', '林芝地区', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('328', '610100', '610000', '西安市', '1', '2', '2', '13', '1');
INSERT INTO `lxzcms_area` VALUES ('329', '610200', '610000', '铜川市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('330', '610300', '610000', '宝鸡市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('331', '610400', '610000', '咸阳市', '1', '2', '2', '14', '0');
INSERT INTO `lxzcms_area` VALUES ('332', '610500', '610000', '渭南市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('333', '610600', '610000', '延安市', '1', '2', '2', '13', '0');
INSERT INTO `lxzcms_area` VALUES ('334', '610700', '610000', '汉中市', '1', '2', '2', '11', '0');
INSERT INTO `lxzcms_area` VALUES ('335', '610800', '610000', '榆林市', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('336', '610900', '610000', '安康市', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('337', '611000', '610000', '商洛市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('338', '620100', '620000', '兰州市', '1', '2', '2', '8', '1');
INSERT INTO `lxzcms_area` VALUES ('339', '620200', '620000', '嘉峪关市', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('340', '620300', '620000', '金昌市', '1', '2', '2', '2', '0');
INSERT INTO `lxzcms_area` VALUES ('341', '620400', '620000', '白银市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('342', '620500', '620000', '天水市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('343', '620600', '620000', '武威市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('344', '620700', '620000', '张掖市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('345', '620800', '620000', '平凉市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('346', '620900', '620000', '酒泉市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('347', '621000', '620000', '庆阳市', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('348', '621100', '620000', '定西市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('349', '621200', '620000', '陇南市', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('350', '622900', '620000', '临夏回族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('351', '623000', '620000', '甘南藏族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('352', '630100', '630000', '西宁市', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('353', '632100', '630000', '海东地区', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('354', '632200', '630000', '海北藏族自治州', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('355', '632300', '630000', '黄南藏族自治州', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('356', '632500', '630000', '海南藏族自治州', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('357', '632600', '630000', '果洛藏族自治州', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('358', '632700', '630000', '玉树藏族自治州', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('359', '632800', '630000', '海西蒙古族藏族自治州', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('360', '640100', '640000', '银川市', '1', '2', '2', '6', '0');
INSERT INTO `lxzcms_area` VALUES ('361', '640200', '640000', '石嘴山市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('362', '640300', '640000', '吴忠市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('363', '640400', '640000', '固原市', '1', '2', '2', '5', '0');
INSERT INTO `lxzcms_area` VALUES ('364', '640500', '640000', '中卫市', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('365', '650100', '650000', '乌鲁木齐市', '1', '2', '2', '8', '1');
INSERT INTO `lxzcms_area` VALUES ('366', '650200', '650000', '克拉玛依市', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('367', '652100', '650000', '吐鲁番地区', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('368', '652200', '650000', '哈密地区', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('369', '652300', '650000', '昌吉回族自治州', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('370', '652700', '650000', '博尔塔拉蒙古自治州', '1', '2', '2', '3', '0');
INSERT INTO `lxzcms_area` VALUES ('371', '652800', '650000', '巴音郭楞蒙古自治州', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('372', '652900', '650000', '阿克苏地区', '1', '2', '2', '9', '0');
INSERT INTO `lxzcms_area` VALUES ('373', '653000', '650000', '克孜勒苏柯尔克孜自治州', '1', '2', '2', '4', '0');
INSERT INTO `lxzcms_area` VALUES ('374', '653100', '650000', '喀什地区', '1', '2', '2', '12', '0');
INSERT INTO `lxzcms_area` VALUES ('375', '653200', '650000', '和田地区', '1', '2', '2', '8', '0');
INSERT INTO `lxzcms_area` VALUES ('376', '654000', '650000', '伊犁哈萨克自治州', '1', '2', '2', '10', '0');
INSERT INTO `lxzcms_area` VALUES ('377', '654200', '650000', '塔城地区', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('378', '654300', '650000', '阿勒泰地区', '1', '2', '2', '7', '0');
INSERT INTO `lxzcms_area` VALUES ('380', '110101', '110000', '东城区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('381', '110102', '110000', '西城区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('382', '110103', '110000', '崇文区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('383', '110104', '110000', '宣武区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('384', '110105', '110000', '朝阳区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('385', '110106', '110000', '丰台区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('386', '110107', '110000', '石景山区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('387', '110108', '110000', '海淀区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('388', '110109', '110000', '门头沟区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('389', '110111', '110000', '房山区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('390', '110112', '110000', '通州区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('391', '110113', '110000', '顺义区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('392', '110114', '110000', '昌平区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('393', '110115', '110000', '大兴区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('394', '110116', '110000', '怀柔区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('395', '110117', '110000', '平谷区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('396', '110228', '110000', '密云县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('397', '110229', '110000', '延庆县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('398', '120101', '120000', '和平区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('399', '120102', '120000', '河东区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('400', '120103', '120000', '河西区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('401', '120104', '120000', '南开区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('402', '120105', '120000', '河北区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('403', '120106', '120000', '红桥区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('404', '120107', '120000', '塘沽区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('405', '120108', '120000', '汉沽区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('406', '120109', '120000', '大港区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('407', '120110', '120000', '东丽区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('408', '120111', '120000', '西青区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('409', '120112', '120000', '津南区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('410', '120113', '120000', '北辰区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('411', '120114', '120000', '武清区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('412', '120115', '120000', '宝坻区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('413', '120221', '120000', '宁河县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('414', '120223', '120000', '静海县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('415', '120225', '120000', '蓟　县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('417', '130102', '130100', '长安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('418', '130103', '130100', '桥东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('419', '130104', '130100', '桥西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('420', '130105', '130100', '新华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('421', '130107', '130100', '井陉矿区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('422', '130108', '130100', '裕华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('423', '130121', '130100', '井陉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('424', '130123', '130100', '正定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('425', '130124', '130100', '栾城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('426', '130125', '130100', '行唐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('427', '130126', '130100', '灵寿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('428', '130127', '130100', '高邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('429', '130128', '130100', '深泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('430', '130129', '130100', '赞皇县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('431', '130130', '130100', '无极县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('432', '130131', '130100', '平山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('433', '130132', '130100', '元氏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('434', '130133', '130100', '赵　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('435', '130181', '130100', '辛集市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('436', '130182', '130100', '藁城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('437', '130183', '130100', '晋州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('438', '130184', '130100', '新乐市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('439', '130185', '130100', '鹿泉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('441', '130202', '130200', '路南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('442', '130203', '130200', '路北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('443', '130204', '130200', '古冶区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('444', '130205', '130200', '开平区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('445', '130207', '130200', '丰南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('446', '130208', '130200', '丰润区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('447', '130223', '130200', '滦　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('448', '130224', '130200', '滦南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('449', '130225', '130200', '乐亭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('450', '130227', '130200', '迁西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('451', '130229', '130200', '玉田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('452', '130230', '130200', '唐海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('453', '130281', '130200', '遵化市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('454', '130283', '130200', '迁安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('456', '130302', '130300', '海港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('457', '130303', '130300', '山海关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('458', '130304', '130300', '北戴河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('459', '130321', '130300', '青龙满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('460', '130322', '130300', '昌黎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('461', '130323', '130300', '抚宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('462', '130324', '130300', '卢龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('464', '130402', '130400', '邯山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('465', '130403', '130400', '丛台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('466', '130404', '130400', '复兴区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('467', '130406', '130400', '峰峰矿区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('468', '130421', '130400', '邯郸县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('469', '130423', '130400', '临漳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('470', '130424', '130400', '成安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('471', '130425', '130400', '大名县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('472', '130426', '130400', '涉　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('473', '130427', '130400', '磁　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('474', '130428', '130400', '肥乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('475', '130429', '130400', '永年县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('476', '130430', '130400', '邱　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('477', '130431', '130400', '鸡泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('478', '130432', '130400', '广平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('479', '130433', '130400', '馆陶县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('480', '130434', '130400', '魏　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('481', '130435', '130400', '曲周县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('482', '130481', '130400', '武安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('484', '130502', '130500', '桥东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('485', '130503', '130500', '桥西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('486', '130521', '130500', '邢台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('487', '130522', '130500', '临城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('488', '130523', '130500', '内丘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('489', '130524', '130500', '柏乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('490', '130525', '130500', '隆尧县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('491', '130526', '130500', '任　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('492', '130527', '130500', '南和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('493', '130528', '130500', '宁晋县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('494', '130529', '130500', '巨鹿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('495', '130530', '130500', '新河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('496', '130531', '130500', '广宗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('497', '130532', '130500', '平乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('498', '130533', '130500', '威　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('499', '130534', '130500', '清河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('500', '130535', '130500', '临西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('501', '130581', '130500', '南宫市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('502', '130582', '130500', '沙河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('504', '130602', '130600', '新市区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('505', '130603', '130600', '北市区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('506', '130604', '130600', '南市区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('507', '130621', '130600', '满城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('508', '130622', '130600', '清苑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('509', '130623', '130600', '涞水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('510', '130624', '130600', '阜平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('511', '130625', '130600', '徐水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('512', '130626', '130600', '定兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('513', '130627', '130600', '唐　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('514', '130628', '130600', '高阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('515', '130629', '130600', '容城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('516', '130630', '130600', '涞源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('517', '130631', '130600', '望都县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('518', '130632', '130600', '安新县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('519', '130633', '130600', '易　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('520', '130634', '130600', '曲阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('521', '130635', '130600', '蠡　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('522', '130636', '130600', '顺平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('523', '130637', '130600', '博野县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('524', '130638', '130600', '雄　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('525', '130681', '130600', '涿州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('526', '130682', '130600', '定州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('527', '130683', '130600', '安国市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('528', '130684', '130600', '高碑店市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('530', '130702', '130700', '桥东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('531', '130703', '130700', '桥西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('532', '130705', '130700', '宣化区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('533', '130706', '130700', '下花园区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('534', '130721', '130700', '宣化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('535', '130722', '130700', '张北县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('536', '130723', '130700', '康保县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('537', '130724', '130700', '沽源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('538', '130725', '130700', '尚义县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('539', '130726', '130700', '蔚　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('540', '130727', '130700', '阳原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('541', '130728', '130700', '怀安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('542', '130729', '130700', '万全县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('543', '130730', '130700', '怀来县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('544', '130731', '130700', '涿鹿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('545', '130732', '130700', '赤城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('546', '130733', '130700', '崇礼县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('548', '130802', '130800', '双桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('549', '130803', '130800', '双滦区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('550', '130804', '130800', '鹰手营子矿区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('551', '130821', '130800', '承德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('552', '130822', '130800', '兴隆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('553', '130823', '130800', '平泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('554', '130824', '130800', '滦平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('555', '130825', '130800', '隆化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('556', '130826', '130800', '丰宁满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('557', '130827', '130800', '宽城满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('558', '130828', '130800', '围场满族蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('560', '130902', '130900', '新华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('561', '130903', '130900', '运河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('562', '130921', '130900', '沧　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('563', '130922', '130900', '青　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('564', '130923', '130900', '东光县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('565', '130924', '130900', '海兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('566', '130925', '130900', '盐山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('567', '130926', '130900', '肃宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('568', '130927', '130900', '南皮县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('569', '130928', '130900', '吴桥县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('570', '130929', '130900', '献　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('571', '130930', '130900', '孟村回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('572', '130981', '130900', '泊头市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('573', '130982', '130900', '任丘市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('574', '130983', '130900', '黄骅市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('575', '130984', '130900', '河间市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('577', '131002', '131000', '安次区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('578', '131003', '131000', '广阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('579', '131022', '131000', '固安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('580', '131023', '131000', '永清县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('581', '131024', '131000', '香河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('582', '131025', '131000', '大城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('583', '131026', '131000', '文安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('584', '131028', '131000', '大厂回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('585', '131081', '131000', '霸州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('586', '131082', '131000', '三河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('588', '131102', '131100', '桃城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('589', '131121', '131100', '枣强县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('590', '131122', '131100', '武邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('591', '131123', '131100', '武强县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('592', '131124', '131100', '饶阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('593', '131125', '131100', '安平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('594', '131126', '131100', '故城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('595', '131127', '131100', '景　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('596', '131128', '131100', '阜城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('597', '131181', '131100', '冀州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('598', '131182', '131100', '深州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('600', '140105', '140100', '小店区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('601', '140106', '140100', '迎泽区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('602', '140107', '140100', '杏花岭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('603', '140108', '140100', '尖草坪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('604', '140109', '140100', '万柏林区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('605', '140110', '140100', '晋源区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('606', '140121', '140100', '清徐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('607', '140122', '140100', '阳曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('608', '140123', '140100', '娄烦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('609', '140181', '140100', '古交市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('611', '140202', '140200', '城　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('612', '140203', '140200', '矿　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('613', '140211', '140200', '南郊区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('614', '140212', '140200', '新荣区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('615', '140221', '140200', '阳高县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('616', '140222', '140200', '天镇县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('617', '140223', '140200', '广灵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('618', '140224', '140200', '灵丘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('619', '140225', '140200', '浑源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('620', '140226', '140200', '左云县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('621', '140227', '140200', '大同县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('623', '140302', '140300', '城　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('624', '140303', '140300', '矿　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('625', '140311', '140300', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('626', '140321', '140300', '平定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('627', '140322', '140300', '盂　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('629', '140402', '140400', '城　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('630', '140411', '140400', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('631', '140421', '140400', '长治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('632', '140423', '140400', '襄垣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('633', '140424', '140400', '屯留县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('634', '140425', '140400', '平顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('635', '140426', '140400', '黎城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('636', '140427', '140400', '壶关县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('637', '140428', '140400', '长子县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('638', '140429', '140400', '武乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('639', '140430', '140400', '沁　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('640', '140431', '140400', '沁源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('641', '140481', '140400', '潞城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('643', '140502', '140500', '城　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('644', '140521', '140500', '沁水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('645', '140522', '140500', '阳城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('646', '140524', '140500', '陵川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('647', '140525', '140500', '泽州县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('648', '140581', '140500', '高平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('650', '140602', '140600', '朔城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('651', '140603', '140600', '平鲁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('652', '140621', '140600', '山阴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('653', '140622', '140600', '应　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('654', '140623', '140600', '右玉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('655', '140624', '140600', '怀仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('657', '140702', '140700', '榆次区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('658', '140721', '140700', '榆社县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('659', '140722', '140700', '左权县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('660', '140723', '140700', '和顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('661', '140724', '140700', '昔阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('662', '140725', '140700', '寿阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('663', '140726', '140700', '太谷县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('664', '140727', '140700', '祁　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('665', '140728', '140700', '平遥县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('666', '140729', '140700', '灵石县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('667', '140781', '140700', '介休市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('669', '140802', '140800', '盐湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('670', '140821', '140800', '临猗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('671', '140822', '140800', '万荣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('672', '140823', '140800', '闻喜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('673', '140824', '140800', '稷山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('674', '140825', '140800', '新绛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('675', '140826', '140800', '绛　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('676', '140827', '140800', '垣曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('677', '140828', '140800', '夏　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('678', '140829', '140800', '平陆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('679', '140830', '140800', '芮城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('680', '140881', '140800', '永济市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('681', '140882', '140800', '河津市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('683', '140902', '140900', '忻府区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('684', '140921', '140900', '定襄县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('685', '140922', '140900', '五台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('686', '140923', '140900', '代　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('687', '140924', '140900', '繁峙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('688', '140925', '140900', '宁武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('689', '140926', '140900', '静乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('690', '140927', '140900', '神池县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('691', '140928', '140900', '五寨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('692', '140929', '140900', '岢岚县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('693', '140930', '140900', '河曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('694', '140931', '140900', '保德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('695', '140932', '140900', '偏关县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('696', '140981', '140900', '原平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('698', '141002', '141000', '尧都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('699', '141021', '141000', '曲沃县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('700', '141022', '141000', '翼城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('701', '141023', '141000', '襄汾县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('702', '141024', '141000', '洪洞县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('703', '141025', '141000', '古　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('704', '141026', '141000', '安泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('705', '141027', '141000', '浮山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('706', '141028', '141000', '吉　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('707', '141029', '141000', '乡宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('708', '141030', '141000', '大宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('709', '141031', '141000', '隰　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('710', '141032', '141000', '永和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('711', '141033', '141000', '蒲　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('712', '141034', '141000', '汾西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('713', '141081', '141000', '侯马市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('714', '141082', '141000', '霍州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('716', '141102', '141100', '离石区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('717', '141121', '141100', '文水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('718', '141122', '141100', '交城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('719', '141123', '141100', '兴　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('720', '141124', '141100', '临　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('721', '141125', '141100', '柳林县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('722', '141126', '141100', '石楼县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('723', '141127', '141100', '岚　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('724', '141128', '141100', '方山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('725', '141129', '141100', '中阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('726', '141130', '141100', '交口县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('727', '141181', '141100', '孝义市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('728', '141182', '141100', '汾阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('730', '150102', '150100', '新城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('731', '150103', '150100', '回民区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('732', '150104', '150100', '玉泉区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('733', '150105', '150100', '赛罕区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('734', '150121', '150100', '土默特左旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('735', '150122', '150100', '托克托县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('736', '150123', '150100', '和林格尔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('737', '150124', '150100', '清水河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('738', '150125', '150100', '武川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('740', '150202', '150200', '东河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('741', '150203', '150200', '昆都仑区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('742', '150204', '150200', '青山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('743', '150205', '150200', '石拐区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('744', '150206', '150200', '白云矿区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('745', '150207', '150200', '九原区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('746', '150221', '150200', '土默特右旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('747', '150222', '150200', '固阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('748', '150223', '150200', '达尔罕茂明安联合旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('750', '150302', '150300', '海勃湾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('751', '150303', '150300', '海南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('752', '150304', '150300', '乌达区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('754', '150402', '150400', '红山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('755', '150403', '150400', '元宝山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('756', '150404', '150400', '松山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('757', '150421', '150400', '阿鲁科尔沁旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('758', '150422', '150400', '巴林左旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('759', '150423', '150400', '巴林右旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('760', '150424', '150400', '林西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('761', '150425', '150400', '克什克腾旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('762', '150426', '150400', '翁牛特旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('763', '150428', '150400', '喀喇沁旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('764', '150429', '150400', '宁城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('765', '150430', '150400', '敖汉旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('767', '150502', '150500', '科尔沁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('768', '150521', '150500', '科尔沁左翼中旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('769', '150522', '150500', '科尔沁左翼后旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('770', '150523', '150500', '开鲁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('771', '150524', '150500', '库伦旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('772', '150525', '150500', '奈曼旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('773', '150526', '150500', '扎鲁特旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('774', '150581', '150500', '霍林郭勒市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('775', '150602', '150600', '东胜区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('776', '150621', '150600', '达拉特旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('777', '150622', '150600', '准格尔旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('778', '150623', '150600', '鄂托克前旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('779', '150624', '150600', '鄂托克旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('780', '150625', '150600', '杭锦旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('781', '150626', '150600', '乌审旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('782', '150627', '150600', '伊金霍洛旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('784', '150702', '150700', '海拉尔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('785', '150721', '150700', '阿荣旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('786', '150722', '150700', '莫力达瓦达斡尔族自治旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('787', '150723', '150700', '鄂伦春自治旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('788', '150724', '150700', '鄂温克族自治旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('789', '150725', '150700', '陈巴尔虎旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('790', '150726', '150700', '新巴尔虎左旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('791', '150727', '150700', '新巴尔虎右旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('792', '150781', '150700', '满洲里市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('793', '150782', '150700', '牙克石市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('794', '150783', '150700', '扎兰屯市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('795', '150784', '150700', '额尔古纳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('796', '150785', '150700', '根河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('798', '150802', '150800', '临河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('799', '150821', '150800', '五原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800', '150822', '150800', '磴口县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('801', '150823', '150800', '乌拉特前旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('802', '150824', '150800', '乌拉特中旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('803', '150825', '150800', '乌拉特后旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('804', '150826', '150800', '杭锦后旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('806', '150902', '150900', '集宁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('807', '150921', '150900', '卓资县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('808', '150922', '150900', '化德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('809', '150923', '150900', '商都县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('810', '150924', '150900', '兴和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('811', '150925', '150900', '凉城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('812', '150926', '150900', '察哈尔右翼前旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('813', '150927', '150900', '察哈尔右翼中旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('814', '150928', '150900', '察哈尔右翼后旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('815', '150929', '150900', '四子王旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('816', '150981', '150900', '丰镇市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('817', '152201', '152200', '乌兰浩特市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('818', '152202', '152200', '阿尔山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('819', '152221', '152200', '科尔沁右翼前旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('820', '152222', '152200', '科尔沁右翼中旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('821', '152223', '152200', '扎赉特旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('822', '152224', '152200', '突泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('823', '152501', '152500', '二连浩特市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('824', '152502', '152500', '锡林浩特市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('825', '152522', '152500', '阿巴嘎旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('826', '152523', '152500', '苏尼特左旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('827', '152524', '152500', '苏尼特右旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('828', '152525', '152500', '东乌珠穆沁旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('829', '152526', '152500', '西乌珠穆沁旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('830', '152527', '152500', '太仆寺旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('831', '152528', '152500', '镶黄旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('832', '152529', '152500', '正镶白旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('833', '152530', '152500', '正蓝旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('834', '152531', '152500', '多伦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('835', '152921', '152900', '阿拉善左旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('836', '152922', '152900', '阿拉善右旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('837', '152923', '152900', '额济纳旗', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('839', '210102', '210100', '和平区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('840', '210103', '210100', '沈河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('841', '210104', '210100', '大东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('842', '210105', '210100', '皇姑区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('843', '210106', '210100', '铁西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('844', '210111', '210100', '苏家屯区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('845', '210112', '210100', '东陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('846', '210113', '210100', '新城子区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('847', '210114', '210100', '于洪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('848', '210122', '210100', '辽中县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('849', '210123', '210100', '康平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('850', '210124', '210100', '法库县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('851', '210181', '210100', '新民市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('853', '210202', '210200', '中山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('854', '210203', '210200', '西岗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('855', '210204', '210200', '沙河口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('856', '210211', '210200', '甘井子区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('857', '210212', '210200', '旅顺口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('858', '210213', '210200', '金州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('859', '210224', '210200', '长海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('860', '210281', '210200', '瓦房店市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('861', '210282', '210200', '普兰店市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('862', '210283', '210200', '庄河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('864', '210302', '210300', '铁东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('865', '210303', '210300', '铁西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('866', '210304', '210300', '立山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('867', '210311', '210300', '千山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('868', '210321', '210300', '台安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('869', '210323', '210300', '岫岩满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('870', '210381', '210300', '海城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('872', '210402', '210400', '新抚区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('873', '210403', '210400', '东洲区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('874', '210404', '210400', '望花区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('875', '210411', '210400', '顺城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('876', '210421', '210400', '抚顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('877', '210422', '210400', '新宾满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('878', '210423', '210400', '清原满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('880', '210502', '210500', '平山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('881', '210503', '210500', '溪湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('882', '210504', '210500', '明山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('883', '210505', '210500', '南芬区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('884', '210521', '210500', '本溪满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('885', '210522', '210500', '桓仁满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('887', '210602', '210600', '元宝区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('888', '210603', '210600', '振兴区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('889', '210604', '210600', '振安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('890', '210624', '210600', '宽甸满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('891', '210681', '210600', '东港市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('892', '210682', '210600', '凤城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('894', '210702', '210700', '古塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('895', '210703', '210700', '凌河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('896', '210711', '210700', '太和区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('897', '210726', '210700', '黑山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('898', '210727', '210700', '义　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('899', '210781', '210700', '凌海市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('900', '210782', '210700', '北宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('902', '210802', '210800', '站前区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('903', '210803', '210800', '西市区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('904', '210804', '210800', '鲅鱼圈区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('905', '210811', '210800', '老边区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('906', '210881', '210800', '盖州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('907', '210882', '210800', '大石桥市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('909', '210902', '210900', '海州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('910', '210903', '210900', '新邱区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('911', '210904', '210900', '太平区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('912', '210905', '210900', '清河门区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('913', '210911', '210900', '细河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('914', '210921', '210900', '阜新蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('915', '210922', '210900', '彰武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('917', '211002', '211000', '白塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('918', '211003', '211000', '文圣区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('919', '211004', '211000', '宏伟区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('920', '211005', '211000', '弓长岭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('921', '211011', '211000', '太子河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('922', '211021', '211000', '辽阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('923', '211081', '211000', '灯塔市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('925', '211102', '211100', '双台子区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('926', '211103', '211100', '兴隆台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('927', '211121', '211100', '大洼县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('928', '211122', '211100', '盘山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('930', '211202', '211200', '银州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('931', '211204', '211200', '清河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('932', '211221', '211200', '铁岭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('933', '211223', '211200', '西丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('934', '211224', '211200', '昌图县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('935', '211281', '211200', '调兵山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('936', '211282', '211200', '开原市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('938', '211302', '211300', '双塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('939', '211303', '211300', '龙城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('940', '211321', '211300', '朝阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('941', '211322', '211300', '建平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('942', '211324', '211300', '喀喇沁左翼蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('943', '211381', '211300', '北票市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('944', '211382', '211300', '凌源市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('946', '211402', '211400', '连山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('947', '211403', '211400', '龙港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('948', '211404', '211400', '南票区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('949', '211421', '211400', '绥中县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('950', '211422', '211400', '建昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('951', '211481', '211400', '兴城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('953', '220102', '220100', '南关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('954', '220103', '220100', '宽城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('955', '220104', '220100', '朝阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('956', '220105', '220100', '二道区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('957', '220106', '220100', '绿园区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('958', '220112', '220100', '双阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('959', '220122', '220100', '农安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('960', '220181', '220100', '九台市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('961', '220182', '220100', '榆树市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('962', '220183', '220100', '德惠市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('964', '220202', '220200', '昌邑区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('965', '220203', '220200', '龙潭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('966', '220204', '220200', '船营区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('967', '220211', '220200', '丰满区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('968', '220221', '220200', '永吉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('969', '220281', '220200', '蛟河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('970', '220282', '220200', '桦甸市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('971', '220283', '220200', '舒兰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('972', '220284', '220200', '磐石市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('974', '220302', '220300', '铁西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('975', '220303', '220300', '铁东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('976', '220322', '220300', '梨树县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('977', '220323', '220300', '伊通满族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('978', '220381', '220300', '公主岭市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('979', '220382', '220300', '双辽市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('981', '220402', '220400', '龙山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('982', '220403', '220400', '西安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('983', '220421', '220400', '东丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('984', '220422', '220400', '东辽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('986', '220502', '220500', '东昌区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('987', '220503', '220500', '二道江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('988', '220521', '220500', '通化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('989', '220523', '220500', '辉南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('990', '220524', '220500', '柳河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('991', '220581', '220500', '梅河口市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('992', '220582', '220500', '集安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('994', '220602', '220600', '八道江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('995', '220621', '220600', '抚松县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('996', '220622', '220600', '靖宇县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('997', '220623', '220600', '长白朝鲜族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('998', '220625', '220600', '江源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('999', '220681', '220600', '临江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1001', '220702', '220700', '宁江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1002', '220721', '220700', '前郭尔罗斯蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1003', '220722', '220700', '长岭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1004', '220723', '220700', '乾安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1005', '220724', '220700', '扶余县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1007', '220802', '220800', '洮北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1008', '220821', '220800', '镇赉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1009', '220822', '220800', '通榆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1010', '220881', '220800', '洮南市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1011', '220882', '220800', '大安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1012', '222401', '222400', '延吉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1013', '222402', '222400', '图们市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1014', '222403', '222400', '敦化市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1015', '222404', '222400', '珲春市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1016', '222405', '222400', '龙井市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1017', '222406', '222400', '和龙市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1018', '222424', '222400', '汪清县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1019', '222426', '222400', '安图县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1021', '230102', '230100', '道里区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1022', '230103', '230100', '南岗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1023', '230104', '230100', '道外区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1024', '230106', '230100', '香坊区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1025', '230107', '230100', '动力区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1026', '230108', '230100', '平房区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1027', '230109', '230100', '松北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1028', '230111', '230100', '呼兰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1029', '230123', '230100', '依兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1030', '230124', '230100', '方正县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1031', '230125', '230100', '宾　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1032', '230126', '230100', '巴彦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1033', '230127', '230100', '木兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1034', '230128', '230100', '通河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1035', '230129', '230100', '延寿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1036', '230181', '230100', '阿城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1037', '230182', '230100', '双城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1038', '230183', '230100', '尚志市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1039', '230184', '230100', '五常市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1041', '230202', '230200', '龙沙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1042', '230203', '230200', '建华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1043', '230204', '230200', '铁锋区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1044', '230205', '230200', '昂昂溪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1045', '230206', '230200', '富拉尔基区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1046', '230207', '230200', '碾子山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1047', '230208', '230200', '梅里斯达斡尔族区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1048', '230221', '230200', '龙江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1049', '230223', '230200', '依安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1050', '230224', '230200', '泰来县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1051', '230225', '230200', '甘南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1052', '230227', '230200', '富裕县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1053', '230229', '230200', '克山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1054', '230230', '230200', '克东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1055', '230231', '230200', '拜泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1056', '230281', '230200', '讷河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1058', '230302', '230300', '鸡冠区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1059', '230303', '230300', '恒山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1060', '230304', '230300', '滴道区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1061', '230305', '230300', '梨树区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1062', '230306', '230300', '城子河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1063', '230307', '230300', '麻山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1064', '230321', '230300', '鸡东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1065', '230381', '230300', '虎林市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1066', '230382', '230300', '密山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1068', '230402', '230400', '向阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1069', '230403', '230400', '工农区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1070', '230404', '230400', '南山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1071', '230405', '230400', '兴安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1072', '230406', '230400', '东山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1073', '230407', '230400', '兴山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1074', '230421', '230400', '萝北县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1075', '230422', '230400', '绥滨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1077', '230502', '230500', '尖山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1078', '230503', '230500', '岭东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1079', '230505', '230500', '四方台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1080', '230506', '230500', '宝山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1081', '230521', '230500', '集贤县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1082', '230522', '230500', '友谊县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1083', '230523', '230500', '宝清县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1084', '230524', '230500', '饶河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1086', '230602', '230600', '萨尔图区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1087', '230603', '230600', '龙凤区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1088', '230604', '230600', '让胡路区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1089', '230605', '230600', '红岗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1090', '230606', '230600', '大同区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1091', '230621', '230600', '肇州县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1092', '230622', '230600', '肇源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1093', '230623', '230600', '林甸县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1094', '230624', '230600', '杜尔伯特蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1096', '230702', '230700', '伊春区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1097', '230703', '230700', '南岔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1098', '230704', '230700', '友好区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1099', '230705', '230700', '西林区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1100', '230706', '230700', '翠峦区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1101', '230707', '230700', '新青区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1102', '230708', '230700', '美溪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1103', '230709', '230700', '金山屯区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1104', '230710', '230700', '五营区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1105', '230711', '230700', '乌马河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1106', '230712', '230700', '汤旺河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1107', '230713', '230700', '带岭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1108', '230714', '230700', '乌伊岭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1109', '230715', '230700', '红星区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1110', '230716', '230700', '上甘岭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1111', '230722', '230700', '嘉荫县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1112', '230781', '230700', '铁力市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1114', '230802', '230800', '永红区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1115', '230803', '230800', '向阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1116', '230804', '230800', '前进区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1117', '230805', '230800', '东风区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1118', '230811', '230800', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1119', '230822', '230800', '桦南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1120', '230826', '230800', '桦川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1121', '230828', '230800', '汤原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1122', '230833', '230800', '抚远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1123', '230881', '230800', '同江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1124', '230882', '230800', '富锦市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1126', '230902', '230900', '新兴区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1127', '230903', '230900', '桃山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1128', '230904', '230900', '茄子河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1129', '230921', '230900', '勃利县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1131', '231002', '231000', '东安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1132', '231003', '231000', '阳明区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1133', '231004', '231000', '爱民区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1134', '231005', '231000', '西安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1135', '231024', '231000', '东宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1136', '231025', '231000', '林口县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1137', '231081', '231000', '绥芬河市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1138', '231083', '231000', '海林市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1139', '231084', '231000', '宁安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1140', '231085', '231000', '穆棱市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1142', '231102', '231100', '爱辉区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1143', '231121', '231100', '嫩江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1144', '231123', '231100', '逊克县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1145', '231124', '231100', '孙吴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1146', '231181', '231100', '北安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1147', '231182', '231100', '五大连池市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1149', '231202', '231200', '北林区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1150', '231221', '231200', '望奎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1151', '231222', '231200', '兰西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1152', '231223', '231200', '青冈县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1153', '231224', '231200', '庆安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1154', '231225', '231200', '明水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1155', '231226', '231200', '绥棱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1156', '231281', '231200', '安达市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1157', '231282', '231200', '肇东市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1158', '231283', '231200', '海伦市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1159', '232721', '232700', '呼玛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1160', '232722', '232700', '塔河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1161', '232723', '232700', '漠河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1162', '310101', '310000', '黄浦区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1163', '310103', '310000', '卢湾区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1164', '310104', '310000', '徐汇区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1165', '310105', '310000', '长宁区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1166', '310106', '310000', '静安区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1167', '310107', '310000', '普陀区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1168', '310108', '310000', '闸北区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1169', '310109', '310000', '虹口区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1170', '310110', '310000', '杨浦区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1171', '310112', '310000', '闵行区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1172', '310113', '310000', '宝山区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1173', '310114', '310000', '嘉定区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1174', '310115', '310000', '浦东新区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1175', '310116', '310000', '金山区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1176', '310117', '310000', '松江区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1177', '310118', '310000', '青浦区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1178', '310119', '310000', '南汇区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1179', '310120', '310000', '奉贤区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1180', '310230', '310000', '崇明县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1182', '320102', '320100', '玄武区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1183', '320103', '320100', '白下区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1184', '320104', '320100', '秦淮区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1185', '320105', '320100', '建邺区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1186', '320106', '320100', '鼓楼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1187', '320107', '320100', '下关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1188', '320111', '320100', '浦口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1189', '320113', '320100', '栖霞区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1190', '320114', '320100', '雨花台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1191', '320115', '320100', '江宁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1192', '320116', '320100', '六合区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1193', '320124', '320100', '溧水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1194', '320125', '320100', '高淳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1196', '320202', '320200', '崇安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1197', '320203', '320200', '南长区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1198', '320204', '320200', '北塘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1199', '320205', '320200', '锡山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1200', '320206', '320200', '惠山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1201', '320211', '320200', '滨湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1202', '320281', '320200', '江阴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1203', '320282', '320200', '宜兴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1205', '320302', '320300', '鼓楼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1206', '320303', '320300', '云龙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1207', '320304', '320300', '九里区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1208', '320305', '320300', '贾汪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1209', '320311', '320300', '泉山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1210', '320321', '320300', '丰　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1211', '320322', '320300', '沛　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1212', '320323', '320300', '铜山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1213', '320324', '320300', '睢宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1214', '320381', '320300', '新沂市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1215', '320382', '320300', '邳州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1217', '320402', '320400', '天宁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1218', '320404', '320400', '钟楼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1219', '320405', '320400', '戚墅堰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1220', '320411', '320400', '新北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1221', '320412', '320400', '武进区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1222', '320481', '320400', '溧阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1223', '320482', '320400', '金坛市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1225', '320502', '320500', '沧浪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1226', '320503', '320500', '平江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1227', '320504', '320500', '金阊区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1228', '320505', '320500', '虎丘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1229', '320506', '320500', '吴中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1230', '320507', '320500', '相城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1231', '320581', '320500', '常熟市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1232', '320582', '320500', '张家港市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1233', '320583', '320500', '昆山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1234', '320584', '320500', '吴江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1235', '320585', '320500', '太仓市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1237', '320602', '320600', '崇川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1238', '320611', '320600', '港闸区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1239', '320621', '320600', '海安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1240', '320623', '320600', '如东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1241', '320681', '320600', '启东市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1242', '320682', '320600', '如皋市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1243', '320683', '320600', '通州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1244', '320684', '320600', '海门市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1246', '320703', '320700', '连云区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1247', '320705', '320700', '新浦区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1248', '320706', '320700', '海州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1249', '320721', '320700', '赣榆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1250', '320722', '320700', '东海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1251', '320723', '320700', '灌云县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1252', '320724', '320700', '灌南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1254', '320802', '320800', '清河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1255', '320803', '320800', '楚州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1256', '320804', '320800', '淮阴区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1257', '320811', '320800', '清浦区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1258', '320826', '320800', '涟水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1259', '320829', '320800', '洪泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1260', '320830', '320800', '盱眙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1261', '320831', '320800', '金湖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1263', '320902', '320900', '亭湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1264', '320903', '320900', '盐都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1265', '320921', '320900', '响水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1266', '320922', '320900', '滨海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1267', '320923', '320900', '阜宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1268', '320924', '320900', '射阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1269', '320925', '320900', '建湖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1270', '320981', '320900', '东台市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1271', '320982', '320900', '大丰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1273', '321002', '321000', '广陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1274', '321003', '321000', '邗江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1275', '321011', '321000', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1276', '321023', '321000', '宝应县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1277', '321081', '321000', '仪征市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1278', '321084', '321000', '高邮市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1279', '321088', '321000', '江都市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1281', '321102', '321100', '京口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1282', '321111', '321100', '润州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1283', '321112', '321100', '丹徒区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1284', '321181', '321100', '丹阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1285', '321182', '321100', '扬中市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1286', '321183', '321100', '句容市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1288', '321202', '321200', '海陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1289', '321203', '321200', '高港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1290', '321281', '321200', '兴化市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1291', '321282', '321200', '靖江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1292', '321283', '321200', '泰兴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1293', '321284', '321200', '姜堰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1295', '321302', '321300', '宿城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1296', '321311', '321300', '宿豫区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1297', '321322', '321300', '沭阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1298', '321323', '321300', '泗阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1299', '321324', '321300', '泗洪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1301', '330102', '330100', '上城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1302', '330103', '330100', '下城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1303', '330104', '330100', '江干区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1304', '330105', '330100', '拱墅区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1305', '330106', '330100', '西湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1306', '330108', '330100', '滨江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1307', '330109', '330100', '萧山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1308', '330110', '330100', '余杭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1309', '330122', '330100', '桐庐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1310', '330127', '330100', '淳安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1311', '330182', '330100', '建德市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1312', '330183', '330100', '富阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1313', '330185', '330100', '临安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1315', '330203', '330200', '海曙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1316', '330204', '330200', '江东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1317', '330205', '330200', '江北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1318', '330206', '330200', '北仑区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1319', '330211', '330200', '镇海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1320', '330212', '330200', '鄞州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1321', '330225', '330200', '象山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1322', '330226', '330200', '宁海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1323', '330281', '330200', '余姚市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1324', '330282', '330200', '慈溪市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1325', '330283', '330200', '奉化市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1327', '330302', '330300', '鹿城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1328', '330303', '330300', '龙湾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1329', '330304', '330300', '瓯海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1330', '330322', '330300', '洞头县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1331', '330324', '330300', '永嘉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1332', '330326', '330300', '平阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1333', '330327', '330300', '苍南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1334', '330328', '330300', '文成县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1335', '330329', '330300', '泰顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1336', '330381', '330300', '瑞安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1337', '330382', '330300', '乐清市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1339', '330402', '330400', '秀城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1340', '330411', '330400', '秀洲区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1341', '330421', '330400', '嘉善县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1342', '330424', '330400', '海盐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1343', '330481', '330400', '海宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1344', '330482', '330400', '平湖市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1345', '330483', '330400', '桐乡市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1347', '330502', '330500', '吴兴区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1348', '330503', '330500', '南浔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1349', '330521', '330500', '德清县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1350', '330522', '330500', '长兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1351', '330523', '330500', '安吉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1353', '330602', '330600', '越城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1354', '330621', '330600', '绍兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1355', '330624', '330600', '新昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1356', '330681', '330600', '诸暨市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1357', '330682', '330600', '上虞市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1358', '330683', '330600', '嵊州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1360', '330702', '330700', '婺城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1361', '330703', '330700', '金东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1362', '330723', '330700', '武义县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1363', '330726', '330700', '浦江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1364', '330727', '330700', '磐安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1365', '330781', '330700', '兰溪市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1366', '330782', '330700', '义乌市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1367', '330783', '330700', '东阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1368', '330784', '330700', '永康市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1370', '330802', '330800', '柯城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1371', '330803', '330800', '衢江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1372', '330822', '330800', '常山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1373', '330824', '330800', '开化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1374', '330825', '330800', '龙游县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1375', '330881', '330800', '江山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1377', '330902', '330900', '定海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1378', '330903', '330900', '普陀区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1379', '330921', '330900', '岱山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1380', '330922', '330900', '嵊泗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1382', '331002', '331000', '椒江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1383', '331003', '331000', '黄岩区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1384', '331004', '331000', '路桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1385', '331021', '331000', '玉环县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1386', '331022', '331000', '三门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1387', '331023', '331000', '天台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1388', '331024', '331000', '仙居县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1389', '331081', '331000', '温岭市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1390', '331082', '331000', '临海市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1392', '331102', '331100', '莲都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1393', '331121', '331100', '青田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1394', '331122', '331100', '缙云县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1395', '331123', '331100', '遂昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1396', '331124', '331100', '松阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1397', '331125', '331100', '云和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1398', '331126', '331100', '庆元县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1399', '331127', '331100', '景宁畲族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1400', '331181', '331100', '龙泉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1402', '340102', '340100', '瑶海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1403', '340103', '340100', '庐阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1404', '340104', '340100', '蜀山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1405', '340111', '340100', '包河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1410', '340202', '340200', '镜湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1411', '340203', '340200', '马塘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1412', '340204', '340200', '新芜区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1413', '340207', '340200', '鸠江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1414', '340221', '340200', '芜湖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1415', '340222', '340200', '繁昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1416', '340223', '340200', '南陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1418', '340302', '340300', '龙子湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1419', '340303', '340300', '蚌山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1420', '340304', '340300', '禹会区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1421', '340311', '340300', '淮上区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1422', '340321', '340300', '怀远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1423', '340322', '340300', '五河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1424', '340323', '340300', '固镇县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1426', '340402', '340400', '大通区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1427', '340403', '340400', '田家庵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1428', '340404', '340400', '谢家集区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1429', '340405', '340400', '八公山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1430', '340406', '340400', '潘集区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1431', '340421', '340400', '凤台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1433', '340502', '340500', '金家庄区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1434', '340503', '340500', '花山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1435', '340504', '340500', '雨山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1436', '340521', '340500', '当涂县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1438', '340602', '340600', '杜集区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1439', '340603', '340600', '相山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1440', '340604', '340600', '烈山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1441', '340621', '340600', '濉溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1443', '340702', '340700', '铜官山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1444', '340703', '340700', '狮子山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1445', '340711', '340700', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1446', '340721', '340700', '铜陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1448', '340802', '340800', '迎江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1449', '340803', '340800', '大观区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1450', '340811', '340800', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1451', '340822', '340800', '怀宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1452', '340823', '340800', '枞阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1453', '340824', '340800', '潜山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1454', '340825', '340800', '太湖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1455', '340826', '340800', '宿松县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1456', '340827', '340800', '望江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1457', '340828', '340800', '岳西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1458', '340881', '340800', '桐城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1460', '341002', '341000', '屯溪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1461', '341003', '341000', '黄山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1462', '341004', '341000', '徽州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1463', '341021', '341000', '歙　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1464', '341022', '341000', '休宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1465', '341023', '341000', '黟　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1466', '341024', '341000', '祁门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1468', '341102', '341100', '琅琊区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1469', '341103', '341100', '南谯区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1470', '341122', '341100', '来安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1471', '341124', '341100', '全椒县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1472', '341125', '341100', '定远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1473', '341126', '341100', '凤阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1474', '341181', '341100', '天长市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1475', '341182', '341100', '明光市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1477', '341202', '341200', '颍州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1478', '341203', '341200', '颍东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1479', '341204', '341200', '颍泉区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1480', '341221', '341200', '临泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1481', '341222', '341200', '太和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1482', '341225', '341200', '阜南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1483', '341226', '341200', '颍上县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1484', '341282', '341200', '界首市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1486', '341302', '341300', '墉桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1487', '341321', '341300', '砀山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1488', '341322', '341300', '萧　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1489', '341323', '341300', '灵璧县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1490', '341324', '341300', '泗　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1492', '341402', '341400', '居巢区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1493', '341421', '341400', '庐江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1494', '341422', '341400', '无为县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1495', '341423', '341400', '含山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1496', '341424', '341400', '和　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1498', '341502', '341500', '金安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1499', '341503', '341500', '裕安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1500', '341521', '341500', '寿　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1501', '341522', '341500', '霍邱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1502', '341523', '341500', '舒城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1503', '341524', '341500', '金寨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1504', '341525', '341500', '霍山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1506', '341602', '341600', '谯城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1507', '341621', '341600', '涡阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1508', '341622', '341600', '蒙城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1509', '341623', '341600', '利辛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1511', '341702', '341700', '贵池区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1512', '341721', '341700', '东至县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1513', '341722', '341700', '石台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1514', '341723', '341700', '青阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1516', '341802', '341800', '宣州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1517', '341821', '341800', '郎溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1518', '341822', '341800', '广德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1519', '341823', '341800', '泾　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1520', '341824', '341800', '绩溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1521', '341825', '341800', '旌德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1522', '341881', '341800', '宁国市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1524', '350102', '350100', '鼓楼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1525', '350103', '350100', '台江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1526', '350104', '350100', '仓山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1527', '350105', '350100', '马尾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1528', '350111', '350100', '晋安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1529', '350121', '350100', '闽侯县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1530', '350122', '350100', '连江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1531', '350123', '350100', '罗源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1532', '350124', '350100', '闽清县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1533', '350125', '350100', '永泰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1534', '350128', '350100', '平潭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1535', '350181', '350100', '福清市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1536', '350182', '350100', '长乐市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1538', '350203', '350200', '思明区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1539', '350205', '350200', '海沧区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1540', '350206', '350200', '湖里区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1541', '350211', '350200', '集美区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1542', '350212', '350200', '同安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1543', '350213', '350200', '翔安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1545', '350302', '350300', '城厢区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1546', '350303', '350300', '涵江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1547', '350304', '350300', '荔城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1548', '350305', '350300', '秀屿区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1549', '350322', '350300', '仙游县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1551', '350402', '350400', '梅列区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1552', '350403', '350400', '三元区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1553', '350421', '350400', '明溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1554', '350423', '350400', '清流县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1555', '350424', '350400', '宁化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1556', '350425', '350400', '大田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1557', '350426', '350400', '尤溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1558', '350427', '350400', '沙　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1559', '350428', '350400', '将乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1560', '350429', '350400', '泰宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1561', '350430', '350400', '建宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1562', '350481', '350400', '永安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1564', '350502', '350500', '鲤城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1565', '350503', '350500', '丰泽区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1566', '350504', '350500', '洛江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1567', '350505', '350500', '泉港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1568', '350521', '350500', '惠安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1569', '350524', '350500', '安溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1570', '350525', '350500', '永春县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1571', '350526', '350500', '德化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1572', '350527', '350500', '金门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1573', '350581', '350500', '石狮市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1574', '350582', '350500', '晋江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1575', '350583', '350500', '南安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1577', '350602', '350600', '芗城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1578', '350603', '350600', '龙文区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1579', '350622', '350600', '云霄县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1580', '350623', '350600', '漳浦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1581', '350624', '350600', '诏安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1582', '350625', '350600', '长泰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1583', '350626', '350600', '东山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1584', '350627', '350600', '南靖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1585', '350628', '350600', '平和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1586', '350629', '350600', '华安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1587', '350681', '350600', '龙海市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1589', '350702', '350700', '延平区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1590', '350721', '350700', '顺昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1591', '350722', '350700', '浦城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1592', '350723', '350700', '光泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1593', '350724', '350700', '松溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1594', '350725', '350700', '政和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1595', '350781', '350700', '邵武市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1596', '350782', '350700', '武夷山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1597', '350783', '350700', '建瓯市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1598', '350784', '350700', '建阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1600', '350802', '350800', '新罗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1601', '350821', '350800', '长汀县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1602', '350822', '350800', '永定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1603', '350823', '350800', '上杭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1604', '350824', '350800', '武平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1605', '350825', '350800', '连城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1606', '350881', '350800', '漳平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1608', '350902', '350900', '蕉城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1609', '350921', '350900', '霞浦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1610', '350922', '350900', '古田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1611', '350923', '350900', '屏南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1612', '350924', '350900', '寿宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1613', '350925', '350900', '周宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1614', '350926', '350900', '柘荣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1615', '350981', '350900', '福安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1616', '350982', '350900', '福鼎市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1618', '360102', '360100', '东湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1619', '360103', '360100', '西湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1620', '360104', '360100', '青云谱区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1621', '360105', '360100', '湾里区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1622', '360111', '360100', '青山湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1623', '360121', '360100', '南昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1624', '360122', '360100', '新建县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1625', '360123', '360100', '安义县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1626', '360124', '360100', '进贤县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1628', '360202', '360200', '昌江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1629', '360203', '360200', '珠山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1630', '360222', '360200', '浮梁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1631', '360281', '360200', '乐平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1633', '360302', '360300', '安源区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1634', '360313', '360300', '湘东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1635', '360321', '360300', '莲花县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1636', '360322', '360300', '上栗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1637', '360323', '360300', '芦溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1639', '360402', '360400', '庐山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1640', '360403', '360400', '浔阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1641', '360421', '360400', '九江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1642', '360423', '360400', '武宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1643', '360424', '360400', '修水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1644', '360425', '360400', '永修县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1645', '360426', '360400', '德安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1646', '360427', '360400', '星子县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1647', '360428', '360400', '都昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1648', '360429', '360400', '湖口县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1649', '360430', '360400', '彭泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1650', '360481', '360400', '瑞昌市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1652', '360502', '360500', '渝水区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1653', '360521', '360500', '分宜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1655', '360602', '360600', '月湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1656', '360622', '360600', '余江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1657', '360681', '360600', '贵溪市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1659', '360702', '360700', '章贡区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1660', '360721', '360700', '赣　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1661', '360722', '360700', '信丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1662', '360723', '360700', '大余县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1663', '360724', '360700', '上犹县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1664', '360725', '360700', '崇义县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1665', '360726', '360700', '安远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1666', '360727', '360700', '龙南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1667', '360728', '360700', '定南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1668', '360729', '360700', '全南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1669', '360730', '360700', '宁都县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1670', '360731', '360700', '于都县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1671', '360732', '360700', '兴国县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1672', '360733', '360700', '会昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1673', '360734', '360700', '寻乌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1674', '360735', '360700', '石城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1675', '360781', '360700', '瑞金市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1676', '360782', '360700', '南康市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1678', '360802', '360800', '吉州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1679', '360803', '360800', '青原区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1680', '360821', '360800', '吉安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1681', '360822', '360800', '吉水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1682', '360823', '360800', '峡江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1683', '360824', '360800', '新干县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1684', '360825', '360800', '永丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1685', '360826', '360800', '泰和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1686', '360827', '360800', '遂川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1687', '360828', '360800', '万安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1688', '360829', '360800', '安福县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1689', '360830', '360800', '永新县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1690', '360881', '360800', '井冈山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1692', '360902', '360900', '袁州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1693', '360921', '360900', '奉新县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1694', '360922', '360900', '万载县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1695', '360923', '360900', '上高县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1696', '360924', '360900', '宜丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1697', '360925', '360900', '靖安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1698', '360926', '360900', '铜鼓县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1699', '360981', '360900', '丰城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1700', '360982', '360900', '樟树市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1701', '360983', '360900', '高安市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1703', '361002', '361000', '临川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1704', '361021', '361000', '南城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1705', '361022', '361000', '黎川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1706', '361023', '361000', '南丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1707', '361024', '361000', '崇仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1708', '361025', '361000', '乐安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1709', '361026', '361000', '宜黄县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1710', '361027', '361000', '金溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1711', '361028', '361000', '资溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1712', '361029', '361000', '东乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1713', '361030', '361000', '广昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1715', '361102', '361100', '信州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1716', '361121', '361100', '上饶县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1717', '361122', '361100', '广丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1718', '361123', '361100', '玉山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1719', '361124', '361100', '铅山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1720', '361125', '361100', '横峰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1721', '361126', '361100', '弋阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1722', '361127', '361100', '余干县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1723', '361128', '361100', '鄱阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1724', '361129', '361100', '万年县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1725', '361130', '361100', '婺源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1726', '361181', '361100', '德兴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1728', '370102', '370100', '历下区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1729', '370103', '370100', '市中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1730', '370104', '370100', '槐荫区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1731', '370105', '370100', '天桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1732', '370112', '370100', '历城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1733', '370113', '370100', '长清区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1734', '370124', '370100', '平阴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1735', '370125', '370100', '济阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1736', '370126', '370100', '商河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1737', '370181', '370100', '章丘市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1739', '370202', '370200', '市南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1740', '370203', '370200', '市北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1741', '370205', '370200', '四方区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1742', '370211', '370200', '黄岛区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1743', '370212', '370200', '崂山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1744', '370213', '370200', '李沧区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1745', '370214', '370200', '城阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1746', '370281', '370200', '胶州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1747', '370282', '370200', '即墨市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1748', '370283', '370200', '平度市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1749', '370284', '370200', '胶南市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1750', '370285', '370200', '莱西市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1752', '370302', '370300', '淄川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1753', '370303', '370300', '张店区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1754', '370304', '370300', '博山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1755', '370305', '370300', '临淄区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1756', '370306', '370300', '周村区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1757', '370321', '370300', '桓台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1758', '370322', '370300', '高青县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1759', '370323', '370300', '沂源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1761', '370402', '370400', '市中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1762', '370403', '370400', '薛城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1763', '370404', '370400', '峄城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1764', '370405', '370400', '台儿庄区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1765', '370406', '370400', '山亭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1766', '370481', '370400', '滕州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1768', '370502', '370500', '东营区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1769', '370503', '370500', '河口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1770', '370521', '370500', '垦利县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1771', '370522', '370500', '利津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1772', '370523', '370500', '广饶县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1774', '370602', '370600', '芝罘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1775', '370611', '370600', '福山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1776', '370612', '370600', '牟平区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1777', '370613', '370600', '莱山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1778', '370634', '370600', '长岛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1779', '370681', '370600', '龙口市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1780', '370682', '370600', '莱阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1781', '370683', '370600', '莱州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1782', '370684', '370600', '蓬莱市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1783', '370685', '370600', '招远市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1784', '370686', '370600', '栖霞市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1785', '370687', '370600', '海阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1787', '370702', '370700', '潍城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1788', '370703', '370700', '寒亭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1789', '370704', '370700', '坊子区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1790', '370705', '370700', '奎文区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1791', '370724', '370700', '临朐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1792', '370725', '370700', '昌乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1793', '370781', '370700', '青州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1794', '370782', '370700', '诸城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1795', '370783', '370700', '寿光市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1796', '370784', '370700', '安丘市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1797', '370785', '370700', '高密市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1798', '370786', '370700', '昌邑市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1800', '370802', '370800', '市中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1801', '370811', '370800', '任城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1802', '370826', '370800', '微山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1803', '370827', '370800', '鱼台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1804', '370828', '370800', '金乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1805', '370829', '370800', '嘉祥县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1806', '370830', '370800', '汶上县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1807', '370831', '370800', '泗水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1808', '370832', '370800', '梁山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1809', '370881', '370800', '曲阜市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1810', '370882', '370800', '兖州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1811', '370883', '370800', '邹城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1813', '370902', '370900', '泰山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1814', '370903', '370900', '岱岳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1815', '370921', '370900', '宁阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1816', '370923', '370900', '东平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1817', '370982', '370900', '新泰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1818', '370983', '370900', '肥城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1820', '371002', '371000', '环翠区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1821', '371081', '371000', '文登市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1822', '371082', '371000', '荣成市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1823', '371083', '371000', '乳山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1825', '371102', '371100', '东港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1826', '371103', '371100', '岚山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1827', '371121', '371100', '五莲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1828', '371122', '371100', '莒　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1830', '371202', '371200', '莱城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1831', '371203', '371200', '钢城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1833', '371302', '371300', '兰山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1834', '371311', '371300', '罗庄区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1835', '371312', '371300', '河东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1836', '371321', '371300', '沂南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1837', '371322', '371300', '郯城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1838', '371323', '371300', '沂水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1839', '371324', '371300', '苍山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1840', '371325', '371300', '费　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1841', '371326', '371300', '平邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1842', '371327', '371300', '莒南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1843', '371328', '371300', '蒙阴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1844', '371329', '371300', '临沭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1846', '371402', '371400', '德城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1847', '371421', '371400', '陵　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1848', '371422', '371400', '宁津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1849', '371423', '371400', '庆云县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1850', '371424', '371400', '临邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1851', '371425', '371400', '齐河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1852', '371426', '371400', '平原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1853', '371427', '371400', '夏津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1854', '371428', '371400', '武城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1855', '371481', '371400', '乐陵市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1856', '371482', '371400', '禹城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1858', '371502', '371500', '东昌府区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1859', '371521', '371500', '阳谷县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1860', '371522', '371500', '莘　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1861', '371523', '371500', '茌平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1862', '371524', '371500', '东阿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1863', '371525', '371500', '冠　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1864', '371526', '371500', '高唐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1865', '371581', '371500', '临清市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1867', '371602', '371600', '滨城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1868', '371621', '371600', '惠民县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1869', '371622', '371600', '阳信县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1870', '371623', '371600', '无棣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1871', '371624', '371600', '沾化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1872', '371625', '371600', '博兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1873', '371626', '371600', '邹平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1875', '371702', '371700', '牡丹区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1876', '371721', '371700', '曹　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1877', '371722', '371700', '单　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1878', '371723', '371700', '成武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1879', '371724', '371700', '巨野县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1880', '371725', '371700', '郓城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1881', '371726', '371700', '鄄城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1882', '371727', '371700', '定陶县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1883', '371728', '371700', '东明县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1885', '410102', '410100', '中原区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1886', '410103', '410100', '二七区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1887', '410104', '410100', '管城回族区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1888', '410105', '410100', '金水区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1889', '410106', '410100', '上街区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1890', '410108', '410100', '邙山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1891', '410122', '410100', '中牟县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1892', '410181', '410100', '巩义市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1893', '410182', '410100', '荥阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1894', '410183', '410100', '新密市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1895', '410184', '410100', '新郑市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1896', '410185', '410100', '登封市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1898', '410202', '410200', '龙亭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1899', '410203', '410200', '顺河回族区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1900', '410204', '410200', '鼓楼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1901', '410205', '410200', '南关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1902', '410211', '410200', '郊　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1903', '410221', '410200', '杞　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1904', '410222', '410200', '通许县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1905', '410223', '410200', '尉氏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1906', '410224', '410200', '开封县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1907', '410225', '410200', '兰考县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1909', '410302', '410300', '老城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1910', '410303', '410300', '西工区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1911', '410304', '410300', '廛河回族区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1912', '410305', '410300', '涧西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1913', '410306', '410300', '吉利区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1914', '410307', '410300', '洛龙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1915', '410322', '410300', '孟津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1916', '410323', '410300', '新安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1917', '410324', '410300', '栾川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1918', '410325', '410300', '嵩　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1919', '410326', '410300', '汝阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1920', '410327', '410300', '宜阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1921', '410328', '410300', '洛宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1922', '410329', '410300', '伊川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1923', '410381', '410300', '偃师市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1925', '410402', '410400', '新华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1926', '410403', '410400', '卫东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1927', '410404', '410400', '石龙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1928', '410411', '410400', '湛河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1929', '410421', '410400', '宝丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1930', '410422', '410400', '叶　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1931', '410423', '410400', '鲁山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1932', '410425', '410400', '郏　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1933', '410481', '410400', '舞钢市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1934', '410482', '410400', '汝州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1936', '410502', '410500', '文峰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1937', '410503', '410500', '北关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1938', '410505', '410500', '殷都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1939', '410506', '410500', '龙安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1940', '410522', '410500', '安阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1941', '410523', '410500', '汤阴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1942', '410526', '410500', '滑　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1943', '410527', '410500', '内黄县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1944', '410581', '410500', '林州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1946', '410602', '410600', '鹤山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1947', '410603', '410600', '山城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1948', '410611', '410600', '淇滨区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1949', '410621', '410600', '浚　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1950', '410622', '410600', '淇　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1952', '410702', '410700', '红旗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1953', '410703', '410700', '卫滨区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1954', '410704', '410700', '凤泉区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1955', '410711', '410700', '牧野区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1956', '410721', '410700', '新乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1957', '410724', '410700', '获嘉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1958', '410725', '410700', '原阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1959', '410726', '410700', '延津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1960', '410727', '410700', '封丘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1961', '410728', '410700', '长垣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1962', '410781', '410700', '卫辉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1963', '410782', '410700', '辉县市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1965', '410802', '410800', '解放区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1966', '410803', '410800', '中站区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1967', '410804', '410800', '马村区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1968', '410811', '410800', '山阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1969', '410821', '410800', '修武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1970', '410822', '410800', '博爱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1971', '410823', '410800', '武陟县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1972', '410825', '410800', '温　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1973', '410881', '410800', '济源市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1974', '410882', '410800', '沁阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1975', '410883', '410800', '孟州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1977', '410902', '410900', '华龙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1978', '410922', '410900', '清丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1979', '410923', '410900', '南乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1980', '410926', '410900', '范　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1981', '410927', '410900', '台前县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1982', '410928', '410900', '濮阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1984', '411002', '411000', '魏都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1985', '411023', '411000', '许昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1986', '411024', '411000', '鄢陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1987', '411025', '411000', '襄城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1988', '411081', '411000', '禹州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1989', '411082', '411000', '长葛市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1991', '411102', '411100', '源汇区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1992', '411103', '411100', '郾城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1993', '411104', '411100', '召陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1994', '411121', '411100', '舞阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1995', '411122', '411100', '临颍县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1997', '411202', '411200', '湖滨区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1998', '411221', '411200', '渑池县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('1999', '411222', '411200', '陕　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2000', '411224', '411200', '卢氏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2001', '411281', '411200', '义马市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2002', '411282', '411200', '灵宝市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2004', '411302', '411300', '宛城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2005', '411303', '411300', '卧龙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2006', '411321', '411300', '南召县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2007', '411322', '411300', '方城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2008', '411323', '411300', '西峡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2009', '411324', '411300', '镇平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2010', '411325', '411300', '内乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2011', '411326', '411300', '淅川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2012', '411327', '411300', '社旗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2013', '411328', '411300', '唐河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2014', '411329', '411300', '新野县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2015', '411330', '411300', '桐柏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2016', '411381', '411300', '邓州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2018', '411402', '411400', '梁园区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2019', '411403', '411400', '睢阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2020', '411421', '411400', '民权县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2021', '411422', '411400', '睢　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2022', '411423', '411400', '宁陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2023', '411424', '411400', '柘城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2024', '411425', '411400', '虞城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2025', '411426', '411400', '夏邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2026', '411481', '411400', '永城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2028', '411502', '411500', '师河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2029', '411503', '411500', '平桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2030', '411521', '411500', '罗山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2031', '411522', '411500', '光山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2032', '411523', '411500', '新　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2033', '411524', '411500', '商城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2034', '411525', '411500', '固始县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2035', '411526', '411500', '潢川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2036', '411527', '411500', '淮滨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2037', '411528', '411500', '息　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2039', '411602', '411600', '川汇区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2040', '411621', '411600', '扶沟县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2041', '411622', '411600', '西华县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2042', '411623', '411600', '商水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2043', '411624', '411600', '沈丘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2044', '411625', '411600', '郸城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2045', '411626', '411600', '淮阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2046', '411627', '411600', '太康县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2047', '411628', '411600', '鹿邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2048', '411681', '411600', '项城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2050', '411702', '411700', '驿城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2051', '411721', '411700', '西平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2052', '411722', '411700', '上蔡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2053', '411723', '411700', '平舆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2054', '411724', '411700', '正阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2055', '411725', '411700', '确山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2056', '411726', '411700', '泌阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2057', '411727', '411700', '汝南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2058', '411728', '411700', '遂平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2059', '411729', '411700', '新蔡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2061', '420102', '420100', '江岸区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2062', '420103', '420100', '江汉区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2063', '420104', '420100', '乔口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2064', '420105', '420100', '汉阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2065', '420106', '420100', '武昌区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2066', '420107', '420100', '青山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2067', '420111', '420100', '洪山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2068', '420112', '420100', '东西湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2069', '420113', '420100', '汉南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2070', '420114', '420100', '蔡甸区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2071', '420115', '420100', '江夏区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2072', '420116', '420100', '黄陂区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2073', '420117', '420100', '新洲区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2075', '420202', '420200', '黄石港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2076', '420203', '420200', '西塞山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2077', '420204', '420200', '下陆区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2078', '420205', '420200', '铁山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2079', '420222', '420200', '阳新县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2080', '420281', '420200', '大冶市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2082', '420302', '420300', '茅箭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2083', '420303', '420300', '张湾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2084', '420321', '420300', '郧　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2085', '420322', '420300', '郧西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2086', '420323', '420300', '竹山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2087', '420324', '420300', '竹溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2088', '420325', '420300', '房　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2089', '420381', '420300', '丹江口市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2091', '420502', '420500', '西陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2092', '420503', '420500', '伍家岗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2093', '420504', '420500', '点军区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2094', '420505', '420500', '猇亭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2095', '420506', '420500', '夷陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2096', '420525', '420500', '远安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2097', '420526', '420500', '兴山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2098', '420527', '420500', '秭归县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2099', '420528', '420500', '长阳土家族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2100', '420529', '420500', '五峰土家族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2101', '420581', '420500', '宜都市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2102', '420582', '420500', '当阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2103', '420583', '420500', '枝江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2105', '420602', '420600', '襄城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2106', '420606', '420600', '樊城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2107', '420607', '420600', '襄阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2108', '420624', '420600', '南漳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2109', '420625', '420600', '谷城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2110', '420626', '420600', '保康县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2111', '420682', '420600', '老河口市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2112', '420683', '420600', '枣阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2113', '420684', '420600', '宜城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2115', '420702', '420700', '梁子湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2116', '420703', '420700', '华容区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2117', '420704', '420700', '鄂城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2119', '420802', '420800', '东宝区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2120', '420804', '420800', '掇刀区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2121', '420821', '420800', '京山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2122', '420822', '420800', '沙洋县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2123', '420881', '420800', '钟祥市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2125', '420902', '420900', '孝南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2126', '420921', '420900', '孝昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2127', '420922', '420900', '大悟县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2128', '420923', '420900', '云梦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2129', '420981', '420900', '应城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2130', '420982', '420900', '安陆市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2131', '420984', '420900', '汉川市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2133', '421002', '421000', '沙市区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2134', '421003', '421000', '荆州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2135', '421022', '421000', '公安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2136', '421023', '421000', '监利县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2137', '421024', '421000', '江陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2138', '421081', '421000', '石首市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2139', '421083', '421000', '洪湖市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2140', '421087', '421000', '松滋市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2142', '421102', '421100', '黄州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2143', '421121', '421100', '团风县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2144', '421122', '421100', '红安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2145', '421123', '421100', '罗田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2146', '421124', '421100', '英山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2147', '421125', '421100', '浠水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2148', '421126', '421100', '蕲春县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2149', '421127', '421100', '黄梅县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2150', '421181', '421100', '麻城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2151', '421182', '421100', '武穴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2153', '421202', '421200', '咸安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2154', '421221', '421200', '嘉鱼县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2155', '421222', '421200', '通城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2156', '421223', '421200', '崇阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2157', '421224', '421200', '通山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2158', '421281', '421200', '赤壁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2160', '421302', '421300', '曾都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2161', '421381', '421300', '广水市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2162', '422801', '422800', '恩施市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2163', '422802', '422800', '利川市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2164', '422822', '422800', '建始县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2165', '422823', '422800', '巴东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2166', '422825', '422800', '宣恩县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2167', '422826', '422800', '咸丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2168', '422827', '422800', '来凤县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2169', '422828', '422800', '鹤峰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2170', '429004', '429000', '仙桃市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2171', '429005', '429000', '潜江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2172', '429006', '429000', '天门市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2173', '429021', '429000', '神农架林区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2175', '430102', '430100', '芙蓉区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2176', '430103', '430100', '天心区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2177', '430104', '430100', '岳麓区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2178', '430105', '430100', '开福区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2179', '430111', '430100', '雨花区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2180', '430121', '430100', '长沙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2181', '430122', '430100', '望城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2182', '430124', '430100', '宁乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2183', '430181', '430100', '浏阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2185', '430202', '430200', '荷塘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2186', '430203', '430200', '芦淞区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2187', '430204', '430200', '石峰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2188', '430211', '430200', '天元区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2189', '430221', '430200', '株洲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2190', '430223', '430200', '攸　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2191', '430224', '430200', '茶陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2192', '430225', '430200', '炎陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2193', '430281', '430200', '醴陵市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2195', '430302', '430300', '雨湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2196', '430304', '430300', '岳塘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2197', '430321', '430300', '湘潭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2198', '430381', '430300', '湘乡市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2199', '430382', '430300', '韶山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2201', '430405', '430400', '珠晖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2202', '430406', '430400', '雁峰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2203', '430407', '430400', '石鼓区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2204', '430408', '430400', '蒸湘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2205', '430412', '430400', '南岳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2206', '430421', '430400', '衡阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2207', '430422', '430400', '衡南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2208', '430423', '430400', '衡山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2209', '430424', '430400', '衡东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2210', '430426', '430400', '祁东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2211', '430481', '430400', '耒阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2212', '430482', '430400', '常宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2214', '430502', '430500', '双清区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2215', '430503', '430500', '大祥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2216', '430511', '430500', '北塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2217', '430521', '430500', '邵东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2218', '430522', '430500', '新邵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2219', '430523', '430500', '邵阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2220', '430524', '430500', '隆回县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2221', '430525', '430500', '洞口县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2222', '430527', '430500', '绥宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2223', '430528', '430500', '新宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2224', '430529', '430500', '城步苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2225', '430581', '430500', '武冈市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2227', '430602', '430600', '岳阳楼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2228', '430603', '430600', '云溪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2229', '430611', '430600', '君山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2230', '430621', '430600', '岳阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2231', '430623', '430600', '华容县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2232', '430624', '430600', '湘阴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2233', '430626', '430600', '平江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2234', '430681', '430600', '汨罗市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2235', '430682', '430600', '临湘市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2237', '430702', '430700', '武陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2238', '430703', '430700', '鼎城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2239', '430721', '430700', '安乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2240', '430722', '430700', '汉寿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2241', '430723', '430700', '澧　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2242', '430724', '430700', '临澧县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2243', '430725', '430700', '桃源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2244', '430726', '430700', '石门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2245', '430781', '430700', '津市市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2247', '430802', '430800', '永定区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2248', '430811', '430800', '武陵源区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2249', '430821', '430800', '慈利县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2250', '430822', '430800', '桑植县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2252', '430902', '430900', '资阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2253', '430903', '430900', '赫山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2254', '430921', '430900', '南　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2255', '430922', '430900', '桃江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2256', '430923', '430900', '安化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2257', '430981', '430900', '沅江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2259', '431002', '431000', '北湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2260', '431003', '431000', '苏仙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2261', '431021', '431000', '桂阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2262', '431022', '431000', '宜章县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2263', '431023', '431000', '永兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2264', '431024', '431000', '嘉禾县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2265', '431025', '431000', '临武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2266', '431026', '431000', '汝城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2267', '431027', '431000', '桂东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2268', '431028', '431000', '安仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2269', '431081', '431000', '资兴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2271', '431102', '431100', '芝山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2272', '431103', '431100', '冷水滩区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2273', '431121', '431100', '祁阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2274', '431122', '431100', '东安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2275', '431123', '431100', '双牌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2276', '431124', '431100', '道　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2277', '431125', '431100', '江永县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2278', '431126', '431100', '宁远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2279', '431127', '431100', '蓝山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2280', '431128', '431100', '新田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2281', '431129', '431100', '江华瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2283', '431202', '431200', '鹤城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2284', '431221', '431200', '中方县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2285', '431222', '431200', '沅陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2286', '431223', '431200', '辰溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2287', '431224', '431200', '溆浦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2288', '431225', '431200', '会同县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2289', '431226', '431200', '麻阳苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2290', '431227', '431200', '新晃侗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2291', '431228', '431200', '芷江侗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2292', '431229', '431200', '靖州苗族侗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2293', '431230', '431200', '通道侗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2294', '431281', '431200', '洪江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2296', '431302', '431300', '娄星区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2297', '431321', '431300', '双峰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2298', '431322', '431300', '新化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2299', '431381', '431300', '冷水江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2300', '431382', '431300', '涟源市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2301', '433101', '433100', '吉首市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2302', '433122', '433100', '泸溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2303', '433123', '433100', '凤凰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2304', '433124', '433100', '花垣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2305', '433125', '433100', '保靖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2306', '433126', '433100', '古丈县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2307', '433127', '433100', '永顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2308', '433130', '433100', '龙山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2310', '440102', '440102', '东山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2311', '440103', '440100', '荔湾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2312', '440104', '440100', '越秀区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2313', '440105', '440100', '海珠区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2314', '440106', '440100', '天河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2315', '440107', '440100', '芳村区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2316', '440111', '440100', '白云区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2317', '440112', '440100', '黄埔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2318', '440113', '440100', '番禺区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2319', '440114', '440100', '花都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2320', '440183', '440100', '增城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2321', '440184', '440100', '从化市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2323', '440203', '440200', '武江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2324', '440204', '440200', '浈江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2325', '440205', '440200', '曲江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2326', '440222', '440200', '始兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2327', '440224', '440200', '仁化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2328', '440229', '440200', '翁源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2329', '440232', '440200', '乳源瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2330', '440233', '440200', '新丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2331', '440281', '440200', '乐昌市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2332', '440282', '440200', '南雄市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2334', '440303', '440300', '罗湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2335', '440304', '440300', '福田区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2336', '440305', '440300', '南山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2337', '440306', '440300', '宝安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2338', '440307', '440300', '龙岗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2339', '440308', '440300', '盐田区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2341', '440402', '440400', '香洲区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2342', '440403', '440400', '斗门区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2343', '440404', '440400', '金湾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2345', '440507', '440500', '龙湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2346', '440511', '440500', '金平区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2347', '440512', '440500', '濠江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2348', '440513', '440500', '潮阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2349', '440514', '440500', '潮南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2350', '440515', '440500', '澄海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2351', '440523', '440500', '南澳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2353', '440604', '440600', '禅城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2354', '440605', '440600', '南海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2355', '440606', '440600', '顺德区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2356', '440607', '440600', '三水区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2357', '440608', '440600', '高明区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2359', '440703', '440700', '蓬江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2360', '440704', '440700', '江海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2361', '440705', '440700', '新会区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2362', '440781', '440700', '台山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2363', '440783', '440700', '开平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2364', '440784', '440700', '鹤山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2365', '440785', '440700', '恩平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2367', '440802', '440800', '赤坎区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2368', '440803', '440800', '霞山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2369', '440804', '440800', '坡头区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2370', '440811', '440800', '麻章区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2371', '440823', '440800', '遂溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2372', '440825', '440800', '徐闻县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2373', '440881', '440800', '廉江市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2374', '440882', '440800', '雷州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2375', '440883', '440800', '吴川市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2377', '440902', '440900', '茂南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2378', '440903', '440900', '茂港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2379', '440923', '440900', '电白县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2380', '440981', '440900', '高州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2381', '440982', '440900', '化州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2382', '440983', '440900', '信宜市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2384', '441202', '441200', '端州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2385', '441203', '441200', '鼎湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2386', '441223', '441200', '广宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2387', '441224', '441200', '怀集县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2388', '441225', '441200', '封开县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2389', '441226', '441200', '德庆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2390', '441283', '441200', '高要市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2391', '441284', '441200', '四会市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2393', '441302', '441300', '惠城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2394', '441303', '441300', '惠阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2395', '441322', '441300', '博罗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2396', '441323', '441300', '惠东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2397', '441324', '441300', '龙门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2399', '441402', '441400', '梅江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2400', '441421', '441400', '梅　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2401', '441422', '441400', '大埔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2402', '441423', '441400', '丰顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2403', '441424', '441400', '五华县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2404', '441426', '441400', '平远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2405', '441427', '441400', '蕉岭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2406', '441481', '441400', '兴宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2408', '441502', '441500', '城　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2409', '441521', '441500', '海丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2410', '441523', '441500', '陆河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2411', '441581', '441500', '陆丰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2413', '441602', '441600', '源城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2414', '441621', '441600', '紫金县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2415', '441622', '441600', '龙川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2416', '441623', '441600', '连平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2417', '441624', '441600', '和平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2418', '441625', '441600', '东源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2420', '441702', '441700', '江城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2421', '441721', '441700', '阳西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2422', '441723', '441700', '阳东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2423', '441781', '441700', '阳春市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2425', '441802', '441800', '清城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2426', '441821', '441800', '佛冈县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2427', '441823', '441800', '阳山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2428', '441825', '441800', '连山壮族瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2429', '441826', '441800', '连南瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2430', '441827', '441800', '清新县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2431', '441881', '441800', '英德市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2432', '441882', '441800', '连州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2434', '445102', '445100', '湘桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2435', '445121', '445100', '潮安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2436', '445122', '445100', '饶平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2438', '445202', '445200', '榕城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2439', '445221', '445200', '揭东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2440', '445222', '445200', '揭西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2441', '445224', '445200', '惠来县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2442', '445281', '445200', '普宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2444', '445302', '445300', '云城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2445', '445321', '445300', '新兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2446', '445322', '445300', '郁南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2447', '445323', '445300', '云安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2448', '445381', '445300', '罗定市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2450', '450102', '450100', '兴宁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2451', '450103', '450100', '青秀区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2452', '450105', '450100', '江南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2453', '450107', '450100', '西乡塘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2454', '450108', '450100', '良庆区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2455', '450109', '450100', '邕宁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2456', '450122', '450100', '武鸣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2457', '450123', '450100', '隆安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2458', '450124', '450100', '马山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2459', '450125', '450100', '上林县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2460', '450126', '450100', '宾阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2461', '450127', '450100', '横　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2463', '450202', '450200', '城中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2464', '450203', '450200', '鱼峰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2465', '450204', '450200', '柳南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2466', '450205', '450200', '柳北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2467', '450221', '450200', '柳江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2468', '450222', '450200', '柳城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2469', '450223', '450200', '鹿寨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2470', '450224', '450200', '融安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2471', '450225', '450200', '融水苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2472', '450226', '450200', '三江侗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2474', '450302', '450300', '秀峰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2475', '450303', '450300', '叠彩区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2476', '450304', '450300', '象山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2477', '450305', '450300', '七星区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2478', '450311', '450300', '雁山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2479', '450321', '450300', '阳朔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2480', '450322', '450300', '临桂县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2481', '450323', '450300', '灵川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2482', '450324', '450300', '全州县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2483', '450325', '450300', '兴安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2484', '450326', '450300', '永福县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2485', '450327', '450300', '灌阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2486', '450328', '450300', '龙胜各族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2487', '450329', '450300', '资源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2488', '450330', '450300', '平乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2489', '450331', '450300', '荔蒲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2490', '450332', '450300', '恭城瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2492', '450403', '450400', '万秀区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2493', '450404', '450400', '蝶山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2494', '450405', '450400', '长洲区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2495', '450421', '450400', '苍梧县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2496', '450422', '450400', '藤　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2497', '450423', '450400', '蒙山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2498', '450481', '450400', '岑溪市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2500', '450502', '450500', '海城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2501', '450503', '450500', '银海区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2502', '450512', '450500', '铁山港区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2503', '450521', '450500', '合浦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2505', '450602', '450600', '港口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2506', '450603', '450600', '防城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2507', '450621', '450600', '上思县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2508', '450681', '450600', '东兴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2510', '450702', '450700', '钦南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2511', '450703', '450700', '钦北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2512', '450721', '450700', '灵山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2513', '450722', '450700', '浦北县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2515', '450802', '450800', '港北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2516', '450803', '450800', '港南区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2517', '450804', '450800', '覃塘区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2518', '450821', '450800', '平南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2519', '450881', '450800', '桂平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2521', '450902', '450900', '玉州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2522', '450921', '450900', '容　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2523', '450922', '450900', '陆川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2524', '450923', '450900', '博白县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2525', '450924', '450900', '兴业县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2526', '450981', '450900', '北流市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2528', '451002', '451000', '右江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2529', '451021', '451000', '田阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2530', '451022', '451000', '田东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2531', '451023', '451000', '平果县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2532', '451024', '451000', '德保县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2533', '451025', '451000', '靖西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2534', '451026', '451000', '那坡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2535', '451027', '451000', '凌云县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2536', '451028', '451000', '乐业县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2537', '451029', '451000', '田林县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2538', '451030', '451000', '西林县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2539', '451031', '451000', '隆林各族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2541', '451102', '451100', '八步区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2542', '451121', '451100', '昭平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2543', '451122', '451100', '钟山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2544', '451123', '451100', '富川瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2546', '451202', '451200', '金城江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2547', '451221', '451200', '南丹县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2548', '451222', '451200', '天峨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2549', '451223', '451200', '凤山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2550', '451224', '451200', '东兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2551', '451225', '451200', '罗城仫佬族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2552', '451226', '451200', '环江毛南族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2553', '451227', '451200', '巴马瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2554', '451228', '451200', '都安瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2555', '451229', '451200', '大化瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2556', '451281', '451200', '宜州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2558', '451302', '451300', '兴宾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2559', '451321', '451300', '忻城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2560', '451322', '451300', '象州县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2561', '451323', '451300', '武宣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2562', '451324', '451300', '金秀瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2563', '451381', '451300', '合山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2565', '451402', '451400', '江洲区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2566', '451421', '451400', '扶绥县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2567', '451422', '451400', '宁明县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2568', '451423', '451400', '龙州县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2569', '451424', '451400', '大新县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2570', '451425', '451400', '天等县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2571', '451481', '451400', '凭祥市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2573', '460105', '460100', '秀英区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2574', '460106', '460100', '龙华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2575', '460107', '460100', '琼山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2576', '460108', '460100', '美兰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2578', '469001', '469000', '五指山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2579', '469002', '469000', '琼海市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2580', '469003', '469000', '儋州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2581', '469005', '469000', '文昌市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2582', '469006', '469000', '万宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2583', '469007', '469000', '东方市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2584', '469025', '469000', '定安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2585', '469026', '469000', '屯昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2586', '469027', '469000', '澄迈县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2587', '469028', '469000', '临高县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2588', '469030', '469000', '白沙黎族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2589', '469031', '469000', '昌江黎族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2590', '469033', '469000', '乐东黎族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2591', '469034', '469000', '陵水黎族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2592', '469035', '469000', '保亭黎族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2593', '469036', '469000', '琼中黎族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2594', '469037', '469000', '西沙群岛', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2595', '469038', '469000', '南沙群岛', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2596', '469039', '469000', '中沙群岛的岛礁及其海域', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2597', '500101', '500000', '万州区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2598', '500102', '500000', '涪陵区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2599', '500103', '500000', '渝中区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2600', '500104', '500000', '大渡口区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2601', '500105', '500000', '江北区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2602', '500106', '500000', '沙坪坝区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2603', '500107', '500000', '九龙坡区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2604', '500108', '500000', '南岸区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2605', '500109', '500000', '北碚区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2606', '500110', '500000', '万盛区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2607', '500111', '500000', '双桥区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2608', '500112', '500000', '渝北区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2609', '500113', '500000', '巴南区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2610', '500114', '500000', '黔江区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2611', '500115', '500000', '长寿区', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2612', '500222', '500000', '綦江县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2613', '500223', '500000', '潼南县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2614', '500224', '500000', '铜梁县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2615', '500225', '500000', '大足县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2616', '500226', '500000', '荣昌县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2617', '500227', '500000', '璧山县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2618', '500228', '500000', '梁平县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2619', '500229', '500000', '城口县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2620', '500230', '500000', '丰都县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2621', '500231', '500000', '垫江县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2622', '500232', '500000', '武隆县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2623', '500233', '500000', '忠　县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2624', '500234', '500000', '开　县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2625', '500235', '500000', '云阳县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2626', '500236', '500000', '奉节县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2627', '500237', '500000', '巫山县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2628', '500238', '500000', '巫溪县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2629', '500240', '500000', '石柱土家族自治县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2630', '500241', '500000', '秀山土家族苗族自治县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2631', '500242', '500000', '酉阳土家族苗族自治县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2632', '500243', '500000', '彭水苗族土家族自治县', '1', '2', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2633', '500381', '500300', '江津市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2634', '500382', '500300', '合川市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2635', '500383', '500300', '永川市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2636', '500384', '500300', '南川市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2638', '510104', '510100', '锦江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2639', '510105', '510100', '青羊区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2640', '510106', '510100', '金牛区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2641', '510107', '510100', '武侯区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2642', '510108', '510100', '成华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2643', '510112', '510100', '龙泉驿区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2644', '510113', '510100', '青白江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2645', '510114', '510100', '新都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2646', '510115', '510100', '温江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2647', '510121', '510100', '金堂县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2648', '510122', '510100', '双流县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2649', '510124', '510100', '郫　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2650', '510129', '510100', '大邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2651', '510131', '510100', '蒲江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2652', '510132', '510100', '新津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2653', '510181', '510100', '都江堰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2654', '510182', '510100', '彭州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2655', '510183', '510100', '邛崃市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2656', '510184', '510100', '崇州市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2658', '510302', '510300', '自流井区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2659', '510303', '510300', '贡井区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2660', '510304', '510300', '大安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2661', '510311', '510300', '沿滩区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2662', '510321', '510300', '荣　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2663', '510322', '510300', '富顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2665', '510402', '510400', '东　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2666', '510403', '510400', '西　区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2667', '510411', '510400', '仁和区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2668', '510421', '510400', '米易县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2669', '510422', '510400', '盐边县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2671', '510502', '510500', '江阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2672', '510503', '510500', '纳溪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2673', '510504', '510500', '龙马潭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2674', '510521', '510500', '泸　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2675', '510522', '510500', '合江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2676', '510524', '510500', '叙永县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2677', '510525', '510500', '古蔺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2679', '510603', '510600', '旌阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2680', '510623', '510600', '中江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2681', '510626', '510600', '罗江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2682', '510681', '510600', '广汉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2683', '510682', '510600', '什邡市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2684', '510683', '510600', '绵竹市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2686', '510703', '510700', '涪城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2687', '510704', '510700', '游仙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2688', '510722', '510700', '三台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2689', '510723', '510700', '盐亭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2690', '510724', '510700', '安　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2691', '510725', '510700', '梓潼县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2692', '510726', '510700', '北川羌族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2693', '510727', '510700', '平武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2694', '510781', '510700', '江油市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2696', '510802', '510800', '市中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2697', '510811', '510800', '元坝区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2698', '510812', '510800', '朝天区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2699', '510821', '510800', '旺苍县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2700', '510822', '510800', '青川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2701', '510823', '510800', '剑阁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2702', '510824', '510800', '苍溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2704', '510903', '510900', '船山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2705', '510904', '510900', '安居区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2706', '510921', '510900', '蓬溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2707', '510922', '510900', '射洪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2708', '510923', '510900', '大英县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2710', '511002', '511000', '市中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2711', '511011', '511000', '东兴区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2712', '511024', '511000', '威远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2713', '511025', '511000', '资中县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2714', '511028', '511000', '隆昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2716', '511102', '511100', '市中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2717', '511111', '511100', '沙湾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2718', '511112', '511100', '五通桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2719', '511113', '511100', '金口河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2720', '511123', '511100', '犍为县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2721', '511124', '511100', '井研县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2722', '511126', '511100', '夹江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2723', '511129', '511100', '沐川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2724', '511132', '511100', '峨边彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2725', '511133', '511100', '马边彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2726', '511181', '511100', '峨眉山市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2728', '511302', '511300', '顺庆区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2729', '511303', '511300', '高坪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2730', '511304', '511300', '嘉陵区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2731', '511321', '511300', '南部县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2732', '511322', '511300', '营山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2733', '511323', '511300', '蓬安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2734', '511324', '511300', '仪陇县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2735', '511325', '511300', '西充县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2736', '511381', '511300', '阆中市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2738', '511402', '511400', '东坡区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2739', '511421', '511400', '仁寿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2740', '511422', '511400', '彭山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2741', '511423', '511400', '洪雅县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2742', '511424', '511400', '丹棱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2743', '511425', '511400', '青神县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2745', '511502', '511500', '翠屏区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2746', '511521', '511500', '宜宾县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2747', '511522', '511500', '南溪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2748', '511523', '511500', '江安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2749', '511524', '511500', '长宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2750', '511525', '511500', '高　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2751', '511526', '511500', '珙　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2752', '511527', '511500', '筠连县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2753', '511528', '511500', '兴文县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2754', '511529', '511500', '屏山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2756', '511602', '511600', '广安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2757', '511621', '511600', '岳池县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2758', '511622', '511600', '武胜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2759', '511623', '511600', '邻水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2760', '511681', '511600', '华莹市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2762', '511702', '511700', '通川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2763', '511721', '511700', '达　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2764', '511722', '511700', '宣汉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2765', '511723', '511700', '开江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2766', '511724', '511700', '大竹县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2767', '511725', '511700', '渠　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2768', '511781', '511700', '万源市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2770', '511802', '511800', '雨城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2771', '511821', '511800', '名山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2772', '511822', '511800', '荥经县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2773', '511823', '511800', '汉源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2774', '511824', '511800', '石棉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2775', '511825', '511800', '天全县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2776', '511826', '511800', '芦山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2777', '511827', '511800', '宝兴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2779', '511902', '511900', '巴州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2780', '511921', '511900', '通江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2781', '511922', '511900', '南江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2782', '511923', '511900', '平昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2784', '512002', '512000', '雁江区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2785', '512021', '512000', '安岳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2786', '512022', '512000', '乐至县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2787', '512081', '512000', '简阳市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2788', '513221', '513200', '汶川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2789', '513222', '513200', '理　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2790', '513223', '513200', '茂　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2791', '513224', '513200', '松潘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2792', '513225', '513200', '九寨沟县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2793', '513226', '513200', '金川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2794', '513227', '513200', '小金县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2795', '513228', '513200', '黑水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2796', '513229', '513200', '马尔康县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2797', '513230', '513200', '壤塘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2798', '513231', '513200', '阿坝县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2799', '513232', '513200', '若尔盖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2800', '513233', '513200', '红原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2801', '513321', '513300', '康定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2802', '513322', '513300', '泸定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2803', '513323', '513300', '丹巴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2804', '513324', '513300', '九龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2805', '513325', '513300', '雅江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2806', '513326', '513300', '道孚县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2807', '513327', '513300', '炉霍县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2808', '513328', '513300', '甘孜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2809', '513329', '513300', '新龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2810', '513330', '513300', '德格县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2811', '513331', '513300', '白玉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2812', '513332', '513300', '石渠县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2813', '513333', '513300', '色达县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2814', '513334', '513300', '理塘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2815', '513335', '513300', '巴塘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2816', '513336', '513300', '乡城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2817', '513337', '513300', '稻城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2818', '513338', '513300', '得荣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2819', '513401', '513400', '西昌市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2820', '513422', '513400', '木里藏族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2821', '513423', '513400', '盐源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2822', '513424', '513400', '德昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2823', '513425', '513400', '会理县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2824', '513426', '513400', '会东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2825', '513427', '513400', '宁南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2826', '513428', '513400', '普格县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2827', '513429', '513400', '布拖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2828', '513430', '513400', '金阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2829', '513431', '513400', '昭觉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2830', '513432', '513400', '喜德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2831', '513433', '513400', '冕宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2832', '513434', '513400', '越西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2833', '513435', '513400', '甘洛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2834', '513436', '513400', '美姑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2835', '513437', '513400', '雷波县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2837', '520102', '520100', '南明区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2838', '520103', '520100', '云岩区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2839', '520111', '520100', '花溪区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2840', '520112', '520100', '乌当区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2841', '520113', '520100', '白云区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2842', '520114', '520100', '小河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2843', '520121', '520100', '开阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2844', '520122', '520100', '息烽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2845', '520123', '520100', '修文县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2846', '520181', '520100', '清镇市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2847', '520201', '520200', '钟山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2848', '520203', '520200', '六枝特区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2849', '520221', '520200', '水城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2850', '520222', '520200', '盘　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2852', '520302', '520300', '红花岗区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2853', '520303', '520300', '汇川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2854', '520321', '520300', '遵义县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2855', '520322', '520300', '桐梓县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2856', '520323', '520300', '绥阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2857', '520324', '520300', '正安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2858', '520325', '520300', '道真仡佬族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2859', '520326', '520300', '务川仡佬族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2860', '520327', '520300', '凤冈县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2861', '520328', '520300', '湄潭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2862', '520329', '520300', '余庆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2863', '520330', '520300', '习水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2864', '520381', '520300', '赤水市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2865', '520382', '520300', '仁怀市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2867', '520402', '520400', '西秀区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2868', '520421', '520400', '平坝县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2869', '520422', '520400', '普定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2870', '520423', '520400', '镇宁布依族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2871', '520424', '520400', '关岭布依族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2872', '520425', '520400', '紫云苗族布依族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2873', '522201', '522200', '铜仁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2874', '522222', '522200', '江口县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2875', '522223', '522200', '玉屏侗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2876', '522224', '522200', '石阡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2877', '522225', '522200', '思南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2878', '522226', '522200', '印江土家族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2879', '522227', '522200', '德江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2880', '522228', '522200', '沿河土家族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2881', '522229', '522200', '松桃苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2882', '522230', '522200', '万山特区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2883', '522301', '522300', '兴义市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2884', '522322', '522300', '兴仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2885', '522323', '522300', '普安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2886', '522324', '522300', '晴隆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2887', '522325', '522300', '贞丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2888', '522326', '522300', '望谟县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2889', '522327', '522300', '册亨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2890', '522328', '522300', '安龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2891', '522401', '522400', '毕节市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2892', '522422', '522400', '大方县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2893', '522423', '522400', '黔西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2894', '522424', '522400', '金沙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2895', '522425', '522400', '织金县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2896', '522426', '522400', '纳雍县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2897', '522427', '522400', '威宁彝族回族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2898', '522428', '522400', '赫章县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2899', '522601', '522600', '凯里市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2900', '522622', '522600', '黄平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2901', '522623', '522600', '施秉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2902', '522624', '522600', '三穗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2903', '522625', '522600', '镇远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2904', '522626', '522600', '岑巩县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2905', '522627', '522600', '天柱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2906', '522628', '522600', '锦屏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2907', '522629', '522600', '剑河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2908', '522630', '522600', '台江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2909', '522631', '522600', '黎平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2910', '522632', '522600', '榕江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2911', '522633', '522600', '从江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2912', '522634', '522600', '雷山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2913', '522635', '522600', '麻江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2914', '522636', '522600', '丹寨县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2915', '522701', '522700', '都匀市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2916', '522702', '522700', '福泉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2917', '522722', '522700', '荔波县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2918', '522723', '522700', '贵定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2919', '522725', '522700', '瓮安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2920', '522726', '522700', '独山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2921', '522727', '522700', '平塘县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2922', '522728', '522700', '罗甸县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2923', '522729', '522700', '长顺县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2924', '522730', '522700', '龙里县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2925', '522731', '522700', '惠水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2926', '522732', '522700', '三都水族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2928', '530102', '530100', '五华区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2929', '530103', '530100', '盘龙区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2930', '530111', '530100', '官渡区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2931', '530112', '530100', '西山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2932', '530113', '530100', '东川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2933', '530121', '530100', '呈贡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2934', '530122', '530100', '晋宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2935', '530124', '530100', '富民县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2936', '530125', '530100', '宜良县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2937', '530126', '530100', '石林彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2938', '530127', '530100', '嵩明县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2939', '530128', '530100', '禄劝彝族苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2940', '530129', '530100', '寻甸回族彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2941', '530181', '530100', '安宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2943', '530302', '530300', '麒麟区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2944', '530321', '530300', '马龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2945', '530322', '530300', '陆良县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2946', '530323', '530300', '师宗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2947', '530324', '530300', '罗平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2948', '530325', '530300', '富源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2949', '530326', '530300', '会泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2950', '530328', '530300', '沾益县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2951', '530381', '530300', '宣威市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2953', '530402', '530400', '红塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2954', '530421', '530400', '江川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2955', '530422', '530400', '澄江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2956', '530423', '530400', '通海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2957', '530424', '530400', '华宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2958', '530425', '530400', '易门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2959', '530426', '530400', '峨山彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2960', '530427', '530400', '新平彝族傣族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2961', '530428', '530400', '元江哈尼族彝族傣族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2963', '530502', '530500', '隆阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2964', '530521', '530500', '施甸县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2965', '530522', '530500', '腾冲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2966', '530523', '530500', '龙陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2967', '530524', '530500', '昌宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2969', '530602', '530600', '昭阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2970', '530621', '530600', '鲁甸县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2971', '530622', '530600', '巧家县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2972', '530623', '530600', '盐津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2973', '530624', '530600', '大关县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2974', '530625', '530600', '永善县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2975', '530626', '530600', '绥江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2976', '530627', '530600', '镇雄县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2977', '530628', '530600', '彝良县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2978', '530629', '530600', '威信县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2979', '530630', '530600', '水富县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2981', '530702', '530700', '古城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2982', '530721', '530700', '玉龙纳西族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2983', '530722', '530700', '永胜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2984', '530723', '530700', '华坪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2985', '530724', '530700', '宁蒗彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2987', '530802', '530800', '翠云区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2988', '530821', '530800', '普洱哈尼族彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2989', '530822', '530800', '墨江哈尼族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2990', '530823', '530800', '景东彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2991', '530824', '530800', '景谷傣族彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2992', '530825', '530800', '镇沅彝族哈尼族拉祜族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2993', '530826', '530800', '江城哈尼族彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2994', '530827', '530800', '孟连傣族拉祜族佤族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2995', '530828', '530800', '澜沧拉祜族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2996', '530829', '530800', '西盟佤族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2998', '530902', '530900', '临翔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('2999', '530921', '530900', '凤庆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3000', '530922', '530900', '云　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3001', '530923', '530900', '永德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3002', '530924', '530900', '镇康县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3003', '530925', '530900', '双江拉祜族佤族布朗族傣族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3004', '530926', '530900', '耿马傣族佤族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3005', '530927', '530900', '沧源佤族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3006', '532301', '532300', '楚雄市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3007', '532322', '532300', '双柏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3008', '532323', '532300', '牟定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3009', '532324', '532300', '南华县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3010', '532325', '532300', '姚安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3011', '532326', '532300', '大姚县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3012', '532327', '532300', '永仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3013', '532328', '532300', '元谋县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3014', '532329', '532300', '武定县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3015', '532331', '532300', '禄丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3016', '532501', '532500', '个旧市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3017', '532502', '532500', '开远市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3018', '532522', '532500', '蒙自县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3019', '532523', '532500', '屏边苗族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3020', '532524', '532500', '建水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3021', '532525', '532500', '石屏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3022', '532526', '532500', '弥勒县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3023', '532527', '532500', '泸西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3024', '532528', '532500', '元阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3025', '532529', '532500', '红河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3026', '532530', '532500', '金平苗族瑶族傣族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3027', '532531', '532500', '绿春县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3028', '532532', '532500', '河口瑶族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3029', '532621', '532600', '文山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3030', '532622', '532600', '砚山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3031', '532623', '532600', '西畴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3032', '532624', '532600', '麻栗坡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3033', '532625', '532600', '马关县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3034', '532626', '532600', '丘北县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3035', '532627', '532600', '广南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3036', '532628', '532600', '富宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3037', '532801', '532800', '景洪市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3038', '532822', '532800', '勐海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3039', '532823', '532800', '勐腊县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3040', '532901', '532900', '大理市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3041', '532922', '532900', '漾濞彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3042', '532923', '532900', '祥云县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3043', '532924', '532900', '宾川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3044', '532925', '532900', '弥渡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3045', '532926', '532900', '南涧彝族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3046', '532927', '532900', '巍山彝族回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3047', '532928', '532900', '永平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3048', '532929', '532900', '云龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3049', '532930', '532900', '洱源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3050', '532931', '532900', '剑川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3051', '532932', '532900', '鹤庆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3052', '533102', '533100', '瑞丽市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3053', '533103', '533100', '潞西市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3054', '533122', '533100', '梁河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3055', '533123', '533100', '盈江县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3056', '533124', '533100', '陇川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3057', '533321', '533300', '泸水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3058', '533323', '533300', '福贡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3059', '533324', '533300', '贡山独龙族怒族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3060', '533325', '533300', '兰坪白族普米族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3061', '533421', '533400', '香格里拉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3062', '533422', '533400', '德钦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3063', '533423', '533400', '维西傈僳族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3065', '540102', '540100', '城关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3066', '540121', '540100', '林周县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3067', '540122', '540100', '当雄县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3068', '540123', '540100', '尼木县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3069', '540124', '540100', '曲水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3070', '540125', '540100', '堆龙德庆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3071', '540126', '540100', '达孜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3072', '540127', '540100', '墨竹工卡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3073', '542121', '542100', '昌都县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3074', '542122', '542100', '江达县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3075', '542123', '542100', '贡觉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3076', '542124', '542100', '类乌齐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3077', '542125', '542100', '丁青县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3078', '542126', '542100', '察雅县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3079', '542127', '542100', '八宿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3080', '542128', '542100', '左贡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3081', '542129', '542100', '芒康县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3082', '542132', '542100', '洛隆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3083', '542133', '542100', '边坝县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3084', '542221', '542200', '乃东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3085', '542222', '542200', '扎囊县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3086', '542223', '542200', '贡嘎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3087', '542224', '542200', '桑日县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3088', '542225', '542200', '琼结县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3089', '542226', '542200', '曲松县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3090', '542227', '542200', '措美县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3091', '542228', '542200', '洛扎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3092', '542229', '542200', '加查县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3093', '542231', '542200', '隆子县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3094', '542232', '542200', '错那县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3095', '542233', '542200', '浪卡子县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3096', '542301', '542300', '日喀则市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3097', '542322', '542300', '南木林县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3098', '542323', '542300', '江孜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3099', '542324', '542300', '定日县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3100', '542325', '542300', '萨迦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3101', '542326', '542300', '拉孜县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3102', '542327', '542300', '昂仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3103', '542328', '542300', '谢通门县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3104', '542329', '542300', '白朗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3105', '542330', '542300', '仁布县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3106', '542331', '542300', '康马县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3107', '542332', '542300', '定结县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3108', '542333', '542300', '仲巴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3109', '542334', '542300', '亚东县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3110', '542335', '542300', '吉隆县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3111', '542336', '542300', '聂拉木县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3112', '542337', '542300', '萨嘎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3113', '542338', '542300', '岗巴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3114', '542421', '542400', '那曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3115', '542422', '542400', '嘉黎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3116', '542423', '542400', '比如县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3117', '542424', '542400', '聂荣县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3118', '542425', '542400', '安多县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3119', '542426', '542400', '申扎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3120', '542427', '542400', '索　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3121', '542428', '542400', '班戈县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3122', '542429', '542400', '巴青县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3123', '542430', '542400', '尼玛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3124', '542521', '542500', '普兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3125', '542522', '542500', '札达县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3126', '542523', '542500', '噶尔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3127', '542524', '542500', '日土县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3128', '542525', '542500', '革吉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3129', '542526', '542500', '改则县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3130', '542527', '542500', '措勤县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3131', '542621', '542600', '林芝县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3132', '542622', '542600', '工布江达县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3133', '542623', '542600', '米林县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3134', '542624', '542600', '墨脱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3135', '542625', '542600', '波密县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3136', '542626', '542600', '察隅县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3137', '542627', '542600', '朗　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3139', '610102', '610100', '新城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3140', '610103', '610100', '碑林区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3141', '610104', '610100', '莲湖区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3142', '610111', '610100', '灞桥区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3143', '610112', '610100', '未央区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3144', '610113', '610100', '雁塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3145', '610114', '610100', '阎良区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3146', '610115', '610100', '临潼区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3147', '610116', '610100', '长安区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3148', '610122', '610100', '蓝田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3149', '610124', '610100', '周至县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3150', '610125', '610100', '户　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3151', '610126', '610100', '高陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3153', '610202', '610200', '王益区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3154', '610203', '610200', '印台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3155', '610204', '610200', '耀州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3156', '610222', '610200', '宜君县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3158', '610302', '610300', '渭滨区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3159', '610303', '610300', '金台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3160', '610304', '610300', '陈仓区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3161', '610322', '610300', '凤翔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3162', '610323', '610300', '岐山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3163', '610324', '610300', '扶风县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3164', '610326', '610300', '眉　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3165', '610327', '610300', '陇　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3166', '610328', '610300', '千阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3167', '610329', '610300', '麟游县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3168', '610330', '610300', '凤　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3169', '610331', '610300', '太白县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3171', '610402', '610400', '秦都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3172', '610403', '610400', '杨凌区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3173', '610404', '610400', '渭城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3174', '610422', '610400', '三原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3175', '610423', '610400', '泾阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3176', '610424', '610400', '乾　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3177', '610425', '610400', '礼泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3178', '610426', '610400', '永寿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3179', '610427', '610400', '彬　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3180', '610428', '610400', '长武县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3181', '610429', '610400', '旬邑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3182', '610430', '610400', '淳化县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3183', '610431', '610400', '武功县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3184', '610481', '610400', '兴平市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3186', '610502', '610500', '临渭区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3187', '610521', '610500', '华　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3188', '610522', '610500', '潼关县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3189', '610523', '610500', '大荔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3190', '610524', '610500', '合阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3191', '610525', '610500', '澄城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3192', '610526', '610500', '蒲城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3193', '610527', '610500', '白水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3194', '610528', '610500', '富平县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3195', '610581', '610500', '韩城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3196', '610582', '610500', '华阴市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3198', '610602', '610600', '宝塔区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3199', '610621', '610600', '延长县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3200', '610622', '610600', '延川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3201', '610623', '610600', '子长县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3202', '610624', '610600', '安塞县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3203', '610625', '610600', '志丹县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3204', '610626', '610600', '吴旗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3205', '610627', '610600', '甘泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3206', '610628', '610600', '富　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3207', '610629', '610600', '洛川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3208', '610630', '610600', '宜川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3209', '610631', '610600', '黄龙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3210', '610632', '610600', '黄陵县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3212', '610702', '610700', '汉台区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3213', '610721', '610700', '南郑县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3214', '610722', '610700', '城固县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3215', '610723', '610700', '洋　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3216', '610724', '610700', '西乡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3217', '610725', '610700', '勉　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3218', '610726', '610700', '宁强县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3219', '610727', '610700', '略阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3220', '610728', '610700', '镇巴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3221', '610729', '610700', '留坝县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3222', '610730', '610700', '佛坪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3224', '610802', '610800', '榆阳区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3225', '610821', '610800', '神木县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3226', '610822', '610800', '府谷县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3227', '610823', '610800', '横山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3228', '610824', '610800', '靖边县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3229', '610825', '610800', '定边县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3230', '610826', '610800', '绥德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3231', '610827', '610800', '米脂县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3232', '610828', '610800', '佳　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3233', '610829', '610800', '吴堡县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3234', '610830', '610800', '清涧县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3235', '610831', '610800', '子洲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3237', '610902', '610900', '汉滨区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3238', '610921', '610900', '汉阴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3239', '610922', '610900', '石泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3240', '610923', '610900', '宁陕县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3241', '610924', '610900', '紫阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3242', '610925', '610900', '岚皋县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3243', '610926', '610900', '平利县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3244', '610927', '610900', '镇坪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3245', '610928', '610900', '旬阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3246', '610929', '610900', '白河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3248', '611002', '611000', '商州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3249', '611021', '611000', '洛南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3250', '611022', '611000', '丹凤县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3251', '611023', '611000', '商南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3252', '611024', '611000', '山阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3253', '611025', '611000', '镇安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3254', '611026', '611000', '柞水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3256', '620102', '620100', '城关区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3257', '620103', '620100', '七里河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3258', '620104', '620100', '西固区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3259', '620105', '620100', '安宁区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3260', '620111', '620100', '红古区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3261', '620121', '620100', '永登县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3262', '620122', '620100', '皋兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3263', '620123', '620100', '榆中县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3266', '620302', '620300', '金川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3267', '620321', '620300', '永昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3269', '620402', '620400', '白银区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3270', '620403', '620400', '平川区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3271', '620421', '620400', '靖远县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3272', '620422', '620400', '会宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3273', '620423', '620400', '景泰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3275', '620502', '620500', '秦城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3276', '620503', '620500', '北道区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3277', '620521', '620500', '清水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3278', '620522', '620500', '秦安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3279', '620523', '620500', '甘谷县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3280', '620524', '620500', '武山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3281', '620525', '620500', '张家川回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3283', '620602', '620600', '凉州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3284', '620621', '620600', '民勤县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3285', '620622', '620600', '古浪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3286', '620623', '620600', '天祝藏族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3288', '620702', '620700', '甘州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3289', '620721', '620700', '肃南裕固族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3290', '620722', '620700', '民乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3291', '620723', '620700', '临泽县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3292', '620724', '620700', '高台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3293', '620725', '620700', '山丹县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3295', '620802', '620800', '崆峒区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3296', '620821', '620800', '泾川县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3297', '620822', '620800', '灵台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3298', '620823', '620800', '崇信县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3299', '620824', '620800', '华亭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3300', '620825', '620800', '庄浪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3301', '620826', '620800', '静宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3303', '620902', '620900', '肃州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3304', '620921', '620900', '金塔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3305', '620922', '620900', '安西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3306', '620923', '620900', '肃北蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3307', '620924', '620900', '阿克塞哈萨克族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3308', '620981', '620900', '玉门市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3309', '620982', '620900', '敦煌市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3311', '621002', '621000', '西峰区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3312', '621021', '621000', '庆城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3313', '621022', '621000', '环　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3314', '621023', '621000', '华池县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3315', '621024', '621000', '合水县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3316', '621025', '621000', '正宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3317', '621026', '621000', '宁　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3318', '621027', '621000', '镇原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3320', '621102', '621100', '安定区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3321', '621121', '621100', '通渭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3322', '621122', '621100', '陇西县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3323', '621123', '621100', '渭源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3324', '621124', '621100', '临洮县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3325', '621125', '621100', '漳　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3326', '621126', '621100', '岷　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3328', '621202', '621200', '武都区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3329', '621221', '621200', '成　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3330', '621222', '621200', '文　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3331', '621223', '621200', '宕昌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3332', '621224', '621200', '康　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3333', '621225', '621200', '西和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3334', '621226', '621200', '礼　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3335', '621227', '621200', '徽　县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3336', '621228', '621200', '两当县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3337', '622901', '622900', '临夏市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3338', '622921', '622900', '临夏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3339', '622922', '622900', '康乐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3340', '622923', '622900', '永靖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3341', '622924', '622900', '广河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3342', '622925', '622900', '和政县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3343', '622926', '622900', '东乡族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3344', '622927', '622900', '积石山保安族东乡族撒拉族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3345', '623001', '623000', '合作市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3346', '623021', '623000', '临潭县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3347', '623022', '623000', '卓尼县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3348', '623023', '623000', '舟曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3349', '623024', '623000', '迭部县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3350', '623025', '623000', '玛曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3351', '623026', '623000', '碌曲县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3352', '623027', '623000', '夏河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3354', '630102', '630100', '城东区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3355', '630103', '630100', '城中区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3356', '630104', '630100', '城西区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3357', '630105', '630100', '城北区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3358', '630121', '630100', '大通回族土族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3359', '630122', '630100', '湟中县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3360', '630123', '630100', '湟源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3361', '632121', '632100', '平安县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3362', '632122', '632100', '民和回族土族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3363', '632123', '632100', '乐都县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3364', '632126', '632100', '互助土族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3365', '632127', '632100', '化隆回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3366', '632128', '632100', '循化撒拉族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3367', '632221', '632200', '门源回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3368', '632222', '632200', '祁连县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3369', '632223', '632200', '海晏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3370', '632224', '632200', '刚察县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3371', '632321', '632300', '同仁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3372', '632322', '632300', '尖扎县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3373', '632323', '632300', '泽库县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3374', '632324', '632300', '河南蒙古族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3375', '632521', '632500', '共和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3376', '632522', '632500', '同德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3377', '632523', '632500', '贵德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3378', '632524', '632500', '兴海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3379', '632525', '632500', '贵南县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3380', '632621', '632600', '玛沁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3381', '632622', '632600', '班玛县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3382', '632623', '632600', '甘德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3383', '632624', '632600', '达日县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3384', '632625', '632600', '久治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3385', '632626', '632600', '玛多县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3386', '632721', '632700', '玉树县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3387', '632722', '632700', '杂多县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3388', '632723', '632700', '称多县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3389', '632724', '632700', '治多县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3390', '632725', '632700', '囊谦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3391', '632726', '632700', '曲麻莱县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3392', '632801', '632800', '格尔木市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3393', '632802', '632800', '德令哈市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3394', '632821', '632800', '乌兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3395', '632822', '632800', '都兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3396', '632823', '632800', '天峻县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3398', '640104', '640100', '兴庆区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3399', '640105', '640100', '西夏区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3400', '640106', '640100', '金凤区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3401', '640121', '640100', '永宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3402', '640122', '640100', '贺兰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3403', '640181', '640100', '灵武市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3405', '640202', '640200', '大武口区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3406', '640205', '640200', '惠农区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3407', '640221', '640200', '平罗县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3409', '640302', '640300', '利通区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3410', '640323', '640300', '盐池县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3411', '640324', '640300', '同心县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3412', '640381', '640300', '青铜峡市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3414', '640402', '640400', '原州区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3415', '640422', '640400', '西吉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3416', '640423', '640400', '隆德县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3417', '640424', '640400', '泾源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3418', '640425', '640400', '彭阳县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3420', '640502', '640500', '沙坡头区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3421', '640521', '640500', '中宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3422', '640522', '640500', '海原县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3424', '650102', '650100', '天山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3425', '650103', '650100', '沙依巴克区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3426', '650104', '650100', '新市区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3427', '650105', '650100', '水磨沟区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3428', '650106', '650100', '头屯河区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3429', '650107', '650100', '达坂城区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3430', '650108', '650100', '东山区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3431', '650121', '650100', '乌鲁木齐县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3433', '650202', '650200', '独山子区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3434', '650203', '650200', '克拉玛依区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3435', '650204', '650200', '白碱滩区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3436', '650205', '650200', '乌尔禾区', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3437', '652101', '652100', '吐鲁番市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3438', '652122', '652100', '鄯善县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3439', '652123', '652100', '托克逊县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3440', '652201', '652200', '哈密市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3441', '652222', '652200', '巴里坤哈萨克自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3442', '652223', '652200', '伊吾县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3443', '652301', '652300', '昌吉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3444', '652302', '652300', '阜康市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3445', '652303', '652300', '米泉市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3446', '652323', '652300', '呼图壁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3447', '652324', '652300', '玛纳斯县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3448', '652325', '652300', '奇台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3449', '652327', '652300', '吉木萨尔县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3450', '652328', '652300', '木垒哈萨克自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3451', '652701', '652700', '博乐市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3452', '652722', '652700', '精河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3453', '652723', '652700', '温泉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3454', '652801', '652800', '库尔勒市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3455', '652822', '652800', '轮台县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3456', '652823', '652800', '尉犁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3457', '652824', '652800', '若羌县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3458', '652825', '652800', '且末县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3459', '652826', '652800', '焉耆回族自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3460', '652827', '652800', '和静县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3461', '652828', '652800', '和硕县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3462', '652829', '652800', '博湖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3463', '652901', '652900', '阿克苏市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3464', '652922', '652900', '温宿县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3465', '652923', '652900', '库车县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3466', '652924', '652900', '沙雅县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3467', '652925', '652900', '新和县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3468', '652926', '652900', '拜城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3469', '652927', '652900', '乌什县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3470', '652928', '652900', '阿瓦提县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3471', '652929', '652900', '柯坪县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3472', '653001', '653000', '阿图什市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3473', '653022', '653000', '阿克陶县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3474', '653023', '653000', '阿合奇县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3475', '653024', '653000', '乌恰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3476', '653101', '653100', '喀什市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3477', '653121', '653100', '疏附县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3478', '653122', '653100', '疏勒县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3479', '653123', '653100', '英吉沙县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3480', '653124', '653100', '泽普县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3481', '653125', '653100', '莎车县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3482', '653126', '653100', '叶城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3483', '653127', '653100', '麦盖提县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3484', '653128', '653100', '岳普湖县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3485', '653129', '653100', '伽师县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3486', '653130', '653100', '巴楚县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3487', '653131', '653100', '塔什库尔干塔吉克自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3488', '653201', '653200', '和田市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3489', '653221', '653200', '和田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3490', '653222', '653200', '墨玉县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3491', '653223', '653200', '皮山县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3492', '653224', '653200', '洛浦县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3493', '653225', '653200', '策勒县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3494', '653226', '653200', '于田县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3495', '653227', '653200', '民丰县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3496', '654002', '654000', '伊宁市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3497', '654003', '654000', '奎屯市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3498', '654021', '654000', '伊宁县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3499', '654022', '654000', '察布查尔锡伯自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3500', '654023', '654000', '霍城县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3501', '654024', '654000', '巩留县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3502', '654025', '654000', '新源县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3503', '654026', '654000', '昭苏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3504', '654027', '654000', '特克斯县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3505', '654028', '654000', '尼勒克县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3506', '654201', '654200', '塔城市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3507', '654202', '654200', '乌苏市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3508', '654221', '654200', '额敏县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3509', '654223', '654200', '沙湾县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3510', '654224', '654200', '托里县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3511', '654225', '654200', '裕民县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3512', '654226', '654200', '和布克赛尔蒙古自治县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3513', '654301', '654300', '阿勒泰市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3514', '654321', '654300', '布尔津县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3515', '654322', '654300', '富蕴县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3516', '654323', '654300', '福海县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3517', '654324', '654300', '哈巴河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3518', '654325', '654300', '青河县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3519', '654326', '654300', '吉木乃县', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3520', '659001', '659000', '石河子市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3521', '659002', '659000', '阿拉尔市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3522', '659003', '659000', '图木舒克市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3523', '659004', '659000', '五家渠市', '1', '3', '3', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('3524', '3524', '0', '钓鱼岛', '0', '1', '1', '0', '1');
INSERT INTO `lxzcms_area` VALUES ('800000', '800000', '460000', '三沙市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800002', '800002', '120000', '开发区', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800003', '800003', '120000', '高新区', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800004', '800004', '410100', '郑东新区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800005', '800005', '430000', '吉首市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800006', '800006', '410000', '灵宝', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800007', '800007', '350000', '福清市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800008', '800008', '610000', '韩城市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800009', '800009', '630000', '格尔木市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800010', '800010', '460000', '儋州市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800011', '800011', '460000', '文昌市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800012', '800012', '460000', '琼海市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800013', '800013', '620000', '老河口', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800014', '800014', '520000', '都匀市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800015', '800015', '520000', '凯里市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800016', '800016', '110000', '燕郊区', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800017', '800017', '442000', '石岐区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800018', '800018', '650100', '米东区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800019', '800019', '650000', '五家渠', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800020', '800020', '650000', '阿图什市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800021', '800021', '650000', '博乐', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800022', '800022', '650000', '阜康', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800023', '800023', '650000', '石河子', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800024', '800024', '650000', '库尔勒市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800025', '800025', '140000', '孝义市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800026', '800026', '140000', '永济市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800027', '800027', '610000', '孝义市', '0', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800028', '800028', '500000', '合川区', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800029', '800029', '500000', '永川', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800030', '800030', '500000', '大渡口', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800033', '800033', '500000', '江津', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800032', '800032', '500000', '南川', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800034', '800034', '360000', '瑞金市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800035', '800035', '360000', '贵溪市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800036', '800036', '360000', '高安市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800037', '800037', '360000', '丰城市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800038', '800038', '510100', '高新区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800039', '800039', '510000', '广汉市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800040', '800040', '510000', '江油市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800041', '800041', '510000', '射洪县', '1', '3', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800042', '800042', '530000', '个旧', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800043', '800043', '530000', '潞西市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800044', '800044', '430100', '星沙镇', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800045', '800045', '370000', '曲阜市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800046', '800046', '410000', '济源市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800047', '800047', '410000', '孟州市', '1', '2', '1', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800048', '800048', '441900', '南城区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800049', '800049', '441900', '东城区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800050', '800050', '441900', '万江区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800051', '800051', '441900', '源城区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800052', '800052', '441900', '长安镇', '1', '0', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800053', '800053', '441900', '厚街镇', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800054', '800054', '441900', '大朗镇', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800055', '800055', '441900', '石龙镇', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800056', '800056', '441900', '清溪镇', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800057', '800057', '441900', '黄江镇', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800058', '800058', '340100', '新站区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800059', '800059', '340100', '高新区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800060', '800060', '340100', '滨湖区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800061', '800061', '340100', '经开区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800062', '800062', '340100', '政务区', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800063', '340121', '340100', '长丰县', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800064', '340122', '340100', '肥东县', '1', '3', '2', '0', '0');
INSERT INTO `lxzcms_area` VALUES ('800065', '340123', '340100', '肥西县', '1', '3', '2', '0', '0');

-- ----------------------------
-- Table structure for lxzcms_base_14
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_base_14`;
CREATE TABLE `lxzcms_base_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cid` bigint(20) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `recom` int(10) DEFAULT NULL COMMENT '推荐',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `sku` text COMMENT '学费sku',
  `coordinate` varchar(255) DEFAULT NULL COMMENT '地图坐标',
  `intro` text COMMENT '简介',
  `prov` int(10) DEFAULT NULL COMMENT '省',
  `city` int(10) DEFAULT NULL COMMENT '市',
  `count` int(10) DEFAULT NULL COMMENT '县区',
  `address` varchar(255) DEFAULT NULL,
  `hits` bigint(20) DEFAULT NULL COMMENT '浏览量',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `edittime` int(11) DEFAULT NULL COMMENT '更新时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '发布者ip',
  `adminid` int(11) DEFAULT NULL COMMENT '添加的管理员',
  `tese` text COMMENT '培训特色',
  `feiyong` text COMMENT '费用明细',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_base_14
-- ----------------------------
INSERT INTO `lxzcms_base_14` VALUES ('1', null, '新站区万锦驾校练车基地', '0', '0', null, '/file/uploads/image/201612/20161208180844_72210.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2900\",\"status\":\"1\"}}', '117.378134,31.917852', '啊啊啊', '340000', '340100', '340102', null, null, '1481611498', '1481711831', null, '1', null, null);
INSERT INTO `lxzcms_base_14` VALUES ('2', null, '双凤开发区区万锦驾校练车基地', '0', '0', null, '/file/uploads/image/201612/20161207172422_80169.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2900\",\"status\":\"1\"}}', '117.263833,31.992268', '双凤开发区区万锦驾校练车基地', '340000', '340100', '340103', null, null, '1481721064', '1481721064', null, '1', null, null);
INSERT INTO `lxzcms_base_14` VALUES ('3', null, '新站区磨店乡职教城练车点', '0', '1', null, '/file/uploads/image/201612/20161226110859_71174.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2700\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"2900\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.377781,31.917129', '地址：新站区文忠路与岱河路交叉口<br />电话：0551-67682351', '340000', '340100', '800058', '新站区文忠路与岱河路交叉口', '5', '1482721601', '1491959336', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2170\n			</td>\n			<td>\n				2700\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2370\n			</td>\n			<td>\n				2900\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('4', null, '新站区家天下练车点', '0', '1', null, '/file/uploads/image/201612/20161226111753_72180.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3000\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.341298,31.91745', '地址：天水路与铜陵路交叉口<br/>电话：0551-67682351', '340000', '340100', '800058', '天水路与铜陵路交叉口', '3', '1482722275', '1489046515', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2470\n			</td>\n			<td>\n				3000\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('5', null, '双凤阿奎利亚练车点', '0', '1', null, '/file/uploads/image/201612/20161226112800_19490.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3000\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.267334,31.951466', '地址：蒙城北路与洪河路交叉口<br/>电话：0551-67682351', '340000', '340100', '340103', '蒙城北路与洪河路交叉口', '4', '1482722901', '1486452147', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2470\n			</td>\n			<td>\n				3000\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('6', null, '经开区紫石路练车点', '0', '1', null, '/file/uploads/image/201612/20161226125003_10808.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3000\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.227187,31.724084', '地址：青鸾路与紫石路交叉口西北角<br/>电话;0551-67682351', '340000', '340100', '800061', '青鸾路与紫石路交叉口西北角', '2', '1482727905', '1486452134', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2470\n			</td>\n			<td>\n				3000\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('7', null, '经开区蓬莱路练车点', '0', '1', null, '/file/uploads/image/201612/20161226133014_88893.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.229061,31.736653', '地址：卧云路与蓬莱路东南角永泰院<br/>电话：0551-67682351', '340000', '340100', '800061', '卧云路与蓬莱路东南角', '1', '1482730307', '1486452115', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('8', null, '包河区大连路练车点', '0', '1', null, '/file/uploads/image/201612/20161226134027_66967.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.322682,31.78881', '地址：包河大道与大连路交叉口<br/>电话：0551-67682351', '340000', '340100', '340111', '包河大道与大连路交叉口', '3', '1482730910', '1488001750', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('9', null, '包河区包河花园练车点', '0', '1', null, '/file/uploads/image/201612/20161226140801_84263.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.341014,31.800824', '地址：繁华大道包河花园小区<br/>电话：0551-67682351', '340000', '340100', '340111', '繁华大道包河花园小区', '2', '1482732839', '1486452091', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3270\n			</td>\n			<td>\n				3800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('10', null, '包河区包河苑练车点', '0', '1', null, '/file/uploads/image/201612/20161226141902_38266.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3300\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.327095,31.799319', '地址：包河苑门口长江医院西侧<br/>电话：0551-67682351', '340000', '340100', '340111', '包河苑门口长江医院西侧', '6', '1482733116', '1487400177', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2770\n			</td>\n			<td>\n				3300\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('11', null, '滨湖新区习友路练车点', '0', '1', null, '/file/uploads/image/201612/20161226142042_95596.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.276769,31.754546', '地址：锦绣大道与习友路交口前程小区<br/>电话：0551-67682351', '340000', '340100', '800060', '锦绣大道与习友路交口前程小区', '14', '1482733343', '1488936969', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3270\n			</td>\n			<td>\n				3800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('12', null, '包河区南二环江汽一村练车点', '0', '1', null, '/file/uploads/image/201612/20161226142438_55109.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3700\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.288754,31.818978', '地址：南二环与徽州大道交叉口江汽一村<br/>电话：0551-67682351', '340000', '340100', '340111', '南二环路与徽州大道交叉口', '5', '1482733572', '1487400017', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3170\n			</td>\n			<td>\n				3700\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('13', null, '包河区龙川路练车点', '0', '1', null, '/file/uploads/image/201612/20161226142906_87876.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.245428,31.80174', '地址：金寨路与龙川路交叉口<br/>电话：0551-67682351', '340000', '340100', '340111', '金寨路与龙川路交叉口', '3', '1482733805', '1486451877', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('14', null, '庐阳区金鸟花园小区练车点', '0', '1', null, '/file/uploads/image/201612/20161226143240_76984.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3300\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.293628,31.892771', '地址：阜阳路与临泉路交叉口金鸟花园小区<br/>电话：0551-67682351', '340000', '340100', '340103', '阜阳路与临泉路交叉口', '9', '1482734125', '1487400056', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2770\n			</td>\n			<td>\n				3300\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('15', null, '庐阳区蒙城北路练车点', '0', '1', null, '/file/uploads/image/201612/20161226144010_41838.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3000\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.268206,31.938317', '地址：蒙城北路与天水路交叉口<br/>电话：0551-67682351', '340000', '340100', '340103', '蒙城北路与天水路交叉口', '5', '1482734486', '1487563992', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2470\n			</td>\n			<td>\n				3000\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('16', null, '包河区北京路练车点', '0', '1', null, '/file/uploads/image/201612/20161226144324_47503.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3400\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.320866,31.831876', '地址：东二环路与北京路交叉口<br/>电话：0551-67682351', '340000', '340100', '340111', '东二环路与北京路交叉口', '3', '1482734697', '1491205957', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2870\n			</td>\n			<td>\n				3400\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('17', null, '包河区淝河路练车点', '0', '1', null, '/file/uploads/image/201612/20161226144610_68669.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3400\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.320095,31.844267', '地址：铜陵路与南淝河路交叉口<br/>电话：0551-67682351', '340000', '340100', '340111', '铜陵路与南淝河路交叉口', '7', '1482734890', '1486952577', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2870\n			</td>\n			<td>\n				3400\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3070\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('18', null, '包河区当涂支路练车点', '0', '1', null, '/file/uploads/image/201612/20161226144920_47623.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3300\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.317171,31.83415', '地址：望江东路与当涂支路交叉口<br/>电话;0551-67682351', '340000', '340100', '340111', '望江东路与当涂支路交叉口', '3', '1482735139', '1487040076', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2770\n			</td>\n			<td>\n				3300\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('19', null, '瑶海区交通饭店练车点', '0', '1', null, '/file/uploads/image/201612/20161226150247_62720.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3000\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3300\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.30888,31.873587', '地址：胜利路与滁州路交口交通饭店<br/>电话：0551-67682351', '340000', '340100', '340102', '胜利路与滁州路交口交通饭店', '2', '1482735769', '1486451518', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2470\n			</td>\n			<td>\n				3000\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2770\n			</td>\n			<td>\n				3300\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('20', null, '庐阳区涡阳路练车点', '0', '1', null, '/file/uploads/image/201612/20161226150402_90049.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3000\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.288852,31.912232', '地址：阜阳路与涡阳路交叉口<br/>电话;0551-67682351', '340000', '340100', '340103', '阜阳路与涡阳路交叉口', '5', '1482735941', '1487311831', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2470\n			</td>\n			<td>\n				3000\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('21', null, '新站区杨岗练车点', '0', '1', null, '/file/uploads/image/201612/20161226150654_49802.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2900\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.332442,31.950543', '地址：新蚌埠路与龙子湖路交叉口杨岗<br/>电话：0551-67682351', '340000', '340100', '800058', '新蚌埠路与龙子湖路交叉口杨岗', '1', '1482736114', '1487044146', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2370\n			</td>\n			<td>\n				2900\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('22', null, '庐阳区荷塘路练车点', '0', '1', null, '/file/uploads/image/201612/20161226150921_63105.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3300\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.280091,31.944596', '地址：阜阳路与荷塘路交叉口<br/>电话：0551-67682351', '340000', '340100', '340103', '阜阳路与荷塘路交叉口', '6', '1482736240', '1487233685', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2770\n			</td>\n			<td>\n				3300\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3070\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('23', null, '蜀山区怀宁北路练车点', '0', '1', null, '/file/uploads/image/201612/20161226151133_83039.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.228782,31.845405', '地址：黄山路与怀宁北路交叉口<br/>电话：0551-67682351', '340000', '340100', '340104', '黄山路与怀宁北路交叉口', '3', '1482736415', '1488245711', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3270\n			</td>\n			<td>\n				3800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('24', null, '蜀山区新华学院练车点', '0', '1', null, '/file/uploads/image/201612/20161226151441_45111.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.192127,31.825386', '地址：望江西路与玉兰大道交叉口新华学院<br/>电话;0551-67682351', '340000', '340100', '340104', '望江西路与玉兰大道交叉口新华学院', '3', '1482736919', '1486697267', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3070\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				3270\n			</td>\n			<td>\n				3800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('25', null, '瑶海区龙岗练车点', '0', '1', null, '/file/uploads/image/201612/20161229113008_74489.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2800\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.38099,31.888757', '地址：龙岗路与明皇路交叉口瑞泰和园C区<br/>电话：0551-67682351', '340000', '340100', '340102', '龙岗路与明皇路交叉口瑞泰和园C区', '13', '1482982125', '1492226808', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2270\n			</td>\n			<td>\n				2800\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('26', null, '瑶海区郎溪路练车点', '0', '1', null, '/file/uploads/image/201612/20161229181352_95674.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.364906,31.890702', '地址：包公大道与郎溪路交叉口<br/>电话：0551-67682351', '340000', '340100', '340102', '包公大道与郎溪路交叉口', '4', '1483006537', '1487311811', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('27', null, '新站区磨店乡关井路练车点', '0', '1', null, '/file/uploads/image/201612/20161230100850_80521.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2700\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"2900\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.379363,31.920622', '地址：关井路与文忠路交叉口<br/>电话：0551-67682351', '340000', '340100', '800058', '关井路与文忠路交叉口', '17', '1483063879', '1491838712', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2170\n			</td>\n			<td>\n				2700\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2370\n			</td>\n			<td>\n				2900\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('28', null, '肥东站北路练车点', '0', '1', null, '/file/uploads/image/201701/20170106110820_48938.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2900\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.49195,31.883031', '地址：肥东店埠镇龙泉路与站北路<br/>电话：0551-67682351', '340000', '340100', '340122', '肥东店埠镇龙泉路与站北路', '5', '1483672331', '1493107272', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2370\n			</td>\n			<td>\n				2900\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('29', null, '肥东八斗路练车点', '0', '1', null, '/file/uploads/image/201701/20170106111359_70801.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2900\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.497375,31.8808', '地址：肥东县包公像往东800米处<br/>电话：0551-67682351', '340000', '340100', '340122', '肥东县包公像往东800米处', '6', '1483672927', '1486519641', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2370\n			</td>\n			<td>\n				2900\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('30', null, '肥东县合蚌路练车点', '0', '1', null, '/file/uploads/image/201701/20170106112531_62783.jpg', '{\"2\":{\"skuid\":\"2\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"2900\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"1\":{\"skuid\":\"1\",\"name\":\"VIP\\u73ed\",\"price\":\"3200\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.489901,31.900237', '地址：合肥市肥东县合蚌路妇幼保健院南侧<br/>电话：0551-67682351', '340000', '340100', '340122', '合肥市肥东县合蚌路妇幼保健院南侧', '8', '1483673249', '1493107255', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2370\n			</td>\n			<td>\n				2900\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2670\n			</td>\n			<td>\n				3200\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('31', null, '庐阳区阜阳北路练车点', '0', '1', null, '/file/uploads/image/201701/20170113140637_33589.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.279147,31.952209', '地址：庐阳区阜阳北路与洪河路交叉口东200米<br/>电话：0551-67682351', '340000', '340100', '340103', '阜阳北路与洪河路交叉口', '6', '1484287599', '1487311821', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('32', null, '经开区合肥学院练车点', '0', '1', null, '/file/uploads/image/201701/20170113141503_49278.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.271897,31.754953', '地址：经开区滨湖前城小区清潭路<br/>电话：0551-67682351', '340000', '340100', '800061', '经开区滨湖前城小区清潭路', '10', '1484288284', '1488551289', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('33', null, '经开区建工学院练车点', '0', '1', null, '/file/uploads/image/201701/20170113142520_17603.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.238417,31.740183', '地址：莲花路与汤口路交叉口向西200米<br/>电话：0551-67682351', '340000', '340100', '800061', '莲花路与汤口路交叉口', '10', '1484288817', '1487227002', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('34', null, '经开区明珠广场练车点', '0', '1', null, '/file/uploads/image/201701/20170113142825_99531.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.242126,31.79853', '地址：明珠广场金寨路金潜广场对面<br/>电话：0551-67682351', '340000', '340100', '800061', '明珠广场金寨路金潜广场对面', '15', '1484289009', '1490605722', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('35', null, '蜀山区大溪地练车点', '0', '1', null, '/file/uploads/image/201701/20170113143130_37218.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.208182,31.829862', '地址：科学大道与合欢路交叉口<br/>电话：0551-67682351', '340000', '340100', '340104', '蜀山区科学大道与合欢路交叉口', '201', '1484289198', '1488551307', null, '2', '[\"1\",\"5\",\"8\"]', '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('36', null, '蜀山区大蜀山练车点', '0', '1', null, '/file/uploads/image/201701/20170113143441_81199.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.14776,31.851372', '地址：大蜀山客运西站附近<br/>电话：0551-67682351', '340000', '340100', '340104', '大蜀山客运西站附近', '94', '1484289344', '1490665101', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('37', null, '包河区宁夏路练车点', '0', '1', null, '/file/uploads/image/201702/20170214104646_93555.jpg', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3400\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.326335,31.792642', '地址：包河区宁夏路与西宁路交叉口<br/>电话：0551-67682351', '340000', '340100', '340111', '宁夏路与西宁路交叉口', '13', '1487040416', '1487900733', null, '2', null, '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ke-zeroborder\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2870\n			</td>\n			<td>\n				3400\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				<span style=\"white-space:normal;\">有（赠送）</span>\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('38', null, '蜀山区湖光路练车点', '0', '1', null, '/file/uploads/image/201702/20170214105534_79375.png', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3500\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.149491,31.870877', '地址：蜀山区湖光路与沁源路交叉口<br/>电话：0551-67682351', '340000', '340100', '340104', '湖光路与沁源路交叉口', '17', '1487040960', '1492144132', null, '2', null, '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ke-zeroborder\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2970\n			</td>\n			<td>\n				3500\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');
INSERT INTO `lxzcms_base_14` VALUES ('39', null, '瑶海区大兴镇新周谷堆练车点', '0', '1', null, '/file/uploads/image/201702/20170214110956_87242.png', '{\"1\":{\"skuid\":\"1\",\"name\":\"\\u666e\\u901a\\u73ed\",\"price\":\"3100\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|3-5\\u6708\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a\",\"status\":\"1\"},\"2\":{\"skuid\":\"2\",\"name\":\"VIP\\u73ed\",\"price\":\"3400\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1|\\u79d1\\u4e8c\\u65b0\\u4e9a\\u8003\\u573a|\\u79d1\\u4e09\\u5c97\\u96c6\\u8003\\u573a|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"},\"3\":{\"skuid\":\"3\",\"name\":\"\\u516d\\u5b89\\u73ed\",\"price\":\"3600\",\"tese\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001|\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39|\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66|\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d|50\\u5929\\u62ff\\u8bc1|\\u516d\\u5b89\\u5b66\\u8f66|\\u62ff\\u8bc1\\u966a\\u7ec3\\u4e00\\u6b21|\\u9001\\u4e0d\\u8fc7\\u5305\\u8d54\\u9669|\\u9001\\u5b66\\u8f66\\u610f\\u5916\\u9669\",\"status\":\"1\"}}', '117.395163,31.843519', '地址：大兴镇新周谷堆南兴港路800米<br/>电话：0551-67682351', '340000', '340100', '340102', '大兴镇新周谷堆南兴港路800米', '59', '1487041798', '1490600687', null, '2', null, '<table class=\"ke-zeroborder\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n	<tbody>\n		<tr>\n			<th scope=\"col\" height=\"54\">\n				班别\n			</th>\n			<th scope=\"col\">\n				考试费（元）\n			</th>\n			<th scope=\"col\">\n				培训费（元）\n			</th>\n			<th scope=\"col\">\n				合计（元）\n			</th>\n			<th scope=\"col\">\n				体检费+照相费\n			</th>\n			<th scope=\"col\">\n				不过包赔+学车意外\n			</th>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				普通班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2570\n			</td>\n			<td>\n				3100\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				无\n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				VIP班\n			</td>\n			<td>\n				530\n			</td>\n			<td>\n				2870\n			</td>\n			<td>\n				3400\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				<span style=\"white-space:normal;\">有（赠送）</span> \n			</td>\n		</tr>\n		<tr>\n			<td height=\"54\">\n				六安班\n			</td>\n			<td>\n				0\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				3600\n			</td>\n			<td>\n				46（不包含）\n			</td>\n			<td>\n				有（赠送）\n			</td>\n		</tr>\n	</tbody>\n</table>');

-- ----------------------------
-- Table structure for lxzcms_category
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_category`;
CREATE TABLE `lxzcms_category` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT '名称',
  `alias` varchar(255) DEFAULT NULL COMMENT '别名',
  `color` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL COMMENT '分类标识',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级',
  `pids` text COMMENT '父级列表',
  `child` tinyint(4) DEFAULT NULL COMMENT '是否有子栏目',
  `childs` text COMMENT '子栏目列表',
  `path` varchar(40) DEFAULT NULL,
  `mod` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL COMMENT '类别,用于支持一个模块可以选择多个分类',
  `group` tinyint(3) unsigned DEFAULT '0',
  `letter` varchar(2) DEFAULT NULL COMMENT '字母索引',
  `pinyin` varchar(255) DEFAULT NULL COMMENT '拼音',
  `level` int(11) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `show_template` varchar(255) DEFAULT NULL COMMENT '0',
  `addtime` int(11) DEFAULT NULL,
  `edittime` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_category
-- ----------------------------
INSERT INTO `lxzcms_category` VALUES ('1', '关于我们', '关于我们', '', '', '0', '0', '0', '', null, 'pages', 'cate', '0', null, null, '0', '100', null, null, '1441936699', '1487150719');
INSERT INTO `lxzcms_category` VALUES ('17', '新闻动态', '新闻动态', '', '', '0', '0', '0', '', null, 'news', 'cate', '0', null, null, '0', '100', null, null, '1480992465', '1481104451');
INSERT INTO `lxzcms_category` VALUES ('18', '媒体报道', '媒体报道', '', '', '0', '0', '0', '', null, 'news', 'cate', '0', null, null, '0', '100', null, null, '1481104451', '1481104451');
INSERT INTO `lxzcms_category` VALUES ('10', '系统单页', '系统单页', '', '', '0', '0', '0', '', null, 'pages', 'cate', '0', null, null, '0', '100', null, null, '1466758896', '1487150719');
INSERT INTO `lxzcms_category` VALUES ('20', '报名须知', '报名须知', '', '', '0', '0', '0', '', null, 'pages', 'cate', '0', null, null, '0', '100', null, null, '1487150719', '1487150719');

-- ----------------------------
-- Table structure for lxzcms_fields
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_fields`;
CREATE TABLE `lxzcms_fields` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) DEFAULT NULL,
  `mod` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `formtype` varchar(11) DEFAULT NULL,
  `default` text,
  `options` text,
  `prompt` varchar(255) DEFAULT NULL,
  `fdisplay` tinyint(4) DEFAULT NULL,
  `bdisplay` tinyint(4) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `adminid` bigint(20) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `edittime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_fields
-- ----------------------------
INSERT INTO `lxzcms_fields` VALUES ('38', '14', 'base', 'tese', '培训特色', 'text', 'checkbox', '', '[{\"key\":\"\\u8865\\u8003\\u514d\\u57f9\\u8bad\\u8d39 \",\"value\":\"1\"},{\"key\":\"\\u8003\\u8bd5\\u96c6\\u4f53\\u63a5\\u9001  \",\"value\":\"2\"},{\"key\":\"\\u62ff\\u8bc1\\u540e\\u966a\\u7ec32\\u6b21   \",\"value\":\"3\"},{\"key\":\"\\u8d60\\u9001\\u4eba\\u751f\\u610f\\u5916\\u9669  \",\"value\":\"4\"},{\"key\":\"\\u514d\\u8d39\\u63d0\\u524d\\u8bd5\\u5b66   \",\"value\":\"5\"},{\"key\":\"\\u4e13\\u5c5e\\u5b66\\u8f66\\u5ba2\\u670d   \",\"value\":\"6\"},{\"key\":\"\\u652f\\u6301\\u5206\\u671f\\u4ed8\\u6b3e \",\"value\":\"7\"},{\"key\":\"3-5\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1  \",\"value\":\"8\"},{\"key\":\"2\\u4e2a\\u6708\\u5de6\\u53f3\\u62ff\\u8bc1 \",\"value\":\"9\"},{\"key\":\"\\u516b\\u4e00\",\"value\":\"10\"},{\"key\":\"\\u5c97\\u96c6\\u8003\\u573a\\u8003\\u8bd5\\u8003\\u8bd5  \",\"value\":\"11\"},{\"key\":\"\\u6ee8\\u6e56\\u8003\\u573a\\u8003\\u8bd5 \",\"value\":\"12\"},{\"key\":\"\\u516d\\u5b89\\u8003\\u8bd5\",\"value\":\"13\"},{\"key\":\"\\u65b0\\u4e9a\\u8003\\u8bd5\",\"value\":\"14\"}]', '', '1', '1', 'base_14', '100', '1', '1484795756', '1486431628');
INSERT INTO `lxzcms_fields` VALUES ('39', '14', 'base', 'feiyong', '费用明细', 'text', 'texteditor', '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n				<tr>\n					<th scope=\"col\" height=\"54\">班别</th>\n					<th scope=\"col\">考试费（元）</th>\n					<th scope=\"col\">培训费（元）</th>\n					<th scope=\"col\">合计（元）</th>\n					<th scope=\"col\">体检费+照相费</th>\n					<th scope=\"col\">不过包赔+学车意外</th>\n				</tr>\n				<tr>\n					<td height=\"54\">普通班</td>\n					<td>530</td>\n					<td>2570</td>\n					<td>3100</td>\n					<td>46（不包含）</td>\n					<td>无</td>\n				</tr>\n				<tr>\n					<td height=\"54\">VIP班</td>\n					<td>530</td>\n					<td>2970</td>\n					<td>3500</td>\n					<td>46（不包含）</td>\n					<td>有（赠送）</td>\n\n				</tr>\n			</table>', '', '', '1', '1', 'base_14', '100', '1', '1484891111', '1486436466');

-- ----------------------------
-- Table structure for lxzcms_guestbook_21
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_guestbook_21`;
CREATE TABLE `lxzcms_guestbook_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mid` int(10) DEFAULT NULL,
  `mod` varchar(255) DEFAULT NULL,
  `recom` int(10) DEFAULT NULL COMMENT '推荐',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `edittime` int(11) DEFAULT NULL COMMENT '更新时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '发布者ip',
  `adminid` int(11) DEFAULT NULL COMMENT '添加的管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_guestbook_21
-- ----------------------------

-- ----------------------------
-- Table structure for lxzcms_module
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_module`;
CREATE TABLE `lxzcms_module` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `template` varchar(30) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `hide` tinyint(4) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `edittime` int(11) DEFAULT NULL,
  `adminid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_module
-- ----------------------------
INSERT INTO `lxzcms_module` VALUES ('1', '首页', 'index', 'index', null, '0', '1', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('2', '设置', 'setting', 'setting', null, '0', '1', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('3', '模块', 'module', 'module', null, '0', '1', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('4', '字段', 'fields', 'fields', null, '0', '1', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('5', '分类', 'category', 'category', null, '0', '1', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('6', '会员', 'user', 'member', null, '0', '1', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('7', '广告', 'ads', 'ads', null, '0', '0', '1403775003', '1403775003', '1');
INSERT INTO `lxzcms_module` VALUES ('8', '单页面', 'pages', 'pages', null, '100', '1', '1407807127', '1407807127', '1');
INSERT INTO `lxzcms_module` VALUES ('9', '验证码', 'static', 'static', null, '100', '0', '1417054172', '1417054172', '2');
INSERT INTO `lxzcms_module` VALUES ('11', '新闻动态', 'news', 'article', null, '100', '0', '1480990651', '1504086375', '1');
INSERT INTO `lxzcms_module` VALUES ('21', '用户留言', 'guestbook', 'guestbook', '0', '100', '0', '1504521276', '1504521276', '1');

-- ----------------------------
-- Table structure for lxzcms_news_11
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_news_11`;
CREATE TABLE `lxzcms_news_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cid` bigint(20) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT NULL,
  `seokeyword` varchar(255) DEFAULT NULL,
  `recom` int(10) DEFAULT NULL COMMENT '推荐',
  `islink` tinyint(4) DEFAULT NULL COMMENT '是否外链',
  `linkurl` varchar(255) DEFAULT NULL COMMENT '外链URL',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '来源',
  `copyfromurl` varchar(255) DEFAULT NULL COMMENT '来源链接',
  `intro` text COMMENT '简介',
  `content` text COMMENT '内容',
  `hits` bigint(20) DEFAULT NULL COMMENT '浏览量',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `edittime` int(11) DEFAULT NULL COMMENT '更新时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '发布者ip',
  `adminid` int(11) DEFAULT NULL COMMENT '添加的管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_news_11
-- ----------------------------
INSERT INTO `lxzcms_news_11` VALUES ('1', '17', '新闻动态标题', '', '', '0', '0', '', '0', null, '', null, '佚名', '77学车', 'http://www.77xueche.com/', '新闻动态标题', '新闻动态标题', '23', '1482299920', '1491373808', null, '1');
INSERT INTO `lxzcms_news_11` VALUES ('2', '17', '练车至少600公里，学车成本明年或许增加', '', '', '0', '0', '', '1', null, '/file/uploads/image/201612/20161228144620_15787.jpg', null, '佚名', '77学车', 'http://www.77xueche.com/', '考新规范和新大纲对学员提出了新的要求。\n2016年交通运输部修订发布了“驾培计时平台和计时终端技术规范”,新《机动车驾驶培训教学与考试大纲》则', '<span style=\"color:#000000;line-height:2;font-size:16px;\">考新规范和新大纲对学员提出了新的要求。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">2016年交通运输部修订发布了“驾培计时平台和计时终端技术规范”,新《机动车驾驶培训教学与考试大纲》则首提“学员培训里程不得少于300公里”。新大纲更加重视学车实践,以减少“学完车不敢摸车”情况出现。另外,在“驾考新规”发布一年来,济南已经有38所驾校试点“先培后付”的学车模式,2018年全市60余所驾校将全部推开。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">学时公里数都要有</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">驾校须升级新设备</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">2016年5月9日,交通运输部对《机动车驾驶员计时培训系统平台技术规范》和《机动车驾驶员计时培训系统计时终端技术规范》进行了修订,进一步规范了机动车驾驶员计时培训系统建设技术要求。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">其中,新的平台技术规范细化了驾驶培训机构和学员相关信息的管理,补充了服务监督与评价管理、平台安全性等功能要求；新的计时终端新增了计时培训管理、指纹模块以及实际驾驶训练等功能要求。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">业内人士分析,两项“技术规范”将严格规范驾校对学员计时培训全过程的管理,并为相关管理部门提供信息。两项“技术规范”是实现计时培训计时收费、先培训后付费驾驶服务模式的基础条件,是与公安考试部门实现培训与考试信息衔接的有效渠道。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">12月23日,济南一驾校负责人分析,“新规范”与“新大纲”不仅要求驾校进行教学调整,保证62学时的有效培训以及新大纲要求的至少300公里培训里程,还对相关设备有极高的要求。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">12月23日,齐鲁晚报记者从济南市驾校服务中心获悉,明年济南的驾校要更新设备以落实“计时终端”和“计时平台”两项技术规范。“济南的驾校已经实现计时培训了,新的规范要求对设备进行升级改造,要具备更高的标准和更多的要求。”驾校服务中心相关负责人说。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">上述驾校负责人分析,计时平台和终端需要新设备,计算培训里程同样需要新设备,而且还要对驾校教练进行专门的培训,这都无形中增加了学校的培训成本。“当然,两项技术规范落地后,一些驾校可能会提供新的培训模式,制定新的培训价格。”该负责人表示。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">学时减少里程增加</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">更加注重学车实践</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">2016年10月份,新的《机动车驾驶培训教学大纲》公布,一方面,新大纲对C1、C2车型学车的学时由原来的78学时,分别降为了62学时和60学时,虽然学时缩短了,但练车项目基本上没有多大变化。不过,从另一方面来看,新大纲首次对学车里程做出了新的要求:各省应当根据实际,对各准驾车型培训里程做出相关要求,但最低不得少于300公里。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">12月23日,济南市驾校服务中心相关负责人接受记者采访时表示,原来教学大纲仅仅在培训学时上有所要求,而新大纲对培训里程也做出了要求,原来仅有一个限制条件,如今增加到了两个限制条件。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">“至少300公里的提法尚属首次,新大纲的初衷是为了让学员更加注重学车实践,防止出现学车后还不敢摸车的情况出现。”上述负责人解释道。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">近日,省城一驾校负责人为记者算了一笔账,一个C1、C2证学员科目二、科目三每天能练车六七公里,两科目练完后,培训里程基本上是在150公里—200公里,这与新大纲300公里的要求还差一大截。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">“学时虽然减少了,但是学车里程增加了,而且驾校教练车都是用的汽油,原来200公里就能毕业,现在增加到300公里,驾校培训成本增加的可能性非常大。”上述驾校负责人预测。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">“先培后付”在试行</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">学员自主选择教练</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">所谓驾培行业的“先培后付”,通俗说法就是,学员在科目一过了之后,从科目二开始,从驾校网站的预约平台上可以选择教练员,练习一到两个小时,如果感觉没学到东西,或者认为教练员的教学水平和服务态度达不到自己的要求,就可以再选择其他教练。而且只要驾校能够落实学员的举报,学员就可以不需要交钱。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">在“先培后付”模式下,学员能够自主预约培训时段、自主选择教练员、自主选择缴费方式,而不再被动地接受驾校的安排,这同样给了学员以极大的自主权。目前济南有38所驾校正在试点“先培后付”模式。按照要求,所有试点“先培后付”的驾校都要做好价格公示。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">除了服务费用和理论知识培训,按照新大纲的要求,驾驶实践部分主要包括驾驶模拟培训、基础和场地驾驶培训以及道路驾驶训练三部分。以某所正在试点“先培后付”的驾校为例,上述三种培训都分为了普通时段、高峰时段以及节假日时段。其中,驾驶模拟培训在三个时段价格为40-80元/学时,基础和场地驾驶培训价格为100—160元/学时,道路驾驶训练价格为160—220元/学时。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">以新大纲要求的C1证为例,该证要求基础和场地驾驶培训16个学时,道路驾驶为24个学时,以最为便宜的“普通时段”为例计,“先培后付”需要费用为16 100+24 160＝5440元,目前济南传统培训模式全部培训费用仅需要不到4000元。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">先培后付”之所以这么昂贵,是因为“先培后付”是一台车一个教练,只对一个学员服务,学员享受贵宾级服务,所以价格肯定要比那些多人一车的传统培训模式要高。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">济南一驾校负责人介绍,“先培后付”仅仅是新推出的一种驾校培训模式,很适合那些比较年轻的学员,它并不能取代传统的培训模式,而且现在学员对新的支付模式也比较陌生,所以“先培后付”在济南尚处于起步阶段。</span><br />\n<span style=\"color:#000000;line-height:2;font-size:16px;\">“目前济南已有38所驾校正在试点 先培后付 模式,2018年全市60余所驾校将会全面铺开。”12月23日,济南市驾校服务中心负责人表示。</span><br />', '37', '1482740559', '1492098256', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('3', '17', '10月起部分城市考驾照可以先学后付款', '', '', '0', '0', '', '1', null, '/file/uploads/image/201612/20161228144136_68450.png', null, '佚名', '77学车', 'http://www.77xueche.com/', '机动车驾驶培训先学后付、计时收费模式服务合同（示范文本）》9月18日发布。该文本自今年10月1日起实施。今年年初，交通运输部将“50%的驾校试点将', '<span style=\"font-size:16px;color:#000000;line-height:2;\">机动车驾驶培训先学后付、计时收费模式服务合同（示范文本）》9月18日发布。该文本自今年10月1日起实施。今年年初，交通运输部将“50%的驾校试点将先培训后付费”列为今年将推进的民生实事之一。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 每次培训后按时段付费</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 合同示范文本第六条“费用与支付方式”中列明：</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">学驾人一次性支付“道路交通安全法律、法规和相关知识”、“安全文明驾驶常识”理论知识培训费与教材费、建立档案材料费等；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 每次完成驾驶操作技能培训后，按预约时段学时价格支付培训费用。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 在合同附件《机动车驾驶培训费用构成明细表》中，收费项目被分成5大类，分别是相关服务费用（包含教材费、人身意外伤害保险费等）、理论知识培训费、驾驶模拟培训费、基础和场地驾驶培训、道路驾驶训练等。其中，后三项收费又细分为普通时段、高峰时段和假节日时段三类，分别标明学时单价。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 教练索财物学员可拒付</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 示范合同明确，在培训过程中，学驾人若发现培训机构提供的教练车未经检测合格、教练员和管理人员减少培训项目和学时、伪造或篡改培训数据、向学驾人索取、收受财物或牟取其他利益等问题的，有权要求培训机构予以纠正，并可拒付相应时段的培训费用。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 另外，学驾人发现培训机构未在交通运输管理部门许可核定的训练场地或未在公安机关交通管理部门指定的路线、时间提供培训服务的，有权要求培训机构予以纠正，并可拒付相应时段的培训费用。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 广州：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> “如约学车”可“分期付款”</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 今年6月，广州市交委和市驾培协会开发的学车平台“如约学车”APP正式上线，通过该平台学员可挑选“明星”教练、自主选择学车时间，还可先学车后付款，教练员如多次被投诉还将被剔除出平台。目前广州参与该平台的驾校已有34家，占全市总数的1/3，该平台注册的教练车已超过1200台。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 与传统学车模式相比，该平台收费标准差不多，正常情况学下来花费7000元左右，但传统学车是一次性交钱，交钱之后学习质量“只能看天”，而如约学车则是分批交钱，每个阶段收费独立，且先培训后付款。</span><br />', '20', '1482907298', '1493953125', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('4', '17', '驾校不传之秘 踩离合是一脚还是两脚?', '', '', '0', '0', '', '1', null, '/file/uploads/image/201612/20161228145058_96476.gif', null, '佚名', '77学车', 'http://www.77xueche.com/', '区分，尤其是摘挡和挂档用一脚还是两脚呢？\n老司机做法\n1、不用时不碰离合器\n在正常行驶时离合器处于紧密接合状态，当我们踩下离合器时，才能完成', '<span style=\"font-size:16px;color:#000000;line-height:2;\">区分，尤其是摘挡和挂档用一脚还是两脚呢？</span><br />\n<br />\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\"> 老司机做法</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201612/20161228144814_44560.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">1、不用时不碰离合器</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 在正常行驶时离合器处于紧密接合状态，当我们踩下离合器时，才能完成换挡动作。因此在正常行驶不需换挡时，左脚处于闲置状态即可。要知道把左脚放离合踏板上很容易造成离合器打滑、离合器片烧蚀等现象。</span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201612/20161228144841_99879.jpg\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">离合器工作原理图↑</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201612/20161228144912_28739.jpg\" alt=\"\" /><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">离合器结构图↑</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 2、换挡到底踩一脚还是两脚？（重点）</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 两脚离合是指换档时按照“踩（离合器）、摘（空档）、踩（离合器）、挂（高速档）”的原则，快速踩两脚离合踏板。网上大多使用比较老的车型进行，这些老车型的齿轮之间都是通过操纵变速杆自由齿合和分离。因各齿轮之间转速的差异，必须通过油门调节主动齿和从动齿达到相近的转速才能顺利换档，因此才有了两脚离合器的操作规范！</span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201612/20161228144945_85465.gif\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">3、刹车时离合的正确使用方法</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"> 在行车中，除低速（一般在20km/h以上）制动停车需要踩下离合器踏板外，其他情况下制动都不需要踩下离合器踏板。因为汽车在中、高车速制动时，踩下离合器踏板对改善汽车的制动能力一点用都没有，另外还会给行车安全带来危险。而在低速行车中刹车，踩下离合器踏板的目的仅仅是为防止发动机熄火。</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>', '24', '1482907860', '1493191174', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('5', '17', '合肥驾校教练列出学员“数宗罪” 把挡挂断、爬坡不松手刹是常事', '', '', '0', '0', '', '1', null, '/file/uploads/image/201612/20161228145957_35274.png', null, '佚名', '77学车', 'http://www.77xueche.com/', '截至2016年8月底，据合肥市交警部门统计，合肥机动车保有量已超过152万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传', '<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">截至2016年8月底，据合肥市交警部门统计，合肥机动车保有量已超过152万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说中的“女司机”是如何拿到驾照的?是不是学历越高，车就学得越好?从事何种职业的学员最让教练“头疼”?不踩离合将档挂断、爬坡忘松手刹、倒库直接撞墙……这些囧事，你犯过吗?</span>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">挂挡不踩离合将档挂断、爬坡不松手刹、走曲线不知打方向撞墙、把安全带插到副驾驶上、错把刹车当油门……这些学车的囧事你有犯过吗?经走访合肥多所驾校，教练们表示，上榜率最高的是把档挂断，“只有教练想不到的，没有学员犯不到的。”如何在考试时“一马平川”？教练们给出了不少招数。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><span style=\"font-size:16px;color:#000000;line-height:2;\">三兄妹手感差记忆力也差 进曲线就晕向直接撞墙</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">根据统计，目前合肥驾校市场18岁至30岁的青年群体是学车的主力军，这其中又以在校大学生、上班族占多数。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">“虽然大家普遍年轻，但在学车上面，并不都能做到脚快手快、头脑灵活。”合肥蜀山区一驾校教学点教练表示。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">眼下，该教练就遇到了“难啃”的学员，兄妹三个，都只有20几岁，“不但手感差，记忆力也差。光遛圈倒直线就花了两个月，一进曲线就晕了，不知道方向往哪打，直接撞墙。”</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">经实地探访发现，在西二环一驾校训练场，不少转弯处的墙壁上都出现了轻重程度不一的擦痕，“这些都是学员不知适时打方向留下的‘杰作’，这还算是轻的，还有学员直接把保险杠撞坏。”教练们表示。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">更让教练们猝不及防的是，不少新学员挂挡不踩离合，这在所有问题中出现的概率最高，“说过N遍就是记不住，每次起步或倒车直接挂挡，掰不动还用力掰，直到把档掰断。”</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">学员自述爬坡总是冲不上去 原来未松手刹让教练无语</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">爬坡不松手刹，你有过吗?</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">今年11月份，苦练了半年科目二的小吴，连上车调座椅、系安全带、松手刹等起步前的必备动作都没有牢记于心。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">“在考试前的集训中，我起步忘记了松手刹，爬坡时，离合全松开都上不去，直接熄火，但还没意识到问题出在哪。”小吴自述道，“溜坡后，我急匆匆地喊来教练，当场让教练无语了。”</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">“谁教你爬坡不松手刹的?都教半年了，连上车起步前的几个动作都记不住。”一气之下，教练把小吴赶下车，“安抚”了下自己的座驾。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">教练支招考试时尽可能镇静下来 想着做不要抢着做</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">除平时训练中出现的这些问题让教练哭笑不得，在考试高度紧张的情况下，问题更是“只有教练想不到的，没有学员犯不到的。”</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">经走访合肥磨店新亚科目二考场了解到，不少学员因过度紧张，错失第一次考试机会，在首个倒库项目中直接压线出局，“更有甚者还未起步就犯错了，忘记系安全带，或者慌乱之下把安全带插到副驾驶上。”据新亚考场一位监考人员介绍。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">“只有教练想不到的，没有学员犯不到的。” 一位任教10多年的张教练总结道。那么，学员如何在考试中避免犯错，提高通过率呢?</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">张教练表示，在考试高度紧张的情况下，学员要避免手慌脚乱，先要深呼吸让自己镇定下来，想好上车准备的一系列动作，再起步，如果怕遗漏了，再静下来把教练平时教的重新捋一遍，“考场上没有人催你，也不限时，总而言之，考试要想着做，不要抢着做</span><br />\n	<div style=\"white-space:nowrap;\">\n		<br />\n	</div>\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>', '23', '1482908532', '1492407079', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('6', '17', '2017年元旦出行攻略，别说我不提醒你', '', '', '0', '0', '', '1', null, '/file/uploads/image/201701/20170103142717_11023.png', null, '佚名', '77学车', 'http://www.77xueche.com/', '三天的小长假，有些朋友选择留在家里陪家人喝茶看报、散步逛街，而有些朋友则选择短途自驾游。若是选择短途自驾游的朋友，出行前记得要做好出行', '<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">三天的小长假，有些朋友选择留在家里陪家人喝茶看报、散步逛街，而有些朋友则选择短途自驾游。若是选择短途自驾游的朋友，出行前记得要做好出行计划哦~不过从往年节假日出行数据来看，2017年元旦高速堵车是有很大可能的。那如果元旦遇上高速堵车该怎么办呢？</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201701/20170103142058_49284.png\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">这里，小编给大家几点建议：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>1、干粮准备充足</strong></span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201701/20170103142231_85088.png\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">上高速前，一定要将油箱加满，避免堵车的时候燃油耗尽，千万不要等到油灯报警。此外，一定要带足饮用水和食物，这样在高速堵车时，才能保证自己有足够的体力应对。上高速前记住两件事：加满油、备足干粮。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>2、遇堵，机智绕行</strong></span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201701/20170103142306_70396.png\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">在高速极度拥堵的情况下，小编建议车主可以利用导航系统查看最近的高速出口路况，就近下高速公路，选择省道或者绕开拥堵路段再上高速。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>3、调整心情</strong></span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201701/20170103142336_63435.jpg\" alt=\"\" width=\"650\" height=\"405\" title=\"\" align=\"\" style=\"line-height:1.5;\" />\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">在堵车的情况下，人会很容易烦躁。这时候，可以和家人朋友聊聊天，听听音乐，放松心情。本来出来游玩也是为了开开心心的嘛，千万不要因为一些客观的因素影响自己和家人欢乐的心情。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>4、不可随意占用应急车道</strong></span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201701/20170103142440_44765.png\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">根据我国道路交通法规规定，占用应急车道，会被罚款200元并扣6分。即使不是为了驾驶证上的分数，为了自身的生命安全，以及尊重别人的生命，也请别占用应急车道。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">元旦堵车是在所难免的，因此，小编在此提醒各位车主，提前规划路线，避开拥堵。同时，随时了解道路交通状况，避开塞车路段，必要时可以选择省道或国道。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">另外提醒各位车主，元旦、端午高速不免费哦，出行注意安全！</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2017年节假日高速免费时间</span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201701/20170103142510_21347.jpg\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">2017年，春节、清明节、劳动节、国庆节（与中秋节重叠）等节日，高速通行是免费的，元旦、端午节两个节日假期不免费！</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>高速免费通行注意事项</strong></span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、免费上高速也得先领卡；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、免费时间以驶离出口为准；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、蓝色号牌面包车须出示行驶证；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、ETC车道继续开通运行、认清标志提前变道。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2017高速免费车型</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><span style=\"font-size:16px;color:#000000;line-height:2;\">7座（含7座）一下高速载客车辆，以及普通收费公路行驶的摩托车。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">高速免费通行时间怎么算</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、高速公路通行时间是以小客车下高速时间为准</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、在免费时段即将结束前就近驶离高速。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">最后，七七学车祝大家元旦快乐！</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>', '18', '1483424840', '1492287245', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('7', '17', '2017学车流程，学车报名需要哪些材料？', '', '', '0', '0', '', '1', null, '/file/uploads/image/201701/20170103142957_56359.jpg', null, '佚名', '77学车', 'http://www.77xueche.com/', '2017学车和之前并没有什么大的变化。\n一、主要流程如下：\n1、报名--2、照相、体检--3、档案录入--4、预约科目一考试--5、科目二练车--6、科目二五项考试', '<span style=\"font-size:16px;color:#000000;line-height:2;\">2017学车和之前并没有什么大的变化。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>一、主要流程如下</strong><strong>：</strong></span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、报名--2、照相、体检--3、档案录入--4、预约科目一考试--5、科目二练车--6、科目二五项考试--7、科目三练车--8、科目三实际道路驾驶考试--9、科目三安全文明驾驶常识考试--10、领取驾照。</span><br />\n<br />\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">（备注：自学直考的新模式，根据各地情况以当地交管部门为准。）</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201701/20170103143136_58985.png\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>二、年龄、身体条件</strong></span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">（一）年龄条件：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、申请小型汽车、小型自动挡汽车、残疾人专用小型自动挡载客汽车、轻便摩托车准驾车型的，在18周岁以上、70周岁以下；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、申请低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车或者轮式自行机械车准驾车型的，在18周岁以上，60周岁以下；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、申请城市公交车、大型货车、无轨电车或者有轨电车准驾车型的，在20周岁以上，50周岁以下；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、申请中型客车准驾车型的，在21周岁以上，50周岁以下；</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">6、下肢：双下肢健全且运动功能正常，不等长度不得大于5厘米。但左下肢缺失或者丧失运动功能的，可以申请小型自动挡汽车准驾车型的机动车驾驶证；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">7、躯干、颈部：无运动功能障碍；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">8、右下肢、双下肢缺失或者丧失运动功能但能够自主坐立，且上肢符合本项第5目规定的，可以申请残疾人专用小型自动挡载客汽车准驾车型的机动车驾驶证。一只手掌缺失，另一只手拇指健全，其他手指有两指健全，上肢和手指运动功能正常，且下肢符合本项第6目规定的，可以申请残疾人专用小型自动挡载客汽车准驾车型的机动车驾驶证。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">（三）哪些情况不得报名</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、有器质性心脏病、癫痫病、美尼尔氏症、眩晕症、癔病、震颤麻痹、精神病、痴呆以及影响肢体活动的神经系统疾病等妨碍安全驾驶疾病的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、三年内有吸食、注射毒品行为或者解除强制隔离戒毒措施未满三年，或者长期服用依赖性精神药品成瘾尚未戒除的；</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">5、申请牵引车准驾车型的，在24周岁以上，50周岁以下；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">6、申请大型客车准驾车型的，在26周岁以上，50周岁以下；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">7、接受全日制驾驶职业教育的学生，申请大型客车、牵引车准驾车型的，在20周岁以上，50周岁以下。</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><span style=\"font-size:16px;color:#000000;line-height:2;\">（二）身体条件：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、身高：申请大型客车、牵引车、城市公交车、大型货车、无轨电车准驾车型的，身高为155厘米以上。申请中型客车准驾车型的，身高为150厘米以上；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、视力：申请大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，两眼裸视力或者矫正视力达到对数视力表5.0以上。申请其他准驾车型的，两眼裸视力或者矫正视力达到对数视力表4.9以上。单眼视力障碍，优眼裸视力或者矫正视力达到对数视力表5.0以上，且水平视野达到150度的，可以申请小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车、残疾人专用小型自动挡载客汽车准驾车型的机动车驾驶证；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、辨色力：无红绿色盲；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、听力：两耳分别距音叉50厘米能辨别声源方向。有听力障碍但佩戴助听设备能够达到以上条件的，可以申请小型汽车、小型自动挡汽车准驾车型的机动车驾驶证；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">5、上肢：双手拇指健全，每只手其他手指必须有三指健全，肢体和手指运动功能正常。但手指末节残缺或者左手有三指健全，且双手手掌完整的，可以申请小型汽车、小型自动挡汽车、低速载货汽车、三轮汽车准驾车型的机动车驾驶证；</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><span style=\"font-size:16px;color:#000000;line-height:2;\">3、造成交通事故后逃逸构成犯罪的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、饮酒后或者醉酒驾驶机动车发生重大交通事故构成犯罪的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">5、醉酒驾驶机动车或者饮酒后驾驶营运机动车依法被吊销机动车驾驶证未满五年的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">6、醉酒驾驶营运机动车依法被吊销机动车驾驶证未满十年的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">7、因其他情形依法被吊销机动车驾驶证未满二年的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">8、驾驶许可依法被撤销未满三年的；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">9、法律、行政法规规定的其他情形；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">10、未取得机动车驾驶证驾驶机动车，有“醉酒驾驶机动车或者饮酒后驾驶营运机动车依法被吊销机动车驾驶证未满五年的”、“醉酒驾驶营运机动车依法被吊销机动车驾驶证未满十年的”、“因其他情形依法被吊销机动车驾驶证未满二年的”这三项中的一项的话，那么在规定期限内不得申请机动车驾驶证。</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong></strong></span><span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>三、学车需要的材料</strong></span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、申请人的身份证明（身份证、外籍人士需要护照）；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、县级或者部队团级以上医疗机构出具的有关身体条件的证明。属于申请残疾人专用小型自动挡载客汽车的，应当提交经省级卫生主管部门指定的专门医疗机构出具的有关身体条件的证明。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、居住证（不同地市规定可能存在差异，部分地市只需居住证回执）；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、一寸白底彩照。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"><strong>四、学车考驾照注意事项</strong></span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、费用：问清学车费用组成；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、时间：了解教学进度，自己规划好学车时间；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、接送及班车：是否提供接送服务；</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、教练：教练的能力及时间安排；</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><span style=\"font-size:16px;color:#000000;line-height:2;\">5、退学与转学：问清是否可以退学或者转学，及需要承担的相应费用。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">6、在了解相关服务条款下，签订学车协议。</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>', '24', '1483425281', '1493825700', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('8', '17', '2017年考驾照费用新规定', '元旦起，公安部123号令开始实施，意味着新版《机动车驾驶证申领和使用规定》启用。', '驾考，新规，2017，政策，规定', '0', '0', '', '1', null, '/file/uploads/image/201701/20170106115411_57329.jpg', null, '佚名', '77学车', 'http://www.77xueche.com/', '元旦起，公安部123号令开始实施，意味着新版《机动车驾驶证申领和使用规定》启用。\n2017年考驾照费用新规定\n《意见》提出，在有条件的地方，试点非', '<p class=\"MsoNormal\">\n	元旦起，公安部<span lang=\"EN-US\">123</span>号令开始实施，意味着新版《机动车驾驶证申领和使用规定》启用。\n</p>\n<p class=\"MsoNormal\">\n	<b>2017</b><b>年考驾照费用新规定</b><b><o:p></o:p></b>\n</p>\n<p class=\"MsoNormal\">\n	《意见》提出，在有条件的地方，试点非经营性的小型汽车驾驶人自学直考。允许个人使用加装安全辅助装置的自备车辆，在具备安全驾驶经历等条件的随车人员指导下，按照指定的路线、时间学习驾驶，并直接申请考试。\n</p>\n<p class=\"MsoNormal\">\n	自学驾驶所用自备车辆，不得用于经营性的驾驶学习活动。自学人员上道路学习驾驶前应到公安机关免费领取学车专用标识和学习驾驶证明。自学人员在学习驾驶中有道路交通安全违法行为或者造成交通事故的，由随车指导人员依法承担责任。\n</p>\n<p class=\"MsoNormal\">\n	按照严格管理、保障安全的要求，制定实施用于自学驾驶的车辆条件、随车指导人员条件以及训练路线时间划定、交通违法处理、事故责任认定、保险理赔等管理制度。\n</p>\n<p class=\"MsoNormal\">\n	这也是为保证安全，意见明确的“三个限定”：限定训练车辆，车型仅限于小型汽车，车辆必须加装辅助制动等安全装置<span lang=\"EN-US\">;</span>限定随车指导人员，必须具备一定年限的安全守法驾驶经历<span lang=\"EN-US\">;</span>限定训练路线和时段，避开学校周边道路、高速公路等道路，避开交通高峰等时段。\n</p>\n<p class=\"MsoNormal\">\n	<b>2017</b><b>驾照考试改革主要内容</b><b><o:p></o:p></b>\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">1</span>、实行驾驶人分类教育培训。推行大型客货车专业化培训，优化小型汽车驾驶人培训方式，满足人们的个性化、差异化需求。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">2</span>、实行计时培训计时收费。学员可自主预约培训时段、选择教练员、选择缴费方式。改变一次性预收全部培训费用模式，推行培训计时收费、先培训后付费。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">3</span>、试点小型汽车驾驶人自学直考，用自己的车就能开练，学车不必非得去驾校。在有条件的地方，试点非经营性的小型汽车驾驶人自学直考。允许个人使用加装安全辅助装置的自备车辆，在具备安全驾驶经历等条件的随车人员指导下，按照指定的路线、时间学习驾驶，并直接申请考试。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">4</span>、考点下放至县。为方便群众就近考试，推进驾驶人考试业务向县级下放、延伸。对出现排队积压的考生，允许选择省内其他考场参加考试。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">5</span>、实行自主报考。提供互联网、电话、窗口等多种报考方式，考生可自主选择考试时间和考试场地、缴费方式。考试不用总排队，将建设更多社会考场，彻底解决学车场地不够用这一老大难问题。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">6</span>、改进驾驶人体检年龄制度。将每年进行一次身体检查的起始年龄由<span lang=\"EN-US\">60</span>周岁调整为<span lang=\"EN-US\">70</span>周岁。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">7</span>、实施驾驶证异地申领和审验。放开大中型客货车驾驶证异地申领限制，驾驶证丢了也不怕，告别来回折腾全国均可补换，丢了驾驶证要补办不用再回原籍，可以在全国范围内异地补换驾驶证、参加驾驶证审验、提交体检证明。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">8</span>、允许重新申领驾驶证直接考试。驾驶证被注销等有驾驶经历人员，在满足条件下可以不经学习直接申请考试。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">9</span>、逐步放宽残疾人驾车条件。适时放宽单眼视力障碍群体、上肢残疾人申请小型汽车驾驶证条件。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">10</span>、可一次性预约、连续考试。我国将逐步推行场地驾驶和道路驾驶技能考试一次性预约、连续考试政策，减少考生往返次数，考生不再跑断腿。而且，驾驶员不用担心不熟悉考试场地，考前可免费看。\n</p>\n<p class=\"MsoNormal\">\n	<span lang=\"EN-US\">11</span>、提高驾驶证国际认可度。推进与其他国际和地区驾驶证互认换领，逐步扩大驾驶证互认换领范围，满足公民出境驾车需求。\n</p>', '44', '1483674994', '1492394412', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('9', '17', ' 2017年驾考的新规盘点', '', '新规，直考，自学，2017', '0', '0', '', '1', null, '/file/uploads/image/201701/20170106120611_34529.jpg', null, '佚名', '77学车', 'http://www.77xueche.com/', '1、实行驾驶人分类教育培训。推行大型客货车专业化培训，优化小型汽车驾驶人培训方式，满足人们的个性化、差异化需求。\n2、实行计时培训计时收费', '<p class=\"MsoNormal\">\n	1、实行驾驶人分类教育培训。推行大型客货车专业化培训，优化小型汽车驾驶人培训方式，满足人们的个性化、差异化需求。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	2、实行计时培训计时收费。学员可自主预约培训时段、选择教练员、选择缴费方式。改变一次性预收全部培训费用模式，推行培训计时收费、先培训后付费。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	3、试点小型汽车驾驶人学习直考，用自己的车就能开练，学车不必非得去驾校。在有条件的地方，试点非经营性的小型汽车驾驶人自学直考。允许个人使用加装安全辅助装置的自备车辆，在具备安全驾驶经历等条件的随车人员指导下，按照指定的路线、时间学习驾驶，并直接申请考试。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	4、考点下放至县。为方便群众就近考试，推进驾驶人考试业务向县级下放、延伸。对出现排队积压的考生，允许选择省内其他考场参加考试。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	5、实行自主报考。提供互联网、电话、窗口等多种报考方式，考生可自主选择考试时间和考试场地、缴费方式。考试不用总排队，将建设更多社会考场，彻底解决学车场地不够用这一老大难问题。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	6、改进驾驶人体检年龄制度。将每年进行一次身体检查的起始年龄由60周岁调整为70周岁。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	7、实施驾驶证异地申领和审验。放开大中型客货车驾驶证异地申领限制，驾驶证丢了也不怕，告别来回折腾全国均可补换，丢了驾驶证要补办不用再回原籍，可以在全国范围内异地补换驾驶证、参加驾驶证审验、提交体检证明。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	8、允许重新申领驾驶证直接考试。驾驶证被注销等有驾驶经历人员，在满足条件下可以不经学习直接申请考试。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	9、逐步放宽残疾人驾车条件。适时放宽单眼视力障碍群体、上肢残疾人申请小型汽车驾驶证条件。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	10、可一次性预约、连续考试。我国将逐步推行场地驾驶和道路驾驶技能考试一次性预约、连续考试政策，减少考生往返次数，考生不再跑断腿。而且，驾驶员不用担心不熟悉考试场地，考前可免费看。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	11、提高驾驶证国际认可度。推进与其他国际和地区驾驶证互认换领，逐步扩大驾驶证互认换领范围，满足公民出境驾车需求。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	&nbsp;\n</p>', '39', '1483675631', '1492394415', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('10', '17', '驾校教练“吃拿卡要”？一定要学这几招', '合肥驾校、肥东驾考、肥西驾驶证', '合肥学车、合肥报名驾照、肥东驾考报名', '0', '1', 'http://www.77xueche.com/pages/show-itemid-21.html', '1', null, '/file/uploads/image/201701/20170106143851_77318.jpg', null, '佚名', '77学车', 'http://www.77xueche.com/', '最近驾校教练潜规则的新闻有点多，某些教练不是袭胸摸腿就是强吻，要不然张口闭口要好处。以至于许多朋友谈到驾校教练就色变', '<p class=\"MsoNormal\">\n	最近驾校教练潜规则的新闻有点多，某些教练不是袭胸摸腿就是强吻，要不然张口闭口要好处。以至于许多朋友谈到驾校教练就色变，总感觉他们都有一双色眯眯的眼睛盯着你在看。如果你在学车中遇到驾校教练“吃拿卡要”你会怎么做<span>?</span>今天小七教你几招。<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	<b>方法一：要求驾校更换教练</b><span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	事后维权最重要的前提就是，一定要在教练员惊醒“吃拿卡要”时保留有效证据，例如录音、视频、收费单据等。<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	目前全国有许多驾校都允许学员自由选择或更换教练员，如果教练存在态度恶劣、举止粗鲁、“吃拿卡要”等问题，首先就要像驾校说明情况、列出证据，提出更换教练的要求。<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	<b>方法二：向相关部门投诉</b><span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	如果驾校不能解决问题，那就要转向加官部门进行投诉。在工作人员受理后，要提供所有证据，并提出自己的诉求，驾管部门在查证后，会进行协调处理。<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	<b>方法三：向媒体爆料</b><span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	如果有足够的证据，也可以向媒体爆料。比如报社、本地门户网站、电视栏目等等。让某些教练的“恶行”见诸报端和电视。这个途径很有效，不过影响会很大，教练是“罪有应得”，但是对驾校来说，有可能让市民朋友对驾校产生负面看法。<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	<b>方法四：走正规途径报名</b><span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:31.5pt;\">\n	当然，在事情发生以后再去维权可能效果并不理想。因此，在选驾校报名之前，就应当考虑这一问题。走正规途径报名学车，选择口碑好的教练，能在一定程度上避开“吃拿卡要”。\n学车选七七，安全又放心，一费到底，拒绝吃拿卡要，就近学，收费低，拿证超快<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:31.5pt;\">\n	<b>小七说：</b>总而言之，驾校或教练没有资格和任何理由对学员“吃那卡要”，一旦遇到这样的情况，第一个反应就是要维护自己的合法权益。别让一本小小的驾驶证，如此委屈自己。<span></span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	（以上内容来源于网络）<span></span>\n</p>', '26', '1483684770', '1491475325', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('11', '17', '教练眼中学车最好的，为什么挂的是最多的', '教练眼中学车最好的，为什么挂的是最多的', '教练眼中学车最好的，为什么挂的是最多的', '0', '0', '', '1', null, '/file/uploads/image/201701/20170106144359_68024.png', null, '佚名', '77学车', 'http://www.77xueche.com/', '在我们驾考过程中，经常会遇到这种人。平时练车的时候鹤立鸡群，那事相当的给力。但是，一到考试中确考得一塌糊涂。 \n在我当初考驾照的时候，考', '<p>\n	在我们驾考过程中，经常会遇到这种人。平时练车的时候鹤立鸡群，那事相当的给力。但是，一到考试中确考得一塌糊涂。<span>&nbsp;</span>\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	在我当初考驾照的时候，考试前想多练几次。教练都是拒绝的，他说：“挂科的大多都是哪些练的特别好的，通过的总是哪些练的差不多的。”这是为什么呢?我们又该怎么办呢?\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	1、加强错误纠正及训练\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	在心理学中有一个是错学习法，当你犯错的时候你会对这个错误记忆非常深刻，如果加以纠正对这个犯错的几率就会少很多。所以，在我们平时的训练中，不要犯错，犯错也不要怕别人知道，要敢问，才能让我们更好的解决问题。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	另外，考试只有一次，难免会出现一些意外，但有些错误是可以修改的，如果平时多练习的话，考试心中就不会慌张，就可以补救。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	2、基本功要扎实，解决自信问题\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	俗话说“饭要一口一口的吃”，很多学员会出现由于平时练的太好，导致在一些基本的操作上忽略了注意力，最后很容易出现在这些基础上的东西犯错。所以，练车一定要脚踏实地，基础很重要。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	考试焦虑一般都来源于担心以及不自信、怕发挥不好。如果我们平时练的扎实的话，对于我们自信心来说有一定的增强作用，有利于我们通过考试。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	3、要注重场地的熟悉，消除紧张感\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	&nbsp;\n</p>\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;\">\n	<br />\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	&nbsp;\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	当初我在考驾照的时候，教练会带我们去考试场地熟悉，而有些练的比较好的学员就会出现不想去的情况，因为都认为只要掌握了技巧不管哪里都一样。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	的确是这样子的，但是大家忽略了一个问题，那就是当一个人在陌生的环境时，我们的神经系统就会自动紧张，焦虑就是这么产生的，大脑的思维和功能就会降低。况且，我们也都还是处于小新手阶段，真正的技巧并没有完全掌握。所以，这边还是建议在看考场的时候，最后是能够抽空去。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	4、注意减压\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	平时练的最好的人，心理压力肯定就会越大，人的自尊心都是很大的，谁都怕被过多夸奖后出现打脸的况。其实，大家不要把考试结果看得太重了，不要急于求成，不要怕别人说。超过考试本身去看问题是最容易出现挂科的，过度的压力只会让影响我们的身体和思维。我们应该学会看淡考试，打不了下次再来过。\n</p>\n<p class=\"MsoNormal\" align=\"left\">\n	5、考前保持良好的精神状态\n</p>', '30', '1483685058', '1493880731', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('12', '17', '告别传统练车方式，互联网+VR能让学车更简单?', '告别传统练车方式，互联网+VR能让学车更简单?', '告别传统练车方式，互联网+VR能让学车更简单?', '0', '0', '', '1', null, '/file/uploads/image/201701/20170106151954_37616.jpg', null, '佚名', '77学车', 'http://www.77xueche.com/', '据了解，来自公安部交管局统计的数据，截至2015年底，全国机动车保有量达2.79亿辆，其中汽车1.72亿辆;机动车驾驶人3.27亿人，其中汽车驾驶人超过2.8亿', '<p class=\"otitle\" style=\"margin-top:32px;margin-bottom:0px;padding:0px;font-size:18px;text-indent:2em;font-stretch:normal;line-height:32px;font-family:\'Microsoft Yahei\';color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;\">\n	<p class=\"MsoNormal\">\n		<span style=\"text-indent:24pt;\">据了解，来自公安部交管局统计的数据，截至2015年底，全国机动车保有量达2.79亿辆，其中汽车1.72亿辆;机动车驾驶人3.27亿人，其中汽车驾驶人超过2.8亿人。随着我国经济社会持续快速发展，群众购车刚性需求旺盛，汽车保有量继续呈快速增长趋势，2015年新注册登记的汽车达2385万辆，保有量达到12435万辆，比2014年登记的数量10559万辆净增1781万辆，均为历史最高水平。</span>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		从上组数据来看，近年来报名学车的人是在不断的增长的。而导致报考驾照人增多的原因，首先一个就是随着我国经济社会持续快速发展，人们的生活水平不在提高，很多人有经济实力去购买车辆。其次，驾考新规不断调整，驾考越来越复杂，很多人担心以后会更难。最后，驾考新规的出台，担心学车的培训费越来越高。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		报考驾照人数的剧增，给驾校带了更多利益的同时，也使得传统驾校学车更多的问题暴露出来。其中常见的问题包括：等待时间长、驾校教练素质参差不齐给学员造成很大的精神压力、通过率不高，这些问题也一直在影响着学员们的学车体验。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		随着VR技术的高速发展，它正不断的被应用到围绕人们生活的各个领域，而学车正是其中之一。但从目前VR的普及度来看，很多人仍然抱着质疑的态度，VR真的能给驾校教学模式带来帮助吗?在这种质疑声中，丰田就联手Oculus Rift推出了TeenDrive365系统，用行动打破质疑声。体验者只要坐在驾驶舱内，戴上VR头盔即可模拟驾驶过程中的各种路况，辅之逼真的音效系统，让驾驶员一度有以假乱真的感觉。虽然驾校VR教学的模式还需要不断的探索，但至于这是一个不错的方向，一个改善传统驾校练车问题的新方向。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>传统驾校练车问题多</b><b> </b><b>学员苦不堪言</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		在中国由于政策的原因，驾校一直都是学员想要拿取驾照，掌握驾驶技术的唯一通道和入口。然而正是这种唯一性，导致驾校出现的问题也不少。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>1</b><b>、学车体验差</b><b> </b><b>教练素质成硬伤</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		由于在驾校练车一般都是一辆车里塞满了四个学员，很少有一对一培训练车的机会，由于人数多导致每个人每次练车的时间屈指可数，这在一定程度上对学员练车掌握技能也是大打折扣。另外由于驾培行业从业者素质普遍较低，服务意识不强。学员在学车时被教练骂是常态，各种语言侮辱很有可能是常态，而且塞红包也成了惯例，约车问题也难以协调。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>2</b><b>、拿证时间过长</b><b> </b><b>导致投入成本增大</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		众所周知驾培行业教练多为挂靠模式，各自为政，培训方法标准各不相同，导致教学质量并不统一，学员可能跟不上教练培训的节奏和方法。而且由于驾校教练的数量有限，往往都是一带多的培训模式，学员只能提前预约时间来练车，时间上就受限制，连报名考试都是要等待排队，这就在一定程度上导致学员练车的时间周期变长，付出的额外成本也增高，拿证速度也缓慢。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>3</b><b>、由于是应试教育</b><b> </b><b>新手驾驶忧虑多</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		在驾校练车的人都知道，它的课程并不是灵活运用的驾驶技巧，取而代之的反而是一些死记硬背的流程，虽说这些流程在短时间内能帮助学员快点通过考试，可对于真正意义上的驾驶原理和交通法规的理解确是害处多多。很多驾驶新手上马路的时候经常容易出现问题，当然这也是因为前期练车基础没有掌握好，只是完成了应试考试而已。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>VR</b><b>能否开辟学车新模式</b><b>?</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		相对于传统驾校上面出现的问题，利用VR技术来开展VR模拟练车也许能开辟驾校的一个新领域。虚拟现实能提供给用户在真实性和沉浸性上的虚拟体验，VR+学车在线下很有可能有它发展的生机，尤其是对于学员来说它的优势更为明显，主要体现在下面两点：\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>练车时间自由，更显灵活</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		在驾校练车最大的问题还是时间上的被动性，放在眼前可能是教练一对一的培训，而随着现在越来越多的多的人在学车，驾校的教练往往是一对四的培训，每个人轮流练下来基本上可能一上午也只能练到2到3次，时间是花费了但是真正练车的时间却屈指可数。很多时候可能要花额外的时间和钱单独请教练学车，才有可能掌握一个基础用来应付考试。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		如果VR练车在线下成为一种商业模式，最大的优势应该还是练车可自主性大大提高，时间上不是只限定了有限的时间来练车，也许只要你得空每天都去练、练多久都是由自己决定的。利用VR技术肯定能把要掌握的技能、马路上遇到的问题、模拟考试等方面都能通过虚拟现实展现出来，用户不担心像在驾校一样排队等车联系，随时只要带上虚拟头盔，坐在模拟驾驶器上就能跟在路上练车并无其他差异。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>不同场景针对性练习，效果更显著</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		VR技术最大的特点就是能高度仿真甚至是还原，因此利用VR来练车完全不用担心它的真实性。在练车效果上它应该也能做到跟在驾校实地练车相媲美。比如说，一般人练车的时候很容易受各种因素的干扰从而分心，比如马路上的各种广告牌、其他车辆的刻意超车、甚至是旁边滔滔不绝在说话的人等等，这些因素都能分散驾驶者的注意力。等驾驶员拿了证之后，开车上路就经常产生因为注意力不集中而发生意外事故。另据VR日报了解：年轻驾驶员在驾驶过程中最容易受到各种外界因素干扰，有25%的年轻驾驶员在领取驾照后的两年内发生了撞车事故，其中9%的年轻驾驶员会发生严重甚至致命的交通事故。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		现在已经有了利用VR技术开发出的在线驾驶游戏软件，它最大的特征就是模拟了各种驾驶当中出现的情境来测试练车者在驾驶过程中抗干扰的能力。它设置了不同的驾驶场景，每个场景相对应的都会出现在开车途中会遇到的问题，比如突然遇到极速超车、或者开车途中前面突然发生意外事故等，练车人员需随时注意路途上出现的各种考验，因此注意力需要格外谨慎。由于画面的真实性和操作的可行性，自然给了用户很大的代入感，在练车过程中就体验到了突发意外事故车子应该是个什么驾驶状态。这个模拟驾驶一方面是丰富了驾驶者的开车经验，另一方面也给他们灌输了不少安全开车的常识，因为在马路上开车意外的发生很多时候都是驾驶员自己的疏忽导致的。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		<b>驾校与</b><b>VR</b><b>结合，发展前景将会如何</b><b>?</b>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		&nbsp;\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		传统的驾校最大的发展优势就在于，它是学员想要拿取驾照的唯一通道，学员只能在驾校报名练车通过考试才能拿到证。尽管在学员资源上有保证，但它自身的发展同样也有不少的问题。主要是三个方面：教练人工成本、汽车的损耗、安全问题;这三部分没有办法在实际操作上有更好的解决办法，毕竟你只有教练资源和驾校车辆有保证，才有能力招到更多学员，所以减少它们来达到降低成本并不可取。而驾校借助VR技术未来的发展前景或许是个新领域的拓展。\n	</p>\n	<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;background:white;\">\n		<a href=\"http://gb.corp.163.com/gb/legal.html\"></a>\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		国内已经有公司推出VR学车模拟器，在价格方面，据悉一套模拟器的座椅和软件一套售价可能在7000元左右，电脑和VR头显可以自选搭配，整套下来不会超过2万元。驾校要是购买一套这样的产品下来，比驾校要花钱买一辆车的成本还是要低得多;VR学车模拟器也能在一定程度上减少学员对教练的依赖，毕竟在模拟器上就能学到相应的驾驶技能，驾校在教练的开支上也能节省下一笔开销。学员在马路上练车，安全问题也是无法避免的，就算有教练在旁边指导学车，有时候也总难免会出现意外事故，不单单是车的问题严重的情况可能人身安全也是个隐患。\n	</p>\n	<p class=\"MsoNormal\" style=\"text-indent:24.0pt;background:white;\">\n		因此，综上所述可以看出利用VR技术它能提供逼真的模拟驾驶，一方面既能帮助驾校降低教练人工、汽车损耗、安全风险等各方面成本;另一方面对于学车新手来说，VR模拟驾驶训练不但节省了外出练车的时间、人力、成本等等，更为重要的是它让学员通过VR模拟驾驶能够更高效高质低费用地完成驾驶培训。基于各自的优势，未来驾校与VR学车相结合，或许是完善驾校服务的方向。\n	</p>\n	<p class=\"MsoNormal\" align=\"left\">\n		&nbsp;\n	</p>\n</p>', '54', '1483687204', '1493880730', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('13', '18', '今日头条：又一家学车平台”七七学车”扛起了互联网+学车的大旗', '', '', '0', '1', 'http://www.toutiao.com/i6374157793309491714/', '1', null, '/file/uploads/image/201701/20170112094506_93216.png', null, '佚名', '77学车', 'http://www.77xueche.com/', '1、驾校太多，不好选择，学费太高，压力大选择培训驾校，有的人择朋友介绍的，有的人选择附近的，基本都没有进行仔细的评估和实地考察，教练吃拿卡要，骂学员已经成为行业共知的话题，更有甚者对学员做出不雅举动。然后又能如何，钱已经交了，即使退也退不到多少钱，很多人选择了忍耐。另外据不完全统计北上广深学车费用平均在4500元以上，二线城市也在3500元以上，高额的学车费用让很多工薪阶层咬紧牙、勒紧裤腰带。2、报名之后直接对接教练，有苦没地说除了科一和科四理论之外，基本学员就是和学车教练对接，遇到态度好的要好点，遇到太多不好的教练，真的也是没办法，有苦说不出。', '111', '11', '1484185294', '1484190577', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('14', '18', '七七学车解决传统驾校弊端，互联网+学车模式更加凸显优势', '', '', '0', '1', 'http://www.ah.chinanews.com/news/2017/0112/48141.shtml?qq-pf-to=pcqq.c2c', '1', null, '/file/uploads/image/201701/20170113101745_19333.png', null, '佚名', '七七学车', 'http://www.77xueche.com/', '七七学车整合教练资源，摒弃传统学员报名必须通过驾校的方式，让学员直接对接教练，不但直接省去了很多中间成本，还提高了教练收入，提高了教练的教学积极性，更大大的为学员节省了很多费用。同时由于其训练基地覆盖面较广，学员可就近学车，也许训练点就在小区旁，确实很方便。', '111', '1', '1484272817', '1484273867', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('15', '18', '消费日报：深化改革，七七模式受推崇', '', '', '0', '1', 'http://www.xfrb.com.cn/html/zixun/shenghuoxiaofei/zonghexinwen/34845.html', '1', null, '/file/uploads/image/201701/20170117173319_32513.png', null, '佚名', '七七学车', 'http://www.77xueche.com/', '作为一个年产值1500亿，毕业学员超过2000万，高额单频的学车行业，互联网+，虽然来的稍晚一些，但是也一点不比其他行业落寞。尤其自七七学车2016年开办以来，广受广大学员好评。七七学车颠覆传统学车行业模式，成为互联网+驾培新模式七七学车以低收费、高效率、随时学、就近学、可分期等以学员为中心的驾培理念广招学员成绩斐然。', '111', '2', '1484645604', '1486608799', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('16', '17', '合肥滨湖新驾考中心建设进入扫尾阶段 C1驾照考试车辆为江淮和悦', '', '合肥驾考', '0', '0', '', '1', null, '/file/uploads/image/201702/20170209152226_19346.jpg', null, '合肥学车', '合肥驾培', 'http://www.77xueche.com/', '新驾考中心建设已进入扫尾阶段\n合肥市车管服务中心和驾驶人考试中心位于方兴大道与宿松路交口东南侧，占地约300亩，建成后将容纳近千人同时考试。', '<span style=\"font-size:18px;\">新驾考中心建设已进入扫尾阶段</span><br />\n<span style=\"font-size:18px;\">合肥市车管服务中心和驾驶人考试中心位于方兴大道与宿松路交口东南侧，占地约300亩，建成后将容纳近千人同时考试。</span><br />\n<span style=\"font-size:18px;\">12月29日，在新驾考中心探访可见，业务综合楼和两栋驾考技术服务楼已落成，内部装修基本完工，工人在进行最后设备调试和场地清扫工作。不过，综合楼和技术服务楼内只安装部分设备，桌椅、电脑等物品还未进场。</span><br />\n<span style=\"font-size:18px;\">据现场工作人员介绍，驾考中心的建设已基本完成，不久将接受整体验收，之后就能投入使用了。</span><br />\n<span style=\"font-size:18px;\">考场设10条小车考试线路、4条大车线路</span><br />\n<span style=\"font-size:18px;\">新驾考中心设有两个科目二考试场区，综合楼南侧为小车科目二考场，C类驾照考试车辆要考的倒车入库、侧方位、坡道起步与定点停车、直角转弯、曲线行驶等5项科目场地均已建成。同时，还设有两条摩托车考试线路。</span><br />\n<span style=\"font-size:18px;\">模拟高速行驶路段。模拟高速行驶路段。</span><br />\n<span style=\"font-size:18px;\">综合楼北侧为A类和B类驾照考场，车辆要通过连续障碍、通过单边桥、直角转弯、侧方位行驶、桩考及模拟隧道、模拟高速公路、模拟紧急状况处置、窄路掉头、模拟雨(雾)天湿滑路面等数项科目。</span><br />\n<span style=\"font-size:18px;\">新驾考中心还将实现科目三考试车辆所有道路项目的计算机综合评判。</span><br />\n<span style=\"font-size:18px;\">据悉，合肥新驾考中心拥有10条小车考试线路、4条大车考试线路，初步测算每天可容纳800余人参加考试。</span><br />\n<span style=\"font-size:18px;\">新驾考中心C1驾照考试车辆为江淮和悦</span><br />\n<span style=\"font-size:18px;\">当天，工作人员在小车科目二考试场区进行点位测试，据现场工作人员介绍，新驾考中心C类考试用车均为江淮和悦轿车。</span><br />\n<span style=\"font-size:18px;\">工作人员驾驶考试车辆进行相关点位测试。工作人员驾驶考试车辆进行相关点位测试。</span><br />\n<span style=\"font-size:18px;\">据悉，目前合肥市现有的驾考中心考试用车多为大众桑塔纳轿车，为了让学员熟悉车辆操作，很多驾校选择桑塔纳轿车作为日常训练用车。</span><br />\n<span style=\"font-size:18px;\">另据此前招标要求，考试车内将安装8英寸以上触摸式显示屏，除了可以在考生考试时显示照片以及相关信息，还可以在考试过程中显示扣分原因、考试结果等，不仅让考官方便核对信息，同时也让考生清楚、详细地了解自己在考试过程中的不足。</span><br />\n<span style=\"font-size:18px;\">目前合肥有自建科目二考场3个、科目三考场3个，社会化科目二考场3个、科目三考场2个。合肥车管服务中心和驾驶人考试中心投入使用后，将大大缓解学员积压的情况。</span><br />\n<span style=\"font-size:18px;\"></span>', '41', '1486608792', '1493880730', null, '7');
INSERT INTO `lxzcms_news_11` VALUES ('17', '17', '合肥4类群体学车最让教练“头疼” 教师等三大职业，居然还有', '合肥学车新闻', '合肥驾驶证考试', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142336_63435.jpg', null, '合肥驾考', '合肥学车网', 'http://www.77xueche.com/pages/show-itemid-21.html', '截至2016年底，据合肥市交警部门统计，合肥机动车保有量已超过155万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说', '<p class=\"MsoNormal\">\n	截至2016年底，据合肥市交警部门统计，合肥机动车保有量已超过155万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说中的“女司机”是如何拿到驾照的?是不是学历越高，车就学得越好?从事何种职业的学员最让教练“头疼”?不踩离合将档挂断、爬坡忘松手刹、倒库直接撞墙……这些囧事，你犯过吗?<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	不少人的固有观念对女司机存在着偏见，经调查发现，在合肥多个驾校，最让教练“头疼”的并不是女司机而是教师、会计、科研人员这三大职业人群，还有一类人就是孕妈以及刚生完孩子回来的妈妈。职业使然，生命规律使然，对此，不少教练表示能理解，在教学员过程中也显露了更多的宽容。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	面对教师、会计、科研学者和孕妈们，不少一线教练称要多花费些心思。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	<b>学历高就能学好车吗</b><b>?</b><b>教练们最怕教师、会计和科研人员</b><o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	这年头，并不是学历高，车就学得好。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	通过对合肥多位一线教练的走访，教师、会计、科研人员这三大职业人群学车最让人“头疼”，“没什么文化的学员比较难教，而高学历的人也难教。”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	为何这三类职业人群上榜？<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	教练们纷纷表示，这三类人是动脑能力强、动手能力弱的典型代表。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	“这些人智商很高，一个答案抛出，总要追着问为什么，譬如一般人一加一等于二，不会问为什么。”合肥蜀山区一驾校张教练笑着说，“其实学车很多都是经验性的东西，多练习自然就会了。”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	曾经就有一位来自合肥科学岛从事科研工作的教授，今年50多岁，“学个车把牛顿运动定律都学出来了。”把张教练都“惊呆”了。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	“我教他抬离合器起步，他问我为什么抬了离合器，车子就动了。我教他转弯打方向，他偏要问我轮胎转了多少度。问的问题太尖锐，不但尖锐，自己还要往里钻，搞清楚这是为什么，为什么要这么做。”张教练向其解释车子起步的道理后，该教授说，“你直接跟我说利用的是牛顿运动定律不就可以了吗?”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	“教师和会计也是，小数点后面的东西都要研究清楚。”张教练分析道，“这三类人群注意力高度集中在自己关注的某一个领域，想的东西特别细致，有时候细得过分，这就导致思维定式，不够灵活。”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	不过，这种现象不是绝对的，张教练表示，只是他个人和身边一些教练的感受，“而那些看起来调皮、活泼点的年轻人，学车上手很快，教起来也不费心思，许多点位讲一遍就会了。”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	<b>超七成孕妈和产妇现</b><b>“</b><b>孕傻</b><b>”</b><b>症状</b><b> </b><b>反映能力缓慢记忆力下降</b><o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	除以上三类职业人群外，让不少教练感到“棘手”的还有一类人，就是孕妈和刚生完孩子回来的妈妈，70%至80%的都会出现这种“孕傻”现象，反映能力变得缓慢，记忆力也下降了。<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	今年上半年，在合肥庐阳区一驾校，就有一位孕妈生完孩子回来，之前科目二的五个项目都已学完，结果怀孕了，时隔一年多，该位女学员回来准备预约考试，“结果什么都不会了，把之前教的忘得一干二净。”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	此外，还有一位28岁的年轻妈妈，今年初就已上车学科目二，到现在还在学第一个项目曲线行驶，“光绕曲线就绕了半年，一进曲线就晕了，方向盘不知往哪儿打。”<o:p></o:p>\n</p>\n<p class=\"MsoNormal\">\n	“不过，这也没办法，是生命的自然规律。”对此，教练们也表示理解和宽容，“虽然比较难教，但妈妈们对自己都比较有信心，而且很勤快。”<o:p></o:p>\n</p>', '29', '1486612585', '1486612596', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('18', '17', '合肥4类群体学车最让教练“头疼” 教师等三大职业和孕妈上榜', '合肥学车新闻', '合肥驾驶证考试', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '1', null, '/file/uploads/image/201701/20170103142336_63435.jpg', null, '合肥驾考', '合肥学车网', 'http://www.77xueche.com/pages/show-itemid-21.html', '截至2016年底，据合肥市交警部门统计，合肥机动车保有量已超过155万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说', '<p>\n	<span style=\"font-size:16px;\"><span style=\"font-size:18px;\"><strong></strong><strong></strong></span><strong>截至2016年底，据合肥市交警部门统计，合肥机动车保有量已超过155万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说中的“女司机”是如何拿到驾照的?是不是学历越高，车就学得越好?从事何种职业的学员最让教练“头疼”?不踩离合将档挂断、爬坡忘松手刹、倒库直接撞墙……这些囧事，你犯过吗?</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>不少人的固有观念对女司机存在着偏见，经调查发现，在合肥多个驾校，最让教练“头疼”的并不是女司机而是教师、会计、科研人员这三大职业人群，还有一类人就是孕妈以及刚生完孩子回来的妈妈。职业使然，生命规律使然，对此，不少教练表示能理解，在教学员过程中也显露了更多的宽容。</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>面对教师、会计、科研学者和孕妈们，不少一线教练称要多花费些心思。</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>学历高就能学好车吗?教练们最怕教师、会计和科研人员</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>这年头，并不是学历高，车就学得好。</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>通过对合肥多位一线教练的走访，教师、会计、科研人员这三大职业人群学车最让人“头疼”，“没什么文化的学员比较难教，而高学历的人也难教。”</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>为何这三类职业人群上榜？</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>教练们纷纷表示，这三类人是动脑能力强、动手能力弱的典型代表。</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>“这些人智商很高，一个答案抛出，总要追着问为什么，譬如一般人一加一等于二，不会问为什么。”合肥蜀山区一驾校张教练笑着说，“其实学车很多都是经验性的东西，多练习自然就会了。”</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>曾经就有一位来自合肥科学岛从事科研工作的教授，今年50多岁，“学个车把牛顿运动定律都学出来了。”把张教练都“惊呆”了。</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>“我教他抬离合器起步，他问我为什么抬了离合器，车子就动了。我教他转弯打方向，他偏要问我轮胎转了多少度。问的问题太尖锐，不但尖锐，自己还要往里钻，搞清楚这是为什么，为什么要这么做。”张教练向其解释车子起步的道理后，该教授说，“你直接跟我说利用的是牛顿运动定律不就可以了吗?”</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>“教师和会计也是，小数点后面的东西都要研究清楚。”张教练分析道，“这三类人群注意力高度集中在自己关注的某一个领域，想的东西特别细致，有时候细得过分，这就导致思维定式，不够灵活。”</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>不过，这种现象不是绝对的，张教练表示，只是他个人和身边一些教练的感受，“而那些看起来调皮、活泼点的年轻人，学车上手很快，教起来也不费心思，许多点位讲一遍就会了。”</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>超七成孕妈和产妇现“孕傻”症状反映能力缓慢记忆力下降</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>除以上三类职业人群外，让不少教练感到“棘手”的还有一类人，就是孕妈和刚生完孩子回来的妈妈，70%至80%的都会出现这种“孕傻”现象，反映能力变得缓慢，记忆力也下降了。</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"><strong>今年上半年，在合肥庐阳区一驾校，就有一位孕妈生完孩子回来，之前科目二的五个项目都已学完，结果怀孕了，时隔一年多</strong></span><span style=\"font-size:14px;\"></span><span style=\"font-size:16px;\"><strong>，该位女学员回来准备预约考试，“结果什么都不会了，把之前教的忘得一干二净。”</strong></span></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>此外，还有一位28岁的年轻妈妈，今年初就已上车学科目二，到现在还在学第一个项目曲线行驶，“光绕曲线就绕了半年，一进曲线就晕了，方向盘不知往哪儿打。”</strong></span> \n</p>\n<p>\n	<span style=\"font-size:16px;\"><strong>“不过，这也没办法，是生命的自然规律。”对此，教练们也表示理解和宽容，“虽然比较难教，但妈妈们对自己都比较有信心，而且很勤快。”</strong></span> \n</p>\n<br />', '53', '1486612870', '1493880731', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('19', '17', '合肥市车管服务中心和驾驶人考试中心项目', '合肥驾校、合肥学车、学驾驶哪家便宜', '驾校报名、肥东驾校、肥西驾校', '0', '1', 'http://www.77xueche.com/pages/show-itemid-21.html', '1', null, '/file/uploads/image/201702/20170209141129_83148.jpg', null, '合肥驾校学车', '七七学车', 'http://www.77xueche.com/', '能考试、能模拟不同驾驶场景、能办理各类车管业务……合肥市车管服务中心和驾驶人考试中心预计将在2017年正式投入使用。该中心考试线路远远多于', '<span style=\"font-size:16px;line-height:2;\"><span style=\"font-size:18px;\"><strong>项目概况</strong></span>：该项目选址位于经济技术开发区宿松南路以东、方兴大道以南，规划用地201263㎡（约合301.89亩），总建筑面积25091㎡。工程建设主要内容为考试场区、驾考技术服务楼（1#和2#均为4880㎡）、业务办理综合服务楼（14091㎡）、查验大棚及查验用房（1140㎡）、车辆和监控等设备及道路、照明、绿化、给排水等配套设施。设计单位：安徽省交通规划设计研究院，监理单位：安徽省恒信工程监理有限责任公司，施工单位：安徽水利开发股份有限公司。&nbsp;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"><span style=\"font-size:18px;\"><strong>进展情况</strong></span>：土建工程：1#、2#驾考技术服务楼幕墙石材干挂施工完成95%、业务办理综合服务楼幕墙石材干挂施工完成45%；查验用房墙体保温工程施工。室外附属工程：道路、场地基层10%灰土处理层施工5000平方米，累计完成77500平方米,占总量的77%；路基8%灰土处理层施工完成85700平方米，占总量的85%；围墙施工80米，累计完成2840米，占总量的80%；雨水管道施工完成5270米，占总量的88%；道路水稳层施工完成65500平方米，占总量的60%。片石砼挡墙施工完成6960立方米，占总量的90%；侧石安装完成8200米，占总量的20%。游泳池专用砖铺贴完成600m2，累计完成占总量的90%；门厅铝单板顶施工完成100m2，累计完成占总量的10%；二次小额零星工程吊顶主材确定，准备开始施工；西侧汽车坡道面层浇筑18m3，累计完成占总量的50%；下沉庭院排水沟盖板铺设60m，累计完成占总量的30%。</span><br />', '34', '1486620913', '1486626018', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('20', '17', '合肥4类群体学车最让教练“头疼” 教师等三大职业居然还有...', '合肥驾考，肥东学车，合肥驾校', '合肥学车报名、合肥驾考报名。肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '1', null, '/file/uploads/image/201701/20170103142336_63435.jpg', null, '合肥驾考培训', '七七学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '截至2016年底，据合肥市交警部门统计，合肥机动车保有量已超过155万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说', '<span style=\"white-space:normal;font-size:16px;line-height:2;\">截至2016年底，据合肥市交警部门统计，合肥机动车保有量已超过155万辆，并且每月仍以1万多辆的趋势增加，这背后是越来越多的人涌向驾校学车。传说中的“女司机”是如何拿到驾照的?是不是学历越高，车就学得越好?从事何种职业的学员最让教练“头疼”?不踩离合将档挂断、爬坡忘松手刹、倒库直接撞墙……这些囧事，你犯过吗?</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">不少人的固有观念对女司机存在着偏见，经调查发现，在合肥多个驾校，最让教练“头疼”的并不是女司机而是教师、会计、科研人员这三大职业人群，还有一类人就是孕妈以及刚生完孩子回来的妈妈。职业使然，生命规律使然，对此，不少教练表示能理解，在教学员过程中也显露了更多的宽容。</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">面对教师、会计、科研学者和孕妈们，不少一线教练称要多花费些心思。</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">学历高就能学好车吗?教练们最怕教师、会计和科研人员</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">这年头，并不是学历高，车就学得好。</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">通过对合肥多位一线教练的走访，教师、会计、科研人员这三大职业人群学车最让人“头疼”，“没什么文化的学员比较难教，而高学历的人也难教。”</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">为何这三类职业人群上榜？</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">教练们纷纷表示，这三类人是动脑能力强、动手能力弱的典型代表。</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">“这些人智商很高，一个答案抛出，总要追着问为什么，譬如一般人一加一等于二，不会问为什么。”合肥蜀山区一驾校张教练笑着说，“其实学车很多都是经验性的东西，多练习自然就会了。”</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">曾经就有一位来自合肥科学岛从事科研工作的教授，今年50多岁，“学个车把牛顿运动定律都学出来了。”把张教练都“惊呆”了。</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">“我教他抬离合器起步，他问我为什么抬了离合器，车子就动了。我教他转弯打方向，他偏要问我轮胎转了多少度。问的问题太尖锐，不但尖锐，自己还要往里钻，搞清楚这是为什么，为什么要这么做。”张教练向其解释车子起步的道理后，该教授说，“你直接跟我说利用的是牛顿运动定律不就可以了吗?”</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">“教师和会计也是，小数点后面的东西都要研究清楚。”张教练分析道，“这三类人群注意力高度集中在自己关注的某一个领域，想的东西特别细致，有时候细得过分，这就导致思维定式，不够灵活。”</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">不过，这种现象不是绝对的，张教练表示，只是他个人和身边一些教练的感受，“而那些看起来调皮、活泼点的年轻人，学车上手很快，教起来也不费心思，许多点位讲一遍就会了。”</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">超七成孕妈和产妇现“孕傻”症状反映能力缓慢记忆力下降</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;\"><span style=\"font-size:16px;line-height:2;\">除以上三类职业人群外，让不少教练感到“棘手”的还有一类人，就是孕妈和刚生完孩子回来的妈妈，70%至80%的都会出现这种“孕傻”现象，反映能力变得缓慢，记忆力也下降</span><span style=\"font-size:16px;\"><span style=\"font-size:16px;line-height:2;\"></span><span style=\"line-height:2;font-size:16px;\"></span></span><span style=\"font-size:16px;line-height:2;\">了。</span></span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;\"><span style=\"line-height:2;\">今年上半年，在合肥庐阳区一驾校</span><span style=\"line-height:2;\"></span><span style=\"line-height:2;\">，就有一位孕妈生完孩子回来，之前科目二的五个项目都已学完，结果怀孕了，时隔一年多，该位女学员回来准备预约考试，“结果什么都不会了，把之前教的忘得一干二净。”</span></span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">此外，还有一位28岁的年轻妈妈，今年初就已上车学科目二，到现在还在学第一个项目曲线行驶，“光绕曲线就绕了半年，一进曲线就晕了，方向盘不知往哪儿打。”</span><br style=\"white-space:normal;\" />\n<span style=\"white-space:normal;font-size:16px;line-height:2;\">“不过，这也没办法，是生命的自然规律。”对此，教练们也表示理解和宽容，“虽然比较难教，但妈妈们对自己都比较有信心，而且很勤快。”</span><br style=\"white-space:normal;\" />\n<div>\n	<span style=\"white-space:normal;\"><br />\n</span>\n</div>', '33', '1486625197', '1493880730', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('21', '17', '合肥要考驾照的注意了，考场快要换了！考试到底是变难了还是变易了？', '合肥学车，合肥驾照，肥东驾照考试', '合肥驾考、肥西驾驶证考试、肥东考驾照', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '1', null, '/file/uploads/image/201702/20170209153224_58854.jpg', null, '合肥学车驾考', '七七学车', 'http://www.77xueche.com/', '合肥要考驾照的注意了，考场快要换了！考试到底是变难了还是变易了？', '<span style=\"font-size:16px;line-height:2;\">知道去年多少人考驾照么?&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 据交警部门不完全统计，合肥(含四县一市)去年一年，</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 共有127万人次的学员参加了各科目考试，</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 其中新发驾驶证约21万本，每天发出近600本。</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp;</span><img src=\"/file/uploads/image/201702/20170209152955_97089.png\" alt=\"\" /><br />\n<span style=\"font-size:16px;line-height:2;\"> 说起来，这本证拿的可真不容易。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 要忍得了教练的骂，要吃得了日晒的苦。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 想当初，小编可是顶着8月份的烈日练了一下午的打方向……</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 学车排期长，考试等的久也算是感触之一了。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 不过，8月4日上午，记者探访发现，</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 合肥新驾考中心楼体装修已接近尾声，最快年底即可启用!</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 宿松路与云谷路交口东北处，就是新驾考中心的位置。</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp;</span><img src=\"/file/uploads/image/201702/20170209153037_64583.png\" alt=\"\" /><br />\n<span style=\"font-size:16px;line-height:2;\"> 目前中心内楼体外立面装修已完成，内部装修包括安防系统、楼宇智能化等系统安装工作也正在进行中。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 考试场地和一些模拟驾驶场景的建设也初步成形，例如坡道定点、S弯道、模拟高速公路、模拟隧道等场地土建部分已完成，只是路面标识尚未划定，目前正等待考试设备招投标结束立马可进行安装调试。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 据现场项目监理公司一位负责人介绍，该中心建设后小车共有10条考试线路，大车有4条，远远多于岗集驾考中心，以后考驾照，排期估计不会等那么久了!</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 比较特别的是，合肥车管所、驾管所和交通安全教育学校等部门都将来此办公，所以不止是考试，而是可以享受多项业务\'一站式\'服务。\"</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 上述负责人表示，如果一切顺利的话该中心今年年底即可投入使用，根据他们推算，该中心每天可容纳800余人考试。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 该中心还建有505个停车位(含地下车位68个)，来此办事将更为便捷。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 记者采访中获悉，新驾考中心还将引进全国技术领先的智能化考试系统，考试现场、考试车内发生的一切在监管平台上都能一目了然;同时将在考试车四周安装监控摄像头，将考试期间车内外音视频素材进行储存，后期可以调阅，这样也使考试时发生的情况变得公正透明。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 新手可在此体验各种驾驶环境</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 很多人是不是有过拿了驾照不敢上路的体验?</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 据说，在这个驾考中心，学员们可以模拟感受各种驾驶环境，第一次上路时再也不会胆战心惊!</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 新手可以体验在不同的天气下，包括晴天、雨天和雪天的城市道路，还可以体验在山区开车时，上山、雨天、下山不同的驾驶体验。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 此外，交通安全教育学校还可以通过提供汽车安全驾驶模拟体验装置、汽车安全带碰撞体验装置、事故责任认定触摸装置为新司机带来各种体验;甚至可以模拟刹车失灵、车轮爆胎等多种特殊情况，让新手可以学习如何处置。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 这大概是新中心最令人喜欢的了!</span><br />\n<div>\n	<br />\n</div>', '54', '1486625832', '1493880731', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('22', '17', '合肥一男子考驾照屡不过  买假证上路被查', '合肥考驾照、合肥互联网学车、肥东驾考', '合肥考驾照、合肥学生考驾照。合肥学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '1', null, '/file/uploads/image/201702/20170209161521_67946.jpg', null, '合肥驾考培训', '合肥七七学车', 'http://www.77xueche.com/', '据悉，马鞍山高速交警查获一起伪造机动车驾驶证违法行为，男子因驾考屡次未过，居然打起了路边小广告的主意，买了一本假的机动车驾驶证想蒙混过', '<p>\n	<span style=\"font-size:16px;line-height:2;\">据悉，马鞍山高速交警查获一起伪造机动车驾驶证违法行为，男子因驾考屡次未过，居然打起了路边小广告的主意，买了一本假的机动车驾驶证想蒙混过关，不料被马鞍山高速二大队民警，在S24常合高速皖苏博望收费站逮个正着。\n目前，该案正在进一步审理中，根据新修订的《刑法修正案(九)》规定，驾驶员殷某因涉嫌使用伪造机动车驾驶证已触犯刑法，等待他的将是法律的严惩。</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;\">而还有一宗同样离谱，望网友们引以为戒：</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;\">2月2日15时20分，一台重型半挂车停驻在宁安市交警大队镜泊湖中队复兴执法服务站执勤岗亭前，驾驶员张某请求民警帮其查询之前的交通违法是否已经处理。但是，当民警帮其查询时却发现了一个很不寻常的情况，原来，网上系统显示张某驾驶证</span><span style=\"font-size:16px;line-height:2;\"></span><span style=\"font-size:16px;line-height:2;\">为B2，可张某提供的驾驶证却是A证，属于使用伪造变造驾驶证。\n在事实面前，张某不得不承认，其实自己只取得“B2”驾驶证，不能驾驶重型半挂车，因此套用了他人的驾驶证。由于使用了很长时间，自己渐渐忽略了此证为伪造的事实，已经把这本伪造驾驶证当成了真的证件，因此今天在路过执法服务站时便很自然地拿给了执勤民警进行查询，结果漏了馅。\n根据《道路交通安全法》，公安局交警部门以涉嫌使用伪造、变造机动车驾驶证和准驾不符对张某依法给予了罚款，驾驶证记满12分，并处拘留的处罚。</span>\n</p>', '43', '1486629685', '1493551278', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('23', '17', '合肥学生考驾照报名年龄和身体条件', '合肥驾校、肥东驾考、肥西驾考', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142306_70396.png', null, '合肥驾考', '七七学车', 'http://www.77xueche.com/', '合肥学生考驾照报名年龄和身体条件', '<span style=\"font-size:16px;line-height:2;\">一、报名考驾照需要准备哪些材料</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">新学期即将来临，大学生报名考驾照要提前报名，学期结束就可以拿到驾照啦！正好暑假自驾嗨，目前，大多数人都会选择学车考驾照。大学生在驾校报名考驾照需要准备本人的身份证及报名费，如果是外地户口的话还需要准备居住证。外地户口可以在合肥考驾照，但只能考C1照和C2照，即小型汽车C1照：小型 、微型载客汽车等;小型自动挡汽车C2 ：小型 、微型自动挡载客汽车等。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">居住证办理方法：找学校相关部门开“住宿证明”，带上证明和身份证原件去学校所在的辖区派出所办理暂住证，工本费10元。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">二、机动车驾驶证申请年龄条件：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"> 机动车准驾车型 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 年龄条件&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">1 大型客车（A1） &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:16px;line-height:2;\"> 26-50周岁&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2 牵引车（A2） &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:16px;line-height:2;\">&nbsp; 24-50周岁&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3 大型货车（B2）</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; &nbsp;城市公交车（A3） &nbsp; &nbsp; &nbsp; 20-50周岁&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4 中型客车（B1） &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-size:16px;line-height:2;\">&nbsp;21-50周岁&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5 小型汽车（C1）</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; &nbsp;小型自动档汽车（C2） &nbsp;18-70周岁&nbsp;</span><br />\n<div style=\"white-space:nowrap;\">\n	<br />\n</div>', '28', '1486694458', '1491598264', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('24', '17', '合肥七七学车做到让教练增加收入，让学员减少开支', '合肥学车、肥东驾考、肥西考场', '七七学车、合肥新考场、考试中心', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170210132910_15142.png', null, '合肥驾考培训', '七七学车', 'http://www.77xueche.com/', '学员学车过程中遇到“吃拿卡要”的情况时有发生，影响十分恶劣，此种行为可能对驾校招生造成不良影响，但实际中，此类现象屡禁不绝。', '<span style=\"font-size:16px;line-height:2;\">学员学车过程中遇到“吃拿卡要”的情况时有发生，影响十分恶劣，此种行为可能对驾校招生造成不良影响，但实际中，此类现象屡禁不绝。几名业内资深人士告诉记者，主要还是一些不正规的驾校在扰乱市场。“一到驾考旺季，一些分校、黑驾校就出来扰乱市场，他们没有合理的管理系统，教练工资低，就很容易出现这种情况。”\n据了解，传统驾校教练的主要收入来源主要是基本工资、课时费、通过率奖金等,构成比例无法评估,即使是在同一区域的驾校这个比例也会有很大区别,但是一般注重质量的驾校在通过率奖金方面会有比较大的比重。而学员的学费主要由考试费,课时费两大部分,当然驾校在费用支出方面不仅仅是这些,包括车损油耗,水电网地租,教练工资,后勤开支,税务等等。\n综上可知，学员花了数千元学费，而教练得到的只是数百元的辛苦费，导致教练员教学积极性不高，而合肥七七学车深入市场考察，整合行业资源，摒弃传统学员报名必须通过驾校的方式，让学员直接对接教练，不但直接省去了很多中间成本，还提高了教练收入，提高了教练的教学积极性，让学员2到3个月拿证再也不是梦想，更大大的为学员节省了很多费用。没有驾校在中间赚差价，而且教练接送，就近学车，无需承担水电地租，教练赚最多的钱，学员花最少的钱。\n    七七学车致力于打造优良的学车环境，提高学车效率，避免传统学车过程中的种种问题，深得广大驾考学员的青睐，发展至今，已成功毕业多批学员，因其新颖的模式和良好的用户评价颇受媒体关注.</span>', '28', '1486704720', '1487601681', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('25', '17', '交通运输部就驾校管理规定公开征求意见', '', '', '0', '0', '', '0', null, '/file/uploads/image/201702/20170210143925_68066.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '交通部今日就《机动车驾驶员培训管理规定》(征求意见稿)公开征求意见。《意见稿》指出，从事机动车驾驶员培训经营业务需获得机动车驾驶员培训经', '<span style=\"font-size:16px;line-height:2;color:#000000;\">交通部今日就《机动车驾驶员培训管理规定》(征求意见稿)公开征求意见。《意见稿》指出，从事机动车驾驶员培训经营业务需获得机动车驾驶员培训经营许可，不得采取异地培训、恶意压价、欺骗学员等不正当手段开展经营活动，不得允许社会车辆以其名义开展机动车驾驶员培训经营活动；实行学时制，按照学时合理收费，明码标价。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">&nbsp; &nbsp; &nbsp; 《意见稿》指出，机动车驾驶员培训根据培训能力分为一级机动车驾驶员培训、二级机动车驾驶员培训和三级机动车驾驶员培训三类。从事一级机动车驾驶员培训的，所配备的教学车辆不少于80辆；从事二级机动车驾驶员培训的，所配备的教学车辆不少于40辆；从事三级机动车驾驶员培训的，所配备的教学车辆不少于20辆。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 《意见稿》明确，申请从事机动车驾驶员培训的，应当符合下列条件：取得企业法人资格，有健全的培训机构，有健全的管理制度，有与培训业务相适应的教学人员，有与培训业务相适应的管理人员，有必要的教学车辆，有必要的教学设施、设备和场地。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 其中，有与培训业务相适应的教学人员，需有与培训业务相适应的理论教练员和有与培训业务相适应的驾驶操作教练员。理论教练员应当具备以下条件：持有机动车驾驶证，具有汽车及相关专业中专以上学历或者汽车及相关专业中级以上技术职称，具有两年以上安全驾驶经历，熟练掌握道路交通安全法规、驾驶理论、机动车构造、交通安全心理学、常用伤员急救等安全驾驶知识，了解车辆环保和节约能源的有关知识，了解教育学、教育心理学的基本教学知识，具备编写教案、规范讲解的授课能力。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 驾驶操作教练员应当具备以下条件：持有相应的机动车驾驶证，年龄不超过60周岁，符合一定的安全驾驶经历和相应车型驾驶经历，熟练掌握道路交通安全法规、驾驶理论、机动车构造、交通安全心理学和应急驾驶的基本知识，熟悉车辆维护和常见故障诊断、车辆环保和节约能源的有关知识，具备驾驶要领讲解、驾驶动作示范、指导驾驶的教学能力。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 《意见稿》拟强调，在未取得机动车驾驶员培训许可证件前，任何单位或个人不得开展机动车驾驶员培训经营活动。机动车驾驶员培训机构应当将机动车驾驶员培训许可证件悬挂在经营场所的醒目位置，公示其经营类别、培训范围、收费方式、收费项目及标准、教练员、教学场地、投诉渠道等情况。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 机动车驾驶员培训机构应当在经营许可地开展培训业务，不得采取异地培训、恶意压价、欺骗学员等不正当手段开展经营活动，不得允许社会车辆以其名义开展机动车驾驶员培训经营活动。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 机动车驾驶员培训实行学时制，按照学时合理收取费用。培训机构按照提供的服务内容、服务标准等，制定学时单价收费标准，明码标价。建立以学员评价为主的服务质量监督和评价机制，健全驾驶培训投诉处理制度。应当与学员签订培训合同。建立学时预约制度，提供计时培训、计时收费、先培训后付费服务模式，并向社会公布。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">&nbsp; &nbsp; &nbsp; 机动车驾驶员培训机构应当按照全国统一的教学大纲进行培训。培训结束时，应当向考核合格的学员颁发《机动车驾驶员培训结业证书》，《结业证书》由机动车驾驶员培训机构按照全国统一式样印制并按学员公民身份号码进行编号。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 此外，参加机动车驾驶员培训的人员，在报名时应当填写《机动车驾驶员培训学员登记表》，并提供身份证明及复印件。报名人员应当对所提供材料的真实性负责。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 同时，《意见稿》指出，省级道路运输管理机构应当建立机动车驾驶员培训机构质量信誉考核体系，制定机动车驾驶员培训监督管理的量化考核标准，并定期向社会公布对机动车驾驶员培训机构的考核结果。质量信誉考核应当包括培训机构的基本情况、教学大纲执行情况、《结业证书》发放情况、《培训记录》填写情况、教练员的质量信誉考核结果、培训业绩、考试情况、不良记录等内容。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"> 道路运输管理机构应当建立健全信息公开和投诉处理制度，公开投诉渠道和方式，公布机动车驾驶员培训机构培训质量、服务质量、学员投诉处理等信息。</span><br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"></span><br />\n<p>\n	<br />\n</p>', '13', '1486708799', '1491602494', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('26', '17', '交规考试通关秘籍之高速、能见度', '', '', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211095708_44637.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '交规考试中要记忆的部分比较多，很多学员面对一大串的数字就昏了头脑，今天小编就给大家总结出了交规考试的五大通关秘籍，那些还在为考试而烦恼', '<span style=\"font-size:16px;color:#000000;line-height:2;\">交规考试中要记忆的部分比较多，很多学员面对一大串的数字就昏了头脑，今天小编就给大家总结出了交规考试的五大通关秘籍，那些还在为考试而烦恼的学员赶快来“一饱眼福”吧！</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">通关秘籍二、题目中若出现有：“……高速……能见度……”这五个字的，200全选60、100全选50、50全选20，要参加理论考试的学员们看清楚了哦！</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">实例：(1).机动车在高速公路上行驶遇雾天等气象，能见度小于100米时，与同车道前车保持______以上的距离。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、100米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、50米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、40米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、30米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(2).机动车在高速公路上行驶，遇雨天等气象，能见度小于100米时，与同车道前车保持______以上的距离。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、30米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、40米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、50米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、100米</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(3).机动车在高速公路上行驶，遇冰雹天等气象，能见度小于200米时，车速不得超过每小时______。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、100公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、90公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、80公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、60公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(4).机动车在高速公路上行驶，遇沙尘天等气象，能见度小于200米时，车速不得超过每小时______。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、60公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、80公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、90公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、100公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(5).机动车在高速公路上行驶，遇雪天等气象，能见度小于50米时，车速不得超过每小时______。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、20公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、40公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、50公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、60公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(6).机动车在高速公路上行驶，遇雾天等气象，能见度小于50米时，车速不得超过每小时______。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、60公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、40公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、20公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、50公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(7).机动车在高速公路上行驶，遇雨天等气象，能见度小于50米时，车速不得超过每小时______。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">A、60公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">B、50公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">C、40公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">D、20公里</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(8).机动车在高速公路上行驶，遇雨天等气象，能见度小于50米时，车速不得超过每小时40公里。（错）</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(9).机动车在高速公路上行驶，遇雪天等气象，能见度小于50米时，车速不得超过每小时30公里。（错）</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(10).机动车在高速公路上行驶，遇沙尘等气象，能见度小于50米时，车速不得超过每小时50公里。（错）</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">(11).机动车在高速公路上行驶，遇有冰雹等气象，能见度小于50米时，车速不得超过每小时20公里，并从最近的出口尽快驶离高速公路。</span><br />', '1', '1486778231', '1486778237', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('27', '17', '报考驾照前，你需要准备什么？', '', '', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211103007_81203.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车-驾校报名', 'http://www.77xueche.com/', '现在驾驶证跟身份证一样都成了一个必不可少的一个证书，那么我们在报考驾照之前需要做什么准备工作?下面看看驾考宝典的小编给大家好好介绍一下考', '<span style=\"font-size:16px;line-height:2;color:#000000;\">现在驾驶证跟身份证一样都成了一个必不可少的一个证书，那么我们在报考驾照之前需要做什么准备工作?下面看看驾考宝典的小编给大家好好介绍一下考驾驶证之前必须要什么!</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>第一步：自身条件要对照</strong></span><br />\n<br />\n<p>\n	<span style=\"font-size:16px;line-height:2;color:#000000;\">只要年龄在18岁以上，70岁以下，四肢健全、身心健康即可申领小型汽车驾驶执照，也即大家常说的C1证。详细地讲，申领驾驶证的身体条件对年龄、身高、视力、辨色力、听力、上肢、下肢、躯干、颈部都有相应规定。</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211102636_36710.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;color:#000000;\">大家可以从所在地车管所网站下载《机动车驾驶人身体条件证明》表格，到所在地县级或者部队团级以上医疗机构参加体检，体检合格后即可到驾校报名考试，报名时还需要准备近期白底一寸免冠照片4张及相应电子版照片，以便采集人像信息。对于非居住地户籍的朋友来说，需要到暂住地辖区派出所开暂住证明，之后才可以办理驾驶证申领业务。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">目前，为了方便和服务考生，很多驾校将医疗机构请到驾校为考生体检，人像采集也多是在驾校完成。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>第二步：考试流程要知道</strong></span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201702/20170211102656_10246.jpg\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;color:#000000;\">其实考试流程就是学车流程，学车流程按考试顺序科目一、科目二、科目三、科目四依次进行，前一科目考试合格后则进行下一科目的学习和练习;某科目考试不合格，继续该科目考试。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目一：主要考核道路交通安全法律法规、交通信号、通行规则等最基本的知识。考试时间45分钟，试卷由判断题和单选题构成，共100道，满分100分，90分合格。</span><br />\n	<div style=\"text-align:center;\">\n		<img src=\"/file/uploads/image/201702/20170211102719_31099.jpg\" alt=\"\" style=\"line-height:1.5;\" /><span style=\"font-size:16px;line-height:2;\"></span>\n	</div>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;color:#000000;\">科目二(场考)：小型汽车场地考试共5项，倒车入库、坡道起步和定点停车、侧方停车、曲线行驶、直角转弯。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目三(路考)：道路驾驶技能考试。基本项目有16项，包括上车准备、起步、直线行驶、变更车道、通过路口、靠边停车、通过人行横道线、通过学校区域、通过公共汽车站、会车、超车、掉头、夜间行驶、加减挡位操作、路口左转弯、路口右转弯。小型汽车考试里程不少于3公里。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四：安全文明驾驶常识考试。试卷由50道题目组成，题目以案例、图片、动画等形式为主，题型为判断题、单项选择题和多项选择题，满分100分，90分合格。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>第三步：选择驾校很重要</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">在报名时，大家最关心的往往是价格问题。驾考报名费不同地区差别很大，但同一地区的价钱都差不多，在行业内都是透明的，所以在申领驾驶证之前，结合自己的时间和居住区域，选择一所适合的驾校就成了重中之重。只有通过正规、系统的学习才能让您真正掌握驾驶技能，也会直接影响到您今后良好驾驶习惯的养成。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">在报名时，一定要对驾校进行实地了解，多看几所驾校，看驾校是否具备相关培训资质、硬件设施是否齐全、是否具有一定的场地规模、是否有自己的考务中心等，这些都是衡量一家驾驶员培训机构正规与否的标准。一些场地小、设施不全、资质不全的驾校，建议大家不要图便宜而去选择报名，以免损害自己的利益。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>第四步：多长时间拿驾照?</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">通常体检10天后，方可预约科目一;科目一通过10天后方可预约科目二;一般情况下科目一与科目三间隔时间为30天，也即，从通过考科目一当天开始计算，30天左右才可预约科目三的考试;科目三考试通过后即可预约科目四的考试。如果整个考试过程顺利的话，从科目一考试算起，再加上报名、体检、理论学习等时间，最快40天左右就可以拿到驾照。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>第五步：多练多学无捷径</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">很多人在考驾照时，总想找个熟人免考或代考，这是行不通的。不论是谁，必须通过严格的考试才能拿到驾驶证。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">目前大部分地区已完全实现从科目一到科目四的电脑自动化评判，并且使用了公安部的考试监管系统，对考试全程进行音视频监控。安装了这些系统，并非考驾照更难了，而是更加规范了，自动化使驾驶人考试更加公开、公平、公正。</span><br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"></span>\n</p>', '1', '1486780223', '1486780264', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('28', '17', '科目一：开车遇到突发状况的处理常识', '合肥驾校-合肥学车-合肥驾校报名-肥东学车', '合肥驾校-合肥学车-合肥驾校报名-肥东学车', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211103407_29681.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '开车时难免会遇到突发状况，那么如果碰巧遇到这些突发状况该怎么办呢？今天小编就来讲一讲爆胎、自燃以及事故现场的紧急救护措施，希望大家能认', '<span style=\"font-size:16px;line-height:2;color:#000000;\">开车时难免会遇到突发状况，那么如果碰巧遇到这些突发状况该怎么办呢？今天小编就来讲一讲爆胎、自燃以及事故现场的紧急救护措施，希望大家能认真学习。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>如何应对爆胎？</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">在车辆爆胎时，首先要紧握方向盘，不管车头向哪偏，给一个固定的纠正角度并用力保持，同时不要采取紧急制动，让减速行为掌握在受控制的过程中，并努力保持原来的行车轨迹，切忌急打方向盘纠正。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>造成爆胎的原因</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">在车辆爆胎时因胎径及摩擦系数的不同，车辆的运行轨迹将偏向爆胎方向，爆左前轮向左偏，爆右前轮向右偏，而司机在打方向纠正时，指向性能反映在已爆胎车辆上是有一个迟缓性的，加之因爆胎造成的慌乱，常常造成纠正过度，从而人为加剧车辆的失控。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>如何应对车子自燃？</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">1、如果通过车窗及后视镜看到烟雾后应立即停车检查，最好将车停到避风的地方。这是因为车子自燃一般都会有前兆，开始仪表台或空调出风口可能会冒黑烟、有焦味，但在车前部一般是看不到的。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">2、如果发动机舱内已经起火，可将前机舱盖拉开一条小缝，再用灭火器对准起火点全力喷射。切记不要莽撞打开机舱盖灭火，因为此时前机舱盖温度高达数百摄氏度，极易烫伤手，而且机舱盖打开后大量氧气涌入，很可能导致火势瞬间增大。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">3、如果着火面积大，又无灭火器材，火情危及车上货物时，应在扑救的同时，迅速把货物从车上卸下。</span><br />\n<br />\n<span style=\"font-size:18px;line-height:2;color:#000000;\"><strong>事故现场救护小常识</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">在事故发生现场，若有人员伤亡，应注意以下三点：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">1、在没有确定伤者伤情的情况下，最好不要轻易移动伤员，否则他断裂的肋骨可能就是在你的“帮助”下才插入心脏或动脉。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">2、如果伤者四肢大出血，你可以在他出血肢体靠近心脏端的关节上方，用鞋带或腰带扎紧止血。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">3、及时报警。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">温馨提示：开车时万一遇到以上情况，不要慌张，一定要尽量保持镇定，才能作出正确的反应及处理。</span><br />', '2', '1486780467', '1486883642', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('29', '17', '这些交通标志，你认识多少？', '合肥驾校-合肥学车-合肥驾校报名', '合肥驾校-合肥学车-合肥驾校报名', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211104308_77499.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '平时开车，总能看到无论是地下还是地上的很多交通标识，虽然平时开车见多了。但是很多人并不认识！今天就来给大家说说这些！\n来，先看看这个，认', '<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">平时开车，总能看到无论是地下还是地上的很多交通标识，虽然平时开车见多了。但是很多人并不认识！今天就来给大家说说这些！</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211103718_94899.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">来，先看看这个，认识么？这个标志是“单行道”。很多人认识哈！但是肯定有人不认识，看看中枪没有！</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211103742_11137.jpg\" alt=\"\" /><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">这个和上面的相似，一个圆形，一个长方形！这种标志叫做，只准直行标识记住了，见着以后别拐弯！</span><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211103807_84735.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">这三个标识很相似！教大家一个小窍门来记住他们。看红色方格的走向，向上（第一个）两侧通行！右上角有个小红三角（第二个）右侧通行！右下角（第三个）有个小红三角，左侧通行！</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211103832_16205.jpg\" alt=\"\" /><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">上图中，左侧的代表禁止通行，包括机动车和非机动车，不包括人！右侧的图表示：禁止任何人、机动车、非机动车驶入。说白了就是，这地方别来！</span>\n</p>\n<p style=\"text-align:center;\">\n	<span style=\"font-size:16px;color:#000000;line-height:2;\"></span><img src=\"/file/uploads/image/201702/20170211103903_17818.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">这个线是什么意思？是这样，在虚线一侧的车辆，可以并道实线的一侧。但是，实线一侧的车辆，不可到虚线的一侧！</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211103938_71578.jpg\" alt=\"\" /><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211103959_21780.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">上图中，黄色的线在马路牙子上，这种线的意思是，这里不可以停车。这就意味着，马路牙子上，和旁边都不可以停车！那么什么情况下可以停车呢？</span><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211104104_62806.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">这种黄色和马路牙子颜色相间的，是可以临时停车的。但是记得，不可长时间停车哦！</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211104124_69188.jpg\" alt=\"\" /><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">这种菱形标志是什么意思呢？我相信大家都见过！路上并不少见这种标志！这种标志是，提醒您前方有人行横道，需要减速小心了！</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211104146_28640.jpg\" alt=\"\" /><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">看见上边的人行横道样子的线了么？那可不是人行横道！是高速公路上，方便汽车确认车距的线！高速公路是不允许行人上路的！</span><span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>', '1', '1486781015', '1486781047', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('30', '17', '科目四理论考试流程', '', '', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211105112_97973.png', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '七七学车报道：科目四，又称科目四理论考试、驾驶员理论考试，是机动车驾驶证考核的一部分。公安部123号令实施后，除了路考，增加了安全文明驾驶', '<span style=\"font-size:16px;line-height:2;color:#000000;\">七七学车报道：科目四，又称科目四理论考试、驾驶员理论考试，是机动车驾驶证考核的一部分。公安部123号令实施后，除了路考，增加了安全文明驾驶考试，俗称“科目四”，考量“车德”。科目四考试试卷由50道题组成，题目以案例、图片、动画等形式为主，满分100分，90分合格。以下是科目四考试的流程及注意事项。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">1、 驾校将考生《准考证》集中交考试录入员安排考试座位。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四注意事项一：驾校会帮助学员办理好，学员只需在候考大厅耐心等待驾校工作人员从考试录入员处拿到准考证后按次序进入考场考试即可。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">2、考试手持《身份证》、《准考证》依次派对入场验证身份。</span><br />\n<br />\n<p>\n	<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四：进入考场时，学员应当将随身携带的包交由同伴看管或寄存在门口小卖部处，并且一定要关闭手机，冬天应当摘下手套进入考场。</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211104821_58667.png\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;color:#000000;\">3、进入考场后，考生依据《准考证》上编好的座位号对号入座。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四注意事项三：考试学院入座后，先审核作为是不是自己的名字，然后点“确认”，看电脑左上方自己的“人头像”是否会摄入镜内，否则要自行调整好再进行考试。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">4、核对坐位考生姓名无误后，点击“确定”键开始考试，并且注意坐姿，调整好摄像镜头使人脸入境。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四注意事项四：曾经有考生因为没有入境导致科目一挂科，所以学员们在做题之前一定要看一眼是否摄像头能够完整拍摄到。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">5、遇有问题举手发言，考试员会帮助解决。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">6、有图的答题，可点击图画，图画会放大更清晰。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">7、做完题目后，点击“确定交卷”，看到考试分数后，自行从出口离场。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四注意事项五：通常情况下点击“确定交卷”后的分数就是科目一考试的分数了，不论及格(90分)与否都是不允许再修改了，如果不及格应该赶快与驾校工作人员联系尽快补考。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四是驾照考试的最后一项，许多由于同样是理论考试，许多考生误以为科目四和科目一没有差别。其实两者侧重点各有不同，科目四侧重安全知识，科目一侧重驾驶技巧和法规。</span><br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\"></span>\n</p>', '1', '1486781482', '1486781485', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('31', '17', '科目四技巧解析-合肥驾校合肥学车', '合肥驾校-合肥学车-合肥驾校报名', '合肥驾校-合肥学车-合肥驾校报名', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211105719_41917.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '七七学车报道：学车有多折磨人想必只有经历过的人才深有体会，而那些还在考驾照阶段的人则无疑是处在水深火热之中。而且，随着近年的一次改革，', '<span style=\"font-size:16px;line-height:2;color:#000000;\">七七学车报道：学车有多折磨人想必只有经历过的人才深有体会，而那些还在考驾照阶段的人则无疑是处在水深火热之中。而且，随着近年的一次改革，驾考在原有基础之上又增加了被称为科目四的一项，这无疑给驾考的小伙伴们又增加了难度。不过好在这最后的一道关卡并不太难，只要踏过这道门，你就是一名合格的驾驶人了 。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">考试内容与形式</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">根据公安部公布的123号令，在原科目三道路驾驶技能考试之后，将增加一项考试内容，即安全文明驾驶常识考试。作为科目三考试的一部分，看起来是个新项目，其实不过是将原科目一中有关安全文明驾驶要求、复杂条件下的安全驾驶技能以及紧急情况下的临危处置等知识单列出来，以灵活多变、客观实用的题型，检验诸位准驾驶人的安全文明意识，目的在于提醒广大驾驶人注意文明驾车、安全行车，如图5-69所示。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">考核内容包括&nbsp;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">安全文明驾驶操作要求、恶劣气象和复杂道路条件下的安全驾驶知识、爆胎等紧急情况下的临危处置方法以及发生交通事故后的处置知识等。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">整个考试共50道题，与科目一理论考试一样，也是在计算机上进行，如图5-70所示。题目多以案例、图片、动画等形式为主，题型有判断题、单项选择题和多项选择题三种。规定满分为100分，若达到90分即为合格。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">与其他考试科目的不同点在于安全文明驾驶常识考试可以无限次进行，即考试不合格的，可以直接申请补考，已通过的道路驾驶技能考试成绩仍然有效。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四学习技巧</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">(1)结合平常的练车实践学习</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">“纸上得来终觉浅，绝知此事要躬行”，理论学习如此，安全文明驾驶常识学习更是如此。其实，增设该项考试的初衷，就是为了增强我们的安全行车意识和行为，确保安全行车。那么，还有什么妙招比在实际的行车途中更能够理解安全文明行车方式的呢?不论从哪方面来说，实时实地实景的驾驶活动，都是我们成长的最好课堂。问题仅仅在于，我们如何在平常的练车活动中，多一份发现，多一份留意，将枯燥的理论与鲜活有趣的实践相结合，寓学习于乐境。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">(2)结合做题来的学习</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">虽然说，现在不再对外公开题库，题型也更多样，更加侧重实际应用。或许，做题不再像过去那般“立竿见影”，但并不意味着做题就变得徒劳无功、一无是处了。其实，无论什么时候，也不论考试形式如何变化，做题总是我们在有限的时间里学习的捷径和妙法。自以为记熟记透的知识内容需要做题来检验、巩固，没有涉及或遗漏的知识点需要做题来发现、搜寻，等等。通过做题，我们可以更好地巩固已有的知识，更好地发现自己的不足之处，从而更有效率地学习。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">科目四应试技巧</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">常言道：事有三做，巧做为妙。即便题型灵活多样，难以把握规律，好似“老鼠拉龟，无处下手”，但并不是说就没有技巧了。只要善于发现，细心总结，技巧的大门将一直敞开。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">(1)谨记原则，安全第一</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">既然是安全文明常识考试，当然事关安全了。那么，答题的第一原则，就是安全。其实，很多题型看起来复杂，着落点仍不出“安全”二字。所以，当我们面对琢磨不定的题型时，如果能够从安全角度去考虑的话，或许就可以拨开迷雾，找到正确答案了。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">(2)通读题目，把握题旨</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">考试题型里，有很多案例陈述题，一般只有将整题通读完毕，才能完全把握题意，从而作出判断、选择。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">(3)合理推断，稳重求胜</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">有时候，可能遇到自己没弄懂或对题意含糊的题型。这时，可以尝试从不同角度提出多种可能的选择，然后根据常识进行合理地推断，逐条排除情理不通或有疑问的选项.选择看来最可信的答案。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;color:#000000;\">小编说：科目四是驾考的最后一关，大家不要以为是理论考试，考不过可以无限次数的免费补考而不重视。到了这一关，你就真的离驾照只有一步之遥了，我相信大家都是非常渴望拿到驾照然后开车上路，也恨不得拿本本出去嘚瑟了。所以，加油吧!科目四不难，只要认认真真看书，多做做习题就很容易通过的。</span><br />', '1', '1486781841', '1486781846', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('32', '17', '科目四模拟考试多少分及格', '合肥学车-合肥驾校-合肥驾校报名', '合肥学车-合肥驾校-合肥驾校报名', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211132844_94247.png', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '七七学车报道：驾照考试中的模拟考试包括科目一和科目二，普通考生对于科目一的内容和考试标准较为熟悉，而对科目四则相对陌生。所以，有些网友', '<span style=\"font-size:16px;color:#000000;line-height:2;\">七七学车报道：驾照考试中的模拟考试包括科目一和科目二，普通考生对于科目一的内容和考试标准较为熟悉，而对科目四则相对陌生。所以，有些网友专门咨询驾考宝典：科目四多少分才算及格呢?回答这个问题，首先得知道科目四都考些什么东西。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">科目四考试内容：</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、根据所考的驾照类型从相应的科目四考试题库中按比例抽取50道题进行答题，小车类驾照从800题中抽取，大车类驾照从1023题中抽取，每题2分。</span><br />\n<br />\n<br />\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">2、考试时间为30分钟，答题过程中错12分(6道题)即终止本场考试。</span>\n</p>\n<p style=\"text-align:center;\">\n	<img src=\"/file/uploads/image/201702/20170211132736_64370.png\" alt=\"\" />\n</p>\n<p>\n	<span style=\"font-size:16px;color:#000000;line-height:2;\">3、考试题型分单选题(包括对错题)、多选题，前45题为单选题，最后5题为多选题。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、考试题目包括动画题、图片题、情景识别题、文字叙述题。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">科目四考试合格标准：</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">90分合格</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">由此可见，科目四和科目一一样，都要90分以上才算及格。只是考试内容一个偏重考试交通标识和法规，一个考核安全驾驶规范。</span><br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\"></span>\n</p>', '4', '1486790926', '1491631998', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('33', '17', '驾照考试科目四需要注意事项', '合肥驾校-合肥学车-合肥驾校报名', '合肥驾校-合肥学车-合肥驾校报名', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211135233_50252.jpg', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '七七学车报道：\n1、科目四考试需遵守考场纪律。有人候考时喧哗，直接给赶出了考场，取消当天的考试资格。\n2、服从工作人员安排，有事举手，不懂就', '<span style=\"font-size:16px;color:#000000;line-height:2;\">七七学车报道：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、科目四考试需遵守考场纪律。有人候考时喧哗，直接给赶出了考场，取消当天的考试资格。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、服从工作人员安排，有事举手，不懂就问考官，不要怕。有人指纹录不上不敢问，结果考官一生气直接走人。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、坐下后首先核对考生信息，发现与自己不符要查看是不是自己的坐位，如果不是应该再找自己的正确位置，如果座位正确，信息错误要立即报告。有人做了15个题发现不是自己的，结果两个人同时不合格。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、调整摄像头位置，对准自己脸部及胸部的上1/3处。有人对着头顶，考了100分也不合格。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">5、开始考试要尽快熟悉那个考试专用的小“键盘”，防止点错。尤其是动画题，太快。有个切换键会锁定系统，别点上了!</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">6、科目四考试做题时要观察好关键词如“迅速”、“不正确的是”、“错误的是”、“可以”、“方可”、“仅可”、“首先”等，然后根据题意选择。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">7、答案顺序调整。有的人上来看是熟悉的题，直接选择，结果就会出错，因为答案的顺序可能会模拟时不同。有一题是有几种违法行为，按正常应该是“一、二、三、四”的排，可是它却是“一、四、三、二”如果两种违法直接选B，铁定完蛋。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">8、多选题防止漏选项，要一个一个条件的看，比如给定人数，要看是否超员;给出速度，要看是否超速;特别有一个给出A2照，驾驶大型卧铺，这是 驾照与车型不符，特别容易搞错。看清楚，一个条件一个条件筛选。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">9、做题不要着急，检查之后再进行下一题，错误之后不能再修改。如果要看动画，就不要先选答案。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">10、确实有新题，但很少，只要认真做，肯定能过，都不太难，关键是要认真、细心。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">11、还有一点，科目四要多做习题，基本上都是原题，不多说，你懂的!</span><br />', '5', '1486792355', '1491609010', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('34', '17', '科目四考试答题技巧', '合肥驾校-合肥学车-合肥驾校报名', '合肥驾校-合肥学车-合肥驾校报名', '0', '0', '', '0', null, '/file/uploads/image/201702/20170211135545_96083.png', null, '七七学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '七七学车报道：科目四的答题方法和科目一是一样的，科目一是怎样通过的，科目四也一样。下面和小编来看看!\n一、 对错\n对的：\n1、不准你做的事情都', '<span style=\"font-size:16px;color:#000000;line-height:2;\">七七学车报道：科目四的答题方法和科目一是一样的，科目一是怎样通过的，科目四也一样。下面和小编来看看!</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">一、 对错</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">对的：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、不准你做的事情都是对的(不准、不得、不应、不能、严禁、紧止、应当)</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、让对方先走的都是对的(减速让行、停车让行、礼让通行、减速避让)</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、慢的都是对的(缓慢通过、减速、平稳、逐渐、慢慢通过、将速度降低、匀速下降)</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">4、观察的都是对的(提前观察、仔细观察、认真观察、瞭望)</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">5、安全的都是对的(间断轻踏、保证安全、确保安全、安全通过)</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">错的：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">6、不听话的都是错的(只要、可、可以)</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">7、快的都是错的(立即、直接、加速通过、迅速通过、急打方向盘、猛打方向盘、迅速向左右躲避、紧急制动)</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">二、灯光使用：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">开启远光灯的全是错的，有危险警报闪光灯的全对，进入高速开左转向灯，驶离高速开右转向灯，“进环岛不开灯，驶离环岛开右转向灯”</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">三、上下坡制动：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">下坡提前，上坡推迟。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">上下坡会车：下坡让上坡(如果?下坡车行驶到一半路程了，上坡让行)</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">四、车轮侧滑问题：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">前车轮侧滑往相反方向打转向，后车轮侧滑往相同方向打转向，总结就是前反后同，如果题目没说前后轮，都当后轮侧滑算。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">五、动画题：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">动画4、5、6选三种违法行为，动画1、2、3、7、8选两种违法行为</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">六、ABS防抱死系统：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">具有保持转向能力，可用力踏制动踏板，紧急制动的同时转向会发生侧滑，制动距离不会缩短和延长</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">未安装ABS系统要轻踏或间歇踩踏制动</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">转向助力装置出现问题不能继续行驶 需停车检查原因</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">七、同向只有1、2条机动车道停车等待，3条车道可以缓慢通过无需等待.</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">八、有障碍让无障碍方，靠山让不靠山的先走.</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">路口50米内不得变更车道</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">九、行车制动踏板：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">脚刹车</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">驻车制动：手刹车</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">发动机制动：低档行驶</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">加速踏板：油门</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">十、交警手势：</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">交警脸看向你有三种情况，</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">1、正面看你左手平举-停车，正面看你右手平举上下摆动-减速慢行，</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">2、交警脸转左侧看你-左转弯，</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">3、交警脸转右侧看你-右转弯。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">交警脸看左右车道不看你时-停车等待。</span><br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">交警脸看左边车道且左手上下摆动-左转弯待转</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;color:#000000;line-height:2;\">以上是科目四的答题技巧，希望您能快速学以致用，通过考试。顺利拿到驾照!在今后的生活中要记得，安全第一!</span><br />', '8', '1486792546', '1486881522', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('35', '17', '揭秘坡道定点停车的技巧', '合肥学车-肥东驾考-肥西学车', '合肥驾校-肥东学车报名-合肥练车考试', '0', '1', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170104093428_17283.jpg', null, '合肥驾考', '七七学车', 'http://www.77xueche.com/', '揭秘：科目二考试中坡道定点停车与起步项目相对来说较容易，但是我们很多学员在考试中定不好点而且容易溜车，起步易熄火。最重要的是如何对线找', '<span style=\"font-size:16px;line-height:2;\">揭秘：科目二考试中坡道定点停车与起步项目相对来说较容易，但是我们很多学员在考试中定不好点而且容易溜车，起步易熄火。最重要的是如何对线找点?</span><br />\n<span style=\"font-size:16px;line-height:2;\">停不准。这也和离合的控制有很大的关系，需要学员保持匀速爬坡，期间坐姿要端正，以正确找到刹车点。</span><br />\n<span style=\"font-size:16px;line-height:2;\">提前减速控制车速定点停车时，要考虑到车与线的距离，在距离停车线时及早停车。大多数过来人都在停车线10米左右就开始利用离合器开始减速。“当要到停止线时，就对离合器多踩点就走得更慢了，如果力不够就抬点，此时右脚一定要放在刹车上，眼睛瞄准停止线，一到达停止线，就踩住刹车离合停下。如果发现有点往后溜车就立即踩住刹车，拉住手刹。这样保证停车非常标准也不会错位。此方法是学院多次考试的经验总结，利用这种方法，离合一定要控制好，油门一定要跟，这样往上走的动力就肯定有，就不容易熄火和溜车了。”</span><br />\n<span style=\"font-size:16px;line-height:2;\">踩定刹车一脚停车的方法在日常训练中也有不少 驾校采用。此方法最重要是的对刹车踩死时车子惯性导致前移距离的把握。很多教练会让学员用车内副驾驶的车把手作为参照物，以对准定点停车线。主要看教练定的点在哪，在车子行驶中把手距离即将达到停车线之间，同时踩下离合器和脚刹，就能一脚定在线上。不过此方法需要多练习，常估计。只要把握对了，就能通过。</span><br />', '19', '1486881472', '1486882172', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('36', '17', '科目四技巧解析', '合肥学车、肥东驾考、肥西考场', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142957_56359.jpg', null, '合肥学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '报道：学车有多折磨人想必只有经历过的人才深有体会，而那些还在考驾照阶段的人则无疑是处在水深火热之中。而且，随着近年的一次改革，驾考在原', '<span style=\"font-size:16px;line-height:2;\">报道：学车有多折磨人想必只有经历过的人才深有体会，而那些还在考驾照阶段的人则无疑是处在水深火热之中。而且，随着近年的一次改革，驾考在原有基础之上又增加了被称为科目四的一项，这无疑给驾考的小伙伴们又增加了难度。不过好在这最后的一道关卡并不太难，只要踏过这道门，你就是一名合格的驾驶人了 。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 考试内容与形式</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 根据公安部公布的123号令，在原科目三道路驾驶技能考试之后，将增加一项考试内容，即安全文明驾驶常识考试。作为科目三考试的一部分，看起来是个新项目，其实不过是将原科目一中有关安全文明驾驶要求、复杂条件下的安全驾驶技能以及紧急情况下的临危处置等知识单列出来，以灵活多变、客观实用的题型，检验诸位准驾驶人的安全文明意识，目的在于提醒广大驾驶人注意文明驾车、安全行车，如图5-69所示。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 考核内容包括</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 安全文明驾驶操作要求、恶劣气象和复杂道路条件下的安全驾驶知识、爆胎等紧急情况下的临危处置方法以及发生交通事故后的处置知识等。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 整个考试共50道题，与科目一理论考试一样，也是在计算机上进行，如图5-70所示。题目多以案例、图片、动画等形式为主，题型有判断题、单项选择题和多项选择题三种。规定满分为100分，若达到90分即为合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 与其他考试科目的不同点在于安全文明驾驶常识考试可以无限次进行，即考试不合格的，可以直接申请补考，已通过的道路驾驶技能考试成绩仍然有效。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 科目四学习技巧</span><br />\n<span style=\"font-size:16px;line-height:2;\"> (1)结合平常的练车实践学习</span><br />\n<span style=\"font-size:16px;line-height:2;\"> “纸上得来终觉浅，绝知此事要躬行”，理论学习如此，安全文明驾驶常识学习更是如此。其实，增设该项考试的初衷，就是为了增强我们的安全行车意识和行为，确保安全行车。那么，还有什么妙招比在实际的行车途中更能够理解安全文明行车方式的呢?不论从哪方面来说，实时实地实景的驾驶活动，都是我们成长的最好课堂。问题仅仅在于，我们如何在平常的练车活动中，多一份发现，多一份留意，将枯燥的理论与鲜活有趣的实践相结合，寓学习于乐境。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> (2)结合做题来的学习</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 虽然说，现在不再对外公开题库，题型也更多样，更加侧重实际应用。或许，做题不再像过去那般“立竿见影”，但并不意味着做题就变得徒劳无功、一无是处了。其实，无论什么时候，也不论考试形式如何变化，做题总是我们在有限的时间里学习的捷径和妙法。自以为记熟记透的知识内容需要做题来检验、巩固，没有涉及或遗漏的知识点需要做题来发现、搜寻，等等。通过做题，我们可以更好地巩固已有的知识，更好地发现自己的不足之处，从而更有效率地学习。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 科目四应试技巧</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 常言道：事有三做，巧做为妙。即便题型灵活多样，难以把握规律，好似“老鼠拉龟，无处下手”，但并不是说就没有技巧了。只要善于发现，细心总结，技巧的大门将一直敞开。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> (1)谨记原则，安全第一</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 既然是安全文明常识考试，当然事关安全了。那么，答题的第一原则，就是安全。其实，很多题型看起来复杂，着落点仍不出“安全”二字。所以，当我们面对琢磨不定的题型时，如果能够从安全角度去考虑的话，或许就可以拨开迷雾，找到正确答案了。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> (2)通读题目，把握题旨</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 考试题型里，有很多案例陈述题，一般只有将整题通读完毕，才能完全把握题意，从而作出判断、选择。</span><br />\n<span style=\"font-size:16px;line-height:2;\"> (3)合理推断，稳重求胜</span><br />\n<span style=\"font-size:16px;line-height:2;\"> 有时候，可能遇到自己没弄懂或对题意含糊的题型。这时，可以尝试从不同角度提出多种可能的选择，然后根据常识进行合理地推断，逐条排除情理不通或有疑问的选项.选择看来最可信的答案。小七说：科目四是驾考的最后一关，大家不要以为是理论考试，考不过可以无限次数的免费补考而不重视。到了这一关，你就真的离驾照只有一步之遥了，我相信大家都是非常渴望拿到驾照然后开车上路，也恨不得拿本本出去嘚瑟了。所以，加油吧!科目四不难，只要认认真真看书，多做做习题就很容易通过的。</span>\n<p>\n	<span style=\"font-size:16px;line-height:2;\">七七学车合肥中心整理发布</span>\n</p>', '19', '1486882160', '1486882260', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('37', '17', '科目三考试内容及合格标准', '合肥学车、肥东驾考、肥西考场', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170106110820_48938.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '小编导语：C1科目三考试内容及合格标准是什么，是很多学员关心的问题。通过科目三考试内容及合格标准的讲解，能够让大家对于科目三考试内容以及', '<span style=\"font-size:16px;line-height:2;\">小编导语：C1科目三考试内容及合格标准是什么，是很多学员关心的问题。通过科目三考试内容及合格标准的讲解，能够让大家对于科目三考试内容以及科目三合格标准有一个比较深入的了解。这样一来更有利于通过考试。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(一)科目三考试内容上车准备</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、不绕车一周检查车辆外观及安全状况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、打开车门前不观察后方交通情况，不合格。(二) 科目三考试内容起步</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、制动气压不足起步，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、车门未关闭起步，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、起步前，未通过后视镜并向左方侧头，观察左、后方交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4、启动发动机时，变速器操纵杆未置于空挡(或者P挡)，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5、发动机启动后，不及时松开启动开关，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">6、不松驻车制动器起步，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">7、道路交通情况复杂时起步不能合理使用喇叭，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">8、起步时车辆发生闯动，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">9、起步时，加速踏板控制不当，致使发动机转速过高，扣5分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">10、启动发动机前，不调整驾驶座椅、后视镜、检查仪表，扣5分。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(三)科目三考试内容直线行驶</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、方向控制不稳，不能保持车辆直线运动状态，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、遇前车制动时不采取减速措施，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、超过20秒不通过后视镜观察后方交通情况，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4、不了解车辆行驶速度，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5、未及时发现路面障碍物，未及时采取减速措施，扣10分。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(四)科目三考试内容变更车道</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、变更车道前，不通过内、外后视镜观察后方道路交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、变更车道时，判断车辆安全距离不合理，妨碍其他车辆正常行驶，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、连续变更两条以上车道，不合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(五)科目三考试内容通过路口</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、通过路口前未减速慢行，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、直行通过路口不观察左、右方交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、转弯通过路口时，未观察侧前方交通情况或未通过内、外后视镜观察侧、后方交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4、遇有路口交通阻塞时进入路口，将车辆停在路口内等候，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5、不按规定避让行人和优先通行的车辆，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">6、左转通过路口时，未靠路口中心点左侧转弯，不合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(六)通过人行横道线、学校区域和公共汽车站</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、不观察左、右方交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、不按规定减速慢行，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、遇行人通过人行横道不停车让行，不合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(七)会车</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、在没有中心隔离设施或者中心线的道路上会车时，不减速靠右行驶，并与其他车辆、行人或者非机动车未保持安全距离，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、会车困难时不让行，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、横向安全间距判断差，紧急转向避让相对方向来车，不合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(八)超车</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、超车前不通过内、外后视镜观察后方和左侧交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、超车时机选择不合理，影响其他车辆正常行驶，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、超车时未与被超越车辆保持安全距离，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4、超车后急转向驶回本车道，妨碍被超车辆正常行驶，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5、从右侧超车，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">6、当后车发出超车信号时，具备让车条件不减速靠右让行，扣10分。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(九)靠边停车</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、停车前，不通过内、外后视镜观察后方和右侧交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、停车后，车身超过道路右侧边缘线或者人行道边缘，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、停车后，在车内开门前不侧头观察侧后方和左侧交通情况，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4、停车后，车身距离道路右侧边缘线或者人行道边缘大于30厘米，扣20分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5、停车后，未拉紧驻车制动器，扣20分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">6、拉紧驻车制动器前放松行车制动踏板，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">7、下车后不关车门，扣10分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">8、下车前不将发动机熄火，扣5分;</span><br />\n<span style=\"font-size:16px;line-height:2;\">9、夜间在路边临时停车不关闭前照灯或不开启警示灯，扣5分。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(十)掉头</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、不能正确观察交通情况选择掉头时机，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、掉头地点选择不当，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、掉头时，妨碍正常行驶的其他车辆和行人通行，不合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\">(十一)夜间行驶</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、不能正确开启灯光，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">2、同方向近距离跟车行驶时，使用远光灯，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">3、通过急弯、坡路、拱桥、人行横道或者没有交通信号灯控制的路口时，不交替使用远、近光灯示意，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">4、会车时不按规定使用灯光，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">5、在路口转弯时，使用远光灯，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">6、超车时未变换使用远、近光灯提醒被超越车辆，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">7、对低能见度道路情况判断差，不合格;</span><br />\n<span style=\"font-size:16px;line-height:2;\">8、在有路灯、照明良好的道路上行驶时，使用远光灯，不合格。</span><br />\n<span style=\"font-size:16px;line-height:2;\">以上便是科目三考试所有考试项目以及合格的标准。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">七七学车合肥中心整理发布</span><br />', '26', '1486883290', '1486883584', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('38', '17', '科目三学车技巧', '合肥学车，合肥驾照，肥东驾照考试', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170209152226_19346.jpg', null, '合肥驾考培训', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '在实际道路的科目三训练中，方向不稳是不合格项，也就是路考中如果出现这种情况不是扣分的问题，是直接不合格，所以这个错误的操作一定要纠正过', '<span style=\"font-size:16px;line-height:2;\">在实际道路的科目三训练中，方向不稳是不合格项，也就是路考中如果出现这种情况不是扣分的问题，是直接不合格，所以这个错误的操作一定要纠正过来。那如何改正这个错误呢，我们来总结一下：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">一、车在道路上行驶时，学员们没有车感，也就是说发现车身歪斜的时机太晚，只有很明显的跑偏了，才发现问题，这时再修整很难避免车身的明显摇晃。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">解决的办法：在行驶中视线要尽量的向远处看，这样能尽早的感知车身与道路是否平行，视线越远，越能早发现问题。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">二、实际上车在行驶中，不可能一直跑直线的，因为受路面的影响，所以在我们发现车身有歪斜时，就需要修正方向了，学员们普遍的毛病是打方向过快过急了;这样修整方向的后果就是车辆产生明显的摇晃，不合格。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">解决的方法：当需要修整方向时，打方向要轻打慢回小角度的调整。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">三、在训练中还有的学员，在修整方向的时候角度太大了，总是矫枉过正。什么是矫枉过正：指把弯的东西扳正，又歪到了另一边。比喻纠正错误超过了应有的 限度。可能是科目二的训练有影响，在倒桩和场地项目中，我们打方向经常是打到底的，可是大家不要忘记了，那时的车速是多少，才几公里的有时还要踩离合来控 制车速，但是在路上行驶就不行了，这时的车速是几十公里。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">解决方法：车速较高时，修整方向的角度一定不要大了，是什么标准呢，和在高速公路行驶是一样的道理，两指或者三指原则，就是我们在打方向实际转动的距离在两个或者三个手指的宽度就可以了，不要再大了。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在道路上行驶学员们，普遍的现象是上车就害怕，不只是紧张了，因为看到路上人来车往的，这是我们操作不熟练的表现，所以大家在初期上路时出现各种各样的问题是正常的，也是合理的，发现了错误我们就改正，等能熟练的操作了，情况会变好的。祝大家练车顺利，考试成功。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '19', '1486884423', '1491614837', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('39', '17', '七七学车为你揭秘：科目三考试中典型的不合格操作', '合肥驾校-肥东驾考-肥西驾考', '七七学车-合肥学车-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170212153126_80003.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '很多人在考试的时候一个不小心就宣布考试结束，为此感到非常郁闷。 科目三考试中典型的不合格操作有哪些呢？下面详细说一说，大家一定要牢记。', '<span style=\"font-size:16px;line-height:2;\">很多人在考试的时候一个不小心就宣布考试结束，为此感到非常郁闷。 科目三考试中典型的不合格操作有哪些呢？下面详细说一说，大家一定要牢记。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、上车前不绕车一周检查车辆外观及周围环境</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、起步前，未观察内、外后视镜，未侧头观察后方交通情况</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、直线行驶过程中方向控制不稳，不能保持车辆直线行驶</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、变更车辆前，未通过内、外后视镜观察后方道路交通情况</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、停车前，不通过内、外后视镜观察后方和右侧交通情况</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6、停车后，在车内开门前不侧头观察侧后方和左侧交通情况</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">7、停车后，车身距离道路右侧边缘线或者人行道边缘大于750px</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">8、直行通过路口时不按规定减速或停车瞭望</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">9、左转通过路口时，未靠路口中心点左侧转弯</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">10、通过人行横道、学校、公共汽车站时不按规定减速慢行、不观察左、右方交通情况</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">11、超车前不通过内、外后视镜观察后方和右侧交通情况</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">12、超车后急转向驶回原车道，妨碍被超车辆正常行驶</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">13、掉头前未发出掉头信号</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">14、夜间行驶不能正确开启灯光</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">15、夜间通过急弯、坡路、拱桥、人行横道或者没有交通信号灯控制的路口时，不交替使用远近光灯示意</span><br />', '61', '1486884740', '1486895849', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('40', '17', '科三路考中最致命的八大致命问题', '合肥驾校-肥东驾考-肥西驾考', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170212153643_23208.jpg', null, '合肥驾考培训', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '科三路考中最致命的八大致命问题:\n1. 道路练习：在考试前都会在实际道路练习，并且会开车经过考试场地熟悉环境，因而在同教练学车的时候，需要及', '<span style=\"font-size:16px;line-height:2;\">科三路考中最致命的八大致命问题:</span><br />\n<span style=\"font-size:16px;line-height:2;\">1. 道路练习：在考试前都会在实际道路练习，并且会开车经过考试场地熟悉环境，因而在同教练学车的时候，需要及时请教起步规则、并线规则和注意事项，路口注意观察和控制车速，路况加减挡，平稳行驶，掉头、转弯等的灯光运用。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2. 考试流程：看好分组并乘车在考试车辆路边等候，上车路考，听清楚考官指示，回到出发点，由考官评分，及格后签字下车，约考科目四考试并取得驾照。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3. 起步细节：从驾驶门口处，逆时针绕车辆行走一周，回到驾驶门处（观察车辆状况，规定流程），开门进车，调整座椅并系好安全带，轻踩油门，以检查仪表正常，申请科目三考试。打左灯，并观察车后路况；挂1档，缓慢抬起离合以让车辆起步，轻踩油门以提高车速，根据路况加减档，以保证车辆既省时，又不影响其他车辆行驶。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4. 刹车运用：有很多科目三考生，对速度有恐惧感，总担心因为速度高而出问题，其实在控制车速上，记得松油门，轻踩刹车，即可解决问题，首先是多接触车辆，胆子锻炼的过程，其次就是路况应变知识和能力问题，遇事不乱，冷静处理问题即可。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5. 平稳驾驶技巧：在加档过程中，为了保证车辆行驶平稳，需要踩油门提速后，右脚只接触油门，然后踩离合，并依次加档，不可跳跃加档；同时踩油门加档会导致车辆不稳，比较手脚配合的时候教的稳定性低。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6. 路口及人行道特殊情况处理：路口会车及行人等影响因素多多，因而在过路口时，右脚需要悬空在刹车位置，培养提前预防的习惯，而眼睛需要观察两边路况。离合随时准备配合刹车而踩到底，方式车辆熄火，过路口，遵循不加速，适当减速，随机应变的好习惯。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">7. 转弯、掉头技巧：转弯根据路况，需要提前减速，大弯路一般2档速度通过即可；路况复杂需要减速、停车等候的，挂1挡，既能防止起步熄火，又有更多反应时间观察路口车辆状况，而后安全的通过。在掉头打方向盘的时候，注意及时回轮，以保证车辆直行。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">8. 靠边停车技巧：在即将回到出发点的时候，用离合、刹车控制好车速，用右方向灯注意提醒后面车辆，驾车人左腿对着路中间位置，则基本达到车距离路边750px左右距离。然后拉手刹，摘空档，完成考试及等待考官打分。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp;科目三到底考的什么？无非就是安全意识、操作能力、应变能力、心理素质。相比较科目二来说，也没有其复杂，技巧性的东西也不多，当然考试前肯定需要上车训练，熟悉它的整个内容，然后大部分就是要注意以上的细节，还有就是保持一个良好的心态！</span><br />', '215', '1486885287', '1491811805', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('41', '17', '科目三考试百米加减档操作步骤与技巧', '合肥驾校-肥东驾考-肥西驾考', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142440_44765.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '科目三的百米加减档对于新手来说并没那么容易，学员不仅要对教练车档位熟练掌握，更应该多多练习，以便轻松通过考试。\n考试操作分解步骤\n语音提', '<span style=\"font-size:16px;line-height:2;\">科目三的百米加减档对于新手来说并没那么容易，学员不仅要对教练车档位熟练掌握，更应该多多练习，以便轻松通过考试。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">考试操作分解步骤</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">语音提示前，应把档位至于一档，听到语音提示后：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">①踩油门[转速1500转(15迈)时]→②踩离合、松油门，换二档→③松离合、踩油门[当转速1500或25迈时]→④踩离合、松油门，换三档→⑤快松离合(不踩油门)→⑥[无需加油]踩离合，换四档→⑦快松离合、踩离合，换三档→⑧松离合[把速度降到20迈]→⑨踩离合，换2档→⑩慢松离合。</span><br />\n<span style=\"font-size:16px;line-height:2;\">要求150米内，加档是从1-2-3-4，减档是4-3-2。考试时的要求是转速不能超过 2000转，过程中要尽量保持车辆平稳，最好不能有较大震动感。换挡时，要在空挡停留一下(手不要抓住档位杆不放，要适当抬起--因为有感应器);松完离合后，脚要完全脱离离合，踩离合时要快速踩到底再挂档(有感应器)。</span><br />', '20', '1486904177', '1487224513', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('42', '17', '夜间灯光模拟考试内容及评分标准', '合肥驾校-肥东驾考-肥西驾考', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170212211524_43036.png', null, '合肥驾考培训', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '“模拟夜间行驶灯光使用”现在是路考的必考科目。夜间行驶灯光使用怎么考?夜间灯光使用考试内容包括哪些?夜间灯光考试评分标准怎样?\n1、发出“请', '<span style=\"font-size:16px;line-height:2;\">“模拟夜间行驶灯光使用”现在是路考的必考科目。夜间行驶灯光使用怎么考?夜间灯光使用考试内容包括哪些?夜间灯光考试评分标准怎样?</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、发出“请开启灯光”指令，未开启近光灯、示廊灯和后位灯的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、发出“请将近光灯变换成远光灯”指令，未变换或者变换错误的不及格;再发出“紧跟前车行驶”指令，未变换近光灯的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、发出“现在超车”指令，未交替使用远、近光灯提醒的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、发出“请变换成远光灯”指令，未变换或者变换错误的不及格;再发出“路口转弯”指令，未变换为近光灯的不及格;</span><br />\n<br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、发出“通过急弯、坡路、拱桥、人行横道，没有交通信号灯控制的路口”指令，未交替使用远、近光灯示意的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6、发出“请变换成远光灯”指令，未变换或者变换错误的不及格;再发出“与对方会车距来车近150米”指令，未变换为近光灯的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">7、发出“请变换成远光灯”指令，未变换或者变换错误的不及格;再发出“窄路、窄桥与非机动车会车”指令，未变换为近光灯的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">8、发出“雾天行驶”指令，未开启雾灯和报警闪光灯的不及格;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">9、发出“车辆发生故障或者交通事故，妨碍交通无法移动”指令，未开启危险报警闪光、示廊灯和后位灯的不及格。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">提醒：每条指令发出后，学员必须在8秒钟内做出相应操作。模拟夜间行驶灯光使用考试项目不得少于6项，其中第1、2、3项为必考，4、5、6、7项中选2项，8、9项中选1项考试。6项错一项考试不及格，当次考试终止。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '14', '1486905369', '1487475297', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('43', '17', '科目三路考方向盘不稳解决方法', '合肥学车，合肥驾照，肥东驾照考试', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142440_44765.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '在实际道路的科目三训练中，方向不稳是不合格项，也就是路考中如果出现这种情况不是扣分的问题，是直接不合格，所以这个错误的操作一定要纠正过', '<span style=\"font-size:16px;line-height:2;\">在实际道路的科目三训练中，方向不稳是不合格项，也就是路考中如果出现这种情况不是扣分的问题，是直接不合格，所以这个错误的操作一定要纠正过来。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">学员们为什么在开车时经常出现这个问题，已经在训练中如何改正，我们来总结一下：</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">一、车在道路上行驶时，学员们没有车感，也就是说发现车身歪斜的时机太晚，只有很明显的跑偏了，才发现问题，这时再修整很难避免车身的明显摇晃。解决的办法是：在行驶中视线要尽量的向远处看，这样能尽早的感知车身与道路是否平行，视线越远，越能早发现问题。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">二、实际上车在行驶中，不可能一直跑直线的，因为受路面的影响，所以在我们发现车身有歪斜时，就需要修正方向了，学员们普遍的毛病是打方向过快过急了;这样修整方向的后果就是车辆产生明显的摇晃，不合格。解决的方法是：当需要修整方向时，打方向要轻打慢回小角度的调整。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">三、在训练中还有的学员，在修整方向的时候角度太大了，总是矫枉过正。什么是矫枉过正：指把弯的东西扳正，又歪到了另一边。比喻纠正错误超过了应有的限度。可能是科目二的训练有影响，在倒桩和场地项目中，我们打方向经常是打到底的，可是大家不要忘记了，那时的车速是多少，才几公里的有时还要踩离合来控制车速，但是在路上行驶就不行了，这时的车速是几十公里。</span><br />\n<br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">解决方法</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">车速较高时，修整方向的角度一定不要大了，是什么标准呢，和在高速公路行驶是一样的道理，两指或者三指原则，就是我们在打方向实际转动的距离在两个或者三个手指的宽度就可以了，不要再大了。 在道路上行驶学员们，普遍的现象是上车就害怕，不只是紧张了，因为看到路上人来车往的，这是我们操作不熟练的表现，所以大家在初期上路时出现各种各样的问题是正常的，也是合理的，发现了错误我们就改正，等能熟练的操作了，情况会变好的。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '13', '1486905606', '1486905679', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('44', '17', '科目三路考注意事项', '合肥驾校-肥东驾考-肥西驾考', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170104094030_39599.jpg', null, '佚名', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '路考注意事项一：放松心态。驾驶员考试网提醒大家路考中常见的第一个问题就是路考时发挥失常，很多学员平时练的很好，考试的时候连侧方停车也停', '<span style=\"font-size:16px;line-height:2;\">路考注意事项一：放松心态。驾驶员考试网提醒大家路考中常见的第一个问题就是路考时发挥失常，很多学员平时练的很好，考试的时候连侧方停车也停不好，大饼一共6个压了4个，从来不碰的限宽门也碰了。这是因为心理紧张导致动作变形所至，因为紧张，手脚僵硬，思维麻木，容易忘记技术要领，转向灯也易忘。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span><br />\n<span style=\"font-size:16px;line-height:2;\">应对路考技巧：路考时大家要做到注意力集中，心态放松。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">路考注意事项二：有礼有节。路考时对待考官要有礼貌。考官上车，热情的问好，双手拿身份证和准考证递给考官，车子启动后，不要再跟考官讲话，否则，你就违反《交法》了，考官可以直接让你挂掉。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">应对路考技巧：驾驶员考试网提醒大家路考时不要太牛气，态度谦逊一些。曾经有个学员，路考时因为太牛气，所以他死了。开个玩笑，言归正传，这名学员在路考时侧方停车，车身不是很正，考官说：车身不正啊!并没有落笔要扣他分的意思，他很牛气的说：我觉得很正啊!考官立马火了，命令他下车，自己去看看，果然有点斜。上了车，也不道个谦，马上打左转向灯，起步，考官马上命令他掉头，考试结束。你知道为什么吗?他再上来的时候，忘系安全带了。总之，路考时考官可以决定你的生死，所以提醒大家的路考注意事项就是大家路考时别太牛，有些路考考官还是很好讲话的，一般不会因为你一个小失误就把你给挂了，如果你态度不好，搞的很牛，随便找个小毛病把你挂了，还是很容易的。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">路考注意事项三：练好基本功，不怕考官凶。有些路考考官在路考过程中，会设置一些小考验，一定要摸清他考察你的目的。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">应对路考技巧：比如，有些路考考官中途某个项目，让你下车查看，最多的就是侧方停车和定点停车。考察的不一定是你的位置停的好不好，他考察的是你的意识。这里有个非常重要的路考注意事项，比如让你下车，你要记得置到空档，拉好手刹，特别是上车后记得再把安全带系好。学员下车的时候，还在档位上，一松离合器，车子熄火了，立马挂了，这就是没用充分的路考技巧和对路考准备不充分的表现。还有些学员平时不系安全带，路考时肯定要扣分了。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">另外，有些路考考官在城市道路上，让你超车，有些人就有点慌了，以为考官对自己不满了，其实不然，他可能是要考察你会不会超车，是否了解超车时每个环节的路考注意事项有什么，对应的路考技巧就是如果他让你超车，那么你就超，但是记得观察后方跟车，前方来车，打左转向灯，超车成功后，返回本车道。如果大家能做到这些，反而会增加路考考官对大家的印象分。</span><br />', '23', '1486906334', '1488504155', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('45', '17', '科目三路考平稳起步要领', '合肥学车、肥东驾考、肥西考场', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142717_11023.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '揭秘：一、路考起步的具体操作方法：\n1、\"踩\"离合器\n2、\"挂\"一档\n3、\"打\"左转向灯(提醒后车驾驶员注意安全避让)\n4、\"鸣\"号(引起车辆周围的行人或', '<span style=\"font-size:16px;line-height:2;\">揭秘：一、路考起步的具体操作方法：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、\"踩\"离合器</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、\"挂\"一档</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、\"打\"左转向灯(提醒后车驾驶员注意安全避让)</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、\"鸣\"号(引起车辆周围的行人或机动车等注意)</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、\"松\"手刹</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">二、起步口诀：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">起步1挡挂，转向(灯)按喇叭</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">松开手刹车，后视别漏下</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">离合\"快、慢、停\"，轻轻把油加</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">\"停顿\"加\"跟油\"，重点就在它</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">三、起步的注意事项：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、要仔细听油门发出的声音。在抬离合器期间，总共有三种声音：\"高昂\"、\"沉稳\"、\"低沉\"。在\"高昂\"声音时，离合器抬起的这段距离是空行程，;而在\"沉稳\"、\"低沉\"声时，抬离合器的速度一定要放慢。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、平路起步和下坡起步可以先放下手动刹车，再踩油门、抬离合器;而上坡起步只能在听到油门声音变为\"沉稳\"时，才可以放下手动刹车，否则会出现车子后溜的情况。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、平路起步和下坡起步时，稍稍加油就可以完成起步;而上坡起步需要根据坡度的大小决定踩油门力度的大小：坡度越大，加油的力度越大。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、在放下手动刹车瞬间，暂时稳住离合器，并多加点油，以避免车子出现不平稳的现象。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、下坡起步时，如果车子已经熄火，而坡度较大，可以在不打火的情况下直接挂三档，松刹车，起步。通过车轮转速的加快，车子可以自动打火。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">四、起步的评分标准：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">时间上要迅速</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">操作上要准确</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">动作上要利落</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">感觉上要平稳</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '31', '1486906519', '1488486795', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('46', '17', '科目三7个环节过关秘籍', '合肥驾校-肥东驾考-肥西驾考', '七七学车-合肥考驾照-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103112859_10804.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '七七学车-合肥考驾照-肥东学车', '<span style=\"font-size:16px;line-height:2;\">失分点1：转弯、 掉头时，转向灯开启不足3秒</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在路口右转弯项目考核时，考生需在右转向灯打开3秒后再转向。我学车称，部分考生在打开右转向灯不足3秒时就立刻转弯，“在实际驾驶中，后方车辆可能跟得比较紧，车辆转弯时肯定会减速，如果前方的驾驶人不提前打开转向灯提示后方驾驶人，两车很可能在转弯减速时撞上。”路口左转弯项目也一样。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">此外，在掉头路段掉头时，应该先打左转向灯，后踩刹车减速进行掉头。很多学员被扣分是因为打转向灯的时间不足3秒就开始掉头，且学员在掉头踩刹车时必须平稳，不能急刹车。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">失分点2：挡位与速度不匹配</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">考试中，加减挡位操作项目也是学员的失分点之一。“学员要熟悉什么挡位与什么速度相匹配，很多学员在通过路口和学校时，知道要踩刹车减速，但忘记减挡，让车辆发生严重抖动，这样就不能通过考试。”我学车介绍，1挡速度在0km/h至20km/h之间，2挡速度在10km/h至30km/h之间，3挡速度在20km/h至40km/h之间，发动机转速保持在2500转以内。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">失分点3：会车时踩刹车未向右打方向盘</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">会车时，学员需在会车路段轻踩刹车的同时向右打方向盘，将车速降到30km/h以内。“向右打方向盘能避开对面驶来的车辆，很多学员在会车路段没有这么做。”</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">失分点4：超车时车速低于30km/h</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">“学员在模拟超车时时速没有高于30km/h，这也会被扣分。”我学车表示，实行电子评判后，学员在每个阶段的车速都会实时传递到电脑上，如果学员超车时速度不达标，将会被扣分。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">失分点5：减速后车速仍超30km/h</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">“在通过车站及学校等考核项目中，车辆减速后速度不能超过30km/h，很多学员在考试中没有这种意识，只是轻踩刹车，不会注意车辆速度。”我学车说，学员在减速后要注意仪表盘，时速要保持在30km/h以下。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">失分点6：靠边停车未保持右转向灯长亮</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在靠边停车时，学员打右转向灯要保持转向灯长亮，“很多学员一打转向灯，转向灯又弹回来灭了，学员仍坚持靠边停车，也会被扣分。还有很多学员刹车、熄火后，下车不关车门，在最后时刻犯错。”</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">失分点7：操作失误导致熄火</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">“熄火也是学员比较容易犯的错。”我学车表示，熄火的原因很多，主要是考生太紧张，“很多学员在踩刹车后忘记踩离合器，双脚配合不好导致熄火。”还有一些小细节也容易失分，例如起步不按喇叭、靠边行驶时距马路边缘超过30厘米等。</span><br />', '24', '1486906707', '1487209613', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('47', '17', '科目三考试路考技巧', '合肥考驾照、合肥互联网学车、肥东驾考', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103112938_13060.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '上车准备操作要领\n上车前逆时针绕车，观察车辆外观和周围坏境，确认安全;注意检查前后车牌是否清洁完好;上车动作规范;上车后关闭车门，将启动开关', '<span style=\"font-size:16px;line-height:2;\">上车准备操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">上车前逆时针绕车，观察车辆外观和周围坏境，确认安全;注意检查前后车牌是否清洁完好;上车动作规范;上车后关闭车门，将启动开关拨至第二格，锁车门，锁车窗;调整座椅、头枕、后视镜和系安全带;</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span><br />\n<span style=\"font-size:16px;line-height:2;\">起步操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">按顺序操作：1踩(离合)、2挂(档)、3拨(方向灯)、4缓加油、5半联动、6松手刹。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">正确运用离合器;准确感受半联动;准确控制“油、离”配合</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">起步时应注意的安全事项：有观察的意识，养成起步前观察的良好习惯，文明礼让;向前看，任何情况下不准低头下看;确保起步平稳，不前冲，不抖动。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时要“交替使用远近光灯”示意2次以上。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">路口左转弯操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">正确打灯、刹车减速、左右看，安全文明礼让;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">转弯时，打方向要规范平稳适度，避免转、回方向过早、过晚或者转向角度过大、过小;左转弯时，要求使用二档以下(含二档)，速度20公里/小时以下;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时要“交替使用远近光灯”示意2次以上。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">安全通过学校区域操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">当听到语音提示“前方通过学校”，考生须刹车减速、左右观察，注意避让学生，确认安全后方可通过;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">按照防御性安全驾驶5要领要求，要做到“左脚不长踩，右脚不空踩”，不加油时右脚不能踩在加速踏板上，要虚放在制动踏板上。停车让行时，要先拉手刹再挂空挡，不能踩离合带档停车等待、重新起步必须使用半离合后放手刹</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时要“交替使用远近光灯”示意2次以上。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">安全变更车道操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">听到语音器播报“请变更车道”，考生打左转向灯保持三秒以上，左右观察，确认安全后，适时变更，注意打方向的幅度和缓急，安全变道后关闭转向灯，听到语音器播报“变更车道挖成”时，表示该项目考试完成。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">由右车道变更至中间车道的考生车完成变更车道后，要主动寻找时机版更向右车道;转弯时，打方向要规范平稳舒适，避免转、回方向过早，过晚或者转弯角度过大，过小;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">特别提示：为确保各车辆安全行车，不影响交通安全，考试车辆只有在变更车道、超车、掉头(小车)时能占用左车道外，其它考试项目原则上应该在右车道上完成。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时要“交替使用远近光灯”示意2次以上。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">安全超车的操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">当听到语音器提示“请完成越车动作”考生打左转向灯保持3秒以上，同时“左扭头”通过(左)后视镜观察左后方，确认按这个方向可以向左转动方向盘，驶入左侧车道进行超车。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">当听到语音器提示“请返回原车道”，确认与被超车辆保持安全距离后，关转向灯3秒后，打右转向灯保持三秒以上，同时观察右后方，确认安全后驶入原车道正常行驶，关闭转向灯。当不具备超车条件时，可耐心等待，条件允许时，完成超车动作，禁止右侧超车。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">当听到|语音器提示“超车动作完成”时，表示该项目考试完成。在超车和返回原车道，要注意打方向手法要规范平稳适度，避免转、回方向过早、过晚，或者转弯角度过大或过小。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时要“交替使用远近光灯”示意2次以上。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">安全掉头的操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">听到语音器播报“前方请掉头”，考生打左转向灯保持三秒以上，仔细观察四周情况，安全避让来往车辆，掉头时必须使用二档以下档位，车辆降低至20公里/小时以下，必要时可使用一挡半离合掉头。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">操作顺序：一打、二看、三刹车、四减档、五掉头</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">注意避让前后来往的车辆，不得影响其它车辆正常行驶，掉头前可停车等待，掌握时机确保一次性完成掉头，避免操作不当中途停车。掉头时打方向手法要规范平稳适度，避免转、回方向过早、过晚、或者转向角度过大、过小。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">听到语音器播报“掉头完成”时，表示该项目考试完成。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在掉头时若有人行横道，车辆必须经过人行横道后才能掉头，不得在人行横道上掉头，更不能在人行横道上停车等待。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时要“交替使用远近光灯”示意2次以上。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">安全会车操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">语音器播报“前方请会车”时，刹车减速，左右看，本车道靠右行驶</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">重点：保持横向安全距离，不抢不急减速让行</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">注意：不得加速抢道，不得抢占车道，不能突然紧急刹车</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">语音器播报“会车完成”时，表示该项目考试完成，之后才能加油提速。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜考时会车要求：夜间与对方会车距对方来车将近150米时应使用近光灯，严禁使用远光灯;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">夜间窄路会车时，应主动选择合适地点停车让行，并开双闪警示灯，关闭前照灯(大灯)，留示宽灯(小灯)</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">加减档位操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">要求考生从现有档位加至4档以上(含4档)，再减至2档;不得越级加档，不建议越级减档;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">变速杆的操纵动作要轻快、准确、柔和，不可用力过猛，也不要硬拉硬推，以避免变速器齿轮发响;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在换挡过程中，要注意车辆行驶方向的控制，合理选择行驶车道，速度，要注意减档加空档，避免车辆发动机转速过高或过低，禁止低头看档，禁止行驶中空挡滑行。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">安全通过人行横道线操作要领</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">减速礼让，禁鸣笛;注意行人，慢车让行，停车让行;注意左、右方行人或车辆出入;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">按照防御性安全驾驶五要领要求，要做到“左脚不常踩，右脚不空踩”，不加油时右脚不能踩在加速踏板上，要虚踩在制动踏板上。停车让行时，都要先拉手刹再摘空挡，不能踩离合带档停车等待，重新起步必须使用半离合后放手刹。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">无论是否夜考，遇行人或通过人行横道都要“交替使用远近光灯”示意2次以上。</span><br />', '23', '1486906884', '1486956389', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('48', '17', '科目三路考变更车道操作方法', '合肥驾校-肥东驾考-肥西驾考', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103142336_63435.jpg', null, '合肥学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '变更车道这个技巧虽说其难度不大，可在路考中对学员的要求也是不小的，不少人就是因此而被阻挡在驾驶员行列之外的，因此多学点也是没有坏处的，', '<span style=\"font-size:16px;line-height:2;\">变更车道这个技巧虽说其难度不大，可在路考中对学员的要求也是不小的，不少人就是因此而被阻挡在驾驶员行列之外的，因此多学点也是没有坏处的，而变更车道的操作方法为：</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、眼观六路，多看下周围的车辆行驶状况，也就是说要观察与判断观察车辆后方、侧方和准备变更的车道上的情况，随机应变;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、待确认安全后，打开转向指示灯向其他车辆示意，再次道路上车辆的超越情况，确认准备驶入的车道是否允许留有安全距离;</span><br />\n<br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、在确认无误，且不妨碍该车道内车辆正常行驶的情况下，平稳转向、驶往所需车道后，关闭转向指示灯;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、车道变更只能变更到相邻，若需变更到相邻以外的车道，应徐徐图之;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、提前观察道路 交通标志和路面标线，根据需要行驶的方向选择行驶车道，按导向箭头方向在进入实线区前驶入导向车道;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6、变更车道时，应避免突然急转转向盘驶入相邻的车道，防止与正常行驶的车辆相碰撞或因路面光滑引起车辆侧滑。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '29', '1486907050', '1493881980', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('49', '17', '坡道定点停车和起步熄火原因与解决方法', '合肥学车，合肥驾照，肥东驾照考试', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170106111359_70801.jpg', null, '合肥学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '起步不难，上坡起步也不难，而考这项目最难的，就是遇到起步熄火，这是让很多学员都感到头疼的一个问题。今天，小编就来为大家分析一下上坡起步', '<span style=\"font-size:16px;line-height:2;\">起步不难，上坡起步也不难，而考这项目最难的，就是遇到起步熄火，这是让很多学员都感到头疼的一个问题。今天，小编就来为大家分析一下上坡起步熄火的原因，另外，再为大家介绍一下解决上坡起步熄火的办法，希望能帮到大家。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"><strong>停车熄火</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">上坡起步熄火的原因一般有三点：</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、松手刹时又松快了离合。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、松手刹时油门踏板也松了一点，油门不够。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、到了半联动点，手刹松慢了，手刹把车子憋熄火了。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">清楚了起步熄火的原因之后，又有哪些有效的解决方法呢?</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、挂上一档后首先给油，把油门踩到1500—2000转(看转速表)，右脚稳到不动(一定不能再抬油门踏板了!)。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、慢抬离合到半联动点时，再往回踩一点点(即快到半联动点，而实际没有到半联动点的部位)左脚就稳到不动，同时快速松手刹。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">记住，松手刹一定要快。松手刹完成的同时，如果发现车子有要后溜的迹象，再把左脚的离合轻轻松一点，控制油门保持在1500—2000转，一般车子就会起步了，也不容易造成熄火。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">通常 驾校教练要我们到了离合的半联动点就左脚稳住不动，再去松手刹，但是作为初学者，手刹常松得过慢、油门没控制好，这些都很容易导致熄火。若采用这种方法，由于离合快到半联动点，而实际没有到半联动点的部位，即使油门没有控制好掉了一点下来，可以及时给油跟上，也不会因为油门没控制好而熄火;同时避免了因为松手刹过慢而引起熄火的状况。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">另外，由于离合快到半联动点，而实际没有到半联动点的部位，即使松手刹动作完成的瞬间车子有点后溜，我们也可以通过轻抬离合、轻踏油门的配合解决。</span><br />', '21', '1486950662', '1493881983', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('50', '17', '三点掌握【倒车入库】教学', '合肥学车、肥东驾考、肥西考场', '合肥考驾照、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170104093309_24271.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '倒车入库，作为科目二考试当中的一项内容，对于学员来说进入驾校学习基础驾驶，经过科目一的理论学习，了解车辆最为基础的类似于六大操控几件、', '<span style=\"font-size:16px;line-height:2;\">倒车入库，作为科目二考试当中的一项内容，对于学员来说进入驾校学习基础驾驶，经过科目一的理论学习，了解车辆最为基础的类似于六大操控几件、车辆原理等。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">科目二场地驾驶的学习是对理论学习的实践，更好的将理论与实践相结合。从事教练员工作五年来，在与学员的交流中，深刻体会到，作为学员他们进入训练场最开始学习的就是倒车入库，他们认为最难掌握的也是它。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">但是作为教练员，如何能更好的，通俗易懂的将倒车入库的技巧教授给他们，我想这是一个教练日常工作当中最为重要的课题之一。倒车入库项目的教学，总结起来个人认为最主要的是让学员掌握以下几个关键点：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">一、理论教学与示范动作的结合，重在学员的实际操作，客观与主观能动性的结合</span><br />\n<span style=\"font-size:16px;line-height:2;\">以往的教学作为倒车入库项目教练往往从教学考试的关键点入手，一上来就灌输给学员。类似如停车的位置、倒车看哪里、到哪里打方向等等。仅倒车入库这一个项目，学员一下子就要记住十几条。在心理上造成很大压力。大部分的学员都是“零”驾驶基础的，来驾校之前没有接触过，对于教练讲的这些内容很难“消化”吸收。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">日常工作当中，对于新学员在学习这个项目之前，我的做法是先进行兴趣培养，当然，示范演示是必不可少的，除了规定的动作外，我习惯于把关键点拆开，进行分组教学，这样更容易让学员接受，简单易懂，当学员充分理解记忆之后，在进行连贯动作的训练。减轻他们的心理压力。对于一些比较难掌握的关键点可以反复练习，加深记忆。极个别学员如果在规定的课时内内有掌握，则利用课余时间对他进行针对性辅导。反复讲解，加深记忆。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">二、教练的“教”与学员的“学”重在教学活动当中的“沟通</span><br />\n<span style=\"font-size:16px;line-height:2;\">倒车入库的操作，简单地讲就是把教练讲的关键点记住，逐一操作，按流程把规定动作做完，就可以了。可是很多学员手脚配合不好，会出现不是车速压不好，就是方向跟不上的问题。考试失败往往就是这两个原因造成的。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">其实在教学的初期教练员往往忽略了给学员解释考试时间和考试要求的问题。在训练过程当中出现了问题，总是直接给出解决的办法，而不是让学员主动思考得出答案，主动学习与被动学习颠倒，学员很难从训练过程当中积累总结经验。只是一味的按照教练所说的去做。没有得到一点实际的驾驶经验。所以就造成了教练认为本该一周时间学习的东西，十几天也完成不了。学员着急，教练比学员还着急。学员的心理是如何更快的接受，考试。教练也同样如此，节省时间，降低成本。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">三、在规定动作的衔接与操作当中，自始至终以“慢”字为指导</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">简单地讲只要是学员掌握了考试规定的要求，结合教练所教授的考试经验，是很容易掌握的。关键在于“慢”字。如何理解呢？其实就是手和脚的配合，怎样合理控制车速，在打方向的时候如何掌握合理的时机，不能早也不能晚。这些内容都是在日常训练过程中积累起来的经验</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">鼓励学员与学员在训练过程中的交流学习，积极讨论问题，很多情况下学员的互动学习比教练的直接教授，更容易被学员消化吸收。很多学员害怕教练，不敢提问，训练过程当中出现问题经常被教练训斥。这个“怕”字就在教练与学员中间产生了一面屏障。但学员与学员之间则不会出现。我的主张是快乐学习，与学员做朋友。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">所以我会在教学当中不间断、不定期给学员灌输“慢”字的重要性，提高出现的频率，在学员出现问题是，更好的解释，如何慢下来解决这个问题。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">驾驶教练员的工作是枯燥乏味的，但同时也是在不断更新，创造的。我热爱我的工作，我始终相信用心去做，就会有收获！</span><br />', '30', '1486952227', '1487040271', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('51', '17', '倒车入库时如何踩离合器', '合肥学车，合肥驾照，肥东驾照考试', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103162607_63854.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '倒车离合器操作一直是一个让学员们头疼的问题，那么你知道倒车时离合器如何操作呢?驾考宝典给大家解析倒车离合器操作技巧，不懂的朋友们快来看看', '<span style=\"font-size:16px;line-height:2;\">倒车离合器操作一直是一个让学员们头疼的问题，那么你知道倒车时离合器如何操作呢?驾考宝典给大家解析倒车离合器操作技巧，不懂的朋友们快来看看吧!</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">关于离合器的操作， 驾校教练一般在你刚学车的时候就会告诉你了，但是还是有很多学员对于离合器的操作掌握不到要领，尤其是在参加倒车考试的时候，所以，大家可千万不要小看离合器的作用啊!一起来看看驾照网教大家如何在倒车时操作离合器的吧!</span><br />\n<span style=\"font-size:16px;line-height:2;\">很多人在考倒车的时候容易车子熄火，其实很大的一个原因就是离合器使用不当。离合器的使用，总的来说抓住一点，就是慢。挂档前，离合器一定要踩到底，然后左脚脚跟着地，作为一个支撑点，脚前掌慢慢的往上抬，切记一定要慢。经验丰富的教练支招说，大概从1数到6，离合器就正好完全松离。当“脚感”掌握了，离合器使用就得心应“脚”了。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在倒车考试过程中，当你要停车时，应当首先踩离合器，紧接着再踩刹车。如果直接踩刹车，容易造成熄火，车子也会有冲撞。再起步时，先松刹车，然后慢慢松离合器。这样车子就能稳步向前。</span><br />', '63', '1486955148', '1491614910', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('52', '17', '坡道起步技巧', '合肥学车，合肥驾照，肥东驾照考试', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170213135730_98895.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '科目二的五个项目里，最难的无非是倒库和坡道起步，小编之前整理了倒库的资料，这次和大家聊聊上坡那点事。\n1、溜车的原因\n在离合接触点没有抬够', '<span style=\"font-size:16px;line-height:2;\">科目二的五个项目里，最难的无非是倒库和坡道起步，小编之前整理了倒库的资料，这次和大家聊聊上坡那点事。</span><br />\n<span style=\"font-size:16px;line-height:2;\">1、溜车的原因</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在离合接触点没有抬够(离合抬的偏低)，或者没有给油(车本身怠速低，不够带动车辆起步)的情况下就松开手刹造成的。&nbsp;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、熄火的原因</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">一是出现溜车后，急忙刹车或抬离合造成的。二是起步时离合抬过了接触点而手刹松晚了造成的。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">训练时，时常会遇到不给油也能不熄火的情况，但考试时是不能这么冒险的。因为之所以不给油也能平稳起步，是因为该训练车的“怠速”调的比别的车要高。所谓怠速，就是发动机不做功时保持运转的最低转速。出现溜车时，只能先刹车踩离合，把车停住后重新起步；除此之外，在溜车过程中任何企图纠正的措施，基本都没用的。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">左脚缓松离合踏板至车辆出现抖动时，应稍稍固定在这个位置，确认车辆是否具备向前的趋势和动力，不要继续将离合踏板抬起，以防熄火。当车辆向前走时，右手才将手刹彻底放下，缓慢加油。离合不要抬得过高，过高而没松手刹也会熄火。因为在给着油儿的情况下，即使没完全抬够接触点，松手刹也不会溜车，车会较着劲不动。在这个情况下，千万不要看车不动就心慌，以为是自己离合抬的不够而大幅度抬离合，实际上这个时候，既然不溜车，就说明离合已经半联动的较上劲了，加着油稍微抬一丁点儿离合就成。当然，如果能将离合接触点控制的很好(车头明显抬起，且没有熄火前的车身抖动)，此时加着油，松开手刹就走车，这是最好的。</span><br />\n<span style=\"font-size:16px;line-height:2;\">在起步过程中，要避免长时间在半联动状态下踩油门加速——只要车辆被油门带动，就不会后溜了，尽管放心松开离合器踏板，踩油门起步。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">鉴于脚刹和手刹的作用是一样的，练习的时候，如果在坡上停了下来，而没有拉手刹的话，再起步时，脚刹和离合的配合是一样的——右脚一直踩着刹车，左脚抬离合到接触点，然后保持左脚不动，右脚在离开脚刹的时候立刻踩油走车。当然，在考试的时候，不论什么情况，只要在坡上停车就要拉手刹摘空档。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">油门没有行程，离合有行程。所谓行程，指从实施行动到该行动产生效果之间的过程。刹车时，先刹后离。考试时先踩离合的算空档滑行。持续踩刹车到一定程度后，车身会抖，说明因为刹车的阻力，此时发动机已经带不动齿轮转动做功了，此时就需要把离合踩下，切断发动机的动力传送，从而避免熄火。</span><br />', '26', '1486965453', '1486965466', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('53', '17', '曲线行驶场地的说明，赶紧get吧', '合肥考驾照、合肥互联网学车、肥东驾考', '合肥学车报名、合肥驾考报名。肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170213135923_35673.jpg', null, '合肥驾考培训', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', 'PS：按所考驾照驾驶车型不同，路宽安排也是不同。\n  弯道宽度：大型车辆的路宽设置为4米，小型车辆为3.5米。 \n  弯道半径：大型车辆的弯道半径为12米', '<span style=\"font-size:16px;line-height:2;\">PS：按所考驾照驾驶车型不同，路宽安排也是不同。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; 弯道宽度：大型车辆的路宽设置为4米，小型车辆为3.5米。&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; 弯道半径：大型车辆的弯道半径为12米，小型车辆为7.5米。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span><br />\n<span style=\"font-size:16px;line-height:2;\">曲线行驶考试技巧&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; 1、进入弯道之后，尽量控制着车辆走大圈(因为这样转弯半径大一些，压线的机会就小了)。&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; 2、通过弯道时，保持车头处的小后视镜处于边缘线内，过弯后回正方向。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">曲线行驶注意事项&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; 1、曲线行驶时，方向盘摆动不易过快。&nbsp;</span><br />\n<span style=\"font-size:16px;line-height:2;\">&nbsp; 2、一档考试，不要因为心急就踩油门。</span><br />', '87', '1486965608', '1487044549', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('54', '17', '科目二必考注意事项及易错点', '合肥学车，合肥驾照，肥东驾照考试', '合肥考驾照、七七学车、七七驾考', '0', '1', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170214100212_83177.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '现在驾考科目二都包括倒车入库、坡道起步和定点停车、侧方停车、曲线行驶、直角转弯五项必考。而很多驾校学员在驾考科目二中却因为一席小错误而', '<span style=\"font-size:16px;line-height:2;\">现在驾考科目二都包括倒车入库、坡道起步和定点停车、侧方停车、曲线行驶、直角转弯五项必考。而很多驾校学员在驾考科目二中却因为一席小错误而导致全盘皆输。今天我们就来了解一下科目二的各项易错点和避免烦这些错误所需的驾驶技巧。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">一、侧方停车</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、速度太快</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">加速踏板一定要稳住，特别是转方向盘的时候，要有意识地放松一点，否则速度容易加快，速度一快，什么问题都来不及修正。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、位置看错</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">转弯的时候，一定要认准点，找自己平时 驾校训练时习惯的基准点。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、回方向盘的时机拿捏不好</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">侧方停车首先要找到一个合适的停车点，为下一步倒车入库的操作做准备。接下来就是及时打方向盘，然后及时回正。回晚了，会造成右侧车身出线;回早了，会造成左侧车身出线。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、车身出线</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">还有一种情况，就是在倒车时，不注意判断车辆位置，容易使后方车身出线。在完成整个侧方停车项目的过程中要做到手快、眼快，车速慢。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">小提示1、驶入停车区域，尽可能靠道路右边停车，但不可压到黄色的右边缘线，以免倒车时压到左边缘线。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、观察目标的选择应与车型、驾驶座位调整、坐姿和倒车镜的调整等一致。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">二、坡道停车与起步</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、定点停车不到位。停车的位置掌握不好，停不到规定的位置。按照规定，车辆的前保险杠距规定的停止线前后不得大于50cm，否则会扣掉20分;右侧离边线不得大于30cm，否则也要扣掉20分。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、坡起过程中熄火、“溜车”。为了防止在坡起的过程中熄火，要练好油离配合，同时掌握好松手刹的时机，松了手刹后继续缓慢踩加速踏板。防止“溜车”的办法就是在定点停车后一定要将手刹拉紧。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、下坡时熄火或者空档滑行。这是一个非常不好的习惯，对日后的行车安全留下了严重隐患，如遇到下长坡时，熄火空档溜车等于自杀。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">三、直角转弯</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、一般转向角度大的车辆，转动方向盘的时机要晚些，转向角度小的车辆，则适当提前。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、要注意内轮差，正确估计内后轮的轨迹，不得压向直角凸起点和边线，不得停车和倒车。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、当车头转到方向后，要特别注意防止右(左)前轮压及外侧线。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">四、离合器踏板操作不良动作</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、行车时把脚长时间放在离合器踏板上</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">这种不良习惯很容易造成离合器打滑、离合器摩擦片烧蚀等，严重时甚至会使离合器压盘、飞轮端面烧蚀拉伤，发生离合器压紧弹簧退火等故障。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、行车时离合器长时间处于半联动状态</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">这种不良习惯会造成离合器摩擦片烧坏，应尽量减少半联动的使用，特珠情况下需要半联动时，应缩短半联动时间。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、用脚心部位踏下离合器踏板</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">使用离合器踏板时，应以前脚掌部位踏住离合器踏板，如用脚心部位踏下离合器踏板，不易将踏板踏到底，影响起步和变速的操作;也不可用脚尖踏下离合器踏板，以防滑落。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">五、其他的常见不良动作</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、起步停车不平稳</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">有些驾驶人倒库时起步不够平稳，造成车辆熄火或“点头”。车倒库时，前进后倒均以怠速进行，车速要均匀，不要忽快忽慢，进入场地后不得熄火。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、观察方法不正确</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">驾驶姿势要端正，不得从车门处探视;后倒时一般采用由后视镜观察倒车目标的方法。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、打方向盘慢、车速快</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">科目二考试时，学员一定要让车速尽量慢下来，同时打方向盘的速度要快，动作要干净利落，严格遵守“十字交叉”原则，避免“搓轮”。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、停车时原地打转向盘</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">停车时，有些驾校学员看车轮还没打正，或车身没有摆正，就干脆在原地打转向盘，这是决不允许的。</span><br />', '22', '1486965783', '1487037738', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('55', '17', '科目二直角转弯考试技巧及评分标准', '合肥学车、肥东驾考、肥西考场', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170113140637_33589.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', '/file/uploads/image/201701/20170113140637_33589.jpg', '直角转弯是驾考科目二的考试项目之一，要求考生可以控制车速，正确使用档位，会选择合适的行驶方式。感觉简单，但考试时又怕压线。而直角转弯也', '直角转弯是驾考科目二的考试项目之一，要求考生可以控制车速，正确使用档位，会选择合适的行驶方式。感觉简单，但考试时又怕压线。而直角转弯也是我们日常驾驶中频率很高的驾驶动作。现在我们来具体盘点一下直角转弯考试标准和驾驶技巧。<br />\n<br />\n<br />\n直角转弯考试技巧<br />\n<br />\n1.首先，调整车体离右侧边线30公分左右的距离，然后直行。<br />\n<br />\n2.然后当你从左面的后视镜(倒车镜)的下面边缘和车垂直的那条边线重合时，打紧方向盘。<br />\n<br />\n3.当过了后视镜镜角以后回正正常行驶就可以了。<br />\n<br />\n. 考试要求<br />\n<br />\n1、转弯前，一定尽量靠外侧行驶。等车头即将到达对面边线时(约50公分-70公分)开始向内打方向(注意不要打急了)，看前面的同时再观察后视镜，感觉车的中部快要过直角的顶点时则慢慢回方向，再慢慢将车头修正。<br />\n<br />\n2、要根据车速(最好是一档半离合)，打(回)方向时一定要果断，均匀，不要猛打猛回。<br />\n<br />\n<br />\n直角转弯评分标准<br />\n<br />\n1.车轮触扎突出点，不合格;<br />\n<br />\n2.车轮每触扎道路边缘线一次，扣20分;<br />\n<br />\n3.借助倒车完成作业，扣10分。<br />\n<br />\n七七学车温馨提示:直角转弯，考试中相对比较简单些，但是却容易失误的项目。<br />', '17', '1486966244', '1486966275', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('56', '17', '科目二曲线行驶技巧解析', '合肥考驾照、合肥互联网学车、肥东驾考', '合肥考驾照、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170211104104_62806.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', '/file/uploads/image/201702/20170211104104_62806.jpg', '很多人在驾考科目二的曲线时总会感到紧张不安，总是控制不好车速，又怕压线。那么今天我们就来详细分析一下科目二中曲线行驶的驾驶技巧。\n曲线行', '很多人在驾考科目二的曲线时总会感到紧张不安，总是控制不好车速，又怕压线。那么今天我们就来详细分析一下科目二中曲线行驶的驾驶技巧。<br />\n<br />\n曲线行驶方法<br />\n<br />\n<br />\n科目二曲线行驶考试车辆需从S形车道的一端进入后,不压线从另一端开出。当您切入曲线路线以后，你要尽可能的把握好车速，不要太快，也不能过于缓慢。<br />\n<br />\n<br />\n沿着曲线凸出去的那个弧趋势行驶，当过了一个弧时，去找下个弧慢慢行驶就可以过的。<br />\n<br />\n<br />\n速度不要过快，过快的话，稍不留神控制不了车速，你就可能压住周围的边线，导致考试失败，所以要把握好速度，然后找好弧线，跟着线慢慢走就可以的。<br />\n<br />\n驿享提醒：曲线行驶，对整车的行驶把握还是比较重要。<br />', '19', '1486966381', '1486966390', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('57', '17', '科目二侧方位停车考试技巧及评分标准', '合肥驾校-肥东驾考-肥西驾考', '合肥考驾照、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170106112531_62783.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '侧方位停车是驾考科目二的考试项目之一，要求考生可以控制车速，正确使用档位，会选择合适的停车地点和起步方式。而侧方位停车也是我们日常驾驶', '<span style=\"font-size:16px;line-height:2;\">侧方位停车是驾考科目二的考试项目之一，要求考生可以控制车速，正确使用档位，会选择合适的停车地点和起步方式。而侧方位停车也是我们日常驾驶中频率很高的驾驶动作。现在我们来具体盘点一下侧方位停车考试标准和技巧。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、应预先先调整座椅和后视镜(后视镜这样调：左侧后视镜，上、下位置是把远处的地平线置于中央，左、右位置调整至车身占据镜面范围的四分之一;右侧后视镜，在调整上、下位置时镜中地面面积要较大，约占镜面的三分之二，左、右位置同样调整到车身占四分之一即可)。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、听到侧方停车指令后，半联动驾车沿停车位慢速平行前进(车头右侧先1/2，再逐渐1/3处压库边线行驶，即保持车右侧距库边线750px)，当右后视镜中看到库前边线时，踩脚刹、踩离合停车;</span><br />\n<br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3.踩离合，挂倒档，(新规：打右转向灯3秒以上)，抬脚刹，慢抬离合倒车;(这时，车头如果是斜的，倒车时可将方向向车头偏的一方打死，待车身回正时立即将方向盘回正);</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、当右后视镜中刚看不到库前边线，方向向右打死继续倒车;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、观察车身与库左边线成40-45度夹角时，方向向左侧回正(1圈半)(或在左后视镜内车尾部刚出现库的右后角时，向左1圈半方向即回正);</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6、回轮后继续缓慢倒车，看左后视镜，当左后轮到库左边线前250px时，速再继续向左打死方向;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">注意：1.开始车与库边线大于1000px时，步骤5或步骤6应晚打方向。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2.开始车与库边线小于500px时，步骤5或步骤6应早打方向。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">7、观察右后视镜，待车回正时，方向盘回正，观察车没有到位时，继续后倒(使后轮进入感应区但不出后感应区)，踩脚刹，踩离合停车，拉手刹，摘空挡，再抬离合，抬脚刹，停10秒左右，待通知考试合格后再准备重新起步出库;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">8、踩离合，挂1档，打左转向灯3秒以上，按一下喇叭，松手刹、慢抬离合用半联动缓慢起步;方向向左打死;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">9、车沿左侧前进，当车头中间压道路左边线时尽快向右打1圈半(回正)，随后根据路况再向右打1圈，并适当调整;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">10.出库后车身与库边线平行后立即将方向盘回正(即向左回1圈，打多少轮);继续前行，驶离本项目考试区。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">考试标准</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">车辆入库停止后，车身出线，扣100分</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">行驶中车轮触压车道边线，扣10分</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">未停车于库内，扣100分</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">起步未开左转向灯，扣10分</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">倒车未开右转向灯，扣10分(增加扣分项目，此前只要求停车起步需开左转向灯，也是最容易忽视导致扣分的项目。)</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">中途停车，扣100分</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '20', '1486966640', '1486966648', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('58', '17', '科目二直角转弯操作技巧及考试标准', '', '', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201612/20161226125003_10808.jpg', null, '合肥驾考培训', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '直角转弯是驾考科目二的考试项目之一，要求考生可以控制车速，正确使用档位，会选择合适的行驶方式。感觉简单，但考试时又怕压线。而直角转弯也', '<span style=\"font-size:16px;line-height:2;\">直角转弯是驾考科目二的考试项目之一，要求考生可以控制车速，正确使用档位，会选择合适的行驶方式。感觉简单，但考试时又怕压线。而直角转弯也是我们日常驾驶中频率很高的驾驶动作。现在我们来具体盘点一下直角转弯考试标准和驾驶技巧。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1.考试标准</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">任一车轮压道路边缘线，扣100分(原规定车轮挤压边线扣20分，过线扣100分。新标准挤压边线也提高到扣100分。)</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">中途停车，扣100分</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2.场地要求：</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">直角转弯的场地，看上去像一个平放在地上的L。新规实施后，直角转弯的场地，路长大于等于1.5倍车长，路宽为小型车辆的轴距加1米。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3.操作技巧:</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1.首先，调整车体离右侧边线30公分左右的距离，然后直行。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2.然后当你从左面的后视镜(倒车镜)的下面边缘和车垂直的那条边线重合时，打紧方向盘。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3.当过了后视镜镜角以后回正正常行驶就可以了。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">七七学车提醒：直角转弯，考试中相对比较简单些，但是却容易失误的项目。</span><br />\n<span style=\"font-size:16px;line-height:2;\"></span>', '33', '1486966803', '1488266665', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('59', '17', '科目二必过技巧和扣分标准！赶紧get！', '合肥学车、肥东驾考、肥西考场', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201612/20161226110859_71174.jpg', null, '合肥学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '驾考科目二扣分标准及技巧\n一、科目二考试顺序：\n上坡起步定点停车、侧方位停车、曲线行驶、直角转弯、倒车入库。\n二、解析：小心，这些地方容易', '<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">驾考科目二扣分标准及技巧</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">一、科目二考试顺序：</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">上坡起步定点停车、侧方位停车、曲线行驶、直角转弯、倒车入库。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">二、解析：小心，这些地方容易扣分综合评判</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">未系安全带：扣100分未关好车门：扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">未开转向灯：起步、转向、变更车道、超车、停车前未使用转向灯或使用少于3秒，扣10分(使用转向灯少于3秒，经常成为学员扣分的原因。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">熄火一次：扣10分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">三、五项考试标准及技巧：</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">（一） 定点停车与坡道起步</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">1.考试标准</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">没有定点停车，扣100分;车辆停止后，汽车前保险杠未到控制线，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">停车后后溜大于30厘米，扣100分;停车后后溜小于30厘米，扣10分(原规定扣20分)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">起步未开左转向灯，扣10分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">车辆行驶中压道路边缘实线，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">车辆停止后，前保险杠未到停车线，扣10分(原规定是扣20分);停车时右前轮距边缘线30厘米以上，扣10分(原规定是扣20分)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">起步时间超30秒，扣100分(新增扣分项目，学员落马最多的考试项目。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2.场地要求：陡坡的坡度必须大于等于10度，考C1驾照的陡坡长度要大于等于20米。在考试过程中，学员在陡坡停车后，必须在30秒内起步，否则就算失败。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3.操作技巧:</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-align:center;background-color:#FFFFFF;\">\n	<img src=\"http://image.cms.jiaxiaozhijia.com/jiaxiao-cms/2015/11/13/16/63ac1f54a1ad4c719db804d7d1a91178_261X270.png\" data-bd-imgshare-binded=\"1\" style=\"font-family:inherit;line-height:inherit;padding:0px;margin:20px 0px 0px;outline:none;width:auto;height:auto;max-width:100%;background:url(\"http://www.jiakaobaodian.com/web/template/web/resources/css/images/img-dian.png\"\" />\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">听到“上坡定点停车”指令后，（立刻打右转向灯），方向向场地右侧靠；（起步时如果有坡度时，为防止溜坡，要用半坡起步法起步）。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">即将到达路边时，方向向左回小半圈，再迅速向右回正，使车右侧与路边保持平行，并距离在30CM内（保持左雨刷中部连接部件(黑色方块)在白色线与黄色线之间，不能压黄色线；最好压白色虚线走.或用左筋对准标志线走）；起步后，可完全放开离合（或用离合控制，车速快一点，不易熄火）进行上坡（上坡过程中，如果车出现明显抖动，可踩一点离合，可保持不熄火）。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3. 快到达停车点时，踩离合，降慢车速，当向右看到停车标记时，踩脚刹，踩离合停车（或从左侧反光镜下沿看到定位桩杆线边缘即停车），拉手刹、（关转向灯），摘空挡，抬离合（一定要抬离合后再起步）。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">4. 停10秒、等报完成绩，进行半坡起步准备，踩离合、(踩脚刹)、挂1档、（打左转向灯、按一下喇叭）；松手刹；（新规：起步未开左转向灯，扣10分）</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">5. 慢抬离合，当车身有抖动感觉时或发出齿轮磨合声音时，抬脚刹（完全放开），(轻踩油门)，车即向前行进。（不熄火的方法，当车抖动时放开刹车，如车不走怠速快速下降时，及时踩下离合和脚刹，可保持不熄火，不溜坡，然后重新起步）（注意：起步时间超30秒，扣100分，新增扣分项目，学员落马最多的考试项目。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">注意：下坡时用半联动控制车速（但不能踩离合，越踩越快），也可完全放开离合，用脚刹控制车速。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">(二)侧方位停车</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">1.考试标准</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">车辆入库停止后，车身出线，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">行驶中车轮触压车道边线，扣10分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">未停车于库内，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">起步未开左转向灯，扣10分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">倒车未开右转向灯，扣10分(增加扣分项目，此前只要求停车起步需开左转向灯，也是最容易忽视导致扣分的项目。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">中途停车，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2.场地要求：</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">侧方停车在平时开车时经常遇到。新规实施后，侧方停车不再有竹竿，全部采用地上画线的形式做车库边界。学C1驾照的学员，侧方停车的车位长度是车辆长度的1.5倍加1米，只要是在这个范围内侧方倒车入库没过线的，都算通过。注意新规：中途停车，扣100分;</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3.操作技巧:车速一定要控制在5公里左右.</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">1、应预先先调整座椅和后视镜（后视镜这样调：左侧后视镜，上、下位置是把远处的地平线置于中央，左、右位置调整至车身占据镜面范围的四分之一；右侧后视镜，在调整上、下位置时镜中地面面积要较大，约占镜面的三分之二，左、右位置同样调整到车身占四分之一即可）。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2、听到侧方停车指令后，半联动驾车沿停车位慢速平行前进（车头右侧先1/2，再逐渐1/3处压库边线行驶，即保持车右侧距库边线750px），当右后视镜中看到库前边线时，踩脚刹、踩离合停车；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3.踩离合，挂倒档，（新规：打右转向灯3秒以上），抬脚刹，慢抬离合倒车；（这时，车头如果是斜的，倒车时可将方向向车头偏的一方打死，待车身回正时立即将方向盘回正）；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">4、当右后视镜中刚看不到库前边线，方向向右打死继续倒车;</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">5、观察车身与库左边线成40-45度夹角时，方向向左侧回正（1圈半）（或在左后视镜内车尾部刚出现库的右后角时，向左1圈半方向即回正）；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">6、回轮后继续缓慢倒车，看左后视镜，当左后轮到库左边线前250px时，速再继续向左打死方向;</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">注意：1.开始车与库边线大于1000px时，步骤5或步骤6应晚打方向。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2.开始车与库边线小于500px时，步骤5或步骤6应早打方向。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">7、观察右后视镜，待车回正时，方向盘回正，观察车没有到位时，继续后倒（使后轮进入感应区但不出后感应区），踩脚刹，踩离合停车，拉手刹，摘空挡，再抬离合，抬脚刹，停10秒左右，待通知考试合格后再准备重新起步出库；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">8、踩离合，挂1档，打左转向灯3秒以上，按一下喇叭，松手刹、慢抬离合用半联动缓慢起步；方向向左打死；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">9、车沿左侧前进，当车头中间压道路左边线时尽快向右打1圈半（回正），随后根据路况再向右打1圈，并适当调整；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">10.出库后车身与库边线平行后立即将方向盘回正（即向左回1圈，打多少轮）；继续前行，驶离本项目考试区。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">(三)曲线行驶</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">1.考试标准</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">任一车轮压道路边缘线，扣100分(原规定车轮挤压边线扣20分，过线扣100分。新标准挤压边线也提高到扣100分。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">中途停车，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2.场地要求：</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">曲线行驶的场地，看上去就是一个躺在地上的字母S。根据《小车考试项目尺寸标准》，C1驾照曲线行驶场地的圆弧半径为7.5米。车辆需从S型车道的一端进入后，不压线从另一端开出。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3.操作技巧:</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-align:center;background-color:#FFFFFF;\">\n	<img src=\"http://image.cms.jiaxiaozhijia.com/jiaxiao-cms/2015/11/13/16/8c6aac8e532544fe9038733437356e81_800X469.png\" data-bd-imgshare-binded=\"1\" style=\"font-family:inherit;line-height:inherit;padding:0px;margin:20px 0px 0px;outline:none;width:auto;height:auto;max-width:100%;background:url(\"http://www.jiakaobaodian.com/web/template/web/resources/css/images/img-dian.png\"\" />\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">当车进入第一弯时（目测），车辆左侧与左边线保持0.5米进入弯道(或车辆左前角在路中间进入)，用左车头压右边线行驶画弧，保持匀速低速行驶，适当修正方向；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2. 在车辆由第一弯向第二弯过度时，这时左车头离开右边线，右车头逐渐由右侧进入路中，当右车头行至路中间时，向右打方向；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3. 进入第二弯时（目测），用右车头压左边线行驶画弧，适当修正方向；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">4. 出弯道时，回转方向，进入直线行驶。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">注意新规：中途停车，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">(四)直角转弯</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">考试标准</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">任一车轮压道路边缘线，扣100分(原规定车轮挤压边线扣20分，过线扣100分。新标准挤压边线也提高到扣100分。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">中途停车，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2.场地要求：</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">直角转弯的场地，看上去像一个平放在地上的L。新规实施后，直角转弯的场地，路长大于等于1.5倍车长，路宽为小型车辆的轴距加1米。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3.操作技巧:</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-align:center;background-color:#FFFFFF;\">\n	<img src=\"http://image.cms.jiaxiaozhijia.com/jiaxiao-cms/2015/11/13/16/bd5ad58758904848b67058f54bbe9aeb_538X335.png\" data-bd-imgshare-binded=\"1\" style=\"font-family:inherit;line-height:inherit;padding:0px;margin:20px 0px 0px;outline:none;width:auto;height:auto;max-width:100%;background:url(\"http://www.jiakaobaodian.com/web/template/web/resources/css/images/img-dian.png\"\" />\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">进入直角前，让车在路两边线内尽量远离转弯点的标志杆的一侧（车头1/3处压外边线，车头左筋对准标记点）向前慢速行驶；当靠近转弯点一侧的后视镜与转弯点重合时，向转弯点一侧打死方向，通过后车头正时回正方向。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">注意新规：中途停车，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">(五)倒车入库</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">A、右出库上线：车头与6米线重合时，向右打1.5圈，车正时向左回1.5圈，向前走50CM或1米停车。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">B、右贴库：挂倒档，车正向右打满或打一圈，看右反光镜找车库有测试线上端点，围实线上端点转，车与实线上端点保持10-15CM向右打满，再看左反光镜露出左实线后角10CM，边走边回正1.5圈，看左前门扶手或锁芯与车库后横实线重合，即可停车。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">C、左出库上线：车头与6米线重合，向左打满或1.5圈，车正时向右回1.5圈，向前走50CM或1米停车。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">D、左倒库：车正向左打满或打1.0圈，看左反光镜围左实线上端点转，车与实线上端点保持10-15CM向左打满，再看右反光镜露出右后实线角，边走边回看左前门扶手与后横实线重合，即可把车分中、停车。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">考试标准</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">不按规定路线顺序行驶，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">没有完全倒入库内，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">车身出线，扣100分</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">中途停车，扣100分(之前考试学员可以在入库前停车，现在，一旦GPS定位确定车辆处于完全停止的状态，学员将被直接扣除100分。)</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2.场地要求：</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">新场地——原本立在半空中的竹竿大多已取下.采用单库倒车。新规实施后，桩考、场考合并，小型汽车桩考改为倒车入库，两个桩位之间的移库被取消。倒车入库，考试中学员中途不能停车，一旦停车，考试就算没通过。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3.操作技巧:</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-align:center;background-color:#FFFFFF;\">\n	<img src=\"http://image.cms.jiaxiaozhijia.com/jiaxiao-cms/2015/11/13/16/f4651793f8404c7c853f7d34a430a8b1_534X539.png\" data-bd-imgshare-binded=\"1\" style=\"font-family:inherit;line-height:inherit;padding:0px;margin:20px 0px 0px;outline:none;width:auto;height:auto;max-width:100%;background:url(\"http://www.jiakaobaodian.com/web/template/web/resources/css/images/img-dian.png\"\" />\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">1、踩离合、踩刹车；挂倒档、（新规：打右转向灯），松手刹；松脚刹；</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">2、慢松离合倒车；右回头望右后方，右后窗中间立柱（黑边）与车库右角对齐，马上匀速向右边打尽方向；从左后视镜里见到整条左边线刚刚出现后，马上回直方向盘。观察两边后视镜，拉直车身；当左门把手（蓝点标记）与车库底线水平即停。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">3、换一档向前行，当车头盖接近白色线（7米线）并快碰到白线时，向左匀速打尽方向盘，转向左边，车直即停。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">4、不用回方向，保持方向盘向左打尽，直接还倒档，向后倒，注意看左后视镜。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">从右后视镜里见到整条右边线刚刚出现后，马上回直方向盘。继续观察左后视镜，拉直车身；当右门把手（蓝点标记）与车库底线水平即停。</span>\n</p>\n<p style=\"font-family:\'Microsoft YaHei\', 微软雅黑;line-height:27.712px;padding:0px;margin-top:0px;margin-bottom:15px;border:0px;color:#3C3C3C;font-size:16px;white-space:normal;text-indent:2em;background-color:#FFFFFF;\">\n	<span style=\"line-height:2;\">5.换一档向前行，当车头盖接近白色线（7米线）就快碰到白线时，向右匀速打尽方向盘，转向右边，车直即停。</span>\n</p>', '76', '1486966956', '1492792823', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('60', '17', '科目二倒车入库详细解析', '合肥学车、肥东驾考、肥西考场', '合肥考驾照、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170213144144_97576.png', null, '佚名', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '很多驾考宝典的学员反映科目二的倒车入库项目太难了，今天我们从最基础给大家讲述科目二五项里面倒车入库的驾驶技巧。 \n进入场地\n将车开到场地右', '<span style=\"font-size:16px;line-height:2;\">很多驾考宝典的学员反映科目二的倒车入库项目太难了，今天我们从最基础给大家讲述科目二五项里面倒车入库的驾驶技巧。&nbsp;</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">进入场地</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">将车开到场地右侧，身体与右侧控制线齐平，切换到倒挡，开始倒车</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">向右打方向</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">身体左倾五厘米，视线透过左侧反光镜下沿看到控制线，开始向右打方向，打死(一圈半)。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">在打方向时注意控制好车速，既不要太快，也不要停止</span><br />\n<span style=\"font-size:16px;line-height:2;\">辨别是否能够入库</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">当车开到车身偏斜15度左右，从右反光镜看车身与车库线距离如图，可以辨别车可以进入车库，方向不变，继续倒车。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">注意点:1、此时要准备车身转正。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、车身位置不合适时要会修正</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">车身回正</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">此时车身回正，将方向打正(向左打一圈半，使大圈向前)，垂直倒车</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"></span><br />\n<span style=\"font-size:16px;line-height:2;\">停车</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">透过左侧反光镜下沿看到控制线，开始将离合与刹车同时缓慢踩死。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">将变挡杆调到1档，准备出库。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">向右打方向</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">开始出库，眼睛目视车头前方，当车头线没(mo)过前控制线(此时车头距离前控制线1.5m~2m左右)，将方向向右打死</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">车身回正</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">控制好车速，视线目视前方，当车身回正，将方向打正(向左打一圈半，使大圈向前)</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">注意事项</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">用脚尖控制 离合，便于控制半联动</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">当方向打死时松一下离合，防止车停止</span><br />', '66', '1486968131', '1491617383', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('61', '17', '科目二考试易错点', '合肥学车、肥东驾考、肥西考场', '七七学车-合肥新考试中心-肥东学车', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201701/20170103112938_13060.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '学员通病：停车不到位、坡起过程中熄火、溜车\"。\n教练纠正：定点坡起要注意两方面。第一，停车的位置要掌握好。按照规定，车辆的前保险杠距规定', '<span style=\"font-size:16px;line-height:2;\">学员通病：停车不到位、坡起过程中熄火、溜车\"。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">教练纠正：定点坡起要注意两方面。第一，停车的位置要掌握好。按照规定，车辆的前保险杠距规定的停止线前后不得大于50厘米，否则考试的时候将被扣掉分数；右侧离边线不得大于30厘米，否则也要被扣掉分数。所以选好停车的时机很重要。为了防止在坡起的过程中熄火要练好油离配合，同时掌握好松手刹的时机，松了手刹后继续缓慢给油。防止\"溜车\"的办法就是在定点停车后一定要把手刹拉紧。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">学员通病：回方向的时机掌握不好。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">教练纠正：侧方停车首先要找到一个合适的停车点，为下一步倒车入库的操作做准备。接下来就是及时打方向盘，然后及时回方向。如果回方向晚了，那么就会造成右侧车身出线，如果回轮早了，会造成左侧车身出线。还有一种情况，就是在倒车的时候，不注意判断车辆位置，容易后方车身出线。在完成整个侧方停车课目的过程中也要做到手快、眼快、车速尽量放慢。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">学员通病：没有掌握最佳的打方向时机，车速过快。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">教练纠正：当车身右侧靠近外直角边线，左、右前车门三角窗中间对准内、外直角线时方向分别向左再向右打到底，车正时回正方向即可顺利通过。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">学员通病：掌握不好打轮的时机，车速过快</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">教练纠正：刚进去之后方向盘打正 ，车头差不多全部掩过线之后左打一圈 ，车头过来之后，再回正方向盘 ，掩过全部线之后又打一圈 ，方向盘不要动 等到车完全出线再回正 。注意速度千万不能过快。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">学员通病：打方向过慢，不能正确判断车辆的位置，车速快。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">教练纠正：倒车时，学员一定要让车速尽量慢下来，同时打方向的速度要快，动作要干净利落。另外，打方向时要严格遵守\"十字交叉\"原则，避免\"搓轮\"，这样有利于随时正确判断车辆的位置和车轮的方向。一定要控制好车速，车速慢的情况下可以随时调整车辆的位置，以免撞杆。</span><br />', '19', '1487035592', '1487038874', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('62', '17', '科目一考试完整复习资料及考试秘笈', '合肥驾校-肥东驾考-肥西驾考', '合肥考驾照、七七学车、七七驾考', '0', '0', '', '0', null, '/file/uploads/image/201702/20170214100312_33444.jpg', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/pages/show-itemid-21.html', '科目一考试内容\n1、道路交通安全法律、法规和规章;\n2、交通信号及其含义;\n3、安全行车、文明驾驶知识;\n4、高速公路、山区道路、桥梁、隧道、夜间、', '<span style=\"font-size:16px;line-height:2;\"><strong>科目一考试内容</strong></span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、道路交通安全法律、法规和规章;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、交通信号及其含义;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、安全行车、文明驾驶知识;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、高速公路、山区道路、桥梁、隧道、夜间、恶劣气象和复杂道路条件下的安全驾驶知识;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、出现爆胎、转向失控、制动失灵等紧急情况时的临危处置知识;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6、机动车总体构造、主要安全装置常识、日常检查和维护基本知识;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">7、发生交通事故后的自救、急救等基本知识，以及常见危险物品知识。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">合格标准</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">满分为100分，成绩达到90分的为合格。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">考试由申请人通过计算机闭卷答题，考试时间为45分钟。科目一共考试100道题，由计算机考试系统从考试 题库中随机抽取生成。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"><strong>科目一考试流程</strong></span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、学员在领取科目一考试受理凭证后，先核对受理凭证上的基本信息(如姓名、身份证号、照片、准驾车型)是否与本人相符，无误后按受理凭证上的考试时间和考试地点，到车管所考场参加考试。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、到车管所后，持本人有效身份证原件、考试受理凭证和学员候考证在科目一考试室外排队依次进入考场。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3、进入考场时，先将身份证原件及受理凭证交给考官登录确认后，按计算机安排的座位号入座。入座后输入本人考试受理凭证流水号，按“确定”显示本人资料无误后再按“进入”进入考试，做完上一道题再点击下一道题。考试共计100道题，时间为45分钟，C照科目一90分合格。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4、在考试过程中，改题按“选题”输入所需更改的题号，按“确定”后直接在屏幕上更改。结束考试按“结束”并再次根据屏幕中央的提示，按“结束考试”，看见分数后按“返回”退出考试。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">5、考试结束，学员到“出口”处凭“考试受理凭证”打印考试成绩表及驾驶技能准考证明，并在《机动车驾驶人考试成绩表》科目一考试“被考人签名”栏签名，填写“考试当天的时间”，考场后将技能证明和成绩表交给学校领队，切勿遗失。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6、自觉遵守考场纪律和维护考场秩序，严禁将考试书籍和个人随身携带的物品(包括手机、手提包)带入考场，禁止任何形式的作弊行为，保持肃静。否则，被车管所注销成绩或学籍，责任自负。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"><strong>科目一注意事项：(一定要知道)</strong></span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1.进入考场后</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">找好自己的位置，一般监考官会为大家分配好，考试之前，你一定要确认好自己的姓名和档案号，确认无误后按1开始考试，要是有发现问题应立即举手向监考考官反映，请求解决。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2.关于选择答案，答过题目不能修改(很重要!!)</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">选择题有四个选项，ABCD分别对应1234四个键，判断题1为正确，2为错误。若要看上一题按7，看下一道题按9，检查未做题按5，如果你一不小心按错答案，直接输入新答案，旧答案就可以覆盖了。但是如果你做了几道题之后，才发现之前的第一道题是错误的，那你必须要翻到那一题你才能改答案，而你在后来做的那些题就全无效了，你必须重新做一遍，这样的话就浪费了不少时间。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">学员点击提交进入下一题后，上一道题对错会直接告知并且不能更改，在考卷中会显示错题总数。当错题总数达到11道时，无论是否答完，科目一考试都将结束，所以大家务必注意：</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">1、在提交进入下一题前，请认真检查所选选项。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">2、按顺序选择每一道题目的答案，不要漏答。一旦不做进入下一题，系统立即判错扣分。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">3.注意答题时间</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">科目一考试试卷共100题，题型为判断题和单选题，以案例、图片及动画形式的题目居多。所以在平时练习时多注意考试时间!规定的45分钟时间一到，计算机会自动交卷，然后评分给出成绩。如果想提前交卷按8，然后再按1，计算机就会告诉你考试成绩了。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">4.全面复习，不要心存侥幸</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">科目一考场中有严密的监控系统，由交管局统一监考，你的一举一动都在监控之中，所以不要心存侥幸。扎实参加科目一理论考试课程，复习复习，认真备考才是王道。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"></span><br />\n<span style=\"font-size:16px;line-height:2;\">5.必须携带身份证，未带身份证不得进入考场。</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">6.考试合格的必须签字，成绩单未签字，成绩无效。</span><br />', '20', '1487036077', '1487038942', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('64', '17', '倒车入库一边宽一边窄', '合肥学车，合肥驾照，肥东驾照考试', '合肥学车报名、合肥驾考报名。肥东学车', '0', '0', '', '1', null, '/file/uploads/image/201702/20170216094704_32903.jpg', null, '合肥学车', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '科目二考试中的倒车入库，其实自己只要掌握了那个点就会很简单!那么如何将车稳稳的停在库位中间?要是一边宽一边窄要怎么调整?\n许多学员都反映倒车', '<span style=\"font-size:16px;line-height:2;\">科目二考试中的倒车入库，其实自己只要掌握了那个点就会很简单!那么如何将车稳稳的停在库位中间?要是一边宽一边窄要怎么调整?</span><br />\n<br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"> 许多学员都反映倒车入库总是压线，或者是倒进库后一边宽一边窄，这其实这跟车速和打方向盘有很大的关系，车速控制好了，再控制好离合，通过后视镜慢慢打方向盘就可以。小编觉得倒库时如果你有把握一次性入库的话那建议你找到你打方向盘关键点，如果你没有把握一次性入库，小编觉得还是早打方向盘较好。</span><br />\n<br />\n<br />\n<p>\n	<span style=\"font-size:16px;line-height:2;\">一、早打方向盘的话，右倒库时车轮会离库角较近，或者倒进库停车后就会是左宽右窄的问题。</span>\n</p>\n<p>\n	<br />\n<span style=\"font-size:16px;line-height:2;\"> 二、还有一种情况就时方向盘打晚了，或者倒车入库后停车后就会出现左窄右宽</span>\n</p>\n<p>\n	<span style=\"font-size:16px;line-height:2;\">1、每个人的座位位置、身高不一致，教练教的点位在这个基础上就大打折扣;</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\"> 2、打方向盘的时机和车身速度不一致，差之毫厘，谬以千里。</span>\n</p>', '41', '1487209766', '1492915198', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('63', '17', '最全的交通标志集合', '合肥驾校-肥东驾考-肥西驾考', '合肥学车、七七学车、七七驾考', '0', '0', 'http://www.77xueche.com/pages/show-itemid-21.html', '0', null, '/file/uploads/image/201702/20170214101938_14878.jpg', null, '合肥驾考培训', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '史上最全的交通标志集合来啦！看图吧~', '<p>\n	<span style=\"color:#3C3C3C;font-family:\'Microsoft YaHei\', 微软雅黑;font-size:16px;line-height:2;text-indent:32px;white-space:normal;background-color:#FFFFFF;\">史上最全的交通标志集合来啦！看图吧~</span><span style=\"font-size:16px;line-height:2;\"></span>\n</p>\n<p>\n	<img src=\"http://news.jsyks.com/yxlimg/798df6e3.jpg\" />\n</p>', '25', '1487038850', '1487042874', null, '2');
INSERT INTO `lxzcms_news_11` VALUES ('65', '17', '坡道定点停车的技巧', '合肥考驾照、合肥互联网学车、肥东驾考', '合肥考驾照、七七学车、七七驾考', '0', '0', '', '1', null, '/file/uploads/image/201702/20170216143125_62279.png', null, '合肥驾考', '七七学车-合肥驾校-合肥学车', 'http://www.77xueche.com/', '科目二考试中坡道定点停车与起步项目相对来说较容易，但是我们很多学员在考试中定不好点而且容易溜车，起步易熄火。最重要的是如何对线找点?\n停', '<span style=\"font-size:16px;line-height:2;\">科目二考试中坡道定点停车与起步项目相对来说较容易，但是我们很多学员在考试中定不好点而且容易溜车，起步易熄火。最重要的是如何对线找点?</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">停不准。这也和离合的控制有很大的关系，需要学员保持匀速爬坡，期间坐姿要端正，以正确找到刹车点。</span><br />\n<br />\n<span style=\"font-size:16px;line-height:2;\">提前减速控制车速定点停车时，要考虑到车与线的距离，在距离停车线时及早停车。大多数过来人都在停车线10米左右就开始利用离合器开始减速。“当要到停止线时，就对离合器多踩点就走得更慢了，如果力不够就抬点，此时右脚一定要放在刹车上，眼睛瞄准停止线，一到达停止线，就踩住刹车离合停下。如果发现有点往后溜车就立即踩住刹车，拉住手刹。这样保证停车非常标准也不会错位。此方法是学院多次考试的经验总结，利用这种方法，离合一定要控制好，油门一定要跟，这样往上走的动力就肯定有，就不容易熄火和溜车了。”</span><br />\n<span style=\"font-size:16px;line-height:2;\">踩定刹车一脚停车的方法在日常训练中也有不少 驾校采用。此方法最重要是的对刹车踩死时车子惯性导致前移距离的把握。很多教练会让学员用车内副驾驶的车把手作为参照物，以对准定点停车线。主要看教练定的点在哪，在车子行驶中把手距离即将达到停车线之间，同时踩下离合器和脚刹，就能一脚定在线上。不过此方法需要多练习，常估计。只要把握对了，就能通过。</span><br />', '43', '1487226719', '1492708258', null, '2');

-- ----------------------------
-- Table structure for lxzcms_pages_8
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_pages_8`;
CREATE TABLE `lxzcms_pages_8` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cid` bigint(20) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT NULL,
  `seokeyword` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `islink` tinyint(4) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `content` text COMMENT '内容',
  `sort` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `hits` bigint(20) DEFAULT NULL COMMENT '浏览量',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `edittime` int(11) DEFAULT NULL COMMENT '更新时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '发布者ip',
  `adminid` int(11) DEFAULT NULL COMMENT '添加的管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_pages_8
-- ----------------------------
INSERT INTO `lxzcms_pages_8` VALUES ('20', '1', '关于我们', '', '', '', '0', '', '1', '关于我们', '100', 'page-about', '0', '1480992546', '1481191954', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('21', '10', '场地分布', '', '', '', '0', '', '1', '场地分布', '100', 'page-site', '0', '1480992563', '1481105178', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('22', '10', '学车问答', '', '', '', '0', '', '1', '学车问答', '100', 'page-ask', '0', '1480992574', '1481105008', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('23', '10', '学车保障', '', '', '', '0', '', '1', '学车保障', '100', 'page-baozhang', '0', '1483526684', '1483526684', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('24', '10', '合肥学车2800起，还送品牌自行车', '合肥学车2800起，还送品牌自行车-七七学车', '', '', '0', '', '1', '合肥学车2800起，还送品牌自行车', '100', 'page-170116', '0', '1484535469', '1484536209', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('25', '10', '考不过赔学费', '', '', '', '0', '', '1', '考不过赔学费', '100', 'page-xuechexian', '0', '1486457567', '1486457567', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('26', '20', '报名条件', '', '', '', '0', '', '1', '<strong>(一)年龄条件</strong>\n<p>\n	1、申请小型汽车、小型自动挡汽车、轻便摩托车准驾车型的，在18周岁以上，70周岁以下;\n</p>\n<p>\n	2、申请低速载货汽车、三轮汽车、普通三轮摩托车、普通二轮摩托车或者轮式自行机械车准驾车型的，在18周岁以上，60周岁以下;\n</p>\n<p>\n	3、申请城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，在21周岁以上，50周岁以下;\n</p>\n<p>\n	4、申请牵引车准驾车型的，在24周岁以上，50周岁以下;\n</p>\n<p>\n	5、申请大型客车准驾车型的，在26周岁以上，50周岁以下。\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<strong>(二)身体条件</strong>\n</p>\n<p>\n	1、身高：申请大型客车、牵引车、城市公交车、大型货车、无轨电车准驾车型的，身高为155厘米以上。申请中型客车准驾车型的，身高为150厘米以上;\n</p>\n<p>\n	2、视力：申请大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车或者有轨电车准驾车型的，两眼裸视力或者矫正视力达到对数视力表5.0以上。申请其他准驾车型的，两眼裸视力或者矫正视力达到对数视力表4.9以上;\n</p>\n<p>\n	3、辨色力：无红绿色盲;\n</p>\n<p>\n	4、听力：两耳分别距音叉50厘米能辨别声源方向;\n</p>\n<p>\n	5、上肢：双手拇指健全，每只手其他手指必须有三指健全，肢体和手指运动功能正常;\n</p>\n<p>\n	6、下肢：运动功能正常。申请驾驶手动挡汽车，下肢不等长度不得大于5厘米。申请驾驶自动挡汽车，右下肢应当健全;\n</p>\n<p>\n	7、躯干、颈部：无运动功能障碍。\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<strong>(三)以下情形不得申请</strong>\n</p>\n<p>\n	1.有器质性心脏病、癫痫病、美尼尔氏症、眩晕症、癔病、震颤麻痹、精神病、痴呆以及影响肢体活动的神经系统疾病等妨碍安全驾驶疾病的;\n</p>\n<p>\n	2.吸食、注射毒品、长期服用依赖性精神药品成瘾尚未戒除的;\n</p>\n<p>\n	3.吊销机动车驾驶证未满两年的;\n</p>\n<p>\n	4. 造成交通事故后逃逸被吊销机动车驾驶证的;\n</p>\n<p>\n	5.驾驶许可依法被撤销未满三年的;\n</p>\n<p>\n	6.法律、行政法规规定的其他情形。\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<strong>(四)报名材料</strong>\n</p>\n<p>\n	1、体检申请表(到驾校领取)\n</p>\n<p>\n	2、身份证原件(有效期内)\n</p>\n<p>\n	3、暂住证原件(身份证地址非本地)\n</p>\n<p>\n	4、一寸白底彩照4张(报名中心可以拍)\n</p>\n<p>\n	5、近视带上眼镜(报名中心也可以租借)\n</p>\n<p>\n	6、考过摩托车驾照的把摩托车驾照带上\n</p>\n<p>\n	7、报名费\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<strong> (五)拥有摩托车证如何办理报名</strong>\n</p>\n<p>\n	1、本地摩托车E照满一年后才能报考C证;\n</p>\n<p>\n	2、如您有本地摩托车E照，请在报名时带上进行合并(CE)证，如果您的摩托车E照是外地的，需要将其转入本地或直接在原地注销后方能报考C证。\n</p>', '100', 'page-default2', '0', '1487151035', '1487154359', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('27', '20', '准备材料', '', '', '', '0', '', '1', '<p>\n	本地：身份证原件\n</p>\n<p>\n	外地：身份证原件、暂住证原件\n</p>\n<p>\n	&nbsp;\n</p>', '100', 'page-default2', '0', '1487151086', '1487151086', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('28', '20', '学车流程', '', '', '', '0', '', '1', '<img src=\"/file/uploads/image/201702/20170215173217_13831.jpg\" alt=\"\" />', '100', 'page-default2', '0', '1487151145', '1487154374', null, '1');
INSERT INTO `lxzcms_pages_8` VALUES ('29', '20', '培训协议', '', '', '', '0', '', '1', '<p style=\"text-align:center;line-height:1.75em;\">\n	<span style=\"font-size:18px;\"><strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">七七学车平台学员学车保障协议</span></strong></span> \n</p>\n<p>\n	<br />\n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">以下为合肥众程达网络科技有限公司（简称七七学车）与学员签订的《学员学车保障协议》，报名时请认真阅读，以保障自己的权益，报名资料递交并支付费用后，本协议自动生效。</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\n</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">为确保七七学车学车平台的业务顺利进展，促进学员学车优质体验，解除学员学车顾虑，双方本着自愿平等、互利互惠的原则，就学员在1217平台学车服务事宜达成一致意见并签署本协议，学员确定认同甲方服务模式，自愿委托1217提供学车服务。</span> \n</p>\n<p style=\"line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\n</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">第一条</span></strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"> 1217提供报考服务和提供优质驾校考场资源供学员自由选择，学员按照平台要求接受学车服务。</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">第二条</span></strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"> 1217代收代付驾校报名培训费，以订单上金额为依据，相关收据或发票由实际提供培训服务的驾校出具。</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">第三条</span></strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"> 1217服务范围</span> \n</p>\n<p style=\"line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\"><br />\n</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">1.   为学员提供学车咨询服务；</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">2.   为学员提供附近考场资源，供学员自由选择；</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">3.   对学员学车过程进行全程质量监控，保障学员利益；</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">4.   为学员及时协调处理学车过程提出的合理要求和建议；</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">5.  \n为学员提供如下辅助服务：教练吃拿卡要（提请双倍赔偿并协助学员追责教练）、驾校服务（如若因为驾校原因造成学员不能正常考试，辅助学员追责驾校）、训练交通事故学员免责、考场不公平对待（针对个人或部分群体，考场对驾考设置人为干扰，协助学员进行法律追责及赔偿）；</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">6.   若学员连续5次补考不过而重新报名学车，将获得 “不过包赔”保险赔付，赔付的金额以当时驾校报名培训费用发票金额为准,具体赔付流程以平安保险用户告知书为准；</span> \n</p>\n<p style=\"text-indent:2em;line-height:1.75em;\">\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';\">7.   代收代付款项服务：代收代付款项服务是指1217为学员提供的代为收取或支付相关款项的服务，其中：<%', '100', 'page-default2', '0', '1487151349', '1487154493', null, '1');

-- ----------------------------
-- Table structure for lxzcms_setting
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_setting`;
CREATE TABLE `lxzcms_setting` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sitename` varchar(255) DEFAULT NULL,
  `rewrite` tinyint(1) DEFAULT NULL,
  `seotitle` varchar(255) DEFAULT NULL,
  `seokeyword` varchar(255) DEFAULT NULL,
  `seodescription` varchar(255) DEFAULT NULL,
  `sitelogo` varchar(255) DEFAULT NULL,
  `logowidth` int(4) DEFAULT NULL,
  `logoheight` int(4) DEFAULT NULL,
  `beian` varchar(255) DEFAULT NULL,
  `fcstatus` tinyint(4) DEFAULT NULL,
  `floatcontact` text,
  `tel` varchar(255) DEFAULT NULL,
  `copyright` text,
  `stats` text,
  `template` varchar(20) DEFAULT NULL,
  `edittime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_setting
-- ----------------------------
INSERT INTO `lxzcms_setting` VALUES ('1', '直播系统', '0', '直播系统', '直播系统', '直播系统', '/file/uploads/image/201701/20170103112938_13060.png', '450', '80', '皖ICP备17000450号', '0', '', '0551-67682351', '<p>\n	Copyright 2016-2018 77xueche.com. ALL Rights Reserved 合肥众程达网络科技限公司  版权所有\n</p>', '', 'default', '1504513002');

-- ----------------------------
-- Table structure for lxzcms_template
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_template`;
CREATE TABLE `lxzcms_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '模板中文名称',
  `intro` text,
  `path` varchar(50) DEFAULT NULL COMMENT '模板目录名称',
  `selected` tinyint(255) DEFAULT NULL COMMENT '模板是否被使用',
  `author` varchar(20) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL COMMENT '模板创建时间',
  `edittime` int(11) DEFAULT NULL COMMENT '模板更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_template
-- ----------------------------
INSERT INTO `lxzcms_template` VALUES ('1', '默认模板', '系统默认模板', 'default', '1', '凌汛网络', '1.0.0', '0', '0');

-- ----------------------------
-- Table structure for lxzcms_user
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_user`;
CREATE TABLE `lxzcms_user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL COMMENT '会员组id',
  `account` varchar(40) DEFAULT NULL COMMENT '会员账号',
  `nickname` varchar(40) DEFAULT NULL COMMENT '会员昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '会员头像',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phonenum` varchar(16) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '会员邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT '会员QQ',
  `sex` varchar(10) DEFAULT NULL COMMENT '会员性别',
  `regip` varchar(50) DEFAULT NULL COMMENT '注册ip',
  `regtime` int(11) DEFAULT NULL COMMENT '注册时间',
  `loginip` varchar(50) DEFAULT NULL COMMENT '登录ip',
  `logintime` int(11) DEFAULT NULL COMMENT '登录时间',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '上次登录时间',
  `logins` int(11) DEFAULT NULL COMMENT '登录次数',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_user
-- ----------------------------

-- ----------------------------
-- Table structure for lxzcms_user_group
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_user_group`;
CREATE TABLE `lxzcms_user_group` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `gname` varchar(16) DEFAULT NULL COMMENT '会员组名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `allow` text COMMENT '会员组权限',
  `addtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `edittime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_user_group
-- ----------------------------
INSERT INTO `lxzcms_user_group` VALUES ('1', '代理会员', '0', '代理会员', '1469434726', '1469434726');

-- ----------------------------
-- Table structure for lxzcms_wordtags
-- ----------------------------
DROP TABLE IF EXISTS `lxzcms_wordtags`;
CREATE TABLE `lxzcms_wordtags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `linkurl` varchar(255) DEFAULT NULL COMMENT '外链URL',
  `len` int(11) DEFAULT NULL COMMENT '关键词长度',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `edittime` int(11) DEFAULT NULL COMMENT '更新时间',
  `ip` varchar(255) DEFAULT NULL COMMENT '发布者ip',
  `adminid` int(11) DEFAULT NULL COMMENT '添加的管理员',
  `target` text COMMENT '链接打开方式',
  `mod` text COMMENT '生效模块',
  `tip` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lxzcms_wordtags
-- ----------------------------
