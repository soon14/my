/*
Navicat MySQL Data Transfer

Source Server         : 192.168.100.27
Source Server Version : 50515
Source Host           : 192.168.100.27:3306
Source Database       : mok

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2016-12-05 15:01:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `oc_city`
-- ----------------------------
DROP TABLE IF EXISTS `oc_city`;
CREATE TABLE `oc_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_city
-- ----------------------------
INSERT INTO `oc_city` VALUES ('1', '44', '684', '合肥市', '1');
INSERT INTO `oc_city` VALUES ('2', '44', '684', '芜湖市', '1');
INSERT INTO `oc_city` VALUES ('3', '44', '684', '蚌埠市', '1');
INSERT INTO `oc_city` VALUES ('4', '44', '684', '淮南市', '1');
INSERT INTO `oc_city` VALUES ('5', '44', '684', '马鞍山市', '1');
INSERT INTO `oc_city` VALUES ('6', '44', '684', '淮北市', '1');
INSERT INTO `oc_city` VALUES ('7', '44', '684', '铜陵市', '1');
INSERT INTO `oc_city` VALUES ('8', '44', '684', '安庆市', '1');
INSERT INTO `oc_city` VALUES ('9', '44', '684', '黄山市', '1');
INSERT INTO `oc_city` VALUES ('10', '44', '684', '滁州市', '1');
INSERT INTO `oc_city` VALUES ('11', '44', '684', '阜阳市', '1');
INSERT INTO `oc_city` VALUES ('12', '44', '684', '宿州市', '1');
INSERT INTO `oc_city` VALUES ('13', '44', '684', '巢湖市', '1');
INSERT INTO `oc_city` VALUES ('14', '44', '684', '六安市', '1');
INSERT INTO `oc_city` VALUES ('15', '44', '684', '亳州市', '1');
INSERT INTO `oc_city` VALUES ('16', '44', '684', '池州市', '1');
INSERT INTO `oc_city` VALUES ('17', '44', '684', '宣城市', '1');
INSERT INTO `oc_city` VALUES ('18', '44', '685', '北京市', '1');
INSERT INTO `oc_city` VALUES ('19', '44', '686', '市辖区', '1');
INSERT INTO `oc_city` VALUES ('20', '44', '686', '县', '1');
INSERT INTO `oc_city` VALUES ('21', '44', '686', '市', '1');
INSERT INTO `oc_city` VALUES ('22', '44', '687', '福州市', '1');
INSERT INTO `oc_city` VALUES ('23', '44', '687', '厦门市', '1');
INSERT INTO `oc_city` VALUES ('24', '44', '687', '莆田市', '1');
INSERT INTO `oc_city` VALUES ('25', '44', '687', '三明市', '1');
INSERT INTO `oc_city` VALUES ('26', '44', '687', '泉州市', '1');
INSERT INTO `oc_city` VALUES ('27', '44', '687', '漳州市', '1');
INSERT INTO `oc_city` VALUES ('28', '44', '687', '南平市', '1');
INSERT INTO `oc_city` VALUES ('29', '44', '687', '龙岩市', '1');
INSERT INTO `oc_city` VALUES ('30', '44', '687', '宁德市', '1');
INSERT INTO `oc_city` VALUES ('31', '44', '688', '兰州市', '1');
INSERT INTO `oc_city` VALUES ('32', '44', '688', '嘉峪关市', '1');
INSERT INTO `oc_city` VALUES ('33', '44', '688', '金昌市', '1');
INSERT INTO `oc_city` VALUES ('34', '44', '688', '白银市', '1');
INSERT INTO `oc_city` VALUES ('35', '44', '688', '天水市', '1');
INSERT INTO `oc_city` VALUES ('36', '44', '688', '武威市', '1');
INSERT INTO `oc_city` VALUES ('37', '44', '688', '张掖市', '1');
INSERT INTO `oc_city` VALUES ('38', '44', '688', '平凉市', '1');
INSERT INTO `oc_city` VALUES ('39', '44', '688', '酒泉市', '1');
INSERT INTO `oc_city` VALUES ('40', '44', '688', '庆阳市', '1');
INSERT INTO `oc_city` VALUES ('41', '44', '688', '定西市', '1');
INSERT INTO `oc_city` VALUES ('42', '44', '688', '陇南市', '1');
INSERT INTO `oc_city` VALUES ('43', '44', '688', '临夏回族自治州', '1');
INSERT INTO `oc_city` VALUES ('44', '44', '688', '甘南藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('45', '44', '689', '广州市', '1');
INSERT INTO `oc_city` VALUES ('46', '44', '689', '韶关市', '1');
INSERT INTO `oc_city` VALUES ('47', '44', '689', '深圳市', '1');
INSERT INTO `oc_city` VALUES ('48', '44', '689', '珠海市', '1');
INSERT INTO `oc_city` VALUES ('49', '44', '689', '汕头市', '1');
INSERT INTO `oc_city` VALUES ('50', '44', '689', '佛山市', '1');
INSERT INTO `oc_city` VALUES ('51', '44', '689', '江门市', '1');
INSERT INTO `oc_city` VALUES ('52', '44', '689', '湛江市', '1');
INSERT INTO `oc_city` VALUES ('53', '44', '689', '茂名市', '1');
INSERT INTO `oc_city` VALUES ('54', '44', '689', '肇庆市', '1');
INSERT INTO `oc_city` VALUES ('55', '44', '689', '惠州市', '1');
INSERT INTO `oc_city` VALUES ('56', '44', '689', '梅州市', '1');
INSERT INTO `oc_city` VALUES ('57', '44', '689', '汕尾市', '1');
INSERT INTO `oc_city` VALUES ('58', '44', '689', '河源市', '1');
INSERT INTO `oc_city` VALUES ('59', '44', '689', '阳江市', '1');
INSERT INTO `oc_city` VALUES ('60', '44', '689', '清远市', '1');
INSERT INTO `oc_city` VALUES ('61', '44', '689', '东莞市', '1');
INSERT INTO `oc_city` VALUES ('62', '44', '689', '中山市', '1');
INSERT INTO `oc_city` VALUES ('63', '44', '689', '潮州市', '1');
INSERT INTO `oc_city` VALUES ('64', '44', '689', '揭阳市', '1');
INSERT INTO `oc_city` VALUES ('65', '44', '689', '云浮市', '1');
INSERT INTO `oc_city` VALUES ('66', '44', '690', '南宁市', '1');
INSERT INTO `oc_city` VALUES ('67', '44', '690', '柳州市', '1');
INSERT INTO `oc_city` VALUES ('68', '44', '690', '桂林市', '1');
INSERT INTO `oc_city` VALUES ('69', '44', '690', '梧州市', '1');
INSERT INTO `oc_city` VALUES ('70', '44', '690', '北海市', '1');
INSERT INTO `oc_city` VALUES ('71', '44', '690', '防城港市', '1');
INSERT INTO `oc_city` VALUES ('72', '44', '690', '钦州市', '1');
INSERT INTO `oc_city` VALUES ('73', '44', '690', '贵港市', '1');
INSERT INTO `oc_city` VALUES ('74', '44', '690', '玉林市', '1');
INSERT INTO `oc_city` VALUES ('75', '44', '690', '百色市', '1');
INSERT INTO `oc_city` VALUES ('76', '44', '690', '贺州市', '1');
INSERT INTO `oc_city` VALUES ('77', '44', '690', '河池市', '1');
INSERT INTO `oc_city` VALUES ('78', '44', '690', '来宾市', '1');
INSERT INTO `oc_city` VALUES ('79', '44', '690', '崇左市', '1');
INSERT INTO `oc_city` VALUES ('80', '44', '691', '贵阳市', '1');
INSERT INTO `oc_city` VALUES ('81', '44', '691', '六盘水市', '1');
INSERT INTO `oc_city` VALUES ('82', '44', '691', '遵义市', '1');
INSERT INTO `oc_city` VALUES ('83', '44', '691', '安顺市', '1');
INSERT INTO `oc_city` VALUES ('84', '44', '691', '铜仁地区', '1');
INSERT INTO `oc_city` VALUES ('85', '44', '691', '黔西南布依族苗族自治州', '1');
INSERT INTO `oc_city` VALUES ('86', '44', '691', '毕节地区', '1');
INSERT INTO `oc_city` VALUES ('87', '44', '691', '黔东南苗族侗族自治州', '1');
INSERT INTO `oc_city` VALUES ('88', '44', '691', '黔南布依族苗族自治州', '1');
INSERT INTO `oc_city` VALUES ('89', '44', '692', '海口市', '1');
INSERT INTO `oc_city` VALUES ('90', '44', '692', '三亚市', '1');
INSERT INTO `oc_city` VALUES ('91', '44', '692', '省直辖县级行政单位', '1');
INSERT INTO `oc_city` VALUES ('92', '44', '693', '石家庄市', '1');
INSERT INTO `oc_city` VALUES ('93', '44', '693', '唐山市', '1');
INSERT INTO `oc_city` VALUES ('94', '44', '693', '秦皇岛市', '1');
INSERT INTO `oc_city` VALUES ('95', '44', '693', '邯郸市', '1');
INSERT INTO `oc_city` VALUES ('96', '44', '693', '邢台市', '1');
INSERT INTO `oc_city` VALUES ('97', '44', '693', '保定市', '1');
INSERT INTO `oc_city` VALUES ('98', '44', '693', '张家口市', '1');
INSERT INTO `oc_city` VALUES ('99', '44', '693', '承德市', '1');
INSERT INTO `oc_city` VALUES ('100', '44', '693', '沧州市', '1');
INSERT INTO `oc_city` VALUES ('101', '44', '693', '廊坊市', '1');
INSERT INTO `oc_city` VALUES ('102', '44', '693', '衡水市', '1');
INSERT INTO `oc_city` VALUES ('103', '44', '694', '哈尔滨市', '1');
INSERT INTO `oc_city` VALUES ('104', '44', '694', '齐齐哈尔市', '1');
INSERT INTO `oc_city` VALUES ('105', '44', '694', '鸡西市', '1');
INSERT INTO `oc_city` VALUES ('106', '44', '694', '鹤岗市', '1');
INSERT INTO `oc_city` VALUES ('107', '44', '694', '双鸭山市', '1');
INSERT INTO `oc_city` VALUES ('108', '44', '694', '大庆市', '1');
INSERT INTO `oc_city` VALUES ('109', '44', '694', '伊春市', '1');
INSERT INTO `oc_city` VALUES ('110', '44', '694', '佳木斯市', '1');
INSERT INTO `oc_city` VALUES ('111', '44', '694', '七台河市', '1');
INSERT INTO `oc_city` VALUES ('112', '44', '694', '牡丹江市', '1');
INSERT INTO `oc_city` VALUES ('113', '44', '694', '黑河市', '1');
INSERT INTO `oc_city` VALUES ('114', '44', '694', '绥化市', '1');
INSERT INTO `oc_city` VALUES ('115', '44', '694', '大兴安岭地区', '1');
INSERT INTO `oc_city` VALUES ('116', '44', '695', '郑州市', '1');
INSERT INTO `oc_city` VALUES ('117', '44', '695', '开封市', '1');
INSERT INTO `oc_city` VALUES ('118', '44', '695', '洛阳市', '1');
INSERT INTO `oc_city` VALUES ('119', '44', '695', '平顶山市', '1');
INSERT INTO `oc_city` VALUES ('120', '44', '695', '安阳市', '1');
INSERT INTO `oc_city` VALUES ('121', '44', '695', '鹤壁市', '1');
INSERT INTO `oc_city` VALUES ('122', '44', '695', '新乡市', '1');
INSERT INTO `oc_city` VALUES ('123', '44', '695', '焦作市', '1');
INSERT INTO `oc_city` VALUES ('124', '44', '695', '濮阳市', '1');
INSERT INTO `oc_city` VALUES ('125', '44', '695', '许昌市', '1');
INSERT INTO `oc_city` VALUES ('126', '44', '695', '漯河市', '1');
INSERT INTO `oc_city` VALUES ('127', '44', '695', '三门峡市', '1');
INSERT INTO `oc_city` VALUES ('128', '44', '695', '南阳市', '1');
INSERT INTO `oc_city` VALUES ('129', '44', '695', '商丘市', '1');
INSERT INTO `oc_city` VALUES ('130', '44', '695', '信阳市', '1');
INSERT INTO `oc_city` VALUES ('131', '44', '695', '周口市', '1');
INSERT INTO `oc_city` VALUES ('132', '44', '695', '驻马店市', '1');
INSERT INTO `oc_city` VALUES ('133', '44', '697', '武汉市', '1');
INSERT INTO `oc_city` VALUES ('134', '44', '697', '黄石市', '1');
INSERT INTO `oc_city` VALUES ('135', '44', '697', '十堰市', '1');
INSERT INTO `oc_city` VALUES ('136', '44', '697', '宜昌市', '1');
INSERT INTO `oc_city` VALUES ('137', '44', '697', '襄樊市', '1');
INSERT INTO `oc_city` VALUES ('138', '44', '697', '鄂州市', '1');
INSERT INTO `oc_city` VALUES ('139', '44', '697', '荆门市', '1');
INSERT INTO `oc_city` VALUES ('140', '44', '697', '孝感市', '1');
INSERT INTO `oc_city` VALUES ('141', '44', '697', '荆州市', '1');
INSERT INTO `oc_city` VALUES ('142', '44', '697', '黄冈市', '1');
INSERT INTO `oc_city` VALUES ('143', '44', '697', '咸宁市', '1');
INSERT INTO `oc_city` VALUES ('144', '44', '697', '随州市', '1');
INSERT INTO `oc_city` VALUES ('145', '44', '697', '恩施土家族苗族自治州', '1');
INSERT INTO `oc_city` VALUES ('146', '44', '697', '省直辖行政单位', '1');
INSERT INTO `oc_city` VALUES ('147', '44', '698', '长沙市', '1');
INSERT INTO `oc_city` VALUES ('148', '44', '698', '株洲市', '1');
INSERT INTO `oc_city` VALUES ('149', '44', '698', '湘潭市', '1');
INSERT INTO `oc_city` VALUES ('150', '44', '698', '衡阳市', '1');
INSERT INTO `oc_city` VALUES ('151', '44', '698', '邵阳市', '1');
INSERT INTO `oc_city` VALUES ('152', '44', '698', '岳阳市', '1');
INSERT INTO `oc_city` VALUES ('153', '44', '698', '常德市', '1');
INSERT INTO `oc_city` VALUES ('154', '44', '698', '张家界市', '1');
INSERT INTO `oc_city` VALUES ('155', '44', '698', '益阳市', '1');
INSERT INTO `oc_city` VALUES ('156', '44', '698', '郴州市', '1');
INSERT INTO `oc_city` VALUES ('157', '44', '698', '永州市', '1');
INSERT INTO `oc_city` VALUES ('158', '44', '698', '怀化市', '1');
INSERT INTO `oc_city` VALUES ('159', '44', '698', '娄底市', '1');
INSERT INTO `oc_city` VALUES ('160', '44', '698', '湘西土家族苗族自治州', '1');
INSERT INTO `oc_city` VALUES ('161', '44', '699', '呼和浩特市', '1');
INSERT INTO `oc_city` VALUES ('162', '44', '699', '包头市', '1');
INSERT INTO `oc_city` VALUES ('163', '44', '699', '乌海市', '1');
INSERT INTO `oc_city` VALUES ('164', '44', '699', '赤峰市', '1');
INSERT INTO `oc_city` VALUES ('165', '44', '699', '通辽市', '1');
INSERT INTO `oc_city` VALUES ('166', '44', '699', '鄂尔多斯市', '1');
INSERT INTO `oc_city` VALUES ('167', '44', '699', '呼伦贝尔市', '1');
INSERT INTO `oc_city` VALUES ('168', '44', '699', '巴彦淖尔市', '1');
INSERT INTO `oc_city` VALUES ('169', '44', '699', '乌兰察布市', '1');
INSERT INTO `oc_city` VALUES ('170', '44', '699', '兴安盟', '1');
INSERT INTO `oc_city` VALUES ('171', '44', '699', '锡林郭勒盟', '1');
INSERT INTO `oc_city` VALUES ('172', '44', '699', '阿拉善盟', '1');
INSERT INTO `oc_city` VALUES ('173', '44', '700', '南京市', '1');
INSERT INTO `oc_city` VALUES ('174', '44', '700', '无锡市', '1');
INSERT INTO `oc_city` VALUES ('175', '44', '700', '徐州市', '1');
INSERT INTO `oc_city` VALUES ('176', '44', '700', '常州市', '1');
INSERT INTO `oc_city` VALUES ('177', '44', '700', '苏州市', '1');
INSERT INTO `oc_city` VALUES ('178', '44', '700', '南通市', '1');
INSERT INTO `oc_city` VALUES ('179', '44', '700', '连云港市', '1');
INSERT INTO `oc_city` VALUES ('180', '44', '700', '淮安市', '1');
INSERT INTO `oc_city` VALUES ('181', '44', '700', '盐城市', '1');
INSERT INTO `oc_city` VALUES ('182', '44', '700', '扬州市', '1');
INSERT INTO `oc_city` VALUES ('183', '44', '700', '镇江市', '1');
INSERT INTO `oc_city` VALUES ('184', '44', '700', '泰州市', '1');
INSERT INTO `oc_city` VALUES ('185', '44', '700', '宿迁市', '1');
INSERT INTO `oc_city` VALUES ('186', '44', '701', '南昌市', '1');
INSERT INTO `oc_city` VALUES ('187', '44', '701', '景德镇市', '1');
INSERT INTO `oc_city` VALUES ('188', '44', '701', '萍乡市', '1');
INSERT INTO `oc_city` VALUES ('189', '44', '701', '九江市', '1');
INSERT INTO `oc_city` VALUES ('190', '44', '701', '新余市', '1');
INSERT INTO `oc_city` VALUES ('191', '44', '701', '鹰潭市', '1');
INSERT INTO `oc_city` VALUES ('192', '44', '701', '赣州市', '1');
INSERT INTO `oc_city` VALUES ('193', '44', '701', '吉安市', '1');
INSERT INTO `oc_city` VALUES ('194', '44', '701', '宜春市', '1');
INSERT INTO `oc_city` VALUES ('195', '44', '701', '抚州市', '1');
INSERT INTO `oc_city` VALUES ('196', '44', '701', '上饶市', '1');
INSERT INTO `oc_city` VALUES ('197', '44', '702', '长春市', '1');
INSERT INTO `oc_city` VALUES ('198', '44', '702', '吉林市', '1');
INSERT INTO `oc_city` VALUES ('199', '44', '702', '四平市', '1');
INSERT INTO `oc_city` VALUES ('200', '44', '702', '辽源市', '1');
INSERT INTO `oc_city` VALUES ('201', '44', '702', '通化市', '1');
INSERT INTO `oc_city` VALUES ('202', '44', '702', '白山市', '1');
INSERT INTO `oc_city` VALUES ('203', '44', '702', '松原市', '1');
INSERT INTO `oc_city` VALUES ('204', '44', '702', '白城市', '1');
INSERT INTO `oc_city` VALUES ('205', '44', '702', '延边朝鲜族自治州', '1');
INSERT INTO `oc_city` VALUES ('206', '44', '703', '沈阳市', '1');
INSERT INTO `oc_city` VALUES ('207', '44', '703', '大连市', '1');
INSERT INTO `oc_city` VALUES ('208', '44', '703', '鞍山市', '1');
INSERT INTO `oc_city` VALUES ('209', '44', '703', '抚顺市', '1');
INSERT INTO `oc_city` VALUES ('210', '44', '703', '本溪市', '1');
INSERT INTO `oc_city` VALUES ('211', '44', '703', '丹东市', '1');
INSERT INTO `oc_city` VALUES ('212', '44', '703', '锦州市', '1');
INSERT INTO `oc_city` VALUES ('213', '44', '703', '营口市', '1');
INSERT INTO `oc_city` VALUES ('214', '44', '703', '阜新市', '1');
INSERT INTO `oc_city` VALUES ('215', '44', '703', '辽阳市', '1');
INSERT INTO `oc_city` VALUES ('216', '44', '703', '盘锦市', '1');
INSERT INTO `oc_city` VALUES ('217', '44', '703', '铁岭市', '1');
INSERT INTO `oc_city` VALUES ('218', '44', '703', '朝阳市', '1');
INSERT INTO `oc_city` VALUES ('219', '44', '703', '葫芦岛市', '1');
INSERT INTO `oc_city` VALUES ('220', '44', '705', '银川市', '1');
INSERT INTO `oc_city` VALUES ('221', '44', '705', '石嘴山市', '1');
INSERT INTO `oc_city` VALUES ('222', '44', '705', '吴忠市', '1');
INSERT INTO `oc_city` VALUES ('223', '44', '705', '固原市', '1');
INSERT INTO `oc_city` VALUES ('224', '44', '705', '中卫市', '1');
INSERT INTO `oc_city` VALUES ('225', '44', '706', '西安市', '1');
INSERT INTO `oc_city` VALUES ('226', '44', '706', '铜川市', '1');
INSERT INTO `oc_city` VALUES ('227', '44', '706', '宝鸡市', '1');
INSERT INTO `oc_city` VALUES ('228', '44', '706', '咸阳市', '1');
INSERT INTO `oc_city` VALUES ('229', '44', '706', '渭南市', '1');
INSERT INTO `oc_city` VALUES ('230', '44', '706', '延安市', '1');
INSERT INTO `oc_city` VALUES ('231', '44', '706', '汉中市', '1');
INSERT INTO `oc_city` VALUES ('232', '44', '706', '榆林市', '1');
INSERT INTO `oc_city` VALUES ('233', '44', '706', '安康市', '1');
INSERT INTO `oc_city` VALUES ('234', '44', '706', '商洛市', '1');
INSERT INTO `oc_city` VALUES ('235', '44', '707', '济南市', '1');
INSERT INTO `oc_city` VALUES ('236', '44', '707', '青岛市', '1');
INSERT INTO `oc_city` VALUES ('237', '44', '707', '淄博市', '1');
INSERT INTO `oc_city` VALUES ('238', '44', '707', '枣庄市', '1');
INSERT INTO `oc_city` VALUES ('239', '44', '707', '东营市', '1');
INSERT INTO `oc_city` VALUES ('240', '44', '707', '烟台市', '1');
INSERT INTO `oc_city` VALUES ('241', '44', '707', '潍坊市', '1');
INSERT INTO `oc_city` VALUES ('242', '44', '707', '济宁市', '1');
INSERT INTO `oc_city` VALUES ('243', '44', '707', '泰安市', '1');
INSERT INTO `oc_city` VALUES ('244', '44', '707', '威海市', '1');
INSERT INTO `oc_city` VALUES ('245', '44', '707', '日照市', '1');
INSERT INTO `oc_city` VALUES ('246', '44', '707', '莱芜市', '1');
INSERT INTO `oc_city` VALUES ('247', '44', '707', '临沂市', '1');
INSERT INTO `oc_city` VALUES ('248', '44', '707', '德州市', '1');
INSERT INTO `oc_city` VALUES ('249', '44', '707', '聊城市', '1');
INSERT INTO `oc_city` VALUES ('250', '44', '707', '滨州市', '1');
INSERT INTO `oc_city` VALUES ('251', '44', '707', '荷泽市', '1');
INSERT INTO `oc_city` VALUES ('252', '44', '708', '市辖区', '1');
INSERT INTO `oc_city` VALUES ('253', '44', '708', '县', '1');
INSERT INTO `oc_city` VALUES ('254', '44', '709', '太原市', '1');
INSERT INTO `oc_city` VALUES ('255', '44', '709', '大同市', '1');
INSERT INTO `oc_city` VALUES ('256', '44', '709', '阳泉市', '1');
INSERT INTO `oc_city` VALUES ('257', '44', '709', '长治市', '1');
INSERT INTO `oc_city` VALUES ('258', '44', '709', '晋城市', '1');
INSERT INTO `oc_city` VALUES ('259', '44', '709', '朔州市', '1');
INSERT INTO `oc_city` VALUES ('260', '44', '709', '晋中市', '1');
INSERT INTO `oc_city` VALUES ('261', '44', '709', '运城市', '1');
INSERT INTO `oc_city` VALUES ('262', '44', '709', '忻州市', '1');
INSERT INTO `oc_city` VALUES ('263', '44', '709', '临汾市', '1');
INSERT INTO `oc_city` VALUES ('264', '44', '709', '吕梁市', '1');
INSERT INTO `oc_city` VALUES ('265', '44', '710', '成都市', '1');
INSERT INTO `oc_city` VALUES ('266', '44', '710', '自贡市', '1');
INSERT INTO `oc_city` VALUES ('267', '44', '710', '攀枝花市', '1');
INSERT INTO `oc_city` VALUES ('268', '44', '710', '泸州市', '1');
INSERT INTO `oc_city` VALUES ('269', '44', '710', '德阳市', '1');
INSERT INTO `oc_city` VALUES ('270', '44', '710', '绵阳市', '1');
INSERT INTO `oc_city` VALUES ('271', '44', '710', '广元市', '1');
INSERT INTO `oc_city` VALUES ('272', '44', '710', '遂宁市', '1');
INSERT INTO `oc_city` VALUES ('273', '44', '710', '内江市', '1');
INSERT INTO `oc_city` VALUES ('274', '44', '710', '乐山市', '1');
INSERT INTO `oc_city` VALUES ('275', '44', '710', '南充市', '1');
INSERT INTO `oc_city` VALUES ('276', '44', '710', '眉山市', '1');
INSERT INTO `oc_city` VALUES ('277', '44', '710', '宜宾市', '1');
INSERT INTO `oc_city` VALUES ('278', '44', '710', '广安市', '1');
INSERT INTO `oc_city` VALUES ('279', '44', '710', '达州市', '1');
INSERT INTO `oc_city` VALUES ('280', '44', '710', '雅安市', '1');
INSERT INTO `oc_city` VALUES ('281', '44', '710', '巴中市', '1');
INSERT INTO `oc_city` VALUES ('282', '44', '710', '资阳市', '1');
INSERT INTO `oc_city` VALUES ('283', '44', '710', '阿坝藏族羌族自治州', '1');
INSERT INTO `oc_city` VALUES ('284', '44', '710', '甘孜藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('285', '44', '710', '凉山彝族自治州', '1');
INSERT INTO `oc_city` VALUES ('286', '44', '712', '乌鲁木齐市', '1');
INSERT INTO `oc_city` VALUES ('287', '44', '712', '克拉玛依市', '1');
INSERT INTO `oc_city` VALUES ('288', '44', '712', '吐鲁番地区', '1');
INSERT INTO `oc_city` VALUES ('289', '44', '712', '哈密地区', '1');
INSERT INTO `oc_city` VALUES ('290', '44', '712', '昌吉回族自治州', '1');
INSERT INTO `oc_city` VALUES ('291', '44', '712', '博尔塔拉蒙古自治州', '1');
INSERT INTO `oc_city` VALUES ('292', '44', '712', '巴音郭楞蒙古自治州', '1');
INSERT INTO `oc_city` VALUES ('293', '44', '712', '阿克苏地区', '1');
INSERT INTO `oc_city` VALUES ('294', '44', '712', '克孜勒苏柯尔克孜自治州', '1');
INSERT INTO `oc_city` VALUES ('295', '44', '712', '喀什地区', '1');
INSERT INTO `oc_city` VALUES ('296', '44', '712', '和田地区', '1');
INSERT INTO `oc_city` VALUES ('297', '44', '712', '伊犁哈萨克自治州', '1');
INSERT INTO `oc_city` VALUES ('298', '44', '712', '塔城地区', '1');
INSERT INTO `oc_city` VALUES ('299', '44', '712', '阿勒泰地区', '1');
INSERT INTO `oc_city` VALUES ('300', '44', '712', '省直辖行政单位', '1');
INSERT INTO `oc_city` VALUES ('301', '44', '713', '昆明市', '1');
INSERT INTO `oc_city` VALUES ('302', '44', '713', '曲靖市', '1');
INSERT INTO `oc_city` VALUES ('303', '44', '713', '玉溪市', '1');
INSERT INTO `oc_city` VALUES ('304', '44', '713', '保山市', '1');
INSERT INTO `oc_city` VALUES ('305', '44', '713', '昭通市', '1');
INSERT INTO `oc_city` VALUES ('306', '44', '713', '丽江市', '1');
INSERT INTO `oc_city` VALUES ('307', '44', '713', '思茅市', '1');
INSERT INTO `oc_city` VALUES ('308', '44', '713', '临沧市', '1');
INSERT INTO `oc_city` VALUES ('309', '44', '713', '楚雄彝族自治州', '1');
INSERT INTO `oc_city` VALUES ('310', '44', '713', '红河哈尼族彝族自治州', '1');
INSERT INTO `oc_city` VALUES ('311', '44', '713', '文山壮族苗族自治州', '1');
INSERT INTO `oc_city` VALUES ('312', '44', '713', '西双版纳傣族自治州', '1');
INSERT INTO `oc_city` VALUES ('313', '44', '713', '大理白族自治州', '1');
INSERT INTO `oc_city` VALUES ('314', '44', '713', '德宏傣族景颇族自治州', '1');
INSERT INTO `oc_city` VALUES ('315', '44', '713', '怒江傈僳族自治州', '1');
INSERT INTO `oc_city` VALUES ('316', '44', '713', '迪庆藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('317', '44', '714', '杭州市', '1');
INSERT INTO `oc_city` VALUES ('318', '44', '714', '宁波市', '1');
INSERT INTO `oc_city` VALUES ('319', '44', '714', '温州市', '1');
INSERT INTO `oc_city` VALUES ('320', '44', '714', '嘉兴市', '1');
INSERT INTO `oc_city` VALUES ('321', '44', '714', '湖州市', '1');
INSERT INTO `oc_city` VALUES ('322', '44', '714', '绍兴市', '1');
INSERT INTO `oc_city` VALUES ('323', '44', '714', '金华市', '1');
INSERT INTO `oc_city` VALUES ('324', '44', '714', '衢州市', '1');
INSERT INTO `oc_city` VALUES ('325', '44', '714', '舟山市', '1');
INSERT INTO `oc_city` VALUES ('326', '44', '714', '台州市', '1');
INSERT INTO `oc_city` VALUES ('327', '44', '714', '丽水市', '1');
INSERT INTO `oc_city` VALUES ('328', '44', '4225', '拉萨市', '1');
INSERT INTO `oc_city` VALUES ('329', '44', '4225', '昌都地区', '1');
INSERT INTO `oc_city` VALUES ('330', '44', '4225', '山南地区', '1');
INSERT INTO `oc_city` VALUES ('331', '44', '4225', '日喀则地区', '1');
INSERT INTO `oc_city` VALUES ('332', '44', '4225', '那曲地区', '1');
INSERT INTO `oc_city` VALUES ('333', '44', '4225', '阿里地区', '1');
INSERT INTO `oc_city` VALUES ('334', '44', '4225', '林芝地区', '1');
INSERT INTO `oc_city` VALUES ('335', '44', '4227', '西宁市', '1');
INSERT INTO `oc_city` VALUES ('336', '44', '4227', '海东地区', '1');
INSERT INTO `oc_city` VALUES ('337', '44', '4227', '海北藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('338', '44', '4227', '黄南藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('339', '44', '4227', '海南藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('340', '44', '4227', '果洛藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('341', '44', '4227', '玉树藏族自治州', '1');
INSERT INTO `oc_city` VALUES ('342', '44', '4227', '海西蒙古族藏族自治州', '1');