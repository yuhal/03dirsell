/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : dirsell

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-02-21 17:12:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ot_aouts`
-- ----------------------------
DROP TABLE IF EXISTS `ot_aouts`;
CREATE TABLE `ot_aouts` (
  `IF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IF_time` datetime NOT NULL,
  `IF_revTime` datetime DEFAULT NULL,
  `IF_type` varchar(50) DEFAULT NULL,
  `IF_type1ID` int(11) DEFAULT '0',
  `IF_type2ID` int(11) DEFAULT '0',
  `IF_theme` varchar(250) DEFAULT NULL,
  `IF_webImg` varchar(255) DEFAULT '',
  `IF_content` longtext,
  `IF_rank` int(11) DEFAULT '0',
  `IF_readNum` int(11) DEFAULT '0',
  `IF_isIndex` smallint(1) DEFAULT '0',
  `IF_seodesc` longtext,
  `IF_seokeyword` longtext,
  `zt` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IF_ID`),
  KEY `IF_ID` (`IF_ID`),
  KEY `IF_menu1` (`IF_type1ID`),
  KEY `IF_readNum` (`IF_readNum`),
  KEY `IF_type1ID` (`IF_type`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_aouts
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_apply`
-- ----------------------------
DROP TABLE IF EXISTS `ot_apply`;
CREATE TABLE `ot_apply` (
  `AL_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户申请表',
  `AL_type` varchar(30) DEFAULT '' COMMENT '数据类型',
  `AL_time` datetime DEFAULT NULL COMMENT '提交时间',
  `AL_replyTime` datetime DEFAULT NULL COMMENT '回复时间，管理员处理时间',
  `AL_dataID` int(11) DEFAULT '0' COMMENT '与其它表关联ID',
  `AL_userID` int(11) DEFAULT '0' COMMENT '与用户表关联ID',
  `AL_userName` varchar(50) DEFAULT '' COMMENT '申请用户名，管理列表显示',
  `AL_contact` text COMMENT '联系方式，管理列表显示第一个',
  `AL_userInfo` text COMMENT '用户其它相关信息',
  `AL_subIP` varchar(50) DEFAULT NULL COMMENT '信息提交IP',
  `AL_otherInfo` text COMMENT '其它信息',
  `AL_note` text COMMENT '申请说明',
  `AL_reply` text COMMENT '管理员备注信息',
  `AL_status` smallint(1) DEFAULT '0' COMMENT '处理状态，0-未处理，1-已处理',
  PRIMARY KEY (`AL_ID`),
  KEY `MA_dataID` (`AL_dataID`),
  KEY `MA_ID` (`AL_ID`),
  KEY `MA_userID` (`AL_userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_area_china`
-- ----------------------------
DROP TABLE IF EXISTS `ot_area_china`;
CREATE TABLE `ot_area_china` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户订单表',
  `type` smallint(1) DEFAULT '0',
  `name` varchar(30) DEFAULT '',
  `parent_id` int(11) DEFAULT '0' COMMENT '状态修改时间',
  `zip` varchar(11) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_area_china
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_area_world`
-- ----------------------------
DROP TABLE IF EXISTS `ot_area_world`;
CREATE TABLE `ot_area_world` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户订单表',
  `type` smallint(1) DEFAULT '0',
  `name` varchar(30) DEFAULT '',
  `parent_id` int(11) DEFAULT '0' COMMENT '状态修改时间',
  `zip` varchar(11) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1032701 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_area_world
-- ----------------------------
INSERT INTO `ot_area_world` VALUES ('1', '1', '中国', '0', '');
INSERT INTO `ot_area_world` VALUES ('2', '1', '阿富汗', '0', '');
INSERT INTO `ot_area_world` VALUES ('3', '1', '奥兰群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('4', '1', '阿拉斯加', '0', '');
INSERT INTO `ot_area_world` VALUES ('5', '1', '阿尔巴尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('6', '1', '阿尔及利亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('7', '1', '东萨摩亚(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('8', '1', '安道尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('9', '1', '安哥拉', '0', '');
INSERT INTO `ot_area_world` VALUES ('10', '1', '安圭拉岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('11', '1', '南极', '0', '');
INSERT INTO `ot_area_world` VALUES ('12', '1', '安提瓜和巴布达', '0', '');
INSERT INTO `ot_area_world` VALUES ('13', '1', '阿根廷', '0', '');
INSERT INTO `ot_area_world` VALUES ('14', '1', '亚美尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('15', '1', '阿鲁巴岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('16', '1', '澳大利亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('17', '1', '奥地利', '0', '');
INSERT INTO `ot_area_world` VALUES ('18', '1', '阿塞拜疆', '0', '');
INSERT INTO `ot_area_world` VALUES ('19', '1', '巴林', '0', '');
INSERT INTO `ot_area_world` VALUES ('20', '1', '根西岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('21', '1', '孟加拉国', '0', '');
INSERT INTO `ot_area_world` VALUES ('22', '1', '巴巴多斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('23', '1', '白俄罗斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('24', '1', '比利时', '0', '');
INSERT INTO `ot_area_world` VALUES ('25', '1', '伯利兹', '0', '');
INSERT INTO `ot_area_world` VALUES ('26', '1', '贝宁', '0', '');
INSERT INTO `ot_area_world` VALUES ('27', '1', '百慕大群岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('28', '1', '不丹', '0', '');
INSERT INTO `ot_area_world` VALUES ('29', '1', '玻利维亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('30', '1', '波斯尼亚和黑塞哥维那', '0', '');
INSERT INTO `ot_area_world` VALUES ('31', '1', '博茨瓦纳', '0', '');
INSERT INTO `ot_area_world` VALUES ('32', '1', '巴西', '0', '');
INSERT INTO `ot_area_world` VALUES ('33', '1', '保加利亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('34', '1', '布基纳法索', '0', '');
INSERT INTO `ot_area_world` VALUES ('35', '1', '布隆迪', '0', '');
INSERT INTO `ot_area_world` VALUES ('36', '1', '喀麦隆', '0', '');
INSERT INTO `ot_area_world` VALUES ('37', '1', '加拿大', '0', '');
INSERT INTO `ot_area_world` VALUES ('38', '1', '加那利群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('39', '1', '佛得角', '0', '');
INSERT INTO `ot_area_world` VALUES ('40', '1', '开曼群岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('41', '1', '中非', '0', '');
INSERT INTO `ot_area_world` VALUES ('42', '1', '乍得', '0', '');
INSERT INTO `ot_area_world` VALUES ('43', '1', '智利', '0', '');
INSERT INTO `ot_area_world` VALUES ('44', '1', '圣诞岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('45', '1', '科科斯岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('46', '1', '哥伦比亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('47', '1', '科摩罗', '0', '');
INSERT INTO `ot_area_world` VALUES ('48', '1', '刚果', '0', '');
INSERT INTO `ot_area_world` VALUES ('49', '1', '科克群岛(新)', '0', '');
INSERT INTO `ot_area_world` VALUES ('50', '1', '哥斯达黎加', '0', '');
INSERT INTO `ot_area_world` VALUES ('51', '1', '克罗地亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('52', '1', '古巴', '0', '');
INSERT INTO `ot_area_world` VALUES ('53', '1', '塞浦路斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('54', '1', '捷克', '0', '');
INSERT INTO `ot_area_world` VALUES ('55', '1', '刚果(金)', '0', '');
INSERT INTO `ot_area_world` VALUES ('56', '1', '丹麦', '0', '');
INSERT INTO `ot_area_world` VALUES ('57', '1', '迪戈加西亚岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('58', '1', '吉布提', '0', '');
INSERT INTO `ot_area_world` VALUES ('59', '1', '多米尼克国', '0', '');
INSERT INTO `ot_area_world` VALUES ('60', '1', '多米尼加共和国', '0', '');
INSERT INTO `ot_area_world` VALUES ('61', '1', '厄瓜多尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('62', '1', '埃及', '0', '');
INSERT INTO `ot_area_world` VALUES ('63', '1', '萨尔瓦多', '0', '');
INSERT INTO `ot_area_world` VALUES ('64', '1', '赤道几内亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('65', '1', '厄立特里亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('66', '1', '爱沙尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('67', '1', '埃塞俄比亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('68', '1', '福克兰群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('69', '1', '法罗群岛(丹)', '0', '');
INSERT INTO `ot_area_world` VALUES ('70', '1', '斐济', '0', '');
INSERT INTO `ot_area_world` VALUES ('71', '1', '芬兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('72', '1', '法国', '0', '');
INSERT INTO `ot_area_world` VALUES ('73', '1', '法属波里尼西亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('74', '1', '加蓬', '0', '');
INSERT INTO `ot_area_world` VALUES ('75', '1', '冈比亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('76', '1', '格鲁吉亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('77', '1', '德国', '0', '');
INSERT INTO `ot_area_world` VALUES ('78', '1', '加纳', '0', '');
INSERT INTO `ot_area_world` VALUES ('79', '1', '直布罗陀(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('80', '1', '希腊', '0', '');
INSERT INTO `ot_area_world` VALUES ('81', '1', '格陵兰岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('82', '1', '格林纳达', '0', '');
INSERT INTO `ot_area_world` VALUES ('83', '1', '瓜德罗普岛(法)', '0', '');
INSERT INTO `ot_area_world` VALUES ('84', '1', '关岛(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('85', '1', '危地马拉', '0', '');
INSERT INTO `ot_area_world` VALUES ('86', '1', '几内亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('87', '1', '几内亚比绍', '0', '');
INSERT INTO `ot_area_world` VALUES ('88', '1', '法属圭亚那', '0', '');
INSERT INTO `ot_area_world` VALUES ('89', '1', '圭亚那', '0', '');
INSERT INTO `ot_area_world` VALUES ('90', '1', '海地', '0', '');
INSERT INTO `ot_area_world` VALUES ('91', '1', '洪都拉斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('92', '1', '匈牙利', '0', '');
INSERT INTO `ot_area_world` VALUES ('93', '1', '冰岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('94', '1', '印度', '0', '');
INSERT INTO `ot_area_world` VALUES ('95', '1', '印度尼西亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('96', '1', '伊郎', '0', '');
INSERT INTO `ot_area_world` VALUES ('97', '1', '伊拉克', '0', '');
INSERT INTO `ot_area_world` VALUES ('98', '1', '爱尔兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('99', '1', '马恩岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('100', '1', '以色列', '0', '');
INSERT INTO `ot_area_world` VALUES ('101', '1', '意大利', '0', '');
INSERT INTO `ot_area_world` VALUES ('102', '1', '科特迪瓦', '0', '');
INSERT INTO `ot_area_world` VALUES ('103', '1', '牙买加', '0', '');
INSERT INTO `ot_area_world` VALUES ('104', '1', '日本', '0', '');
INSERT INTO `ot_area_world` VALUES ('105', '1', '泽西岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('106', '1', '约旦', '0', '');
INSERT INTO `ot_area_world` VALUES ('107', '1', '柬埔塞', '0', '');
INSERT INTO `ot_area_world` VALUES ('108', '1', '哈萨克斯坦', '0', '');
INSERT INTO `ot_area_world` VALUES ('109', '1', '肯尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('110', '1', '基里巴斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('111', '1', '科威特', '0', '');
INSERT INTO `ot_area_world` VALUES ('112', '1', '吉尔吉斯斯坦', '0', '');
INSERT INTO `ot_area_world` VALUES ('113', '1', '老挝', '0', '');
INSERT INTO `ot_area_world` VALUES ('114', '1', '拉脱维亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('115', '1', '黎巴嫩', '0', '');
INSERT INTO `ot_area_world` VALUES ('116', '1', '莱索托', '0', '');
INSERT INTO `ot_area_world` VALUES ('117', '1', '利比里亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('118', '1', '利比亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('119', '1', '列支敦士登', '0', '');
INSERT INTO `ot_area_world` VALUES ('120', '1', '立陶宛', '0', '');
INSERT INTO `ot_area_world` VALUES ('121', '1', '卢森堡', '0', '');
INSERT INTO `ot_area_world` VALUES ('122', '1', '马其顿', '0', '');
INSERT INTO `ot_area_world` VALUES ('123', '1', '马达加斯加', '0', '');
INSERT INTO `ot_area_world` VALUES ('124', '1', '马拉维', '0', '');
INSERT INTO `ot_area_world` VALUES ('125', '1', '马来西亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('126', '1', '马尔代夫', '0', '');
INSERT INTO `ot_area_world` VALUES ('127', '1', '马里', '0', '');
INSERT INTO `ot_area_world` VALUES ('128', '1', '马耳他', '0', '');
INSERT INTO `ot_area_world` VALUES ('129', '1', '马绍尔群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('130', '1', '马提尼克(法)', '0', '');
INSERT INTO `ot_area_world` VALUES ('131', '1', '毛里塔尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('132', '1', '毛里求斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('133', '1', '马约特岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('134', '1', '墨西哥', '0', '');
INSERT INTO `ot_area_world` VALUES ('135', '1', '密克罗尼西亚(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('136', '1', '中途岛(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('137', '1', '摩纳哥', '0', '');
INSERT INTO `ot_area_world` VALUES ('138', '1', '蒙古', '0', '');
INSERT INTO `ot_area_world` VALUES ('139', '1', '黑山', '0', '');
INSERT INTO `ot_area_world` VALUES ('140', '1', '蒙特塞拉特岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('141', '1', '摩洛哥', '0', '');
INSERT INTO `ot_area_world` VALUES ('142', '1', '莫桑比克', '0', '');
INSERT INTO `ot_area_world` VALUES ('143', '1', '缅甸', '0', '');
INSERT INTO `ot_area_world` VALUES ('144', '1', '纳米比亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('145', '1', '瑙鲁', '0', '');
INSERT INTO `ot_area_world` VALUES ('146', '1', '尼泊尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('147', '1', '荷兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('148', '1', '荷属安的列斯群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('149', '1', '新喀里多尼亚群岛(法)', '0', '');
INSERT INTO `ot_area_world` VALUES ('150', '1', '新西兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('151', '1', '尼加拉瓜', '0', '');
INSERT INTO `ot_area_world` VALUES ('152', '1', '尼日尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('153', '1', '尼日利亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('154', '1', '纽埃岛(新)', '0', '');
INSERT INTO `ot_area_world` VALUES ('155', '1', '诺福克岛(澳)', '0', '');
INSERT INTO `ot_area_world` VALUES ('156', '1', '朝鲜', '0', '');
INSERT INTO `ot_area_world` VALUES ('157', '1', '马里亚纳群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('158', '1', '挪威', '0', '');
INSERT INTO `ot_area_world` VALUES ('159', '1', '阿曼', '0', '');
INSERT INTO `ot_area_world` VALUES ('160', '1', '巴基斯坦', '0', '');
INSERT INTO `ot_area_world` VALUES ('161', '1', '帕劳(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('162', '1', '巴拿马', '0', '');
INSERT INTO `ot_area_world` VALUES ('163', '1', '巴布亚新几内亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('164', '1', '巴拉圭', '0', '');
INSERT INTO `ot_area_world` VALUES ('165', '1', '秘鲁', '0', '');
INSERT INTO `ot_area_world` VALUES ('166', '1', '菲律宾', '0', '');
INSERT INTO `ot_area_world` VALUES ('167', '1', '波兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('168', '1', '葡萄牙', '0', '');
INSERT INTO `ot_area_world` VALUES ('169', '1', '波多黎各(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('170', '1', '卡塔尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('171', '1', '摩尔多瓦', '0', '');
INSERT INTO `ot_area_world` VALUES ('172', '1', '留尼汪岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('173', '1', '罗马尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('174', '1', '俄罗斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('175', '1', '卢旺达', '0', '');
INSERT INTO `ot_area_world` VALUES ('176', '1', '阿森松(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('177', '1', '圣赫勒拿', '0', '');
INSERT INTO `ot_area_world` VALUES ('178', '1', '圣克里斯托弗和尼维斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('179', '1', '圣卢西亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('180', '1', '圣皮埃尔岛及密克隆岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('181', '1', '圣文森特岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('182', '1', '西萨摩亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('183', '1', '圣马力诺', '0', '');
INSERT INTO `ot_area_world` VALUES ('184', '1', '圣多美和普林西比', '0', '');
INSERT INTO `ot_area_world` VALUES ('185', '1', '沙特阿拉伯', '0', '');
INSERT INTO `ot_area_world` VALUES ('186', '1', '塞内加尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('187', '1', '塞尔维亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('188', '1', '塞舌尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('189', '1', '塞拉利昂', '0', '');
INSERT INTO `ot_area_world` VALUES ('190', '1', '新加坡', '0', '');
INSERT INTO `ot_area_world` VALUES ('191', '1', '圣马丁(荷)', '0', '');
INSERT INTO `ot_area_world` VALUES ('192', '1', '斯洛伐克', '0', '');
INSERT INTO `ot_area_world` VALUES ('193', '1', '斯洛文尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('194', '1', '所罗门群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('195', '1', '索马里', '0', '');
INSERT INTO `ot_area_world` VALUES ('196', '1', '南非', '0', '');
INSERT INTO `ot_area_world` VALUES ('197', '1', '南乔治亚与南桑威奇群岛', '0', '');
INSERT INTO `ot_area_world` VALUES ('198', '1', '韩国', '0', '');
INSERT INTO `ot_area_world` VALUES ('199', '1', '西班牙', '0', '');
INSERT INTO `ot_area_world` VALUES ('200', '1', '斯里兰卡', '0', '');
INSERT INTO `ot_area_world` VALUES ('201', '1', '苏丹', '0', '');
INSERT INTO `ot_area_world` VALUES ('202', '1', '苏里南', '0', '');
INSERT INTO `ot_area_world` VALUES ('203', '1', '斯瓦尔巴群岛(挪)', '0', '');
INSERT INTO `ot_area_world` VALUES ('204', '1', '斯威士兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('205', '1', '瑞典', '0', '');
INSERT INTO `ot_area_world` VALUES ('206', '1', '瑞士', '0', '');
INSERT INTO `ot_area_world` VALUES ('207', '1', '叙利亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('208', '1', '塔吉克斯坦', '0', '');
INSERT INTO `ot_area_world` VALUES ('209', '1', '泰国', '0', '');
INSERT INTO `ot_area_world` VALUES ('210', '1', '巴哈马国', '0', '');
INSERT INTO `ot_area_world` VALUES ('211', '1', '梵蒂冈', '0', '');
INSERT INTO `ot_area_world` VALUES ('212', '1', '东帝汶', '0', '');
INSERT INTO `ot_area_world` VALUES ('213', '1', '多哥', '0', '');
INSERT INTO `ot_area_world` VALUES ('214', '1', '托克劳群岛(新)', '0', '');
INSERT INTO `ot_area_world` VALUES ('215', '1', '汤加', '0', '');
INSERT INTO `ot_area_world` VALUES ('216', '1', '特立尼达和多巴哥', '0', '');
INSERT INTO `ot_area_world` VALUES ('217', '1', '突尼斯', '0', '');
INSERT INTO `ot_area_world` VALUES ('218', '1', '土耳其', '0', '');
INSERT INTO `ot_area_world` VALUES ('219', '1', '土库曼斯坦', '0', '');
INSERT INTO `ot_area_world` VALUES ('220', '1', '特克斯和凯科斯群岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('221', '1', '图瓦卢', '0', '');
INSERT INTO `ot_area_world` VALUES ('222', '1', '乌干达', '0', '');
INSERT INTO `ot_area_world` VALUES ('223', '1', '乌克兰', '0', '');
INSERT INTO `ot_area_world` VALUES ('224', '1', '阿拉伯联合酋长国', '0', '');
INSERT INTO `ot_area_world` VALUES ('225', '1', '英国', '0', '');
INSERT INTO `ot_area_world` VALUES ('226', '1', '坦桑尼亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('227', '1', '美国本土外小岛屿', '0', '');
INSERT INTO `ot_area_world` VALUES ('228', '1', '美国', '0', '');
INSERT INTO `ot_area_world` VALUES ('229', '1', '乌拉圭', '0', '');
INSERT INTO `ot_area_world` VALUES ('230', '1', '乌兹别克斯坦', '0', '');
INSERT INTO `ot_area_world` VALUES ('231', '1', '瓦努阿图', '0', '');
INSERT INTO `ot_area_world` VALUES ('232', '1', '委内瑞拉', '0', '');
INSERT INTO `ot_area_world` VALUES ('233', '1', '越南', '0', '');
INSERT INTO `ot_area_world` VALUES ('234', '1', '维尔京群岛(英)', '0', '');
INSERT INTO `ot_area_world` VALUES ('235', '1', '维尔京群岛(美)', '0', '');
INSERT INTO `ot_area_world` VALUES ('236', '1', '瓦里斯和富士那群岛(法)', '0', '');
INSERT INTO `ot_area_world` VALUES ('237', '1', '西撒哈拉', '0', '');
INSERT INTO `ot_area_world` VALUES ('238', '1', '也门', '0', '');
INSERT INTO `ot_area_world` VALUES ('239', '1', '南斯拉夫', '0', '');
INSERT INTO `ot_area_world` VALUES ('240', '1', '赞比亚', '0', '');
INSERT INTO `ot_area_world` VALUES ('241', '1', '桑给巴尔', '0', '');
INSERT INTO `ot_area_world` VALUES ('242', '1', '津巴布韦', '0', '');
INSERT INTO `ot_area_world` VALUES ('1000', '2', '槟榔屿', '125', '');
INSERT INTO `ot_area_world` VALUES ('1001', '3', '北海', '1000', '');
INSERT INTO `ot_area_world` VALUES ('1002', '3', '槟城', '1000', '');
INSERT INTO `ot_area_world` VALUES ('1003', '2', '玻璃市', '125', '');
INSERT INTO `ot_area_world` VALUES ('1004', '3', '大山脚', '1000', '');
INSERT INTO `ot_area_world` VALUES ('1005', '3', '高渊', '1000', '');
INSERT INTO `ot_area_world` VALUES ('1006', '3', '加央', '1003', '');
INSERT INTO `ot_area_world` VALUES ('1007', '2', '丁加奴', '125', '');
INSERT INTO `ot_area_world` VALUES ('1008', '3', '甘马挽', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1009', '3', '瓜拉丁加奴', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1010', '3', '龙运', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1011', '3', '马江', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1012', '3', '实兆', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1013', '3', '乌鲁', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1014', '3', '勿述', '1007', '');
INSERT INTO `ot_area_world` VALUES ('1015', '2', '吉打', '125', '');
INSERT INTO `ot_area_world` VALUES ('1016', '3', '巴东得腊', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1017', '3', '笨筒', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1018', '3', '浮罗交怡', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1019', '3', '哥打士打', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1020', '3', '古邦巴素', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1021', '3', '瓜拉姆达', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1022', '3', '华玲', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1023', '3', '居林', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1024', '3', '万拉峇鲁', '1015', '');
INSERT INTO `ot_area_world` VALUES ('1025', '2', '吉兰丹', '125', '');
INSERT INTO `ot_area_world` VALUES ('1026', '3', '巴西富地', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1027', '3', '巴西马', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1028', '3', '丹那美拉', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1029', '3', '道北', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1030', '3', '登卓', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1031', '3', '哥打巴鲁', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1032', '3', '瓜拉吉赖', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1033', '3', '话望生', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1034', '3', '马樟', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1035', '3', '日里', '1025', '');
INSERT INTO `ot_area_world` VALUES ('1036', '2', '吉隆坡', '125', '');
INSERT INTO `ot_area_world` VALUES ('1037', '3', '吉隆坡', '1036', '');
INSERT INTO `ot_area_world` VALUES ('1038', '2', '马六甲', '125', '');
INSERT INTO `ot_area_world` VALUES ('1039', '3', '马六甲市', '1038', '');
INSERT INTO `ot_area_world` VALUES ('1040', '3', '亚罗牙也', '1038', '');
INSERT INTO `ot_area_world` VALUES ('1041', '3', '野新', '1038', '');
INSERT INTO `ot_area_world` VALUES ('1042', '2', '纳闽', '125', '');
INSERT INTO `ot_area_world` VALUES ('1043', '3', '纳闽', '1042', '');
INSERT INTO `ot_area_world` VALUES ('1044', '3', '维多利亚', '1042', '');
INSERT INTO `ot_area_world` VALUES ('1045', '2', '彭亨', '125', '');
INSERT INTO `ot_area_world` VALUES ('1046', '3', '百乐', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1047', '3', '北根', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1048', '3', '淡马鲁', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1049', '3', '而连突', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1050', '3', '关丹', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1051', '3', '金马仑高原', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1052', '3', '劳勿', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1053', '3', '立卑', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1054', '3', '马兰', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1055', '3', '文冬', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1056', '3', '云冰', '1045', '');
INSERT INTO `ot_area_world` VALUES ('1057', '2', '霹雳', '125', '');
INSERT INTO `ot_area_world` VALUES ('1058', '3', '安顺', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1059', '3', '丹绒马林', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1060', '3', '和丰', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1061', '3', '紅土坎', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1062', '3', '华都牙也', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1063', '3', '江沙', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1064', '3', '太平', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1065', '3', '怡保', '1057', '');
INSERT INTO `ot_area_world` VALUES ('1066', '2', '柔佛', '125', '');
INSERT INTO `ot_area_world` VALUES ('1067', '3', '笨珍', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1068', '3', '丰盛港', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1069', '3', '哥打丁宜', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1070', '3', '居銮', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1071', '3', '峇株巴辖', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1072', '3', '麻坡', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1073', '3', '昔加末', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1074', '3', '新山', '1066', '');
INSERT INTO `ot_area_world` VALUES ('1075', '2', '森美兰', '125', '');
INSERT INTO `ot_area_world` VALUES ('1076', '3', '波德申', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1077', '3', '淡边', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1078', '3', '芙蓉', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1079', '3', '瓜拉庇劳', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1080', '3', '林茂', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1081', '3', '仁保', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1082', '3', '日叻务', '1075', '');
INSERT INTO `ot_area_world` VALUES ('1083', '2', '沙巴', '125', '');
INSERT INTO `ot_area_world` VALUES ('1084', '3', '吧巴', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1085', '3', '保佛', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1086', '3', '比鲁兰', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1087', '3', '必达士', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1088', '3', '兵南邦', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1089', '3', '担布南', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1090', '3', '丹南', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1091', '3', '斗湖', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1092', '3', '斗亚兰', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1093', '3', '哥打基纳巴鲁', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1094', '3', '哥打马鲁都', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1095', '3', '根地咬', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1096', '3', '古达', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1097', '3', '古打毛律', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1098', '3', '古纳', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1099', '3', '瓜拉班尤', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1100', '3', '京那巴登岸', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1101', '3', '兰脑', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1102', '3', '拿笃', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1103', '3', '纳巴湾', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1104', '3', '山打根', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1105', '3', '西比陶', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1106', '3', '仙本那', '1083', '');
INSERT INTO `ot_area_world` VALUES ('1107', '2', '沙捞越', '125', '');
INSERT INTO `ot_area_world` VALUES ('1108', '3', '古晋', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1109', '3', '加帛', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1110', '3', '林梦', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1111', '3', '美里', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1112', '3', '民都鲁', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1113', '3', '木胶', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1114', '3', '木中', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1115', '3', '三马拉汉', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1116', '3', '斯里阿曼', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1117', '3', '泗里街', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1118', '3', '泗务', '1107', '');
INSERT INTO `ot_area_world` VALUES ('1119', '2', '雪兰莪', '125', '');
INSERT INTO `ot_area_world` VALUES ('1120', '3', '八打灵', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1121', '3', '鹅麦', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1122', '3', '瓜拉冷岳', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1123', '3', '瓜拉雪兰莪', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1124', '3', '沙白安南', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1125', '3', '乌鲁冷岳', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1126', '3', '乌鲁雪兰莪', '1119', '');
INSERT INTO `ot_area_world` VALUES ('1127', '3', '雪邦', '1119', '');
INSERT INTO `ot_area_world` VALUES ('110000', '2', '北京', '1', '');
INSERT INTO `ot_area_world` VALUES ('110100', '3', '北京市', '110000', '100000');
INSERT INTO `ot_area_world` VALUES ('110101', '4', '东城区', '110100', '100010');
INSERT INTO `ot_area_world` VALUES ('110102', '4', '西城区', '110100', '100032');
INSERT INTO `ot_area_world` VALUES ('110103', '4', '崇文区', '110100', '100061');
INSERT INTO `ot_area_world` VALUES ('110104', '4', '宣武区', '110100', '100054');
INSERT INTO `ot_area_world` VALUES ('110105', '4', '朝阳区', '110100', '100011');
INSERT INTO `ot_area_world` VALUES ('110106', '4', '丰台区', '110100', '100071');
INSERT INTO `ot_area_world` VALUES ('110107', '4', '石景山区', '110100', '100071');
INSERT INTO `ot_area_world` VALUES ('110108', '4', '海淀区', '110100', '100091');
INSERT INTO `ot_area_world` VALUES ('110109', '4', '门头沟区', '110100', '102300');
INSERT INTO `ot_area_world` VALUES ('110111', '4', '房山区', '110100', '102488');
INSERT INTO `ot_area_world` VALUES ('110112', '4', '通州区', '110100', '101100');
INSERT INTO `ot_area_world` VALUES ('110113', '4', '顺义区', '110100', '101300');
INSERT INTO `ot_area_world` VALUES ('110114', '4', '昌平区', '110100', '102200');
INSERT INTO `ot_area_world` VALUES ('110115', '4', '大兴区', '110100', '102600');
INSERT INTO `ot_area_world` VALUES ('110116', '4', '怀柔区', '110100', '101400');
INSERT INTO `ot_area_world` VALUES ('110117', '4', '平谷区', '110100', '101200');
INSERT INTO `ot_area_world` VALUES ('110228', '4', '密云县', '110100', '101500');
INSERT INTO `ot_area_world` VALUES ('110229', '4', '延庆县', '110100', '102100');
INSERT INTO `ot_area_world` VALUES ('110230', '4', '其它区', '110100', '');
INSERT INTO `ot_area_world` VALUES ('120000', '2', '天津', '1', '');
INSERT INTO `ot_area_world` VALUES ('120100', '3', '天津市', '120000', '300000');
INSERT INTO `ot_area_world` VALUES ('120101', '4', '和平区', '120100', '300041');
INSERT INTO `ot_area_world` VALUES ('120102', '4', '河东区', '120100', '300171');
INSERT INTO `ot_area_world` VALUES ('120103', '4', '河西区', '120100', '300202');
INSERT INTO `ot_area_world` VALUES ('120104', '4', '南开区', '120100', '300100');
INSERT INTO `ot_area_world` VALUES ('120105', '4', '河北区', '120100', '300143');
INSERT INTO `ot_area_world` VALUES ('120106', '4', '红桥区', '120100', '300131');
INSERT INTO `ot_area_world` VALUES ('120107', '4', '塘沽区', '120100', '300450');
INSERT INTO `ot_area_world` VALUES ('120108', '4', '汉沽区', '120100', '300480');
INSERT INTO `ot_area_world` VALUES ('120109', '4', '大港区', '120100', '300270');
INSERT INTO `ot_area_world` VALUES ('120110', '4', '东丽区', '120100', '300300');
INSERT INTO `ot_area_world` VALUES ('120111', '4', '西青区', '120100', '300380');
INSERT INTO `ot_area_world` VALUES ('120112', '4', '津南区', '120100', '300350');
INSERT INTO `ot_area_world` VALUES ('120113', '4', '北辰区', '120100', '300400');
INSERT INTO `ot_area_world` VALUES ('120114', '4', '武清区', '120100', '301700');
INSERT INTO `ot_area_world` VALUES ('120115', '4', '宝坻区', '120100', '301800');
INSERT INTO `ot_area_world` VALUES ('120116', '4', '滨海新区', '120100', '300457');
INSERT INTO `ot_area_world` VALUES ('120221', '4', '宁河县', '120100', '301500');
INSERT INTO `ot_area_world` VALUES ('120223', '4', '静海县', '120100', '301600');
INSERT INTO `ot_area_world` VALUES ('120225', '4', '蓟县', '120100', '301900');
INSERT INTO `ot_area_world` VALUES ('120226', '4', '其它区', '120100', '');
INSERT INTO `ot_area_world` VALUES ('130000', '2', '河北省', '1', '');
INSERT INTO `ot_area_world` VALUES ('130100', '3', '石家庄市', '130000', '050000');
INSERT INTO `ot_area_world` VALUES ('130102', '4', '长安区', '130100', '050011');
INSERT INTO `ot_area_world` VALUES ('130103', '4', '桥东区', '130100', '050011');
INSERT INTO `ot_area_world` VALUES ('130104', '4', '桥西区', '130100', '050051');
INSERT INTO `ot_area_world` VALUES ('130105', '4', '新华区', '130100', '050051');
INSERT INTO `ot_area_world` VALUES ('130107', '4', '井陉矿区', '130100', '050100');
INSERT INTO `ot_area_world` VALUES ('130108', '4', '裕华区', '130100', '050081');
INSERT INTO `ot_area_world` VALUES ('130121', '4', '井陉县', '130100', '050300');
INSERT INTO `ot_area_world` VALUES ('130123', '4', '正定县', '130100', '050800');
INSERT INTO `ot_area_world` VALUES ('130124', '4', '栾城县', '130100', '051430');
INSERT INTO `ot_area_world` VALUES ('130125', '4', '行唐县', '130100', '050600');
INSERT INTO `ot_area_world` VALUES ('130126', '4', '灵寿县', '130100', '050500');
INSERT INTO `ot_area_world` VALUES ('130127', '4', '高邑县', '130100', '051330');
INSERT INTO `ot_area_world` VALUES ('130128', '4', '深泽县', '130100', '052560');
INSERT INTO `ot_area_world` VALUES ('130129', '4', '赞皇县', '130100', '051230');
INSERT INTO `ot_area_world` VALUES ('130130', '4', '无极县', '130100', '052460');
INSERT INTO `ot_area_world` VALUES ('130131', '4', '平山县', '130100', '050400');
INSERT INTO `ot_area_world` VALUES ('130132', '4', '元氏县', '130100', '051130');
INSERT INTO `ot_area_world` VALUES ('130133', '4', '赵县', '130100', '051530');
INSERT INTO `ot_area_world` VALUES ('130181', '4', '辛集市', '130100', '052360');
INSERT INTO `ot_area_world` VALUES ('130182', '4', '藁城市', '130100', '052160');
INSERT INTO `ot_area_world` VALUES ('130183', '4', '晋州市', '130100', '052260');
INSERT INTO `ot_area_world` VALUES ('130184', '4', '新乐市', '130100', '050700');
INSERT INTO `ot_area_world` VALUES ('130185', '4', '鹿泉市', '130100', '050200');
INSERT INTO `ot_area_world` VALUES ('130186', '4', '其它区', '130100', '');
INSERT INTO `ot_area_world` VALUES ('130200', '3', '唐山市', '130000', '063000');
INSERT INTO `ot_area_world` VALUES ('130202', '4', '路南区', '130200', '063017');
INSERT INTO `ot_area_world` VALUES ('130203', '4', '路北区', '130200', '063015');
INSERT INTO `ot_area_world` VALUES ('130204', '4', '古冶区', '130200', '063104');
INSERT INTO `ot_area_world` VALUES ('130205', '4', '开平区', '130200', '063021');
INSERT INTO `ot_area_world` VALUES ('130207', '4', '丰南区', '130200', '063300');
INSERT INTO `ot_area_world` VALUES ('130208', '4', '丰润区', '130200', '064000');
INSERT INTO `ot_area_world` VALUES ('130223', '4', '滦县', '130200', '063700');
INSERT INTO `ot_area_world` VALUES ('130224', '4', '滦南县', '130200', '063500');
INSERT INTO `ot_area_world` VALUES ('130225', '4', '乐亭县', '130200', '063600');
INSERT INTO `ot_area_world` VALUES ('130227', '4', '迁西县', '130200', '064300');
INSERT INTO `ot_area_world` VALUES ('130229', '4', '玉田县', '130200', '064100');
INSERT INTO `ot_area_world` VALUES ('130230', '4', '唐海县', '130200', '063200');
INSERT INTO `ot_area_world` VALUES ('130281', '4', '遵化市', '130200', '064200');
INSERT INTO `ot_area_world` VALUES ('130283', '4', '迁安市', '130200', '064400');
INSERT INTO `ot_area_world` VALUES ('130284', '4', '其它区', '130200', '');
INSERT INTO `ot_area_world` VALUES ('130300', '3', '秦皇岛市', '130000', '066000');
INSERT INTO `ot_area_world` VALUES ('130302', '4', '海港区', '130300', '066000');
INSERT INTO `ot_area_world` VALUES ('130303', '4', '山海关区', '130300', '066200');
INSERT INTO `ot_area_world` VALUES ('130304', '4', '北戴河区', '130300', '066100');
INSERT INTO `ot_area_world` VALUES ('130321', '4', '青龙满族自治县', '130300', '066500');
INSERT INTO `ot_area_world` VALUES ('130322', '4', '昌黎县', '130300', '066600');
INSERT INTO `ot_area_world` VALUES ('130323', '4', '抚宁县', '130300', '066300');
INSERT INTO `ot_area_world` VALUES ('130324', '4', '卢龙县', '130300', '066400');
INSERT INTO `ot_area_world` VALUES ('130398', '4', '其它区', '130300', '');
INSERT INTO `ot_area_world` VALUES ('130399', '4', '经济技术开发区', '130300', '');
INSERT INTO `ot_area_world` VALUES ('130400', '3', '邯郸市', '130000', '056000');
INSERT INTO `ot_area_world` VALUES ('130402', '4', '邯山区', '130400', '056001');
INSERT INTO `ot_area_world` VALUES ('130403', '4', '丛台区', '130400', '056004');
INSERT INTO `ot_area_world` VALUES ('130404', '4', '复兴区', '130400', '056003');
INSERT INTO `ot_area_world` VALUES ('130406', '4', '峰峰矿区', '130400', '056200');
INSERT INTO `ot_area_world` VALUES ('130421', '4', '邯郸县', '130400', '056105');
INSERT INTO `ot_area_world` VALUES ('130423', '4', '临漳县', '130400', '056600');
INSERT INTO `ot_area_world` VALUES ('130424', '4', '成安县', '130400', '056700');
INSERT INTO `ot_area_world` VALUES ('130425', '4', '大名县', '130400', '056900');
INSERT INTO `ot_area_world` VALUES ('130426', '4', '涉县', '130400', '056400');
INSERT INTO `ot_area_world` VALUES ('130427', '4', '磁县', '130400', '056500');
INSERT INTO `ot_area_world` VALUES ('130428', '4', '肥乡县', '130400', '057550');
INSERT INTO `ot_area_world` VALUES ('130429', '4', '永年县', '130400', '057150');
INSERT INTO `ot_area_world` VALUES ('130430', '4', '邱县', '130400', '057450');
INSERT INTO `ot_area_world` VALUES ('130431', '4', '鸡泽县', '130400', '057350');
INSERT INTO `ot_area_world` VALUES ('130432', '4', '广平县', '130400', '057650');
INSERT INTO `ot_area_world` VALUES ('130433', '4', '馆陶县', '130400', '057750');
INSERT INTO `ot_area_world` VALUES ('130434', '4', '魏县', '130400', '056800');
INSERT INTO `ot_area_world` VALUES ('130435', '4', '曲周县', '130400', '057250');
INSERT INTO `ot_area_world` VALUES ('130481', '4', '武安市', '130400', '056300');
INSERT INTO `ot_area_world` VALUES ('130482', '4', '其它区', '130400', '');
INSERT INTO `ot_area_world` VALUES ('130500', '3', '邢台市', '130000', '054000');
INSERT INTO `ot_area_world` VALUES ('130502', '4', '桥东区', '130500', '054001');
INSERT INTO `ot_area_world` VALUES ('130503', '4', '桥西区', '130500', '054000');
INSERT INTO `ot_area_world` VALUES ('130521', '4', '邢台县', '130500', '054001');
INSERT INTO `ot_area_world` VALUES ('130522', '4', '临城县', '130500', '054300');
INSERT INTO `ot_area_world` VALUES ('130523', '4', '内丘县', '130500', '054200');
INSERT INTO `ot_area_world` VALUES ('130524', '4', '柏乡县', '130500', '055450');
INSERT INTO `ot_area_world` VALUES ('130525', '4', '隆尧县', '130500', '055350');
INSERT INTO `ot_area_world` VALUES ('130526', '4', '任县', '130500', '055150');
INSERT INTO `ot_area_world` VALUES ('130527', '4', '南和县', '130500', '054400');
INSERT INTO `ot_area_world` VALUES ('130528', '4', '宁晋县', '130500', '055550');
INSERT INTO `ot_area_world` VALUES ('130529', '4', '巨鹿县', '130500', '055250');
INSERT INTO `ot_area_world` VALUES ('130530', '4', '新河县', '130500', '055650');
INSERT INTO `ot_area_world` VALUES ('130531', '4', '广宗县', '130500', '054600');
INSERT INTO `ot_area_world` VALUES ('130532', '4', '平乡县', '130500', '054500');
INSERT INTO `ot_area_world` VALUES ('130533', '4', '威县', '130500', '054700');
INSERT INTO `ot_area_world` VALUES ('130534', '4', '清河县', '130500', '054800');
INSERT INTO `ot_area_world` VALUES ('130535', '4', '临西县', '130500', '054900');
INSERT INTO `ot_area_world` VALUES ('130581', '4', '南宫市', '130500', '055750');
INSERT INTO `ot_area_world` VALUES ('130582', '4', '沙河市', '130500', '054100');
INSERT INTO `ot_area_world` VALUES ('130583', '4', '其它区', '130500', '');
INSERT INTO `ot_area_world` VALUES ('130600', '3', '保定市', '130000', '071000');
INSERT INTO `ot_area_world` VALUES ('130602', '4', '新市区', '130600', '071052');
INSERT INTO `ot_area_world` VALUES ('130603', '4', '北市区', '130600', '071000');
INSERT INTO `ot_area_world` VALUES ('130604', '4', '南市区', '130600', '071000');
INSERT INTO `ot_area_world` VALUES ('130621', '4', '满城县', '130600', '072150');
INSERT INTO `ot_area_world` VALUES ('130622', '4', '清苑县', '130600', '071100');
INSERT INTO `ot_area_world` VALUES ('130623', '4', '涞水县', '130600', '074100');
INSERT INTO `ot_area_world` VALUES ('130624', '4', '阜平县', '130600', '073200');
INSERT INTO `ot_area_world` VALUES ('130625', '4', '徐水县', '130600', '072550');
INSERT INTO `ot_area_world` VALUES ('130626', '4', '定兴县', '130600', '072650');
INSERT INTO `ot_area_world` VALUES ('130627', '4', '唐县', '130600', '072350');
INSERT INTO `ot_area_world` VALUES ('130628', '4', '高阳县', '130600', '071500');
INSERT INTO `ot_area_world` VALUES ('130629', '4', '容城县', '130600', '071700');
INSERT INTO `ot_area_world` VALUES ('130630', '4', '涞源县', '130600', '074300');
INSERT INTO `ot_area_world` VALUES ('130631', '4', '望都县', '130600', '072450');
INSERT INTO `ot_area_world` VALUES ('130632', '4', '安新县', '130600', '071600');
INSERT INTO `ot_area_world` VALUES ('130633', '4', '易县', '130600', '074200');
INSERT INTO `ot_area_world` VALUES ('130634', '4', '曲阳县', '130600', '073100');
INSERT INTO `ot_area_world` VALUES ('130635', '4', '蠡县', '130600', '071400');
INSERT INTO `ot_area_world` VALUES ('130636', '4', '顺平县', '130600', '072250');
INSERT INTO `ot_area_world` VALUES ('130637', '4', '博野县', '130600', '071300');
INSERT INTO `ot_area_world` VALUES ('130638', '4', '雄县', '130600', '071800');
INSERT INTO `ot_area_world` VALUES ('130681', '4', '涿州市', '130600', '072750');
INSERT INTO `ot_area_world` VALUES ('130682', '4', '定州市', '130600', '073000');
INSERT INTO `ot_area_world` VALUES ('130683', '4', '安国市', '130600', '071200');
INSERT INTO `ot_area_world` VALUES ('130684', '4', '高碑店市', '130600', '074000');
INSERT INTO `ot_area_world` VALUES ('130698', '4', '高开区', '130600', '');
INSERT INTO `ot_area_world` VALUES ('130699', '4', '其它区', '130600', '');
INSERT INTO `ot_area_world` VALUES ('130700', '3', '张家口市', '130000', '075000');
INSERT INTO `ot_area_world` VALUES ('130702', '4', '桥东区', '130700', '075000');
INSERT INTO `ot_area_world` VALUES ('130703', '4', '桥西区', '130700', '075061');
INSERT INTO `ot_area_world` VALUES ('130705', '4', '宣化区', '130700', '075100');
INSERT INTO `ot_area_world` VALUES ('130706', '4', '下花园区', '130700', '075300');
INSERT INTO `ot_area_world` VALUES ('130721', '4', '宣化县', '130700', '075100');
INSERT INTO `ot_area_world` VALUES ('130722', '4', '张北县', '130700', '076450');
INSERT INTO `ot_area_world` VALUES ('130723', '4', '康保县', '130700', '076650');
INSERT INTO `ot_area_world` VALUES ('130724', '4', '沽源县', '130700', '076550');
INSERT INTO `ot_area_world` VALUES ('130725', '4', '尚义县', '130700', '076750');
INSERT INTO `ot_area_world` VALUES ('130726', '4', '蔚县', '130700', '075700');
INSERT INTO `ot_area_world` VALUES ('130727', '4', '阳原县', '130700', '075800');
INSERT INTO `ot_area_world` VALUES ('130728', '4', '怀安县', '130700', '076150');
INSERT INTO `ot_area_world` VALUES ('130729', '4', '万全县', '130700', '076250');
INSERT INTO `ot_area_world` VALUES ('130730', '4', '怀来县', '130700', '075400');
INSERT INTO `ot_area_world` VALUES ('130731', '4', '涿鹿县', '130700', '075600');
INSERT INTO `ot_area_world` VALUES ('130732', '4', '赤城县', '130700', '075500');
INSERT INTO `ot_area_world` VALUES ('130733', '4', '崇礼县', '130700', '076350');
INSERT INTO `ot_area_world` VALUES ('130734', '4', '其它区', '130700', '');
INSERT INTO `ot_area_world` VALUES ('130800', '3', '承德市', '130000', '067000');
INSERT INTO `ot_area_world` VALUES ('130802', '4', '双桥区', '130800', '067000');
INSERT INTO `ot_area_world` VALUES ('130803', '4', '双滦区', '130800', '067000');
INSERT INTO `ot_area_world` VALUES ('130804', '4', '鹰手营子矿区', '130800', '067000');
INSERT INTO `ot_area_world` VALUES ('130821', '4', '承德县', '130800', '067400');
INSERT INTO `ot_area_world` VALUES ('130822', '4', '兴隆县', '130800', '067300');
INSERT INTO `ot_area_world` VALUES ('130823', '4', '平泉县', '130800', '067500');
INSERT INTO `ot_area_world` VALUES ('130824', '4', '滦平县', '130800', '068250');
INSERT INTO `ot_area_world` VALUES ('130825', '4', '隆化县', '130800', '068150');
INSERT INTO `ot_area_world` VALUES ('130826', '4', '丰宁满族自治县', '130800', '068350');
INSERT INTO `ot_area_world` VALUES ('130827', '4', '宽城满族自治县', '130800', '067600');
INSERT INTO `ot_area_world` VALUES ('130828', '4', '围场满族蒙古族自治县', '130800', '068450');
INSERT INTO `ot_area_world` VALUES ('130829', '4', '其它区', '130800', '');
INSERT INTO `ot_area_world` VALUES ('130900', '3', '沧州市', '130000', '061000');
INSERT INTO `ot_area_world` VALUES ('130902', '4', '新华区', '130900', '061000');
INSERT INTO `ot_area_world` VALUES ('130903', '4', '运河区', '130900', '061000');
INSERT INTO `ot_area_world` VALUES ('130921', '4', '沧县', '130900', '061035');
INSERT INTO `ot_area_world` VALUES ('130922', '4', '青县', '130900', '062650');
INSERT INTO `ot_area_world` VALUES ('130923', '4', '东光县', '130900', '061600');
INSERT INTO `ot_area_world` VALUES ('130924', '4', '海兴县', '130900', '061200');
INSERT INTO `ot_area_world` VALUES ('130925', '4', '盐山县', '130900', '061300');
INSERT INTO `ot_area_world` VALUES ('130926', '4', '肃宁县', '130900', '062350');
INSERT INTO `ot_area_world` VALUES ('130927', '4', '南皮县', '130900', '061500');
INSERT INTO `ot_area_world` VALUES ('130928', '4', '吴桥县', '130900', '061800');
INSERT INTO `ot_area_world` VALUES ('130929', '4', '献县', '130900', '062250');
INSERT INTO `ot_area_world` VALUES ('130930', '4', '孟村回族自治县', '130900', '061400');
INSERT INTO `ot_area_world` VALUES ('130981', '4', '泊头市', '130900', '062150');
INSERT INTO `ot_area_world` VALUES ('130982', '4', '任丘市', '130900', '062550');
INSERT INTO `ot_area_world` VALUES ('130983', '4', '黄骅市', '130900', '061100');
INSERT INTO `ot_area_world` VALUES ('130984', '4', '河间市', '130900', '062450');
INSERT INTO `ot_area_world` VALUES ('130985', '4', '其它区', '130900', '');
INSERT INTO `ot_area_world` VALUES ('131000', '3', '廊坊市', '130000', '065000');
INSERT INTO `ot_area_world` VALUES ('131002', '4', '安次区', '131000', '065000');
INSERT INTO `ot_area_world` VALUES ('131003', '4', '广阳区', '131000', '065000');
INSERT INTO `ot_area_world` VALUES ('131022', '4', '固安县', '131000', '065500');
INSERT INTO `ot_area_world` VALUES ('131023', '4', '永清县', '131000', '065600');
INSERT INTO `ot_area_world` VALUES ('131024', '4', '香河县', '131000', '065400');
INSERT INTO `ot_area_world` VALUES ('131025', '4', '大城县', '131000', '065900');
INSERT INTO `ot_area_world` VALUES ('131026', '4', '文安县', '131000', '065800');
INSERT INTO `ot_area_world` VALUES ('131028', '4', '大厂回族自治县', '131000', '065300');
INSERT INTO `ot_area_world` VALUES ('131051', '4', '开发区', '131000', '');
INSERT INTO `ot_area_world` VALUES ('131052', '4', '燕郊经济技术开发区', '131000', '');
INSERT INTO `ot_area_world` VALUES ('131081', '4', '霸州市', '131000', '065700');
INSERT INTO `ot_area_world` VALUES ('131082', '4', '三河市', '131000', '065200');
INSERT INTO `ot_area_world` VALUES ('131083', '4', '其它区', '131000', '');
INSERT INTO `ot_area_world` VALUES ('131100', '3', '衡水市', '130000', '053000');
INSERT INTO `ot_area_world` VALUES ('131102', '4', '桃城区', '131100', '053000');
INSERT INTO `ot_area_world` VALUES ('131121', '4', '枣强县', '131100', '053100');
INSERT INTO `ot_area_world` VALUES ('131122', '4', '武邑县', '131100', '053400');
INSERT INTO `ot_area_world` VALUES ('131123', '4', '武强县', '131100', '053300');
INSERT INTO `ot_area_world` VALUES ('131124', '4', '饶阳县', '131100', '053900');
INSERT INTO `ot_area_world` VALUES ('131125', '4', '安平县', '131100', '053600');
INSERT INTO `ot_area_world` VALUES ('131126', '4', '故城县', '131100', '253800');
INSERT INTO `ot_area_world` VALUES ('131127', '4', '景县', '131100', '053500');
INSERT INTO `ot_area_world` VALUES ('131128', '4', '阜城县', '131100', '053700');
INSERT INTO `ot_area_world` VALUES ('131181', '4', '冀州市', '131100', '053200');
INSERT INTO `ot_area_world` VALUES ('131182', '4', '深州市', '131100', '053800');
INSERT INTO `ot_area_world` VALUES ('131183', '4', '其它区', '131100', '');
INSERT INTO `ot_area_world` VALUES ('140000', '2', '山西省', '1', '');
INSERT INTO `ot_area_world` VALUES ('140100', '3', '太原市', '140000', '030000');
INSERT INTO `ot_area_world` VALUES ('140105', '4', '小店区', '140100', '030032');
INSERT INTO `ot_area_world` VALUES ('140106', '4', '迎泽区', '140100', '030024');
INSERT INTO `ot_area_world` VALUES ('140107', '4', '杏花岭区', '140100', '030001');
INSERT INTO `ot_area_world` VALUES ('140108', '4', '尖草坪区', '140100', '030003');
INSERT INTO `ot_area_world` VALUES ('140109', '4', '万柏林区', '140100', '030027');
INSERT INTO `ot_area_world` VALUES ('140110', '4', '晋源区', '140100', '030025');
INSERT INTO `ot_area_world` VALUES ('140121', '4', '清徐县', '140100', '030400');
INSERT INTO `ot_area_world` VALUES ('140122', '4', '阳曲县', '140100', '030100');
INSERT INTO `ot_area_world` VALUES ('140123', '4', '娄烦县', '140100', '030300');
INSERT INTO `ot_area_world` VALUES ('140181', '4', '古交市', '140100', '030200');
INSERT INTO `ot_area_world` VALUES ('140182', '4', '其它区', '140100', '');
INSERT INTO `ot_area_world` VALUES ('140200', '3', '大同市', '140000', '037000');
INSERT INTO `ot_area_world` VALUES ('140202', '4', '城区', '140200', '037008');
INSERT INTO `ot_area_world` VALUES ('140203', '4', '矿区', '140200', '037001');
INSERT INTO `ot_area_world` VALUES ('140211', '4', '南郊区', '140200', '037001');
INSERT INTO `ot_area_world` VALUES ('140212', '4', '新荣区', '140200', '037002');
INSERT INTO `ot_area_world` VALUES ('140221', '4', '阳高县', '140200', '038100');
INSERT INTO `ot_area_world` VALUES ('140222', '4', '天镇县', '140200', '038200');
INSERT INTO `ot_area_world` VALUES ('140223', '4', '广灵县', '140200', '037500');
INSERT INTO `ot_area_world` VALUES ('140224', '4', '灵丘县', '140200', '034400');
INSERT INTO `ot_area_world` VALUES ('140225', '4', '浑源县', '140200', '037400');
INSERT INTO `ot_area_world` VALUES ('140226', '4', '左云县', '140200', '037100');
INSERT INTO `ot_area_world` VALUES ('140227', '4', '大同县', '140200', '037300');
INSERT INTO `ot_area_world` VALUES ('140228', '4', '其它区', '140200', '');
INSERT INTO `ot_area_world` VALUES ('140300', '3', '阳泉市', '140000', '045000');
INSERT INTO `ot_area_world` VALUES ('140302', '4', '城区', '140300', '045000');
INSERT INTO `ot_area_world` VALUES ('140303', '4', '矿区', '140300', '045000');
INSERT INTO `ot_area_world` VALUES ('140311', '4', '郊区', '140300', '045011');
INSERT INTO `ot_area_world` VALUES ('140321', '4', '平定县', '140300', '045200');
INSERT INTO `ot_area_world` VALUES ('140322', '4', '盂县', '140300', '045100');
INSERT INTO `ot_area_world` VALUES ('140323', '4', '其它区', '140300', '');
INSERT INTO `ot_area_world` VALUES ('140400', '3', '长治市', '140000', '046000');
INSERT INTO `ot_area_world` VALUES ('140421', '4', '长治县', '140400', '047100');
INSERT INTO `ot_area_world` VALUES ('140423', '4', '襄垣县', '140400', '046200');
INSERT INTO `ot_area_world` VALUES ('140424', '4', '屯留县', '140400', '046100');
INSERT INTO `ot_area_world` VALUES ('140425', '4', '平顺县', '140400', '047400');
INSERT INTO `ot_area_world` VALUES ('140426', '4', '黎城县', '140400', '047600');
INSERT INTO `ot_area_world` VALUES ('140427', '4', '壶关县', '140400', '047300');
INSERT INTO `ot_area_world` VALUES ('140428', '4', '长子县', '140400', '046600');
INSERT INTO `ot_area_world` VALUES ('140429', '4', '武乡县', '140400', '046300');
INSERT INTO `ot_area_world` VALUES ('140430', '4', '沁县', '140400', '046400');
INSERT INTO `ot_area_world` VALUES ('140431', '4', '沁源县', '140400', '046500');
INSERT INTO `ot_area_world` VALUES ('140481', '4', '潞城市', '140400', '047500');
INSERT INTO `ot_area_world` VALUES ('140482', '4', '城区', '140400', '046011');
INSERT INTO `ot_area_world` VALUES ('140483', '4', '郊区', '140400', '046011');
INSERT INTO `ot_area_world` VALUES ('140484', '4', '高新区', '140400', '');
INSERT INTO `ot_area_world` VALUES ('140485', '4', '其它区', '140400', '');
INSERT INTO `ot_area_world` VALUES ('140500', '3', '晋城市', '140000', '048000');
INSERT INTO `ot_area_world` VALUES ('140502', '4', '城区', '140500', '048000');
INSERT INTO `ot_area_world` VALUES ('140521', '4', '沁水县', '140500', '048200');
INSERT INTO `ot_area_world` VALUES ('140522', '4', '阳城县', '140500', '048100');
INSERT INTO `ot_area_world` VALUES ('140524', '4', '陵川县', '140500', '048300');
INSERT INTO `ot_area_world` VALUES ('140525', '4', '泽州县', '140500', '048012');
INSERT INTO `ot_area_world` VALUES ('140581', '4', '高平市', '140500', '048400');
INSERT INTO `ot_area_world` VALUES ('140582', '4', '其它区', '140500', '');
INSERT INTO `ot_area_world` VALUES ('140600', '3', '朔州市', '140000', '036000');
INSERT INTO `ot_area_world` VALUES ('140602', '4', '朔城区', '140600', '038500');
INSERT INTO `ot_area_world` VALUES ('140603', '4', '平鲁区', '140600', '038600');
INSERT INTO `ot_area_world` VALUES ('140621', '4', '山阴县', '140600', '036900');
INSERT INTO `ot_area_world` VALUES ('140622', '4', '应县', '140600', '037600');
INSERT INTO `ot_area_world` VALUES ('140623', '4', '右玉县', '140600', '037200');
INSERT INTO `ot_area_world` VALUES ('140624', '4', '怀仁县', '140600', '038300');
INSERT INTO `ot_area_world` VALUES ('140625', '4', '其它区', '140600', '');
INSERT INTO `ot_area_world` VALUES ('140700', '3', '晋中市', '140000', '030600');
INSERT INTO `ot_area_world` VALUES ('140702', '4', '榆次区', '140700', '030600');
INSERT INTO `ot_area_world` VALUES ('140721', '4', '榆社县', '140700', '031800');
INSERT INTO `ot_area_world` VALUES ('140722', '4', '左权县', '140700', '032600');
INSERT INTO `ot_area_world` VALUES ('140723', '4', '和顺县', '140700', '032700');
INSERT INTO `ot_area_world` VALUES ('140724', '4', '昔阳县', '140700', '045300');
INSERT INTO `ot_area_world` VALUES ('140725', '4', '寿阳县', '140700', '045400');
INSERT INTO `ot_area_world` VALUES ('140726', '4', '太谷县', '140700', '030800');
INSERT INTO `ot_area_world` VALUES ('140727', '4', '祁县', '140700', '030900');
INSERT INTO `ot_area_world` VALUES ('140728', '4', '平遥县', '140700', '031100');
INSERT INTO `ot_area_world` VALUES ('140729', '4', '灵石县', '140700', '031300');
INSERT INTO `ot_area_world` VALUES ('140781', '4', '介休市', '140700', '032000');
INSERT INTO `ot_area_world` VALUES ('140782', '4', '其它区', '140700', '');
INSERT INTO `ot_area_world` VALUES ('140800', '3', '运城市', '140000', '044000');
INSERT INTO `ot_area_world` VALUES ('140802', '4', '盐湖区', '140800', '044300');
INSERT INTO `ot_area_world` VALUES ('140821', '4', '临猗县', '140800', '044100');
INSERT INTO `ot_area_world` VALUES ('140822', '4', '万荣县', '140800', '044200');
INSERT INTO `ot_area_world` VALUES ('140823', '4', '闻喜县', '140800', '043800');
INSERT INTO `ot_area_world` VALUES ('140824', '4', '稷山县', '140800', '043200');
INSERT INTO `ot_area_world` VALUES ('140825', '4', '新绛县', '140800', '043100');
INSERT INTO `ot_area_world` VALUES ('140826', '4', '绛县', '140800', '043600');
INSERT INTO `ot_area_world` VALUES ('140827', '4', '垣曲县', '140800', '043700');
INSERT INTO `ot_area_world` VALUES ('140828', '4', '夏县', '140800', '044400');
INSERT INTO `ot_area_world` VALUES ('140829', '4', '平陆县', '140800', '044300');
INSERT INTO `ot_area_world` VALUES ('140830', '4', '芮城县', '140800', '044600');
INSERT INTO `ot_area_world` VALUES ('140881', '4', '永济市', '140800', '044500');
INSERT INTO `ot_area_world` VALUES ('140882', '4', '河津市', '140800', '043300');
INSERT INTO `ot_area_world` VALUES ('140883', '4', '其它区', '140800', '');
INSERT INTO `ot_area_world` VALUES ('140900', '3', '忻州市', '140000', '034000');
INSERT INTO `ot_area_world` VALUES ('140902', '4', '忻府区', '140900', '034000');
INSERT INTO `ot_area_world` VALUES ('140921', '4', '定襄县', '140900', '035400');
INSERT INTO `ot_area_world` VALUES ('140922', '4', '五台县', '140900', '035500');
INSERT INTO `ot_area_world` VALUES ('140923', '4', '代县', '140900', '034200');
INSERT INTO `ot_area_world` VALUES ('140924', '4', '繁峙县', '140900', '034300');
INSERT INTO `ot_area_world` VALUES ('140925', '4', '宁武县', '140900', '036700');
INSERT INTO `ot_area_world` VALUES ('140926', '4', '静乐县', '140900', '035100');
INSERT INTO `ot_area_world` VALUES ('140927', '4', '神池县', '140900', '036100');
INSERT INTO `ot_area_world` VALUES ('140928', '4', '五寨县', '140900', '036100');
INSERT INTO `ot_area_world` VALUES ('140929', '4', '岢岚县', '140900', '036300');
INSERT INTO `ot_area_world` VALUES ('140930', '4', '河曲县', '140900', '036500');
INSERT INTO `ot_area_world` VALUES ('140931', '4', '保德县', '140900', '036600');
INSERT INTO `ot_area_world` VALUES ('140932', '4', '偏关县', '140900', '036400');
INSERT INTO `ot_area_world` VALUES ('140981', '4', '原平市', '140900', '034100');
INSERT INTO `ot_area_world` VALUES ('140982', '4', '其它区', '140900', '');
INSERT INTO `ot_area_world` VALUES ('141000', '3', '临汾市', '140000', '041000');
INSERT INTO `ot_area_world` VALUES ('141002', '4', '尧都区', '141000', '041000');
INSERT INTO `ot_area_world` VALUES ('141021', '4', '曲沃县', '141000', '043400');
INSERT INTO `ot_area_world` VALUES ('141022', '4', '翼城县', '141000', '043500');
INSERT INTO `ot_area_world` VALUES ('141023', '4', '襄汾县', '141000', '041500');
INSERT INTO `ot_area_world` VALUES ('141024', '4', '洪洞县', '141000', '041600');
INSERT INTO `ot_area_world` VALUES ('141025', '4', '古县', '141000', '042400');
INSERT INTO `ot_area_world` VALUES ('141026', '4', '安泽县', '141000', '042500');
INSERT INTO `ot_area_world` VALUES ('141027', '4', '浮山县', '141000', '042600');
INSERT INTO `ot_area_world` VALUES ('141028', '4', '吉县', '141000', '042200');
INSERT INTO `ot_area_world` VALUES ('141029', '4', '乡宁县', '141000', '042100');
INSERT INTO `ot_area_world` VALUES ('141030', '4', '大宁县', '141000', '042300');
INSERT INTO `ot_area_world` VALUES ('141031', '4', '隰县', '141000', '041300');
INSERT INTO `ot_area_world` VALUES ('141032', '4', '永和县', '141000', '041400');
INSERT INTO `ot_area_world` VALUES ('141033', '4', '蒲县', '141000', '041200');
INSERT INTO `ot_area_world` VALUES ('141034', '4', '汾西县', '141000', '031500');
INSERT INTO `ot_area_world` VALUES ('141081', '4', '侯马市', '141000', '043000');
INSERT INTO `ot_area_world` VALUES ('141082', '4', '霍州市', '141000', '031400');
INSERT INTO `ot_area_world` VALUES ('141083', '4', '其它区', '141000', '');
INSERT INTO `ot_area_world` VALUES ('141100', '3', '吕梁市', '140000', '033000');
INSERT INTO `ot_area_world` VALUES ('141102', '4', '离石区', '141100', '033000');
INSERT INTO `ot_area_world` VALUES ('141121', '4', '文水县', '141100', '032100');
INSERT INTO `ot_area_world` VALUES ('141122', '4', '交城县', '141100', '030500');
INSERT INTO `ot_area_world` VALUES ('141123', '4', '兴县', '141100', '033601');
INSERT INTO `ot_area_world` VALUES ('141124', '4', '临县', '141100', '033200');
INSERT INTO `ot_area_world` VALUES ('141125', '4', '柳林县', '141100', '033300');
INSERT INTO `ot_area_world` VALUES ('141126', '4', '石楼县', '141100', '032500');
INSERT INTO `ot_area_world` VALUES ('141127', '4', '岚县', '141100', '033500');
INSERT INTO `ot_area_world` VALUES ('141128', '4', '方山县', '141100', '033100');
INSERT INTO `ot_area_world` VALUES ('141129', '4', '中阳县', '141100', '033400');
INSERT INTO `ot_area_world` VALUES ('141130', '4', '交口县', '141100', '032400');
INSERT INTO `ot_area_world` VALUES ('141181', '4', '孝义市', '141100', '032208');
INSERT INTO `ot_area_world` VALUES ('141182', '4', '汾阳市', '141100', '032200');
INSERT INTO `ot_area_world` VALUES ('141183', '4', '其它区', '141100', '');
INSERT INTO `ot_area_world` VALUES ('150000', '2', '内蒙古自治区', '1', '');
INSERT INTO `ot_area_world` VALUES ('150100', '3', '呼和浩特市', '150000', '010000');
INSERT INTO `ot_area_world` VALUES ('150102', '4', '新城区', '150100', '010050');
INSERT INTO `ot_area_world` VALUES ('150103', '4', '回民区', '150100', '010030');
INSERT INTO `ot_area_world` VALUES ('150104', '4', '玉泉区', '150100', '010020');
INSERT INTO `ot_area_world` VALUES ('150105', '4', '赛罕区', '150100', '010020');
INSERT INTO `ot_area_world` VALUES ('150121', '4', '土默特左旗', '150100', '010100');
INSERT INTO `ot_area_world` VALUES ('150122', '4', '托克托县', '150100', '010200');
INSERT INTO `ot_area_world` VALUES ('150123', '4', '和林格尔县', '150100', '011500');
INSERT INTO `ot_area_world` VALUES ('150124', '4', '清水河县', '150100', '011600');
INSERT INTO `ot_area_world` VALUES ('150125', '4', '武川县', '150100', '011700');
INSERT INTO `ot_area_world` VALUES ('150126', '4', '其它区', '150100', '');
INSERT INTO `ot_area_world` VALUES ('150200', '3', '包头市', '150000', '014000');
INSERT INTO `ot_area_world` VALUES ('150202', '4', '东河区', '150200', '014040');
INSERT INTO `ot_area_world` VALUES ('150203', '4', '昆都仑区', '150200', '014010');
INSERT INTO `ot_area_world` VALUES ('150204', '4', '青山区', '150200', '014030');
INSERT INTO `ot_area_world` VALUES ('150205', '4', '石拐区', '150200', '014070');
INSERT INTO `ot_area_world` VALUES ('150206', '4', '白云矿区', '150200', '014080');
INSERT INTO `ot_area_world` VALUES ('150207', '4', '九原区', '150200', '014060');
INSERT INTO `ot_area_world` VALUES ('150221', '4', '土默特右旗', '150200', '014100');
INSERT INTO `ot_area_world` VALUES ('150222', '4', '固阳县', '150200', '014200');
INSERT INTO `ot_area_world` VALUES ('150223', '4', '达尔罕茂明安联合旗', '150200', '014500');
INSERT INTO `ot_area_world` VALUES ('150224', '4', '其它区', '150200', '');
INSERT INTO `ot_area_world` VALUES ('150300', '3', '乌海市', '150000', '016000');
INSERT INTO `ot_area_world` VALUES ('150302', '4', '海勃湾区', '150300', '016000');
INSERT INTO `ot_area_world` VALUES ('150303', '4', '海南区', '150300', '016030');
INSERT INTO `ot_area_world` VALUES ('150304', '4', '乌达区', '150300', '016040');
INSERT INTO `ot_area_world` VALUES ('150305', '4', '其它区', '150300', '');
INSERT INTO `ot_area_world` VALUES ('150400', '3', '赤峰市', '150000', '024000');
INSERT INTO `ot_area_world` VALUES ('150402', '4', '红山区', '150400', '024020');
INSERT INTO `ot_area_world` VALUES ('150403', '4', '元宝山区', '150400', '024076');
INSERT INTO `ot_area_world` VALUES ('150404', '4', '松山区', '150400', '024005');
INSERT INTO `ot_area_world` VALUES ('150421', '4', '阿鲁科尔沁旗', '150400', '025550');
INSERT INTO `ot_area_world` VALUES ('150422', '4', '巴林左旗', '150400', '025450');
INSERT INTO `ot_area_world` VALUES ('150423', '4', '巴林右旗', '150400', '025150');
INSERT INTO `ot_area_world` VALUES ('150424', '4', '林西县', '150400', '025250');
INSERT INTO `ot_area_world` VALUES ('150425', '4', '克什克腾旗', '150400', '025350');
INSERT INTO `ot_area_world` VALUES ('150426', '4', '翁牛特旗', '150400', '024500');
INSERT INTO `ot_area_world` VALUES ('150428', '4', '喀喇沁旗', '150400', '024400');
INSERT INTO `ot_area_world` VALUES ('150429', '4', '宁城县', '150400', '024200');
INSERT INTO `ot_area_world` VALUES ('150430', '4', '敖汉旗', '150400', '024300');
INSERT INTO `ot_area_world` VALUES ('150431', '4', '其它区', '150400', '');
INSERT INTO `ot_area_world` VALUES ('150500', '3', '通辽市', '150000', '028000');
INSERT INTO `ot_area_world` VALUES ('150502', '4', '科尔沁区', '150500', '028000');
INSERT INTO `ot_area_world` VALUES ('150521', '4', '科尔沁左翼中旗', '150500', '029300');
INSERT INTO `ot_area_world` VALUES ('150522', '4', '科尔沁左翼后旗', '150500', '028100');
INSERT INTO `ot_area_world` VALUES ('150523', '4', '开鲁县', '150500', '028400');
INSERT INTO `ot_area_world` VALUES ('150524', '4', '库伦旗', '150500', '028200');
INSERT INTO `ot_area_world` VALUES ('150525', '4', '奈曼旗', '150500', '028300');
INSERT INTO `ot_area_world` VALUES ('150526', '4', '扎鲁特旗', '150500', '029100');
INSERT INTO `ot_area_world` VALUES ('150581', '4', '霍林郭勒市', '150500', '029200');
INSERT INTO `ot_area_world` VALUES ('150582', '4', '其它区', '150500', '');
INSERT INTO `ot_area_world` VALUES ('150600', '3', '鄂尔多斯市', '150000', '017004');
INSERT INTO `ot_area_world` VALUES ('150602', '4', '东胜区', '150600', '017000');
INSERT INTO `ot_area_world` VALUES ('150621', '4', '达拉特旗', '150600', '014300');
INSERT INTO `ot_area_world` VALUES ('150622', '4', '准格尔旗', '150600', '017100');
INSERT INTO `ot_area_world` VALUES ('150623', '4', '鄂托克前旗', '150600', '016200');
INSERT INTO `ot_area_world` VALUES ('150624', '4', '鄂托克旗', '150600', '016100');
INSERT INTO `ot_area_world` VALUES ('150625', '4', '杭锦旗', '150600', '017400');
INSERT INTO `ot_area_world` VALUES ('150626', '4', '乌审旗', '150600', '017300');
INSERT INTO `ot_area_world` VALUES ('150627', '4', '伊金霍洛旗', '150600', '017200');
INSERT INTO `ot_area_world` VALUES ('150628', '4', '其它区', '150600', '');
INSERT INTO `ot_area_world` VALUES ('150700', '3', '呼伦贝尔市', '150000', '021008');
INSERT INTO `ot_area_world` VALUES ('150702', '4', '海拉尔区', '150700', '021000');
INSERT INTO `ot_area_world` VALUES ('150721', '4', '阿荣旗', '150700', '162750');
INSERT INTO `ot_area_world` VALUES ('150722', '4', '莫力达瓦达斡尔族自治旗', '150700', '162850');
INSERT INTO `ot_area_world` VALUES ('150723', '4', '鄂伦春自治旗', '150700', '165450');
INSERT INTO `ot_area_world` VALUES ('150724', '4', '鄂温克族自治旗', '150700', '021100');
INSERT INTO `ot_area_world` VALUES ('150725', '4', '陈巴尔虎旗', '150700', '021500');
INSERT INTO `ot_area_world` VALUES ('150726', '4', '新巴尔虎左旗', '150700', '021200');
INSERT INTO `ot_area_world` VALUES ('150727', '4', '新巴尔虎右旗', '150700', '021300');
INSERT INTO `ot_area_world` VALUES ('150781', '4', '满洲里市', '150700', '021400');
INSERT INTO `ot_area_world` VALUES ('150782', '4', '牙克石市', '150700', '162650');
INSERT INTO `ot_area_world` VALUES ('150783', '4', '扎兰屯市', '150700', '162650');
INSERT INTO `ot_area_world` VALUES ('150784', '4', '额尔古纳市', '150700', '022250');
INSERT INTO `ot_area_world` VALUES ('150785', '4', '根河市', '150700', '022350');
INSERT INTO `ot_area_world` VALUES ('150786', '4', '其它区', '150700', '');
INSERT INTO `ot_area_world` VALUES ('150800', '3', '巴彦淖尔市', '150000', '015001');
INSERT INTO `ot_area_world` VALUES ('150802', '4', '临河区', '150800', '015001');
INSERT INTO `ot_area_world` VALUES ('150821', '4', '五原县', '150800', '015100');
INSERT INTO `ot_area_world` VALUES ('150822', '4', '磴口县', '150800', '015200');
INSERT INTO `ot_area_world` VALUES ('150823', '4', '乌拉特前旗', '150800', '015400');
INSERT INTO `ot_area_world` VALUES ('150824', '4', '乌拉特中旗', '150800', '015300');
INSERT INTO `ot_area_world` VALUES ('150825', '4', '乌拉特后旗', '150800', '015500');
INSERT INTO `ot_area_world` VALUES ('150826', '4', '杭锦后旗', '150800', '015400');
INSERT INTO `ot_area_world` VALUES ('150827', '4', '其它区', '150800', '');
INSERT INTO `ot_area_world` VALUES ('150900', '3', '乌兰察布市', '150000', '012000');
INSERT INTO `ot_area_world` VALUES ('150902', '4', '集宁区', '150900', '012000');
INSERT INTO `ot_area_world` VALUES ('150921', '4', '卓资县', '150900', '012300');
INSERT INTO `ot_area_world` VALUES ('150922', '4', '化德县', '150900', '013350');
INSERT INTO `ot_area_world` VALUES ('150923', '4', '商都县', '150900', '013400');
INSERT INTO `ot_area_world` VALUES ('150924', '4', '兴和县', '150900', '013650');
INSERT INTO `ot_area_world` VALUES ('150925', '4', '凉城县', '150900', '013750');
INSERT INTO `ot_area_world` VALUES ('150926', '4', '察哈尔右翼前旗', '150900', '012200');
INSERT INTO `ot_area_world` VALUES ('150927', '4', '察哈尔右翼中旗', '150900', '013550');
INSERT INTO `ot_area_world` VALUES ('150928', '4', '察哈尔右翼后旗', '150900', '012400');
INSERT INTO `ot_area_world` VALUES ('150929', '4', '四子王旗', '150900', '011800');
INSERT INTO `ot_area_world` VALUES ('150981', '4', '丰镇市', '150900', '012100');
INSERT INTO `ot_area_world` VALUES ('150982', '4', '其它区', '150900', '');
INSERT INTO `ot_area_world` VALUES ('152200', '3', '兴安盟', '150000', '137401');
INSERT INTO `ot_area_world` VALUES ('152201', '4', '乌兰浩特市', '152200', '137400');
INSERT INTO `ot_area_world` VALUES ('152202', '4', '阿尔山市', '152200', '137800');
INSERT INTO `ot_area_world` VALUES ('152221', '4', '科尔沁右翼前旗', '152200', '137400');
INSERT INTO `ot_area_world` VALUES ('152222', '4', '科尔沁右翼中旗', '152200', '029400');
INSERT INTO `ot_area_world` VALUES ('152223', '4', '扎赉特旗', '152200', '137600');
INSERT INTO `ot_area_world` VALUES ('152224', '4', '突泉县', '152200', '137500');
INSERT INTO `ot_area_world` VALUES ('152225', '4', '其它区', '152200', '');
INSERT INTO `ot_area_world` VALUES ('152500', '3', '锡林郭勒盟', '150000', '026021');
INSERT INTO `ot_area_world` VALUES ('152501', '4', '二连浩特市', '152500', '011100');
INSERT INTO `ot_area_world` VALUES ('152502', '4', '锡林浩特市', '152500', '026000');
INSERT INTO `ot_area_world` VALUES ('152522', '4', '阿巴嘎旗', '152500', '011400');
INSERT INTO `ot_area_world` VALUES ('152523', '4', '苏尼特左旗', '152500', '011300');
INSERT INTO `ot_area_world` VALUES ('152524', '4', '苏尼特右旗', '152500', '011200');
INSERT INTO `ot_area_world` VALUES ('152525', '4', '东乌珠穆沁旗', '152500', '026300');
INSERT INTO `ot_area_world` VALUES ('152526', '4', '西乌珠穆沁旗', '152500', '026200');
INSERT INTO `ot_area_world` VALUES ('152527', '4', '太仆寺旗', '152500', '027000');
INSERT INTO `ot_area_world` VALUES ('152528', '4', '镶黄旗', '152500', '013250');
INSERT INTO `ot_area_world` VALUES ('152529', '4', '正镶白旗', '152500', '013800');
INSERT INTO `ot_area_world` VALUES ('152530', '4', '正蓝旗', '152500', '027200');
INSERT INTO `ot_area_world` VALUES ('152531', '4', '多伦县', '152500', '027300');
INSERT INTO `ot_area_world` VALUES ('152532', '4', '其它区', '152500', '');
INSERT INTO `ot_area_world` VALUES ('152900', '3', '阿拉善盟', '150000', '750306');
INSERT INTO `ot_area_world` VALUES ('152921', '4', '阿拉善左旗', '152900', '750300');
INSERT INTO `ot_area_world` VALUES ('152922', '4', '阿拉善右旗', '152900', '737300');
INSERT INTO `ot_area_world` VALUES ('152923', '4', '额济纳旗', '152900', '735400');
INSERT INTO `ot_area_world` VALUES ('152924', '4', '其它区', '152900', '');
INSERT INTO `ot_area_world` VALUES ('210000', '2', '辽宁省', '1', '');
INSERT INTO `ot_area_world` VALUES ('210100', '3', '沈阳市', '210000', '110000');
INSERT INTO `ot_area_world` VALUES ('210102', '4', '和平区', '210100', '110002');
INSERT INTO `ot_area_world` VALUES ('210103', '4', '沈河区', '210100', '110013');
INSERT INTO `ot_area_world` VALUES ('210104', '4', '大东区', '210100', '110044');
INSERT INTO `ot_area_world` VALUES ('210105', '4', '皇姑区', '210100', '110031');
INSERT INTO `ot_area_world` VALUES ('210106', '4', '铁西区', '210100', '110023');
INSERT INTO `ot_area_world` VALUES ('210111', '4', '苏家屯区', '210100', '110102');
INSERT INTO `ot_area_world` VALUES ('210112', '4', '东陵区', '210100', '110015');
INSERT INTO `ot_area_world` VALUES ('210113', '4', '新城子区', '210100', '110121');
INSERT INTO `ot_area_world` VALUES ('210114', '4', '于洪区', '210100', '110024');
INSERT INTO `ot_area_world` VALUES ('210122', '4', '辽中县', '210100', '110200');
INSERT INTO `ot_area_world` VALUES ('210123', '4', '康平县', '210100', '110500');
INSERT INTO `ot_area_world` VALUES ('210124', '4', '法库县', '210100', '110400');
INSERT INTO `ot_area_world` VALUES ('210181', '4', '新民市', '210100', '110300');
INSERT INTO `ot_area_world` VALUES ('210182', '4', '浑南新区', '210100', '');
INSERT INTO `ot_area_world` VALUES ('210183', '4', '张士开发区', '210100', '');
INSERT INTO `ot_area_world` VALUES ('210184', '4', '沈北新区', '210100', '');
INSERT INTO `ot_area_world` VALUES ('210185', '4', '其它区', '210100', '');
INSERT INTO `ot_area_world` VALUES ('210200', '3', '大连市', '210000', '116000');
INSERT INTO `ot_area_world` VALUES ('210202', '4', '中山区', '210200', '116001');
INSERT INTO `ot_area_world` VALUES ('210203', '4', '西岗区', '210200', '116011');
INSERT INTO `ot_area_world` VALUES ('210204', '4', '沙河口区', '210200', '116021');
INSERT INTO `ot_area_world` VALUES ('210211', '4', '甘井子区', '210200', '116033');
INSERT INTO `ot_area_world` VALUES ('210212', '4', '旅顺口区', '210200', '116041');
INSERT INTO `ot_area_world` VALUES ('210213', '4', '金州区', '210200', '116100');
INSERT INTO `ot_area_world` VALUES ('210224', '4', '长海县', '210200', '116500');
INSERT INTO `ot_area_world` VALUES ('210251', '4', '开发区', '210200', '');
INSERT INTO `ot_area_world` VALUES ('210281', '4', '瓦房店市', '210200', '116300');
INSERT INTO `ot_area_world` VALUES ('210282', '4', '普兰店市', '210200', '116200');
INSERT INTO `ot_area_world` VALUES ('210283', '4', '庄河市', '210200', '116400');
INSERT INTO `ot_area_world` VALUES ('210297', '4', '岭前区', '210200', '');
INSERT INTO `ot_area_world` VALUES ('210298', '4', '其它区', '210200', '');
INSERT INTO `ot_area_world` VALUES ('210300', '3', '鞍山市', '210000', '114000');
INSERT INTO `ot_area_world` VALUES ('210302', '4', '铁东区', '210300', '114001');
INSERT INTO `ot_area_world` VALUES ('210303', '4', '铁西区', '210300', '110023');
INSERT INTO `ot_area_world` VALUES ('210304', '4', '立山区', '210300', '114031');
INSERT INTO `ot_area_world` VALUES ('210311', '4', '千山区', '210300', '114041');
INSERT INTO `ot_area_world` VALUES ('210321', '4', '台安县', '210300', '114100');
INSERT INTO `ot_area_world` VALUES ('210323', '4', '岫岩满族自治县', '210300', '114300');
INSERT INTO `ot_area_world` VALUES ('210351', '4', '高新区', '210300', '');
INSERT INTO `ot_area_world` VALUES ('210381', '4', '海城市', '210300', '114200');
INSERT INTO `ot_area_world` VALUES ('210382', '4', '其它区', '210300', '');
INSERT INTO `ot_area_world` VALUES ('210400', '3', '抚顺市', '210000', '113000');
INSERT INTO `ot_area_world` VALUES ('210402', '4', '新抚区', '210400', '113006');
INSERT INTO `ot_area_world` VALUES ('210403', '4', '东洲区', '210400', '113003');
INSERT INTO `ot_area_world` VALUES ('210404', '4', '望花区', '210400', '113001');
INSERT INTO `ot_area_world` VALUES ('210411', '4', '顺城区', '210400', '113006');
INSERT INTO `ot_area_world` VALUES ('210421', '4', '抚顺县', '210400', '113100');
INSERT INTO `ot_area_world` VALUES ('210422', '4', '新宾满族自治县', '210400', '113200');
INSERT INTO `ot_area_world` VALUES ('210423', '4', '清原满族自治县', '210400', '113300');
INSERT INTO `ot_area_world` VALUES ('210424', '4', '其它区', '210400', '');
INSERT INTO `ot_area_world` VALUES ('210500', '3', '本溪市', '210000', '117000');
INSERT INTO `ot_area_world` VALUES ('210502', '4', '平山区', '210500', '117000');
INSERT INTO `ot_area_world` VALUES ('210503', '4', '溪湖区', '210500', '117002');
INSERT INTO `ot_area_world` VALUES ('210504', '4', '明山区', '210500', '117021');
INSERT INTO `ot_area_world` VALUES ('210505', '4', '南芬区', '210500', '117014');
INSERT INTO `ot_area_world` VALUES ('210521', '4', '本溪满族自治县', '210500', '117100');
INSERT INTO `ot_area_world` VALUES ('210522', '4', '桓仁满族自治县', '210500', '117200');
INSERT INTO `ot_area_world` VALUES ('210523', '4', '其它区', '210500', '');
INSERT INTO `ot_area_world` VALUES ('210600', '3', '丹东市', '210000', '118000');
INSERT INTO `ot_area_world` VALUES ('210602', '4', '元宝区', '210600', '118000');
INSERT INTO `ot_area_world` VALUES ('210603', '4', '振兴区', '210600', '118002');
INSERT INTO `ot_area_world` VALUES ('210604', '4', '振安区', '210600', '118001');
INSERT INTO `ot_area_world` VALUES ('210624', '4', '宽甸满族自治县', '210600', '118200');
INSERT INTO `ot_area_world` VALUES ('210681', '4', '东港市', '210600', '118300');
INSERT INTO `ot_area_world` VALUES ('210682', '4', '凤城市', '210600', '118100');
INSERT INTO `ot_area_world` VALUES ('210683', '4', '其它区', '210600', '');
INSERT INTO `ot_area_world` VALUES ('210700', '3', '锦州市', '210000', '121000');
INSERT INTO `ot_area_world` VALUES ('210702', '4', '古塔区', '210700', '121001');
INSERT INTO `ot_area_world` VALUES ('210703', '4', '凌河区', '210700', '121000');
INSERT INTO `ot_area_world` VALUES ('210711', '4', '太和区', '210700', '121011');
INSERT INTO `ot_area_world` VALUES ('210726', '4', '黑山县', '210700', '121400');
INSERT INTO `ot_area_world` VALUES ('210727', '4', '义县', '210700', '121100');
INSERT INTO `ot_area_world` VALUES ('210781', '4', '凌海市', '210700', '121200');
INSERT INTO `ot_area_world` VALUES ('210782', '4', '北镇市', '210700', '121300');
INSERT INTO `ot_area_world` VALUES ('210783', '4', '其它区', '210700', '');
INSERT INTO `ot_area_world` VALUES ('210800', '3', '营口市', '210000', '115000');
INSERT INTO `ot_area_world` VALUES ('210802', '4', '站前区', '210800', '115002');
INSERT INTO `ot_area_world` VALUES ('210803', '4', '西市区', '210800', '115004');
INSERT INTO `ot_area_world` VALUES ('210804', '4', '鲅鱼圈区', '210800', '115007');
INSERT INTO `ot_area_world` VALUES ('210811', '4', '老边区', '210800', '115005');
INSERT INTO `ot_area_world` VALUES ('210881', '4', '盖州市', '210800', '115200');
INSERT INTO `ot_area_world` VALUES ('210882', '4', '大石桥市', '210800', '115100');
INSERT INTO `ot_area_world` VALUES ('210883', '4', '其它区', '210800', '');
INSERT INTO `ot_area_world` VALUES ('210900', '3', '阜新市', '210000', '123000');
INSERT INTO `ot_area_world` VALUES ('210902', '4', '海州区', '210900', '123000');
INSERT INTO `ot_area_world` VALUES ('210903', '4', '新邱区', '210900', '123005');
INSERT INTO `ot_area_world` VALUES ('210904', '4', '太平区', '210900', '123003');
INSERT INTO `ot_area_world` VALUES ('210905', '4', '清河门区', '210900', '123006');
INSERT INTO `ot_area_world` VALUES ('210911', '4', '细河区', '210900', '123000');
INSERT INTO `ot_area_world` VALUES ('210921', '4', '阜新蒙古族自治县', '210900', '123100');
INSERT INTO `ot_area_world` VALUES ('210922', '4', '彰武县', '210900', '123200');
INSERT INTO `ot_area_world` VALUES ('210923', '4', '其它区', '210900', '');
INSERT INTO `ot_area_world` VALUES ('211000', '3', '辽阳市', '210000', '111000');
INSERT INTO `ot_area_world` VALUES ('211002', '4', '白塔区', '211000', '111000');
INSERT INTO `ot_area_world` VALUES ('211003', '4', '文圣区', '211000', '111000');
INSERT INTO `ot_area_world` VALUES ('211004', '4', '宏伟区', '211000', '111003');
INSERT INTO `ot_area_world` VALUES ('211005', '4', '弓长岭区', '211000', '111008');
INSERT INTO `ot_area_world` VALUES ('211011', '4', '太子河区', '211000', '111000');
INSERT INTO `ot_area_world` VALUES ('211021', '4', '辽阳县', '211000', '111200');
INSERT INTO `ot_area_world` VALUES ('211081', '4', '灯塔市', '211000', '111300');
INSERT INTO `ot_area_world` VALUES ('211082', '4', '其它区', '211000', '');
INSERT INTO `ot_area_world` VALUES ('211100', '3', '盘锦市', '210000', '124000');
INSERT INTO `ot_area_world` VALUES ('211102', '4', '双台子区', '211100', '124000');
INSERT INTO `ot_area_world` VALUES ('211103', '4', '兴隆台区', '211100', '124010');
INSERT INTO `ot_area_world` VALUES ('211121', '4', '大洼县', '211100', '124000');
INSERT INTO `ot_area_world` VALUES ('211122', '4', '盘山县', '211100', '124100');
INSERT INTO `ot_area_world` VALUES ('211123', '4', '其它区', '211100', '');
INSERT INTO `ot_area_world` VALUES ('211200', '3', '铁岭市', '210000', '112000');
INSERT INTO `ot_area_world` VALUES ('211202', '4', '银州区', '211200', '112000');
INSERT INTO `ot_area_world` VALUES ('211204', '4', '清河区', '211200', '112003');
INSERT INTO `ot_area_world` VALUES ('211221', '4', '铁岭县', '211200', '112600');
INSERT INTO `ot_area_world` VALUES ('211223', '4', '西丰县', '211200', '112400');
INSERT INTO `ot_area_world` VALUES ('211224', '4', '昌图县', '211200', '112500');
INSERT INTO `ot_area_world` VALUES ('211281', '4', '调兵山市', '211200', '112700');
INSERT INTO `ot_area_world` VALUES ('211282', '4', '开原市', '211200', '112300');
INSERT INTO `ot_area_world` VALUES ('211283', '4', '其它区', '211200', '');
INSERT INTO `ot_area_world` VALUES ('211300', '3', '朝阳市', '210000', '122000');
INSERT INTO `ot_area_world` VALUES ('211302', '4', '双塔区', '211300', '122000');
INSERT INTO `ot_area_world` VALUES ('211303', '4', '龙城区', '211300', '122000');
INSERT INTO `ot_area_world` VALUES ('211321', '4', '朝阳县', '211300', '122000');
INSERT INTO `ot_area_world` VALUES ('211322', '4', '建平县', '211300', '122400');
INSERT INTO `ot_area_world` VALUES ('211324', '4', '喀喇沁左翼蒙古族自治县', '211300', '122300');
INSERT INTO `ot_area_world` VALUES ('211381', '4', '北票市', '211300', '122100');
INSERT INTO `ot_area_world` VALUES ('211382', '4', '凌源市', '211300', '122500');
INSERT INTO `ot_area_world` VALUES ('211383', '4', '其它区', '211300', '');
INSERT INTO `ot_area_world` VALUES ('211400', '3', '葫芦岛市', '210000', '125000');
INSERT INTO `ot_area_world` VALUES ('211402', '4', '连山区', '211400', '125001');
INSERT INTO `ot_area_world` VALUES ('211403', '4', '龙港区', '211400', '125004');
INSERT INTO `ot_area_world` VALUES ('211404', '4', '南票区', '211400', '125027');
INSERT INTO `ot_area_world` VALUES ('211421', '4', '绥中县', '211400', '125200');
INSERT INTO `ot_area_world` VALUES ('211422', '4', '建昌县', '211400', '125300');
INSERT INTO `ot_area_world` VALUES ('211481', '4', '兴城市', '211400', '125100');
INSERT INTO `ot_area_world` VALUES ('211482', '4', '其它区', '211400', '');
INSERT INTO `ot_area_world` VALUES ('220000', '2', '吉林省', '1', '');
INSERT INTO `ot_area_world` VALUES ('220100', '3', '长春市', '220000', '130000');
INSERT INTO `ot_area_world` VALUES ('220102', '4', '南关区', '220100', '130022');
INSERT INTO `ot_area_world` VALUES ('220103', '4', '宽城区', '220100', '130051');
INSERT INTO `ot_area_world` VALUES ('220104', '4', '朝阳区', '220100', '130012');
INSERT INTO `ot_area_world` VALUES ('220105', '4', '二道区', '220100', '130031');
INSERT INTO `ot_area_world` VALUES ('220106', '4', '绿园区', '220100', '130062');
INSERT INTO `ot_area_world` VALUES ('220112', '4', '双阳区', '220100', '130600');
INSERT INTO `ot_area_world` VALUES ('220122', '4', '农安县', '220100', '130200');
INSERT INTO `ot_area_world` VALUES ('220181', '4', '九台市', '220100', '130500');
INSERT INTO `ot_area_world` VALUES ('220182', '4', '榆树市', '220100', '130400');
INSERT INTO `ot_area_world` VALUES ('220183', '4', '德惠市', '220100', '130300');
INSERT INTO `ot_area_world` VALUES ('220184', '4', '高新技术产业开发区', '220100', '');
INSERT INTO `ot_area_world` VALUES ('220185', '4', '汽车产业开发区', '220100', '');
INSERT INTO `ot_area_world` VALUES ('220186', '4', '经济技术开发区', '220100', '');
INSERT INTO `ot_area_world` VALUES ('220187', '4', '净月旅游开发区', '220100', '');
INSERT INTO `ot_area_world` VALUES ('220188', '4', '其它区', '220100', '');
INSERT INTO `ot_area_world` VALUES ('220200', '3', '吉林市', '220000', '132000');
INSERT INTO `ot_area_world` VALUES ('220202', '4', '昌邑区', '220200', '132002');
INSERT INTO `ot_area_world` VALUES ('220203', '4', '龙潭区', '220200', '132021');
INSERT INTO `ot_area_world` VALUES ('220204', '4', '船营区', '220200', '132011');
INSERT INTO `ot_area_world` VALUES ('220211', '4', '丰满区', '220200', '132113');
INSERT INTO `ot_area_world` VALUES ('220221', '4', '永吉县', '220200', '132100');
INSERT INTO `ot_area_world` VALUES ('220281', '4', '蛟河市', '220200', '132500');
INSERT INTO `ot_area_world` VALUES ('220282', '4', '桦甸市', '220200', '132400');
INSERT INTO `ot_area_world` VALUES ('220283', '4', '舒兰市', '220200', '132600');
INSERT INTO `ot_area_world` VALUES ('220284', '4', '磐石市', '220200', '132300');
INSERT INTO `ot_area_world` VALUES ('220285', '4', '其它区', '220200', '');
INSERT INTO `ot_area_world` VALUES ('220300', '3', '四平市', '220000', '136000');
INSERT INTO `ot_area_world` VALUES ('220302', '4', '铁西区', '220300', '136000');
INSERT INTO `ot_area_world` VALUES ('220303', '4', '铁东区', '220300', '136001');
INSERT INTO `ot_area_world` VALUES ('220322', '4', '梨树县', '220300', '136500');
INSERT INTO `ot_area_world` VALUES ('220323', '4', '伊通满族自治县', '220300', '130700');
INSERT INTO `ot_area_world` VALUES ('220381', '4', '公主岭市', '220300', '136100');
INSERT INTO `ot_area_world` VALUES ('220382', '4', '双辽市', '220300', '136400');
INSERT INTO `ot_area_world` VALUES ('220383', '4', '其它区', '220300', '');
INSERT INTO `ot_area_world` VALUES ('220400', '3', '辽源市', '220000', '136200');
INSERT INTO `ot_area_world` VALUES ('220402', '4', '龙山区', '220400', '136200');
INSERT INTO `ot_area_world` VALUES ('220403', '4', '西安区', '220400', '136201');
INSERT INTO `ot_area_world` VALUES ('220421', '4', '东丰县', '220400', '136300');
INSERT INTO `ot_area_world` VALUES ('220422', '4', '东辽县', '220400', '136600');
INSERT INTO `ot_area_world` VALUES ('220423', '4', '其它区', '220400', '');
INSERT INTO `ot_area_world` VALUES ('220500', '3', '通化市', '220000', '134000');
INSERT INTO `ot_area_world` VALUES ('220502', '4', '东昌区', '220500', '134001');
INSERT INTO `ot_area_world` VALUES ('220503', '4', '二道江区', '220500', '134303');
INSERT INTO `ot_area_world` VALUES ('220521', '4', '通化县', '220500', '134100');
INSERT INTO `ot_area_world` VALUES ('220523', '4', '辉南县', '220500', '135100');
INSERT INTO `ot_area_world` VALUES ('220524', '4', '柳河县', '220500', '135300');
INSERT INTO `ot_area_world` VALUES ('220581', '4', '梅河口市', '220500', '135000');
INSERT INTO `ot_area_world` VALUES ('220582', '4', '集安市', '220500', '134200');
INSERT INTO `ot_area_world` VALUES ('220583', '4', '其它区', '220500', '');
INSERT INTO `ot_area_world` VALUES ('220600', '3', '白山市', '220000', '134300');
INSERT INTO `ot_area_world` VALUES ('220602', '4', '八道江区', '220600', '134300');
INSERT INTO `ot_area_world` VALUES ('220621', '4', '抚松县', '220600', '134500');
INSERT INTO `ot_area_world` VALUES ('220622', '4', '靖宇县', '220600', '135200');
INSERT INTO `ot_area_world` VALUES ('220623', '4', '长白朝鲜族自治县', '220600', '134400');
INSERT INTO `ot_area_world` VALUES ('220625', '4', '江源市', '220600', '134700');
INSERT INTO `ot_area_world` VALUES ('220681', '4', '临江市', '220600', '134600');
INSERT INTO `ot_area_world` VALUES ('220682', '4', '其它区', '220600', '');
INSERT INTO `ot_area_world` VALUES ('220700', '3', '松原市', '220000', '138000');
INSERT INTO `ot_area_world` VALUES ('220702', '4', '宁江区', '220700', '138000');
INSERT INTO `ot_area_world` VALUES ('220721', '4', '前郭尔罗斯蒙古族自治县', '220700', '131100');
INSERT INTO `ot_area_world` VALUES ('220722', '4', '长岭县', '220700', '131500');
INSERT INTO `ot_area_world` VALUES ('220723', '4', '乾安县', '220700', '131400');
INSERT INTO `ot_area_world` VALUES ('220724', '4', '扶余县', '220700', '131200');
INSERT INTO `ot_area_world` VALUES ('220725', '4', '其它区', '220700', '');
INSERT INTO `ot_area_world` VALUES ('220800', '3', '白城市', '220000', '137000');
INSERT INTO `ot_area_world` VALUES ('220802', '4', '洮北区', '220800', '137000');
INSERT INTO `ot_area_world` VALUES ('220821', '4', '镇赉县', '220800', '137300');
INSERT INTO `ot_area_world` VALUES ('220822', '4', '通榆县', '220800', '137200');
INSERT INTO `ot_area_world` VALUES ('220881', '4', '洮南市', '220800', '137100');
INSERT INTO `ot_area_world` VALUES ('220882', '4', '大安市', '220800', '131300');
INSERT INTO `ot_area_world` VALUES ('220883', '4', '其它区', '220800', '');
INSERT INTO `ot_area_world` VALUES ('222400', '3', '延边朝鲜族自治州', '220000', '133000');
INSERT INTO `ot_area_world` VALUES ('222401', '4', '延吉市', '222400', '133000');
INSERT INTO `ot_area_world` VALUES ('222402', '4', '图们市', '222400', '133100');
INSERT INTO `ot_area_world` VALUES ('222403', '4', '敦化市', '222400', '133700');
INSERT INTO `ot_area_world` VALUES ('222404', '4', '珲春市', '222400', '133300');
INSERT INTO `ot_area_world` VALUES ('222405', '4', '龙井市', '222400', '133400');
INSERT INTO `ot_area_world` VALUES ('222406', '4', '和龙市', '222400', '133500');
INSERT INTO `ot_area_world` VALUES ('222424', '4', '汪清县', '222400', '133200');
INSERT INTO `ot_area_world` VALUES ('222426', '4', '安图县', '222400', '133600');
INSERT INTO `ot_area_world` VALUES ('222427', '4', '其它区', '222400', '');
INSERT INTO `ot_area_world` VALUES ('230000', '2', '黑龙江省', '1', '');
INSERT INTO `ot_area_world` VALUES ('230100', '3', '哈尔滨市', '230000', '150000');
INSERT INTO `ot_area_world` VALUES ('230102', '4', '道里区', '230100', '150010');
INSERT INTO `ot_area_world` VALUES ('230103', '4', '南岗区', '230100', '150006');
INSERT INTO `ot_area_world` VALUES ('230104', '4', '道外区', '230100', '150026');
INSERT INTO `ot_area_world` VALUES ('230106', '4', '香坊区', '230100', '150036');
INSERT INTO `ot_area_world` VALUES ('230107', '4', '动力区', '230100', '150040');
INSERT INTO `ot_area_world` VALUES ('230108', '4', '平房区', '230100', '150060');
INSERT INTO `ot_area_world` VALUES ('230109', '4', '松北区', '230100', '150028');
INSERT INTO `ot_area_world` VALUES ('230111', '4', '呼兰区', '230100', '150500');
INSERT INTO `ot_area_world` VALUES ('230123', '4', '依兰县', '230100', '154800');
INSERT INTO `ot_area_world` VALUES ('230124', '4', '方正县', '230100', '150800');
INSERT INTO `ot_area_world` VALUES ('230125', '4', '宾县', '230100', '150400');
INSERT INTO `ot_area_world` VALUES ('230126', '4', '巴彦县', '230100', '151800');
INSERT INTO `ot_area_world` VALUES ('230127', '4', '木兰县', '230100', '151900');
INSERT INTO `ot_area_world` VALUES ('230128', '4', '通河县', '230100', '150900');
INSERT INTO `ot_area_world` VALUES ('230129', '4', '延寿县', '230100', '150700');
INSERT INTO `ot_area_world` VALUES ('230181', '4', '阿城市', '230100', '150300');
INSERT INTO `ot_area_world` VALUES ('230182', '4', '双城市', '230100', '150100');
INSERT INTO `ot_area_world` VALUES ('230183', '4', '尚志市', '230100', '150600');
INSERT INTO `ot_area_world` VALUES ('230184', '4', '五常市', '230100', '150200');
INSERT INTO `ot_area_world` VALUES ('230185', '4', '阿城市', '230100', '150300');
INSERT INTO `ot_area_world` VALUES ('230186', '4', '其它区', '230100', '');
INSERT INTO `ot_area_world` VALUES ('230200', '3', '齐齐哈尔市', '230000', '161000');
INSERT INTO `ot_area_world` VALUES ('230202', '4', '龙沙区', '230200', '161000');
INSERT INTO `ot_area_world` VALUES ('230203', '4', '建华区', '230200', '161006');
INSERT INTO `ot_area_world` VALUES ('230204', '4', '铁锋区', '230200', '161000');
INSERT INTO `ot_area_world` VALUES ('230205', '4', '昂昂溪区', '230200', '161031');
INSERT INTO `ot_area_world` VALUES ('230206', '4', '富拉尔基区', '230200', '161041');
INSERT INTO `ot_area_world` VALUES ('230207', '4', '碾子山区', '230200', '161046');
INSERT INTO `ot_area_world` VALUES ('230208', '4', '梅里斯达斡尔族区', '230200', '161021');
INSERT INTO `ot_area_world` VALUES ('230221', '4', '龙江县', '230200', '161100');
INSERT INTO `ot_area_world` VALUES ('230223', '4', '依安县', '230200', '161500');
INSERT INTO `ot_area_world` VALUES ('230224', '4', '泰来县', '230200', '162400');
INSERT INTO `ot_area_world` VALUES ('230225', '4', '甘南县', '230200', '162100');
INSERT INTO `ot_area_world` VALUES ('230227', '4', '富裕县', '230200', '161200');
INSERT INTO `ot_area_world` VALUES ('230229', '4', '克山县', '230200', '161600');
INSERT INTO `ot_area_world` VALUES ('230230', '4', '克东县', '230200', '164800');
INSERT INTO `ot_area_world` VALUES ('230231', '4', '拜泉县', '230200', '164700');
INSERT INTO `ot_area_world` VALUES ('230281', '4', '讷河市', '230200', '161300');
INSERT INTO `ot_area_world` VALUES ('230282', '4', '其它区', '230200', '');
INSERT INTO `ot_area_world` VALUES ('230300', '3', '鸡西市', '230000', '158100');
INSERT INTO `ot_area_world` VALUES ('230302', '4', '鸡冠区', '230300', '158100');
INSERT INTO `ot_area_world` VALUES ('230303', '4', '恒山区', '230300', '158130');
INSERT INTO `ot_area_world` VALUES ('230304', '4', '滴道区', '230300', '158150');
INSERT INTO `ot_area_world` VALUES ('230305', '4', '梨树区', '230300', '158160');
INSERT INTO `ot_area_world` VALUES ('230306', '4', '城子河区', '230300', '158170');
INSERT INTO `ot_area_world` VALUES ('230307', '4', '麻山区', '230300', '158180');
INSERT INTO `ot_area_world` VALUES ('230321', '4', '鸡东县', '230300', '158200');
INSERT INTO `ot_area_world` VALUES ('230381', '4', '虎林市', '230300', '158400');
INSERT INTO `ot_area_world` VALUES ('230382', '4', '密山市', '230300', '158300');
INSERT INTO `ot_area_world` VALUES ('230383', '4', '其它区', '230300', '');
INSERT INTO `ot_area_world` VALUES ('230400', '3', '鹤岗市', '230000', '154100');
INSERT INTO `ot_area_world` VALUES ('230402', '4', '向阳区', '230400', '154100');
INSERT INTO `ot_area_world` VALUES ('230403', '4', '工农区', '230400', '154101');
INSERT INTO `ot_area_world` VALUES ('230404', '4', '南山区', '230400', '154104');
INSERT INTO `ot_area_world` VALUES ('230405', '4', '兴安区', '230400', '154102');
INSERT INTO `ot_area_world` VALUES ('230406', '4', '东山区', '230400', '154106');
INSERT INTO `ot_area_world` VALUES ('230407', '4', '兴山区', '230400', '154105');
INSERT INTO `ot_area_world` VALUES ('230421', '4', '萝北县', '230400', '154200');
INSERT INTO `ot_area_world` VALUES ('230422', '4', '绥滨县', '230400', '156200');
INSERT INTO `ot_area_world` VALUES ('230423', '4', '其它区', '230400', '');
INSERT INTO `ot_area_world` VALUES ('230500', '3', '双鸭山市', '230000', '155100');
INSERT INTO `ot_area_world` VALUES ('230502', '4', '尖山区', '230500', '155100');
INSERT INTO `ot_area_world` VALUES ('230503', '4', '岭东区', '230500', '155120');
INSERT INTO `ot_area_world` VALUES ('230505', '4', '四方台区', '230500', '155130');
INSERT INTO `ot_area_world` VALUES ('230506', '4', '宝山区', '230500', '155131');
INSERT INTO `ot_area_world` VALUES ('230521', '4', '集贤县', '230500', '155900');
INSERT INTO `ot_area_world` VALUES ('230522', '4', '友谊县', '230500', '155800');
INSERT INTO `ot_area_world` VALUES ('230523', '4', '宝清县', '230500', '155600');
INSERT INTO `ot_area_world` VALUES ('230524', '4', '饶河县', '230500', '155700');
INSERT INTO `ot_area_world` VALUES ('230525', '4', '其它区', '230500', '');
INSERT INTO `ot_area_world` VALUES ('230600', '3', '大庆市', '230000', '163000');
INSERT INTO `ot_area_world` VALUES ('230602', '4', '萨尔图区', '230600', '163311');
INSERT INTO `ot_area_world` VALUES ('230603', '4', '龙凤区', '230600', '163711');
INSERT INTO `ot_area_world` VALUES ('230604', '4', '让胡路区', '230600', '163453');
INSERT INTO `ot_area_world` VALUES ('230605', '4', '红岗区', '230600', '163512');
INSERT INTO `ot_area_world` VALUES ('230606', '4', '大同区', '230600', '163814');
INSERT INTO `ot_area_world` VALUES ('230621', '4', '肇州县', '230600', '166400');
INSERT INTO `ot_area_world` VALUES ('230622', '4', '肇源县', '230600', '166500');
INSERT INTO `ot_area_world` VALUES ('230623', '4', '林甸县', '230600', '166300');
INSERT INTO `ot_area_world` VALUES ('230624', '4', '杜尔伯特蒙古族自治县', '230600', '166200');
INSERT INTO `ot_area_world` VALUES ('230625', '4', '其它区', '230600', '');
INSERT INTO `ot_area_world` VALUES ('230700', '3', '伊春市', '230000', '153000');
INSERT INTO `ot_area_world` VALUES ('230702', '4', '伊春区', '230700', '153000');
INSERT INTO `ot_area_world` VALUES ('230703', '4', '南岔区', '230700', '153100');
INSERT INTO `ot_area_world` VALUES ('230704', '4', '友好区', '230700', '153031');
INSERT INTO `ot_area_world` VALUES ('230705', '4', '西林区', '230700', '153025');
INSERT INTO `ot_area_world` VALUES ('230706', '4', '翠峦区', '230700', '153013');
INSERT INTO `ot_area_world` VALUES ('230707', '4', '新青区', '230700', '153036');
INSERT INTO `ot_area_world` VALUES ('230708', '4', '美溪区', '230700', '153021');
INSERT INTO `ot_area_world` VALUES ('230709', '4', '金山屯区', '230700', '152026');
INSERT INTO `ot_area_world` VALUES ('230710', '4', '五营区', '230700', '153033');
INSERT INTO `ot_area_world` VALUES ('230711', '4', '乌马河区', '230700', '153011');
INSERT INTO `ot_area_world` VALUES ('230712', '4', '汤旺河区', '230700', '153037');
INSERT INTO `ot_area_world` VALUES ('230713', '4', '带岭区', '230700', '153106');
INSERT INTO `ot_area_world` VALUES ('230714', '4', '乌伊岭区', '230700', '153038');
INSERT INTO `ot_area_world` VALUES ('230715', '4', '红星区', '230700', '153035');
INSERT INTO `ot_area_world` VALUES ('230716', '4', '上甘岭区', '230700', '153032');
INSERT INTO `ot_area_world` VALUES ('230722', '4', '嘉荫县', '230700', '153200');
INSERT INTO `ot_area_world` VALUES ('230781', '4', '铁力市', '230700', '152500');
INSERT INTO `ot_area_world` VALUES ('230782', '4', '其它区', '230700', '');
INSERT INTO `ot_area_world` VALUES ('230800', '3', '佳木斯市', '230000', '154000');
INSERT INTO `ot_area_world` VALUES ('230802', '4', '永红区', '230800', '154003');
INSERT INTO `ot_area_world` VALUES ('230803', '4', '向阳区', '230800', '154002');
INSERT INTO `ot_area_world` VALUES ('230804', '4', '前进区', '230800', '154002');
INSERT INTO `ot_area_world` VALUES ('230805', '4', '东风区', '230800', '154005');
INSERT INTO `ot_area_world` VALUES ('230811', '4', '郊区', '230800', '154004');
INSERT INTO `ot_area_world` VALUES ('230822', '4', '桦南县', '230800', '154400');
INSERT INTO `ot_area_world` VALUES ('230826', '4', '桦川县', '230800', '154300');
INSERT INTO `ot_area_world` VALUES ('230828', '4', '汤原县', '230800', '154700');
INSERT INTO `ot_area_world` VALUES ('230833', '4', '抚远县', '230800', '156500');
INSERT INTO `ot_area_world` VALUES ('230881', '4', '同江市', '230800', '156400');
INSERT INTO `ot_area_world` VALUES ('230882', '4', '富锦市', '230800', '156100');
INSERT INTO `ot_area_world` VALUES ('230883', '4', '其它区', '230800', '');
INSERT INTO `ot_area_world` VALUES ('230900', '3', '七台河市', '230000', '154600');
INSERT INTO `ot_area_world` VALUES ('230902', '4', '新兴区', '230900', '154604');
INSERT INTO `ot_area_world` VALUES ('230903', '4', '桃山区', '230900', '154600');
INSERT INTO `ot_area_world` VALUES ('230904', '4', '茄子河区', '230900', '154622');
INSERT INTO `ot_area_world` VALUES ('230921', '4', '勃利县', '230900', '154500');
INSERT INTO `ot_area_world` VALUES ('230922', '4', '其它区', '230900', '');
INSERT INTO `ot_area_world` VALUES ('231000', '3', '牡丹江市', '230000', '157000');
INSERT INTO `ot_area_world` VALUES ('231002', '4', '东安区', '231000', '157000');
INSERT INTO `ot_area_world` VALUES ('231003', '4', '阳明区', '231000', '157013');
INSERT INTO `ot_area_world` VALUES ('231004', '4', '爱民区', '231000', '157009');
INSERT INTO `ot_area_world` VALUES ('231005', '4', '西安区', '231000', '157000');
INSERT INTO `ot_area_world` VALUES ('231024', '4', '东宁县', '231000', '157200');
INSERT INTO `ot_area_world` VALUES ('231025', '4', '林口县', '231000', '157600');
INSERT INTO `ot_area_world` VALUES ('231081', '4', '绥芬河市', '231000', '157300');
INSERT INTO `ot_area_world` VALUES ('231083', '4', '海林市', '231000', '157100');
INSERT INTO `ot_area_world` VALUES ('231084', '4', '宁安市', '231000', '157400');
INSERT INTO `ot_area_world` VALUES ('231085', '4', '穆棱市', '231000', '157500');
INSERT INTO `ot_area_world` VALUES ('231086', '4', '其它区', '231000', '');
INSERT INTO `ot_area_world` VALUES ('231100', '3', '黑河市', '230000', '164300');
INSERT INTO `ot_area_world` VALUES ('231102', '4', '爱辉区', '231100', '164300');
INSERT INTO `ot_area_world` VALUES ('231121', '4', '嫩江县', '231100', '161400');
INSERT INTO `ot_area_world` VALUES ('231123', '4', '逊克县', '231100', '164400');
INSERT INTO `ot_area_world` VALUES ('231124', '4', '孙吴县', '231100', '164200');
INSERT INTO `ot_area_world` VALUES ('231181', '4', '北安市', '231100', '164000');
INSERT INTO `ot_area_world` VALUES ('231182', '4', '五大连池市', '231100', '164100');
INSERT INTO `ot_area_world` VALUES ('231183', '4', '其它区', '231100', '');
INSERT INTO `ot_area_world` VALUES ('231200', '3', '绥化市', '230000', '152000');
INSERT INTO `ot_area_world` VALUES ('231202', '4', '北林区', '231200', '152000');
INSERT INTO `ot_area_world` VALUES ('231221', '4', '望奎县', '231200', '152100');
INSERT INTO `ot_area_world` VALUES ('231222', '4', '兰西县', '231200', '151500');
INSERT INTO `ot_area_world` VALUES ('231223', '4', '青冈县', '231200', '151600');
INSERT INTO `ot_area_world` VALUES ('231224', '4', '庆安县', '231200', '152400');
INSERT INTO `ot_area_world` VALUES ('231225', '4', '明水县', '231200', '151700');
INSERT INTO `ot_area_world` VALUES ('231226', '4', '绥棱县', '231200', '152200');
INSERT INTO `ot_area_world` VALUES ('231281', '4', '安达市', '231200', '151400');
INSERT INTO `ot_area_world` VALUES ('231282', '4', '肇东市', '231200', '151100');
INSERT INTO `ot_area_world` VALUES ('231283', '4', '海伦市', '231200', '152300');
INSERT INTO `ot_area_world` VALUES ('231284', '4', '其它区', '231200', '');
INSERT INTO `ot_area_world` VALUES ('232700', '3', '大兴安岭地区', '230000', '165000');
INSERT INTO `ot_area_world` VALUES ('232721', '4', '呼玛县', '232700', '165100');
INSERT INTO `ot_area_world` VALUES ('232722', '4', '塔河县', '232700', '165200');
INSERT INTO `ot_area_world` VALUES ('232723', '4', '漠河县', '232700', '165300');
INSERT INTO `ot_area_world` VALUES ('232724', '4', '加格达奇区', '232700', '165300');
INSERT INTO `ot_area_world` VALUES ('232725', '4', '其它区', '232700', '');
INSERT INTO `ot_area_world` VALUES ('310000', '2', '上海', '1', '');
INSERT INTO `ot_area_world` VALUES ('310100', '3', '上海市', '310000', '200000');
INSERT INTO `ot_area_world` VALUES ('310101', '4', '黄浦区', '310100', '200001');
INSERT INTO `ot_area_world` VALUES ('310103', '4', '卢湾区', '310100', '200020');
INSERT INTO `ot_area_world` VALUES ('310104', '4', '徐汇区', '310100', '200030');
INSERT INTO `ot_area_world` VALUES ('310105', '4', '长宁区', '310100', '200050');
INSERT INTO `ot_area_world` VALUES ('310106', '4', '静安区', '310100', '200040');
INSERT INTO `ot_area_world` VALUES ('310107', '4', '普陀区', '310100', '200062');
INSERT INTO `ot_area_world` VALUES ('310108', '4', '闸北区', '310100', '200070');
INSERT INTO `ot_area_world` VALUES ('310109', '4', '虹口区', '310100', '200080');
INSERT INTO `ot_area_world` VALUES ('310110', '4', '杨浦区', '310100', '200082');
INSERT INTO `ot_area_world` VALUES ('310112', '4', '闵行区', '310100', '201100');
INSERT INTO `ot_area_world` VALUES ('310113', '4', '宝山区', '310100', '201900');
INSERT INTO `ot_area_world` VALUES ('310114', '4', '嘉定区', '310100', '201800');
INSERT INTO `ot_area_world` VALUES ('310115', '4', '浦东新区', '310100', '200120');
INSERT INTO `ot_area_world` VALUES ('310116', '4', '金山区', '310100', '201540');
INSERT INTO `ot_area_world` VALUES ('310117', '4', '松江区', '310100', '201600');
INSERT INTO `ot_area_world` VALUES ('310118', '4', '青浦区', '310100', '201700');
INSERT INTO `ot_area_world` VALUES ('310119', '4', '南汇区', '310100', '201300');
INSERT INTO `ot_area_world` VALUES ('310120', '4', '奉贤区', '310100', '201400');
INSERT INTO `ot_area_world` VALUES ('310152', '4', '川沙区', '310100', '');
INSERT INTO `ot_area_world` VALUES ('310230', '4', '崇明县', '310100', '202150');
INSERT INTO `ot_area_world` VALUES ('310231', '4', '其它区', '310100', '');
INSERT INTO `ot_area_world` VALUES ('320000', '2', '江苏省', '1', '');
INSERT INTO `ot_area_world` VALUES ('320100', '3', '南京市', '320000', '210000');
INSERT INTO `ot_area_world` VALUES ('320102', '4', '玄武区', '320100', '210018');
INSERT INTO `ot_area_world` VALUES ('320103', '4', '白下区', '320100', '210002');
INSERT INTO `ot_area_world` VALUES ('320104', '4', '秦淮区', '320100', '210001');
INSERT INTO `ot_area_world` VALUES ('320105', '4', '建邺区', '320100', '210004');
INSERT INTO `ot_area_world` VALUES ('320106', '4', '鼓楼区', '320100', '210009');
INSERT INTO `ot_area_world` VALUES ('320107', '4', '下关区', '320100', '210011');
INSERT INTO `ot_area_world` VALUES ('320111', '4', '浦口区', '320100', '211800');
INSERT INTO `ot_area_world` VALUES ('320113', '4', '栖霞区', '320100', '210046');
INSERT INTO `ot_area_world` VALUES ('320114', '4', '雨花台区', '320100', '210012');
INSERT INTO `ot_area_world` VALUES ('320115', '4', '江宁区', '320100', '211100');
INSERT INTO `ot_area_world` VALUES ('320116', '4', '六合区', '320100', '211500');
INSERT INTO `ot_area_world` VALUES ('320124', '4', '溧水县', '320100', '211200');
INSERT INTO `ot_area_world` VALUES ('320125', '4', '高淳县', '320100', '211300');
INSERT INTO `ot_area_world` VALUES ('320126', '4', '其它区', '320100', '');
INSERT INTO `ot_area_world` VALUES ('320200', '3', '无锡市', '320000', '214000');
INSERT INTO `ot_area_world` VALUES ('320202', '4', '崇安区', '320200', '214002');
INSERT INTO `ot_area_world` VALUES ('320203', '4', '南长区', '320200', '214021');
INSERT INTO `ot_area_world` VALUES ('320204', '4', '北塘区', '320200', '214044');
INSERT INTO `ot_area_world` VALUES ('320205', '4', '锡山区', '320200', '214101');
INSERT INTO `ot_area_world` VALUES ('320206', '4', '惠山区', '320200', '214187');
INSERT INTO `ot_area_world` VALUES ('320211', '4', '滨湖区', '320200', '214062');
INSERT INTO `ot_area_world` VALUES ('320281', '4', '江阴市', '320200', '214400');
INSERT INTO `ot_area_world` VALUES ('320282', '4', '宜兴市', '320200', '214200');
INSERT INTO `ot_area_world` VALUES ('320296', '4', '新区', '320200', '');
INSERT INTO `ot_area_world` VALUES ('320297', '4', '其它区', '320200', '');
INSERT INTO `ot_area_world` VALUES ('320300', '3', '徐州市', '320000', '221000');
INSERT INTO `ot_area_world` VALUES ('320302', '4', '鼓楼区', '320300', '220005');
INSERT INTO `ot_area_world` VALUES ('320303', '4', '云龙区', '320300', '220009');
INSERT INTO `ot_area_world` VALUES ('320304', '4', '九里区', '320300', '220040');
INSERT INTO `ot_area_world` VALUES ('320305', '4', '贾汪区', '320300', '220011');
INSERT INTO `ot_area_world` VALUES ('320311', '4', '泉山区', '320300', '220006');
INSERT INTO `ot_area_world` VALUES ('320321', '4', '丰县', '320300', '221700');
INSERT INTO `ot_area_world` VALUES ('320322', '4', '沛县', '320300', '221600');
INSERT INTO `ot_area_world` VALUES ('320323', '4', '铜山县', '320300', '221112');
INSERT INTO `ot_area_world` VALUES ('320324', '4', '睢宁县', '320300', '221200');
INSERT INTO `ot_area_world` VALUES ('320381', '4', '新沂市', '320300', '221400');
INSERT INTO `ot_area_world` VALUES ('320382', '4', '邳州市', '320300', '221300');
INSERT INTO `ot_area_world` VALUES ('320383', '4', '其它区', '320300', '');
INSERT INTO `ot_area_world` VALUES ('320400', '3', '常州市', '320000', '213000');
INSERT INTO `ot_area_world` VALUES ('320402', '4', '天宁区', '320400', '213003');
INSERT INTO `ot_area_world` VALUES ('320404', '4', '钟楼区', '320400', '213002');
INSERT INTO `ot_area_world` VALUES ('320405', '4', '戚墅堰区', '320400', '213011');
INSERT INTO `ot_area_world` VALUES ('320411', '4', '新北区', '320400', '213001');
INSERT INTO `ot_area_world` VALUES ('320412', '4', '武进区', '320400', '213161');
INSERT INTO `ot_area_world` VALUES ('320481', '4', '溧阳市', '320400', '213300');
INSERT INTO `ot_area_world` VALUES ('320482', '4', '金坛市', '320400', '213200');
INSERT INTO `ot_area_world` VALUES ('320483', '4', '其它区', '320400', '');
INSERT INTO `ot_area_world` VALUES ('320500', '3', '苏州市', '320000', '215000');
INSERT INTO `ot_area_world` VALUES ('320502', '4', '沧浪区', '320500', '215006');
INSERT INTO `ot_area_world` VALUES ('320503', '4', '平江区', '320500', '215005');
INSERT INTO `ot_area_world` VALUES ('320504', '4', '金阊区', '320500', '215008');
INSERT INTO `ot_area_world` VALUES ('320505', '4', '虎丘区', '320500', '215004');
INSERT INTO `ot_area_world` VALUES ('320506', '4', '吴中区', '320500', '215128');
INSERT INTO `ot_area_world` VALUES ('320507', '4', '相城区', '320500', '215131');
INSERT INTO `ot_area_world` VALUES ('320581', '4', '常熟市', '320500', '215500');
INSERT INTO `ot_area_world` VALUES ('320582', '4', '张家港市', '320500', '215600');
INSERT INTO `ot_area_world` VALUES ('320583', '4', '昆山市', '320500', '215300');
INSERT INTO `ot_area_world` VALUES ('320584', '4', '吴江市', '320500', '215200');
INSERT INTO `ot_area_world` VALUES ('320585', '4', '太仓市', '320500', '215400');
INSERT INTO `ot_area_world` VALUES ('320594', '4', '新区', '320500', '');
INSERT INTO `ot_area_world` VALUES ('320595', '4', '园区', '320500', '');
INSERT INTO `ot_area_world` VALUES ('320596', '4', '其它区', '320500', '');
INSERT INTO `ot_area_world` VALUES ('320600', '3', '南通市', '320000', '226000');
INSERT INTO `ot_area_world` VALUES ('320602', '4', '崇川区', '320600', '226001');
INSERT INTO `ot_area_world` VALUES ('320611', '4', '港闸区', '320600', '226001');
INSERT INTO `ot_area_world` VALUES ('320612', '4', '通州区', '320600', '226321');
INSERT INTO `ot_area_world` VALUES ('320621', '4', '海安县', '320600', '226600');
INSERT INTO `ot_area_world` VALUES ('320623', '4', '如东县', '320600', '226400');
INSERT INTO `ot_area_world` VALUES ('320681', '4', '启东市', '320600', '226200');
INSERT INTO `ot_area_world` VALUES ('320682', '4', '如皋市', '320600', '226500');
INSERT INTO `ot_area_world` VALUES ('320683', '4', '通州市', '320600', '226300');
INSERT INTO `ot_area_world` VALUES ('320684', '4', '海门市', '320600', '226100');
INSERT INTO `ot_area_world` VALUES ('320693', '4', '开发区', '320600', '');
INSERT INTO `ot_area_world` VALUES ('320694', '4', '其它区', '320600', '');
INSERT INTO `ot_area_world` VALUES ('320700', '3', '连云港市', '320000', '222000');
INSERT INTO `ot_area_world` VALUES ('320703', '4', '连云区', '320700', '222042');
INSERT INTO `ot_area_world` VALUES ('320705', '4', '新浦区', '320700', '222003');
INSERT INTO `ot_area_world` VALUES ('320706', '4', '海州区', '320700', '222023');
INSERT INTO `ot_area_world` VALUES ('320721', '4', '赣榆县', '320700', '222100');
INSERT INTO `ot_area_world` VALUES ('320722', '4', '东海县', '320700', '222300');
INSERT INTO `ot_area_world` VALUES ('320723', '4', '灌云县', '320700', '222200');
INSERT INTO `ot_area_world` VALUES ('320724', '4', '灌南县', '320700', '222500');
INSERT INTO `ot_area_world` VALUES ('320725', '4', '其它区', '320700', '');
INSERT INTO `ot_area_world` VALUES ('320800', '3', '淮安市', '320000', '223200');
INSERT INTO `ot_area_world` VALUES ('320802', '4', '清河区', '320800', '223001');
INSERT INTO `ot_area_world` VALUES ('320803', '4', '楚州区', '320800', '223200');
INSERT INTO `ot_area_world` VALUES ('320804', '4', '淮阴区', '320800', '223000');
INSERT INTO `ot_area_world` VALUES ('320811', '4', '清浦区', '320800', '223002');
INSERT INTO `ot_area_world` VALUES ('320826', '4', '涟水县', '320800', '223400');
INSERT INTO `ot_area_world` VALUES ('320829', '4', '洪泽县', '320800', '223100');
INSERT INTO `ot_area_world` VALUES ('320830', '4', '盱眙县', '320800', '211700');
INSERT INTO `ot_area_world` VALUES ('320831', '4', '金湖县', '320800', '211600');
INSERT INTO `ot_area_world` VALUES ('320832', '4', '其它区', '320800', '');
INSERT INTO `ot_area_world` VALUES ('320900', '3', '盐城市', '320000', '224000');
INSERT INTO `ot_area_world` VALUES ('320902', '4', '亭湖区', '320900', '224005');
INSERT INTO `ot_area_world` VALUES ('320903', '4', '盐都区', '320900', '224055');
INSERT INTO `ot_area_world` VALUES ('320921', '4', '响水县', '320900', '224600');
INSERT INTO `ot_area_world` VALUES ('320922', '4', '滨海县', '320900', '224500');
INSERT INTO `ot_area_world` VALUES ('320923', '4', '阜宁县', '320900', '224400');
INSERT INTO `ot_area_world` VALUES ('320924', '4', '射阳县', '320900', '224300');
INSERT INTO `ot_area_world` VALUES ('320925', '4', '建湖县', '320900', '224700');
INSERT INTO `ot_area_world` VALUES ('320981', '4', '东台市', '320900', '224200');
INSERT INTO `ot_area_world` VALUES ('320982', '4', '大丰市', '320900', '224100');
INSERT INTO `ot_area_world` VALUES ('320983', '4', '其它区', '320900', '');
INSERT INTO `ot_area_world` VALUES ('321000', '3', '扬州市', '320000', '225000');
INSERT INTO `ot_area_world` VALUES ('321002', '4', '广陵区', '321000', '225002');
INSERT INTO `ot_area_world` VALUES ('321003', '4', '邗江区', '321000', '225100');
INSERT INTO `ot_area_world` VALUES ('321011', '4', '维扬区', '321000', '225002');
INSERT INTO `ot_area_world` VALUES ('321023', '4', '宝应县', '321000', '225800');
INSERT INTO `ot_area_world` VALUES ('321081', '4', '仪征市', '321000', '211400');
INSERT INTO `ot_area_world` VALUES ('321084', '4', '高邮市', '321000', '225600');
INSERT INTO `ot_area_world` VALUES ('321088', '4', '江都市', '321000', '225200');
INSERT INTO `ot_area_world` VALUES ('321092', '4', '经济开发区', '321000', '');
INSERT INTO `ot_area_world` VALUES ('321093', '4', '其它区', '321000', '');
INSERT INTO `ot_area_world` VALUES ('321100', '3', '镇江市', '320000', '212000');
INSERT INTO `ot_area_world` VALUES ('321102', '4', '京口区', '321100', '212001');
INSERT INTO `ot_area_world` VALUES ('321111', '4', '润州区', '321100', '212004');
INSERT INTO `ot_area_world` VALUES ('321112', '4', '丹徒区', '321100', '212001');
INSERT INTO `ot_area_world` VALUES ('321181', '4', '丹阳市', '321100', '212300');
INSERT INTO `ot_area_world` VALUES ('321182', '4', '扬中市', '321100', '212200');
INSERT INTO `ot_area_world` VALUES ('321183', '4', '句容市', '321100', '212400');
INSERT INTO `ot_area_world` VALUES ('321184', '4', '其它区', '321100', '');
INSERT INTO `ot_area_world` VALUES ('321200', '3', '泰州市', '320000', '225300');
INSERT INTO `ot_area_world` VALUES ('321202', '4', '海陵区', '321200', '225300');
INSERT INTO `ot_area_world` VALUES ('321203', '4', '高港区', '321200', '225321');
INSERT INTO `ot_area_world` VALUES ('321281', '4', '兴化市', '321200', '225700');
INSERT INTO `ot_area_world` VALUES ('321282', '4', '靖江市', '321200', '214500');
INSERT INTO `ot_area_world` VALUES ('321283', '4', '泰兴市', '321200', '225400');
INSERT INTO `ot_area_world` VALUES ('321284', '4', '姜堰市', '321200', '225500');
INSERT INTO `ot_area_world` VALUES ('321285', '4', '其它区', '321200', '');
INSERT INTO `ot_area_world` VALUES ('321300', '3', '宿迁市', '320000', '223800');
INSERT INTO `ot_area_world` VALUES ('321302', '4', '宿城区', '321300', '223800');
INSERT INTO `ot_area_world` VALUES ('321311', '4', '宿豫区', '321300', '223800');
INSERT INTO `ot_area_world` VALUES ('321322', '4', '沭阳县', '321300', '223600');
INSERT INTO `ot_area_world` VALUES ('321323', '4', '泗阳县', '321300', '223700');
INSERT INTO `ot_area_world` VALUES ('321324', '4', '泗洪县', '321300', '223900');
INSERT INTO `ot_area_world` VALUES ('321325', '4', '其它区', '321300', '');
INSERT INTO `ot_area_world` VALUES ('330000', '2', '浙江省', '1', '');
INSERT INTO `ot_area_world` VALUES ('330100', '3', '杭州市', '330000', '310000');
INSERT INTO `ot_area_world` VALUES ('330102', '4', '上城区', '330100', '311500');
INSERT INTO `ot_area_world` VALUES ('330103', '4', '下城区', '330100', '310006');
INSERT INTO `ot_area_world` VALUES ('330104', '4', '江干区', '330100', '310002');
INSERT INTO `ot_area_world` VALUES ('330105', '4', '拱墅区', '330100', '310011');
INSERT INTO `ot_area_world` VALUES ('330106', '4', '西湖区', '330100', '310013');
INSERT INTO `ot_area_world` VALUES ('330108', '4', '滨江区', '330100', '310051');
INSERT INTO `ot_area_world` VALUES ('330109', '4', '萧山区', '330100', '311200');
INSERT INTO `ot_area_world` VALUES ('330110', '4', '余杭区', '330100', '311100');
INSERT INTO `ot_area_world` VALUES ('330122', '4', '桐庐县', '330100', '311500');
INSERT INTO `ot_area_world` VALUES ('330127', '4', '淳安县', '330100', '311700');
INSERT INTO `ot_area_world` VALUES ('330182', '4', '建德市', '330100', '311600');
INSERT INTO `ot_area_world` VALUES ('330183', '4', '富阳市', '330100', '311400');
INSERT INTO `ot_area_world` VALUES ('330185', '4', '临安市', '330100', '311300');
INSERT INTO `ot_area_world` VALUES ('330186', '4', '其它区', '330100', '');
INSERT INTO `ot_area_world` VALUES ('330200', '3', '宁波市', '330000', '315000');
INSERT INTO `ot_area_world` VALUES ('330203', '4', '海曙区', '330200', '315000');
INSERT INTO `ot_area_world` VALUES ('330204', '4', '江东区', '330200', '315040');
INSERT INTO `ot_area_world` VALUES ('330205', '4', '江北区', '330200', '315020');
INSERT INTO `ot_area_world` VALUES ('330206', '4', '北仑区', '330200', '315800');
INSERT INTO `ot_area_world` VALUES ('330211', '4', '镇海区', '330200', '315200');
INSERT INTO `ot_area_world` VALUES ('330212', '4', '鄞州区', '330200', '315100');
INSERT INTO `ot_area_world` VALUES ('330225', '4', '象山县', '330200', '315700');
INSERT INTO `ot_area_world` VALUES ('330226', '4', '宁海县', '330200', '315600');
INSERT INTO `ot_area_world` VALUES ('330281', '4', '余姚市', '330200', '315400');
INSERT INTO `ot_area_world` VALUES ('330282', '4', '慈溪市', '330200', '315300');
INSERT INTO `ot_area_world` VALUES ('330283', '4', '奉化市', '330200', '315500');
INSERT INTO `ot_area_world` VALUES ('330284', '4', '其它区', '330200', '');
INSERT INTO `ot_area_world` VALUES ('330300', '3', '温州市', '330000', '325000');
INSERT INTO `ot_area_world` VALUES ('330302', '4', '鹿城区', '330300', '325000');
INSERT INTO `ot_area_world` VALUES ('330303', '4', '龙湾区', '330300', '325024');
INSERT INTO `ot_area_world` VALUES ('330304', '4', '瓯海区', '330300', '325005');
INSERT INTO `ot_area_world` VALUES ('330322', '4', '洞头县', '330300', '325700');
INSERT INTO `ot_area_world` VALUES ('330324', '4', '永嘉县', '330300', '325100');
INSERT INTO `ot_area_world` VALUES ('330326', '4', '平阳县', '330300', '325400');
INSERT INTO `ot_area_world` VALUES ('330327', '4', '苍南县', '330300', '325800');
INSERT INTO `ot_area_world` VALUES ('330328', '4', '文成县', '330300', '325300');
INSERT INTO `ot_area_world` VALUES ('330329', '4', '泰顺县', '330300', '325500');
INSERT INTO `ot_area_world` VALUES ('330381', '4', '瑞安市', '330300', '325200');
INSERT INTO `ot_area_world` VALUES ('330382', '4', '乐清市', '330300', '325600');
INSERT INTO `ot_area_world` VALUES ('330383', '4', '其它区', '330300', '');
INSERT INTO `ot_area_world` VALUES ('330400', '3', '嘉兴市', '330000', '314000');
INSERT INTO `ot_area_world` VALUES ('330402', '4', '南湖区', '330400', '314000');
INSERT INTO `ot_area_world` VALUES ('330411', '4', '秀洲区', '330400', '314001');
INSERT INTO `ot_area_world` VALUES ('330421', '4', '嘉善县', '330400', '314100');
INSERT INTO `ot_area_world` VALUES ('330424', '4', '海盐县', '330400', '314300');
INSERT INTO `ot_area_world` VALUES ('330481', '4', '海宁市', '330400', '314400');
INSERT INTO `ot_area_world` VALUES ('330482', '4', '平湖市', '330400', '314200');
INSERT INTO `ot_area_world` VALUES ('330483', '4', '桐乡市', '330400', '314500');
INSERT INTO `ot_area_world` VALUES ('330484', '4', '其它区', '330400', '');
INSERT INTO `ot_area_world` VALUES ('330500', '3', '湖州市', '330000', '313000');
INSERT INTO `ot_area_world` VALUES ('330502', '4', '吴兴区', '330500', '313000');
INSERT INTO `ot_area_world` VALUES ('330503', '4', '南浔区', '330500', '313009');
INSERT INTO `ot_area_world` VALUES ('330521', '4', '德清县', '330500', '313200');
INSERT INTO `ot_area_world` VALUES ('330522', '4', '长兴县', '330500', '313100');
INSERT INTO `ot_area_world` VALUES ('330523', '4', '安吉县', '330500', '313300');
INSERT INTO `ot_area_world` VALUES ('330524', '4', '其它区', '330500', '');
INSERT INTO `ot_area_world` VALUES ('330600', '3', '绍兴市', '330000', '312000');
INSERT INTO `ot_area_world` VALUES ('330602', '4', '越城区', '330600', '312000');
INSERT INTO `ot_area_world` VALUES ('330621', '4', '绍兴县', '330600', '312000');
INSERT INTO `ot_area_world` VALUES ('330624', '4', '新昌县', '330600', '312500');
INSERT INTO `ot_area_world` VALUES ('330681', '4', '诸暨市', '330600', '311800');
INSERT INTO `ot_area_world` VALUES ('330682', '4', '上虞市', '330600', '312300');
INSERT INTO `ot_area_world` VALUES ('330683', '4', '嵊州市', '330600', '312400');
INSERT INTO `ot_area_world` VALUES ('330684', '4', '其它区', '330600', '');
INSERT INTO `ot_area_world` VALUES ('330700', '3', '金华市', '330000', '321000');
INSERT INTO `ot_area_world` VALUES ('330702', '4', '婺城区', '330700', '321051');
INSERT INTO `ot_area_world` VALUES ('330703', '4', '金东区', '330700', '321002');
INSERT INTO `ot_area_world` VALUES ('330723', '4', '武义县', '330700', '321200');
INSERT INTO `ot_area_world` VALUES ('330726', '4', '浦江县', '330700', '322200');
INSERT INTO `ot_area_world` VALUES ('330727', '4', '磐安县', '330700', '322300');
INSERT INTO `ot_area_world` VALUES ('330781', '4', '兰溪市', '330700', '321100');
INSERT INTO `ot_area_world` VALUES ('330782', '4', '义乌市', '330700', '322000');
INSERT INTO `ot_area_world` VALUES ('330783', '4', '东阳市', '330700', '322100');
INSERT INTO `ot_area_world` VALUES ('330784', '4', '永康市', '330700', '321300');
INSERT INTO `ot_area_world` VALUES ('330785', '4', '其它区', '330700', '');
INSERT INTO `ot_area_world` VALUES ('330800', '3', '衢州市', '330000', '324000');
INSERT INTO `ot_area_world` VALUES ('330802', '4', '柯城区', '330800', '324000');
INSERT INTO `ot_area_world` VALUES ('330803', '4', '衢江区', '330800', '324000');
INSERT INTO `ot_area_world` VALUES ('330822', '4', '常山县', '330800', '324200');
INSERT INTO `ot_area_world` VALUES ('330824', '4', '开化县', '330800', '324300');
INSERT INTO `ot_area_world` VALUES ('330825', '4', '龙游县', '330800', '324400');
INSERT INTO `ot_area_world` VALUES ('330881', '4', '江山市', '330800', '324100');
INSERT INTO `ot_area_world` VALUES ('330882', '4', '其它区', '330800', '');
INSERT INTO `ot_area_world` VALUES ('330900', '3', '舟山市', '330000', '316000');
INSERT INTO `ot_area_world` VALUES ('330902', '4', '定海区', '330900', '316000');
INSERT INTO `ot_area_world` VALUES ('330903', '4', '普陀区', '330900', '316100');
INSERT INTO `ot_area_world` VALUES ('330921', '4', '岱山县', '330900', '316200');
INSERT INTO `ot_area_world` VALUES ('330922', '4', '嵊泗县', '330900', '202400');
INSERT INTO `ot_area_world` VALUES ('330923', '4', '其它区', '330900', '');
INSERT INTO `ot_area_world` VALUES ('331000', '3', '台州市', '330000', '318000');
INSERT INTO `ot_area_world` VALUES ('331002', '4', '椒江区', '331000', '318000');
INSERT INTO `ot_area_world` VALUES ('331003', '4', '黄岩区', '331000', '318020');
INSERT INTO `ot_area_world` VALUES ('331004', '4', '路桥区', '331000', '318050');
INSERT INTO `ot_area_world` VALUES ('331021', '4', '玉环县', '331000', '317600');
INSERT INTO `ot_area_world` VALUES ('331022', '4', '三门县', '331000', '317100');
INSERT INTO `ot_area_world` VALUES ('331023', '4', '天台县', '331000', '317200');
INSERT INTO `ot_area_world` VALUES ('331024', '4', '仙居县', '331000', '317300');
INSERT INTO `ot_area_world` VALUES ('331081', '4', '温岭市', '331000', '317500');
INSERT INTO `ot_area_world` VALUES ('331082', '4', '临海市', '331000', '317000');
INSERT INTO `ot_area_world` VALUES ('331083', '4', '其它区', '331000', '');
INSERT INTO `ot_area_world` VALUES ('331100', '3', '丽水市', '330000', '323000');
INSERT INTO `ot_area_world` VALUES ('331102', '4', '莲都区', '331100', '323000');
INSERT INTO `ot_area_world` VALUES ('331121', '4', '青田县', '331100', '323900');
INSERT INTO `ot_area_world` VALUES ('331122', '4', '缙云县', '331100', '321400');
INSERT INTO `ot_area_world` VALUES ('331123', '4', '遂昌县', '331100', '323300');
INSERT INTO `ot_area_world` VALUES ('331124', '4', '松阳县', '331100', '323400');
INSERT INTO `ot_area_world` VALUES ('331125', '4', '云和县', '331100', '323600');
INSERT INTO `ot_area_world` VALUES ('331126', '4', '庆元县', '331100', '323800');
INSERT INTO `ot_area_world` VALUES ('331127', '4', '景宁畲族自治县', '331100', '323500');
INSERT INTO `ot_area_world` VALUES ('331181', '4', '龙泉市', '331100', '323700');
INSERT INTO `ot_area_world` VALUES ('331182', '4', '其它区', '331100', '');
INSERT INTO `ot_area_world` VALUES ('340000', '2', '安徽省', '1', '');
INSERT INTO `ot_area_world` VALUES ('340100', '3', '合肥市', '340000', '230000');
INSERT INTO `ot_area_world` VALUES ('340102', '4', '瑶海区', '340100', '230011');
INSERT INTO `ot_area_world` VALUES ('340103', '4', '庐阳区', '340100', '230001');
INSERT INTO `ot_area_world` VALUES ('340104', '4', '蜀山区', '340100', '230061');
INSERT INTO `ot_area_world` VALUES ('340111', '4', '包河区', '340100', '230041');
INSERT INTO `ot_area_world` VALUES ('340121', '4', '长丰县', '340100', '231100');
INSERT INTO `ot_area_world` VALUES ('340122', '4', '肥东县', '340100', '231600');
INSERT INTO `ot_area_world` VALUES ('340123', '4', '肥西县', '340100', '231200');
INSERT INTO `ot_area_world` VALUES ('340151', '4', '高新区', '340100', '');
INSERT INTO `ot_area_world` VALUES ('340191', '4', '中区', '340100', '');
INSERT INTO `ot_area_world` VALUES ('340192', '4', '其它区', '340100', '');
INSERT INTO `ot_area_world` VALUES ('340200', '3', '芜湖市', '340000', '241000');
INSERT INTO `ot_area_world` VALUES ('340202', '4', '镜湖区', '340200', '241000');
INSERT INTO `ot_area_world` VALUES ('340203', '4', '弋江区', '340200', '241000');
INSERT INTO `ot_area_world` VALUES ('340207', '4', '鸠江区', '340200', '241000');
INSERT INTO `ot_area_world` VALUES ('340208', '4', '三山区', '340200', '241000');
INSERT INTO `ot_area_world` VALUES ('340221', '4', '芜湖县', '340200', '241100');
INSERT INTO `ot_area_world` VALUES ('340222', '4', '繁昌县', '340200', '241200');
INSERT INTO `ot_area_world` VALUES ('340223', '4', '南陵县', '340200', '242400');
INSERT INTO `ot_area_world` VALUES ('340224', '4', '其它区', '340200', '');
INSERT INTO `ot_area_world` VALUES ('340300', '3', '蚌埠市', '340000', '233000');
INSERT INTO `ot_area_world` VALUES ('340302', '4', '龙子湖区', '340300', '233000');
INSERT INTO `ot_area_world` VALUES ('340303', '4', '蚌山区', '340300', '233000');
INSERT INTO `ot_area_world` VALUES ('340304', '4', '禹会区', '340300', '233010');
INSERT INTO `ot_area_world` VALUES ('340311', '4', '淮上区', '340300', '233002');
INSERT INTO `ot_area_world` VALUES ('340321', '4', '怀远县', '340300', '233400');
INSERT INTO `ot_area_world` VALUES ('340322', '4', '五河县', '340300', '233300');
INSERT INTO `ot_area_world` VALUES ('340323', '4', '固镇县', '340300', '233200');
INSERT INTO `ot_area_world` VALUES ('340324', '4', '其它区', '340300', '');
INSERT INTO `ot_area_world` VALUES ('340400', '3', '淮南市', '340000', '232000');
INSERT INTO `ot_area_world` VALUES ('340402', '4', '大通区', '340400', '232033');
INSERT INTO `ot_area_world` VALUES ('340403', '4', '田家庵区', '340400', '232000');
INSERT INTO `ot_area_world` VALUES ('340404', '4', '谢家集区', '340400', '232052');
INSERT INTO `ot_area_world` VALUES ('340405', '4', '八公山区', '340400', '232072');
INSERT INTO `ot_area_world` VALUES ('340406', '4', '潘集区', '340400', '232082');
INSERT INTO `ot_area_world` VALUES ('340421', '4', '凤台县', '340400', '232100');
INSERT INTO `ot_area_world` VALUES ('340422', '4', '其它区', '340400', '');
INSERT INTO `ot_area_world` VALUES ('340500', '3', '马鞍山市', '340000', '243000');
INSERT INTO `ot_area_world` VALUES ('340502', '4', '金家庄区', '340500', '243021');
INSERT INTO `ot_area_world` VALUES ('340503', '4', '花山区', '340500', '243000');
INSERT INTO `ot_area_world` VALUES ('340504', '4', '雨山区', '340500', '243071');
INSERT INTO `ot_area_world` VALUES ('340521', '4', '当涂县', '340500', '243100');
INSERT INTO `ot_area_world` VALUES ('340522', '4', '其它区', '340500', '');
INSERT INTO `ot_area_world` VALUES ('340600', '3', '淮北市', '340000', '235000');
INSERT INTO `ot_area_world` VALUES ('340602', '4', '杜集区', '340600', '235047');
INSERT INTO `ot_area_world` VALUES ('340603', '4', '相山区', '340600', '235000');
INSERT INTO `ot_area_world` VALUES ('340604', '4', '烈山区', '340600', '235025');
INSERT INTO `ot_area_world` VALUES ('340621', '4', '濉溪县', '340600', '235100');
INSERT INTO `ot_area_world` VALUES ('340622', '4', '其它区', '340600', '');
INSERT INTO `ot_area_world` VALUES ('340700', '3', '铜陵市', '340000', '244000');
INSERT INTO `ot_area_world` VALUES ('340702', '4', '铜官山区', '340700', '244000');
INSERT INTO `ot_area_world` VALUES ('340703', '4', '狮子山区', '340700', '244031');
INSERT INTO `ot_area_world` VALUES ('340711', '4', '郊区', '340700', '244000');
INSERT INTO `ot_area_world` VALUES ('340721', '4', '铜陵县', '340700', '244100');
INSERT INTO `ot_area_world` VALUES ('340722', '4', '其它区', '340700', '');
INSERT INTO `ot_area_world` VALUES ('340800', '3', '安庆市', '340000', '246000');
INSERT INTO `ot_area_world` VALUES ('340802', '4', '迎江区', '340800', '246003');
INSERT INTO `ot_area_world` VALUES ('340803', '4', '大观区', '340800', '246004');
INSERT INTO `ot_area_world` VALUES ('340811', '4', '宜秀区', '340800', '246003');
INSERT INTO `ot_area_world` VALUES ('340822', '4', '怀宁县', '340800', '246100');
INSERT INTO `ot_area_world` VALUES ('340823', '4', '枞阳县', '340800', '246700');
INSERT INTO `ot_area_world` VALUES ('340824', '4', '潜山县', '340800', '246300');
INSERT INTO `ot_area_world` VALUES ('340825', '4', '太湖县', '340800', '246400');
INSERT INTO `ot_area_world` VALUES ('340826', '4', '宿松县', '340800', '246500');
INSERT INTO `ot_area_world` VALUES ('340827', '4', '望江县', '340800', '246200');
INSERT INTO `ot_area_world` VALUES ('340828', '4', '岳西县', '340800', '246600');
INSERT INTO `ot_area_world` VALUES ('340881', '4', '桐城市', '340800', '231400');
INSERT INTO `ot_area_world` VALUES ('340882', '4', '其它区', '340800', '');
INSERT INTO `ot_area_world` VALUES ('341000', '3', '黄山市', '340000', '245000');
INSERT INTO `ot_area_world` VALUES ('341002', '4', '屯溪区', '341000', '245000');
INSERT INTO `ot_area_world` VALUES ('341003', '4', '黄山区', '341000', '242700');
INSERT INTO `ot_area_world` VALUES ('341004', '4', '徽州区', '341000', '245061');
INSERT INTO `ot_area_world` VALUES ('341021', '4', '歙县', '341000', '245200');
INSERT INTO `ot_area_world` VALUES ('341022', '4', '休宁县', '341000', '245400');
INSERT INTO `ot_area_world` VALUES ('341023', '4', '黟县', '341000', '245500');
INSERT INTO `ot_area_world` VALUES ('341024', '4', '祁门县', '341000', '245600');
INSERT INTO `ot_area_world` VALUES ('341025', '4', '其它区', '341000', '');
INSERT INTO `ot_area_world` VALUES ('341100', '3', '滁州市', '340000', '239000');
INSERT INTO `ot_area_world` VALUES ('341102', '4', '琅琊区', '341100', '239000');
INSERT INTO `ot_area_world` VALUES ('341103', '4', '南谯区', '341100', '239000');
INSERT INTO `ot_area_world` VALUES ('341122', '4', '来安县', '341100', '239200');
INSERT INTO `ot_area_world` VALUES ('341124', '4', '全椒县', '341100', '239500');
INSERT INTO `ot_area_world` VALUES ('341125', '4', '定远县', '341100', '233200');
INSERT INTO `ot_area_world` VALUES ('341126', '4', '凤阳县', '341100', '233100');
INSERT INTO `ot_area_world` VALUES ('341181', '4', '天长市', '341100', '239300');
INSERT INTO `ot_area_world` VALUES ('341182', '4', '明光市', '341100', '239400');
INSERT INTO `ot_area_world` VALUES ('341183', '4', '其它区', '341100', '');
INSERT INTO `ot_area_world` VALUES ('341200', '3', '阜阳市', '340000', '236000');
INSERT INTO `ot_area_world` VALUES ('341202', '4', '颍州区', '341200', '236001');
INSERT INTO `ot_area_world` VALUES ('341203', '4', '颍东区', '341200', '236058');
INSERT INTO `ot_area_world` VALUES ('341204', '4', '颍泉区', '341200', '236045');
INSERT INTO `ot_area_world` VALUES ('341221', '4', '临泉县', '341200', '236400');
INSERT INTO `ot_area_world` VALUES ('341222', '4', '太和县', '341200', '236600');
INSERT INTO `ot_area_world` VALUES ('341225', '4', '阜南县', '341200', '236300');
INSERT INTO `ot_area_world` VALUES ('341226', '4', '颍上县', '341200', '236200');
INSERT INTO `ot_area_world` VALUES ('341282', '4', '界首市', '341200', '236500');
INSERT INTO `ot_area_world` VALUES ('341283', '4', '其它区', '341200', '');
INSERT INTO `ot_area_world` VALUES ('341300', '3', '宿州市', '340000', '234000');
INSERT INTO `ot_area_world` VALUES ('341302', '4', '埇桥区', '341300', '234000');
INSERT INTO `ot_area_world` VALUES ('341321', '4', '砀山县', '341300', '235300');
INSERT INTO `ot_area_world` VALUES ('341322', '4', '萧县', '341300', '235200');
INSERT INTO `ot_area_world` VALUES ('341323', '4', '灵璧县', '341300', '234200');
INSERT INTO `ot_area_world` VALUES ('341324', '4', '泗县', '341300', '234300');
INSERT INTO `ot_area_world` VALUES ('341325', '4', '其它区', '341300', '');
INSERT INTO `ot_area_world` VALUES ('341400', '4', '巢湖市', '340100', '238000');
INSERT INTO `ot_area_world` VALUES ('341402', '4', '居巢区', '340100', '238000');
INSERT INTO `ot_area_world` VALUES ('341421', '4', '庐江县', '340100', '231500');
INSERT INTO `ot_area_world` VALUES ('341422', '4', '无为县', '340200', '238300');
INSERT INTO `ot_area_world` VALUES ('341423', '4', '含山县', '340500', '238100');
INSERT INTO `ot_area_world` VALUES ('341424', '4', '和县', '340500', '238200');
INSERT INTO `ot_area_world` VALUES ('341500', '3', '六安市', '340000', '237000');
INSERT INTO `ot_area_world` VALUES ('341502', '4', '金安区', '341500', '237005');
INSERT INTO `ot_area_world` VALUES ('341503', '4', '裕安区', '341500', '237010');
INSERT INTO `ot_area_world` VALUES ('341521', '4', '寿县', '341500', '232200');
INSERT INTO `ot_area_world` VALUES ('341522', '4', '霍邱县', '341500', '237400');
INSERT INTO `ot_area_world` VALUES ('341523', '4', '舒城县', '341500', '231300');
INSERT INTO `ot_area_world` VALUES ('341524', '4', '金寨县', '341500', '237300');
INSERT INTO `ot_area_world` VALUES ('341525', '4', '霍山县', '341500', '237200');
INSERT INTO `ot_area_world` VALUES ('341526', '4', '其它区', '341500', '');
INSERT INTO `ot_area_world` VALUES ('341600', '3', '亳州市', '340000', '236800');
INSERT INTO `ot_area_world` VALUES ('341602', '4', '谯城区', '341600', '236800');
INSERT INTO `ot_area_world` VALUES ('341621', '4', '涡阳县', '341600', '233600');
INSERT INTO `ot_area_world` VALUES ('341622', '4', '蒙城县', '341600', '233500');
INSERT INTO `ot_area_world` VALUES ('341623', '4', '利辛县', '341600', '236700');
INSERT INTO `ot_area_world` VALUES ('341624', '4', '其它区', '341600', '');
INSERT INTO `ot_area_world` VALUES ('341700', '3', '池州市', '340000', '247000');
INSERT INTO `ot_area_world` VALUES ('341702', '4', '贵池区', '341700', '247100');
INSERT INTO `ot_area_world` VALUES ('341721', '4', '东至县', '341700', '247200');
INSERT INTO `ot_area_world` VALUES ('341722', '4', '石台县', '341700', '245100');
INSERT INTO `ot_area_world` VALUES ('341723', '4', '青阳县', '341700', '242800');
INSERT INTO `ot_area_world` VALUES ('341724', '4', '其它区', '341700', '');
INSERT INTO `ot_area_world` VALUES ('341800', '3', '宣城市', '340000', '242000');
INSERT INTO `ot_area_world` VALUES ('341802', '4', '宣州区', '341800', '242000');
INSERT INTO `ot_area_world` VALUES ('341821', '4', '郎溪县', '341800', '242100');
INSERT INTO `ot_area_world` VALUES ('341822', '4', '广德县', '341800', '242200');
INSERT INTO `ot_area_world` VALUES ('341823', '4', '泾县', '341800', '242500');
INSERT INTO `ot_area_world` VALUES ('341824', '4', '绩溪县', '341800', '245300');
INSERT INTO `ot_area_world` VALUES ('341825', '4', '旌德县', '341800', '242600');
INSERT INTO `ot_area_world` VALUES ('341881', '4', '宁国市', '341800', '242300');
INSERT INTO `ot_area_world` VALUES ('341882', '4', '其它区', '341800', '');
INSERT INTO `ot_area_world` VALUES ('350000', '2', '福建省', '1', '');
INSERT INTO `ot_area_world` VALUES ('350100', '3', '福州市', '350000', '350000');
INSERT INTO `ot_area_world` VALUES ('350102', '4', '鼓楼区', '350100', '350001');
INSERT INTO `ot_area_world` VALUES ('350103', '4', '台江区', '350100', '350004');
INSERT INTO `ot_area_world` VALUES ('350104', '4', '仓山区', '350100', '350007');
INSERT INTO `ot_area_world` VALUES ('350105', '4', '马尾区', '350100', '350015');
INSERT INTO `ot_area_world` VALUES ('350111', '4', '晋安区', '350100', '350011');
INSERT INTO `ot_area_world` VALUES ('350121', '4', '闽侯县', '350100', '350100');
INSERT INTO `ot_area_world` VALUES ('350122', '4', '连江县', '350100', '350500');
INSERT INTO `ot_area_world` VALUES ('350123', '4', '罗源县', '350100', '350600');
INSERT INTO `ot_area_world` VALUES ('350124', '4', '闽清县', '350100', '350800');
INSERT INTO `ot_area_world` VALUES ('350125', '4', '永泰县', '350100', '350700');
INSERT INTO `ot_area_world` VALUES ('350128', '4', '平潭县', '350100', '350400');
INSERT INTO `ot_area_world` VALUES ('350181', '4', '福清市', '350100', '350300');
INSERT INTO `ot_area_world` VALUES ('350182', '4', '长乐市', '350100', '350200');
INSERT INTO `ot_area_world` VALUES ('350183', '4', '其它区', '350100', '');
INSERT INTO `ot_area_world` VALUES ('350200', '3', '厦门市', '350000', '361000');
INSERT INTO `ot_area_world` VALUES ('350203', '4', '思明区', '350200', '361001');
INSERT INTO `ot_area_world` VALUES ('350205', '4', '海沧区', '350200', '361026');
INSERT INTO `ot_area_world` VALUES ('350206', '4', '湖里区', '350200', '361006');
INSERT INTO `ot_area_world` VALUES ('350211', '4', '集美区', '350200', '361021');
INSERT INTO `ot_area_world` VALUES ('350212', '4', '同安区', '350200', '361100');
INSERT INTO `ot_area_world` VALUES ('350213', '4', '翔安区', '350200', '361101');
INSERT INTO `ot_area_world` VALUES ('350214', '4', '其它区', '350200', '');
INSERT INTO `ot_area_world` VALUES ('350300', '3', '莆田市', '350000', '351100');
INSERT INTO `ot_area_world` VALUES ('350302', '4', '城厢区', '350300', '351100');
INSERT INTO `ot_area_world` VALUES ('350303', '4', '涵江区', '350300', '351111');
INSERT INTO `ot_area_world` VALUES ('350304', '4', '荔城区', '350300', '351100');
INSERT INTO `ot_area_world` VALUES ('350305', '4', '秀屿区', '350300', '351152');
INSERT INTO `ot_area_world` VALUES ('350322', '4', '仙游县', '350300', '351200');
INSERT INTO `ot_area_world` VALUES ('350323', '4', '其它区', '350300', '');
INSERT INTO `ot_area_world` VALUES ('350400', '3', '三明市', '350000', '365000');
INSERT INTO `ot_area_world` VALUES ('350402', '4', '梅列区', '350400', '365000');
INSERT INTO `ot_area_world` VALUES ('350403', '4', '三元区', '350400', '365001');
INSERT INTO `ot_area_world` VALUES ('350421', '4', '明溪县', '350400', '365200');
INSERT INTO `ot_area_world` VALUES ('350423', '4', '清流县', '350400', '365300');
INSERT INTO `ot_area_world` VALUES ('350424', '4', '宁化县', '350400', '365400');
INSERT INTO `ot_area_world` VALUES ('350425', '4', '大田县', '350400', '366100');
INSERT INTO `ot_area_world` VALUES ('350426', '4', '尤溪县', '350400', '365100');
INSERT INTO `ot_area_world` VALUES ('350427', '4', '沙县', '350400', '365500');
INSERT INTO `ot_area_world` VALUES ('350428', '4', '将乐县', '350400', '353300');
INSERT INTO `ot_area_world` VALUES ('350429', '4', '泰宁县', '350400', '354400');
INSERT INTO `ot_area_world` VALUES ('350430', '4', '建宁县', '350400', '354500');
INSERT INTO `ot_area_world` VALUES ('350481', '4', '永安市', '350400', '366000');
INSERT INTO `ot_area_world` VALUES ('350482', '4', '其它区', '350400', '');
INSERT INTO `ot_area_world` VALUES ('350500', '3', '泉州市', '350000', '362000');
INSERT INTO `ot_area_world` VALUES ('350502', '4', '鲤城区', '350500', '362000');
INSERT INTO `ot_area_world` VALUES ('350503', '4', '丰泽区', '350500', '362000');
INSERT INTO `ot_area_world` VALUES ('350504', '4', '洛江区', '350500', '362011');
INSERT INTO `ot_area_world` VALUES ('350505', '4', '泉港区', '350500', '362801');
INSERT INTO `ot_area_world` VALUES ('350521', '4', '惠安县', '350500', '362100');
INSERT INTO `ot_area_world` VALUES ('350524', '4', '安溪县', '350500', '362400');
INSERT INTO `ot_area_world` VALUES ('350525', '4', '永春县', '350500', '362600');
INSERT INTO `ot_area_world` VALUES ('350526', '4', '德化县', '350500', '362500');
INSERT INTO `ot_area_world` VALUES ('350527', '4', '金门县', '350500', '362000');
INSERT INTO `ot_area_world` VALUES ('350581', '4', '石狮市', '350500', '362700');
INSERT INTO `ot_area_world` VALUES ('350582', '4', '晋江市', '350500', '362200');
INSERT INTO `ot_area_world` VALUES ('350583', '4', '南安市', '350500', '362300');
INSERT INTO `ot_area_world` VALUES ('350584', '4', '其它区', '350500', '');
INSERT INTO `ot_area_world` VALUES ('350600', '3', '漳州市', '350000', '363000');
INSERT INTO `ot_area_world` VALUES ('350602', '4', '芗城区', '350600', '363000');
INSERT INTO `ot_area_world` VALUES ('350603', '4', '龙文区', '350600', '363005');
INSERT INTO `ot_area_world` VALUES ('350622', '4', '云霄县', '350600', '363300');
INSERT INTO `ot_area_world` VALUES ('350623', '4', '漳浦县', '350600', '363200');
INSERT INTO `ot_area_world` VALUES ('350624', '4', '诏安县', '350600', '363500');
INSERT INTO `ot_area_world` VALUES ('350625', '4', '长泰县', '350600', '363900');
INSERT INTO `ot_area_world` VALUES ('350626', '4', '东山县', '350600', '363400');
INSERT INTO `ot_area_world` VALUES ('350627', '4', '南靖县', '350600', '363600');
INSERT INTO `ot_area_world` VALUES ('350628', '4', '平和县', '350600', '363700');
INSERT INTO `ot_area_world` VALUES ('350629', '4', '华安县', '350600', '363800');
INSERT INTO `ot_area_world` VALUES ('350681', '4', '龙海市', '350600', '363100');
INSERT INTO `ot_area_world` VALUES ('350682', '4', '其它区', '350600', '');
INSERT INTO `ot_area_world` VALUES ('350700', '3', '南平市', '350000', '353000');
INSERT INTO `ot_area_world` VALUES ('350702', '4', '延平区', '350700', '353000');
INSERT INTO `ot_area_world` VALUES ('350721', '4', '顺昌县', '350700', '353200');
INSERT INTO `ot_area_world` VALUES ('350722', '4', '浦城县', '350700', '353400');
INSERT INTO `ot_area_world` VALUES ('350723', '4', '光泽县', '350700', '354100');
INSERT INTO `ot_area_world` VALUES ('350724', '4', '松溪县', '350700', '353500');
INSERT INTO `ot_area_world` VALUES ('350725', '4', '政和县', '350700', '353600');
INSERT INTO `ot_area_world` VALUES ('350781', '4', '邵武市', '350700', '354000');
INSERT INTO `ot_area_world` VALUES ('350782', '4', '武夷山市', '350700', '354300');
INSERT INTO `ot_area_world` VALUES ('350783', '4', '建瓯市', '350700', '353100');
INSERT INTO `ot_area_world` VALUES ('350784', '4', '建阳市', '350700', '354200');
INSERT INTO `ot_area_world` VALUES ('350785', '4', '其它区', '350700', '');
INSERT INTO `ot_area_world` VALUES ('350800', '3', '龙岩市', '350000', '364000');
INSERT INTO `ot_area_world` VALUES ('350802', '4', '新罗区', '350800', '364000');
INSERT INTO `ot_area_world` VALUES ('350821', '4', '长汀县', '350800', '366300');
INSERT INTO `ot_area_world` VALUES ('350822', '4', '永定县', '350800', '364100');
INSERT INTO `ot_area_world` VALUES ('350823', '4', '上杭县', '350800', '364200');
INSERT INTO `ot_area_world` VALUES ('350824', '4', '武平县', '350800', '364300');
INSERT INTO `ot_area_world` VALUES ('350825', '4', '连城县', '350800', '366200');
INSERT INTO `ot_area_world` VALUES ('350881', '4', '漳平市', '350800', '364400');
INSERT INTO `ot_area_world` VALUES ('350882', '4', '其它区', '350800', '');
INSERT INTO `ot_area_world` VALUES ('350900', '3', '宁德市', '350000', '352100');
INSERT INTO `ot_area_world` VALUES ('350902', '4', '蕉城区', '350900', '352100');
INSERT INTO `ot_area_world` VALUES ('350921', '4', '霞浦县', '350900', '355100');
INSERT INTO `ot_area_world` VALUES ('350922', '4', '古田县', '350900', '352200');
INSERT INTO `ot_area_world` VALUES ('350923', '4', '屏南县', '350900', '352300');
INSERT INTO `ot_area_world` VALUES ('350924', '4', '寿宁县', '350900', '355500');
INSERT INTO `ot_area_world` VALUES ('350925', '4', '周宁县', '350900', '355400');
INSERT INTO `ot_area_world` VALUES ('350926', '4', '柘荣县', '350900', '355300');
INSERT INTO `ot_area_world` VALUES ('350981', '4', '福安市', '350900', '355000');
INSERT INTO `ot_area_world` VALUES ('350982', '4', '福鼎市', '350900', '355200');
INSERT INTO `ot_area_world` VALUES ('350983', '4', '其它区', '350900', '');
INSERT INTO `ot_area_world` VALUES ('360000', '2', '江西省', '1', '');
INSERT INTO `ot_area_world` VALUES ('360100', '3', '南昌市', '360000', '330000');
INSERT INTO `ot_area_world` VALUES ('360102', '4', '东湖区', '360100', '330006');
INSERT INTO `ot_area_world` VALUES ('360103', '4', '西湖区', '360100', '330009');
INSERT INTO `ot_area_world` VALUES ('360104', '4', '青云谱区', '360100', '330001');
INSERT INTO `ot_area_world` VALUES ('360105', '4', '湾里区', '360100', '330004');
INSERT INTO `ot_area_world` VALUES ('360111', '4', '青山湖区', '360100', '330006');
INSERT INTO `ot_area_world` VALUES ('360121', '4', '南昌县', '360100', '330200');
INSERT INTO `ot_area_world` VALUES ('360122', '4', '新建县', '360100', '330100');
INSERT INTO `ot_area_world` VALUES ('360123', '4', '安义县', '360100', '330500');
INSERT INTO `ot_area_world` VALUES ('360124', '4', '进贤县', '360100', '331700');
INSERT INTO `ot_area_world` VALUES ('360125', '4', '红谷滩新区', '360100', '');
INSERT INTO `ot_area_world` VALUES ('360126', '4', '经济技术开发区', '360100', '');
INSERT INTO `ot_area_world` VALUES ('360127', '4', '昌北区', '360100', '');
INSERT INTO `ot_area_world` VALUES ('360128', '4', '其它区', '360100', '');
INSERT INTO `ot_area_world` VALUES ('360200', '3', '景德镇市', '360000', '333000');
INSERT INTO `ot_area_world` VALUES ('360202', '4', '昌江区', '360200', '333000');
INSERT INTO `ot_area_world` VALUES ('360203', '4', '珠山区', '360200', '333000');
INSERT INTO `ot_area_world` VALUES ('360222', '4', '浮梁县', '360200', '333400');
INSERT INTO `ot_area_world` VALUES ('360281', '4', '乐平市', '360200', '333300');
INSERT INTO `ot_area_world` VALUES ('360282', '4', '其它区', '360200', '');
INSERT INTO `ot_area_world` VALUES ('360300', '3', '萍乡市', '360000', '337000');
INSERT INTO `ot_area_world` VALUES ('360302', '4', '安源区', '360300', '337000');
INSERT INTO `ot_area_world` VALUES ('360313', '4', '湘东区', '360300', '337032');
INSERT INTO `ot_area_world` VALUES ('360321', '4', '莲花县', '360300', '337100');
INSERT INTO `ot_area_world` VALUES ('360322', '4', '上栗县', '360300', '337009');
INSERT INTO `ot_area_world` VALUES ('360323', '4', '芦溪县', '360300', '337200');
INSERT INTO `ot_area_world` VALUES ('360324', '4', '其它区', '360300', '');
INSERT INTO `ot_area_world` VALUES ('360400', '3', '九江市', '360000', '332000');
INSERT INTO `ot_area_world` VALUES ('360402', '4', '庐山区', '360400', '332005');
INSERT INTO `ot_area_world` VALUES ('360403', '4', '浔阳区', '360400', '332000');
INSERT INTO `ot_area_world` VALUES ('360421', '4', '九江县', '360400', '332100');
INSERT INTO `ot_area_world` VALUES ('360423', '4', '武宁县', '360400', '332300');
INSERT INTO `ot_area_world` VALUES ('360424', '4', '修水县', '360400', '332400');
INSERT INTO `ot_area_world` VALUES ('360425', '4', '永修县', '360400', '330300');
INSERT INTO `ot_area_world` VALUES ('360426', '4', '德安县', '360400', '330400');
INSERT INTO `ot_area_world` VALUES ('360427', '4', '星子县', '360400', '332800');
INSERT INTO `ot_area_world` VALUES ('360428', '4', '都昌县', '360400', '332600');
INSERT INTO `ot_area_world` VALUES ('360429', '4', '湖口县', '360400', '332500');
INSERT INTO `ot_area_world` VALUES ('360430', '4', '彭泽县', '360400', '332700');
INSERT INTO `ot_area_world` VALUES ('360481', '4', '瑞昌市', '360400', '332200');
INSERT INTO `ot_area_world` VALUES ('360482', '4', '其它区', '360400', '');
INSERT INTO `ot_area_world` VALUES ('360500', '3', '新余市', '360000', '338000');
INSERT INTO `ot_area_world` VALUES ('360502', '4', '渝水区', '360500', '338025');
INSERT INTO `ot_area_world` VALUES ('360521', '4', '分宜县', '360500', '336600');
INSERT INTO `ot_area_world` VALUES ('360522', '4', '其它区', '360500', '');
INSERT INTO `ot_area_world` VALUES ('360600', '3', '鹰潭市', '360000', '335000');
INSERT INTO `ot_area_world` VALUES ('360602', '4', '月湖区', '360600', '335000');
INSERT INTO `ot_area_world` VALUES ('360622', '4', '余江县', '360600', '335200');
INSERT INTO `ot_area_world` VALUES ('360681', '4', '贵溪市', '360600', '335400');
INSERT INTO `ot_area_world` VALUES ('360682', '4', '其它区', '360600', '');
INSERT INTO `ot_area_world` VALUES ('360700', '3', '赣州市', '360000', '341000');
INSERT INTO `ot_area_world` VALUES ('360702', '4', '章贡区', '360700', '');
INSERT INTO `ot_area_world` VALUES ('360721', '4', '赣县', '360700', '341100');
INSERT INTO `ot_area_world` VALUES ('360722', '4', '信丰县', '360700', '341600');
INSERT INTO `ot_area_world` VALUES ('360723', '4', '大余县', '360700', '341500');
INSERT INTO `ot_area_world` VALUES ('360724', '4', '上犹县', '360700', '341200');
INSERT INTO `ot_area_world` VALUES ('360725', '4', '崇义县', '360700', '341300');
INSERT INTO `ot_area_world` VALUES ('360726', '4', '安远县', '360700', '342100');
INSERT INTO `ot_area_world` VALUES ('360727', '4', '龙南县', '360700', '341700');
INSERT INTO `ot_area_world` VALUES ('360728', '4', '定南县', '360700', '341900');
INSERT INTO `ot_area_world` VALUES ('360729', '4', '全南县', '360700', '341800');
INSERT INTO `ot_area_world` VALUES ('360730', '4', '宁都县', '360700', '342800');
INSERT INTO `ot_area_world` VALUES ('360731', '4', '于都县', '360700', '342300');
INSERT INTO `ot_area_world` VALUES ('360732', '4', '兴国县', '360700', '342400');
INSERT INTO `ot_area_world` VALUES ('360733', '4', '会昌县', '360700', '342600');
INSERT INTO `ot_area_world` VALUES ('360734', '4', '寻乌县', '360700', '342200');
INSERT INTO `ot_area_world` VALUES ('360735', '4', '石城县', '360700', '342700');
INSERT INTO `ot_area_world` VALUES ('360751', '4', '黄金区', '360700', '');
INSERT INTO `ot_area_world` VALUES ('360781', '4', '瑞金市', '360700', '342500');
INSERT INTO `ot_area_world` VALUES ('360782', '4', '南康市', '360700', '341400');
INSERT INTO `ot_area_world` VALUES ('360783', '4', '其它区', '360700', '');
INSERT INTO `ot_area_world` VALUES ('360800', '3', '吉安市', '360000', '343000');
INSERT INTO `ot_area_world` VALUES ('360802', '4', '吉州区', '360800', '343000');
INSERT INTO `ot_area_world` VALUES ('360803', '4', '青原区', '360800', '343009');
INSERT INTO `ot_area_world` VALUES ('360821', '4', '吉安县', '360800', '343100');
INSERT INTO `ot_area_world` VALUES ('360822', '4', '吉水县', '360800', '331600');
INSERT INTO `ot_area_world` VALUES ('360823', '4', '峡江县', '360800', '331400');
INSERT INTO `ot_area_world` VALUES ('360824', '4', '新干县', '360800', '331300');
INSERT INTO `ot_area_world` VALUES ('360825', '4', '永丰县', '360800', '331500');
INSERT INTO `ot_area_world` VALUES ('360826', '4', '泰和县', '360800', '343700');
INSERT INTO `ot_area_world` VALUES ('360827', '4', '遂川县', '360800', '343900');
INSERT INTO `ot_area_world` VALUES ('360828', '4', '万安县', '360800', '343800');
INSERT INTO `ot_area_world` VALUES ('360829', '4', '安福县', '360800', '343200');
INSERT INTO `ot_area_world` VALUES ('360830', '4', '永新县', '360800', '343400');
INSERT INTO `ot_area_world` VALUES ('360881', '4', '井冈山市', '360800', '343600');
INSERT INTO `ot_area_world` VALUES ('360882', '4', '其它区', '360800', '');
INSERT INTO `ot_area_world` VALUES ('360900', '3', '宜春市', '360000', '336000');
INSERT INTO `ot_area_world` VALUES ('360902', '4', '袁州区', '360900', '336000');
INSERT INTO `ot_area_world` VALUES ('360921', '4', '奉新县', '360900', '330700');
INSERT INTO `ot_area_world` VALUES ('360922', '4', '万载县', '360900', '336100');
INSERT INTO `ot_area_world` VALUES ('360923', '4', '上高县', '360900', '336400');
INSERT INTO `ot_area_world` VALUES ('360924', '4', '宜丰县', '360900', '336300');
INSERT INTO `ot_area_world` VALUES ('360925', '4', '靖安县', '360900', '330600');
INSERT INTO `ot_area_world` VALUES ('360926', '4', '铜鼓县', '360900', '336200');
INSERT INTO `ot_area_world` VALUES ('360981', '4', '丰城市', '360900', '331100');
INSERT INTO `ot_area_world` VALUES ('360982', '4', '樟树市', '360900', '331200');
INSERT INTO `ot_area_world` VALUES ('360983', '4', '高安市', '360900', '330800');
INSERT INTO `ot_area_world` VALUES ('360984', '4', '其它区', '360900', '');
INSERT INTO `ot_area_world` VALUES ('361000', '3', '抚州市', '360000', '344000');
INSERT INTO `ot_area_world` VALUES ('361002', '4', '临川区', '361000', '344100');
INSERT INTO `ot_area_world` VALUES ('361021', '4', '南城县', '361000', '344700');
INSERT INTO `ot_area_world` VALUES ('361022', '4', '黎川县', '361000', '344600');
INSERT INTO `ot_area_world` VALUES ('361023', '4', '南丰县', '361000', '344500');
INSERT INTO `ot_area_world` VALUES ('361024', '4', '崇仁县', '361000', '344200');
INSERT INTO `ot_area_world` VALUES ('361025', '4', '乐安县', '361000', '344300');
INSERT INTO `ot_area_world` VALUES ('361026', '4', '宜黄县', '361000', '344400');
INSERT INTO `ot_area_world` VALUES ('361027', '4', '金溪县', '361000', '344800');
INSERT INTO `ot_area_world` VALUES ('361028', '4', '资溪县', '361000', '335300');
INSERT INTO `ot_area_world` VALUES ('361029', '4', '东乡县', '361000', '331800');
INSERT INTO `ot_area_world` VALUES ('361030', '4', '广昌县', '361000', '344900');
INSERT INTO `ot_area_world` VALUES ('361031', '4', '其它区', '361000', '');
INSERT INTO `ot_area_world` VALUES ('361100', '3', '上饶市', '360000', '334000');
INSERT INTO `ot_area_world` VALUES ('361102', '4', '信州区', '361100', '334000');
INSERT INTO `ot_area_world` VALUES ('361121', '4', '上饶县', '361100', '334100');
INSERT INTO `ot_area_world` VALUES ('361122', '4', '广丰县', '361100', '334600');
INSERT INTO `ot_area_world` VALUES ('361123', '4', '玉山县', '361100', '334700');
INSERT INTO `ot_area_world` VALUES ('361124', '4', '铅山县', '361100', '334500');
INSERT INTO `ot_area_world` VALUES ('361125', '4', '横峰县', '361100', '334300');
INSERT INTO `ot_area_world` VALUES ('361126', '4', '弋阳县', '361100', '334400');
INSERT INTO `ot_area_world` VALUES ('361127', '4', '余干县', '361100', '335100');
INSERT INTO `ot_area_world` VALUES ('361128', '4', '鄱阳县', '361100', '333100');
INSERT INTO `ot_area_world` VALUES ('361129', '4', '万年县', '361100', '335500');
INSERT INTO `ot_area_world` VALUES ('361130', '4', '婺源县', '361100', '333200');
INSERT INTO `ot_area_world` VALUES ('361181', '4', '德兴市', '361100', '334200');
INSERT INTO `ot_area_world` VALUES ('361182', '4', '其它区', '361100', '');
INSERT INTO `ot_area_world` VALUES ('370000', '2', '山东省', '1', '');
INSERT INTO `ot_area_world` VALUES ('370100', '3', '济南市', '370000', '250000');
INSERT INTO `ot_area_world` VALUES ('370102', '4', '历下区', '370100', '250013');
INSERT INTO `ot_area_world` VALUES ('370103', '4', '市中区', '370100', '250002');
INSERT INTO `ot_area_world` VALUES ('370104', '4', '槐荫区', '370100', '250021');
INSERT INTO `ot_area_world` VALUES ('370105', '4', '天桥区', '370100', '250031');
INSERT INTO `ot_area_world` VALUES ('370112', '4', '历城区', '370100', '250100');
INSERT INTO `ot_area_world` VALUES ('370113', '4', '长清区', '370100', '250300');
INSERT INTO `ot_area_world` VALUES ('370124', '4', '平阴县', '370100', '250400');
INSERT INTO `ot_area_world` VALUES ('370125', '4', '济阳县', '370100', '251400');
INSERT INTO `ot_area_world` VALUES ('370126', '4', '商河县', '370100', '251600');
INSERT INTO `ot_area_world` VALUES ('370181', '4', '章丘市', '370100', '250200');
INSERT INTO `ot_area_world` VALUES ('370182', '4', '其它区', '370100', '');
INSERT INTO `ot_area_world` VALUES ('370200', '3', '青岛市', '370000', '266000');
INSERT INTO `ot_area_world` VALUES ('370202', '4', '市南区', '370200', '266001');
INSERT INTO `ot_area_world` VALUES ('370203', '4', '市北区', '370200', '266011');
INSERT INTO `ot_area_world` VALUES ('370205', '4', '四方区', '370200', '266031');
INSERT INTO `ot_area_world` VALUES ('370211', '4', '黄岛区', '370200', '266500');
INSERT INTO `ot_area_world` VALUES ('370212', '4', '崂山区', '370200', '266100');
INSERT INTO `ot_area_world` VALUES ('370213', '4', '李沧区', '370200', '266100');
INSERT INTO `ot_area_world` VALUES ('370214', '4', '城阳区', '370200', '266041');
INSERT INTO `ot_area_world` VALUES ('370251', '4', '开发区', '370200', '');
INSERT INTO `ot_area_world` VALUES ('370281', '4', '胶州市', '370200', '266300');
INSERT INTO `ot_area_world` VALUES ('370282', '4', '即墨市', '370200', '266200');
INSERT INTO `ot_area_world` VALUES ('370283', '4', '平度市', '370200', '266700');
INSERT INTO `ot_area_world` VALUES ('370284', '4', '胶南市', '370200', '266400');
INSERT INTO `ot_area_world` VALUES ('370285', '4', '莱西市', '370200', '266600');
INSERT INTO `ot_area_world` VALUES ('370286', '4', '其它区', '370200', '');
INSERT INTO `ot_area_world` VALUES ('370300', '3', '淄博市', '370000', '255000');
INSERT INTO `ot_area_world` VALUES ('370302', '4', '淄川区', '370300', '255100');
INSERT INTO `ot_area_world` VALUES ('370303', '4', '张店区', '370300', '255022');
INSERT INTO `ot_area_world` VALUES ('370304', '4', '博山区', '370300', '255200');
INSERT INTO `ot_area_world` VALUES ('370305', '4', '临淄区', '370300', '255400');
INSERT INTO `ot_area_world` VALUES ('370306', '4', '周村区', '370300', '255300');
INSERT INTO `ot_area_world` VALUES ('370321', '4', '桓台县', '370300', '256400');
INSERT INTO `ot_area_world` VALUES ('370322', '4', '高青县', '370300', '256300');
INSERT INTO `ot_area_world` VALUES ('370323', '4', '沂源县', '370300', '256100');
INSERT INTO `ot_area_world` VALUES ('370324', '4', '其它区', '370300', '');
INSERT INTO `ot_area_world` VALUES ('370400', '3', '枣庄市', '370000', '277100');
INSERT INTO `ot_area_world` VALUES ('370402', '4', '市中区', '370400', '277101');
INSERT INTO `ot_area_world` VALUES ('370403', '4', '薛城区', '370400', '277000');
INSERT INTO `ot_area_world` VALUES ('370404', '4', '峄城区', '370400', '277300');
INSERT INTO `ot_area_world` VALUES ('370405', '4', '台儿庄区', '370400', '277400');
INSERT INTO `ot_area_world` VALUES ('370406', '4', '山亭区', '370400', '277200');
INSERT INTO `ot_area_world` VALUES ('370481', '4', '滕州市', '370400', '277500');
INSERT INTO `ot_area_world` VALUES ('370482', '4', '其它区', '370400', '');
INSERT INTO `ot_area_world` VALUES ('370500', '3', '东营市', '370000', '257000');
INSERT INTO `ot_area_world` VALUES ('370502', '4', '东营区', '370500', '257029');
INSERT INTO `ot_area_world` VALUES ('370503', '4', '河口区', '370500', '257200');
INSERT INTO `ot_area_world` VALUES ('370521', '4', '垦利县', '370500', '257500');
INSERT INTO `ot_area_world` VALUES ('370522', '4', '利津县', '370500', '257400');
INSERT INTO `ot_area_world` VALUES ('370523', '4', '广饶县', '370500', '257300');
INSERT INTO `ot_area_world` VALUES ('370589', '4', '西城区', '370500', '');
INSERT INTO `ot_area_world` VALUES ('370590', '4', '东城区', '370500', '');
INSERT INTO `ot_area_world` VALUES ('370591', '4', '其它区', '370500', '');
INSERT INTO `ot_area_world` VALUES ('370600', '3', '烟台市', '370000', '264000');
INSERT INTO `ot_area_world` VALUES ('370602', '4', '芝罘区', '370600', '264001');
INSERT INTO `ot_area_world` VALUES ('370611', '4', '福山区', '370600', '265500');
INSERT INTO `ot_area_world` VALUES ('370612', '4', '牟平区', '370600', '264100');
INSERT INTO `ot_area_world` VALUES ('370613', '4', '莱山区', '370600', '264600');
INSERT INTO `ot_area_world` VALUES ('370634', '4', '长岛县', '370600', '265800');
INSERT INTO `ot_area_world` VALUES ('370681', '4', '龙口市', '370600', '265700');
INSERT INTO `ot_area_world` VALUES ('370682', '4', '莱阳市', '370600', '265200');
INSERT INTO `ot_area_world` VALUES ('370683', '4', '莱州市', '370600', '261400');
INSERT INTO `ot_area_world` VALUES ('370684', '4', '蓬莱市', '370600', '265600');
INSERT INTO `ot_area_world` VALUES ('370685', '4', '招远市', '370600', '265400');
INSERT INTO `ot_area_world` VALUES ('370686', '4', '栖霞市', '370600', '265300');
INSERT INTO `ot_area_world` VALUES ('370687', '4', '海阳市', '370600', '265100');
INSERT INTO `ot_area_world` VALUES ('370688', '4', '其它区', '370600', '');
INSERT INTO `ot_area_world` VALUES ('370700', '3', '潍坊市', '370000', '261000');
INSERT INTO `ot_area_world` VALUES ('370702', '4', '潍城区', '370700', '261021');
INSERT INTO `ot_area_world` VALUES ('370703', '4', '寒亭区', '370700', '261100');
INSERT INTO `ot_area_world` VALUES ('370704', '4', '坊子区', '370700', '261200');
INSERT INTO `ot_area_world` VALUES ('370705', '4', '奎文区', '370700', '261041');
INSERT INTO `ot_area_world` VALUES ('370724', '4', '临朐县', '370700', '262600');
INSERT INTO `ot_area_world` VALUES ('370725', '4', '昌乐县', '370700', '262400');
INSERT INTO `ot_area_world` VALUES ('370751', '4', '开发区', '370700', '');
INSERT INTO `ot_area_world` VALUES ('370781', '4', '青州市', '370700', '262500');
INSERT INTO `ot_area_world` VALUES ('370782', '4', '诸城市', '370700', '262200');
INSERT INTO `ot_area_world` VALUES ('370783', '4', '寿光市', '370700', '262700');
INSERT INTO `ot_area_world` VALUES ('370784', '4', '安丘市', '370700', '262100');
INSERT INTO `ot_area_world` VALUES ('370785', '4', '高密市', '370700', '261500');
INSERT INTO `ot_area_world` VALUES ('370786', '4', '昌邑市', '370700', '261300');
INSERT INTO `ot_area_world` VALUES ('370787', '4', '其它区', '370700', '');
INSERT INTO `ot_area_world` VALUES ('370800', '3', '济宁市', '370000', '272100');
INSERT INTO `ot_area_world` VALUES ('370802', '4', '市中区', '370800', '272133');
INSERT INTO `ot_area_world` VALUES ('370811', '4', '任城区', '370800', '272113');
INSERT INTO `ot_area_world` VALUES ('370826', '4', '微山县', '370800', '277600');
INSERT INTO `ot_area_world` VALUES ('370827', '4', '鱼台县', '370800', '272300');
INSERT INTO `ot_area_world` VALUES ('370828', '4', '金乡县', '370800', '272200');
INSERT INTO `ot_area_world` VALUES ('370829', '4', '嘉祥县', '370800', '272400');
INSERT INTO `ot_area_world` VALUES ('370830', '4', '汶上县', '370800', '272501');
INSERT INTO `ot_area_world` VALUES ('370831', '4', '泗水县', '370800', '273200');
INSERT INTO `ot_area_world` VALUES ('370832', '4', '梁山县', '370800', '272600');
INSERT INTO `ot_area_world` VALUES ('370881', '4', '曲阜市', '370800', '273100');
INSERT INTO `ot_area_world` VALUES ('370882', '4', '兖州市', '370800', '272000');
INSERT INTO `ot_area_world` VALUES ('370883', '4', '邹城市', '370800', '273500');
INSERT INTO `ot_area_world` VALUES ('370884', '4', '其它区', '370800', '');
INSERT INTO `ot_area_world` VALUES ('370900', '3', '泰安市', '370000', '271000');
INSERT INTO `ot_area_world` VALUES ('370902', '4', '泰山区', '370900', '271000');
INSERT INTO `ot_area_world` VALUES ('370903', '4', '岱岳区', '370900', '271000');
INSERT INTO `ot_area_world` VALUES ('370921', '4', '宁阳县', '370900', '271400');
INSERT INTO `ot_area_world` VALUES ('370923', '4', '东平县', '370900', '271500');
INSERT INTO `ot_area_world` VALUES ('370982', '4', '新泰市', '370900', '271200');
INSERT INTO `ot_area_world` VALUES ('370983', '4', '肥城市', '370900', '271600');
INSERT INTO `ot_area_world` VALUES ('370984', '4', '其它区', '370900', '');
INSERT INTO `ot_area_world` VALUES ('371000', '3', '威海市', '370000', '264200');
INSERT INTO `ot_area_world` VALUES ('371002', '4', '环翠区', '371000', '264200');
INSERT INTO `ot_area_world` VALUES ('371081', '4', '文登市', '371000', '264400');
INSERT INTO `ot_area_world` VALUES ('371082', '4', '荣成市', '371000', '264300');
INSERT INTO `ot_area_world` VALUES ('371083', '4', '乳山市', '371000', '264500');
INSERT INTO `ot_area_world` VALUES ('371084', '4', '其它区', '371000', '');
INSERT INTO `ot_area_world` VALUES ('371100', '3', '日照市', '370000', '276800');
INSERT INTO `ot_area_world` VALUES ('371102', '4', '东港区', '371100', '276800');
INSERT INTO `ot_area_world` VALUES ('371103', '4', '岚山区', '371100', '276808');
INSERT INTO `ot_area_world` VALUES ('371121', '4', '五莲县', '371100', '262300');
INSERT INTO `ot_area_world` VALUES ('371122', '4', '莒县', '371100', '276500');
INSERT INTO `ot_area_world` VALUES ('371123', '4', '其它区', '371100', '');
INSERT INTO `ot_area_world` VALUES ('371200', '3', '莱芜市', '370000', '271100');
INSERT INTO `ot_area_world` VALUES ('371202', '4', '莱城区', '371200', '271100');
INSERT INTO `ot_area_world` VALUES ('371203', '4', '钢城区', '371200', '271100');
INSERT INTO `ot_area_world` VALUES ('371204', '4', '其它区', '371200', '');
INSERT INTO `ot_area_world` VALUES ('371300', '3', '临沂市', '370000', '276000');
INSERT INTO `ot_area_world` VALUES ('371302', '4', '兰山区', '371300', '276002');
INSERT INTO `ot_area_world` VALUES ('371311', '4', '罗庄区', '371300', '276022');
INSERT INTO `ot_area_world` VALUES ('371312', '4', '河东区', '371300', '276034');
INSERT INTO `ot_area_world` VALUES ('371321', '4', '沂南县', '371300', '276300');
INSERT INTO `ot_area_world` VALUES ('371322', '4', '郯城县', '371300', '276100');
INSERT INTO `ot_area_world` VALUES ('371323', '4', '沂水县', '371300', '276400');
INSERT INTO `ot_area_world` VALUES ('371324', '4', '苍山县', '371300', '277700');
INSERT INTO `ot_area_world` VALUES ('371325', '4', '费县', '371300', '273400');
INSERT INTO `ot_area_world` VALUES ('371326', '4', '平邑县', '371300', '273300');
INSERT INTO `ot_area_world` VALUES ('371327', '4', '莒南县', '371300', '276600');
INSERT INTO `ot_area_world` VALUES ('371328', '4', '蒙阴县', '371300', '276200');
INSERT INTO `ot_area_world` VALUES ('371329', '4', '临沭县', '371300', '276700');
INSERT INTO `ot_area_world` VALUES ('371330', '4', '其它区', '371300', '');
INSERT INTO `ot_area_world` VALUES ('371400', '3', '德州市', '370000', '253000');
INSERT INTO `ot_area_world` VALUES ('371402', '4', '德城区', '371400', '253011');
INSERT INTO `ot_area_world` VALUES ('371421', '4', '陵县', '371400', '253500');
INSERT INTO `ot_area_world` VALUES ('371422', '4', '宁津县', '371400', '253400');
INSERT INTO `ot_area_world` VALUES ('371423', '4', '庆云县', '371400', '253700');
INSERT INTO `ot_area_world` VALUES ('371424', '4', '临邑县', '371400', '251500');
INSERT INTO `ot_area_world` VALUES ('371425', '4', '齐河县', '371400', '251100');
INSERT INTO `ot_area_world` VALUES ('371426', '4', '平原县', '371400', '253121');
INSERT INTO `ot_area_world` VALUES ('371427', '4', '夏津县', '371400', '253200');
INSERT INTO `ot_area_world` VALUES ('371428', '4', '武城县', '371400', '253300');
INSERT INTO `ot_area_world` VALUES ('371451', '4', '开发区', '371400', '');
INSERT INTO `ot_area_world` VALUES ('371481', '4', '乐陵市', '371400', '253600');
INSERT INTO `ot_area_world` VALUES ('371482', '4', '禹城市', '371400', '251200');
INSERT INTO `ot_area_world` VALUES ('371483', '4', '其它区', '371400', '');
INSERT INTO `ot_area_world` VALUES ('371500', '3', '聊城市', '370000', '252000');
INSERT INTO `ot_area_world` VALUES ('371502', '4', '东昌府区', '371500', '252000');
INSERT INTO `ot_area_world` VALUES ('371521', '4', '阳谷县', '371500', '252300');
INSERT INTO `ot_area_world` VALUES ('371522', '4', '莘县', '371500', '252400');
INSERT INTO `ot_area_world` VALUES ('371523', '4', '茌平县', '371500', '252100');
INSERT INTO `ot_area_world` VALUES ('371524', '4', '东阿县', '371500', '252200');
INSERT INTO `ot_area_world` VALUES ('371525', '4', '冠县', '371500', '252500');
INSERT INTO `ot_area_world` VALUES ('371526', '4', '高唐县', '371500', '252800');
INSERT INTO `ot_area_world` VALUES ('371581', '4', '临清市', '371500', '252600');
INSERT INTO `ot_area_world` VALUES ('371582', '4', '其它区', '371500', '');
INSERT INTO `ot_area_world` VALUES ('371600', '3', '滨州市', '370000', '256600');
INSERT INTO `ot_area_world` VALUES ('371602', '4', '滨城区', '371600', '256600');
INSERT INTO `ot_area_world` VALUES ('371621', '4', '惠民县', '371600', '257100');
INSERT INTO `ot_area_world` VALUES ('371622', '4', '阳信县', '371600', '251800');
INSERT INTO `ot_area_world` VALUES ('371623', '4', '无棣县', '371600', '251900');
INSERT INTO `ot_area_world` VALUES ('371624', '4', '沾化县', '371600', '256800');
INSERT INTO `ot_area_world` VALUES ('371625', '4', '博兴县', '371600', '256500');
INSERT INTO `ot_area_world` VALUES ('371626', '4', '邹平县', '371600', '256200');
INSERT INTO `ot_area_world` VALUES ('371627', '4', '其它区', '371600', '');
INSERT INTO `ot_area_world` VALUES ('371700', '3', '菏泽市', '370000', '274000');
INSERT INTO `ot_area_world` VALUES ('371702', '4', '牡丹区', '371700', '274009');
INSERT INTO `ot_area_world` VALUES ('371721', '4', '曹县', '371700', '274400');
INSERT INTO `ot_area_world` VALUES ('371722', '4', '单县', '371700', '274300');
INSERT INTO `ot_area_world` VALUES ('371723', '4', '成武县', '371700', '274200');
INSERT INTO `ot_area_world` VALUES ('371724', '4', '巨野县', '371700', '274900');
INSERT INTO `ot_area_world` VALUES ('371725', '4', '郓城县', '371700', '274700');
INSERT INTO `ot_area_world` VALUES ('371726', '4', '鄄城县', '371700', '274600');
INSERT INTO `ot_area_world` VALUES ('371727', '4', '定陶县', '371700', '274100');
INSERT INTO `ot_area_world` VALUES ('371728', '4', '东明县', '371700', '274500');
INSERT INTO `ot_area_world` VALUES ('371729', '4', '其它区', '371700', '');
INSERT INTO `ot_area_world` VALUES ('410000', '2', '河南省', '1', '');
INSERT INTO `ot_area_world` VALUES ('410100', '3', '郑州市', '410000', '450000');
INSERT INTO `ot_area_world` VALUES ('410102', '4', '中原区', '410100', '450007');
INSERT INTO `ot_area_world` VALUES ('410103', '4', '二七区', '410100', '450000');
INSERT INTO `ot_area_world` VALUES ('410104', '4', '管城回族区', '410100', '450000');
INSERT INTO `ot_area_world` VALUES ('410105', '4', '金水区', '410100', '450003');
INSERT INTO `ot_area_world` VALUES ('410106', '4', '上街区', '410100', '450041');
INSERT INTO `ot_area_world` VALUES ('410108', '4', '惠济区', '410100', '450053');
INSERT INTO `ot_area_world` VALUES ('410122', '4', '中牟县', '410100', '451450');
INSERT INTO `ot_area_world` VALUES ('410181', '4', '巩义市', '410100', '451200');
INSERT INTO `ot_area_world` VALUES ('410182', '4', '荥阳市', '410100', '450100');
INSERT INTO `ot_area_world` VALUES ('410183', '4', '新密市', '410100', '452300');
INSERT INTO `ot_area_world` VALUES ('410184', '4', '新郑市', '410100', '451150');
INSERT INTO `ot_area_world` VALUES ('410185', '4', '登封市', '410100', '452470');
INSERT INTO `ot_area_world` VALUES ('410186', '4', '郑东新区', '410100', '');
INSERT INTO `ot_area_world` VALUES ('410187', '4', '高新区', '410100', '');
INSERT INTO `ot_area_world` VALUES ('410188', '4', '其它区', '410100', '');
INSERT INTO `ot_area_world` VALUES ('410200', '3', '开封市', '410000', '475000');
INSERT INTO `ot_area_world` VALUES ('410202', '4', '龙亭区', '410200', '475100');
INSERT INTO `ot_area_world` VALUES ('410203', '4', '顺河回族区', '410200', '475000');
INSERT INTO `ot_area_world` VALUES ('410204', '4', '鼓楼区', '410200', '475000');
INSERT INTO `ot_area_world` VALUES ('410205', '4', '禹王台区', '410200', '475003');
INSERT INTO `ot_area_world` VALUES ('410211', '4', '金明区', '410200', '475002');
INSERT INTO `ot_area_world` VALUES ('410221', '4', '杞县', '410200', '475200');
INSERT INTO `ot_area_world` VALUES ('410222', '4', '通许县', '410200', '475400');
INSERT INTO `ot_area_world` VALUES ('410223', '4', '尉氏县', '410200', '475500');
INSERT INTO `ot_area_world` VALUES ('410224', '4', '开封县', '410200', '475100');
INSERT INTO `ot_area_world` VALUES ('410225', '4', '兰考县', '410200', '475300');
INSERT INTO `ot_area_world` VALUES ('410226', '4', '其它区', '410200', '');
INSERT INTO `ot_area_world` VALUES ('410300', '3', '洛阳市', '410000', '471000');
INSERT INTO `ot_area_world` VALUES ('410302', '4', '老城区', '410300', '471002');
INSERT INTO `ot_area_world` VALUES ('410303', '4', '西工区', '410300', '471000');
INSERT INTO `ot_area_world` VALUES ('410304', '4', '廛河回族区', '410300', '471002');
INSERT INTO `ot_area_world` VALUES ('410305', '4', '涧西区', '410300', '471003');
INSERT INTO `ot_area_world` VALUES ('410306', '4', '吉利区', '410300', '471012');
INSERT INTO `ot_area_world` VALUES ('410307', '4', '洛龙区', '410300', '471000');
INSERT INTO `ot_area_world` VALUES ('410322', '4', '孟津县', '410300', '471100');
INSERT INTO `ot_area_world` VALUES ('410323', '4', '新安县', '410300', '471800');
INSERT INTO `ot_area_world` VALUES ('410324', '4', '栾川县', '410300', '471500');
INSERT INTO `ot_area_world` VALUES ('410325', '4', '嵩县', '410300', '471400');
INSERT INTO `ot_area_world` VALUES ('410326', '4', '汝阳县', '410300', '471200');
INSERT INTO `ot_area_world` VALUES ('410327', '4', '宜阳县', '410300', '471600');
INSERT INTO `ot_area_world` VALUES ('410328', '4', '洛宁县', '410300', '471700');
INSERT INTO `ot_area_world` VALUES ('410329', '4', '伊川县', '410300', '471300');
INSERT INTO `ot_area_world` VALUES ('410381', '4', '偃师市', '410300', '471900');
INSERT INTO `ot_area_world` VALUES ('410400', '3', '平顶山市', '410000', '467000');
INSERT INTO `ot_area_world` VALUES ('410402', '4', '新华区', '410400', '467002');
INSERT INTO `ot_area_world` VALUES ('410403', '4', '卫东区', '410400', '467021');
INSERT INTO `ot_area_world` VALUES ('410404', '4', '石龙区', '410400', '467045');
INSERT INTO `ot_area_world` VALUES ('410411', '4', '湛河区', '410400', '467000');
INSERT INTO `ot_area_world` VALUES ('410421', '4', '宝丰县', '410400', '467400');
INSERT INTO `ot_area_world` VALUES ('410422', '4', '叶县', '410400', '467200');
INSERT INTO `ot_area_world` VALUES ('410423', '4', '鲁山县', '410400', '467300');
INSERT INTO `ot_area_world` VALUES ('410425', '4', '郏县', '410400', '467100');
INSERT INTO `ot_area_world` VALUES ('410481', '4', '舞钢市', '410400', '462500');
INSERT INTO `ot_area_world` VALUES ('410482', '4', '汝州市', '410400', '467500');
INSERT INTO `ot_area_world` VALUES ('410483', '4', '其它区', '410400', '');
INSERT INTO `ot_area_world` VALUES ('410500', '3', '安阳市', '410000', '455000');
INSERT INTO `ot_area_world` VALUES ('410502', '4', '文峰区', '410500', '455000');
INSERT INTO `ot_area_world` VALUES ('410503', '4', '北关区', '410500', '455001');
INSERT INTO `ot_area_world` VALUES ('410505', '4', '殷都区', '410500', '455004');
INSERT INTO `ot_area_world` VALUES ('410506', '4', '龙安区', '410500', '455001');
INSERT INTO `ot_area_world` VALUES ('410522', '4', '安阳县', '410500', '455100');
INSERT INTO `ot_area_world` VALUES ('410523', '4', '汤阴县', '410500', '456150');
INSERT INTO `ot_area_world` VALUES ('410526', '4', '滑县', '410500', '456400');
INSERT INTO `ot_area_world` VALUES ('410527', '4', '内黄县', '410500', '456300');
INSERT INTO `ot_area_world` VALUES ('410581', '4', '林州市', '410500', '456500');
INSERT INTO `ot_area_world` VALUES ('410582', '4', '其它区', '410500', '');
INSERT INTO `ot_area_world` VALUES ('410600', '3', '鹤壁市', '410000', '458000');
INSERT INTO `ot_area_world` VALUES ('410602', '4', '鹤山区', '410600', '458010');
INSERT INTO `ot_area_world` VALUES ('410603', '4', '山城区', '410600', '458000');
INSERT INTO `ot_area_world` VALUES ('410611', '4', '淇滨区', '410600', '458030');
INSERT INTO `ot_area_world` VALUES ('410621', '4', '浚县', '410600', '456250');
INSERT INTO `ot_area_world` VALUES ('410622', '4', '淇县', '410600', '456750');
INSERT INTO `ot_area_world` VALUES ('410623', '4', '其它区', '410600', '');
INSERT INTO `ot_area_world` VALUES ('410700', '3', '新乡市', '410000', '453000');
INSERT INTO `ot_area_world` VALUES ('410702', '4', '红旗区', '410700', '453000');
INSERT INTO `ot_area_world` VALUES ('410703', '4', '卫滨区', '410700', '453000');
INSERT INTO `ot_area_world` VALUES ('410704', '4', '凤泉区', '410700', '453011');
INSERT INTO `ot_area_world` VALUES ('410711', '4', '牧野区', '410700', '453002');
INSERT INTO `ot_area_world` VALUES ('410721', '4', '新乡县', '410700', '453700');
INSERT INTO `ot_area_world` VALUES ('410724', '4', '获嘉县', '410700', '453800');
INSERT INTO `ot_area_world` VALUES ('410725', '4', '原阳县', '410700', '453500');
INSERT INTO `ot_area_world` VALUES ('410726', '4', '延津县', '410700', '453200');
INSERT INTO `ot_area_world` VALUES ('410727', '4', '封丘县', '410700', '453300');
INSERT INTO `ot_area_world` VALUES ('410728', '4', '长垣县', '410700', '453400');
INSERT INTO `ot_area_world` VALUES ('410781', '4', '卫辉市', '410700', '453100');
INSERT INTO `ot_area_world` VALUES ('410782', '4', '辉县市', '410700', '453600');
INSERT INTO `ot_area_world` VALUES ('410783', '4', '其它区', '410700', '');
INSERT INTO `ot_area_world` VALUES ('410800', '3', '焦作市', '410000', '454000');
INSERT INTO `ot_area_world` VALUES ('410802', '4', '解放区', '410800', '454000');
INSERT INTO `ot_area_world` VALUES ('410803', '4', '中站区', '410800', '454191');
INSERT INTO `ot_area_world` VALUES ('410804', '4', '马村区', '410800', '454171');
INSERT INTO `ot_area_world` VALUES ('410811', '4', '山阳区', '410800', '454002');
INSERT INTO `ot_area_world` VALUES ('410821', '4', '修武县', '410800', '454350');
INSERT INTO `ot_area_world` VALUES ('410822', '4', '博爱县', '410800', '454450');
INSERT INTO `ot_area_world` VALUES ('410823', '4', '武陟县', '410800', '454950');
INSERT INTO `ot_area_world` VALUES ('410825', '4', '温县', '410800', '454850');
INSERT INTO `ot_area_world` VALUES ('410881', '4', '济源市', '410000', '454650');
INSERT INTO `ot_area_world` VALUES ('410882', '4', '沁阳市', '410800', '454550');
INSERT INTO `ot_area_world` VALUES ('410883', '4', '孟州市', '410800', '454750');
INSERT INTO `ot_area_world` VALUES ('410884', '4', '其它区', '410800', '');
INSERT INTO `ot_area_world` VALUES ('410900', '3', '濮阳市', '410000', '457000');
INSERT INTO `ot_area_world` VALUES ('410902', '4', '华龙区', '410900', '457001');
INSERT INTO `ot_area_world` VALUES ('410922', '4', '清丰县', '410900', '457300');
INSERT INTO `ot_area_world` VALUES ('410923', '4', '南乐县', '410900', '457400');
INSERT INTO `ot_area_world` VALUES ('410926', '4', '范县', '410900', '457500');
INSERT INTO `ot_area_world` VALUES ('410927', '4', '台前县', '410900', '457600');
INSERT INTO `ot_area_world` VALUES ('410928', '4', '濮阳县', '410900', '457100');
INSERT INTO `ot_area_world` VALUES ('410929', '4', '其它区', '410900', '');
INSERT INTO `ot_area_world` VALUES ('411000', '3', '许昌市', '410000', '461000');
INSERT INTO `ot_area_world` VALUES ('411002', '4', '魏都区', '411000', '461000');
INSERT INTO `ot_area_world` VALUES ('411023', '4', '许昌县', '411000', '461100');
INSERT INTO `ot_area_world` VALUES ('411024', '4', '鄢陵县', '411000', '461200');
INSERT INTO `ot_area_world` VALUES ('411025', '4', '襄城县', '411000', '461700');
INSERT INTO `ot_area_world` VALUES ('411081', '4', '禹州市', '411000', '461670');
INSERT INTO `ot_area_world` VALUES ('411082', '4', '长葛市', '411000', '461500');
INSERT INTO `ot_area_world` VALUES ('411083', '4', '其它区', '411000', '');
INSERT INTO `ot_area_world` VALUES ('411100', '3', '漯河市', '410000', '462000');
INSERT INTO `ot_area_world` VALUES ('411102', '4', '源汇区', '411100', '462000');
INSERT INTO `ot_area_world` VALUES ('411103', '4', '郾城区', '411100', '462300');
INSERT INTO `ot_area_world` VALUES ('411104', '4', '召陵区', '411100', '462300');
INSERT INTO `ot_area_world` VALUES ('411121', '4', '舞阳县', '411100', '462400');
INSERT INTO `ot_area_world` VALUES ('411122', '4', '临颍县', '411100', '462600');
INSERT INTO `ot_area_world` VALUES ('411123', '4', '其它区', '411100', '');
INSERT INTO `ot_area_world` VALUES ('411200', '3', '三门峡市', '410000', '472000');
INSERT INTO `ot_area_world` VALUES ('411202', '4', '湖滨区', '411200', '472000');
INSERT INTO `ot_area_world` VALUES ('411221', '4', '渑池县', '411200', '472400');
INSERT INTO `ot_area_world` VALUES ('411222', '4', '陕县', '411200', '472100');
INSERT INTO `ot_area_world` VALUES ('411224', '4', '卢氏县', '411200', '472200');
INSERT INTO `ot_area_world` VALUES ('411281', '4', '义马市', '411200', '472300');
INSERT INTO `ot_area_world` VALUES ('411282', '4', '灵宝市', '411200', '472500');
INSERT INTO `ot_area_world` VALUES ('411283', '4', '其它区', '411200', '');
INSERT INTO `ot_area_world` VALUES ('411300', '3', '南阳市', '410000', '473000');
INSERT INTO `ot_area_world` VALUES ('411302', '4', '宛城区', '411300', '473001');
INSERT INTO `ot_area_world` VALUES ('411303', '4', '卧龙区', '411300', '473003');
INSERT INTO `ot_area_world` VALUES ('411321', '4', '南召县', '411300', '474650');
INSERT INTO `ot_area_world` VALUES ('411322', '4', '方城县', '411300', '473200');
INSERT INTO `ot_area_world` VALUES ('411323', '4', '西峡县', '411300', '474550');
INSERT INTO `ot_area_world` VALUES ('411324', '4', '镇平县', '411300', '474250');
INSERT INTO `ot_area_world` VALUES ('411325', '4', '内乡县', '411300', '474350');
INSERT INTO `ot_area_world` VALUES ('411326', '4', '淅川县', '411300', '474450');
INSERT INTO `ot_area_world` VALUES ('411327', '4', '社旗县', '411300', '473300');
INSERT INTO `ot_area_world` VALUES ('411328', '4', '唐河县', '411300', '473400');
INSERT INTO `ot_area_world` VALUES ('411329', '4', '新野县', '411300', '473500');
INSERT INTO `ot_area_world` VALUES ('411330', '4', '桐柏县', '411300', '474750');
INSERT INTO `ot_area_world` VALUES ('411381', '4', '邓州市', '411300', '474150');
INSERT INTO `ot_area_world` VALUES ('411382', '4', '其它区', '411300', '');
INSERT INTO `ot_area_world` VALUES ('411400', '3', '商丘市', '410000', '476000');
INSERT INTO `ot_area_world` VALUES ('411402', '4', '梁园区', '411400', '476000');
INSERT INTO `ot_area_world` VALUES ('411403', '4', '睢阳区', '411400', '476100');
INSERT INTO `ot_area_world` VALUES ('411421', '4', '民权县', '411400', '476800');
INSERT INTO `ot_area_world` VALUES ('411422', '4', '睢县', '411400', '476900');
INSERT INTO `ot_area_world` VALUES ('411423', '4', '宁陵县', '411400', '476700');
INSERT INTO `ot_area_world` VALUES ('411424', '4', '柘城县', '411400', '476200');
INSERT INTO `ot_area_world` VALUES ('411425', '4', '虞城县', '411400', '476300');
INSERT INTO `ot_area_world` VALUES ('411426', '4', '夏邑县', '411400', '476400');
INSERT INTO `ot_area_world` VALUES ('411481', '4', '永城市', '411400', '476600');
INSERT INTO `ot_area_world` VALUES ('411482', '4', '其它区', '411400', '');
INSERT INTO `ot_area_world` VALUES ('411500', '3', '信阳市', '410000', '464000');
INSERT INTO `ot_area_world` VALUES ('411502', '4', '浉河区', '411500', '464000');
INSERT INTO `ot_area_world` VALUES ('411503', '4', '平桥区', '411500', '464100');
INSERT INTO `ot_area_world` VALUES ('411521', '4', '罗山县', '411500', '464200');
INSERT INTO `ot_area_world` VALUES ('411522', '4', '光山县', '411500', '465450');
INSERT INTO `ot_area_world` VALUES ('411523', '4', '新县', '411500', '465550');
INSERT INTO `ot_area_world` VALUES ('411524', '4', '商城县', '411500', '465350');
INSERT INTO `ot_area_world` VALUES ('411525', '4', '固始县', '411500', '465200');
INSERT INTO `ot_area_world` VALUES ('411526', '4', '潢川县', '411500', '465150');
INSERT INTO `ot_area_world` VALUES ('411527', '4', '淮滨县', '411500', '464400');
INSERT INTO `ot_area_world` VALUES ('411528', '4', '息县', '411500', '464300');
INSERT INTO `ot_area_world` VALUES ('411529', '4', '其它区', '411500', '');
INSERT INTO `ot_area_world` VALUES ('411600', '3', '周口市', '410000', '466000');
INSERT INTO `ot_area_world` VALUES ('411602', '4', '川汇区', '411600', '466000');
INSERT INTO `ot_area_world` VALUES ('411621', '4', '扶沟县', '411600', '461300');
INSERT INTO `ot_area_world` VALUES ('411622', '4', '西华县', '411600', '466600');
INSERT INTO `ot_area_world` VALUES ('411623', '4', '商水县', '411600', '466100');
INSERT INTO `ot_area_world` VALUES ('411624', '4', '沈丘县', '411600', '466300');
INSERT INTO `ot_area_world` VALUES ('411625', '4', '郸城县', '411600', '477150');
INSERT INTO `ot_area_world` VALUES ('411626', '4', '淮阳县', '411600', '466700');
INSERT INTO `ot_area_world` VALUES ('411627', '4', '太康县', '411600', '475400');
INSERT INTO `ot_area_world` VALUES ('411628', '4', '鹿邑县', '411600', '477200');
INSERT INTO `ot_area_world` VALUES ('411681', '4', '项城市', '411600', '466200');
INSERT INTO `ot_area_world` VALUES ('411682', '4', '其它区', '411600', '');
INSERT INTO `ot_area_world` VALUES ('411700', '3', '驻马店市', '410000', '463000');
INSERT INTO `ot_area_world` VALUES ('411702', '4', '驿城区', '411700', '463000');
INSERT INTO `ot_area_world` VALUES ('411721', '4', '西平县', '411700', '463900');
INSERT INTO `ot_area_world` VALUES ('411722', '4', '上蔡县', '411700', '463800');
INSERT INTO `ot_area_world` VALUES ('411723', '4', '平舆县', '411700', '463400');
INSERT INTO `ot_area_world` VALUES ('411724', '4', '正阳县', '411700', '463600');
INSERT INTO `ot_area_world` VALUES ('411725', '4', '确山县', '411700', '463200');
INSERT INTO `ot_area_world` VALUES ('411726', '4', '泌阳县', '411700', '463700');
INSERT INTO `ot_area_world` VALUES ('411727', '4', '汝南县', '411700', '463300');
INSERT INTO `ot_area_world` VALUES ('411728', '4', '遂平县', '411700', '463100');
INSERT INTO `ot_area_world` VALUES ('411729', '4', '新蔡县', '411700', '463500');
INSERT INTO `ot_area_world` VALUES ('411730', '4', '其它区', '411700', '');
INSERT INTO `ot_area_world` VALUES ('420000', '2', '湖北省', '1', '');
INSERT INTO `ot_area_world` VALUES ('420100', '3', '武汉市', '420000', '430000');
INSERT INTO `ot_area_world` VALUES ('420102', '4', '江岸区', '420100', '430014');
INSERT INTO `ot_area_world` VALUES ('420103', '4', '江汉区', '420100', '430015');
INSERT INTO `ot_area_world` VALUES ('420104', '4', '硚口区', '420100', '430033');
INSERT INTO `ot_area_world` VALUES ('420105', '4', '汉阳区', '420100', '430050');
INSERT INTO `ot_area_world` VALUES ('420106', '4', '武昌区', '420100', '430061');
INSERT INTO `ot_area_world` VALUES ('420107', '4', '青山区', '420100', '430080');
INSERT INTO `ot_area_world` VALUES ('420111', '4', '洪山区', '420100', '430070');
INSERT INTO `ot_area_world` VALUES ('420112', '4', '东西湖区', '420100', '430040');
INSERT INTO `ot_area_world` VALUES ('420113', '4', '汉南区', '420100', '430090');
INSERT INTO `ot_area_world` VALUES ('420114', '4', '蔡甸区', '420100', '430100');
INSERT INTO `ot_area_world` VALUES ('420115', '4', '江夏区', '420100', '430200');
INSERT INTO `ot_area_world` VALUES ('420116', '4', '黄陂区', '420100', '430300');
INSERT INTO `ot_area_world` VALUES ('420117', '4', '新洲区', '420100', '431400');
INSERT INTO `ot_area_world` VALUES ('420118', '4', '其它区', '420100', '');
INSERT INTO `ot_area_world` VALUES ('420200', '3', '黄石市', '420000', '435000');
INSERT INTO `ot_area_world` VALUES ('420202', '4', '黄石港区', '420200', '435002');
INSERT INTO `ot_area_world` VALUES ('420203', '4', '西塞山区', '420200', '435001');
INSERT INTO `ot_area_world` VALUES ('420204', '4', '下陆区', '420200', '435004');
INSERT INTO `ot_area_world` VALUES ('420205', '4', '铁山区', '420200', '435006');
INSERT INTO `ot_area_world` VALUES ('420222', '4', '阳新县', '420200', '435200');
INSERT INTO `ot_area_world` VALUES ('420281', '4', '大冶市', '420200', '435100');
INSERT INTO `ot_area_world` VALUES ('420282', '4', '其它区', '420200', '');
INSERT INTO `ot_area_world` VALUES ('420300', '3', '十堰市', '420000', '442000');
INSERT INTO `ot_area_world` VALUES ('420302', '4', '茅箭区', '420300', '442012');
INSERT INTO `ot_area_world` VALUES ('420303', '4', '张湾区', '420300', '442001');
INSERT INTO `ot_area_world` VALUES ('420321', '4', '郧县', '420300', '442500');
INSERT INTO `ot_area_world` VALUES ('420322', '4', '郧西县', '420300', '442600');
INSERT INTO `ot_area_world` VALUES ('420323', '4', '竹山县', '420300', '442200');
INSERT INTO `ot_area_world` VALUES ('420324', '4', '竹溪县', '420300', '442300');
INSERT INTO `ot_area_world` VALUES ('420325', '4', '房县', '420300', '442100');
INSERT INTO `ot_area_world` VALUES ('420381', '4', '丹江口市', '420300', '441900');
INSERT INTO `ot_area_world` VALUES ('420382', '4', '城区', '420300', '');
INSERT INTO `ot_area_world` VALUES ('420383', '4', '其它区', '420300', '');
INSERT INTO `ot_area_world` VALUES ('420500', '3', '宜昌市', '420000', '443000');
INSERT INTO `ot_area_world` VALUES ('420502', '4', '西陵区', '420500', '443000');
INSERT INTO `ot_area_world` VALUES ('420503', '4', '伍家岗区', '420500', '443001');
INSERT INTO `ot_area_world` VALUES ('420504', '4', '点军区', '420500', '443006');
INSERT INTO `ot_area_world` VALUES ('420505', '4', '猇亭区', '420500', '443007');
INSERT INTO `ot_area_world` VALUES ('420506', '4', '夷陵区', '420500', '443100');
INSERT INTO `ot_area_world` VALUES ('420525', '4', '远安县', '420500', '444200');
INSERT INTO `ot_area_world` VALUES ('420526', '4', '兴山县', '420500', '443700');
INSERT INTO `ot_area_world` VALUES ('420527', '4', '秭归县', '420500', '443600');
INSERT INTO `ot_area_world` VALUES ('420528', '4', '长阳土家族自治县', '420500', '443500');
INSERT INTO `ot_area_world` VALUES ('420529', '4', '五峰土家族自治县', '420500', '443400');
INSERT INTO `ot_area_world` VALUES ('420551', '4', '葛洲坝区', '420500', '');
INSERT INTO `ot_area_world` VALUES ('420552', '4', '开发区', '420500', '');
INSERT INTO `ot_area_world` VALUES ('420581', '4', '宜都市', '420500', '443300');
INSERT INTO `ot_area_world` VALUES ('420582', '4', '当阳市', '420500', '444100');
INSERT INTO `ot_area_world` VALUES ('420583', '4', '枝江市', '420500', '443200');
INSERT INTO `ot_area_world` VALUES ('420584', '4', '其它区', '420500', '');
INSERT INTO `ot_area_world` VALUES ('420600', '3', '襄阳市', '420000', '441000');
INSERT INTO `ot_area_world` VALUES ('420602', '4', '襄城区', '420600', '441021');
INSERT INTO `ot_area_world` VALUES ('420606', '4', '樊城区', '420600', '441001');
INSERT INTO `ot_area_world` VALUES ('420607', '4', '襄州区', '420600', '441100');
INSERT INTO `ot_area_world` VALUES ('420624', '4', '南漳县', '420600', '441500');
INSERT INTO `ot_area_world` VALUES ('420625', '4', '谷城县', '420600', '441700');
INSERT INTO `ot_area_world` VALUES ('420626', '4', '保康县', '420600', '441600');
INSERT INTO `ot_area_world` VALUES ('420682', '4', '老河口市', '420600', '441800');
INSERT INTO `ot_area_world` VALUES ('420683', '4', '枣阳市', '420600', '441200');
INSERT INTO `ot_area_world` VALUES ('420684', '4', '宜城市', '420600', '441400');
INSERT INTO `ot_area_world` VALUES ('420685', '4', '其它区', '420600', '');
INSERT INTO `ot_area_world` VALUES ('420700', '3', '鄂州市', '420000', '436000');
INSERT INTO `ot_area_world` VALUES ('420702', '4', '梁子湖区', '420700', '436064');
INSERT INTO `ot_area_world` VALUES ('420703', '4', '华容区', '420700', '436030');
INSERT INTO `ot_area_world` VALUES ('420704', '4', '鄂城区', '420700', '436000');
INSERT INTO `ot_area_world` VALUES ('420705', '4', '其它区', '420700', '');
INSERT INTO `ot_area_world` VALUES ('420800', '3', '荆门市', '420000', '448000');
INSERT INTO `ot_area_world` VALUES ('420802', '4', '东宝区', '420800', '448004');
INSERT INTO `ot_area_world` VALUES ('420804', '4', '掇刀区', '420800', '448124');
INSERT INTO `ot_area_world` VALUES ('420821', '4', '京山县', '420800', '431800');
INSERT INTO `ot_area_world` VALUES ('420822', '4', '沙洋县', '420800', '448200');
INSERT INTO `ot_area_world` VALUES ('420881', '4', '钟祥市', '420800', '431900');
INSERT INTO `ot_area_world` VALUES ('420882', '4', '其它区', '420800', '');
INSERT INTO `ot_area_world` VALUES ('420900', '3', '孝感市', '420000', '432000');
INSERT INTO `ot_area_world` VALUES ('420902', '4', '孝南区', '420900', '432100');
INSERT INTO `ot_area_world` VALUES ('420921', '4', '孝昌县', '420900', '432900');
INSERT INTO `ot_area_world` VALUES ('420922', '4', '大悟县', '420900', '432800');
INSERT INTO `ot_area_world` VALUES ('420923', '4', '云梦县', '420900', '432500');
INSERT INTO `ot_area_world` VALUES ('420981', '4', '应城市', '420900', '432400');
INSERT INTO `ot_area_world` VALUES ('420982', '4', '安陆市', '420900', '432600');
INSERT INTO `ot_area_world` VALUES ('420984', '4', '汉川市', '420900', '431600');
INSERT INTO `ot_area_world` VALUES ('420985', '4', '其它区', '420900', '');
INSERT INTO `ot_area_world` VALUES ('421000', '3', '荆州市', '420000', '434000');
INSERT INTO `ot_area_world` VALUES ('421002', '4', '沙市区', '421000', '434000');
INSERT INTO `ot_area_world` VALUES ('421003', '4', '荆州区', '421000', '434020');
INSERT INTO `ot_area_world` VALUES ('421022', '4', '公安县', '421000', '434300');
INSERT INTO `ot_area_world` VALUES ('421023', '4', '监利县', '421000', '433300');
INSERT INTO `ot_area_world` VALUES ('421024', '4', '江陵县', '421000', '434100');
INSERT INTO `ot_area_world` VALUES ('421081', '4', '石首市', '421000', '434400');
INSERT INTO `ot_area_world` VALUES ('421083', '4', '洪湖市', '421000', '433200');
INSERT INTO `ot_area_world` VALUES ('421087', '4', '松滋市', '421000', '434200');
INSERT INTO `ot_area_world` VALUES ('421088', '4', '其它区', '421000', '');
INSERT INTO `ot_area_world` VALUES ('421100', '3', '黄冈市', '420000', '438000');
INSERT INTO `ot_area_world` VALUES ('421102', '4', '黄州区', '421100', '438000');
INSERT INTO `ot_area_world` VALUES ('421121', '4', '团风县', '421100', '438000');
INSERT INTO `ot_area_world` VALUES ('421122', '4', '红安县', '421100', '431500');
INSERT INTO `ot_area_world` VALUES ('421123', '4', '罗田县', '421100', '438600');
INSERT INTO `ot_area_world` VALUES ('421124', '4', '英山县', '421100', '438700');
INSERT INTO `ot_area_world` VALUES ('421125', '4', '浠水县', '421100', '438200');
INSERT INTO `ot_area_world` VALUES ('421126', '4', '蕲春县', '421100', '436300');
INSERT INTO `ot_area_world` VALUES ('421127', '4', '黄梅县', '421100', '435500');
INSERT INTO `ot_area_world` VALUES ('421181', '4', '麻城市', '421100', '438300');
INSERT INTO `ot_area_world` VALUES ('421182', '4', '武穴市', '421100', '435400');
INSERT INTO `ot_area_world` VALUES ('421183', '4', '其它区', '421100', '');
INSERT INTO `ot_area_world` VALUES ('421200', '3', '咸宁市', '420000', '437100');
INSERT INTO `ot_area_world` VALUES ('421202', '4', '咸安区', '421200', '437000');
INSERT INTO `ot_area_world` VALUES ('421221', '4', '嘉鱼县', '421200', '437200');
INSERT INTO `ot_area_world` VALUES ('421222', '4', '通城县', '421200', '437400');
INSERT INTO `ot_area_world` VALUES ('421223', '4', '崇阳县', '421200', '437500');
INSERT INTO `ot_area_world` VALUES ('421224', '4', '通山县', '421200', '437600');
INSERT INTO `ot_area_world` VALUES ('421281', '4', '赤壁市', '421200', '437300');
INSERT INTO `ot_area_world` VALUES ('421282', '4', '温泉城区', '421200', '');
INSERT INTO `ot_area_world` VALUES ('421283', '4', '其它区', '421200', '');
INSERT INTO `ot_area_world` VALUES ('421300', '3', '随州市', '420000', '441300');
INSERT INTO `ot_area_world` VALUES ('421302', '4', '曾都区', '421300', '441300');
INSERT INTO `ot_area_world` VALUES ('421321', '4', '随县', '421300', '441300');
INSERT INTO `ot_area_world` VALUES ('421381', '4', '广水市', '421300', '432700');
INSERT INTO `ot_area_world` VALUES ('421382', '4', '其它区', '421300', '');
INSERT INTO `ot_area_world` VALUES ('422800', '3', '恩施土家族苗族自治州', '420000', '');
INSERT INTO `ot_area_world` VALUES ('422801', '4', '恩施市', '422800', '445000');
INSERT INTO `ot_area_world` VALUES ('422802', '4', '利川市', '422800', '445400');
INSERT INTO `ot_area_world` VALUES ('422822', '4', '建始县', '422800', '445300');
INSERT INTO `ot_area_world` VALUES ('422823', '4', '巴东县', '422800', '444300');
INSERT INTO `ot_area_world` VALUES ('422825', '4', '宣恩县', '422800', '445500');
INSERT INTO `ot_area_world` VALUES ('422826', '4', '咸丰县', '422800', '445600');
INSERT INTO `ot_area_world` VALUES ('422827', '4', '来凤县', '422800', '445700');
INSERT INTO `ot_area_world` VALUES ('422828', '4', '鹤峰县', '422800', '445800');
INSERT INTO `ot_area_world` VALUES ('422829', '4', '其它区', '422800', '');
INSERT INTO `ot_area_world` VALUES ('429004', '4', '仙桃市', '420000', '433000');
INSERT INTO `ot_area_world` VALUES ('429005', '4', '潜江市', '420000', '433100');
INSERT INTO `ot_area_world` VALUES ('429006', '4', '天门市', '420000', '431700');
INSERT INTO `ot_area_world` VALUES ('429021', '4', '神农架林区', '420000', '442400');
INSERT INTO `ot_area_world` VALUES ('430000', '2', '湖南省', '1', '');
INSERT INTO `ot_area_world` VALUES ('430100', '3', '长沙市', '430000', '410000');
INSERT INTO `ot_area_world` VALUES ('430102', '4', '芙蓉区', '430100', '410006');
INSERT INTO `ot_area_world` VALUES ('430103', '4', '天心区', '430100', '410002');
INSERT INTO `ot_area_world` VALUES ('430104', '4', '岳麓区', '430100', '410006');
INSERT INTO `ot_area_world` VALUES ('430105', '4', '开福区', '430100', '410005');
INSERT INTO `ot_area_world` VALUES ('430111', '4', '雨花区', '430100', '410007');
INSERT INTO `ot_area_world` VALUES ('430121', '4', '长沙县', '430100', '410100');
INSERT INTO `ot_area_world` VALUES ('430122', '4', '望城县', '430100', '410200');
INSERT INTO `ot_area_world` VALUES ('430124', '4', '宁乡县', '430100', '410600');
INSERT INTO `ot_area_world` VALUES ('430181', '4', '浏阳市', '430100', '410300');
INSERT INTO `ot_area_world` VALUES ('430182', '4', '其它区', '430100', '');
INSERT INTO `ot_area_world` VALUES ('430200', '3', '株洲市', '430000', '412000');
INSERT INTO `ot_area_world` VALUES ('430202', '4', '荷塘区', '430200', '412000');
INSERT INTO `ot_area_world` VALUES ('430203', '4', '芦淞区', '430200', '412000');
INSERT INTO `ot_area_world` VALUES ('430204', '4', '石峰区', '430200', '412005');
INSERT INTO `ot_area_world` VALUES ('430211', '4', '天元区', '430200', '412000');
INSERT INTO `ot_area_world` VALUES ('430221', '4', '株洲县', '430200', '412100');
INSERT INTO `ot_area_world` VALUES ('430223', '4', '攸县', '430200', '412300');
INSERT INTO `ot_area_world` VALUES ('430224', '4', '茶陵县', '430200', '412400');
INSERT INTO `ot_area_world` VALUES ('430225', '4', '炎陵县', '430200', '412500');
INSERT INTO `ot_area_world` VALUES ('430281', '4', '醴陵市', '430200', '412200');
INSERT INTO `ot_area_world` VALUES ('430282', '4', '其它区', '430200', '');
INSERT INTO `ot_area_world` VALUES ('430300', '3', '湘潭市', '430000', '411100');
INSERT INTO `ot_area_world` VALUES ('430302', '4', '雨湖区', '430300', '411100');
INSERT INTO `ot_area_world` VALUES ('430304', '4', '岳塘区', '430300', '411101');
INSERT INTO `ot_area_world` VALUES ('430321', '4', '湘潭县', '430300', '411200');
INSERT INTO `ot_area_world` VALUES ('430381', '4', '湘乡市', '430300', '411400');
INSERT INTO `ot_area_world` VALUES ('430382', '4', '韶山市', '430300', '411300');
INSERT INTO `ot_area_world` VALUES ('430383', '4', '其它区', '430300', '');
INSERT INTO `ot_area_world` VALUES ('430400', '3', '衡阳市', '430000', '421000');
INSERT INTO `ot_area_world` VALUES ('430405', '4', '珠晖区', '430400', '421002');
INSERT INTO `ot_area_world` VALUES ('430406', '4', '雁峰区', '430400', '421001');
INSERT INTO `ot_area_world` VALUES ('430407', '4', '石鼓区', '430400', '421001');
INSERT INTO `ot_area_world` VALUES ('430408', '4', '蒸湘区', '430400', '421001');
INSERT INTO `ot_area_world` VALUES ('430412', '4', '南岳区', '430400', '421900');
INSERT INTO `ot_area_world` VALUES ('430421', '4', '衡阳县', '430400', '421200');
INSERT INTO `ot_area_world` VALUES ('430422', '4', '衡南县', '430400', '421100');
INSERT INTO `ot_area_world` VALUES ('430423', '4', '衡山县', '430400', '421300');
INSERT INTO `ot_area_world` VALUES ('430424', '4', '衡东县', '430400', '421400');
INSERT INTO `ot_area_world` VALUES ('430426', '4', '祁东县', '430400', '421600');
INSERT INTO `ot_area_world` VALUES ('430481', '4', '耒阳市', '430400', '421800');
INSERT INTO `ot_area_world` VALUES ('430482', '4', '常宁市', '430400', '421500');
INSERT INTO `ot_area_world` VALUES ('430483', '4', '其它区', '430400', '');
INSERT INTO `ot_area_world` VALUES ('430500', '3', '邵阳市', '430000', '422000');
INSERT INTO `ot_area_world` VALUES ('430502', '4', '双清区', '430500', '422001');
INSERT INTO `ot_area_world` VALUES ('430503', '4', '大祥区', '430500', '422000');
INSERT INTO `ot_area_world` VALUES ('430511', '4', '北塔区', '430500', '422001');
INSERT INTO `ot_area_world` VALUES ('430521', '4', '邵东县', '430500', '422800');
INSERT INTO `ot_area_world` VALUES ('430522', '4', '新邵县', '430500', '422900');
INSERT INTO `ot_area_world` VALUES ('430523', '4', '邵阳县', '430500', '422100');
INSERT INTO `ot_area_world` VALUES ('430524', '4', '隆回县', '430500', '422200');
INSERT INTO `ot_area_world` VALUES ('430525', '4', '洞口县', '430500', '422300');
INSERT INTO `ot_area_world` VALUES ('430527', '4', '绥宁县', '430500', '422600');
INSERT INTO `ot_area_world` VALUES ('430528', '4', '新宁县', '430500', '422700');
INSERT INTO `ot_area_world` VALUES ('430529', '4', '城步苗族自治县', '430500', '422500');
INSERT INTO `ot_area_world` VALUES ('430581', '4', '武冈市', '430500', '422400');
INSERT INTO `ot_area_world` VALUES ('430582', '4', '其它区', '430500', '');
INSERT INTO `ot_area_world` VALUES ('430600', '3', '岳阳市', '430000', '414000');
INSERT INTO `ot_area_world` VALUES ('430602', '4', '岳阳楼区', '430600', '414000');
INSERT INTO `ot_area_world` VALUES ('430603', '4', '云溪区', '430600', '414003');
INSERT INTO `ot_area_world` VALUES ('430611', '4', '君山区', '430600', '414005');
INSERT INTO `ot_area_world` VALUES ('430621', '4', '岳阳县', '430600', '414100');
INSERT INTO `ot_area_world` VALUES ('430623', '4', '华容县', '430600', '414200');
INSERT INTO `ot_area_world` VALUES ('430624', '4', '湘阴县', '430600', '414600');
INSERT INTO `ot_area_world` VALUES ('430626', '4', '平江县', '430600', '410400');
INSERT INTO `ot_area_world` VALUES ('430681', '4', '汨罗市', '430600', '414400');
INSERT INTO `ot_area_world` VALUES ('430682', '4', '临湘市', '430600', '414300');
INSERT INTO `ot_area_world` VALUES ('430683', '4', '其它区', '430600', '');
INSERT INTO `ot_area_world` VALUES ('430700', '3', '常德市', '430000', '415000');
INSERT INTO `ot_area_world` VALUES ('430702', '4', '武陵区', '430700', '415000');
INSERT INTO `ot_area_world` VALUES ('430703', '4', '鼎城区', '430700', '415100');
INSERT INTO `ot_area_world` VALUES ('430721', '4', '安乡县', '430700', '415600');
INSERT INTO `ot_area_world` VALUES ('430722', '4', '汉寿县', '430700', '415900');
INSERT INTO `ot_area_world` VALUES ('430723', '4', '澧县', '430700', '415500');
INSERT INTO `ot_area_world` VALUES ('430724', '4', '临澧县', '430700', '415200');
INSERT INTO `ot_area_world` VALUES ('430725', '4', '桃源县', '430700', '415700');
INSERT INTO `ot_area_world` VALUES ('430726', '4', '石门县', '430700', '415300');
INSERT INTO `ot_area_world` VALUES ('430781', '4', '津市市', '430700', '415400');
INSERT INTO `ot_area_world` VALUES ('430782', '4', '其它区', '430700', '');
INSERT INTO `ot_area_world` VALUES ('430800', '3', '张家界市', '430000', '427000');
INSERT INTO `ot_area_world` VALUES ('430802', '4', '永定区', '430800', '427000');
INSERT INTO `ot_area_world` VALUES ('430811', '4', '武陵源区', '430800', '427400');
INSERT INTO `ot_area_world` VALUES ('430821', '4', '慈利县', '430800', '427200');
INSERT INTO `ot_area_world` VALUES ('430822', '4', '桑植县', '430800', '427100');
INSERT INTO `ot_area_world` VALUES ('430823', '4', '其它区', '430800', '');
INSERT INTO `ot_area_world` VALUES ('430900', '3', '益阳市', '430000', '413000');
INSERT INTO `ot_area_world` VALUES ('430902', '4', '资阳区', '430900', '413000');
INSERT INTO `ot_area_world` VALUES ('430903', '4', '赫山区', '430900', '413002');
INSERT INTO `ot_area_world` VALUES ('430921', '4', '南县', '430900', '413200');
INSERT INTO `ot_area_world` VALUES ('430922', '4', '桃江县', '430900', '413400');
INSERT INTO `ot_area_world` VALUES ('430923', '4', '安化县', '430900', '413500');
INSERT INTO `ot_area_world` VALUES ('430981', '4', '沅江市', '430900', '413100');
INSERT INTO `ot_area_world` VALUES ('430982', '4', '其它区', '430900', '');
INSERT INTO `ot_area_world` VALUES ('431000', '3', '郴州市', '430000', '423000');
INSERT INTO `ot_area_world` VALUES ('431002', '4', '北湖区', '431000', '423000');
INSERT INTO `ot_area_world` VALUES ('431003', '4', '苏仙区', '431000', '423000');
INSERT INTO `ot_area_world` VALUES ('431021', '4', '桂阳县', '431000', '424400');
INSERT INTO `ot_area_world` VALUES ('431022', '4', '宜章县', '431000', '424200');
INSERT INTO `ot_area_world` VALUES ('431023', '4', '永兴县', '431000', '423300');
INSERT INTO `ot_area_world` VALUES ('431024', '4', '嘉禾县', '431000', '424500');
INSERT INTO `ot_area_world` VALUES ('431025', '4', '临武县', '431000', '424300');
INSERT INTO `ot_area_world` VALUES ('431026', '4', '汝城县', '431000', '424100');
INSERT INTO `ot_area_world` VALUES ('431027', '4', '桂东县', '431000', '423500');
INSERT INTO `ot_area_world` VALUES ('431028', '4', '安仁县', '431000', '423600');
INSERT INTO `ot_area_world` VALUES ('431081', '4', '资兴市', '431000', '423400');
INSERT INTO `ot_area_world` VALUES ('431082', '4', '其它区', '431000', '');
INSERT INTO `ot_area_world` VALUES ('431100', '3', '永州市', '430000', '425000');
INSERT INTO `ot_area_world` VALUES ('431102', '4', '零陵区', '431100', '425007');
INSERT INTO `ot_area_world` VALUES ('431103', '4', '冷水滩区', '431100', '425000');
INSERT INTO `ot_area_world` VALUES ('431121', '4', '祁阳县', '431100', '426100');
INSERT INTO `ot_area_world` VALUES ('431122', '4', '东安县', '431100', '425900');
INSERT INTO `ot_area_world` VALUES ('431123', '4', '双牌县', '431100', '425200');
INSERT INTO `ot_area_world` VALUES ('431124', '4', '道县', '431100', '425300');
INSERT INTO `ot_area_world` VALUES ('431125', '4', '江永县', '431100', '425400');
INSERT INTO `ot_area_world` VALUES ('431126', '4', '宁远县', '431100', '425600');
INSERT INTO `ot_area_world` VALUES ('431127', '4', '蓝山县', '431100', '425800');
INSERT INTO `ot_area_world` VALUES ('431128', '4', '新田县', '431100', '425700');
INSERT INTO `ot_area_world` VALUES ('431129', '4', '江华瑶族自治县', '431100', '425500');
INSERT INTO `ot_area_world` VALUES ('431130', '4', '其它区', '431100', '');
INSERT INTO `ot_area_world` VALUES ('431200', '3', '怀化市', '430000', '418000');
INSERT INTO `ot_area_world` VALUES ('431202', '4', '鹤城区', '431200', '418000');
INSERT INTO `ot_area_world` VALUES ('431221', '4', '中方县', '431200', '418005');
INSERT INTO `ot_area_world` VALUES ('431222', '4', '沅陵县', '431200', '419600');
INSERT INTO `ot_area_world` VALUES ('431223', '4', '辰溪县', '431200', '419500');
INSERT INTO `ot_area_world` VALUES ('431224', '4', '溆浦县', '431200', '419300');
INSERT INTO `ot_area_world` VALUES ('431225', '4', '会同县', '431200', '418300');
INSERT INTO `ot_area_world` VALUES ('431226', '4', '麻阳苗族自治县', '431200', '419400');
INSERT INTO `ot_area_world` VALUES ('431227', '4', '新晃侗族自治县', '431200', '419200');
INSERT INTO `ot_area_world` VALUES ('431228', '4', '芷江侗族自治县', '431200', '419100');
INSERT INTO `ot_area_world` VALUES ('431229', '4', '靖州苗族侗族自治县', '431200', '418400');
INSERT INTO `ot_area_world` VALUES ('431230', '4', '通道侗族自治县', '431200', '418500');
INSERT INTO `ot_area_world` VALUES ('431281', '4', '洪江市', '431200', '418200');
INSERT INTO `ot_area_world` VALUES ('431282', '4', '其它区', '431200', '');
INSERT INTO `ot_area_world` VALUES ('431300', '3', '娄底市', '430000', '417000');
INSERT INTO `ot_area_world` VALUES ('431302', '4', '娄星区', '431300', '417000');
INSERT INTO `ot_area_world` VALUES ('431321', '4', '双峰县', '431300', '417700');
INSERT INTO `ot_area_world` VALUES ('431322', '4', '新化县', '431300', '417600');
INSERT INTO `ot_area_world` VALUES ('431381', '4', '冷水江市', '431300', '417500');
INSERT INTO `ot_area_world` VALUES ('431382', '4', '涟源市', '431300', '417100');
INSERT INTO `ot_area_world` VALUES ('431383', '4', '其它区', '431300', '');
INSERT INTO `ot_area_world` VALUES ('433100', '3', '湘西土家族苗族自治州', '430000', '416000');
INSERT INTO `ot_area_world` VALUES ('433101', '4', '吉首市', '433100', '416000');
INSERT INTO `ot_area_world` VALUES ('433122', '4', '泸溪县', '433100', '416100');
INSERT INTO `ot_area_world` VALUES ('433123', '4', '凤凰县', '433100', '416200');
INSERT INTO `ot_area_world` VALUES ('433124', '4', '花垣县', '433100', '416400');
INSERT INTO `ot_area_world` VALUES ('433125', '4', '保靖县', '433100', '416500');
INSERT INTO `ot_area_world` VALUES ('433126', '4', '古丈县', '433100', '416300');
INSERT INTO `ot_area_world` VALUES ('433127', '4', '永顺县', '433100', '416700');
INSERT INTO `ot_area_world` VALUES ('433130', '4', '龙山县', '433100', '416800');
INSERT INTO `ot_area_world` VALUES ('433131', '4', '其它区', '433100', '');
INSERT INTO `ot_area_world` VALUES ('440000', '2', '广东省', '1', '');
INSERT INTO `ot_area_world` VALUES ('440100', '3', '广州市', '440000', '510000');
INSERT INTO `ot_area_world` VALUES ('440103', '4', '荔湾区', '440100', '510145');
INSERT INTO `ot_area_world` VALUES ('440104', '4', '越秀区', '440100', '510180');
INSERT INTO `ot_area_world` VALUES ('440105', '4', '海珠区', '440100', '510220');
INSERT INTO `ot_area_world` VALUES ('440106', '4', '天河区', '440100', '510510');
INSERT INTO `ot_area_world` VALUES ('440111', '4', '白云区', '440100', '510440');
INSERT INTO `ot_area_world` VALUES ('440112', '4', '黄埔区', '440100', '510700');
INSERT INTO `ot_area_world` VALUES ('440113', '4', '番禺区', '440100', '511400');
INSERT INTO `ot_area_world` VALUES ('440114', '4', '花都区', '440100', '510800');
INSERT INTO `ot_area_world` VALUES ('440115', '4', '南沙区', '440100', '');
INSERT INTO `ot_area_world` VALUES ('440116', '4', '萝岗区', '440100', '');
INSERT INTO `ot_area_world` VALUES ('440183', '4', '增城市', '440100', '511300');
INSERT INTO `ot_area_world` VALUES ('440184', '4', '从化市', '440100', '510900');
INSERT INTO `ot_area_world` VALUES ('440188', '4', '东山区', '440100', '');
INSERT INTO `ot_area_world` VALUES ('440189', '4', '其它区', '440100', '');
INSERT INTO `ot_area_world` VALUES ('440200', '3', '韶关市', '440000', '512000');
INSERT INTO `ot_area_world` VALUES ('440203', '4', '武江区', '440200', '512026');
INSERT INTO `ot_area_world` VALUES ('440204', '4', '浈江区', '440200', '512023');
INSERT INTO `ot_area_world` VALUES ('440205', '4', '曲江区', '440200', '512100');
INSERT INTO `ot_area_world` VALUES ('440222', '4', '始兴县', '440200', '512500');
INSERT INTO `ot_area_world` VALUES ('440224', '4', '仁化县', '440200', '512300');
INSERT INTO `ot_area_world` VALUES ('440229', '4', '翁源县', '440200', '512600');
INSERT INTO `ot_area_world` VALUES ('440232', '4', '乳源瑶族自治县', '440200', '512700');
INSERT INTO `ot_area_world` VALUES ('440233', '4', '新丰县', '440200', '511100');
INSERT INTO `ot_area_world` VALUES ('440281', '4', '乐昌市', '440200', '512200');
INSERT INTO `ot_area_world` VALUES ('440282', '4', '南雄市', '440200', '512400');
INSERT INTO `ot_area_world` VALUES ('440283', '4', '其它区', '440200', '');
INSERT INTO `ot_area_world` VALUES ('440300', '3', '深圳市', '440000', '518000');
INSERT INTO `ot_area_world` VALUES ('440303', '4', '罗湖区', '440300', '518002');
INSERT INTO `ot_area_world` VALUES ('440304', '4', '福田区', '440300', '518031');
INSERT INTO `ot_area_world` VALUES ('440305', '4', '南山区', '440300', '518052');
INSERT INTO `ot_area_world` VALUES ('440306', '4', '宝安区', '440300', '518101');
INSERT INTO `ot_area_world` VALUES ('440307', '4', '龙岗区', '440300', '518116');
INSERT INTO `ot_area_world` VALUES ('440308', '4', '盐田区', '440300', '518083');
INSERT INTO `ot_area_world` VALUES ('440309', '4', '其它区', '440300', '');
INSERT INTO `ot_area_world` VALUES ('440400', '3', '珠海市', '440000', '519000');
INSERT INTO `ot_area_world` VALUES ('440402', '4', '香洲区', '440400', '519000');
INSERT INTO `ot_area_world` VALUES ('440403', '4', '斗门区', '440400', '519100');
INSERT INTO `ot_area_world` VALUES ('440404', '4', '金湾区', '440400', '519090');
INSERT INTO `ot_area_world` VALUES ('440486', '4', '金唐区', '440400', '');
INSERT INTO `ot_area_world` VALUES ('440487', '4', '南湾区', '440400', '');
INSERT INTO `ot_area_world` VALUES ('440488', '4', '其它区', '440400', '');
INSERT INTO `ot_area_world` VALUES ('440500', '3', '汕头市', '440000', '515000');
INSERT INTO `ot_area_world` VALUES ('440507', '4', '龙湖区', '440500', '515041');
INSERT INTO `ot_area_world` VALUES ('440511', '4', '金平区', '440500', '515041');
INSERT INTO `ot_area_world` VALUES ('440512', '4', '濠江区', '440500', '515071');
INSERT INTO `ot_area_world` VALUES ('440513', '4', '潮阳区', '440500', '515100');
INSERT INTO `ot_area_world` VALUES ('440514', '4', '潮南区', '440500', '515144');
INSERT INTO `ot_area_world` VALUES ('440515', '4', '澄海区', '440500', '515800');
INSERT INTO `ot_area_world` VALUES ('440523', '4', '南澳县', '440500', '515900');
INSERT INTO `ot_area_world` VALUES ('440524', '4', '其它区', '440500', '');
INSERT INTO `ot_area_world` VALUES ('440600', '3', '佛山市', '440000', '528000');
INSERT INTO `ot_area_world` VALUES ('440604', '4', '禅城区', '440600', '528000');
INSERT INTO `ot_area_world` VALUES ('440605', '4', '南海区', '440600', '528200');
INSERT INTO `ot_area_world` VALUES ('440606', '4', '顺德区', '440600', '528300');
INSERT INTO `ot_area_world` VALUES ('440607', '4', '三水区', '440600', '528100');
INSERT INTO `ot_area_world` VALUES ('440608', '4', '高明区', '440600', '528500');
INSERT INTO `ot_area_world` VALUES ('440609', '4', '其它区', '440600', '');
INSERT INTO `ot_area_world` VALUES ('440700', '3', '江门市', '440000', '529000');
INSERT INTO `ot_area_world` VALUES ('440703', '4', '蓬江区', '440700', '529051');
INSERT INTO `ot_area_world` VALUES ('440704', '4', '江海区', '440700', '529000');
INSERT INTO `ot_area_world` VALUES ('440705', '4', '新会区', '440700', '529100');
INSERT INTO `ot_area_world` VALUES ('440781', '4', '台山市', '440700', '529200');
INSERT INTO `ot_area_world` VALUES ('440783', '4', '开平市', '440700', '529300');
INSERT INTO `ot_area_world` VALUES ('440784', '4', '鹤山市', '440700', '529700');
INSERT INTO `ot_area_world` VALUES ('440785', '4', '恩平市', '440700', '529400');
INSERT INTO `ot_area_world` VALUES ('440786', '4', '其它区', '440700', '');
INSERT INTO `ot_area_world` VALUES ('440800', '3', '湛江市', '440000', '524000');
INSERT INTO `ot_area_world` VALUES ('440802', '4', '赤坎区', '440800', '524033');
INSERT INTO `ot_area_world` VALUES ('440803', '4', '霞山区', '440800', '524002');
INSERT INTO `ot_area_world` VALUES ('440804', '4', '坡头区', '440800', '524057');
INSERT INTO `ot_area_world` VALUES ('440811', '4', '麻章区', '440800', '524003');
INSERT INTO `ot_area_world` VALUES ('440823', '4', '遂溪县', '440800', '524300');
INSERT INTO `ot_area_world` VALUES ('440825', '4', '徐闻县', '440800', '524100');
INSERT INTO `ot_area_world` VALUES ('440881', '4', '廉江市', '440800', '524400');
INSERT INTO `ot_area_world` VALUES ('440882', '4', '雷州市', '440800', '524200');
INSERT INTO `ot_area_world` VALUES ('440883', '4', '吴川市', '440800', '524500');
INSERT INTO `ot_area_world` VALUES ('440884', '4', '其它区', '440800', '');
INSERT INTO `ot_area_world` VALUES ('440900', '3', '茂名市', '440000', '525000');
INSERT INTO `ot_area_world` VALUES ('440902', '4', '茂南区', '440900', '525011');
INSERT INTO `ot_area_world` VALUES ('440903', '4', '茂港区', '440900', '525027');
INSERT INTO `ot_area_world` VALUES ('440923', '4', '电白县', '440900', '525400');
INSERT INTO `ot_area_world` VALUES ('440981', '4', '高州市', '440900', '525200');
INSERT INTO `ot_area_world` VALUES ('440982', '4', '化州市', '440900', '525100');
INSERT INTO `ot_area_world` VALUES ('440983', '4', '信宜市', '440900', '525300');
INSERT INTO `ot_area_world` VALUES ('440984', '4', '其它区', '440900', '');
INSERT INTO `ot_area_world` VALUES ('441200', '3', '肇庆市', '440000', '526000');
INSERT INTO `ot_area_world` VALUES ('441202', '4', '端州区', '441200', '526040');
INSERT INTO `ot_area_world` VALUES ('441203', '4', '鼎湖区', '441200', '526070');
INSERT INTO `ot_area_world` VALUES ('441223', '4', '广宁县', '441200', '526300');
INSERT INTO `ot_area_world` VALUES ('441224', '4', '怀集县', '441200', '526400');
INSERT INTO `ot_area_world` VALUES ('441225', '4', '封开县', '441200', '526500');
INSERT INTO `ot_area_world` VALUES ('441226', '4', '德庆县', '441200', '526600');
INSERT INTO `ot_area_world` VALUES ('441283', '4', '高要市', '441200', '526100');
INSERT INTO `ot_area_world` VALUES ('441284', '4', '四会市', '441200', '526200');
INSERT INTO `ot_area_world` VALUES ('441285', '4', '其它区', '441200', '');
INSERT INTO `ot_area_world` VALUES ('441300', '3', '惠州市', '440000', '516000');
INSERT INTO `ot_area_world` VALUES ('441302', '4', '惠城区', '441300', '516001');
INSERT INTO `ot_area_world` VALUES ('441303', '4', '惠阳区', '441300', '516200');
INSERT INTO `ot_area_world` VALUES ('441322', '4', '博罗县', '441300', '516100');
INSERT INTO `ot_area_world` VALUES ('441323', '4', '惠东县', '441300', '516300');
INSERT INTO `ot_area_world` VALUES ('441324', '4', '龙门县', '441300', '516800');
INSERT INTO `ot_area_world` VALUES ('441325', '4', '其它区', '441300', '');
INSERT INTO `ot_area_world` VALUES ('441400', '3', '梅州市', '440000', '514000');
INSERT INTO `ot_area_world` VALUES ('441402', '4', '梅江区', '441400', '514000');
INSERT INTO `ot_area_world` VALUES ('441421', '4', '梅县', '441400', '514700');
INSERT INTO `ot_area_world` VALUES ('441422', '4', '大埔县', '441400', '514200');
INSERT INTO `ot_area_world` VALUES ('441423', '4', '丰顺县', '441400', '514300');
INSERT INTO `ot_area_world` VALUES ('441424', '4', '五华县', '441400', '514400');
INSERT INTO `ot_area_world` VALUES ('441426', '4', '平远县', '441400', '514600');
INSERT INTO `ot_area_world` VALUES ('441427', '4', '蕉岭县', '441400', '514100');
INSERT INTO `ot_area_world` VALUES ('441481', '4', '兴宁市', '441400', '514500');
INSERT INTO `ot_area_world` VALUES ('441482', '4', '其它区', '441400', '');
INSERT INTO `ot_area_world` VALUES ('441500', '3', '汕尾市', '440000', '516600');
INSERT INTO `ot_area_world` VALUES ('441502', '4', '城区', '441500', '516601');
INSERT INTO `ot_area_world` VALUES ('441521', '4', '海丰县', '441500', '516400');
INSERT INTO `ot_area_world` VALUES ('441523', '4', '陆河县', '441500', '516700');
INSERT INTO `ot_area_world` VALUES ('441581', '4', '陆丰市', '441500', '516500');
INSERT INTO `ot_area_world` VALUES ('441582', '4', '其它区', '441500', '');
INSERT INTO `ot_area_world` VALUES ('441600', '3', '河源市', '440000', '517000');
INSERT INTO `ot_area_world` VALUES ('441602', '4', '源城区', '441600', '517000');
INSERT INTO `ot_area_world` VALUES ('441621', '4', '紫金县', '441600', '517400');
INSERT INTO `ot_area_world` VALUES ('441622', '4', '龙川县', '441600', '517300');
INSERT INTO `ot_area_world` VALUES ('441623', '4', '连平县', '441600', '517100');
INSERT INTO `ot_area_world` VALUES ('441624', '4', '和平县', '441600', '517200');
INSERT INTO `ot_area_world` VALUES ('441625', '4', '东源县', '441600', '517500');
INSERT INTO `ot_area_world` VALUES ('441626', '4', '其它区', '441600', '');
INSERT INTO `ot_area_world` VALUES ('441700', '3', '阳江市', '440000', '529500');
INSERT INTO `ot_area_world` VALUES ('441702', '4', '江城区', '441700', '529525');
INSERT INTO `ot_area_world` VALUES ('441721', '4', '阳西县', '441700', '529800');
INSERT INTO `ot_area_world` VALUES ('441723', '4', '阳东县', '441700', '529931');
INSERT INTO `ot_area_world` VALUES ('441781', '4', '阳春市', '441700', '529600');
INSERT INTO `ot_area_world` VALUES ('441782', '4', '其它区', '441700', '');
INSERT INTO `ot_area_world` VALUES ('441800', '3', '清远市', '440000', '511500');
INSERT INTO `ot_area_world` VALUES ('441802', '4', '清城区', '441800', '511500');
INSERT INTO `ot_area_world` VALUES ('441821', '4', '佛冈县', '441800', '511600');
INSERT INTO `ot_area_world` VALUES ('441823', '4', '阳山县', '441800', '513100');
INSERT INTO `ot_area_world` VALUES ('441825', '4', '连山壮族瑶族自治县', '441800', '513200');
INSERT INTO `ot_area_world` VALUES ('441826', '4', '连南瑶族自治县', '441800', '513300');
INSERT INTO `ot_area_world` VALUES ('441827', '4', '清新县', '441800', '511800');
INSERT INTO `ot_area_world` VALUES ('441881', '4', '英德市', '441800', '513000');
INSERT INTO `ot_area_world` VALUES ('441882', '4', '连州市', '441800', '513400');
INSERT INTO `ot_area_world` VALUES ('441883', '4', '其它区', '441800', '');
INSERT INTO `ot_area_world` VALUES ('441900', '3', '东莞市', '440000', '523000');
INSERT INTO `ot_area_world` VALUES ('442000', '3', '中山市', '440000', '528400');
INSERT INTO `ot_area_world` VALUES ('445100', '3', '潮州市', '440000', '521000');
INSERT INTO `ot_area_world` VALUES ('445102', '4', '湘桥区', '445100', '521000');
INSERT INTO `ot_area_world` VALUES ('445121', '4', '潮安县', '445100', '515600');
INSERT INTO `ot_area_world` VALUES ('445122', '4', '饶平县', '445100', '515700');
INSERT INTO `ot_area_world` VALUES ('445185', '4', '枫溪区', '445100', '');
INSERT INTO `ot_area_world` VALUES ('445186', '4', '其它区', '445100', '');
INSERT INTO `ot_area_world` VALUES ('445200', '3', '揭阳市', '440000', '522000');
INSERT INTO `ot_area_world` VALUES ('445202', '4', '榕城区', '445200', '522095');
INSERT INTO `ot_area_world` VALUES ('445221', '4', '揭东县', '445200', '515500');
INSERT INTO `ot_area_world` VALUES ('445222', '4', '揭西县', '445200', '515400');
INSERT INTO `ot_area_world` VALUES ('445224', '4', '惠来县', '445200', '515200');
INSERT INTO `ot_area_world` VALUES ('445281', '4', '普宁市', '445200', '515300');
INSERT INTO `ot_area_world` VALUES ('445284', '4', '东山区', '445200', '');
INSERT INTO `ot_area_world` VALUES ('445285', '4', '其它区', '445200', '');
INSERT INTO `ot_area_world` VALUES ('445300', '3', '云浮市', '440000', '527300');
INSERT INTO `ot_area_world` VALUES ('445302', '4', '云城区', '445300', '527300');
INSERT INTO `ot_area_world` VALUES ('445321', '4', '新兴县', '445300', '527400');
INSERT INTO `ot_area_world` VALUES ('445322', '4', '郁南县', '445300', '527100');
INSERT INTO `ot_area_world` VALUES ('445323', '4', '云安县', '445300', '527500');
INSERT INTO `ot_area_world` VALUES ('445381', '4', '罗定市', '445300', '527200');
INSERT INTO `ot_area_world` VALUES ('445382', '4', '其它区', '445300', '');
INSERT INTO `ot_area_world` VALUES ('450000', '2', '广西壮族自治区', '1', '');
INSERT INTO `ot_area_world` VALUES ('450100', '3', '南宁市', '450000', '530000');
INSERT INTO `ot_area_world` VALUES ('450102', '4', '兴宁区', '450100', '530012');
INSERT INTO `ot_area_world` VALUES ('450103', '4', '青秀区', '450100', '530022');
INSERT INTO `ot_area_world` VALUES ('450105', '4', '江南区', '450100', '530031');
INSERT INTO `ot_area_world` VALUES ('450107', '4', '西乡塘区', '450100', '530001');
INSERT INTO `ot_area_world` VALUES ('450108', '4', '良庆区', '450100', '530200');
INSERT INTO `ot_area_world` VALUES ('450109', '4', '邕宁区', '450100', '530200');
INSERT INTO `ot_area_world` VALUES ('450122', '4', '武鸣县', '450100', '530100');
INSERT INTO `ot_area_world` VALUES ('450123', '4', '隆安县', '450100', '532700');
INSERT INTO `ot_area_world` VALUES ('450124', '4', '马山县', '450100', '530600');
INSERT INTO `ot_area_world` VALUES ('450125', '4', '上林县', '450100', '530500');
INSERT INTO `ot_area_world` VALUES ('450126', '4', '宾阳县', '450100', '530400');
INSERT INTO `ot_area_world` VALUES ('450127', '4', '横县', '450100', '530300');
INSERT INTO `ot_area_world` VALUES ('450128', '4', '其它区', '450100', '');
INSERT INTO `ot_area_world` VALUES ('450200', '3', '柳州市', '450000', '545000');
INSERT INTO `ot_area_world` VALUES ('450202', '4', '城中区', '450200', '545001');
INSERT INTO `ot_area_world` VALUES ('450203', '4', '鱼峰区', '450200', '545005');
INSERT INTO `ot_area_world` VALUES ('450204', '4', '柳南区', '450200', '545005');
INSERT INTO `ot_area_world` VALUES ('450205', '4', '柳北区', '450200', '545001');
INSERT INTO `ot_area_world` VALUES ('450221', '4', '柳江县', '450200', '545100');
INSERT INTO `ot_area_world` VALUES ('450222', '4', '柳城县', '450200', '545200');
INSERT INTO `ot_area_world` VALUES ('450223', '4', '鹿寨县', '450200', '545600');
INSERT INTO `ot_area_world` VALUES ('450224', '4', '融安县', '450200', '545400');
INSERT INTO `ot_area_world` VALUES ('450225', '4', '融水苗族自治县', '450200', '545300');
INSERT INTO `ot_area_world` VALUES ('450226', '4', '三江侗族自治县', '450200', '545500');
INSERT INTO `ot_area_world` VALUES ('450227', '4', '其它区', '450200', '');
INSERT INTO `ot_area_world` VALUES ('450300', '3', '桂林市', '450000', '541000');
INSERT INTO `ot_area_world` VALUES ('450302', '4', '秀峰区', '450300', '541001');
INSERT INTO `ot_area_world` VALUES ('450303', '4', '叠彩区', '450300', '541001');
INSERT INTO `ot_area_world` VALUES ('450304', '4', '象山区', '450300', '541002');
INSERT INTO `ot_area_world` VALUES ('450305', '4', '七星区', '450300', '541004');
INSERT INTO `ot_area_world` VALUES ('450311', '4', '雁山区', '450300', '541006');
INSERT INTO `ot_area_world` VALUES ('450321', '4', '阳朔县', '450300', '541900');
INSERT INTO `ot_area_world` VALUES ('450322', '4', '临桂县', '450300', '541100');
INSERT INTO `ot_area_world` VALUES ('450323', '4', '灵川县', '450300', '541200');
INSERT INTO `ot_area_world` VALUES ('450324', '4', '全州县', '450300', '541500');
INSERT INTO `ot_area_world` VALUES ('450325', '4', '兴安县', '450300', '541300');
INSERT INTO `ot_area_world` VALUES ('450326', '4', '永福县', '450300', '541800');
INSERT INTO `ot_area_world` VALUES ('450327', '4', '灌阳县', '450300', '541600');
INSERT INTO `ot_area_world` VALUES ('450328', '4', '龙胜各族自治县', '450300', '541700');
INSERT INTO `ot_area_world` VALUES ('450329', '4', '资源县', '450300', '541400');
INSERT INTO `ot_area_world` VALUES ('450330', '4', '平乐县', '450300', '542400');
INSERT INTO `ot_area_world` VALUES ('450331', '4', '荔浦县', '450300', '546600');
INSERT INTO `ot_area_world` VALUES ('450332', '4', '恭城瑶族自治县', '450300', '542500');
INSERT INTO `ot_area_world` VALUES ('450333', '4', '其它区', '450300', '');
INSERT INTO `ot_area_world` VALUES ('450400', '3', '梧州市', '450000', '543000');
INSERT INTO `ot_area_world` VALUES ('450403', '4', '万秀区', '450400', '543000');
INSERT INTO `ot_area_world` VALUES ('450404', '4', '蝶山区', '450400', '543002');
INSERT INTO `ot_area_world` VALUES ('450405', '4', '长洲区', '450400', '543002');
INSERT INTO `ot_area_world` VALUES ('450421', '4', '苍梧县', '450400', '543100');
INSERT INTO `ot_area_world` VALUES ('450422', '4', '藤县', '450400', '543300');
INSERT INTO `ot_area_world` VALUES ('450423', '4', '蒙山县', '450400', '546700');
INSERT INTO `ot_area_world` VALUES ('450481', '4', '岑溪市', '450400', '543200');
INSERT INTO `ot_area_world` VALUES ('450482', '4', '其它区', '450400', '');
INSERT INTO `ot_area_world` VALUES ('450500', '3', '北海市', '450000', '536000');
INSERT INTO `ot_area_world` VALUES ('450502', '4', '海城区', '450500', '536000');
INSERT INTO `ot_area_world` VALUES ('450503', '4', '银海区', '450500', '536000');
INSERT INTO `ot_area_world` VALUES ('450512', '4', '铁山港区', '450500', '536017');
INSERT INTO `ot_area_world` VALUES ('450521', '4', '合浦县', '450500', '536100');
INSERT INTO `ot_area_world` VALUES ('450522', '4', '其它区', '450500', '');
INSERT INTO `ot_area_world` VALUES ('450600', '3', '防城港市', '450000', '538000');
INSERT INTO `ot_area_world` VALUES ('450602', '4', '港口区', '450600', '538001');
INSERT INTO `ot_area_world` VALUES ('450603', '4', '防城区', '450600', '538021');
INSERT INTO `ot_area_world` VALUES ('450621', '4', '上思县', '450600', '535500');
INSERT INTO `ot_area_world` VALUES ('450681', '4', '东兴市', '450600', '538100');
INSERT INTO `ot_area_world` VALUES ('450682', '4', '其它区', '450600', '');
INSERT INTO `ot_area_world` VALUES ('450700', '3', '钦州市', '450000', '535000');
INSERT INTO `ot_area_world` VALUES ('450702', '4', '钦南区', '450700', '535000');
INSERT INTO `ot_area_world` VALUES ('450703', '4', '钦北区', '450700', '535000');
INSERT INTO `ot_area_world` VALUES ('450721', '4', '灵山县', '450700', '535400');
INSERT INTO `ot_area_world` VALUES ('450722', '4', '浦北县', '450700', '535300');
INSERT INTO `ot_area_world` VALUES ('450723', '4', '其它区', '450700', '');
INSERT INTO `ot_area_world` VALUES ('450800', '3', '贵港市', '450000', '537100');
INSERT INTO `ot_area_world` VALUES ('450802', '4', '港北区', '450800', '537100');
INSERT INTO `ot_area_world` VALUES ('450803', '4', '港南区', '450800', '537132');
INSERT INTO `ot_area_world` VALUES ('450804', '4', '覃塘区', '450800', '537121');
INSERT INTO `ot_area_world` VALUES ('450821', '4', '平南县', '450800', '537300');
INSERT INTO `ot_area_world` VALUES ('450881', '4', '桂平市', '450800', '537200');
INSERT INTO `ot_area_world` VALUES ('450882', '4', '其它区', '450800', '');
INSERT INTO `ot_area_world` VALUES ('450900', '3', '玉林市', '450000', '537000');
INSERT INTO `ot_area_world` VALUES ('450902', '4', '玉州区', '450900', '537000');
INSERT INTO `ot_area_world` VALUES ('450921', '4', '容县', '450900', '537500');
INSERT INTO `ot_area_world` VALUES ('450922', '4', '陆川县', '450900', '537700');
INSERT INTO `ot_area_world` VALUES ('450923', '4', '博白县', '450900', '537600');
INSERT INTO `ot_area_world` VALUES ('450924', '4', '兴业县', '450900', '537800');
INSERT INTO `ot_area_world` VALUES ('450981', '4', '北流市', '450900', '537400');
INSERT INTO `ot_area_world` VALUES ('450982', '4', '其它区', '450900', '');
INSERT INTO `ot_area_world` VALUES ('451000', '3', '百色市', '450000', '533000');
INSERT INTO `ot_area_world` VALUES ('451002', '4', '右江区', '451000', '533000');
INSERT INTO `ot_area_world` VALUES ('451021', '4', '田阳县', '451000', '533600');
INSERT INTO `ot_area_world` VALUES ('451022', '4', '田东县', '451000', '531500');
INSERT INTO `ot_area_world` VALUES ('451023', '4', '平果县', '451000', '531400');
INSERT INTO `ot_area_world` VALUES ('451024', '4', '德保县', '451000', '533700');
INSERT INTO `ot_area_world` VALUES ('451025', '4', '靖西县', '451000', '533800');
INSERT INTO `ot_area_world` VALUES ('451026', '4', '那坡县', '451000', '533900');
INSERT INTO `ot_area_world` VALUES ('451027', '4', '凌云县', '451000', '533100');
INSERT INTO `ot_area_world` VALUES ('451028', '4', '乐业县', '451000', '533200');
INSERT INTO `ot_area_world` VALUES ('451029', '4', '田林县', '451000', '533300');
INSERT INTO `ot_area_world` VALUES ('451030', '4', '西林县', '451000', '533500');
INSERT INTO `ot_area_world` VALUES ('451031', '4', '隆林各族自治县', '451000', '533400');
INSERT INTO `ot_area_world` VALUES ('451032', '4', '其它区', '451000', '');
INSERT INTO `ot_area_world` VALUES ('451100', '3', '贺州市', '450000', '542800');
INSERT INTO `ot_area_world` VALUES ('451102', '4', '八步区', '451100', '542800');
INSERT INTO `ot_area_world` VALUES ('451121', '4', '昭平县', '451100', '546800');
INSERT INTO `ot_area_world` VALUES ('451122', '4', '钟山县', '451100', '542600');
INSERT INTO `ot_area_world` VALUES ('451123', '4', '富川瑶族自治县', '451100', '542700');
INSERT INTO `ot_area_world` VALUES ('451124', '4', '其它区', '451100', '');
INSERT INTO `ot_area_world` VALUES ('451200', '3', '河池市', '450000', '547000');
INSERT INTO `ot_area_world` VALUES ('451202', '4', '金城江区', '451200', '547000');
INSERT INTO `ot_area_world` VALUES ('451221', '4', '南丹县', '451200', '547200');
INSERT INTO `ot_area_world` VALUES ('451222', '4', '天峨县', '451200', '547300');
INSERT INTO `ot_area_world` VALUES ('451223', '4', '凤山县', '451200', '547600');
INSERT INTO `ot_area_world` VALUES ('451224', '4', '东兰县', '451200', '547400');
INSERT INTO `ot_area_world` VALUES ('451225', '4', '罗城仫佬族自治县', '451200', '546400');
INSERT INTO `ot_area_world` VALUES ('451226', '4', '环江毛南族自治县', '451200', '547100');
INSERT INTO `ot_area_world` VALUES ('451227', '4', '巴马瑶族自治县', '451200', '547500');
INSERT INTO `ot_area_world` VALUES ('451228', '4', '都安瑶族自治县', '451200', '530700');
INSERT INTO `ot_area_world` VALUES ('451229', '4', '大化瑶族自治县', '451200', '530800');
INSERT INTO `ot_area_world` VALUES ('451281', '4', '宜州市', '451200', '546300');
INSERT INTO `ot_area_world` VALUES ('451282', '4', '其它区', '451200', '');
INSERT INTO `ot_area_world` VALUES ('451300', '3', '来宾市', '450000', '546100');
INSERT INTO `ot_area_world` VALUES ('451302', '4', '兴宾区', '451300', '546100');
INSERT INTO `ot_area_world` VALUES ('451321', '4', '忻城县', '451300', '546200');
INSERT INTO `ot_area_world` VALUES ('451322', '4', '象州县', '451300', '545800');
INSERT INTO `ot_area_world` VALUES ('451323', '4', '武宣县', '451300', '545900');
INSERT INTO `ot_area_world` VALUES ('451324', '4', '金秀瑶族自治县', '451300', '545700');
INSERT INTO `ot_area_world` VALUES ('451381', '4', '合山市', '451300', '546500');
INSERT INTO `ot_area_world` VALUES ('451382', '4', '其它区', '451300', '');
INSERT INTO `ot_area_world` VALUES ('451400', '3', '崇左市', '450000', '532200');
INSERT INTO `ot_area_world` VALUES ('451402', '4', '江洲区', '451400', '532200');
INSERT INTO `ot_area_world` VALUES ('451421', '4', '扶绥县', '451400', '532100');
INSERT INTO `ot_area_world` VALUES ('451422', '4', '宁明县', '451400', '532500');
INSERT INTO `ot_area_world` VALUES ('451423', '4', '龙州县', '451400', '532400');
INSERT INTO `ot_area_world` VALUES ('451424', '4', '大新县', '451400', '532300');
INSERT INTO `ot_area_world` VALUES ('451425', '4', '天等县', '451400', '532800');
INSERT INTO `ot_area_world` VALUES ('451481', '4', '凭祥市', '451400', '532600');
INSERT INTO `ot_area_world` VALUES ('451482', '4', '其它区', '451400', '');
INSERT INTO `ot_area_world` VALUES ('460000', '2', '海南省', '1', '');
INSERT INTO `ot_area_world` VALUES ('460100', '3', '海口市', '460000', '570000');
INSERT INTO `ot_area_world` VALUES ('460105', '4', '秀英区', '460100', '570311');
INSERT INTO `ot_area_world` VALUES ('460106', '4', '龙华区', '460100', '570105');
INSERT INTO `ot_area_world` VALUES ('460107', '4', '琼山区', '460100', '571100');
INSERT INTO `ot_area_world` VALUES ('460108', '4', '美兰区', '460100', '570203');
INSERT INTO `ot_area_world` VALUES ('460109', '4', '其它区', '460100', '');
INSERT INTO `ot_area_world` VALUES ('460200', '3', '三亚市', '460000', '572000');
INSERT INTO `ot_area_world` VALUES ('469001', '4', '五指山市', '460000', '572200');
INSERT INTO `ot_area_world` VALUES ('469002', '4', '琼海市', '460000', '571400');
INSERT INTO `ot_area_world` VALUES ('469003', '4', '儋州市', '460000', '571700');
INSERT INTO `ot_area_world` VALUES ('469005', '4', '文昌市', '460000', '571300');
INSERT INTO `ot_area_world` VALUES ('469006', '4', '万宁市', '460000', '571500');
INSERT INTO `ot_area_world` VALUES ('469007', '4', '东方市', '460000', '572600');
INSERT INTO `ot_area_world` VALUES ('469025', '4', '定安县', '460000', '571200');
INSERT INTO `ot_area_world` VALUES ('469026', '4', '屯昌县', '460000', '571600');
INSERT INTO `ot_area_world` VALUES ('469027', '4', '澄迈县', '460000', '571900');
INSERT INTO `ot_area_world` VALUES ('469028', '4', '临高县', '460000', '571800');
INSERT INTO `ot_area_world` VALUES ('469030', '4', '白沙黎族自治县', '460000', '572800');
INSERT INTO `ot_area_world` VALUES ('469031', '4', '昌江黎族自治县', '460000', '572700');
INSERT INTO `ot_area_world` VALUES ('469033', '4', '乐东黎族自治县', '460000', '572500');
INSERT INTO `ot_area_world` VALUES ('469034', '4', '陵水黎族自治县', '460000', '572400');
INSERT INTO `ot_area_world` VALUES ('469035', '4', '保亭黎族苗族自治县', '460000', '572300');
INSERT INTO `ot_area_world` VALUES ('469036', '4', '琼中黎族苗族自治县', '460000', '572900');
INSERT INTO `ot_area_world` VALUES ('469037', '4', '西沙群岛', '460000', '573100');
INSERT INTO `ot_area_world` VALUES ('469038', '4', '南沙群岛', '460000', '573100');
INSERT INTO `ot_area_world` VALUES ('469039', '4', '中沙群岛的岛礁及其海域', '460000', '573100');
INSERT INTO `ot_area_world` VALUES ('471004', '4', '高新区', '410300', '');
INSERT INTO `ot_area_world` VALUES ('471005', '4', '其它区', '410300', '');
INSERT INTO `ot_area_world` VALUES ('500000', '2', '重庆', '1', '');
INSERT INTO `ot_area_world` VALUES ('500100', '3', '重庆市', '500000', '400000');
INSERT INTO `ot_area_world` VALUES ('500101', '4', '万州区', '500100', '404000');
INSERT INTO `ot_area_world` VALUES ('500102', '4', '涪陵区', '500100', '408000');
INSERT INTO `ot_area_world` VALUES ('500103', '4', '渝中区', '500100', '400012');
INSERT INTO `ot_area_world` VALUES ('500104', '4', '大渡口区', '500100', '400084');
INSERT INTO `ot_area_world` VALUES ('500105', '4', '江北区', '500100', '400021');
INSERT INTO `ot_area_world` VALUES ('500106', '4', '沙坪坝区', '500100', '400020');
INSERT INTO `ot_area_world` VALUES ('500107', '4', '九龙坡区', '500100', '400039');
INSERT INTO `ot_area_world` VALUES ('500108', '4', '南岸区', '500100', '400060');
INSERT INTO `ot_area_world` VALUES ('500109', '4', '北碚区', '500100', '400700');
INSERT INTO `ot_area_world` VALUES ('500110', '4', '万盛区', '500100', '400800');
INSERT INTO `ot_area_world` VALUES ('500111', '4', '双桥区', '500100', '400900');
INSERT INTO `ot_area_world` VALUES ('500112', '4', '渝北区', '500100', '401120');
INSERT INTO `ot_area_world` VALUES ('500113', '4', '巴南区', '500100', '401320');
INSERT INTO `ot_area_world` VALUES ('500114', '4', '黔江区', '500100', '409700');
INSERT INTO `ot_area_world` VALUES ('500115', '4', '长寿区', '500100', '401220');
INSERT INTO `ot_area_world` VALUES ('500222', '4', '綦江县', '500100', '401420');
INSERT INTO `ot_area_world` VALUES ('500223', '4', '潼南县', '500100', '402660');
INSERT INTO `ot_area_world` VALUES ('500224', '4', '铜梁县', '500100', '402560');
INSERT INTO `ot_area_world` VALUES ('500225', '4', '大足县', '500100', '402360');
INSERT INTO `ot_area_world` VALUES ('500226', '4', '荣昌县', '500100', '402460');
INSERT INTO `ot_area_world` VALUES ('500227', '4', '璧山县', '500100', '402760');
INSERT INTO `ot_area_world` VALUES ('500228', '4', '梁平县', '500100', '405200');
INSERT INTO `ot_area_world` VALUES ('500229', '4', '城口县', '500100', '405900');
INSERT INTO `ot_area_world` VALUES ('500230', '4', '丰都县', '500100', '408200');
INSERT INTO `ot_area_world` VALUES ('500231', '4', '垫江县', '500100', '408300');
INSERT INTO `ot_area_world` VALUES ('500232', '4', '武隆县', '500100', '408500');
INSERT INTO `ot_area_world` VALUES ('500233', '4', '忠县', '500100', '404300');
INSERT INTO `ot_area_world` VALUES ('500234', '4', '开县', '500100', '405400');
INSERT INTO `ot_area_world` VALUES ('500235', '4', '云阳县', '500100', '404500');
INSERT INTO `ot_area_world` VALUES ('500236', '4', '奉节县', '500100', '404600');
INSERT INTO `ot_area_world` VALUES ('500237', '4', '巫山县', '500100', '404700');
INSERT INTO `ot_area_world` VALUES ('500238', '4', '巫溪县', '500100', '405800');
INSERT INTO `ot_area_world` VALUES ('500240', '4', '石柱土家族自治县', '500100', '409100');
INSERT INTO `ot_area_world` VALUES ('500241', '4', '秀山土家族苗族自治县', '500100', '409900');
INSERT INTO `ot_area_world` VALUES ('500242', '4', '酉阳土家族苗族自治县', '500100', '409800');
INSERT INTO `ot_area_world` VALUES ('500243', '4', '彭水苗族土家族自治县', '500100', '409600');
INSERT INTO `ot_area_world` VALUES ('500381', '4', '江津区', '500100', '402260');
INSERT INTO `ot_area_world` VALUES ('500382', '4', '合川区', '500100', '401520');
INSERT INTO `ot_area_world` VALUES ('500383', '4', '永川区', '500100', '402160');
INSERT INTO `ot_area_world` VALUES ('500384', '4', '南川区', '500100', '408400');
INSERT INTO `ot_area_world` VALUES ('500385', '4', '其它区', '500100', '');
INSERT INTO `ot_area_world` VALUES ('510000', '2', '四川省', '1', '');
INSERT INTO `ot_area_world` VALUES ('510100', '3', '成都市', '510000', '610000');
INSERT INTO `ot_area_world` VALUES ('510104', '4', '锦江区', '510100', '610011');
INSERT INTO `ot_area_world` VALUES ('510105', '4', '青羊区', '510100', '610031');
INSERT INTO `ot_area_world` VALUES ('510106', '4', '金牛区', '510100', '610036');
INSERT INTO `ot_area_world` VALUES ('510107', '4', '武侯区', '510100', '610041');
INSERT INTO `ot_area_world` VALUES ('510108', '4', '成华区', '510100', '610066');
INSERT INTO `ot_area_world` VALUES ('510112', '4', '龙泉驿区', '510100', '610100');
INSERT INTO `ot_area_world` VALUES ('510113', '4', '青白江区', '510100', '610300');
INSERT INTO `ot_area_world` VALUES ('510114', '4', '新都区', '510100', '610500');
INSERT INTO `ot_area_world` VALUES ('510115', '4', '温江区', '510100', '611130');
INSERT INTO `ot_area_world` VALUES ('510121', '4', '金堂县', '510100', '610400');
INSERT INTO `ot_area_world` VALUES ('510122', '4', '双流县', '510100', '610200');
INSERT INTO `ot_area_world` VALUES ('510124', '4', '郫县', '510100', '611730');
INSERT INTO `ot_area_world` VALUES ('510129', '4', '大邑县', '510100', '611330');
INSERT INTO `ot_area_world` VALUES ('510131', '4', '蒲江县', '510100', '611630');
INSERT INTO `ot_area_world` VALUES ('510132', '4', '新津县', '510100', '611430');
INSERT INTO `ot_area_world` VALUES ('510181', '4', '都江堰市', '510100', '611830');
INSERT INTO `ot_area_world` VALUES ('510182', '4', '彭州市', '510100', '611930');
INSERT INTO `ot_area_world` VALUES ('510183', '4', '邛崃市', '510100', '611530');
INSERT INTO `ot_area_world` VALUES ('510184', '4', '崇州市', '510100', '611230');
INSERT INTO `ot_area_world` VALUES ('510185', '4', '其它区', '510100', '');
INSERT INTO `ot_area_world` VALUES ('510300', '3', '自贡市', '510000', '643000');
INSERT INTO `ot_area_world` VALUES ('510302', '4', '自流井区', '510300', '643000');
INSERT INTO `ot_area_world` VALUES ('510303', '4', '贡井区', '510300', '643020');
INSERT INTO `ot_area_world` VALUES ('510304', '4', '大安区', '510300', '643010');
INSERT INTO `ot_area_world` VALUES ('510311', '4', '沿滩区', '510300', '643030');
INSERT INTO `ot_area_world` VALUES ('510321', '4', '荣县', '510300', '643100');
INSERT INTO `ot_area_world` VALUES ('510322', '4', '富顺县', '510300', '643200');
INSERT INTO `ot_area_world` VALUES ('510323', '4', '其它区', '510300', '');
INSERT INTO `ot_area_world` VALUES ('510400', '3', '攀枝花市', '510000', '617000');
INSERT INTO `ot_area_world` VALUES ('510402', '4', '东区', '510400', '617067');
INSERT INTO `ot_area_world` VALUES ('510403', '4', '西区', '510400', '617012');
INSERT INTO `ot_area_world` VALUES ('510411', '4', '仁和区', '510400', '617061');
INSERT INTO `ot_area_world` VALUES ('510421', '4', '米易县', '510400', '617200');
INSERT INTO `ot_area_world` VALUES ('510422', '4', '盐边县', '510400', '617100');
INSERT INTO `ot_area_world` VALUES ('510423', '4', '其它区', '510400', '');
INSERT INTO `ot_area_world` VALUES ('510500', '3', '泸州市', '510000', '646000');
INSERT INTO `ot_area_world` VALUES ('510502', '4', '江阳区', '510500', '646000');
INSERT INTO `ot_area_world` VALUES ('510503', '4', '纳溪区', '510500', '646300');
INSERT INTO `ot_area_world` VALUES ('510504', '4', '龙马潭区', '510500', '646000');
INSERT INTO `ot_area_world` VALUES ('510521', '4', '泸县', '510500', '646100');
INSERT INTO `ot_area_world` VALUES ('510522', '4', '合江县', '510500', '646200');
INSERT INTO `ot_area_world` VALUES ('510524', '4', '叙永县', '510500', '646400');
INSERT INTO `ot_area_world` VALUES ('510525', '4', '古蔺县', '510500', '646500');
INSERT INTO `ot_area_world` VALUES ('510526', '4', '其它区', '510500', '');
INSERT INTO `ot_area_world` VALUES ('510600', '3', '德阳市', '510000', '618000');
INSERT INTO `ot_area_world` VALUES ('510603', '4', '旌阳区', '510600', '618000');
INSERT INTO `ot_area_world` VALUES ('510623', '4', '中江县', '510600', '618300');
INSERT INTO `ot_area_world` VALUES ('510626', '4', '罗江县', '510600', '618500');
INSERT INTO `ot_area_world` VALUES ('510681', '4', '广汉市', '510600', '618300');
INSERT INTO `ot_area_world` VALUES ('510682', '4', '什邡市', '510600', '618400');
INSERT INTO `ot_area_world` VALUES ('510683', '4', '绵竹市', '510600', '618200');
INSERT INTO `ot_area_world` VALUES ('510684', '4', '其它区', '510600', '');
INSERT INTO `ot_area_world` VALUES ('510700', '3', '绵阳市', '510000', '621000');
INSERT INTO `ot_area_world` VALUES ('510703', '4', '涪城区', '510700', '621000');
INSERT INTO `ot_area_world` VALUES ('510704', '4', '游仙区', '510700', '621022');
INSERT INTO `ot_area_world` VALUES ('510722', '4', '三台县', '510700', '621100');
INSERT INTO `ot_area_world` VALUES ('510723', '4', '盐亭县', '510700', '621600');
INSERT INTO `ot_area_world` VALUES ('510724', '4', '安县', '510700', '622650');
INSERT INTO `ot_area_world` VALUES ('510725', '4', '梓潼县', '510700', '622150');
INSERT INTO `ot_area_world` VALUES ('510726', '4', '北川羌族自治县', '510700', '622750');
INSERT INTO `ot_area_world` VALUES ('510727', '4', '平武县', '510700', '621550');
INSERT INTO `ot_area_world` VALUES ('510751', '4', '高新区', '510700', '');
INSERT INTO `ot_area_world` VALUES ('510781', '4', '江油市', '510700', '621700');
INSERT INTO `ot_area_world` VALUES ('510782', '4', '其它区', '510700', '');
INSERT INTO `ot_area_world` VALUES ('510800', '3', '广元市', '510000', '628000');
INSERT INTO `ot_area_world` VALUES ('510802', '4', '利州区', '510800', '628017');
INSERT INTO `ot_area_world` VALUES ('510811', '4', '元坝区', '510800', '628021');
INSERT INTO `ot_area_world` VALUES ('510812', '4', '朝天区', '510800', '628012');
INSERT INTO `ot_area_world` VALUES ('510821', '4', '旺苍县', '510800', '628200');
INSERT INTO `ot_area_world` VALUES ('510822', '4', '青川县', '510800', '628100');
INSERT INTO `ot_area_world` VALUES ('510823', '4', '剑阁县', '510800', '628300');
INSERT INTO `ot_area_world` VALUES ('510824', '4', '苍溪县', '510800', '628400');
INSERT INTO `ot_area_world` VALUES ('510825', '4', '其它区', '510800', '');
INSERT INTO `ot_area_world` VALUES ('510900', '3', '遂宁市', '510000', '629000');
INSERT INTO `ot_area_world` VALUES ('510903', '4', '船山区', '510900', '629000');
INSERT INTO `ot_area_world` VALUES ('510904', '4', '安居区', '510900', '629000');
INSERT INTO `ot_area_world` VALUES ('510921', '4', '蓬溪县', '510900', '629100');
INSERT INTO `ot_area_world` VALUES ('510922', '4', '射洪县', '510900', '629200');
INSERT INTO `ot_area_world` VALUES ('510923', '4', '大英县', '510900', '629300');
INSERT INTO `ot_area_world` VALUES ('510924', '4', '其它区', '510900', '');
INSERT INTO `ot_area_world` VALUES ('511000', '3', '内江市', '510000', '641000');
INSERT INTO `ot_area_world` VALUES ('511002', '4', '市中区', '511000', '641000');
INSERT INTO `ot_area_world` VALUES ('511011', '4', '东兴区', '511000', '641100');
INSERT INTO `ot_area_world` VALUES ('511024', '4', '威远县', '511000', '642450');
INSERT INTO `ot_area_world` VALUES ('511025', '4', '资中县', '511000', '641200');
INSERT INTO `ot_area_world` VALUES ('511028', '4', '隆昌县', '511000', '642150');
INSERT INTO `ot_area_world` VALUES ('511029', '4', '其它区', '511000', '');
INSERT INTO `ot_area_world` VALUES ('511100', '3', '乐山市', '510000', '614000');
INSERT INTO `ot_area_world` VALUES ('511102', '4', '市中区', '511100', '614000');
INSERT INTO `ot_area_world` VALUES ('511111', '4', '沙湾区', '511100', '614900');
INSERT INTO `ot_area_world` VALUES ('511112', '4', '五通桥区', '511100', '614800');
INSERT INTO `ot_area_world` VALUES ('511113', '4', '金口河区', '511100', '614700');
INSERT INTO `ot_area_world` VALUES ('511123', '4', '犍为县', '511100', '614400');
INSERT INTO `ot_area_world` VALUES ('511124', '4', '井研县', '511100', '613100');
INSERT INTO `ot_area_world` VALUES ('511126', '4', '夹江县', '511100', '614100');
INSERT INTO `ot_area_world` VALUES ('511129', '4', '沐川县', '511100', '614500');
INSERT INTO `ot_area_world` VALUES ('511132', '4', '峨边彝族自治县', '511100', '614300');
INSERT INTO `ot_area_world` VALUES ('511133', '4', '马边彝族自治县', '511100', '614600');
INSERT INTO `ot_area_world` VALUES ('511181', '4', '峨眉山市', '511100', '614200');
INSERT INTO `ot_area_world` VALUES ('511182', '4', '其它区', '511100', '');
INSERT INTO `ot_area_world` VALUES ('511300', '3', '南充市', '510000', '637000');
INSERT INTO `ot_area_world` VALUES ('511302', '4', '顺庆区', '511300', '637500');
INSERT INTO `ot_area_world` VALUES ('511303', '4', '高坪区', '511300', '637100');
INSERT INTO `ot_area_world` VALUES ('511304', '4', '嘉陵区', '511300', '637900');
INSERT INTO `ot_area_world` VALUES ('511321', '4', '南部县', '511300', '637300');
INSERT INTO `ot_area_world` VALUES ('511322', '4', '营山县', '511300', '638150');
INSERT INTO `ot_area_world` VALUES ('511323', '4', '蓬安县', '511300', '638250');
INSERT INTO `ot_area_world` VALUES ('511324', '4', '仪陇县', '511300', '637600');
INSERT INTO `ot_area_world` VALUES ('511325', '4', '西充县', '511300', '637200');
INSERT INTO `ot_area_world` VALUES ('511381', '4', '阆中市', '511300', '637400');
INSERT INTO `ot_area_world` VALUES ('511382', '4', '其它区', '511300', '');
INSERT INTO `ot_area_world` VALUES ('511400', '3', '眉山市', '510000', '620000');
INSERT INTO `ot_area_world` VALUES ('511402', '4', '东坡区', '511400', '620010');
INSERT INTO `ot_area_world` VALUES ('511421', '4', '仁寿县', '511400', '620500');
INSERT INTO `ot_area_world` VALUES ('511422', '4', '彭山县', '511400', '620860');
INSERT INTO `ot_area_world` VALUES ('511423', '4', '洪雅县', '511400', '620360');
INSERT INTO `ot_area_world` VALUES ('511424', '4', '丹棱县', '511400', '620200');
INSERT INTO `ot_area_world` VALUES ('511425', '4', '青神县', '511400', '620460');
INSERT INTO `ot_area_world` VALUES ('511426', '4', '其它区', '511400', '');
INSERT INTO `ot_area_world` VALUES ('511500', '3', '宜宾市', '510000', '644000');
INSERT INTO `ot_area_world` VALUES ('511502', '4', '翠屏区', '511500', '644000');
INSERT INTO `ot_area_world` VALUES ('511521', '4', '宜宾县', '511500', '644600');
INSERT INTO `ot_area_world` VALUES ('511522', '4', '南溪县', '511500', '644100');
INSERT INTO `ot_area_world` VALUES ('511523', '4', '江安县', '511500', '644200');
INSERT INTO `ot_area_world` VALUES ('511524', '4', '长宁县', '511500', '644300');
INSERT INTO `ot_area_world` VALUES ('511525', '4', '高县', '511500', '645150');
INSERT INTO `ot_area_world` VALUES ('511526', '4', '珙县', '511500', '644500');
INSERT INTO `ot_area_world` VALUES ('511527', '4', '筠连县', '511500', '645250');
INSERT INTO `ot_area_world` VALUES ('511528', '4', '兴文县', '511500', '644400');
INSERT INTO `ot_area_world` VALUES ('511529', '4', '屏山县', '511500', '645350');
INSERT INTO `ot_area_world` VALUES ('511530', '4', '其它区', '511500', '');
INSERT INTO `ot_area_world` VALUES ('511600', '3', '广安市', '510000', '638000');
INSERT INTO `ot_area_world` VALUES ('511602', '4', '广安区', '511600', '638550');
INSERT INTO `ot_area_world` VALUES ('511621', '4', '岳池县', '511600', '638300');
INSERT INTO `ot_area_world` VALUES ('511622', '4', '武胜县', '511600', '638420');
INSERT INTO `ot_area_world` VALUES ('511623', '4', '邻水县', '511600', '638520');
INSERT INTO `ot_area_world` VALUES ('511681', '4', '华蓥市', '511600', '638650');
INSERT INTO `ot_area_world` VALUES ('511682', '4', '市辖区', '511600', '');
INSERT INTO `ot_area_world` VALUES ('511683', '4', '其它区', '511600', '');
INSERT INTO `ot_area_world` VALUES ('511700', '3', '达州市', '510000', '635000');
INSERT INTO `ot_area_world` VALUES ('511702', '4', '通川区', '511700', '635000');
INSERT INTO `ot_area_world` VALUES ('511721', '4', '达县', '511700', '635006');
INSERT INTO `ot_area_world` VALUES ('511722', '4', '宣汉县', '511700', '636150');
INSERT INTO `ot_area_world` VALUES ('511723', '4', '开江县', '511700', '636250');
INSERT INTO `ot_area_world` VALUES ('511724', '4', '大竹县', '511700', '635100');
INSERT INTO `ot_area_world` VALUES ('511725', '4', '渠县', '511700', '635200');
INSERT INTO `ot_area_world` VALUES ('511781', '4', '万源市', '511700', '636350');
INSERT INTO `ot_area_world` VALUES ('511782', '4', '其它区', '511700', '');
INSERT INTO `ot_area_world` VALUES ('511800', '3', '雅安市', '510000', '625000');
INSERT INTO `ot_area_world` VALUES ('511802', '4', '雨城区', '511800', '625000');
INSERT INTO `ot_area_world` VALUES ('511821', '4', '名山县', '511800', '625100');
INSERT INTO `ot_area_world` VALUES ('511822', '4', '荥经县', '511800', '625200');
INSERT INTO `ot_area_world` VALUES ('511823', '4', '汉源县', '511800', '625300');
INSERT INTO `ot_area_world` VALUES ('511824', '4', '石棉县', '511800', '625400');
INSERT INTO `ot_area_world` VALUES ('511825', '4', '天全县', '511800', '625500');
INSERT INTO `ot_area_world` VALUES ('511826', '4', '芦山县', '511800', '625600');
INSERT INTO `ot_area_world` VALUES ('511827', '4', '宝兴县', '511800', '625700');
INSERT INTO `ot_area_world` VALUES ('511828', '4', '其它区', '511800', '');
INSERT INTO `ot_area_world` VALUES ('511900', '3', '巴中市', '510000', '636000');
INSERT INTO `ot_area_world` VALUES ('511902', '4', '巴州区', '511900', '636601');
INSERT INTO `ot_area_world` VALUES ('511921', '4', '通江县', '511900', '636700');
INSERT INTO `ot_area_world` VALUES ('511922', '4', '南江县', '511900', '636600');
INSERT INTO `ot_area_world` VALUES ('511923', '4', '平昌县', '511900', '636400');
INSERT INTO `ot_area_world` VALUES ('511924', '4', '其它区', '511900', '');
INSERT INTO `ot_area_world` VALUES ('512000', '3', '资阳市', '510000', '641300');
INSERT INTO `ot_area_world` VALUES ('512002', '4', '雁江区', '512000', '641300');
INSERT INTO `ot_area_world` VALUES ('512021', '4', '安岳县', '512000', '642350');
INSERT INTO `ot_area_world` VALUES ('512022', '4', '乐至县', '512000', '641500');
INSERT INTO `ot_area_world` VALUES ('512081', '4', '简阳市', '512000', '641400');
INSERT INTO `ot_area_world` VALUES ('512082', '4', '其它区', '512000', '');
INSERT INTO `ot_area_world` VALUES ('513200', '3', '阿坝藏族羌族自治州', '510000', '');
INSERT INTO `ot_area_world` VALUES ('513221', '4', '汶川县', '513200', '623000');
INSERT INTO `ot_area_world` VALUES ('513222', '4', '理县', '513200', '632100');
INSERT INTO `ot_area_world` VALUES ('513223', '4', '茂县', '513200', '623200');
INSERT INTO `ot_area_world` VALUES ('513224', '4', '松潘县', '513200', '623300');
INSERT INTO `ot_area_world` VALUES ('513225', '4', '九寨沟县', '513200', '623400');
INSERT INTO `ot_area_world` VALUES ('513226', '4', '金川县', '513200', '624100');
INSERT INTO `ot_area_world` VALUES ('513227', '4', '小金县', '513200', '624200');
INSERT INTO `ot_area_world` VALUES ('513228', '4', '黑水县', '513200', '623500');
INSERT INTO `ot_area_world` VALUES ('513229', '4', '马尔康县', '513200', '624000');
INSERT INTO `ot_area_world` VALUES ('513230', '4', '壤塘县', '513200', '624300');
INSERT INTO `ot_area_world` VALUES ('513231', '4', '阿坝县', '513200', '624600');
INSERT INTO `ot_area_world` VALUES ('513232', '4', '若尔盖县', '513200', '624500');
INSERT INTO `ot_area_world` VALUES ('513233', '4', '红原县', '513200', '624400');
INSERT INTO `ot_area_world` VALUES ('513234', '4', '其它区', '513200', '');
INSERT INTO `ot_area_world` VALUES ('513300', '3', '甘孜藏族自治州', '510000', '');
INSERT INTO `ot_area_world` VALUES ('513321', '4', '康定县', '513300', '626000');
INSERT INTO `ot_area_world` VALUES ('513322', '4', '泸定县', '513300', '626100');
INSERT INTO `ot_area_world` VALUES ('513323', '4', '丹巴县', '513300', '626300');
INSERT INTO `ot_area_world` VALUES ('513324', '4', '九龙县', '513300', '626200');
INSERT INTO `ot_area_world` VALUES ('513325', '4', '雅江县', '513300', '627450');
INSERT INTO `ot_area_world` VALUES ('513326', '4', '道孚县', '513300', '626400');
INSERT INTO `ot_area_world` VALUES ('513327', '4', '炉霍县', '513300', '626500');
INSERT INTO `ot_area_world` VALUES ('513328', '4', '甘孜县', '513300', '626700');
INSERT INTO `ot_area_world` VALUES ('513329', '4', '新龙县', '513300', '626800');
INSERT INTO `ot_area_world` VALUES ('513330', '4', '德格县', '513300', '627250');
INSERT INTO `ot_area_world` VALUES ('513331', '4', '白玉县', '513300', '627150');
INSERT INTO `ot_area_world` VALUES ('513332', '4', '石渠县', '513300', '627350');
INSERT INTO `ot_area_world` VALUES ('513333', '4', '色达县', '513300', '626600');
INSERT INTO `ot_area_world` VALUES ('513334', '4', '理塘县', '513300', '627550');
INSERT INTO `ot_area_world` VALUES ('513335', '4', '巴塘县', '513300', '627650');
INSERT INTO `ot_area_world` VALUES ('513336', '4', '乡城县', '513300', '627850');
INSERT INTO `ot_area_world` VALUES ('513337', '4', '稻城县', '513300', '627750');
INSERT INTO `ot_area_world` VALUES ('513338', '4', '得荣县', '513300', '627950');
INSERT INTO `ot_area_world` VALUES ('513339', '4', '其它区', '513300', '');
INSERT INTO `ot_area_world` VALUES ('513400', '3', '凉山彝族自治州', '510000', '');
INSERT INTO `ot_area_world` VALUES ('513401', '4', '西昌市', '513400', '615000');
INSERT INTO `ot_area_world` VALUES ('513422', '4', '木里藏族自治县', '513400', '615800');
INSERT INTO `ot_area_world` VALUES ('513423', '4', '盐源县', '513400', '615700');
INSERT INTO `ot_area_world` VALUES ('513424', '4', '德昌县', '513400', '615500');
INSERT INTO `ot_area_world` VALUES ('513425', '4', '会理县', '513400', '615100');
INSERT INTO `ot_area_world` VALUES ('513426', '4', '会东县', '513400', '615200');
INSERT INTO `ot_area_world` VALUES ('513427', '4', '宁南县', '513400', '615400');
INSERT INTO `ot_area_world` VALUES ('513428', '4', '普格县', '513400', '615300');
INSERT INTO `ot_area_world` VALUES ('513429', '4', '布拖县', '513400', '616350');
INSERT INTO `ot_area_world` VALUES ('513430', '4', '金阳县', '513400', '616250');
INSERT INTO `ot_area_world` VALUES ('513431', '4', '昭觉县', '513400', '616150');
INSERT INTO `ot_area_world` VALUES ('513432', '4', '喜德县', '513400', '616750');
INSERT INTO `ot_area_world` VALUES ('513433', '4', '冕宁县', '513400', '615600');
INSERT INTO `ot_area_world` VALUES ('513434', '4', '越西县', '513400', '616650');
INSERT INTO `ot_area_world` VALUES ('513435', '4', '甘洛县', '513400', '616850');
INSERT INTO `ot_area_world` VALUES ('513436', '4', '美姑县', '513400', '616450');
INSERT INTO `ot_area_world` VALUES ('513437', '4', '雷波县', '513400', '616550');
INSERT INTO `ot_area_world` VALUES ('513438', '4', '其它区', '513400', '');
INSERT INTO `ot_area_world` VALUES ('520000', '2', '贵州省', '1', '');
INSERT INTO `ot_area_world` VALUES ('520100', '3', '贵阳市', '520000', '550000');
INSERT INTO `ot_area_world` VALUES ('520102', '4', '南明区', '520100', '550002');
INSERT INTO `ot_area_world` VALUES ('520103', '4', '云岩区', '520100', '550001');
INSERT INTO `ot_area_world` VALUES ('520111', '4', '花溪区', '520100', '550025');
INSERT INTO `ot_area_world` VALUES ('520112', '4', '乌当区', '520100', '550018');
INSERT INTO `ot_area_world` VALUES ('520113', '4', '白云区', '520100', '550014');
INSERT INTO `ot_area_world` VALUES ('520114', '4', '小河区', '520100', '550009');
INSERT INTO `ot_area_world` VALUES ('520121', '4', '开阳县', '520100', '550300');
INSERT INTO `ot_area_world` VALUES ('520122', '4', '息烽县', '520100', '551100');
INSERT INTO `ot_area_world` VALUES ('520123', '4', '修文县', '520100', '550200');
INSERT INTO `ot_area_world` VALUES ('520151', '4', '金阳开发区', '520100', '');
INSERT INTO `ot_area_world` VALUES ('520181', '4', '清镇市', '520100', '551400');
INSERT INTO `ot_area_world` VALUES ('520182', '4', '其它区', '520100', '');
INSERT INTO `ot_area_world` VALUES ('520200', '3', '六盘水市', '520000', '553000');
INSERT INTO `ot_area_world` VALUES ('520201', '4', '钟山区', '520200', '553000');
INSERT INTO `ot_area_world` VALUES ('520203', '4', '六枝特区', '520200', '553400');
INSERT INTO `ot_area_world` VALUES ('520221', '4', '水城县', '520200', '553600');
INSERT INTO `ot_area_world` VALUES ('520222', '4', '盘县', '520200', '561601');
INSERT INTO `ot_area_world` VALUES ('520223', '4', '其它区', '520200', '');
INSERT INTO `ot_area_world` VALUES ('520300', '3', '遵义市', '520000', '563000');
INSERT INTO `ot_area_world` VALUES ('520302', '4', '红花岗区', '520300', '563000');
INSERT INTO `ot_area_world` VALUES ('520303', '4', '汇川区', '520300', '563000');
INSERT INTO `ot_area_world` VALUES ('520321', '4', '遵义县', '520300', '563100');
INSERT INTO `ot_area_world` VALUES ('520322', '4', '桐梓县', '520300', '563200');
INSERT INTO `ot_area_world` VALUES ('520323', '4', '绥阳县', '520300', '563300');
INSERT INTO `ot_area_world` VALUES ('520324', '4', '正安县', '520300', '563400');
INSERT INTO `ot_area_world` VALUES ('520325', '4', '道真仡佬族苗族自治县', '520300', '563500');
INSERT INTO `ot_area_world` VALUES ('520326', '4', '务川仡佬族苗族自治县', '520300', '564300');
INSERT INTO `ot_area_world` VALUES ('520327', '4', '凤冈县', '520300', '564200');
INSERT INTO `ot_area_world` VALUES ('520328', '4', '湄潭县', '520300', '564100');
INSERT INTO `ot_area_world` VALUES ('520329', '4', '余庆县', '520300', '564400');
INSERT INTO `ot_area_world` VALUES ('520330', '4', '习水县', '520300', '564600');
INSERT INTO `ot_area_world` VALUES ('520381', '4', '赤水市', '520300', '564700');
INSERT INTO `ot_area_world` VALUES ('520382', '4', '仁怀市', '520300', '564500');
INSERT INTO `ot_area_world` VALUES ('520383', '4', '其它区', '520300', '');
INSERT INTO `ot_area_world` VALUES ('520400', '3', '安顺市', '520000', '561000');
INSERT INTO `ot_area_world` VALUES ('520402', '4', '西秀区', '520400', '561000');
INSERT INTO `ot_area_world` VALUES ('520421', '4', '平坝县', '520400', '561100');
INSERT INTO `ot_area_world` VALUES ('520422', '4', '普定县', '520400', '562100');
INSERT INTO `ot_area_world` VALUES ('520423', '4', '镇宁布依族苗族自治县', '520400', '561200');
INSERT INTO `ot_area_world` VALUES ('520424', '4', '关岭布依族苗族自治县', '520400', '561300');
INSERT INTO `ot_area_world` VALUES ('520425', '4', '紫云苗族布依族自治县', '520400', '550800');
INSERT INTO `ot_area_world` VALUES ('520426', '4', '其它区', '520400', '');
INSERT INTO `ot_area_world` VALUES ('522200', '3', '铜仁地区', '520000', '');
INSERT INTO `ot_area_world` VALUES ('522201', '4', '铜仁市', '522200', '554300');
INSERT INTO `ot_area_world` VALUES ('522222', '4', '江口县', '522200', '554400');
INSERT INTO `ot_area_world` VALUES ('522223', '4', '玉屏侗族自治县', '522200', '554000');
INSERT INTO `ot_area_world` VALUES ('522224', '4', '石阡县', '522200', '555100');
INSERT INTO `ot_area_world` VALUES ('522225', '4', '思南县', '522200', '565100');
INSERT INTO `ot_area_world` VALUES ('522226', '4', '印江土家族苗族自治县', '522200', '555200');
INSERT INTO `ot_area_world` VALUES ('522227', '4', '德江县', '522200', '565200');
INSERT INTO `ot_area_world` VALUES ('522228', '4', '沿河土家族自治县', '522200', '565300');
INSERT INTO `ot_area_world` VALUES ('522229', '4', '松桃苗族自治县', '522200', '554100');
INSERT INTO `ot_area_world` VALUES ('522230', '4', '万山特区', '522200', '554200');
INSERT INTO `ot_area_world` VALUES ('522231', '4', '其它区', '522200', '');
INSERT INTO `ot_area_world` VALUES ('522300', '3', '黔西南布依族苗族自治州', '520000', '');
INSERT INTO `ot_area_world` VALUES ('522301', '4', '兴义市', '522300', '562400');
INSERT INTO `ot_area_world` VALUES ('522322', '4', '兴仁县', '522300', '562300');
INSERT INTO `ot_area_world` VALUES ('522323', '4', '普安县', '522300', '561500');
INSERT INTO `ot_area_world` VALUES ('522324', '4', '晴隆县', '522300', '561400');
INSERT INTO `ot_area_world` VALUES ('522325', '4', '贞丰县', '522300', '562200');
INSERT INTO `ot_area_world` VALUES ('522326', '4', '望谟县', '522300', '552300');
INSERT INTO `ot_area_world` VALUES ('522327', '4', '册亨县', '522300', '552200');
INSERT INTO `ot_area_world` VALUES ('522328', '4', '安龙县', '522300', '552400');
INSERT INTO `ot_area_world` VALUES ('522329', '4', '其它区', '522300', '');
INSERT INTO `ot_area_world` VALUES ('522400', '3', '毕节地区', '520000', '');
INSERT INTO `ot_area_world` VALUES ('522401', '4', '毕节市', '522400', '551700');
INSERT INTO `ot_area_world` VALUES ('522422', '4', '大方县', '522400', '551600');
INSERT INTO `ot_area_world` VALUES ('522423', '4', '黔西县', '522400', '551500');
INSERT INTO `ot_area_world` VALUES ('522424', '4', '金沙县', '522400', '551800');
INSERT INTO `ot_area_world` VALUES ('522425', '4', '织金县', '522400', '552100');
INSERT INTO `ot_area_world` VALUES ('522426', '4', '纳雍县', '522400', '553300');
INSERT INTO `ot_area_world` VALUES ('522427', '4', '威宁彝族回族苗族自治县', '522400', '553100');
INSERT INTO `ot_area_world` VALUES ('522428', '4', '赫章县', '522400', '553200');
INSERT INTO `ot_area_world` VALUES ('522429', '4', '其它区', '522400', '');
INSERT INTO `ot_area_world` VALUES ('522600', '3', '黔东南苗族侗族自治州', '520000', '');
INSERT INTO `ot_area_world` VALUES ('522601', '4', '凯里市', '522600', '556000');
INSERT INTO `ot_area_world` VALUES ('522622', '4', '黄平县', '522600', '556100');
INSERT INTO `ot_area_world` VALUES ('522623', '4', '施秉县', '522600', '556200');
INSERT INTO `ot_area_world` VALUES ('522624', '4', '三穗县', '522600', '556500');
INSERT INTO `ot_area_world` VALUES ('522625', '4', '镇远县', '522600', '557700');
INSERT INTO `ot_area_world` VALUES ('522626', '4', '岑巩县', '522600', '557800');
INSERT INTO `ot_area_world` VALUES ('522627', '4', '天柱县', '522600', '556600');
INSERT INTO `ot_area_world` VALUES ('522628', '4', '锦屏县', '522600', '556700');
INSERT INTO `ot_area_world` VALUES ('522629', '4', '剑河县', '522600', '556400');
INSERT INTO `ot_area_world` VALUES ('522630', '4', '台江县', '522600', '556300');
INSERT INTO `ot_area_world` VALUES ('522631', '4', '黎平县', '522600', '557300');
INSERT INTO `ot_area_world` VALUES ('522632', '4', '榕江县', '522600', '557200');
INSERT INTO `ot_area_world` VALUES ('522633', '4', '从江县', '522600', '557400');
INSERT INTO `ot_area_world` VALUES ('522634', '4', '雷山县', '522600', '557100');
INSERT INTO `ot_area_world` VALUES ('522635', '4', '麻江县', '522600', '557600');
INSERT INTO `ot_area_world` VALUES ('522636', '4', '丹寨县', '522600', '557500');
INSERT INTO `ot_area_world` VALUES ('522637', '4', '其它区', '522600', '');
INSERT INTO `ot_area_world` VALUES ('522700', '3', '黔南布依族苗族自治州', '520000', '');
INSERT INTO `ot_area_world` VALUES ('522701', '4', '都匀市', '522700', '558000');
INSERT INTO `ot_area_world` VALUES ('522702', '4', '福泉市', '522700', '550500');
INSERT INTO `ot_area_world` VALUES ('522722', '4', '荔波县', '522700', '558400');
INSERT INTO `ot_area_world` VALUES ('522723', '4', '贵定县', '522700', '551300');
INSERT INTO `ot_area_world` VALUES ('522725', '4', '瓮安县', '522700', '550400');
INSERT INTO `ot_area_world` VALUES ('522726', '4', '独山县', '522700', '558200');
INSERT INTO `ot_area_world` VALUES ('522727', '4', '平塘县', '522700', '558300');
INSERT INTO `ot_area_world` VALUES ('522728', '4', '罗甸县', '522700', '550100');
INSERT INTO `ot_area_world` VALUES ('522729', '4', '长顺县', '522700', '550700');
INSERT INTO `ot_area_world` VALUES ('522730', '4', '龙里县', '522700', '551200');
INSERT INTO `ot_area_world` VALUES ('522731', '4', '惠水县', '522700', '550600');
INSERT INTO `ot_area_world` VALUES ('522732', '4', '三都水族自治县', '522700', '558100');
INSERT INTO `ot_area_world` VALUES ('522733', '4', '其它区', '522700', '');
INSERT INTO `ot_area_world` VALUES ('530000', '2', '云南省', '1', '');
INSERT INTO `ot_area_world` VALUES ('530100', '3', '昆明市', '530000', '650000');
INSERT INTO `ot_area_world` VALUES ('530102', '4', '五华区', '530100', '650032');
INSERT INTO `ot_area_world` VALUES ('530103', '4', '盘龙区', '530100', '650051');
INSERT INTO `ot_area_world` VALUES ('530111', '4', '官渡区', '530100', '650220');
INSERT INTO `ot_area_world` VALUES ('530112', '4', '西山区', '530100', '650100');
INSERT INTO `ot_area_world` VALUES ('530113', '4', '东川区', '530100', '654100');
INSERT INTO `ot_area_world` VALUES ('530121', '4', '呈贡县', '530100', '650500');
INSERT INTO `ot_area_world` VALUES ('530122', '4', '晋宁县', '530100', '650600');
INSERT INTO `ot_area_world` VALUES ('530124', '4', '富民县', '530100', '650400');
INSERT INTO `ot_area_world` VALUES ('530125', '4', '宜良县', '530100', '652100');
INSERT INTO `ot_area_world` VALUES ('530126', '4', '石林彝族自治县', '530100', '652200');
INSERT INTO `ot_area_world` VALUES ('530127', '4', '嵩明县', '530100', '651700');
INSERT INTO `ot_area_world` VALUES ('530128', '4', '禄劝彝族苗族自治县', '530100', '651500');
INSERT INTO `ot_area_world` VALUES ('530129', '4', '寻甸回族彝族自治县', '530100', '655200');
INSERT INTO `ot_area_world` VALUES ('530181', '4', '安宁市', '530100', '650300');
INSERT INTO `ot_area_world` VALUES ('530182', '4', '其它区', '530100', '');
INSERT INTO `ot_area_world` VALUES ('530300', '3', '曲靖市', '530000', '655000');
INSERT INTO `ot_area_world` VALUES ('530302', '4', '麒麟区', '530300', '655000');
INSERT INTO `ot_area_world` VALUES ('530321', '4', '马龙县', '530300', '655100');
INSERT INTO `ot_area_world` VALUES ('530322', '4', '陆良县', '530300', '655600');
INSERT INTO `ot_area_world` VALUES ('530323', '4', '师宗县', '530300', '655700');
INSERT INTO `ot_area_world` VALUES ('530324', '4', '罗平县', '530300', '655800');
INSERT INTO `ot_area_world` VALUES ('530325', '4', '富源县', '530300', '655500');
INSERT INTO `ot_area_world` VALUES ('530326', '4', '会泽县', '530300', '654200');
INSERT INTO `ot_area_world` VALUES ('530328', '4', '沾益县', '530300', '655331');
INSERT INTO `ot_area_world` VALUES ('530381', '4', '宣威市', '530300', '655400');
INSERT INTO `ot_area_world` VALUES ('530382', '4', '其它区', '530300', '');
INSERT INTO `ot_area_world` VALUES ('530400', '3', '玉溪市', '530000', '');
INSERT INTO `ot_area_world` VALUES ('530402', '4', '红塔区', '530400', '653100');
INSERT INTO `ot_area_world` VALUES ('530421', '4', '江川县', '530400', '652600');
INSERT INTO `ot_area_world` VALUES ('530422', '4', '澄江县', '530400', '652500');
INSERT INTO `ot_area_world` VALUES ('530423', '4', '通海县', '530400', '652700');
INSERT INTO `ot_area_world` VALUES ('530424', '4', '华宁县', '530400', '652800');
INSERT INTO `ot_area_world` VALUES ('530425', '4', '易门县', '530400', '651100');
INSERT INTO `ot_area_world` VALUES ('530426', '4', '峨山彝族自治县', '530400', '653200');
INSERT INTO `ot_area_world` VALUES ('530427', '4', '新平彝族傣族自治县', '530400', '653400');
INSERT INTO `ot_area_world` VALUES ('530428', '4', '元江哈尼族彝族傣族自治县', '530400', '653300');
INSERT INTO `ot_area_world` VALUES ('530429', '4', '其它区', '530400', '');
INSERT INTO `ot_area_world` VALUES ('530500', '3', '保山市', '530000', '');
INSERT INTO `ot_area_world` VALUES ('530502', '4', '隆阳区', '530500', '678000');
INSERT INTO `ot_area_world` VALUES ('530521', '4', '施甸县', '530500', '678200');
INSERT INTO `ot_area_world` VALUES ('530522', '4', '腾冲县', '530500', '679100');
INSERT INTO `ot_area_world` VALUES ('530523', '4', '龙陵县', '530500', '678300');
INSERT INTO `ot_area_world` VALUES ('530524', '4', '昌宁县', '530500', '678100');
INSERT INTO `ot_area_world` VALUES ('530525', '4', '其它区', '530500', '');
INSERT INTO `ot_area_world` VALUES ('530600', '3', '昭通市', '530000', '657000');
INSERT INTO `ot_area_world` VALUES ('530602', '4', '昭阳区', '530600', '657000');
INSERT INTO `ot_area_world` VALUES ('530621', '4', '鲁甸县', '530600', '657100');
INSERT INTO `ot_area_world` VALUES ('530622', '4', '巧家县', '530600', '654600');
INSERT INTO `ot_area_world` VALUES ('530623', '4', '盐津县', '530600', '657500');
INSERT INTO `ot_area_world` VALUES ('530624', '4', '大关县', '530600', '657400');
INSERT INTO `ot_area_world` VALUES ('530625', '4', '永善县', '530600', '657300');
INSERT INTO `ot_area_world` VALUES ('530626', '4', '绥江县', '530600', '657700');
INSERT INTO `ot_area_world` VALUES ('530627', '4', '镇雄县', '530600', '657200');
INSERT INTO `ot_area_world` VALUES ('530628', '4', '彝良县', '530600', '657600');
INSERT INTO `ot_area_world` VALUES ('530629', '4', '威信县', '530600', '657900');
INSERT INTO `ot_area_world` VALUES ('530630', '4', '水富县', '530600', '657800');
INSERT INTO `ot_area_world` VALUES ('530631', '4', '其它区', '530600', '');
INSERT INTO `ot_area_world` VALUES ('530700', '3', '丽江市', '530000', '');
INSERT INTO `ot_area_world` VALUES ('530702', '4', '古城区', '530700', '674100');
INSERT INTO `ot_area_world` VALUES ('530721', '4', '玉龙纳西族自治县', '530700', '674100');
INSERT INTO `ot_area_world` VALUES ('530722', '4', '永胜县', '530700', '674200');
INSERT INTO `ot_area_world` VALUES ('530723', '4', '华坪县', '530700', '674800');
INSERT INTO `ot_area_world` VALUES ('530724', '4', '宁蒗彝族自治县', '530700', '674300');
INSERT INTO `ot_area_world` VALUES ('530725', '4', '其它区', '530700', '');
INSERT INTO `ot_area_world` VALUES ('530800', '3', '普洱市', '530000', '665000');
INSERT INTO `ot_area_world` VALUES ('530802', '4', '思茅区', '530800', '665000');
INSERT INTO `ot_area_world` VALUES ('530821', '4', '宁洱哈尼族彝族自治县', '530800', '665100');
INSERT INTO `ot_area_world` VALUES ('530822', '4', '墨江哈尼族自治县', '530800', '654800');
INSERT INTO `ot_area_world` VALUES ('530823', '4', '景东彝族自治县', '530800', '676200');
INSERT INTO `ot_area_world` VALUES ('530824', '4', '景谷傣族彝族自治县', '530800', '666400');
INSERT INTO `ot_area_world` VALUES ('530825', '4', '镇沅彝族哈尼族拉祜族自治县', '530800', '666500');
INSERT INTO `ot_area_world` VALUES ('530826', '4', '江城哈尼族彝族自治县', '530800', '665900');
INSERT INTO `ot_area_world` VALUES ('530827', '4', '孟连傣族拉祜族佤族自治县', '530800', '665800');
INSERT INTO `ot_area_world` VALUES ('530828', '4', '澜沧拉祜族自治县', '530800', '665600');
INSERT INTO `ot_area_world` VALUES ('530829', '4', '西盟佤族自治县', '530800', '665700');
INSERT INTO `ot_area_world` VALUES ('530830', '4', '其它区', '530800', '');
INSERT INTO `ot_area_world` VALUES ('530900', '3', '临沧市', '530000', '');
INSERT INTO `ot_area_world` VALUES ('530902', '4', '临翔区', '530900', '677000');
INSERT INTO `ot_area_world` VALUES ('530921', '4', '凤庆县', '530900', '675900');
INSERT INTO `ot_area_world` VALUES ('530922', '4', '云县', '530900', '675800');
INSERT INTO `ot_area_world` VALUES ('530923', '4', '永德县', '530900', '677600');
INSERT INTO `ot_area_world` VALUES ('530924', '4', '镇康县', '530900', '677700');
INSERT INTO `ot_area_world` VALUES ('530925', '4', '双江拉祜族佤族布朗族傣族自治县', '530900', '677300');
INSERT INTO `ot_area_world` VALUES ('530926', '4', '耿马傣族佤族自治县', '530900', '677500');
INSERT INTO `ot_area_world` VALUES ('530927', '4', '沧源佤族自治县', '530900', '677400');
INSERT INTO `ot_area_world` VALUES ('530928', '4', '其它区', '530900', '');
INSERT INTO `ot_area_world` VALUES ('532300', '3', '楚雄彝族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('532301', '4', '楚雄市', '532300', '675000');
INSERT INTO `ot_area_world` VALUES ('532322', '4', '双柏县', '532300', '675100');
INSERT INTO `ot_area_world` VALUES ('532323', '4', '牟定县', '532300', '675500');
INSERT INTO `ot_area_world` VALUES ('532324', '4', '南华县', '532300', '675200');
INSERT INTO `ot_area_world` VALUES ('532325', '4', '姚安县', '532300', '675300');
INSERT INTO `ot_area_world` VALUES ('532326', '4', '大姚县', '532300', '675400');
INSERT INTO `ot_area_world` VALUES ('532327', '4', '永仁县', '532300', '651400');
INSERT INTO `ot_area_world` VALUES ('532328', '4', '元谋县', '532300', '651300');
INSERT INTO `ot_area_world` VALUES ('532329', '4', '武定县', '532300', '651600');
INSERT INTO `ot_area_world` VALUES ('532331', '4', '禄丰县', '532300', '651200');
INSERT INTO `ot_area_world` VALUES ('532332', '4', '其它区', '532300', '');
INSERT INTO `ot_area_world` VALUES ('532500', '3', '红河哈尼族彝族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('532501', '4', '个旧市', '532500', '661000');
INSERT INTO `ot_area_world` VALUES ('532502', '4', '开远市', '532500', '661600');
INSERT INTO `ot_area_world` VALUES ('532522', '4', '蒙自县', '532500', '661100');
INSERT INTO `ot_area_world` VALUES ('532523', '4', '屏边苗族自治县', '532500', '661200');
INSERT INTO `ot_area_world` VALUES ('532524', '4', '建水县', '532500', '654300');
INSERT INTO `ot_area_world` VALUES ('532525', '4', '石屏县', '532500', '662200');
INSERT INTO `ot_area_world` VALUES ('532526', '4', '弥勒县', '532500', '652300');
INSERT INTO `ot_area_world` VALUES ('532527', '4', '泸西县', '532500', '652400');
INSERT INTO `ot_area_world` VALUES ('532528', '4', '元阳县', '532500', '662400');
INSERT INTO `ot_area_world` VALUES ('532529', '4', '红河县', '532500', '654400');
INSERT INTO `ot_area_world` VALUES ('532530', '4', '金平苗族瑶族傣族自治县', '532500', '661500');
INSERT INTO `ot_area_world` VALUES ('532531', '4', '绿春县', '532500', '662500');
INSERT INTO `ot_area_world` VALUES ('532532', '4', '河口瑶族自治县', '532500', '661300');
INSERT INTO `ot_area_world` VALUES ('532533', '4', '其它区', '532500', '');
INSERT INTO `ot_area_world` VALUES ('532600', '3', '文山壮族苗族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('532621', '4', '文山县', '532600', '663000');
INSERT INTO `ot_area_world` VALUES ('532622', '4', '砚山县', '532600', '663100');
INSERT INTO `ot_area_world` VALUES ('532623', '4', '西畴县', '532600', '663500');
INSERT INTO `ot_area_world` VALUES ('532624', '4', '麻栗坡县', '532600', '663600');
INSERT INTO `ot_area_world` VALUES ('532625', '4', '马关县', '532600', '663700');
INSERT INTO `ot_area_world` VALUES ('532626', '4', '丘北县', '532600', '663200');
INSERT INTO `ot_area_world` VALUES ('532627', '4', '广南县', '532600', '663300');
INSERT INTO `ot_area_world` VALUES ('532628', '4', '富宁县', '532600', '663400');
INSERT INTO `ot_area_world` VALUES ('532629', '4', '其它区', '532600', '');
INSERT INTO `ot_area_world` VALUES ('532800', '3', '西双版纳傣族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('532801', '4', '景洪市', '532800', '666100');
INSERT INTO `ot_area_world` VALUES ('532822', '4', '勐海县', '532800', '666200');
INSERT INTO `ot_area_world` VALUES ('532823', '4', '勐腊县', '532800', '666300');
INSERT INTO `ot_area_world` VALUES ('532824', '4', '其它区', '532800', '');
INSERT INTO `ot_area_world` VALUES ('532900', '3', '大理白族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('532901', '4', '大理市', '532900', '671000');
INSERT INTO `ot_area_world` VALUES ('532922', '4', '漾濞彝族自治县', '532900', '672500');
INSERT INTO `ot_area_world` VALUES ('532923', '4', '祥云县', '532900', '672100');
INSERT INTO `ot_area_world` VALUES ('532924', '4', '宾川县', '532900', '671600');
INSERT INTO `ot_area_world` VALUES ('532925', '4', '弥渡县', '532900', '675600');
INSERT INTO `ot_area_world` VALUES ('532926', '4', '南涧彝族自治县', '532900', '675700');
INSERT INTO `ot_area_world` VALUES ('532927', '4', '巍山彝族回族自治县', '532900', '672400');
INSERT INTO `ot_area_world` VALUES ('532928', '4', '永平县', '532900', '672600');
INSERT INTO `ot_area_world` VALUES ('532929', '4', '云龙县', '532900', '672700');
INSERT INTO `ot_area_world` VALUES ('532930', '4', '洱源县', '532900', '671200');
INSERT INTO `ot_area_world` VALUES ('532931', '4', '剑川县', '532900', '671300');
INSERT INTO `ot_area_world` VALUES ('532932', '4', '鹤庆县', '532900', '671500');
INSERT INTO `ot_area_world` VALUES ('532933', '4', '其它区', '532900', '');
INSERT INTO `ot_area_world` VALUES ('533100', '3', '德宏傣族景颇族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('533102', '4', '瑞丽市', '533100', '678600');
INSERT INTO `ot_area_world` VALUES ('533103', '4', '潞西市', '533100', '678400');
INSERT INTO `ot_area_world` VALUES ('533122', '4', '梁河县', '533100', '679200');
INSERT INTO `ot_area_world` VALUES ('533123', '4', '盈江县', '533100', '679300');
INSERT INTO `ot_area_world` VALUES ('533124', '4', '陇川县', '533100', '678700');
INSERT INTO `ot_area_world` VALUES ('533125', '4', '其它区', '533100', '');
INSERT INTO `ot_area_world` VALUES ('533300', '3', '怒江傈僳族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('533321', '4', '泸水县', '533300', '673100');
INSERT INTO `ot_area_world` VALUES ('533323', '4', '福贡县', '533300', '673400');
INSERT INTO `ot_area_world` VALUES ('533324', '4', '贡山独龙族怒族自治县', '533300', '673500');
INSERT INTO `ot_area_world` VALUES ('533325', '4', '兰坪白族普米族自治县', '533300', '671400');
INSERT INTO `ot_area_world` VALUES ('533326', '4', '其它区', '533300', '');
INSERT INTO `ot_area_world` VALUES ('533400', '3', '迪庆藏族自治州', '530000', '');
INSERT INTO `ot_area_world` VALUES ('533421', '4', '香格里拉县', '533400', '674400');
INSERT INTO `ot_area_world` VALUES ('533422', '4', '德钦县', '533400', '674500');
INSERT INTO `ot_area_world` VALUES ('533423', '4', '维西傈僳族自治县', '533400', '674600');
INSERT INTO `ot_area_world` VALUES ('533424', '4', '其它区', '533400', '');
INSERT INTO `ot_area_world` VALUES ('540000', '2', '西藏自治区', '1', '');
INSERT INTO `ot_area_world` VALUES ('540100', '3', '拉萨市', '540000', '850000');
INSERT INTO `ot_area_world` VALUES ('540102', '4', '城关区', '540100', '850000');
INSERT INTO `ot_area_world` VALUES ('540121', '4', '林周县', '540100', '851600');
INSERT INTO `ot_area_world` VALUES ('540122', '4', '当雄县', '540100', '851500');
INSERT INTO `ot_area_world` VALUES ('540123', '4', '尼木县', '540100', '851300');
INSERT INTO `ot_area_world` VALUES ('540124', '4', '曲水县', '540100', '850600');
INSERT INTO `ot_area_world` VALUES ('540125', '4', '堆龙德庆县', '540100', '851400');
INSERT INTO `ot_area_world` VALUES ('540126', '4', '达孜县', '540100', '850100');
INSERT INTO `ot_area_world` VALUES ('540127', '4', '墨竹工卡县', '540100', '850200');
INSERT INTO `ot_area_world` VALUES ('540128', '4', '其它区', '540100', '');
INSERT INTO `ot_area_world` VALUES ('542100', '3', '昌都地区', '540000', '');
INSERT INTO `ot_area_world` VALUES ('542121', '4', '昌都县', '542100', '854000');
INSERT INTO `ot_area_world` VALUES ('542122', '4', '江达县', '542100', '854100');
INSERT INTO `ot_area_world` VALUES ('542123', '4', '贡觉县', '542100', '854200');
INSERT INTO `ot_area_world` VALUES ('542124', '4', '类乌齐县', '542100', '855600');
INSERT INTO `ot_area_world` VALUES ('542125', '4', '丁青县', '542100', '855700');
INSERT INTO `ot_area_world` VALUES ('542126', '4', '察雅县', '542100', '854300');
INSERT INTO `ot_area_world` VALUES ('542127', '4', '八宿县', '542100', '854600');
INSERT INTO `ot_area_world` VALUES ('542128', '4', '左贡县', '542100', '854400');
INSERT INTO `ot_area_world` VALUES ('542129', '4', '芒康县', '542100', '854500');
INSERT INTO `ot_area_world` VALUES ('542132', '4', '洛隆县', '542100', '855400');
INSERT INTO `ot_area_world` VALUES ('542133', '4', '边坝县', '542100', '855500');
INSERT INTO `ot_area_world` VALUES ('542134', '4', '其它区', '542100', '');
INSERT INTO `ot_area_world` VALUES ('542200', '3', '山南地区', '540000', '');
INSERT INTO `ot_area_world` VALUES ('542221', '4', '乃东县', '542200', '856100');
INSERT INTO `ot_area_world` VALUES ('542222', '4', '扎囊县', '542200', '850800');
INSERT INTO `ot_area_world` VALUES ('542223', '4', '贡嘎县', '542200', '850700');
INSERT INTO `ot_area_world` VALUES ('542224', '4', '桑日县', '542200', '856200');
INSERT INTO `ot_area_world` VALUES ('542225', '4', '琼结县', '542200', '856800');
INSERT INTO `ot_area_world` VALUES ('542226', '4', '曲松县', '542200', '856300');
INSERT INTO `ot_area_world` VALUES ('542227', '4', '措美县', '542200', '856900');
INSERT INTO `ot_area_world` VALUES ('542228', '4', '洛扎县', '542200', '851200');
INSERT INTO `ot_area_world` VALUES ('542229', '4', '加查县', '542200', '856400');
INSERT INTO `ot_area_world` VALUES ('542231', '4', '隆子县', '542200', '856600');
INSERT INTO `ot_area_world` VALUES ('542232', '4', '错那县', '542200', '856700');
INSERT INTO `ot_area_world` VALUES ('542233', '4', '浪卡子县', '542200', '851100');
INSERT INTO `ot_area_world` VALUES ('542234', '4', '其它区', '542200', '');
INSERT INTO `ot_area_world` VALUES ('542300', '3', '日喀则地区', '540000', '');
INSERT INTO `ot_area_world` VALUES ('542301', '4', '日喀则市', '542300', '857000');
INSERT INTO `ot_area_world` VALUES ('542322', '4', '南木林县', '542300', '857100');
INSERT INTO `ot_area_world` VALUES ('542323', '4', '江孜县', '542300', '857400');
INSERT INTO `ot_area_world` VALUES ('542324', '4', '定日县', '542300', '858200');
INSERT INTO `ot_area_world` VALUES ('542325', '4', '萨迦县', '542300', '857800');
INSERT INTO `ot_area_world` VALUES ('542326', '4', '拉孜县', '542300', '858100');
INSERT INTO `ot_area_world` VALUES ('542327', '4', '昂仁县', '542300', '858500');
INSERT INTO `ot_area_world` VALUES ('542328', '4', '谢通门县', '542300', '858900');
INSERT INTO `ot_area_world` VALUES ('542329', '4', '白朗县', '542300', '857300');
INSERT INTO `ot_area_world` VALUES ('542330', '4', '仁布县', '542300', '857200');
INSERT INTO `ot_area_world` VALUES ('542331', '4', '康马县', '542300', '857500');
INSERT INTO `ot_area_world` VALUES ('542332', '4', '定结县', '542300', '857900');
INSERT INTO `ot_area_world` VALUES ('542333', '4', '仲巴县', '542300', '858800');
INSERT INTO `ot_area_world` VALUES ('542334', '4', '亚东县', '542300', '857600');
INSERT INTO `ot_area_world` VALUES ('542335', '4', '吉隆县', '542300', '858700');
INSERT INTO `ot_area_world` VALUES ('542336', '4', '聂拉木县', '542300', '858300');
INSERT INTO `ot_area_world` VALUES ('542337', '4', '萨嘎县', '542300', '858600');
INSERT INTO `ot_area_world` VALUES ('542338', '4', '岗巴县', '542300', '857700');
INSERT INTO `ot_area_world` VALUES ('542339', '4', '其它区', '542300', '');
INSERT INTO `ot_area_world` VALUES ('542400', '3', '那曲地区', '540000', '');
INSERT INTO `ot_area_world` VALUES ('542421', '4', '那曲县', '542400', '852000');
INSERT INTO `ot_area_world` VALUES ('542422', '4', '嘉黎县', '542400', '852400');
INSERT INTO `ot_area_world` VALUES ('542423', '4', '比如县', '542400', '852300');
INSERT INTO `ot_area_world` VALUES ('542424', '4', '聂荣县', '542400', '853500');
INSERT INTO `ot_area_world` VALUES ('542425', '4', '安多县', '542400', '853400');
INSERT INTO `ot_area_world` VALUES ('542426', '4', '申扎县', '542400', '853100');
INSERT INTO `ot_area_world` VALUES ('542427', '4', '索县', '542400', '852200');
INSERT INTO `ot_area_world` VALUES ('542428', '4', '班戈县', '542400', '852500');
INSERT INTO `ot_area_world` VALUES ('542429', '4', '巴青县', '542400', '852100');
INSERT INTO `ot_area_world` VALUES ('542430', '4', '尼玛县', '542400', '852600');
INSERT INTO `ot_area_world` VALUES ('542431', '4', '其它区', '542400', '');
INSERT INTO `ot_area_world` VALUES ('542500', '3', '阿里地区', '540000', '');
INSERT INTO `ot_area_world` VALUES ('542521', '4', '普兰县', '542500', '859500');
INSERT INTO `ot_area_world` VALUES ('542522', '4', '札达县', '542500', '859600');
INSERT INTO `ot_area_world` VALUES ('542523', '4', '噶尔县', '542500', '859400');
INSERT INTO `ot_area_world` VALUES ('542524', '4', '日土县', '542500', '859700');
INSERT INTO `ot_area_world` VALUES ('542525', '4', '革吉县', '542500', '859100');
INSERT INTO `ot_area_world` VALUES ('542526', '4', '改则县', '542500', '859200');
INSERT INTO `ot_area_world` VALUES ('542527', '4', '措勤县', '542500', '859300');
INSERT INTO `ot_area_world` VALUES ('542528', '4', '其它区', '542500', '');
INSERT INTO `ot_area_world` VALUES ('542600', '3', '林芝地区', '540000', '');
INSERT INTO `ot_area_world` VALUES ('542621', '4', '林芝县', '542600', '860100');
INSERT INTO `ot_area_world` VALUES ('542622', '4', '工布江达县', '542600', '860200');
INSERT INTO `ot_area_world` VALUES ('542623', '4', '米林县', '542600', '860500');
INSERT INTO `ot_area_world` VALUES ('542624', '4', '墨脱县', '542600', '860700');
INSERT INTO `ot_area_world` VALUES ('542625', '4', '波密县', '542600', '860300');
INSERT INTO `ot_area_world` VALUES ('542626', '4', '察隅县', '542600', '860600');
INSERT INTO `ot_area_world` VALUES ('542627', '4', '朗县', '542600', '860400');
INSERT INTO `ot_area_world` VALUES ('542628', '4', '其它区', '542600', '');
INSERT INTO `ot_area_world` VALUES ('610000', '2', '陕西省', '1', '');
INSERT INTO `ot_area_world` VALUES ('610100', '3', '西安市', '610000', '710000');
INSERT INTO `ot_area_world` VALUES ('610102', '4', '新城区', '610100', '710005');
INSERT INTO `ot_area_world` VALUES ('610103', '4', '碑林区', '610100', '710001');
INSERT INTO `ot_area_world` VALUES ('610104', '4', '莲湖区', '610100', '710003');
INSERT INTO `ot_area_world` VALUES ('610111', '4', '灞桥区', '610100', '710038');
INSERT INTO `ot_area_world` VALUES ('610112', '4', '未央区', '610100', '710016');
INSERT INTO `ot_area_world` VALUES ('610113', '4', '雁塔区', '610100', '710061');
INSERT INTO `ot_area_world` VALUES ('610114', '4', '阎良区', '610100', '710089');
INSERT INTO `ot_area_world` VALUES ('610115', '4', '临潼区', '610100', '710600');
INSERT INTO `ot_area_world` VALUES ('610116', '4', '长安区', '610100', '710100');
INSERT INTO `ot_area_world` VALUES ('610122', '4', '蓝田县', '610100', '710500');
INSERT INTO `ot_area_world` VALUES ('610124', '4', '周至县', '610100', '710400');
INSERT INTO `ot_area_world` VALUES ('610125', '4', '户县', '610100', '710300');
INSERT INTO `ot_area_world` VALUES ('610126', '4', '高陵县', '610100', '710200');
INSERT INTO `ot_area_world` VALUES ('610127', '4', '其它区', '610100', '');
INSERT INTO `ot_area_world` VALUES ('610200', '3', '铜川市', '610000', '727000');
INSERT INTO `ot_area_world` VALUES ('610202', '4', '王益区', '610200', '727000');
INSERT INTO `ot_area_world` VALUES ('610203', '4', '印台区', '610200', '727007');
INSERT INTO `ot_area_world` VALUES ('610204', '4', '耀州区', '610200', '727100');
INSERT INTO `ot_area_world` VALUES ('610222', '4', '宜君县', '610200', '727200');
INSERT INTO `ot_area_world` VALUES ('610223', '4', '其它区', '610200', '');
INSERT INTO `ot_area_world` VALUES ('610300', '3', '宝鸡市', '610000', '721000');
INSERT INTO `ot_area_world` VALUES ('610302', '4', '渭滨区', '610300', '721000');
INSERT INTO `ot_area_world` VALUES ('610303', '4', '金台区', '610300', '721001');
INSERT INTO `ot_area_world` VALUES ('610304', '4', '陈仓区', '610300', '721300');
INSERT INTO `ot_area_world` VALUES ('610322', '4', '凤翔县', '610300', '721400');
INSERT INTO `ot_area_world` VALUES ('610323', '4', '岐山县', '610300', '722400');
INSERT INTO `ot_area_world` VALUES ('610324', '4', '扶风县', '610300', '722200');
INSERT INTO `ot_area_world` VALUES ('610326', '4', '眉县', '610300', '722300');
INSERT INTO `ot_area_world` VALUES ('610327', '4', '陇县', '610300', '721200');
INSERT INTO `ot_area_world` VALUES ('610328', '4', '千阳县', '610300', '721100');
INSERT INTO `ot_area_world` VALUES ('610329', '4', '麟游县', '610300', '721500');
INSERT INTO `ot_area_world` VALUES ('610330', '4', '凤县', '610300', '721700');
INSERT INTO `ot_area_world` VALUES ('610331', '4', '太白县', '610300', '721600');
INSERT INTO `ot_area_world` VALUES ('610332', '4', '其它区', '610300', '');
INSERT INTO `ot_area_world` VALUES ('610400', '3', '咸阳市', '610000', '712000');
INSERT INTO `ot_area_world` VALUES ('610402', '4', '秦都区', '610400', '712000');
INSERT INTO `ot_area_world` VALUES ('610403', '4', '杨陵区', '610400', '712100');
INSERT INTO `ot_area_world` VALUES ('610404', '4', '渭城区', '610400', '712000');
INSERT INTO `ot_area_world` VALUES ('610422', '4', '三原县', '610400', '713800');
INSERT INTO `ot_area_world` VALUES ('610423', '4', '泾阳县', '610400', '713700');
INSERT INTO `ot_area_world` VALUES ('610424', '4', '乾县', '610400', '713300');
INSERT INTO `ot_area_world` VALUES ('610425', '4', '礼泉县', '610400', '713200');
INSERT INTO `ot_area_world` VALUES ('610426', '4', '永寿县', '610400', '713400');
INSERT INTO `ot_area_world` VALUES ('610427', '4', '彬县', '610400', '713500');
INSERT INTO `ot_area_world` VALUES ('610428', '4', '长武县', '610400', '713600');
INSERT INTO `ot_area_world` VALUES ('610429', '4', '旬邑县', '610400', '711300');
INSERT INTO `ot_area_world` VALUES ('610430', '4', '淳化县', '610400', '711200');
INSERT INTO `ot_area_world` VALUES ('610431', '4', '武功县', '610400', '712200');
INSERT INTO `ot_area_world` VALUES ('610481', '4', '兴平市', '610400', '713100');
INSERT INTO `ot_area_world` VALUES ('610482', '4', '其它区', '610400', '');
INSERT INTO `ot_area_world` VALUES ('610500', '3', '渭南市', '610000', '714000');
INSERT INTO `ot_area_world` VALUES ('610502', '4', '临渭区', '610500', '714000');
INSERT INTO `ot_area_world` VALUES ('610521', '4', '华县', '610500', '714100');
INSERT INTO `ot_area_world` VALUES ('610522', '4', '潼关县', '610500', '714300');
INSERT INTO `ot_area_world` VALUES ('610523', '4', '大荔县', '610500', '715100');
INSERT INTO `ot_area_world` VALUES ('610524', '4', '合阳县', '610500', '715300');
INSERT INTO `ot_area_world` VALUES ('610525', '4', '澄城县', '610500', '715200');
INSERT INTO `ot_area_world` VALUES ('610526', '4', '蒲城县', '610500', '715500');
INSERT INTO `ot_area_world` VALUES ('610527', '4', '白水县', '610500', '715600');
INSERT INTO `ot_area_world` VALUES ('610528', '4', '富平县', '610500', '711700');
INSERT INTO `ot_area_world` VALUES ('610581', '4', '韩城市', '610500', '715400');
INSERT INTO `ot_area_world` VALUES ('610582', '4', '华阴市', '610500', '714200');
INSERT INTO `ot_area_world` VALUES ('610583', '4', '其它区', '610500', '');
INSERT INTO `ot_area_world` VALUES ('610600', '3', '延安市', '610000', '716000');
INSERT INTO `ot_area_world` VALUES ('610602', '4', '宝塔区', '610600', '716000');
INSERT INTO `ot_area_world` VALUES ('610621', '4', '延长县', '610600', '717100');
INSERT INTO `ot_area_world` VALUES ('610622', '4', '延川县', '610600', '717200');
INSERT INTO `ot_area_world` VALUES ('610623', '4', '子长县', '610600', '717300');
INSERT INTO `ot_area_world` VALUES ('610624', '4', '安塞县', '610600', '717400');
INSERT INTO `ot_area_world` VALUES ('610625', '4', '志丹县', '610600', '717500');
INSERT INTO `ot_area_world` VALUES ('610626', '4', '吴起县', '610600', '717600');
INSERT INTO `ot_area_world` VALUES ('610627', '4', '甘泉县', '610600', '716100');
INSERT INTO `ot_area_world` VALUES ('610628', '4', '富县', '610600', '727500');
INSERT INTO `ot_area_world` VALUES ('610629', '4', '洛川县', '610600', '727400');
INSERT INTO `ot_area_world` VALUES ('610630', '4', '宜川县', '610600', '716200');
INSERT INTO `ot_area_world` VALUES ('610631', '4', '黄龙县', '610600', '715700');
INSERT INTO `ot_area_world` VALUES ('610632', '4', '黄陵县', '610600', '727300');
INSERT INTO `ot_area_world` VALUES ('610633', '4', '其它区', '610600', '');
INSERT INTO `ot_area_world` VALUES ('610700', '3', '汉中市', '610000', '723000');
INSERT INTO `ot_area_world` VALUES ('610702', '4', '汉台区', '610700', '723000');
INSERT INTO `ot_area_world` VALUES ('610721', '4', '南郑县', '610700', '723100');
INSERT INTO `ot_area_world` VALUES ('610722', '4', '城固县', '610700', '723200');
INSERT INTO `ot_area_world` VALUES ('610723', '4', '洋县', '610700', '723300');
INSERT INTO `ot_area_world` VALUES ('610724', '4', '西乡县', '610700', '723500');
INSERT INTO `ot_area_world` VALUES ('610725', '4', '勉县', '610700', '724200');
INSERT INTO `ot_area_world` VALUES ('610726', '4', '宁强县', '610700', '724400');
INSERT INTO `ot_area_world` VALUES ('610727', '4', '略阳县', '610700', '724300');
INSERT INTO `ot_area_world` VALUES ('610728', '4', '镇巴县', '610700', '723600');
INSERT INTO `ot_area_world` VALUES ('610729', '4', '留坝县', '610700', '724100');
INSERT INTO `ot_area_world` VALUES ('610730', '4', '佛坪县', '610700', '723400');
INSERT INTO `ot_area_world` VALUES ('610731', '4', '其它区', '610700', '');
INSERT INTO `ot_area_world` VALUES ('610800', '3', '榆林市', '610000', '719000');
INSERT INTO `ot_area_world` VALUES ('610802', '4', '榆阳区', '610800', '719000');
INSERT INTO `ot_area_world` VALUES ('610821', '4', '神木县', '610800', '719300');
INSERT INTO `ot_area_world` VALUES ('610822', '4', '府谷县', '610800', '719400');
INSERT INTO `ot_area_world` VALUES ('610823', '4', '横山县', '610800', '719100');
INSERT INTO `ot_area_world` VALUES ('610824', '4', '靖边县', '610800', '718500');
INSERT INTO `ot_area_world` VALUES ('610825', '4', '定边县', '610800', '718600');
INSERT INTO `ot_area_world` VALUES ('610826', '4', '绥德县', '610800', '718000');
INSERT INTO `ot_area_world` VALUES ('610827', '4', '米脂县', '610800', '718100');
INSERT INTO `ot_area_world` VALUES ('610828', '4', '佳县', '610800', '719200');
INSERT INTO `ot_area_world` VALUES ('610829', '4', '吴堡县', '610800', '718200');
INSERT INTO `ot_area_world` VALUES ('610830', '4', '清涧县', '610800', '718300');
INSERT INTO `ot_area_world` VALUES ('610831', '4', '子洲县', '610800', '718400');
INSERT INTO `ot_area_world` VALUES ('610832', '4', '其它区', '610800', '');
INSERT INTO `ot_area_world` VALUES ('610900', '3', '安康市', '610000', '725000');
INSERT INTO `ot_area_world` VALUES ('610902', '4', '汉滨区', '610900', '725000');
INSERT INTO `ot_area_world` VALUES ('610921', '4', '汉阴县', '610900', '725100');
INSERT INTO `ot_area_world` VALUES ('610922', '4', '石泉县', '610900', '725200');
INSERT INTO `ot_area_world` VALUES ('610923', '4', '宁陕县', '610900', '711600');
INSERT INTO `ot_area_world` VALUES ('610924', '4', '紫阳县', '610900', '725300');
INSERT INTO `ot_area_world` VALUES ('610925', '4', '岚皋县', '610900', '725400');
INSERT INTO `ot_area_world` VALUES ('610926', '4', '平利县', '610900', '725500');
INSERT INTO `ot_area_world` VALUES ('610927', '4', '镇坪县', '610900', '725600');
INSERT INTO `ot_area_world` VALUES ('610928', '4', '旬阳县', '610900', '725700');
INSERT INTO `ot_area_world` VALUES ('610929', '4', '白河县', '610900', '725800');
INSERT INTO `ot_area_world` VALUES ('610930', '4', '其它区', '610900', '');
INSERT INTO `ot_area_world` VALUES ('611000', '3', '商洛市', '610000', '726000');
INSERT INTO `ot_area_world` VALUES ('611002', '4', '商州区', '611000', '726000');
INSERT INTO `ot_area_world` VALUES ('611021', '4', '洛南县', '611000', '726100');
INSERT INTO `ot_area_world` VALUES ('611022', '4', '丹凤县', '611000', '726200');
INSERT INTO `ot_area_world` VALUES ('611023', '4', '商南县', '611000', '726300');
INSERT INTO `ot_area_world` VALUES ('611024', '4', '山阳县', '611000', '726400');
INSERT INTO `ot_area_world` VALUES ('611025', '4', '镇安县', '611000', '711500');
INSERT INTO `ot_area_world` VALUES ('611026', '4', '柞水县', '611000', '711400');
INSERT INTO `ot_area_world` VALUES ('611027', '4', '其它区', '611000', '');
INSERT INTO `ot_area_world` VALUES ('620000', '2', '甘肃省', '1', '');
INSERT INTO `ot_area_world` VALUES ('620100', '3', '兰州市', '620000', '730000');
INSERT INTO `ot_area_world` VALUES ('620102', '4', '城关区', '620100', '730030');
INSERT INTO `ot_area_world` VALUES ('620103', '4', '七里河区', '620100', '730050');
INSERT INTO `ot_area_world` VALUES ('620104', '4', '西固区', '620100', '730060');
INSERT INTO `ot_area_world` VALUES ('620105', '4', '安宁区', '620100', '730070');
INSERT INTO `ot_area_world` VALUES ('620111', '4', '红古区', '620100', '730080');
INSERT INTO `ot_area_world` VALUES ('620121', '4', '永登县', '620100', '730300');
INSERT INTO `ot_area_world` VALUES ('620122', '4', '皋兰县', '620100', '730200');
INSERT INTO `ot_area_world` VALUES ('620123', '4', '榆中县', '620100', '730100');
INSERT INTO `ot_area_world` VALUES ('620124', '4', '其它区', '620100', '');
INSERT INTO `ot_area_world` VALUES ('620200', '3', '嘉峪关市', '620000', '735100');
INSERT INTO `ot_area_world` VALUES ('620300', '3', '金昌市', '620000', '737100');
INSERT INTO `ot_area_world` VALUES ('620302', '4', '金川区', '620300', '737103');
INSERT INTO `ot_area_world` VALUES ('620321', '4', '永昌县', '620300', '737200');
INSERT INTO `ot_area_world` VALUES ('620322', '4', '其它区', '620300', '');
INSERT INTO `ot_area_world` VALUES ('620400', '3', '白银市', '620000', '');
INSERT INTO `ot_area_world` VALUES ('620402', '4', '白银区', '620400', '730900');
INSERT INTO `ot_area_world` VALUES ('620403', '4', '平川区', '620400', '730910');
INSERT INTO `ot_area_world` VALUES ('620421', '4', '靖远县', '620400', '730600');
INSERT INTO `ot_area_world` VALUES ('620422', '4', '会宁县', '620400', '730700');
INSERT INTO `ot_area_world` VALUES ('620423', '4', '景泰县', '620400', '730400');
INSERT INTO `ot_area_world` VALUES ('620424', '4', '其它区', '620400', '');
INSERT INTO `ot_area_world` VALUES ('620500', '3', '天水市', '620000', '');
INSERT INTO `ot_area_world` VALUES ('620502', '4', '秦州区', '620500', '741000');
INSERT INTO `ot_area_world` VALUES ('620503', '4', '麦积区', '620500', '741020');
INSERT INTO `ot_area_world` VALUES ('620521', '4', '清水县', '620500', '741400');
INSERT INTO `ot_area_world` VALUES ('620522', '4', '秦安县', '620500', '741600');
INSERT INTO `ot_area_world` VALUES ('620523', '4', '甘谷县', '620500', '741200');
INSERT INTO `ot_area_world` VALUES ('620524', '4', '武山县', '620500', '741300');
INSERT INTO `ot_area_world` VALUES ('620525', '4', '张家川回族自治县', '620500', '741500');
INSERT INTO `ot_area_world` VALUES ('620526', '4', '其它区', '620500', '');
INSERT INTO `ot_area_world` VALUES ('620600', '3', '武威市', '620000', '733000');
INSERT INTO `ot_area_world` VALUES ('620602', '4', '凉州区', '620600', '733000');
INSERT INTO `ot_area_world` VALUES ('620621', '4', '民勤县', '620600', '733300');
INSERT INTO `ot_area_world` VALUES ('620622', '4', '古浪县', '620600', '733100');
INSERT INTO `ot_area_world` VALUES ('620623', '4', '天祝藏族自治县', '620600', '733200');
INSERT INTO `ot_area_world` VALUES ('620624', '4', '其它区', '620600', '');
INSERT INTO `ot_area_world` VALUES ('620700', '3', '张掖市', '620000', '734000');
INSERT INTO `ot_area_world` VALUES ('620702', '4', '甘州区', '620700', '734000');
INSERT INTO `ot_area_world` VALUES ('620721', '4', '肃南裕固族自治县', '620700', '734400');
INSERT INTO `ot_area_world` VALUES ('620722', '4', '民乐县', '620700', '734500');
INSERT INTO `ot_area_world` VALUES ('620723', '4', '临泽县', '620700', '734200');
INSERT INTO `ot_area_world` VALUES ('620724', '4', '高台县', '620700', '734300');
INSERT INTO `ot_area_world` VALUES ('620725', '4', '山丹县', '620700', '734100');
INSERT INTO `ot_area_world` VALUES ('620726', '4', '其它区', '620700', '');
INSERT INTO `ot_area_world` VALUES ('620800', '3', '平凉市', '620000', '744000');
INSERT INTO `ot_area_world` VALUES ('620802', '4', '崆峒区', '620800', '744000');
INSERT INTO `ot_area_world` VALUES ('620821', '4', '泾川县', '620800', '744300');
INSERT INTO `ot_area_world` VALUES ('620822', '4', '灵台县', '620800', '744400');
INSERT INTO `ot_area_world` VALUES ('620823', '4', '崇信县', '620800', '744200');
INSERT INTO `ot_area_world` VALUES ('620824', '4', '华亭县', '620800', '744100');
INSERT INTO `ot_area_world` VALUES ('620825', '4', '庄浪县', '620800', '744600');
INSERT INTO `ot_area_world` VALUES ('620826', '4', '静宁县', '620800', '743400');
INSERT INTO `ot_area_world` VALUES ('620827', '4', '其它区', '620800', '');
INSERT INTO `ot_area_world` VALUES ('620900', '3', '酒泉市', '620000', '735000');
INSERT INTO `ot_area_world` VALUES ('620902', '4', '肃州区', '620900', '735000');
INSERT INTO `ot_area_world` VALUES ('620921', '4', '金塔县', '620900', '735300');
INSERT INTO `ot_area_world` VALUES ('620922', '4', '安西县', '620900', '743000');
INSERT INTO `ot_area_world` VALUES ('620923', '4', '肃北蒙古族自治县', '620900', '736300');
INSERT INTO `ot_area_world` VALUES ('620924', '4', '阿克塞哈萨克族自治县', '620900', '736400');
INSERT INTO `ot_area_world` VALUES ('620981', '4', '玉门市', '620900', '735200');
INSERT INTO `ot_area_world` VALUES ('620982', '4', '敦煌市', '620900', '736200');
INSERT INTO `ot_area_world` VALUES ('620983', '4', '其它区', '620900', '');
INSERT INTO `ot_area_world` VALUES ('621000', '3', '庆阳市', '620000', '');
INSERT INTO `ot_area_world` VALUES ('621002', '4', '西峰区', '621000', '745000');
INSERT INTO `ot_area_world` VALUES ('621021', '4', '庆城县', '621000', '745100');
INSERT INTO `ot_area_world` VALUES ('621022', '4', '环县', '621000', '745700');
INSERT INTO `ot_area_world` VALUES ('621023', '4', '华池县', '621000', '745600');
INSERT INTO `ot_area_world` VALUES ('621024', '4', '合水县', '621000', '745400');
INSERT INTO `ot_area_world` VALUES ('621025', '4', '正宁县', '621000', '745300');
INSERT INTO `ot_area_world` VALUES ('621026', '4', '宁县', '621000', '745200');
INSERT INTO `ot_area_world` VALUES ('621027', '4', '镇原县', '621000', '744500');
INSERT INTO `ot_area_world` VALUES ('621028', '4', '其它区', '621000', '');
INSERT INTO `ot_area_world` VALUES ('621100', '3', '定西市', '620000', '743000');
INSERT INTO `ot_area_world` VALUES ('621102', '4', '安定区', '621100', '743000');
INSERT INTO `ot_area_world` VALUES ('621121', '4', '通渭县', '621100', '743300');
INSERT INTO `ot_area_world` VALUES ('621122', '4', '陇西县', '621100', '748100');
INSERT INTO `ot_area_world` VALUES ('621123', '4', '渭源县', '621100', '748200');
INSERT INTO `ot_area_world` VALUES ('621124', '4', '临洮县', '621100', '730500');
INSERT INTO `ot_area_world` VALUES ('621125', '4', '漳县', '621100', '748300');
INSERT INTO `ot_area_world` VALUES ('621126', '4', '岷县', '621100', '748400');
INSERT INTO `ot_area_world` VALUES ('621127', '4', '其它区', '621100', '');
INSERT INTO `ot_area_world` VALUES ('621200', '3', '陇南市', '620000', '');
INSERT INTO `ot_area_world` VALUES ('621202', '4', '武都区', '621200', '746000');
INSERT INTO `ot_area_world` VALUES ('621221', '4', '成县', '621200', '742500');
INSERT INTO `ot_area_world` VALUES ('621222', '4', '文县', '621200', '746400');
INSERT INTO `ot_area_world` VALUES ('621223', '4', '宕昌县', '621200', '748500');
INSERT INTO `ot_area_world` VALUES ('621224', '4', '康县', '621200', '746500');
INSERT INTO `ot_area_world` VALUES ('621225', '4', '西和县', '621200', '742100');
INSERT INTO `ot_area_world` VALUES ('621226', '4', '礼县', '621200', '742200');
INSERT INTO `ot_area_world` VALUES ('621227', '4', '徽县', '621200', '742300');
INSERT INTO `ot_area_world` VALUES ('621228', '4', '两当县', '621200', '742400');
INSERT INTO `ot_area_world` VALUES ('621229', '4', '其它区', '621200', '');
INSERT INTO `ot_area_world` VALUES ('622900', '3', '临夏回族自治州', '620000', '');
INSERT INTO `ot_area_world` VALUES ('622901', '4', '临夏市', '622900', '731100');
INSERT INTO `ot_area_world` VALUES ('622921', '4', '临夏县', '622900', '731800');
INSERT INTO `ot_area_world` VALUES ('622922', '4', '康乐县', '622900', '731500');
INSERT INTO `ot_area_world` VALUES ('622923', '4', '永靖县', '622900', '731600');
INSERT INTO `ot_area_world` VALUES ('622924', '4', '广河县', '622900', '731300');
INSERT INTO `ot_area_world` VALUES ('622925', '4', '和政县', '622900', '731200');
INSERT INTO `ot_area_world` VALUES ('622926', '4', '东乡族自治县', '622900', '731400');
INSERT INTO `ot_area_world` VALUES ('622927', '4', '积石山保安族东乡族撒拉族自治县', '622900', '731700');
INSERT INTO `ot_area_world` VALUES ('622928', '4', '其它区', '622900', '');
INSERT INTO `ot_area_world` VALUES ('623000', '3', '甘南藏族自治州', '620000', '747000');
INSERT INTO `ot_area_world` VALUES ('623001', '4', '合作市', '623000', '747000');
INSERT INTO `ot_area_world` VALUES ('623021', '4', '临潭县', '623000', '747500');
INSERT INTO `ot_area_world` VALUES ('623022', '4', '卓尼县', '623000', '747600');
INSERT INTO `ot_area_world` VALUES ('623023', '4', '舟曲县', '623000', '746300');
INSERT INTO `ot_area_world` VALUES ('623024', '4', '迭部县', '623000', '747400');
INSERT INTO `ot_area_world` VALUES ('623025', '4', '玛曲县', '623000', '747300');
INSERT INTO `ot_area_world` VALUES ('623026', '4', '碌曲县', '623000', '747200');
INSERT INTO `ot_area_world` VALUES ('623027', '4', '夏河县', '623000', '747100');
INSERT INTO `ot_area_world` VALUES ('623028', '4', '其它区', '623000', '');
INSERT INTO `ot_area_world` VALUES ('630000', '2', '青海省', '1', '');
INSERT INTO `ot_area_world` VALUES ('630100', '3', '西宁市', '630000', '810000');
INSERT INTO `ot_area_world` VALUES ('630102', '4', '城东区', '630100', '810000');
INSERT INTO `ot_area_world` VALUES ('630103', '4', '城中区', '630100', '810000');
INSERT INTO `ot_area_world` VALUES ('630104', '4', '城西区', '630100', '810001');
INSERT INTO `ot_area_world` VALUES ('630105', '4', '城北区', '630100', '810001');
INSERT INTO `ot_area_world` VALUES ('630121', '4', '大通回族土族自治县', '630100', '810100');
INSERT INTO `ot_area_world` VALUES ('630122', '4', '湟中县', '630100', '811600');
INSERT INTO `ot_area_world` VALUES ('630123', '4', '湟源县', '630100', '812100');
INSERT INTO `ot_area_world` VALUES ('630124', '4', '其它区', '630100', '');
INSERT INTO `ot_area_world` VALUES ('632100', '3', '海东地区', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632121', '4', '平安县', '632100', '810600');
INSERT INTO `ot_area_world` VALUES ('632122', '4', '民和回族土族自治县', '632100', '810800');
INSERT INTO `ot_area_world` VALUES ('632123', '4', '乐都县', '632100', '810700');
INSERT INTO `ot_area_world` VALUES ('632126', '4', '互助土族自治县', '632100', '810500');
INSERT INTO `ot_area_world` VALUES ('632127', '4', '化隆回族自治县', '632100', '810900');
INSERT INTO `ot_area_world` VALUES ('632128', '4', '循化撒拉族自治县', '632100', '811100');
INSERT INTO `ot_area_world` VALUES ('632129', '4', '其它区', '632100', '');
INSERT INTO `ot_area_world` VALUES ('632200', '3', '海北藏族自治州', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632221', '4', '门源回族自治县', '632200', '810300');
INSERT INTO `ot_area_world` VALUES ('632222', '4', '祁连县', '632200', '810400');
INSERT INTO `ot_area_world` VALUES ('632223', '4', '海晏县', '632200', '812200');
INSERT INTO `ot_area_world` VALUES ('632224', '4', '刚察县', '632200', '812300');
INSERT INTO `ot_area_world` VALUES ('632225', '4', '其它区', '632200', '');
INSERT INTO `ot_area_world` VALUES ('632300', '3', '黄南藏族自治州', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632321', '4', '同仁县', '632300', '811300');
INSERT INTO `ot_area_world` VALUES ('632322', '4', '尖扎县', '632300', '811200');
INSERT INTO `ot_area_world` VALUES ('632323', '4', '泽库县', '632300', '811400');
INSERT INTO `ot_area_world` VALUES ('632324', '4', '河南蒙古族自治县', '632300', '811500');
INSERT INTO `ot_area_world` VALUES ('632325', '4', '其它区', '632300', '');
INSERT INTO `ot_area_world` VALUES ('632500', '3', '海南藏族自治州', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632521', '4', '共和县', '632500', '813000');
INSERT INTO `ot_area_world` VALUES ('632522', '4', '同德县', '632500', '813200');
INSERT INTO `ot_area_world` VALUES ('632523', '4', '贵德县', '632500', '811700');
INSERT INTO `ot_area_world` VALUES ('632524', '4', '兴海县', '632500', '813300');
INSERT INTO `ot_area_world` VALUES ('632525', '4', '贵南县', '632500', '813100');
INSERT INTO `ot_area_world` VALUES ('632526', '4', '其它区', '632500', '');
INSERT INTO `ot_area_world` VALUES ('632600', '3', '果洛藏族自治州', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632621', '4', '玛沁县', '632600', '814000');
INSERT INTO `ot_area_world` VALUES ('632622', '4', '班玛县', '632600', '814300');
INSERT INTO `ot_area_world` VALUES ('632623', '4', '甘德县', '632600', '814100');
INSERT INTO `ot_area_world` VALUES ('632624', '4', '达日县', '632600', '814200');
INSERT INTO `ot_area_world` VALUES ('632625', '4', '久治县', '632600', '624700');
INSERT INTO `ot_area_world` VALUES ('632626', '4', '玛多县', '632600', '813500');
INSERT INTO `ot_area_world` VALUES ('632627', '4', '其它区', '632600', '');
INSERT INTO `ot_area_world` VALUES ('632700', '3', '玉树藏族自治州', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632721', '4', '玉树县', '632700', '815000');
INSERT INTO `ot_area_world` VALUES ('632722', '4', '杂多县', '632700', '815300');
INSERT INTO `ot_area_world` VALUES ('632723', '4', '称多县', '632700', '815100');
INSERT INTO `ot_area_world` VALUES ('632724', '4', '治多县', '632700', '815400');
INSERT INTO `ot_area_world` VALUES ('632725', '4', '囊谦县', '632700', '815200');
INSERT INTO `ot_area_world` VALUES ('632726', '4', '曲麻莱县', '632700', '815500');
INSERT INTO `ot_area_world` VALUES ('632727', '4', '其它区', '632700', '');
INSERT INTO `ot_area_world` VALUES ('632800', '3', '海西蒙古族藏族自治州', '630000', '');
INSERT INTO `ot_area_world` VALUES ('632801', '4', '格尔木市', '632800', '816000');
INSERT INTO `ot_area_world` VALUES ('632802', '4', '德令哈市', '632800', '817000');
INSERT INTO `ot_area_world` VALUES ('632821', '4', '乌兰县', '632800', '817100');
INSERT INTO `ot_area_world` VALUES ('632822', '4', '都兰县', '632800', '816100');
INSERT INTO `ot_area_world` VALUES ('632823', '4', '天峻县', '632800', '817200');
INSERT INTO `ot_area_world` VALUES ('632824', '4', '其它区', '632800', '');
INSERT INTO `ot_area_world` VALUES ('640000', '2', '宁夏回族自治区', '1', '');
INSERT INTO `ot_area_world` VALUES ('640100', '3', '银川市', '640000', '750000');
INSERT INTO `ot_area_world` VALUES ('640104', '4', '兴庆区', '640100', '750001');
INSERT INTO `ot_area_world` VALUES ('640105', '4', '西夏区', '640100', '750027');
INSERT INTO `ot_area_world` VALUES ('640106', '4', '金凤区', '640100', '750011');
INSERT INTO `ot_area_world` VALUES ('640121', '4', '永宁县', '640100', '750100');
INSERT INTO `ot_area_world` VALUES ('640122', '4', '贺兰县', '640100', '750200');
INSERT INTO `ot_area_world` VALUES ('640181', '4', '灵武市', '640100', '751400');
INSERT INTO `ot_area_world` VALUES ('640182', '4', '其它区', '640100', '');
INSERT INTO `ot_area_world` VALUES ('640200', '3', '石嘴山市', '640000', '');
INSERT INTO `ot_area_world` VALUES ('640202', '4', '大武口区', '640200', '753000');
INSERT INTO `ot_area_world` VALUES ('640205', '4', '惠农区', '640200', '753200');
INSERT INTO `ot_area_world` VALUES ('640221', '4', '平罗县', '640200', '753400');
INSERT INTO `ot_area_world` VALUES ('640222', '4', '其它区', '640200', '');
INSERT INTO `ot_area_world` VALUES ('640300', '3', '吴忠市', '640000', '751100');
INSERT INTO `ot_area_world` VALUES ('640302', '4', '利通区', '640300', '751100');
INSERT INTO `ot_area_world` VALUES ('640303', '4', '红寺堡区', '640300', '751900');
INSERT INTO `ot_area_world` VALUES ('640323', '4', '盐池县', '640300', '751500');
INSERT INTO `ot_area_world` VALUES ('640324', '4', '同心县', '640300', '751300');
INSERT INTO `ot_area_world` VALUES ('640381', '4', '青铜峡市', '640300', '751600');
INSERT INTO `ot_area_world` VALUES ('640382', '4', '其它区', '640300', '');
INSERT INTO `ot_area_world` VALUES ('640400', '3', '固原市', '640000', '756000');
INSERT INTO `ot_area_world` VALUES ('640402', '4', '原州区', '640400', '756000');
INSERT INTO `ot_area_world` VALUES ('640422', '4', '西吉县', '640400', '756200');
INSERT INTO `ot_area_world` VALUES ('640423', '4', '隆德县', '640400', '756300');
INSERT INTO `ot_area_world` VALUES ('640424', '4', '泾源县', '640400', '756400');
INSERT INTO `ot_area_world` VALUES ('640425', '4', '彭阳县', '640400', '756500');
INSERT INTO `ot_area_world` VALUES ('640426', '4', '其它区', '640400', '');
INSERT INTO `ot_area_world` VALUES ('640500', '3', '中卫市', '640000', '');
INSERT INTO `ot_area_world` VALUES ('640502', '4', '沙坡头区', '640500', '751700');
INSERT INTO `ot_area_world` VALUES ('640521', '4', '中宁县', '640500', '751200');
INSERT INTO `ot_area_world` VALUES ('640522', '4', '海原县', '640500', '756100');
INSERT INTO `ot_area_world` VALUES ('640523', '4', '其它区', '640500', '');
INSERT INTO `ot_area_world` VALUES ('650000', '2', '新疆维吾尔自治区', '1', '');
INSERT INTO `ot_area_world` VALUES ('650100', '3', '乌鲁木齐市', '650000', '830000');
INSERT INTO `ot_area_world` VALUES ('650102', '4', '天山区', '650100', '830002');
INSERT INTO `ot_area_world` VALUES ('650103', '4', '沙依巴克区', '650100', '830000');
INSERT INTO `ot_area_world` VALUES ('650104', '4', '新市区', '650100', '830011');
INSERT INTO `ot_area_world` VALUES ('650105', '4', '水磨沟区', '650100', '830017');
INSERT INTO `ot_area_world` VALUES ('650106', '4', '头屯河区', '650100', '830023');
INSERT INTO `ot_area_world` VALUES ('650107', '4', '达坂城区', '650100', '830039');
INSERT INTO `ot_area_world` VALUES ('650108', '4', '东山区', '650100', '830019');
INSERT INTO `ot_area_world` VALUES ('650109', '4', '米东区', '650100', '831400');
INSERT INTO `ot_area_world` VALUES ('650121', '4', '乌鲁木齐县', '650100', '830063');
INSERT INTO `ot_area_world` VALUES ('650122', '4', '其它区', '650100', '');
INSERT INTO `ot_area_world` VALUES ('650200', '3', '克拉玛依市', '650000', '834000');
INSERT INTO `ot_area_world` VALUES ('650202', '4', '独山子区', '650200', '838600');
INSERT INTO `ot_area_world` VALUES ('650203', '4', '克拉玛依区', '650200', '834000');
INSERT INTO `ot_area_world` VALUES ('650204', '4', '白碱滩区', '650200', '834009');
INSERT INTO `ot_area_world` VALUES ('650205', '4', '乌尔禾区', '650200', '834014');
INSERT INTO `ot_area_world` VALUES ('650206', '4', '其它区', '650200', '');
INSERT INTO `ot_area_world` VALUES ('652100', '3', '吐鲁番地区', '650000', '838000');
INSERT INTO `ot_area_world` VALUES ('652101', '4', '吐鲁番市', '652100', '838000');
INSERT INTO `ot_area_world` VALUES ('652122', '4', '鄯善县', '652100', '838200');
INSERT INTO `ot_area_world` VALUES ('652123', '4', '托克逊县', '652100', '838100');
INSERT INTO `ot_area_world` VALUES ('652124', '4', '其它区', '652100', '');
INSERT INTO `ot_area_world` VALUES ('652200', '3', '哈密地区', '650000', '839000');
INSERT INTO `ot_area_world` VALUES ('652201', '4', '哈密市', '652200', '839000');
INSERT INTO `ot_area_world` VALUES ('652222', '4', '巴里坤哈萨克自治县', '652200', '839200');
INSERT INTO `ot_area_world` VALUES ('652223', '4', '伊吾县', '652200', '839300');
INSERT INTO `ot_area_world` VALUES ('652224', '4', '其它区', '652200', '');
INSERT INTO `ot_area_world` VALUES ('652300', '3', '昌吉回族自治州', '650000', '831100');
INSERT INTO `ot_area_world` VALUES ('652301', '4', '昌吉市', '652300', '831100');
INSERT INTO `ot_area_world` VALUES ('652302', '4', '阜康市', '652300', '831500');
INSERT INTO `ot_area_world` VALUES ('652303', '4', '米泉市', '652300', '831400');
INSERT INTO `ot_area_world` VALUES ('652323', '4', '呼图壁县', '652300', '831200');
INSERT INTO `ot_area_world` VALUES ('652324', '4', '玛纳斯县', '652300', '832200');
INSERT INTO `ot_area_world` VALUES ('652325', '4', '奇台县', '652300', '831800');
INSERT INTO `ot_area_world` VALUES ('652327', '4', '吉木萨尔县', '652300', '831700');
INSERT INTO `ot_area_world` VALUES ('652328', '4', '木垒哈萨克自治县', '652300', '831900');
INSERT INTO `ot_area_world` VALUES ('652329', '4', '其它区', '652300', '');
INSERT INTO `ot_area_world` VALUES ('652700', '3', '博尔塔拉蒙古自治州', '650000', '833400');
INSERT INTO `ot_area_world` VALUES ('652701', '4', '博乐市', '652700', '833400');
INSERT INTO `ot_area_world` VALUES ('652722', '4', '精河县', '652700', '833300');
INSERT INTO `ot_area_world` VALUES ('652723', '4', '温泉县', '652700', '833500');
INSERT INTO `ot_area_world` VALUES ('652724', '4', '其它区', '652700', '');
INSERT INTO `ot_area_world` VALUES ('652800', '3', '巴音郭楞蒙古自治州', '650000', '841000');
INSERT INTO `ot_area_world` VALUES ('652801', '4', '库尔勒市', '652800', '841000');
INSERT INTO `ot_area_world` VALUES ('652822', '4', '轮台县', '652800', '841600');
INSERT INTO `ot_area_world` VALUES ('652823', '4', '尉犁县', '652800', '841500');
INSERT INTO `ot_area_world` VALUES ('652824', '4', '若羌县', '652800', '841800');
INSERT INTO `ot_area_world` VALUES ('652825', '4', '且末县', '652800', '841900');
INSERT INTO `ot_area_world` VALUES ('652826', '4', '焉耆回族自治县', '652800', '841100');
INSERT INTO `ot_area_world` VALUES ('652827', '4', '和静县', '652800', '841300');
INSERT INTO `ot_area_world` VALUES ('652828', '4', '和硕县', '652800', '841200');
INSERT INTO `ot_area_world` VALUES ('652829', '4', '博湖县', '652800', '841400');
INSERT INTO `ot_area_world` VALUES ('652830', '4', '其它区', '652800', '');
INSERT INTO `ot_area_world` VALUES ('652900', '3', '阿克苏地区', '650000', '843000');
INSERT INTO `ot_area_world` VALUES ('652901', '4', '阿克苏市', '652900', '843000');
INSERT INTO `ot_area_world` VALUES ('652922', '4', '温宿县', '652900', '843100');
INSERT INTO `ot_area_world` VALUES ('652923', '4', '库车县', '652900', '842000');
INSERT INTO `ot_area_world` VALUES ('652924', '4', '沙雅县', '652900', '842200');
INSERT INTO `ot_area_world` VALUES ('652925', '4', '新和县', '652900', '842100');
INSERT INTO `ot_area_world` VALUES ('652926', '4', '拜城县', '652900', '842300');
INSERT INTO `ot_area_world` VALUES ('652927', '4', '乌什县', '652900', '843400');
INSERT INTO `ot_area_world` VALUES ('652928', '4', '阿瓦提县', '652900', '843200');
INSERT INTO `ot_area_world` VALUES ('652929', '4', '柯坪县', '652900', '843600');
INSERT INTO `ot_area_world` VALUES ('652930', '4', '其它区', '652900', '');
INSERT INTO `ot_area_world` VALUES ('653000', '3', '克孜勒苏柯尔克孜自治州', '650000', '845350');
INSERT INTO `ot_area_world` VALUES ('653001', '4', '阿图什市', '653000', '845350');
INSERT INTO `ot_area_world` VALUES ('653022', '4', '阿克陶县', '653000', '845550');
INSERT INTO `ot_area_world` VALUES ('653023', '4', '阿合奇县', '653000', '843500');
INSERT INTO `ot_area_world` VALUES ('653024', '4', '乌恰县', '653000', '845450');
INSERT INTO `ot_area_world` VALUES ('653025', '4', '其它区', '653000', '');
INSERT INTO `ot_area_world` VALUES ('653100', '3', '喀什地区', '650000', '844000');
INSERT INTO `ot_area_world` VALUES ('653101', '4', '喀什市', '653100', '844000');
INSERT INTO `ot_area_world` VALUES ('653121', '4', '疏附县', '653100', '844100');
INSERT INTO `ot_area_world` VALUES ('653122', '4', '疏勒县', '653100', '844200');
INSERT INTO `ot_area_world` VALUES ('653123', '4', '英吉沙县', '653100', '844500');
INSERT INTO `ot_area_world` VALUES ('653124', '4', '泽普县', '653100', '844800');
INSERT INTO `ot_area_world` VALUES ('653125', '4', '莎车县', '653100', '844700');
INSERT INTO `ot_area_world` VALUES ('653126', '4', '叶城县', '653100', '844900');
INSERT INTO `ot_area_world` VALUES ('653127', '4', '麦盖提县', '653100', '844600');
INSERT INTO `ot_area_world` VALUES ('653128', '4', '岳普湖县', '653100', '844400');
INSERT INTO `ot_area_world` VALUES ('653129', '4', '伽师县', '653100', '844300');
INSERT INTO `ot_area_world` VALUES ('653130', '4', '巴楚县', '653100', '843800');
INSERT INTO `ot_area_world` VALUES ('653131', '4', '塔什库尔干塔吉克自治县', '653100', '845250');
INSERT INTO `ot_area_world` VALUES ('653132', '4', '其它区', '653100', '');
INSERT INTO `ot_area_world` VALUES ('653200', '3', '和田地区', '650000', '848000');
INSERT INTO `ot_area_world` VALUES ('653201', '4', '和田市', '653200', '848000');
INSERT INTO `ot_area_world` VALUES ('653221', '4', '和田县', '653200', '848000');
INSERT INTO `ot_area_world` VALUES ('653222', '4', '墨玉县', '653200', '848100');
INSERT INTO `ot_area_world` VALUES ('653223', '4', '皮山县', '653200', '845150');
INSERT INTO `ot_area_world` VALUES ('653224', '4', '洛浦县', '653200', '848200');
INSERT INTO `ot_area_world` VALUES ('653225', '4', '策勒县', '653200', '848300');
INSERT INTO `ot_area_world` VALUES ('653226', '4', '于田县', '653200', '848400');
INSERT INTO `ot_area_world` VALUES ('653227', '4', '民丰县', '653200', '848500');
INSERT INTO `ot_area_world` VALUES ('653228', '4', '其它区', '653200', '');
INSERT INTO `ot_area_world` VALUES ('654000', '3', '伊犁哈萨克自治州', '650000', '835000');
INSERT INTO `ot_area_world` VALUES ('654002', '4', '伊宁市', '654000', '835000');
INSERT INTO `ot_area_world` VALUES ('654003', '4', '奎屯市', '654000', '833200');
INSERT INTO `ot_area_world` VALUES ('654021', '4', '伊宁县', '654000', '835100');
INSERT INTO `ot_area_world` VALUES ('654022', '4', '察布查尔锡伯自治县', '654000', '835300');
INSERT INTO `ot_area_world` VALUES ('654023', '4', '霍城县', '654000', '835200');
INSERT INTO `ot_area_world` VALUES ('654024', '4', '巩留县', '654000', '835400');
INSERT INTO `ot_area_world` VALUES ('654025', '4', '新源县', '654000', '835800');
INSERT INTO `ot_area_world` VALUES ('654026', '4', '昭苏县', '654000', '835600');
INSERT INTO `ot_area_world` VALUES ('654027', '4', '特克斯县', '654000', '835500');
INSERT INTO `ot_area_world` VALUES ('654028', '4', '尼勒克县', '654000', '835700');
INSERT INTO `ot_area_world` VALUES ('654029', '4', '其它区', '654000', '');
INSERT INTO `ot_area_world` VALUES ('654200', '3', '塔城地区', '650000', '834700');
INSERT INTO `ot_area_world` VALUES ('654201', '4', '塔城市', '654200', '834700');
INSERT INTO `ot_area_world` VALUES ('654202', '4', '乌苏市', '654200', '833000');
INSERT INTO `ot_area_world` VALUES ('654221', '4', '额敏县', '654200', '834600');
INSERT INTO `ot_area_world` VALUES ('654223', '4', '沙湾县', '654200', '832100');
INSERT INTO `ot_area_world` VALUES ('654224', '4', '托里县', '654200', '834500');
INSERT INTO `ot_area_world` VALUES ('654225', '4', '裕民县', '654200', '834800');
INSERT INTO `ot_area_world` VALUES ('654226', '4', '和布克赛尔蒙古自治县', '654200', '834400');
INSERT INTO `ot_area_world` VALUES ('654227', '4', '其它区', '654200', '');
INSERT INTO `ot_area_world` VALUES ('654300', '3', '阿勒泰地区', '650000', '836500');
INSERT INTO `ot_area_world` VALUES ('654301', '4', '阿勒泰市', '654300', '836500');
INSERT INTO `ot_area_world` VALUES ('654321', '4', '布尔津县', '654300', '836600');
INSERT INTO `ot_area_world` VALUES ('654322', '4', '富蕴县', '654300', '836100');
INSERT INTO `ot_area_world` VALUES ('654323', '4', '福海县', '654300', '836400');
INSERT INTO `ot_area_world` VALUES ('654324', '4', '哈巴河县', '654300', '836700');
INSERT INTO `ot_area_world` VALUES ('654325', '4', '青河县', '654300', '836200');
INSERT INTO `ot_area_world` VALUES ('654326', '4', '吉木乃县', '654300', '836800');
INSERT INTO `ot_area_world` VALUES ('654327', '4', '其它区', '654300', '');
INSERT INTO `ot_area_world` VALUES ('659001', '4', '石河子市', '650000', '832000');
INSERT INTO `ot_area_world` VALUES ('659002', '4', '阿拉尔市', '650000', '843300');
INSERT INTO `ot_area_world` VALUES ('659003', '4', '图木舒克市', '650000', '843806');
INSERT INTO `ot_area_world` VALUES ('659004', '4', '五家渠市', '650000', '831300');
INSERT INTO `ot_area_world` VALUES ('710000', '2', '台湾省', '1', '');
INSERT INTO `ot_area_world` VALUES ('710100', '3', '台北市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710101', '4', '中正区', '710100', '100');
INSERT INTO `ot_area_world` VALUES ('710102', '4', '大同区', '710100', '103');
INSERT INTO `ot_area_world` VALUES ('710103', '4', '中山区', '710100', '104');
INSERT INTO `ot_area_world` VALUES ('710104', '4', '松山区', '710100', '105');
INSERT INTO `ot_area_world` VALUES ('710105', '4', '大安区', '710100', '106');
INSERT INTO `ot_area_world` VALUES ('710106', '4', '万华区', '710100', '108');
INSERT INTO `ot_area_world` VALUES ('710107', '4', '信义区', '710100', '110');
INSERT INTO `ot_area_world` VALUES ('710108', '4', '士林区', '710100', '111');
INSERT INTO `ot_area_world` VALUES ('710109', '4', '北投区', '710100', '112');
INSERT INTO `ot_area_world` VALUES ('710110', '4', '内湖区', '710100', '114');
INSERT INTO `ot_area_world` VALUES ('710111', '4', '南港区', '710100', '115');
INSERT INTO `ot_area_world` VALUES ('710112', '4', '文山区', '710100', '116');
INSERT INTO `ot_area_world` VALUES ('710113', '4', '其它区', '710100', '');
INSERT INTO `ot_area_world` VALUES ('710200', '3', '高雄市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710201', '4', '新兴区', '710200', '800');
INSERT INTO `ot_area_world` VALUES ('710202', '4', '前金区', '710200', '801');
INSERT INTO `ot_area_world` VALUES ('710203', '4', '芩雅区', '710200', '802');
INSERT INTO `ot_area_world` VALUES ('710204', '4', '盐埕区', '710200', '803');
INSERT INTO `ot_area_world` VALUES ('710205', '4', '鼓山区', '710200', '804');
INSERT INTO `ot_area_world` VALUES ('710206', '4', '旗津区', '710200', '805');
INSERT INTO `ot_area_world` VALUES ('710207', '4', '前镇区', '710200', '806');
INSERT INTO `ot_area_world` VALUES ('710208', '4', '三民区', '710200', '807');
INSERT INTO `ot_area_world` VALUES ('710209', '4', '左营区', '710200', '813');
INSERT INTO `ot_area_world` VALUES ('710210', '4', '楠梓区', '710200', '811');
INSERT INTO `ot_area_world` VALUES ('710211', '4', '小港区', '710200', '812');
INSERT INTO `ot_area_world` VALUES ('710212', '4', '其它区', '710200', '');
INSERT INTO `ot_area_world` VALUES ('710300', '3', '台南市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710301', '4', '中西区', '710300', '703');
INSERT INTO `ot_area_world` VALUES ('710302', '4', '东区', '710300', '701');
INSERT INTO `ot_area_world` VALUES ('710303', '4', '南区', '710300', '702');
INSERT INTO `ot_area_world` VALUES ('710304', '4', '北区', '710300', '704');
INSERT INTO `ot_area_world` VALUES ('710305', '4', '安平区', '710300', '708');
INSERT INTO `ot_area_world` VALUES ('710306', '4', '安南区', '710300', '709');
INSERT INTO `ot_area_world` VALUES ('710307', '4', '其它区', '710300', '');
INSERT INTO `ot_area_world` VALUES ('710400', '3', '台中市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710401', '4', '中区', '710400', '400');
INSERT INTO `ot_area_world` VALUES ('710402', '4', '东区', '710400', '401');
INSERT INTO `ot_area_world` VALUES ('710403', '4', '南区', '710400', '402');
INSERT INTO `ot_area_world` VALUES ('710404', '4', '西区', '710400', '403');
INSERT INTO `ot_area_world` VALUES ('710405', '4', '北区', '710400', '404');
INSERT INTO `ot_area_world` VALUES ('710406', '4', '北屯区', '710400', '406');
INSERT INTO `ot_area_world` VALUES ('710407', '4', '西屯区', '710400', '407');
INSERT INTO `ot_area_world` VALUES ('710408', '4', '南屯区', '710400', '408');
INSERT INTO `ot_area_world` VALUES ('710409', '4', '其它区', '710400', '');
INSERT INTO `ot_area_world` VALUES ('710500', '3', '金门县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710600', '3', '南投县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710700', '3', '基隆市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710701', '4', '仁爱区', '710700', '200');
INSERT INTO `ot_area_world` VALUES ('710702', '4', '信义区', '710700', '201');
INSERT INTO `ot_area_world` VALUES ('710703', '4', '中正区', '710700', '202');
INSERT INTO `ot_area_world` VALUES ('710704', '4', '中山区', '710700', '203');
INSERT INTO `ot_area_world` VALUES ('710705', '4', '安乐区', '710700', '204');
INSERT INTO `ot_area_world` VALUES ('710706', '4', '暖暖区', '710700', '205');
INSERT INTO `ot_area_world` VALUES ('710707', '4', '七堵区', '710700', '206');
INSERT INTO `ot_area_world` VALUES ('710708', '4', '其它区', '710700', '');
INSERT INTO `ot_area_world` VALUES ('710800', '3', '新竹市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710801', '4', '东区', '710800', '');
INSERT INTO `ot_area_world` VALUES ('710802', '4', '北区', '710800', '');
INSERT INTO `ot_area_world` VALUES ('710803', '4', '香山区', '710800', '');
INSERT INTO `ot_area_world` VALUES ('710804', '4', '其它区', '710800', '');
INSERT INTO `ot_area_world` VALUES ('710900', '3', '嘉义市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('710901', '4', '东区', '710900', '');
INSERT INTO `ot_area_world` VALUES ('710902', '4', '西区', '710900', '');
INSERT INTO `ot_area_world` VALUES ('710903', '4', '其它区', '710900', '');
INSERT INTO `ot_area_world` VALUES ('711100', '4', '新北市', '710000', '');
INSERT INTO `ot_area_world` VALUES ('711200', '4', '宜兰县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('711300', '4', '新竹县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('711400', '4', '桃园县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('711500', '4', '苗栗县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('711700', '4', '彰化县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('711900', '4', '嘉义县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('712100', '4', '云林县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('712400', '4', '屏东县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('712500', '4', '台东县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('712600', '4', '花莲县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('712700', '4', '澎湖县', '710000', '');
INSERT INTO `ot_area_world` VALUES ('810000', '2', '香港特别行政区', '1', '');
INSERT INTO `ot_area_world` VALUES ('810100', '3', '香港岛', '810000', '');
INSERT INTO `ot_area_world` VALUES ('810101', '4', '中西区', '810100', '810101');
INSERT INTO `ot_area_world` VALUES ('810102', '4', '湾仔', '810100', '810102');
INSERT INTO `ot_area_world` VALUES ('810103', '4', '东区', '810100', '810103');
INSERT INTO `ot_area_world` VALUES ('810104', '4', '南区', '810100', '810104');
INSERT INTO `ot_area_world` VALUES ('810200', '3', '九龙', '810000', '');
INSERT INTO `ot_area_world` VALUES ('810201', '4', '九龙城区', '810200', '810201');
INSERT INTO `ot_area_world` VALUES ('810202', '4', '油尖旺区', '810200', '810202');
INSERT INTO `ot_area_world` VALUES ('810203', '4', '深水埗区', '810200', '810203');
INSERT INTO `ot_area_world` VALUES ('810204', '4', '黄大仙区', '810200', '810204');
INSERT INTO `ot_area_world` VALUES ('810205', '4', '观塘区', '810200', '810205');
INSERT INTO `ot_area_world` VALUES ('810300', '3', '新界', '810000', '');
INSERT INTO `ot_area_world` VALUES ('810301', '4', '北区', '810300', '810301');
INSERT INTO `ot_area_world` VALUES ('810302', '4', '大埔区', '810300', '810302');
INSERT INTO `ot_area_world` VALUES ('810303', '4', '沙田区', '810300', '810303');
INSERT INTO `ot_area_world` VALUES ('810304', '4', '西贡区', '810300', '810304');
INSERT INTO `ot_area_world` VALUES ('810305', '4', '元朗区', '810300', '810305');
INSERT INTO `ot_area_world` VALUES ('810306', '4', '屯门区', '810300', '810306');
INSERT INTO `ot_area_world` VALUES ('810307', '4', '荃湾区', '810300', '810307');
INSERT INTO `ot_area_world` VALUES ('810308', '4', '葵青区', '810300', '810308');
INSERT INTO `ot_area_world` VALUES ('810309', '4', '离岛区', '810300', '810309');
INSERT INTO `ot_area_world` VALUES ('820000', '2', '澳门特别行政区', '1', '');
INSERT INTO `ot_area_world` VALUES ('820100', '3', '澳门半岛', '820000', '');
INSERT INTO `ot_area_world` VALUES ('820200', '3', '离岛', '820000', '');
INSERT INTO `ot_area_world` VALUES ('990000', '2', '海外', '1', '');
INSERT INTO `ot_area_world` VALUES ('990100', '3', '海外', '990000', '');
INSERT INTO `ot_area_world` VALUES ('1032697', '4', '光明新区', '440300', '518107');
INSERT INTO `ot_area_world` VALUES ('1032698', '4', '坪山新区', '440300', '518118');
INSERT INTO `ot_area_world` VALUES ('1032699', '4', '大鹏新区', '440300', '518108');
INSERT INTO `ot_area_world` VALUES ('1032700', '4', '龙华新区', '440300', '518131');

-- ----------------------------
-- Table structure for `ot_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ot_attribute`;
CREATE TABLE `ot_attribute` (
  `AB_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性-商品类型',
  `AB_atid` int(11) DEFAULT '0' COMMENT '商品类型ID，attrtype',
  `AB_theme` varchar(200) DEFAULT '' COMMENT '名称',
  `AB_rank` int(11) DEFAULT '0',
  `AB_status` smallint(1) DEFAULT '1',
  `AB_editMode` smallint(1) DEFAULT '0' COMMENT '属性编辑方式',
  `AB_values` text COMMENT '属性可选值列表',
  PRIMARY KEY (`AB_ID`),
  UNIQUE KEY `IM_ID` (`AB_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_attribute
-- ----------------------------
INSERT INTO `ot_attribute` VALUES ('3', '4', '颜色', '20', '1', '2', '');
INSERT INTO `ot_attribute` VALUES ('2', '4', '规格', '10', '1', '0', '');
INSERT INTO `ot_attribute` VALUES ('4', '4', '尺寸', '30', '1', '2', 'one\r\ntwo\r\nthree\r\nfour\r\nfive');
INSERT INTO `ot_attribute` VALUES ('5', '3', '款式', '10', '1', '1', '');
INSERT INTO `ot_attribute` VALUES ('6', '3', '尺寸', '20', '1', '2', '29\r\n30\r\n31\r\n32\r\n40\r\n42');
INSERT INTO `ot_attribute` VALUES ('7', '1', '颜色', '10', '1', '2', '');
INSERT INTO `ot_attribute` VALUES ('8', '1', '大小', '20', '1', '2', 'S\r\nM\r\nL\r\nXL\r\nXXL\r\nXXXL');
INSERT INTO `ot_attribute` VALUES ('9', '1', '款式', '30', '1', '1', '');
INSERT INTO `ot_attribute` VALUES ('10', '5', '尺码', '10', '1', '1', '28\r\n29\r\n30\r\n31\r\n32\r\n33');
INSERT INTO `ot_attribute` VALUES ('11', '1', '尺码', '40', '1', '2', '');
INSERT INTO `ot_attribute` VALUES ('12', '6', '网络制式', '10', '1', '0', '');
INSERT INTO `ot_attribute` VALUES ('13', '6', '尺寸体积', '20', '1', '2', '20*60\r\n30*80\r\n60*120\r\n80*160');

-- ----------------------------
-- Table structure for `ot_attrtype`
-- ----------------------------
DROP TABLE IF EXISTS `ot_attrtype`;
CREATE TABLE `ot_attrtype` (
  `AT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性-商品类型',
  `AT_theme` varchar(200) DEFAULT '' COMMENT '名称',
  `AT_rank` int(11) DEFAULT '0',
  `AT_status` smallint(1) DEFAULT '1',
  `AT_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`AT_ID`),
  UNIQUE KEY `IM_ID` (`AT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_attrtype
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_backupdatabase`
-- ----------------------------
DROP TABLE IF EXISTS `ot_backupdatabase`;
CREATE TABLE `ot_backupdatabase` (
  `BD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BD_time` datetime DEFAULT NULL,
  `BD_type` varchar(25) DEFAULT NULL,
  `BD_filePartNum` smallint(6) DEFAULT NULL,
  `BD_filePath` varchar(200) DEFAULT NULL,
  `BD_fileSize` int(11) DEFAULT '0',
  `BD_tableStr` varchar(4000) DEFAULT NULL,
  `BD_note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`BD_ID`),
  KEY `BB_ID` (`BD_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_backupdatabase
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ot_cart`;
CREATE TABLE `ot_cart` (
  `CR_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车',
  `CR_time` datetime DEFAULT NULL COMMENT '添加时间',
  `CR_userID` int(11) DEFAULT '0' COMMENT '用户ID',
  `CR_goodsID` int(11) DEFAULT '0' COMMENT '商品ID',
  `CR_num` int(11) DEFAULT '0' COMMENT '购买数量',
  PRIMARY KEY (`CR_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_case`
-- ----------------------------
DROP TABLE IF EXISTS `ot_case`;
CREATE TABLE `ot_case` (
  `CS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CS_time` datetime DEFAULT NULL,
  `CS_revTime` datetime DEFAULT NULL,
  `CS_type` varchar(30) DEFAULT NULL,
  `CS_type1ID` int(11) DEFAULT '0',
  `CS_type2ID` int(11) DEFAULT '0',
  `CS_theme` varchar(100) DEFAULT NULL,
  `CS_webImg` text,
  `CS_webImgs` text,
  `CS_rank` int(11) DEFAULT '0',
  `CS_content` longtext,
  `CS_readNum` int(11) DEFAULT '0',
  `CS_isIndex` smallint(1) DEFAULT '0',
  `CS_seokeyword` longtext,
  `CS_seodesc` longtext,
  PRIMARY KEY (`CS_ID`),
  UNIQUE KEY `CS_ID` (`CS_ID`),
  KEY `CS_readNum` (`CS_readNum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_case
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ot_comment`;
CREATE TABLE `ot_comment` (
  `CM_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户评论表',
  `CM_type` varchar(30) DEFAULT '' COMMENT '数据类型',
  `CM_time` datetime DEFAULT NULL COMMENT '提交时间',
  `CM_replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `CM_dataID` int(11) DEFAULT '0' COMMENT '与其它表关联ID',
  `CM_level` smallint(1) DEFAULT '1' COMMENT '评论等级',
  `CM_userID` int(11) DEFAULT '0' COMMENT '与用户表关联ID',
  `CM_userName` varchar(50) DEFAULT '' COMMENT '用户名，管理列表显示',
  `CM_contact` text COMMENT '联系方式',
  `CM_userInfo` text COMMENT '用户其它相关信息',
  `CM_subIP` varchar(50) DEFAULT NULL COMMENT '信息提交IP',
  `CM_otherInfo` text COMMENT '其它信息',
  `CM_note` text COMMENT '评论内容',
  `CM_reply` text COMMENT '管理员回复内容',
  `CM_status` smallint(1) DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`CM_ID`),
  KEY `MA_dataID` (`CM_dataID`),
  KEY `MA_ID` (`CM_ID`),
  KEY `MA_userID` (`CM_userID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_download`
-- ----------------------------
DROP TABLE IF EXISTS `ot_download`;
CREATE TABLE `ot_download` (
  `DL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DL_time` datetime NOT NULL,
  `DL_revTime` datetime DEFAULT NULL,
  `DL_type` varchar(50) DEFAULT NULL,
  `DL_type1ID` int(11) DEFAULT '0',
  `DL_type2ID` int(11) DEFAULT '0',
  `DL_theme` varchar(200) DEFAULT '' COMMENT '下载标题',
  `DL_webImg` varchar(80) DEFAULT '' COMMENT '封面图片',
  `DL_fileName` varchar(80) DEFAULT '' COMMENT '下载文件名',
  `DL_resource` varchar(250) DEFAULT '' COMMENT '外部资源',
  `DL_content` longtext,
  `DL_rank` int(11) DEFAULT '0',
  `DL_readNum` int(11) DEFAULT '0',
  `DL_seodesc` longtext,
  `DL_seokeyword` longtext,
  PRIMARY KEY (`DL_ID`),
  KEY `IF_ID` (`DL_ID`),
  KEY `IF_menu1` (`DL_type1ID`),
  KEY `IF_readNum` (`DL_readNum`),
  KEY `IF_type1ID` (`DL_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_download
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_drrz`
-- ----------------------------
DROP TABLE IF EXISTS `ot_drrz`;
CREATE TABLE `ot_drrz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `ip` varchar(60) DEFAULT NULL,
  `user` varchar(60) DEFAULT NULL,
  `leixin` int(8) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_drrz
-- ----------------------------
INSERT INTO `ot_drrz` VALUES ('1', '2015-10-28 17:37:07', '60.213.190.98', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('2', '2015-10-28 17:37:32', '60.213.190.98', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('3', '2015-11-20 15:47:28', '183.15.67.222', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('4', '2015-11-20 15:47:53', '183.15.67.222', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('5', '2015-11-20 15:59:20', '183.15.67.222', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('6', '2015-11-20 16:11:26', '183.15.67.222', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('7', '2015-11-20 16:14:09', '183.15.67.222', 'prince', '0');
INSERT INTO `ot_drrz` VALUES ('8', '2015-11-20 16:18:12', '183.15.67.222', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('9', '2015-11-20 16:33:19', '183.15.67.222', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('10', '2015-11-20 16:44:27', '183.15.67.222', 'prince002@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('11', '2015-11-20 16:56:19', '183.15.67.222', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('12', '2015-11-20 16:57:53', '183.15.67.222', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('13', '2015-11-21 09:34:16', '59.38.97.7', 'prince001@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('14', '2015-11-21 09:35:23', '59.38.97.7', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('15', '2015-11-21 09:35:40', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('16', '2015-11-21 09:52:49', '59.38.97.7', 'prince001@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('17', '2015-11-21 09:53:45', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('18', '2015-11-21 09:54:31', '59.38.97.7', 'prince002@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('19', '2015-11-21 10:11:15', '59.38.97.7', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('20', '2015-11-21 10:12:04', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('21', '2015-11-21 12:43:01', '59.38.97.7', 'prince004@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('22', '2015-11-21 12:45:37', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('23', '2015-11-21 12:46:01', '59.38.97.7', 'prince005@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('24', '2015-11-21 12:47:53', '59.38.97.7', 'prince006@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('25', '2015-11-21 12:50:28', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('26', '2015-11-21 13:08:16', '59.38.97.7', 'prince002@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('27', '2015-11-21 13:13:20', '59.38.97.7', 'prince004@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('28', '2015-11-21 13:15:29', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('29', '2015-11-21 14:21:16', '59.38.97.7', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('30', '2015-11-21 14:23:05', '59.38.97.7', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('31', '2015-12-01 08:43:50', '113.91.163.239', 'prince001@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('32', '2015-12-01 08:44:15', '113.91.163.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('33', '2015-12-01 10:24:47', '113.91.163.239', 'prince002@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('34', '2015-12-01 10:24:58', '113.91.163.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('35', '2015-12-01 10:27:12', '113.91.163.239', 'prince001@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('36', '2015-12-01 10:27:28', '113.91.163.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('37', '2015-12-01 10:36:01', '113.91.163.239', 'prince002@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('38', '2015-12-01 10:39:16', '113.91.163.239', 'prince004@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('39', '2015-12-01 10:39:51', '113.91.163.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('40', '2015-12-01 10:42:14', '113.91.163.239', 'prince001@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('41', '2015-12-01 10:48:19', '113.91.163.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('42', '2015-12-12 15:01:28', '124.167.111.153', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('43', '2015-12-12 15:05:32', '219.135.225.111', 'admin123', '1');
INSERT INTO `ot_drrz` VALUES ('44', '2015-12-12 15:07:42', '58.59.89.186', 'admin123', '1');
INSERT INTO `ot_drrz` VALUES ('45', '2015-12-12 15:07:48', '125.117.87.180', 'admin123', '1');
INSERT INTO `ot_drrz` VALUES ('46', '2015-12-12 15:08:20', '219.135.225.111', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('47', '2015-12-12 15:08:29', '58.59.89.186', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('48', '2015-12-12 15:08:43', '182.39.155.116', 'admin123', '1');
INSERT INTO `ot_drrz` VALUES ('49', '2015-12-12 15:11:17', '125.117.87.180', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('50', '2015-12-12 15:11:24', '106.38.208.12', 'admin123', '1');
INSERT INTO `ot_drrz` VALUES ('51', '2015-12-12 15:15:46', '125.117.87.180', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('52', '2015-12-12 15:16:15', '106.38.208.12', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('53', '2015-12-12 15:16:17', '125.117.87.180', '123@123.com', '0');
INSERT INTO `ot_drrz` VALUES ('54', '2015-12-12 15:16:25', '112.95.73.67', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('55', '2015-12-12 15:35:20', '125.39.57.39', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('56', '2015-12-12 15:35:46', '219.155.144.242', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('57', '2015-12-12 15:59:58', '125.117.87.180', '123@123.com', '0');
INSERT INTO `ot_drrz` VALUES ('58', '2015-12-12 16:15:39', '125.117.87.180', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('59', '2015-12-12 16:18:11', '124.167.111.153', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('60', '2015-12-12 16:19:46', '139.205.147.129', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('61', '2015-12-12 16:23:41', '219.155.144.242', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('62', '2015-12-12 16:27:00', '219.155.144.242', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('63', '2015-12-12 16:28:38', '219.155.144.242', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('64', '2015-12-12 16:34:19', '124.167.111.153', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('65', '2015-12-12 16:40:37', '219.155.144.242', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('66', '2015-12-12 16:40:51', '122.188.199.156', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('67', '2015-12-12 17:34:21', '124.167.111.153', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('68', '2015-12-12 17:35:41', '112.95.73.67', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('69', '2015-12-12 18:16:52', '36.23.34.174', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('70', '2015-12-12 19:09:04', '36.23.34.174', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('71', '2015-12-12 19:24:16', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('72', '2015-12-12 20:06:26', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('73', '2015-12-12 20:09:29', '14.112.52.144', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('74', '2015-12-12 20:11:48', '14.112.52.144', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('75', '2015-12-12 21:05:08', '124.167.111.153', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('76', '2015-12-12 21:07:07', '220.191.102.241', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('77', '2015-12-12 21:07:37', '124.167.111.153', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('78', '2015-12-12 21:14:30', '220.191.102.241', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('79', '2015-12-12 21:22:32', '125.114.195.154', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('80', '2015-12-12 22:24:57', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('81', '2015-12-12 23:25:41', '58.249.23.162', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('82', '2015-12-12 23:39:02', '183.28.170.213', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('83', '2015-12-12 23:44:58', '183.28.170.213', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('84', '2015-12-12 23:46:36', '183.195.232.24', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('85', '2015-12-12 23:51:46', '183.195.232.39', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('86', '2015-12-13 00:41:53', '106.4.23.194', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('87', '2015-12-13 01:32:31', '106.4.23.194', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('88', '2015-12-13 02:34:48', '219.156.135.57', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('89', '2015-12-13 02:35:43', '219.156.135.57', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('90', '2015-12-13 11:06:38', '211.142.91.46', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('91', '2015-12-13 11:13:46', '124.167.111.153', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('92', '2015-12-13 11:36:15', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('93', '2015-12-13 13:45:19', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('94', '2015-12-13 13:50:00', '222.217.122.129', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('95', '2015-12-13 14:12:35', '211.142.91.46', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('96', '2015-12-13 14:15:58', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('97', '2015-12-13 14:17:50', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('98', '2015-12-13 14:23:18', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('99', '2015-12-13 14:23:56', '219.156.135.57', '123123', '0');
INSERT INTO `ot_drrz` VALUES ('100', '2015-12-13 14:24:15', '219.156.135.57', '123123', '0');
INSERT INTO `ot_drrz` VALUES ('101', '2015-12-13 14:24:53', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('102', '2015-12-13 14:26:20', '117.136.61.80', '123123', '0');
INSERT INTO `ot_drrz` VALUES ('103', '2015-12-13 14:26:57', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('104', '2015-12-13 14:28:47', '117.136.61.80', '123123', '0');
INSERT INTO `ot_drrz` VALUES ('105', '2015-12-13 15:09:40', '183.187.64.119', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('106', '2015-12-13 15:12:24', '49.71.206.8', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('107', '2015-12-13 15:14:33', '49.71.206.8', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('108', '2015-12-13 15:33:10', '27.188.83.184', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('109', '2015-12-13 15:34:19', '27.188.83.184', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('110', '2015-12-13 15:58:20', '219.156.135.57', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('111', '2015-12-13 17:41:22', '120.204.201.76', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('112', '2015-12-13 17:42:59', '140.207.185.122', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('113', '2015-12-13 18:11:13', '140.207.185.122', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('114', '2015-12-13 19:02:51', '140.207.185.122', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('115', '2015-12-13 19:06:32', '119.176.229.46', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('116', '2015-12-13 19:10:10', '183.187.64.119', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('117', '2015-12-13 19:16:12', '211.103.0.110 ', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('118', '2015-12-13 19:55:08', '211.103.0.115 ', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('119', '2015-12-13 20:05:33', '211.103.0.97   ', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('120', '2015-12-13 23:03:04', '140.207.185.125', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('121', '2015-12-14 01:53:07', '219.156.135.57', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('122', '2015-12-14 10:52:06', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('123', '2015-12-14 11:01:02', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('124', '2015-12-14 11:01:33', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('125', '2015-12-14 11:20:31', '183.187.64.119', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('126', '2015-12-14 11:25:30', '123.14.251.132', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('127', '2015-12-14 11:31:20', '219.156.135.57', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('128', '2015-12-14 11:44:38', '115.228.179.212', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('129', '2015-12-14 12:12:01', '115.228.179.212', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('130', '2015-12-14 13:24:45', '42.81.66.58', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('131', '2015-12-14 13:25:26', '42.81.64.98', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('132', '2015-12-14 13:31:34', '42.81.64.98', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('133', '2015-12-14 13:34:43', '183.187.64.156', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('134', '2015-12-14 14:21:18', '183.187.64.156', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('135', '2015-12-14 14:26:17', '27.202.83.80', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('136', '2015-12-14 14:31:47', '49.68.37.26', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('137', '2015-12-14 14:38:55', '49.68.37.26', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('138', '2015-12-14 14:50:05', '183.28.171.239', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('139', '2015-12-14 15:04:56', '183.28.171.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('140', '2015-12-14 15:41:41', '27.202.83.80', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('141', '2015-12-14 15:43:49', '183.28.171.239', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('142', '2015-12-14 15:47:46', '115.207.99.22', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('143', '2015-12-14 15:48:04', '183.28.171.239', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('144', '2015-12-14 16:01:50', '27.202.83.80', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('145', '2015-12-14 18:59:41', '106.39.223.14', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('146', '2015-12-14 19:06:22', '106.39.223.14', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('147', '2015-12-14 19:10:14', '14.16.187.50', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('148', '2015-12-14 19:55:04', '59.40.36.205', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('149', '2015-12-14 20:05:41', '180.173.202.10', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('150', '2015-12-14 20:20:30', '112.236.251.87', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('151', '2015-12-14 20:28:20', '124.113.178.192', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('152', '2015-12-14 20:32:18', '223.104.33.37', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('153', '2015-12-14 20:36:56', '182.39.7.44', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('154', '2015-12-14 20:53:17', '222.140.225.152', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('155', '2015-12-14 20:54:17', '112.236.251.87', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('156', '2015-12-14 20:54:56', '222.140.225.152', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('157', '2015-12-14 20:55:35', '182.39.7.44', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('158', '2015-12-14 20:57:47', '223.104.145.29', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('159', '2015-12-14 21:00:41', '117.91.23.10', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('160', '2015-12-14 21:16:45', '113.31.34.104', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('161', '2015-12-14 21:21:24', '223.156.146.110', 'aa123', '0');
INSERT INTO `ot_drrz` VALUES ('162', '2015-12-14 21:28:23', '27.38.75.182', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('163', '2015-12-14 21:34:29', '114.98.227.69', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('164', '2015-12-14 21:36:48', '42.236.164.151', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('165', '2015-12-14 22:03:13', '183.187.64.156', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('166', '2015-12-14 22:12:10', '182.106.113.92', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('167', '2015-12-14 22:14:52', '182.106.113.92', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('168', '2015-12-14 22:20:37', '182.106.113.92', '778899@778899.com', '0');
INSERT INTO `ot_drrz` VALUES ('169', '2015-12-14 22:47:28', '117.91.23.10', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('170', '2015-12-14 22:48:51', '49.82.235.89', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('171', '2015-12-14 22:49:45', '49.82.235.89', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('172', '2016-01-07 22:51:56', '171.213.60.78', 'cs@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('173', '2016-01-08 16:39:55', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('174', '2016-01-08 16:42:31', '118.112.181.186', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('175', '2016-01-08 16:54:38', '118.112.181.186', 'cs@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('176', '2016-01-08 17:06:23', '118.112.181.186', '123123', '0');
INSERT INTO `ot_drrz` VALUES ('177', '2016-01-10 11:17:11', '118.113.38.224', 'cs@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('178', '2016-01-10 11:22:57', '118.113.38.224', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('179', '2016-01-12 12:38:24', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('180', '2016-01-12 12:39:59', '118.112.181.186', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('181', '2016-01-12 14:07:10', '118.112.181.186', 'cs@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('182', '2016-01-12 14:07:53', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('183', '2016-01-12 14:17:36', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('184', '2016-01-12 14:18:14', '118.112.181.186', 'eee@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('185', '2016-01-13 14:39:58', '118.112.181.186', 'cs@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('186', '2016-01-13 14:42:49', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('187', '2016-01-14 15:12:09', '171.214.148.145', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('188', '2016-01-14 15:53:22', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('189', '2016-01-14 16:38:56', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('190', '2016-01-14 16:57:23', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('191', '2016-01-14 17:22:20', '118.112.181.186', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('192', '2016-01-14 17:23:24', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('193', '2016-01-14 20:43:53', '61.157.126.10', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('194', '2016-01-14 20:46:56', '61.157.126.10', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('195', '2016-01-14 20:49:12', '61.157.126.10', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('196', '2016-01-14 20:49:16', '139.205.63.242', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('197', '2016-01-14 20:49:57', '61.157.126.10', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('198', '2016-01-14 20:50:25', '61.157.126.10', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('199', '2016-01-14 20:51:16', '61.157.126.10', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('200', '2016-01-14 20:51:41', '139.205.63.242', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('201', '2016-01-14 20:51:51', '139.205.63.242', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('202', '2016-01-14 20:51:56', '139.205.63.242', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('203', '2016-01-14 21:05:33', '61.157.126.10', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('204', '2016-01-14 21:10:55', '182.131.12.12', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('205', '2016-01-14 21:18:51', '61.157.126.10', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('206', '2016-01-14 21:22:59', '61.157.126.10', '777@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('207', '2016-01-14 22:26:57', '61.157.126.10', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('208', '2016-01-15 11:27:28', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('209', '2016-01-15 11:35:25', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('210', '2016-01-15 11:38:25', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('211', '2016-01-15 11:41:21', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('212', '2016-01-15 11:41:24', '171.214.148.145', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('213', '2016-01-15 11:56:10', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('214', '2016-01-15 11:56:43', '171.214.148.145', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('215', '2016-01-15 11:58:01', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('216', '2016-01-15 11:58:07', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('217', '2016-01-15 12:44:44', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('218', '2016-01-15 12:47:31', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('219', '2016-01-15 12:48:20', '139.205.56.175', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('220', '2016-01-15 12:48:53', '139.205.56.175', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('221', '2016-01-15 12:49:00', '139.205.56.175', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('222', '2016-01-15 12:57:56', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('223', '2016-01-15 12:58:37', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('224', '2016-01-15 13:04:26', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('225', '2016-01-15 13:06:11', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('226', '2016-01-15 13:06:30', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('227', '2016-01-15 13:07:08', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('228', '2016-01-15 13:07:21', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('229', '2016-01-15 13:17:01', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('230', '2016-01-15 13:42:05', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('231', '2016-01-15 13:47:54', '60.172.191.56', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('232', '2016-01-15 13:48:29', '60.172.191.56', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('233', '2016-01-15 14:05:16', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('234', '2016-01-15 14:14:57', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('235', '2016-01-15 14:35:15', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('236', '2016-01-15 14:36:41', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('237', '2016-01-15 14:52:29', '60.172.191.51', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('238', '2016-01-15 14:54:17', '60.172.191.51', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('239', '2016-01-15 15:02:50', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('240', '2016-01-15 15:08:56', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('241', '2016-01-15 15:12:38', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('242', '2016-01-15 15:13:06', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('243', '2016-01-15 15:13:30', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('244', '2016-01-15 15:43:15', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('245', '2016-01-15 15:44:33', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('246', '2016-01-15 15:46:02', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('247', '2016-01-15 15:51:22', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('248', '2016-01-15 16:02:10', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('249', '2016-01-15 16:03:17', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('250', '2016-01-15 16:16:34', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('251', '2016-01-15 16:18:36', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('252', '2016-01-15 16:20:54', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('253', '2016-01-15 16:26:57', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('254', '2016-01-15 16:28:38', '60.172.191.48', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('255', '2016-01-15 16:29:27', '60.172.191.48', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('256', '2016-01-15 16:29:45', '60.172.191.48', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('257', '2016-01-15 16:29:55', '60.172.191.48', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('258', '2016-01-15 16:56:21', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('259', '2016-01-15 17:34:51', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('260', '2016-01-15 17:35:31', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('261', '2016-01-15 17:39:01', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('262', '2016-01-15 17:44:00', '60.172.191.54', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('263', '2016-01-15 17:44:30', '60.172.191.54', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('264', '2016-01-15 17:48:46', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('265', '2016-01-15 17:49:31', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('266', '2016-01-15 17:55:53', '171.214.148.145', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('267', '2016-01-15 17:57:14', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('268', '2016-01-15 17:57:32', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('269', '2016-01-15 18:00:44', '118.112.181.186', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('270', '2016-01-15 18:01:34', '118.112.181.186', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('271', '2016-01-15 18:03:18', '60.172.191.48', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('272', '2016-01-15 18:03:53', '60.172.191.48', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('273', '2016-01-15 18:17:35', '60.172.191.29', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('274', '2016-01-15 18:25:07', '171.212.223.21', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('275', '2016-01-15 18:27:12', '171.212.223.21', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('276', '2016-01-15 18:40:25', '171.212.223.21', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('277', '2016-01-15 18:49:17', '171.212.223.21', '888', '0');
INSERT INTO `ot_drrz` VALUES ('278', '2016-01-15 18:49:50', '171.212.223.21', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('279', '2016-01-15 18:51:58', '117.136.88.149', '888', '0');
INSERT INTO `ot_drrz` VALUES ('280', '2016-01-15 18:53:50', '117.136.88.149', '888', '0');
INSERT INTO `ot_drrz` VALUES ('281', '2016-01-15 19:13:25', '60.172.191.19', '888', '0');
INSERT INTO `ot_drrz` VALUES ('282', '2016-01-15 19:17:28', '60.172.191.19', '888', '0');
INSERT INTO `ot_drrz` VALUES ('283', '2016-01-15 19:19:36', '60.172.191.19', '888', '0');
INSERT INTO `ot_drrz` VALUES ('284', '2016-01-15 19:33:59', '171.214.148.145', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('285', '2016-01-15 19:37:58', '60.172.191.23', '888', '0');
INSERT INTO `ot_drrz` VALUES ('286', '2016-01-15 19:40:56', '60.172.191.23', '888', '0');
INSERT INTO `ot_drrz` VALUES ('287', '2016-01-15 19:51:02', '60.172.191.23', '888', '0');
INSERT INTO `ot_drrz` VALUES ('288', '2016-01-15 20:10:26', '60.172.191.19', '888', '0');
INSERT INTO `ot_drrz` VALUES ('289', '2016-01-15 20:44:35', '171.212.223.21', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('290', '2016-01-15 20:45:04', '171.212.223.21', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('291', '2016-01-15 20:46:26', '171.212.223.21', '888', '0');
INSERT INTO `ot_drrz` VALUES ('292', '2016-01-15 21:06:30', '60.172.191.25', '888', '0');
INSERT INTO `ot_drrz` VALUES ('293', '2016-01-15 21:06:38', '171.214.148.145', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('294', '2016-01-15 21:07:00', '60.172.191.30', '888', '0');
INSERT INTO `ot_drrz` VALUES ('295', '2016-01-15 21:09:23', '60.172.191.30', '888', '0');
INSERT INTO `ot_drrz` VALUES ('296', '2016-01-15 21:17:36', '171.212.223.21', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('297', '2016-01-15 21:18:34', '171.212.223.21', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('298', '2016-01-16 01:00:44', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('299', '2016-01-16 01:01:06', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('300', '2016-01-16 01:01:15', '175.155.112.40', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('301', '2016-01-16 01:04:11', '118.112.207.139', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('302', '2016-01-16 03:24:28', '175.155.112.40', 'ccc', '0');
INSERT INTO `ot_drrz` VALUES ('303', '2016-01-16 08:46:11', '139.205.63.242', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('304', '2016-01-16 09:34:36', '110.184.206.119', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('305', '2016-01-16 09:43:56', '139.205.63.242', '77@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('306', '2016-11-17 21:39:47', '', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('307', '2016-11-17 21:40:27', '113.246.84.229', 'admin', '1');
INSERT INTO `ot_drrz` VALUES ('308', '2016-11-30 21:59:58', '', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('309', '2017-02-21 16:30:17', '', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('310', '2017-02-21 16:40:30', '', 'admin@qq.com', '0');
INSERT INTO `ot_drrz` VALUES ('311', '2017-02-21 17:09:39', '113.247.55.39', 'admin', '1');

-- ----------------------------
-- Table structure for `ot_financial`
-- ----------------------------
DROP TABLE IF EXISTS `ot_financial`;
CREATE TABLE `ot_financial` (
  `FC_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员财务明细',
  `FC_type` varchar(30) DEFAULT '' COMMENT '类型',
  `FC_time` datetime DEFAULT NULL COMMENT '添加时间',
  `FC_userID` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `FC_income` float(11,2) DEFAULT '0.00' COMMENT '收入/充值金额',
  `FC_expend` float(11,2) DEFAULT '0.00' COMMENT '消费/支出金额',
  `FC_remain` float(11,2) DEFAULT '0.00' COMMENT '当前账户余额',
  `FC_note` varchar(80) DEFAULT '' COMMENT '摘要',
  PRIMARY KEY (`FC_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_financial
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ot_goods`;
CREATE TABLE `ot_goods` (
  `GD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GD_time` datetime DEFAULT NULL,
  `GD_revTime` datetime DEFAULT NULL,
  `GD_type` varchar(30) DEFAULT NULL,
  `GD_typeID` int(11) DEFAULT '0',
  `GD_attrID` int(11) DEFAULT '0' COMMENT '商品类型ID',
  `GD_theme` varchar(100) DEFAULT NULL,
  `GD_unit` varchar(5) DEFAULT '' COMMENT '商品单位',
  `GD_price` float(11,2) DEFAULT '0.00',
  `GD_number` varchar(80) DEFAULT '' COMMENT '商品编号',
  `GD_size` varchar(60) DEFAULT '' COMMENT '商品规格',
  `GD_webImg` text,
  `GD_webImgs` text,
  `GD_group` varchar(30) DEFAULT '' COMMENT '商品推荐组合ID',
  `GD_rank` int(11) DEFAULT '0',
  `GD_content` longtext,
  `GD_attr` text COMMENT '商品属性',
  `GD_readNum` int(11) DEFAULT '0',
  `GD_buyNum` int(11) DEFAULT '0' COMMENT '已下单数量',
  `GD_commend` varchar(30) DEFAULT '',
  `GD_stock` smallint(1) DEFAULT '1' COMMENT '商品库存,0-缺货，1-有货',
  `GD_status` smallint(1) DEFAULT '1' COMMENT '是否显示',
  `GD_seokeyword` longtext,
  `GD_seodesc` longtext,
  PRIMARY KEY (`GD_ID`),
  UNIQUE KEY `CS_ID` (`GD_ID`),
  KEY `CS_readNum` (`GD_readNum`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_goodsaction`
-- ----------------------------
DROP TABLE IF EXISTS `ot_goodsaction`;
CREATE TABLE `ot_goodsaction` (
  `GA_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品活动表',
  `GA_type` varchar(50) NOT NULL DEFAULT '' COMMENT '数据类型，区分不同活动',
  `GA_time` datetime DEFAULT NULL COMMENT '数据添加时间',
  `GA_gdid` int(11) NOT NULL DEFAULT '0' COMMENT '参与活动商品',
  `GA_rank` int(11) DEFAULT '0',
  `GA_webImg` varchar(80) DEFAULT '',
  `GA_startTime` datetime DEFAULT NULL COMMENT '活动开始时间',
  `GA_endTime` datetime DEFAULT NULL COMMENT '活动结束时间',
  `GA_gdprice` float(11,2) DEFAULT '0.00' COMMENT '参与活动价',
  `GA_gdnum` int(11) DEFAULT '0' COMMENT '参与活动的商品数量上限，0-不限',
  `GA_person` int(11) DEFAULT '0' COMMENT '启动活动的参与人数（0-不限）',
  `GA_buyNum` int(11) DEFAULT '0' COMMENT '已下订单数量',
  `GA_otherInfo` text COMMENT '商品活动的其它信息',
  `GA_note` text COMMENT '活动说明',
  `GA_readNum` int(11) DEFAULT '0',
  `GA_seoTitle` varchar(300) DEFAULT NULL,
  `GA_seoWord` text,
  `GA_seoDesc` text,
  PRIMARY KEY (`GA_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_goodsaction
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_goodsattr`
-- ----------------------------
DROP TABLE IF EXISTS `ot_goodsattr`;
CREATE TABLE `ot_goodsattr` (
  `GA_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值',
  `GA_gdid` int(11) DEFAULT '0',
  `GA_abid` int(11) DEFAULT '0',
  `GA_value` varchar(100) DEFAULT '',
  PRIMARY KEY (`GA_ID`),
  UNIQUE KEY `IM_ID` (`GA_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_goodsattr
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `ot_goodstype`;
CREATE TABLE `ot_goodstype` (
  `GT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GT_type` varchar(30) DEFAULT '' COMMENT '数据类型',
  `GT_fid` int(11) DEFAULT '0' COMMENT '父级ID',
  `GT_theme` varchar(60) DEFAULT '' COMMENT '商品分类名称',
  `GT_typeImg` varchar(80) DEFAULT '' COMMENT '商品分类图片',
  `GT_level` int(11) DEFAULT '0' COMMENT '栏目等级',
  `GT_rank` int(11) DEFAULT '0' COMMENT '分类排序',
  `GT_status` smallint(1) DEFAULT '1' COMMENT '分类状态，是否显示',
  `GT_commend` smallint(1) DEFAULT '0' COMMENT '是否推荐',
  `GT_seoTitle` varchar(200) DEFAULT NULL,
  `GT_seoDesc` text,
  `GT_seoWord` text,
  PRIMARY KEY (`GT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_goodstype
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_hiring`
-- ----------------------------
DROP TABLE IF EXISTS `ot_hiring`;
CREATE TABLE `ot_hiring` (
  `HR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HR_time` datetime DEFAULT NULL COMMENT '发布时间',
  `HR_revTime` datetime DEFAULT NULL,
  `HR_endTime` datetime DEFAULT NULL COMMENT '结束日期',
  `HR_type` varchar(50) DEFAULT '',
  `HR_type1ID` int(11) DEFAULT '0',
  `HR_type2ID` int(11) DEFAULT '0',
  `HR_theme` varchar(250) DEFAULT '' COMMENT '招聘职位',
  `HR_address` varchar(100) DEFAULT '' COMMENT '工作地点',
  `HR_number` varchar(20) DEFAULT '' COMMENT '招聘人数',
  `HR_wages` varchar(30) DEFAULT '' COMMENT '工资待遇',
  `HR_content` longtext COMMENT '详细说明',
  `HR_rank` int(11) DEFAULT '0',
  `HR_readNum` int(11) DEFAULT '0',
  `HR_seodesc` varchar(350) DEFAULT '',
  `HR_seokeyword` varchar(350) DEFAULT '',
  PRIMARY KEY (`HR_ID`),
  KEY `IF_ID` (`HR_ID`),
  KEY `IF_menu1` (`HR_type1ID`),
  KEY `IF_readNum` (`HR_readNum`),
  KEY `IF_type1ID` (`HR_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_hiring
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_images`
-- ----------------------------
DROP TABLE IF EXISTS `ot_images`;
CREATE TABLE `ot_images` (
  `IA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IA_type` varchar(40) DEFAULT NULL,
  `IA_typeID` int(11) DEFAULT '0',
  `IA_theme` varchar(80) DEFAULT NULL,
  `IA_rank` int(11) DEFAULT '0',
  `IA_img` varchar(30) DEFAULT NULL,
  `IA_URL` varchar(120) DEFAULT NULL,
  `IA_note` longtext,
  `IA_othersItem` varchar(250) DEFAULT NULL,
  `IA_state` smallint(1) DEFAULT '1',
  PRIMARY KEY (`IA_ID`),
  KEY `IA_ID` (`IA_ID`),
  KEY `IA_typeID` (`IA_typeID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_images
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_info`
-- ----------------------------
DROP TABLE IF EXISTS `ot_info`;
CREATE TABLE `ot_info` (
  `IF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IF_time` datetime NOT NULL,
  `IF_revTime` datetime DEFAULT NULL,
  `IF_type` varchar(50) DEFAULT NULL,
  `IF_type1ID` int(11) DEFAULT '0',
  `IF_type2ID` int(11) DEFAULT '0',
  `IF_theme` varchar(250) DEFAULT NULL,
  `IF_webImg` varchar(255) DEFAULT '',
  `IF_content` longtext,
  `IF_rank` int(11) DEFAULT '0',
  `IF_readNum` int(11) DEFAULT '0',
  `IF_isIndex` smallint(1) DEFAULT '0',
  `IF_seodesc` longtext,
  `IF_seokeyword` longtext,
  `zt` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IF_ID`),
  KEY `IF_ID` (`IF_ID`),
  KEY `IF_menu1` (`IF_type1ID`),
  KEY `IF_readNum` (`IF_readNum`),
  KEY `IF_type1ID` (`IF_type`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_info
-- ----------------------------
INSERT INTO `ot_info` VALUES ('117', '2016-01-15 18:35:55', null, 'news', '0', '0', '最新动态', '', '<p>\r\n	欢迎进入耀光财富互助社区，进入社区你将与财富牵手，让我们携手共创美好未来！！！\r\n</p>\r\n<p>\r\n	系统进入试运行阶段，请各位会员提出宝贵的意见及建意。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '0', '0', '0', null, null, '0');

-- ----------------------------
-- Table structure for `ot_infotype`
-- ----------------------------
DROP TABLE IF EXISTS `ot_infotype`;
CREATE TABLE `ot_infotype` (
  `IT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IT_type` varchar(40) DEFAULT NULL,
  `IT_themeType` varchar(30) DEFAULT NULL,
  `IT_type1ID` int(11) DEFAULT '0',
  `IT_theme` varchar(50) DEFAULT NULL,
  `IT_alias` varchar(50) DEFAULT '' COMMENT '栏目别名',
  `IT_rank` int(11) DEFAULT '0',
  `IT_typeImg` varchar(60) DEFAULT NULL,
  `IT_note` text COMMENT '栏目描述',
  `IT_seoTitle` varchar(100) DEFAULT '' COMMENT 'SEO',
  `IT_seoDesc` text,
  `IT_seoWord` text,
  PRIMARY KEY (`IT_ID`),
  KEY `IT_ID` (`IT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_infotype
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_infoweb`
-- ----------------------------
DROP TABLE IF EXISTS `ot_infoweb`;
CREATE TABLE `ot_infoweb` (
  `IW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_type` varchar(50) NOT NULL,
  `IW_theme` varchar(60) DEFAULT '',
  `IW_alias` varchar(60) DEFAULT '',
  `IW_content` longtext,
  `IW_rank` int(11) DEFAULT '0',
  `IW_typeImg` varchar(30) DEFAULT '' COMMENT '栏目图片',
  `IW_seotitle` varchar(250) DEFAULT NULL,
  `IW_seodesc` longtext,
  `IW_seokeyword` longtext,
  PRIMARY KEY (`IW_ID`),
  KEY `WB_ID` (`IW_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_infoweb
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_integral`
-- ----------------------------
DROP TABLE IF EXISTS `ot_integral`;
CREATE TABLE `ot_integral` (
  `IG_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分商品表',
  `IG_time` datetime DEFAULT NULL,
  `IG_revTime` datetime DEFAULT NULL,
  `IG_type` varchar(30) DEFAULT NULL,
  `IG_typeID` int(11) DEFAULT '0',
  `IG_theme` varchar(100) DEFAULT NULL,
  `IG_integral` float(11,2) DEFAULT '0.00',
  `IG_number` varchar(80) DEFAULT '' COMMENT '商品编号',
  `IG_size` varchar(60) DEFAULT '' COMMENT '商品规格',
  `IG_webImg` text,
  `IG_webImgs` text,
  `IG_group` varchar(30) DEFAULT '' COMMENT '商品推荐组合ID',
  `IG_rank` int(11) DEFAULT '0',
  `IG_content` longtext,
  `IG_attr` text COMMENT '商品属性',
  `IG_readNum` int(11) DEFAULT '0',
  `IG_commend` varchar(30) DEFAULT '',
  `IG_stock` smallint(1) DEFAULT '1' COMMENT '商品库存,0-缺货，1-有货',
  `IG_seokeyword` longtext,
  `IG_seodesc` longtext,
  PRIMARY KEY (`IG_ID`),
  UNIQUE KEY `CS_ID` (`IG_ID`),
  KEY `CS_readNum` (`IG_readNum`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_integral
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_ip`
-- ----------------------------
DROP TABLE IF EXISTS `ot_ip`;
CREATE TABLE `ot_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `leixin` varchar(255) NOT NULL DEFAULT '0',
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_jsbz`
-- ----------------------------
DROP TABLE IF EXISTS `ot_jsbz`;
CREATE TABLE `ot_jsbz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zffs1` int(8) NOT NULL DEFAULT '0',
  `zffs2` int(8) NOT NULL DEFAULT '0',
  `zffs3` int(8) NOT NULL DEFAULT '0',
  `jb` decimal(15,0) NOT NULL DEFAULT '0',
  `zt` int(8) NOT NULL DEFAULT '0',
  `user` varchar(255) DEFAULT NULL,
  `qr_zt` int(8) DEFAULT '0',
  `user_tjr` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_nc` varchar(255) DEFAULT NULL,
  `qb` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=813 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_jsbz
-- ----------------------------
INSERT INTO `ot_jsbz` VALUES ('808', '1', '1', '1', '500', '1', 'c2', '1', 'admin@qq.com', '2016-01-16 01:09:06', 'c2', '0');
INSERT INTO `ot_jsbz` VALUES ('812', '1', '1', '1', '500', '0', 'ccc', '0', 'admin@qq.com', '2016-01-16 10:05:01', 'ccc', '0');
INSERT INTO `ot_jsbz` VALUES ('810', '1', '1', '1', '200', '1', 'ccc', '1', 'admin@qq.com', '2016-01-16 01:12:31', 'ccc', '0');
INSERT INTO `ot_jsbz` VALUES ('811', '1', '1', '1', '500', '1', 'ccc', '1', 'admin@qq.com', '2016-01-16 01:12:31', 'ccc', '0');

-- ----------------------------
-- Table structure for `ot_link`
-- ----------------------------
DROP TABLE IF EXISTS `ot_link`;
CREATE TABLE `ot_link` (
  `LN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LN_type` varchar(20) NOT NULL,
  `LN_theme` varchar(200) DEFAULT NULL,
  `LN_rank` int(11) DEFAULT '0',
  `LN_state` smallint(1) DEFAULT '1',
  `LN_imgMode` varchar(20) DEFAULT NULL,
  `LN_imgUrl` varchar(200) DEFAULT NULL,
  `LN_webUrl` varchar(200) DEFAULT NULL,
  `LN_time` datetime DEFAULT NULL,
  PRIMARY KEY (`LN_ID`),
  UNIQUE KEY `IM_ID` (`LN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_logusers`
-- ----------------------------
DROP TABLE IF EXISTS `ot_logusers`;
CREATE TABLE `ot_logusers` (
  `LU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LU_time` datetime DEFAULT NULL,
  `LU_userName` varchar(35) DEFAULT NULL,
  `LU_userID` int(11) DEFAULT '0',
  `LU_type` varchar(35) DEFAULT NULL,
  `LU_note` longtext,
  PRIMARY KEY (`LU_ID`),
  KEY `LU_ID` (`LU_ID`),
  KEY `LU_userID` (`LU_userID`),
  KEY `LU_userID1` (`LU_userName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_logusers
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_member`
-- ----------------------------
DROP TABLE IF EXISTS `ot_member`;
CREATE TABLE `ot_member` (
  `MB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MB_time` date DEFAULT NULL,
  `MB_loginTime` datetime DEFAULT NULL,
  `MB_loginNum` int(11) DEFAULT '0',
  `MB_loginIP` varchar(20) DEFAULT NULL,
  `MB_realname` varchar(30) DEFAULT NULL,
  `MB_username` varchar(30) NOT NULL,
  `MB_userpwd` varchar(32) NOT NULL,
  `MB_userKey` varchar(36) DEFAULT NULL,
  `MB_right` int(11) DEFAULT '20',
  `MB_userGroup` int(11) DEFAULT '0',
  `MB_rightStr` longtext,
  `MB_itemNum` int(11) DEFAULT '20',
  PRIMARY KEY (`MB_ID`),
  KEY `MB_itemNum` (`MB_itemNum`),
  KEY `MB_loginNum` (`MB_loginNum`),
  KEY `MB_userKey` (`MB_userKey`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_member
-- ----------------------------
INSERT INTO `ot_member` VALUES ('22', null, null, '0', null, null, 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '0', null, '20');

-- ----------------------------
-- Table structure for `ot_memberlog`
-- ----------------------------
DROP TABLE IF EXISTS `ot_memberlog`;
CREATE TABLE `ot_memberlog` (
  `ML_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ML_time` datetime NOT NULL,
  `ML_date` date NOT NULL,
  `ML_userID` int(11) NOT NULL,
  `ML_realname` varchar(30) NOT NULL,
  `ML_ip` varchar(20) NOT NULL,
  `ML_ipCN` varchar(50) NOT NULL,
  `ML_menuFileID` mediumint(9) NOT NULL DEFAULT '0',
  `ML_note` varchar(255) DEFAULT NULL,
  `ML_readNum` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ML_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_memberlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_menufile`
-- ----------------------------
DROP TABLE IF EXISTS `ot_menufile`;
CREATE TABLE `ot_menufile` (
  `MF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MF_level` int(11) DEFAULT '0',
  `MF_fileID` int(11) DEFAULT '0',
  `MF_theme` varchar(50) DEFAULT NULL,
  `MF_fileName` varchar(35) DEFAULT NULL,
  `MF_getMudi` varchar(16) DEFAULT NULL,
  `MF_example` varchar(160) DEFAULT NULL,
  `MF_rank` int(11) DEFAULT '0',
  `MF_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MF_ID`),
  KEY `MF_fileID` (`MF_fileID`),
  KEY `MF_ID` (`MF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_menufile
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_menutree`
-- ----------------------------
DROP TABLE IF EXISTS `ot_menutree`;
CREATE TABLE `ot_menutree` (
  `MT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MT_level` int(11) DEFAULT '0',
  `MT_menuID` int(11) DEFAULT '0',
  `MT_fileID` int(11) DEFAULT '0',
  `MT_theme` varchar(50) DEFAULT NULL,
  `MT_fileName` varchar(25) DEFAULT NULL,
  `MT_getMudi` varchar(20) DEFAULT NULL,
  `MT_getDataMode` varchar(50) DEFAULT NULL,
  `MT_getDataModeStr` varchar(50) DEFAULT NULL,
  `MT_getDataType` varchar(20) DEFAULT NULL,
  `MT_getDataTypeCN` varchar(50) DEFAULT NULL,
  `MT_getDataType2` varchar(20) DEFAULT NULL,
  `MT_getDataID` int(11) DEFAULT '0',
  `MT_getImgSize` varchar(60) DEFAULT '',
  `MT_getImgSize2` varchar(60) DEFAULT '',
  `MT_getOthers` varchar(160) DEFAULT NULL,
  `MT_URL` varchar(200) DEFAULT NULL,
  `MT_rank` int(11) DEFAULT '0',
  `MT_state` int(11) DEFAULT '0',
  PRIMARY KEY (`MT_ID`),
  KEY `MT_fileID` (`MT_fileID`),
  KEY `MT_ID` (`MT_ID`),
  KEY `MT_menuID` (`MT_menuID`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_menutree
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_message`
-- ----------------------------
DROP TABLE IF EXISTS `ot_message`;
CREATE TABLE `ot_message` (
  `MA_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '前台提交信息，留言、申请等',
  `MA_type` varchar(30) DEFAULT '' COMMENT '数据类型',
  `MA_theme` varchar(60) DEFAULT '' COMMENT '留言主题',
  `MA_time` datetime DEFAULT NULL COMMENT '提交时间',
  `MA_replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `MA_dataID` int(11) DEFAULT '0' COMMENT '与其它表关联ID',
  `MA_userID` int(11) DEFAULT '0' COMMENT '与用户表关联ID',
  `MA_userName` varchar(50) DEFAULT '' COMMENT '留言用户名，管理列表显示',
  `MA_contact` text COMMENT '联系方式',
  `MA_userInfo` text COMMENT '用户其它相关信息',
  `MA_subIP` varchar(50) DEFAULT NULL COMMENT '信息提交IP',
  `MA_otherInfo` text COMMENT '其它信息',
  `MA_note` text COMMENT '用户留言内容',
  `MA_reply` text COMMENT '管理员回复内容',
  `MA_status` smallint(1) DEFAULT '0' COMMENT '审核状态',
  `zt` int(8) NOT NULL DEFAULT '0',
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MA_ID`),
  KEY `MA_dataID` (`MA_dataID`),
  KEY `MA_ID` (`MA_ID`),
  KEY `MA_userID` (`MA_userID`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_message
-- ----------------------------
INSERT INTO `ot_message` VALUES ('84', 'message', '1111', '2016-01-15 17:37:56', '2016-01-15 17:38:16', '0', '0', '77@qq.com', null, null, null, '参与者拒绝汇款', '111', '1321321', '0', '1', '/Uploads/145285067555398.png');

-- ----------------------------
-- Table structure for `ot_mobmsgset`
-- ----------------------------
DROP TABLE IF EXISTS `ot_mobmsgset`;
CREATE TABLE `ot_mobmsgset` (
  `SYS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYS_theme` varchar(100) DEFAULT NULL,
  `SYS_address` varchar(200) DEFAULT NULL,
  `SYS_postCode` varchar(50) DEFAULT NULL,
  `SYS_contact` varchar(50) DEFAULT '',
  `SYS_mobile` varchar(50) DEFAULT '',
  `SYS_mail` varchar(80) DEFAULT NULL,
  `SYS_phone` varchar(50) DEFAULT NULL,
  `SYS_hotPhone` varchar(50) DEFAULT NULL,
  `SYS_fax` varchar(50) DEFAULT NULL,
  `SYS_qq` varchar(30) DEFAULT NULL,
  `SYS_banquan` varchar(100) DEFAULT NULL,
  `SYS_seoTitle` varchar(300) DEFAULT '',
  `SYS_seoWord` text,
  `SYS_seoDesc` text,
  PRIMARY KEY (`SYS_ID`),
  KEY `SYS_postCode` (`SYS_postCode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_mobmsgset
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_order`
-- ----------------------------
DROP TABLE IF EXISTS `ot_order`;
CREATE TABLE `ot_order` (
  `OD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户订单表',
  `OD_type` varchar(30) DEFAULT '' COMMENT '订单类型',
  `OD_time` datetime DEFAULT NULL COMMENT '添加时间',
  `OD_revTime` datetime DEFAULT NULL COMMENT '状态修改时间',
  `OD_sn` varchar(60) DEFAULT '' COMMENT '订单编号',
  `OD_userID` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `OD_dataID` varchar(30) DEFAULT '' COMMENT '商品ID字符患，用于统计已订购数量',
  `OD_address` text COMMENT '收货地址',
  `OD_goods` text COMMENT '商品信息',
  `OD_ship` text COMMENT '物流配送信息',
  `OD_pay` smallint(1) DEFAULT '1' COMMENT '支付方式,0-货到付款;1-支付宝',
  `OD_gMoney` float(11,2) DEFAULT '0.00' COMMENT '本次订单的商品总价',
  `OD_sMoney` float(11,2) DEFAULT '0.00' COMMENT '本次订单的物流费用',
  `OD_status` varchar(5) DEFAULT '000' COMMENT '订单状态',
  `OD_tradeOn` varchar(60) DEFAULT '' COMMENT '支付宝交易号',
  `OD_shipSN` varchar(60) DEFAULT '' COMMENT '物流单号',
  PRIMARY KEY (`OD_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_orderinte`
-- ----------------------------
DROP TABLE IF EXISTS `ot_orderinte`;
CREATE TABLE `ot_orderinte` (
  `OI_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户积分商品订单表',
  `OI_type` varchar(30) DEFAULT '' COMMENT '订单类型',
  `OI_time` datetime DEFAULT NULL COMMENT '添加时间',
  `OI_revTime` datetime DEFAULT NULL COMMENT '状态修改时间',
  `OI_sn` varchar(60) DEFAULT '' COMMENT '订单编号',
  `OI_userID` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `OI_address` text COMMENT '收货地址',
  `OI_goods` text COMMENT '积分商品信息',
  `OI_ship` text COMMENT '物流配送信息',
  `OI_pay` smallint(1) DEFAULT '1' COMMENT '支付方式,0-货到付款;1-支付宝',
  `OI_integral` float(11,2) DEFAULT '0.00' COMMENT '本次订单所需积分',
  `OI_sMoney` float(11,2) DEFAULT '0.00' COMMENT '本次订单的物流费用',
  `OI_status` varchar(5) DEFAULT '600' COMMENT '订单状态',
  PRIMARY KEY (`OI_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_orderinte
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_orderstatus`
-- ----------------------------
DROP TABLE IF EXISTS `ot_orderstatus`;
CREATE TABLE `ot_orderstatus` (
  `OS_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单状态表',
  `OS_time` datetime DEFAULT NULL COMMENT '添加时间',
  `OS_theme` varchar(200) DEFAULT '' COMMENT '名称',
  `OS_code` varchar(10) DEFAULT '' COMMENT '状态代码',
  `OS_note` varchar(300) DEFAULT '' COMMENT '备注',
  `OS_rank` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`OS_ID`),
  UNIQUE KEY `IM_ID` (`OS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_orderstatus
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_pin`
-- ----------------------------
DROP TABLE IF EXISTS `ot_pin`;
CREATE TABLE `ot_pin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `zt` varchar(255) DEFAULT NULL,
  `sc_date` datetime DEFAULT NULL,
  `sy_user` varchar(255) NOT NULL DEFAULT '0',
  `sy_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_pin
-- ----------------------------
INSERT INTO `ot_pin` VALUES ('281', '77@qq.com', '355a0b37151efc2329c3d9643458bde5', '1', '2016-01-15 16:22:17', '888', '2016-01-15 18:48:22');
INSERT INTO `ot_pin` VALUES ('282', 'admin@qq.com', '543c8b023a4cf776836bd5ac80f32307', '1', '2016-01-15 16:22:17', 'ppp', '2016-01-15 21:19:08');
INSERT INTO `ot_pin` VALUES ('283', 'admin@qq.com', '2dddb23353995d6b10eb1d2bf6a677ce', '1', '2016-01-15 16:22:17', 'ccc', '2016-01-16 01:06:13');
INSERT INTO `ot_pin` VALUES ('284', 'admin@qq.com', '6fee75e9804e447cb3646562654ced46', '1', '2016-01-15 16:22:17', 'c2', '2016-01-16 01:06:32');
INSERT INTO `ot_pin` VALUES ('285', 'admin@qq.com', 'e63003c97d2cfbf73c49164907b94f3b', '0', '2016-01-15 16:22:17', '0', null);
INSERT INTO `ot_pin` VALUES ('286', 'admin@qq.com', 'ec14ee64eabf4f693973f550eb7ce259', '0', '2016-01-15 16:22:17', '0', null);
INSERT INTO `ot_pin` VALUES ('287', 'admin@qq.com', '3969d5bdd0e40ecdd25e6e0fe3756347', '0', '2016-01-15 16:22:17', '0', null);
INSERT INTO `ot_pin` VALUES ('288', 'admin@qq.com', '13692e723a722603b752aff7a88ee195', '0', '2016-01-15 16:22:17', '0', null);
INSERT INTO `ot_pin` VALUES ('289', 'admin@qq.com', 'e23bd7f4b6d2910fa9d011a7c82a9aa1', '0', '2016-01-15 16:22:17', '0', null);
INSERT INTO `ot_pin` VALUES ('290', 'admin@qq.com', '8e32b31421f52546f620026350ec3e04', '0', '2016-01-15 16:22:17', '0', null);

-- ----------------------------
-- Table structure for `ot_ppdd`
-- ----------------------------
DROP TABLE IF EXISTS `ot_ppdd`;
CREATE TABLE `ot_ppdd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) DEFAULT NULL,
  `g_id` varchar(255) DEFAULT NULL,
  `jb` decimal(15,0) DEFAULT NULL,
  `p_user` varchar(255) DEFAULT NULL,
  `g_user` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `zt` int(8) NOT NULL DEFAULT '0',
  `pic` varchar(255) DEFAULT NULL,
  `zffs1` int(8) DEFAULT NULL,
  `zffs2` int(8) DEFAULT NULL,
  `zffs3` int(8) DEFAULT NULL,
  `ts_zt` int(8) NOT NULL DEFAULT '0',
  `date_hk` datetime DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_ppdd
-- ----------------------------
INSERT INTO `ot_ppdd` VALUES ('37', '1115', '808', '500', 'ccc', 'c2', '2016-01-16 01:09:27', '2', '/Uploads/145287779366949.png', '1', '1', '1', '0', '2016-01-16 01:09:55', null);
INSERT INTO `ot_ppdd` VALUES ('38', '1120', '811', '500', 'c2', 'ccc', '2016-01-16 01:13:52', '2', '/Uploads/145287807727928.jpg', '1', '1', '1', '0', '2016-01-16 01:14:40', null);
INSERT INTO `ot_ppdd` VALUES ('39', '1121', '810', '200', 'c2', 'ccc', '2016-01-16 01:58:07', '2', '/Uploads/145290812591666.jpg', '1', '1', '1', '0', '2016-01-16 09:37:14', null);

-- ----------------------------
-- Table structure for `ot_ppdd_ly`
-- ----------------------------
DROP TABLE IF EXISTS `ot_ppdd_ly`;
CREATE TABLE `ot_ppdd_ly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ppdd_id` int(14) DEFAULT NULL,
  `user` varchar(14) DEFAULT NULL,
  `nr` text,
  `date` datetime DEFAULT NULL,
  `user_nc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_ppdd_ly
-- ----------------------------
INSERT INTO `ot_ppdd_ly` VALUES ('50', '1', 'prince001@qq.c', '好了', '2015-11-21 10:09:46', 'wangmeng');
INSERT INTO `ot_ppdd_ly` VALUES ('51', '2', 'prince006@qq.c', 'test', '2015-11-21 13:09:36', 'prince006');
INSERT INTO `ot_ppdd_ly` VALUES ('52', '3', 'prince001@qq.c', 'test', '2015-12-01 10:37:07', 'wangmeng');
INSERT INTO `ot_ppdd_ly` VALUES ('53', '4', 'prince004@qq.c', 'test', '2015-12-01 10:40:44', 'prince004');
INSERT INTO `ot_ppdd_ly` VALUES ('54', '11', 'chiyu123', '123', '2015-12-12 21:11:16', 'chiyu123');
INSERT INTO `ot_ppdd_ly` VALUES ('55', '36', 'admin@qq.com', '                    \r\n?????\r\n', '2016-01-15 19:37:34', '财富导师');

-- ----------------------------
-- Table structure for `ot_regusers`
-- ----------------------------
DROP TABLE IF EXISTS `ot_regusers`;
CREATE TABLE `ot_regusers` (
  `RU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RU_time` datetime DEFAULT NULL COMMENT '注册时间',
  `RU_regIP` varchar(30) DEFAULT '' COMMENT '注册IP',
  `RU_img` varchar(30) DEFAULT '' COMMENT '用户头像',
  `RU_username` varchar(50) DEFAULT NULL COMMENT '用户名，登陆名',
  `RU_userpwd` varchar(150) DEFAULT NULL COMMENT '用户登陆密码',
  `RU_answer` varchar(100) DEFAULT NULL COMMENT '密保问题',
  `RU_question` varchar(200) DEFAULT NULL COMMENT '密保答案',
  `RU_userInfo` text COMMENT '用户信息',
  `RU_contact` text COMMENT '联系信息',
  `RU_otherInfo` text COMMENT '其它信息',
  `RU_note` text COMMENT '管理员备注信息',
  `RU_limit` smallint(1) DEFAULT '0' COMMENT '用户等级，0-普通，1-高级',
  `RU_status` smallint(1) DEFAULT '1' COMMENT '用户状态，1-正常，0-禁止',
  `RU_nowTime` datetime DEFAULT NULL COMMENT '当前登陆时间',
  `RU_nowIP` varchar(80) DEFAULT NULL COMMENT '当前登陆IP',
  `RU_lastTime` datetime DEFAULT NULL COMMENT '上次登录时间',
  `RU_lastIP` varchar(80) DEFAULT NULL COMMENT '上次登陆IP',
  `RU_logNum` int(11) DEFAULT '0' COMMENT '总登录次数',
  `RU_online` int(11) DEFAULT '0' COMMENT '总在线时间',
  PRIMARY KEY (`RU_ID`),
  UNIQUE KEY `UE_ID` (`RU_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_regusers
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_service`
-- ----------------------------
DROP TABLE IF EXISTS `ot_service`;
CREATE TABLE `ot_service` (
  `SV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SV_type` varchar(20) NOT NULL,
  `SV_time` datetime NOT NULL,
  `SV_rank` int(11) DEFAULT '0',
  `SV_theme` varchar(200) DEFAULT NULL,
  `SV_dataMode` varchar(20) DEFAULT NULL,
  `SV_accounts` varchar(200) DEFAULT NULL,
  `SV_state` int(11) DEFAULT '1',
  PRIMARY KEY (`SV_ID`),
  UNIQUE KEY `IM_ID` (`SV_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_service
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ot_shipping`;
CREATE TABLE `ot_shipping` (
  `SP_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '物流表',
  `SP_time` datetime DEFAULT NULL COMMENT '添加时间',
  `SP_theme` varchar(200) DEFAULT '' COMMENT '物流名称',
  `SP_type` varchar(20) DEFAULT '' COMMENT '物流类型',
  `SP_code` varchar(30) DEFAULT '' COMMENT '快递公司代码',
  `SP_price` float(11,2) DEFAULT '0.00' COMMENT '单笔运费',
  `SP_cheap` float(11,2) DEFAULT '0.00' COMMENT '免运费额度',
  `SP_note` varchar(300) DEFAULT '' COMMENT '物流描述',
  `SP_status` smallint(1) DEFAULT '1',
  PRIMARY KEY (`SP_ID`),
  UNIQUE KEY `IM_ID` (`SP_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_shopsj`
-- ----------------------------
DROP TABLE IF EXISTS `ot_shopsj`;
CREATE TABLE `ot_shopsj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sjmc` varchar(255) DEFAULT NULL,
  `jyxm` varchar(255) DEFAULT NULL,
  `lxfs` varchar(255) DEFAULT NULL,
  `dz` varchar(255) DEFAULT NULL,
  `slt` varchar(255) DEFAULT NULL,
  `content` longtext,
  `user` varchar(255) DEFAULT NULL,
  `zt` int(15) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `leixin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_shopsj
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_shopsys`
-- ----------------------------
DROP TABLE IF EXISTS `ot_shopsys`;
CREATE TABLE `ot_shopsys` (
  `SPS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SPS_defWord` varchar(30) DEFAULT '',
  `SPS_hotWord` varchar(100) DEFAULT NULL,
  `SPS_smtpHost` varchar(30) DEFAULT '' COMMENT 'SMTP服务器',
  `SPS_sendMail` varchar(60) DEFAULT '' COMMENT '发件邮箱地址',
  `SPS_sendPwd` varchar(30) DEFAULT '' COMMENT '发件邮箱密码',
  `SPS_giveMail` varchar(30) DEFAULT '' COMMENT '接收用户意见反馈邮箱',
  `SPS_regInte` int(11) DEFAULT '0' COMMENT '用户注册获得积分',
  `SPS_buyInte` int(11) DEFAULT '0' COMMENT '购买商品获得积分基数',
  `SPS_comInte` int(11) DEFAULT '0' COMMENT '评价获得积分数',
  `SPS_payType` varchar(10) DEFAULT '' COMMENT '支持的支付方式',
  `SPS_zfb_pid` varchar(40) DEFAULT '' COMMENT '合作身份者id',
  `SPS_zfb_key` varchar(40) DEFAULT '' COMMENT '安全检验码',
  `SPS_zfb_mail` varchar(30) DEFAULT '' COMMENT '签约账户',
  `SPS_price` int(11) DEFAULT '0' COMMENT '价格区间设置',
  `SPS_integral` int(11) DEFAULT '0' COMMENT '价格区间设置',
  `SPS_divide` int(11) DEFAULT '0' COMMENT '划分个数',
  PRIMARY KEY (`SPS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_shopsys
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_single`
-- ----------------------------
DROP TABLE IF EXISTS `ot_single`;
CREATE TABLE `ot_single` (
  `SG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SG_type` varchar(50) DEFAULT NULL,
  `SG_type1ID` int(11) DEFAULT '0',
  `SG_type2ID` int(11) DEFAULT '0',
  `SG_content` longtext,
  PRIMARY KEY (`SG_ID`),
  KEY `WB_ID` (`SG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_single
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_sysadmin`
-- ----------------------------
DROP TABLE IF EXISTS `ot_sysadmin`;
CREATE TABLE `ot_sysadmin` (
  `SA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SA_adminLoginKey` varchar(36) DEFAULT NULL,
  `SA_skinMode` varchar(25) DEFAULT NULL,
  `SA_isCloseUserMenu` smallint(6) DEFAULT '0',
  `SA_userSaveMode` smallint(6) DEFAULT '0',
  `SA_loginMode` smallint(6) DEFAULT '0',
  PRIMARY KEY (`SA_ID`),
  KEY `SA_ID` (`SA_ID`),
  KEY `SA_key` (`SA_adminLoginKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_sysadmin
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_sysimages`
-- ----------------------------
DROP TABLE IF EXISTS `ot_sysimages`;
CREATE TABLE `ot_sysimages` (
  `SI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SI_isThumb` varchar(10) DEFAULT NULL,
  `SI_thumbW` smallint(6) DEFAULT '0',
  `SI_thumbH` smallint(6) DEFAULT '0',
  `SI_isWatermark` varchar(10) DEFAULT NULL,
  `SI_watermarkPath` varchar(200) DEFAULT NULL,
  `SI_watermarkPos` varchar(16) DEFAULT NULL,
  `SI_watermarkPadding` smallint(6) DEFAULT '0',
  `SI_watermarkFontContent` varchar(20) DEFAULT NULL,
  `SI_watermarkFontSize` smallint(6) DEFAULT '0',
  `SI_watermarkFontColor` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`SI_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_sysimages
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_system`
-- ----------------------------
DROP TABLE IF EXISTS `ot_system`;
CREATE TABLE `ot_system` (
  `SYS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYS_theme` varchar(100) DEFAULT NULL,
  `SYS_address` varchar(200) DEFAULT NULL,
  `SYS_postCode` varchar(50) DEFAULT NULL,
  `SYS_contact` varchar(50) DEFAULT '',
  `SYS_mobile` varchar(50) DEFAULT '',
  `SYS_mail` varchar(80) DEFAULT NULL,
  `SYS_phone` varchar(50) DEFAULT NULL,
  `SYS_hotPhone` varchar(50) DEFAULT NULL,
  `SYS_fax` varchar(50) DEFAULT NULL,
  `SYS_qq` varchar(30) DEFAULT NULL,
  `SYS_banquan` varchar(100) DEFAULT NULL,
  `SYS_seoTitle` varchar(300) DEFAULT '',
  `SYS_seoWord` text,
  `SYS_seoDesc` text,
  `SPS_smtpHost` varchar(80) DEFAULT NULL,
  `SPS_sendMail` varchar(80) DEFAULT NULL,
  `SPS_sendPwd` varchar(80) DEFAULT NULL,
  `SPS_giveMail` varchar(80) DEFAULT NULL,
  `a_ztj` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '直推荐奖',
  `a_ztj2` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '间推奖',
  `a_ztj3` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '间间推奖',
  `a_bdj` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '报单奖',
  `a_ld8` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `a_ld9` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `a_ld10` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `a_kd_zsb` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '钻石币开单数量',
  `a_sxf` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '交易大厅手续费',
  `a_btbjg` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '比特币价格',
  `a_fxzl` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '发行总量',
  `a_fuhuo` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '复活费用',
  `a_mrfh_cj` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `a_ybfxsl` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '銀幣發行數量',
  `a_zsbfxsl` decimal(15,4) NOT NULL,
  `a_ybhuilv` decimal(15,6) NOT NULL,
  `a_zsbhuilv` decimal(15,6) NOT NULL,
  `a_bdzxds` decimal(15,4) NOT NULL,
  `zt` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SYS_ID`),
  KEY `SYS_postCode` (`SYS_postCode`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_system
-- ----------------------------
INSERT INTO `ot_system` VALUES ('1', '会员管理系统', '', '', '', '', '', '', '', '', '', 'Copyright?2020 会员管理系统', '会员管理系统', '', '', '', '', '', '', '0.0800', '0.0200', '0.0400', '0.0200', '0.1300', '0.0650', '0.0130', '500.0000', '0.1000', '0.0000', '0.0000', '450.0000', '2000.0000', '680000.0000', '2000000.0000', '0.000666', '0.001333', '9.0000', '0');

-- ----------------------------
-- Table structure for `ot_taobaoset`
-- ----------------------------
DROP TABLE IF EXISTS `ot_taobaoset`;
CREATE TABLE `ot_taobaoset` (
  `TBS_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TBS_state` tinyint(1) DEFAULT '1',
  `TBS_appkey` varchar(30) DEFAULT '',
  `TBS_secret` varchar(150) DEFAULT '',
  PRIMARY KEY (`TBS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_taobaoset
-- ----------------------------
INSERT INTO `ot_taobaoset` VALUES ('1', '1', '12', '456');

-- ----------------------------
-- Table structure for `ot_tgbz`
-- ----------------------------
DROP TABLE IF EXISTS `ot_tgbz`;
CREATE TABLE `ot_tgbz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zffs1` int(8) NOT NULL DEFAULT '0',
  `zffs2` int(8) NOT NULL DEFAULT '0',
  `zffs3` int(8) NOT NULL DEFAULT '0',
  `jb` decimal(15,0) NOT NULL DEFAULT '0',
  `zt` int(8) NOT NULL DEFAULT '0',
  `user` varchar(255) DEFAULT NULL,
  `qr_zt` int(255) DEFAULT '0',
  `user_tjr` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_nc` varchar(255) DEFAULT NULL,
  `cf_ds` int(8) NOT NULL DEFAULT '0',
  `jycg_ds` int(8) NOT NULL DEFAULT '0',
  `yid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_tgbz
-- ----------------------------
INSERT INTO `ot_tgbz` VALUES ('1119', '1', '1', '1', '300', '0', 'c2', '0', 'admin@qq.com', '2016-01-16 01:11:09', 'c2', '0', '0', null);
INSERT INTO `ot_tgbz` VALUES ('1120', '1', '1', '1', '500', '1', 'c2', '1', 'admin@qq.com', '2016-01-16 01:11:09', 'c2', '0', '0', null);
INSERT INTO `ot_tgbz` VALUES ('1115', '1', '1', '1', '500', '1', 'ccc', '1', 'admin@qq.com', '2016-01-16 01:08:16', 'ccc', '0', '0', null);
INSERT INTO `ot_tgbz` VALUES ('1122', '1', '1', '1', '400', '0', '77@qq.com', '0', 'admin@qq.com', '2016-01-16 08:48:11', '柒', '0', '0', null);
INSERT INTO `ot_tgbz` VALUES ('1121', '1', '1', '1', '200', '1', 'c2', '1', 'admin@qq.com', '2016-01-16 01:11:09', 'c2', '0', '0', null);
INSERT INTO `ot_tgbz` VALUES ('1091', '1', '1', '1', '200', '1', 'cs@qq.com', '0', 'admin@qq.com', '2016-01-12 14:07:24', '123456', '0', '0', null);

-- ----------------------------
-- Table structure for `ot_tixian`
-- ----------------------------
DROP TABLE IF EXISTS `ot_tixian`;
CREATE TABLE `ot_tixian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UG_account` varchar(60) DEFAULT NULL,
  `TX_money` decimal(15,0) DEFAULT '0',
  `status` int(6) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `zffs` int(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_tixian
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_topup`
-- ----------------------------
DROP TABLE IF EXISTS `ot_topup`;
CREATE TABLE `ot_topup` (
  `TU_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户订单表',
  `TU_type` varchar(30) DEFAULT '' COMMENT '订单类型',
  `TU_time` datetime DEFAULT NULL COMMENT '添加时间',
  `TU_revTime` datetime DEFAULT NULL COMMENT '状态修改时间',
  `TU_userID` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `TU_money` float(11,2) DEFAULT '0.00' COMMENT '充值金额',
  `TU_payment` varchar(30) DEFAULT '' COMMENT '充值方式',
  `TU_userNote` varchar(250) DEFAULT '' COMMENT '会员留言',
  `TU_adminNote` varchar(250) DEFAULT '' COMMENT '管理员备注',
  `TU_status` tinyint(1) DEFAULT '0' COMMENT '到款状态',
  PRIMARY KEY (`TU_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_topup
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_upfile`
-- ----------------------------
DROP TABLE IF EXISTS `ot_upfile`;
CREATE TABLE `ot_upfile` (
  `UF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UF_time` datetime DEFAULT NULL,
  `UF_type` varchar(25) DEFAULT NULL,
  `UF_oldName` varchar(80) DEFAULT NULL,
  `UF_name` varchar(50) DEFAULT NULL,
  `UF_ext` varchar(10) DEFAULT NULL,
  `UF_size` int(11) DEFAULT '0',
  `UF_width` int(11) DEFAULT '0',
  `UF_height` int(11) DEFAULT '0',
  `UF_isThumb` smallint(6) DEFAULT '0',
  `UF_thumbName` varchar(50) DEFAULT NULL,
  `UF_useNum` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`UF_ID`),
  UNIQUE KEY `UF_ID` (`UF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=952 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_upfile
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_user`
-- ----------------------------
DROP TABLE IF EXISTS `ot_user`;
CREATE TABLE `ot_user` (
  `UE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商城用户注册登录表',
  `UE_img` varchar(60) DEFAULT '' COMMENT '用户头像',
  `UE_account` varchar(60) NOT NULL DEFAULT '' COMMENT '登录账号',
  `UE_accName` varchar(60) DEFAULT NULL COMMENT '推荐人账号',
  `sfjl` int(15) NOT NULL DEFAULT '0',
  `zcr` varchar(60) NOT NULL,
  `UE_Faccount` varchar(30) DEFAULT '0' COMMENT '父账号',
  `UE_verMail` varchar(60) NOT NULL DEFAULT '' COMMENT '验证邮箱',
  `UE_check` smallint(1) DEFAULT '0' COMMENT '是否验证，0-未验证，1-邮箱验证，2-手机验证',
  `UE_actiCode` varchar(10) DEFAULT '' COMMENT '邮箱/手机验证激活码',
  `UE_password` varchar(80) DEFAULT '' COMMENT '用户密码',
  `UE_question` varchar(250) DEFAULT '' COMMENT '密码问题',
  `UE_question2` varchar(255) DEFAULT NULL,
  `UE_question3` varchar(255) DEFAULT NULL,
  `UE_answer` varchar(100) DEFAULT '' COMMENT '密码答案',
  `UE_answer3` varchar(100) DEFAULT NULL,
  `UE_answer2` varchar(100) DEFAULT NULL,
  `UE_regTime` datetime DEFAULT NULL COMMENT '注册时间',
  `UE_regIP` varchar(60) DEFAULT '',
  `UE_nowTime` text COMMENT '当前登录时间',
  `UE_nowIP` varchar(60) DEFAULT '' COMMENT '当前登录IP',
  `UE_lastTime` text COMMENT '最近一次登录时间',
  `UE_lastIP` varchar(60) DEFAULT '' COMMENT '最近一次录陆IP',
  `UE_logNum` int(11) DEFAULT '0' COMMENT '用户登录次数',
  `UE_status` smallint(1) DEFAULT '1' COMMENT '用户状态，0-正常，1-禁用',
  `UE_level` smallint(1) DEFAULT '0' COMMENT '会员等级',
  `UE_note` text COMMENT '管理页备注信息',
  `UE_integral` decimal(15,0) DEFAULT '0' COMMENT '当前账户积分余额',
  `UE_money` decimal(15,0) DEFAULT '0' COMMENT '当前帐户余额',
  `UE_sum` float(11,0) DEFAULT '0' COMMENT '当前账户总消费数',
  `UE_info` text COMMENT '用户信息',
  `UE_secpwd` varchar(80) DEFAULT NULL COMMENT '二级密码',
  `UE_theme` varchar(60) DEFAULT '',
  `UE_tjx` varchar(60) DEFAULT NULL COMMENT '推荐想总和',
  `UE_ldx` varchar(60) DEFAULT NULL COMMENT '领导奖',
  `UE_mailCheck` varchar(30) DEFAULT '0' COMMENT '邮箱验证0未验证，1验证了',
  `UE_sfz` varchar(20) DEFAULT NULL COMMENT '生分证',
  `UE_qq` varchar(20) DEFAULT NULL,
  `UE_phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `UE_truename` varchar(60) DEFAULT NULL COMMENT '真实名字',
  `UE_activeTime` text COMMENT '激活时间',
  `UE_stop` tinyint(2) DEFAULT '1' COMMENT '停止分红，0标志停止分红，1标志正常分红',
  `UE_toActive` tinyint(2) DEFAULT '0' COMMENT '1表示已经被用过去激活新增帐号',
  `UE_drpd` varchar(60) DEFAULT NULL,
  `zbqx` int(5) NOT NULL DEFAULT '0' COMMENT '是否充许其它账号转币',
  `zbzh` varchar(60) DEFAULT NULL,
  `ybhe` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `zsbhe` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `email` varchar(60) DEFAULT NULL,
  `jihuouser` varchar(60) DEFAULT NULL,
  `btbdz` varchar(60) NOT NULL DEFAULT '0',
  `pin` varchar(255) DEFAULT NULL,
  `mz` varchar(255) DEFAULT NULL,
  `xin` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `lx_weixin` varchar(255) DEFAULT NULL,
  `zfb` varchar(255) DEFAULT NULL,
  `yhmc` varchar(255) DEFAULT NULL,
  `zhxm` varchar(255) DEFAULT NULL,
  `yhzh` varchar(255) DEFAULT NULL,
  `tz_leiji` decimal(15,0) NOT NULL DEFAULT '0',
  `date_leiji` datetime DEFAULT NULL,
  `jl_he` decimal(15,0) NOT NULL DEFAULT '0',
  `tj_he` decimal(15,0) NOT NULL DEFAULT '0',
  `jl_he1` decimal(15,0) NOT NULL DEFAULT '0',
  `tj_he1` decimal(15,0) NOT NULL DEFAULT '0',
  `pp_user` varchar(255) DEFAULT NULL,
  `tx_leiji` decimal(15,0) DEFAULT NULL,
  `tx_date` datetime DEFAULT NULL,
  `tj_num` int(11) DEFAULT '0',
  `levelname` varchar(20) DEFAULT '0',
  PRIMARY KEY (`UE_ID`),
  UNIQUE KEY `anme` (`UE_account`)
) ENGINE=MyISAM AUTO_INCREMENT=61777 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_user
-- ----------------------------
INSERT INTO `ot_user` VALUES ('61451', '', 'admin@qq.com', '', '1', '', '0', '', '1', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', '', '2015-05-27 01:17:53', '127.0.0.1', null, '', null, '', '0', '0', '0', '', '0', '200', '0', null, 'decc8686654b465e5313259325149a86', '财富导师', null, null, '0', '', '', '8899', '财富导师', null, '0', '0', null, '0', null, '0.0000', '0.0000', '', '', '', '1', '先生', '谢', '13888888888', '', '13888888888', '中国建设银行', '谢海春14', '88888888888888888888', '1500', '2016-01-15 19:40:12', '6292', '12695', '7376', '5080', '888', '1000', '2015-10-25 22:32:52', '32', '高级会员');
INSERT INTO `ot_user` VALUES ('61771', '', '77@qq.com', 'admin@qq.com', '0', 'admin@qq.com', '0', '', '0', '', '96e79218965eb72c92a549dd5a330112', '', null, null, '', null, null, '2016-01-14 20:46:28', '61.157.126.10', null, '', null, '', '0', '0', '0', null, '0', '0', '0', null, 'e3ceb5881a0a1fdaad01296d7554868d', '柒', null, null, '0', null, null, '11111111111', '柒', null, '1', '0', null, '0', null, '0.0000', '0.0000', null, null, '0', 'eef4302cb229e0e9346afe682e3b93aa', null, null, null, null, null, null, null, null, '9300', '2016-01-14 20:50:32', '1', '400', '0', '400', null, null, null, '2', '0');
INSERT INTO `ot_user` VALUES ('61775', '', 'ccc', 'admin@qq.com', '0', 'admin@qq.com', '0', '', '0', '', '96e79218965eb72c92a549dd5a330112', '', null, null, '', null, null, '2016-01-16 01:06:13', '118.112.207.139', null, '', null, '', '0', '0', '0', null, '0', '50', '0', null, '96e79218965eb72c92a549dd5a330112', 'ccc', null, null, '0', null, null, '1', 'ccc', null, '1', '0', null, '0', null, '0.0000', '0.0000', null, null, '0', '2dddb23353995d6b10eb1d2bf6a677ce', null, null, null, null, null, null, null, null, '1000', '2016-01-16 01:07:00', '0', '0', '0', '0', 'c2', null, null, '0', '0');
INSERT INTO `ot_user` VALUES ('61776', '', 'c2', 'admin@qq.com', '0', 'admin@qq.com', '0', '', '0', '', '96e79218965eb72c92a549dd5a330112', '', null, null, '', null, null, '2016-01-16 01:06:32', '118.112.207.139', null, '', null, '', '0', '0', '0', null, '0', '0', '0', null, '96e79218965eb72c92a549dd5a330112', 'c2', null, null, '0', null, null, '1', 'c2', null, '1', '0', null, '0', null, '0.0000', '0.0000', null, null, '0', '6fee75e9804e447cb3646562654ced46', null, null, null, null, null, null, null, null, '1000', '2016-01-16 01:11:09', '0', '0', '0', '0', 'ccc', null, null, '0', '0');

-- ----------------------------
-- Table structure for `ot_useraddr`
-- ----------------------------
DROP TABLE IF EXISTS `ot_useraddr`;
CREATE TABLE `ot_useraddr` (
  `UA_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户收货地址信息',
  `UA_userID` int(11) DEFAULT '0' COMMENT '用户表ID',
  `UA_time` datetime DEFAULT NULL COMMENT '添加时间',
  `UA_revTime` datetime DEFAULT NULL COMMENT '修改时间',
  `UA_name` varchar(30) DEFAULT '' COMMENT '收货人姓名',
  `UA_area` varchar(30) DEFAULT '' COMMENT '配送区域',
  `UA_address` text COMMENT '其它地址信息',
  `UA_contact` text COMMENT '联系方式信息',
  `UA_note` text COMMENT '备注信息',
  `UA_otherInfo` text COMMENT '其它相关信息',
  PRIMARY KEY (`UA_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_useraddr
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_userget`
-- ----------------------------
DROP TABLE IF EXISTS `ot_userget`;
CREATE TABLE `ot_userget` (
  `UG_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商城用户注册登录表',
  `UG_account` varchar(60) NOT NULL DEFAULT '' COMMENT '登录账号',
  `UG_type` varchar(60) DEFAULT '' COMMENT '奖金分类',
  `UG_integral` decimal(15,4) DEFAULT '0.0000' COMMENT '当前账户种子币余额',
  `UG_money` varchar(255) DEFAULT '0.0000' COMMENT '当前帐户金币余额',
  `UG_getTime` datetime DEFAULT NULL COMMENT '结算时间',
  `UG_allGet` decimal(20,0) DEFAULT NULL COMMENT '用户密码',
  `UG_balance` decimal(20,0) DEFAULT NULL COMMENT '当前账户余额',
  `UG_regIP` varchar(30) DEFAULT '',
  `UG_dataType` varchar(10) DEFAULT '' COMMENT '分红类型',
  `UG_note` text COMMENT '金币获取说明',
  `UG_othraccount` varchar(60) DEFAULT NULL COMMENT '推荐帐号/开单帐号',
  `yb` decimal(15,4) DEFAULT '0.0000',
  `ybhe` decimal(15,4) DEFAULT NULL,
  `zsb` decimal(15,4) DEFAULT NULL,
  `zsbhe` decimal(15,4) DEFAULT NULL,
  `yb1` decimal(15,4) DEFAULT NULL,
  `zsb1` decimal(15,4) DEFAULT NULL,
  `varid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_userget
-- ----------------------------
INSERT INTO `ot_userget` VALUES ('136', 'admin@qq.com', 'jb', '0.0000', '200', '2016-01-15 13:10:24', '0', '200', '', 'xtzs', '系统操作', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('137', 'admin@qq.com', 'mp', '0.0000', '-1', '2016-01-15 18:40:53', '10', '9', '', 'jbzc', '激活码转出', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('138', '77@qq.com', 'mp', '0.0000', '+1', '2016-01-15 18:40:53', '0', '1', '', 'jbzr', '激活码转入', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('139', 'admin@qq.com', 'jb', '0.0000', '4000', '2016-01-15 19:10:44', '200', '4200', '', 'xtzs', '系统操作', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('140', 'admin@qq.com', 'jb', '0.0000', '-4000', '2016-01-15 19:11:00', '4200', '200', '', 'jsbz', '接受帮助扣款', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('141', 'admin@qq.com', 'jb', '0.0000', '4000', '2016-01-15 19:21:01', '200', '4200', '', 'xtzs', '系统操作', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('142', 'admin@qq.com', 'jb', '0.0000', '-4000', '2016-01-15 19:21:18', '4200', '200', '', 'jsbz', '接受帮助扣款', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('143', '77@qq.com', 'jb', '0.0000', '+400', '2016-01-15 19:37:11', '0', '400', '', 'tjj', '推荐奖10%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('144', '77@qq.com', 'jb', '0.0000', '+0.8', '2016-01-15 19:37:11', '0', '1', '', 'jlj', '经理级别奖0.02%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('145', 'admin@qq.com', 'jb', '0.0000', '+0', '2016-01-15 19:37:11', '12575', '12575', '', 'tjj', '推荐奖%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('146', 'admin@qq.com', 'jb', '0.0000', '+0', '2016-01-15 19:37:11', '6072', '6072', '', 'jlj', '经理级别奖%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('147', 'admin@qq.com', 'jb', '0.0000', '+160', '2016-01-15 19:37:11', '6072', '6232', '', 'jlj', '经理奖4%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('148', 'c2', 'jb', '0.0000', '500', '2016-01-16 01:08:30', '0', '500', '', 'xtzs', '系统操作', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('149', 'c2', 'jb', '0.0000', '-500', '2016-01-16 01:09:06', '500', '0', '', 'jsbz', '接受帮助扣款', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('150', 'admin@qq.com', 'jb', '0.0000', '+50', '2016-01-16 01:10:40', '12575', '12625', '', 'tjj', '推荐奖10%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('151', 'admin@qq.com', 'jb', '0.0000', '+0.1', '2016-01-16 01:10:40', '6232', '6232', '', 'jlj', '经理级别奖0.02%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('152', 'admin@qq.com', 'jb', '0.0000', '+25', '2016-01-16 01:10:40', '6232', '6257', '', 'jlj', '经理奖5%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('153', 'ccc', 'jb', '0.0000', '750', '2016-01-16 01:12:06', '0', '750', '', 'xtzs', '系统操作', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('154', 'ccc', 'jb', '0.0000', '-700', '2016-01-16 01:12:31', '750', '50', '', 'jsbz', '接受帮助扣款', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('155', 'admin@qq.com', 'jb', '0.0000', '+50', '2016-01-16 02:36:39', '12625', '12675', '', 'tjj', '推荐奖10%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('156', 'admin@qq.com', 'jb', '0.0000', '+0.1', '2016-01-16 02:36:39', '6257', '6257', '', 'jlj', '经理级别奖0.02%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('157', 'admin@qq.com', 'jb', '0.0000', '+25', '2016-01-16 02:36:39', '6257', '6282', '', 'jlj', '经理奖5%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('158', 'admin@qq.com', 'jb', '0.0000', '+20', '2016-01-16 09:38:09', '12675', '12695', '', 'tjj', '推荐奖10%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('159', 'admin@qq.com', 'jb', '0.0000', '+0.04', '2016-01-16 09:38:09', '6282', '6282', '', 'jlj', '经理级别奖0.02%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('160', 'admin@qq.com', 'jb', '0.0000', '+10', '2016-01-16 09:38:09', '6282', '6292', '', 'jlj', '经理奖5%', null, '0.0000', null, null, null, null, null, '0');
INSERT INTO `ot_userget` VALUES ('161', 'ccc', 'jb', '0.0000', '+500', '2016-01-16 10:04:41', '50', '550', '', 'tgbz', '提供帮助本金加利息', null, '0.0000', null, null, null, null, null, '116');
INSERT INTO `ot_userget` VALUES ('162', 'ccc', 'jb', '0.0000', '-500', '2016-01-16 10:05:01', '550', '50', '', 'jsbz', '接受帮助扣款', null, '0.0000', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `ot_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `ot_usergroup`;
CREATE TABLE `ot_usergroup` (
  `UG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UG_time` datetime DEFAULT NULL,
  `UG_name` varchar(50) DEFAULT NULL,
  `UG_rightStr` longtext,
  `UG_note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`UG_ID`),
  KEY `UG_ID` (`UG_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_usergroup
-- ----------------------------
INSERT INTO `ot_usergroup` VALUES ('1', '2013-06-27 15:32:09', '聊天组', '|', '聊天组');

-- ----------------------------
-- Table structure for `ot_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ot_userinfo`;
CREATE TABLE `ot_userinfo` (
  `UI_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户详细信息表',
  `UI_userID` int(11) DEFAULT '0' COMMENT '用户表ID',
  `UI_time` datetime DEFAULT NULL COMMENT '添加时间',
  `UI_revTime` datetime DEFAULT NULL COMMENT '修改时间',
  `UI_realName` varchar(30) DEFAULT '' COMMENT '真实姓名',
  `UI_payaccount` varchar(30) DEFAULT NULL COMMENT '收款账号信息',
  `UI_payStyle` varchar(10) DEFAULT NULL COMMENT '收款方式',
  `UI_isindex` smallint(1) DEFAULT NULL COMMENT '是否设为默认',
  `UI_opendress` varchar(30) DEFAULT NULL COMMENT '开户行',
  PRIMARY KEY (`UI_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_userjyinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ot_userjyinfo`;
CREATE TABLE `ot_userjyinfo` (
  `UJ_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户交易信息表',
  `UJ_usercount` varchar(30) DEFAULT '0' COMMENT '用户表帐号',
  `UJ_time` datetime DEFAULT NULL COMMENT '转出转入时间',
  `UJ_addaccount` varchar(30) DEFAULT NULL COMMENT '转入账户',
  `UJ_payaccount` varchar(30) DEFAULT NULL COMMENT '转出帐号信息',
  `UJ_JBcount` decimal(15,4) DEFAULT NULL COMMENT '转账金币数量',
  `UJ_note` text COMMENT '备注',
  `UJ_style` varchar(10) DEFAULT NULL COMMENT '交易类型/转入/转出/担保交易',
  `UJ_ip` varchar(30) DEFAULT '' COMMENT '真实姓名',
  `UJ_balance` decimal(15,4) DEFAULT NULL,
  `UJ_dataType` varchar(10) DEFAULT NULL COMMENT '交易类型',
  `UJ_mymsg` tinyint(2) DEFAULT NULL COMMENT '消息读取状态0是读取，1是读取',
  `UJ_sysReplay` text COMMENT '系统回复',
  `UJ_jbqgStage` tinyint(2) DEFAULT '0' COMMENT '金币抢购状态，0是还没买走，1是被买走，等待付款，2是已经付款，等待卖家确认，3是交易完成',
  `UJ_dbjbID` varchar(10) DEFAULT NULL COMMENT '抢购金币时会存取担保金币的ID',
  `UJ_dbjyStage` tinyint(2) DEFAULT '0' COMMENT '担保交易状态0等待买家结束，1等待买家付款，2等待买家确认付款，3等待卖家确认收款',
  `UJ_jbmcStage` tinyint(2) DEFAULT '0' COMMENT '金币卖出审核状态，0是还没通过。1是系统通过审核',
  `lxfs` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`UJ_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_userjyinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `ot_userlevel`
-- ----------------------------
DROP TABLE IF EXISTS `ot_userlevel`;
CREATE TABLE `ot_userlevel` (
  `UL_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员等级划分表',
  `UL_theme` varchar(200) DEFAULT '' COMMENT '等级名称',
  `UL_price` float(11,2) DEFAULT '0.00' COMMENT '消费金额',
  `UL_cheap` float(11,2) DEFAULT '10.00' COMMENT '折扣',
  `UL_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`UL_ID`),
  UNIQUE KEY `IM_ID` (`UL_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_userlevel
-- ----------------------------
INSERT INTO `ot_userlevel` VALUES ('1', '普通会员', '1500.00', '10.00', null);
INSERT INTO `ot_userlevel` VALUES ('2', '黄金会员', '2500.00', '9.80', null);
INSERT INTO `ot_userlevel` VALUES ('3', '白金会员', '5000.00', '9.50', null);
INSERT INTO `ot_userlevel` VALUES ('4', '钻石会员', '7000.00', '9.00', null);
INSERT INTO `ot_userlevel` VALUES ('5', '测试', '0.00', '0.00', null);

-- ----------------------------
-- Table structure for `ot_user_jj`
-- ----------------------------
DROP TABLE IF EXISTS `ot_user_jj`;
CREATE TABLE `ot_user_jj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `zt` int(8) NOT NULL DEFAULT '0',
  `jb` decimal(15,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_user_jj
-- ----------------------------
INSERT INTO `ot_user_jj` VALUES ('114', '888', '35', '2016-01-15 19:10:28', '提供帮助', '0', '4000');
INSERT INTO `ot_user_jj` VALUES ('115', '888', '36', '2016-01-15 19:19:52', '提供帮助', '0', '4000');
INSERT INTO `ot_user_jj` VALUES ('116', 'ccc', '37', '2016-01-16 01:08:16', '提供帮助', '1', '500');
INSERT INTO `ot_user_jj` VALUES ('117', 'c2', '38', '2016-01-16 01:11:09', '提供帮助', '0', '500');
INSERT INTO `ot_user_jj` VALUES ('118', 'c2', '39', '2016-01-16 01:11:09', '提供帮助', '0', '200');

-- ----------------------------
-- Table structure for `ot_user_jl`
-- ----------------------------
DROP TABLE IF EXISTS `ot_user_jl`;
CREATE TABLE `ot_user_jl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `r_id` int(15) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `zt` int(8) NOT NULL DEFAULT '0',
  `jb` decimal(15,0) DEFAULT NULL,
  `ds` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `jj` decimal(10,0) DEFAULT NULL,
  `leixin` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_user_jl
-- ----------------------------
INSERT INTO `ot_user_jl` VALUES ('1', 'admin@qq.com', '1', '2015-11-21 09:53:02', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('2', 'admin@qq.com', '1', '2015-11-21 09:53:02', '0', '1000', '1', '经理奖第1代', '50', '0');
INSERT INTO `ot_user_jl` VALUES ('3', 'prince004@qq.com', '0', '2015-11-21 12:42:41', '0', '6', '0', '新用户注册奖励6元', '6', '0');
INSERT INTO `ot_user_jl` VALUES ('4', 'prince005@qq.com', '0', '2015-11-21 12:45:48', '0', '6', '0', '新用户注册奖励6元', '6', '0');
INSERT INTO `ot_user_jl` VALUES ('5', 'prince006@qq.com', '0', '2015-11-21 12:47:40', '0', '6', '0', '新用户注册奖励6元', '6', '0');
INSERT INTO `ot_user_jl` VALUES ('6', 'prince005@qq.com', '2', '2015-11-21 13:07:55', '0', '2300', '1', '推荐奖10%', '345', '0');
INSERT INTO `ot_user_jl` VALUES ('7', 'admin@qq.com', '2', '2015-11-21 13:07:55', '0', '2300', '5', '经理奖第5代', '7', '0');
INSERT INTO `ot_user_jl` VALUES ('8', 'prince002@qq.com', '0', '2015-12-01 10:21:10', '0', '100', '0', '新用户注册奖励100元', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('9', 'prince003@qq.com', '0', '2015-12-01 10:24:16', '0', '100', '0', '新用户注册奖励100元', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('10', 'prince004@qq.com', '0', '2015-12-01 10:25:42', '0', '100', '0', '新用户注册奖励100元', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('11', 'admin@qq.com', '3', '2015-12-01 10:36:14', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('12', 'admin@qq.com', '3', '2015-12-01 10:36:14', '0', '1000', '1', '经理奖第1代', '50', '0');
INSERT INTO `ot_user_jl` VALUES ('13', 'prince002@qq.com', '4', '2015-12-01 10:39:28', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('14', 'admin@qq.com', '4', '2015-12-01 10:39:28', '0', '1000', '3', '经理奖第3代', '10', '0');
INSERT INTO `ot_user_jl` VALUES ('15', '123@123.com', '0', '2015-12-12 15:16:03', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('16', 'admin@qq.com', '5', '2015-12-12 15:16:30', '0', '500', '1', '推荐奖10%', '50', '0');
INSERT INTO `ot_user_jl` VALUES ('17', 'admin@qq.com', '5', '2015-12-12 15:16:30', '0', '500', '1', '经理奖第1代', '15', '0');
INSERT INTO `ot_user_jl` VALUES ('18', '', '7', '2015-11-21 10:43:51', '0', '600', '1', '推荐奖10%', '60', '0');
INSERT INTO `ot_user_jl` VALUES ('19', '', '6', '2015-11-21 10:43:51', '0', '100', '1', '推荐奖10%', '10', '0');
INSERT INTO `ot_user_jl` VALUES ('20', '发送到', '0', '2015-12-12 16:19:32', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('21', '123123', '0', '2015-12-12 16:41:58', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('22', 'admin@qq.com', '8', '2015-12-12 20:45:58', '0', '30000', '1', '推荐奖10%', '3000', '0');
INSERT INTO `ot_user_jl` VALUES ('23', 'admin@qq.com', '8', '2015-12-12 20:45:58', '0', '30000', '1', '经理奖第1代', '900', '0');
INSERT INTO `ot_user_jl` VALUES ('24', '1231231', '0', '2015-12-12 20:56:45', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('25', '1231232', '0', '2015-12-12 20:57:33', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('26', 'admin@qq.com', '10', '2015-12-12 21:00:37', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('27', 'admin@qq.com', '10', '2015-12-12 21:00:37', '0', '5000', '1', '经理奖第1代', '150', '0');
INSERT INTO `ot_user_jl` VALUES ('28', 'admin@qq.com', '9', '2015-12-12 21:00:24', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('29', 'admin@qq.com', '9', '2015-12-12 21:00:24', '0', '5000', '1', '经理奖第1代', '150', '0');
INSERT INTO `ot_user_jl` VALUES ('30', 'chiyu123', '0', '2015-12-12 21:06:42', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('31', 'admin@qq.com', '11', '2015-12-12 21:09:39', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('32', 'admin@qq.com', '11', '2015-12-12 21:09:39', '0', '5000', '1', '经理奖第1代', '150', '0');
INSERT INTO `ot_user_jl` VALUES ('33', 'admin@qq.com', '12', '2015-12-12 21:32:30', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('34', 'admin@qq.com', '12', '2015-12-12 21:32:30', '0', '5000', '1', '经理奖第1代', '150', '0');
INSERT INTO `ot_user_jl` VALUES ('35', '12312344', '0', '2015-12-13 01:51:26', '0', '100', '0', '新用户注册奖励100元', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('36', 'chiyu123', '13', '2015-12-13 12:41:57', '0', '30000', '1', '推荐奖10%', '3000', '0');
INSERT INTO `ot_user_jl` VALUES ('37', 'admin@qq.com', '13', '2015-12-13 12:41:57', '0', '30000', '2', '经理奖第2代', '900', '0');
INSERT INTO `ot_user_jl` VALUES ('38', 'admin@qq.com', '14', '2015-12-13 13:03:37', '0', '30000', '1', '推荐奖10%', '3000', '0');
INSERT INTO `ot_user_jl` VALUES ('39', 'admin@qq.com', '14', '2015-12-13 13:03:37', '0', '30000', '1', '经理奖第1代', '1500', '0');
INSERT INTO `ot_user_jl` VALUES ('40', 'admin@qq.com', '15', '2015-12-13 13:25:27', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('41', 'admin@qq.com', '15', '2015-12-13 13:25:27', '0', '5000', '1', '经理奖第1代', '250', '0');
INSERT INTO `ot_user_jl` VALUES ('42', '123123', '0', '2015-12-13 13:31:32', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('43', '1231231', '0', '2015-12-13 13:35:56', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('44', 'admin@qq.com', '16', '2015-12-13 13:32:01', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('45', 'admin@qq.com', '16', '2015-12-13 13:32:01', '0', '5000', '1', '经理奖第1代', '250', '0');
INSERT INTO `ot_user_jl` VALUES ('46', '123123', '0', '2015-12-13 13:51:58', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('47', '1231231', '0', '2015-12-13 13:52:56', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('48', '123gggg', '0', '2015-12-13 13:57:05', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('49', 'admin@qq.com', '17', '2015-12-13 13:57:50', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('50', 'admin@qq.com', '17', '2015-12-13 13:57:50', '0', '5000', '1', '经理奖第1代', '250', '0');
INSERT INTO `ot_user_jl` VALUES ('51', 'admin@163.com', '0', '2015-12-13 14:03:10', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('52', 'admin@qq.com', '18', '2015-12-13 14:05:09', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('53', 'admin@qq.com', '18', '2015-12-13 14:05:09', '0', '5000', '1', '经理奖第1代', '250', '0');
INSERT INTO `ot_user_jl` VALUES ('54', '443gggg', '0', '2015-12-13 14:08:02', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('55', 'admin@qq.com', '19', '2015-12-13 14:08:30', '0', '5000', '1', '推荐奖10%', '500', '0');
INSERT INTO `ot_user_jl` VALUES ('56', 'admin@qq.com', '19', '2015-12-13 14:08:30', '0', '5000', '1', '经理奖第1代', '250', '0');
INSERT INTO `ot_user_jl` VALUES ('57', '123123', '0', '2015-12-13 14:19:43', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('58', 'admin@qq.com', '20', '2015-12-14 10:53:04', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('59', 'admin@qq.com', '20', '2015-12-14 10:53:04', '0', '1000', '1', '经理奖第1代', '50', '0');
INSERT INTO `ot_user_jl` VALUES ('60', 'admin@qq.com', '21', '2015-12-14 11:02:07', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('61', 'admin@qq.com', '21', '2015-12-14 11:02:07', '0', '1000', '1', '经理奖第1代', '50', '0');
INSERT INTO `ot_user_jl` VALUES ('62', 'admin@qq.com', '22', '2015-12-14 11:22:41', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('63', 'admin@qq.com', '22', '2015-12-14 11:22:41', '0', '1000', '1', '经理奖第1代', '50', '0');
INSERT INTO `ot_user_jl` VALUES ('64', '12222', '0', '2015-12-14 11:27:44', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('65', '123123', '23', '2015-12-14 11:28:17', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('66', 'admin@qq.com', '23', '2015-12-14 11:28:17', '0', '1000', '2', '经理奖第2代', '30', '0');
INSERT INTO `ot_user_jl` VALUES ('67', '123123', '24', '2015-12-14 11:35:16', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('68', 'admin@qq.com', '24', '2015-12-14 11:35:16', '0', '1000', '2', '经理奖第2代', '30', '0');
INSERT INTO `ot_user_jl` VALUES ('69', '12312344', '0', '2015-12-14 12:23:38', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('70', '12222', '25', '2015-12-14 12:24:05', '0', '1500', '1', '推荐奖10%', '150', '0');
INSERT INTO `ot_user_jl` VALUES ('71', 'admin@qq.com', '25', '2015-12-14 12:24:05', '0', '1500', '3', '经理奖第3代', '30', '0');
INSERT INTO `ot_user_jl` VALUES ('72', 'admin@qq.com', '26', '2015-12-13 14:24:25', '0', '2500', '1', '推荐奖10%', '250', '0');
INSERT INTO `ot_user_jl` VALUES ('73', 'admin@qq.com', '26', '2015-12-13 14:24:25', '0', '2500', '1', '经理奖第1代', '125', '0');
INSERT INTO `ot_user_jl` VALUES ('74', '', '27', '2015-12-13 20:18:39', '0', '1000', '1', '推荐奖10%', '100', '0');
INSERT INTO `ot_user_jl` VALUES ('75', 'aa123', '0', '2015-12-14 21:19:43', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('76', '778899@778899.com', '0', '2015-12-14 22:20:17', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('77', 'cs@qq.com', '0', '2016-01-07 22:51:44', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('78', 'eee@qq.com', '0', '2016-01-12 14:17:08', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('79', 'qqq@1.com', '0', '2016-01-13 14:41:25', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('80', '77@qq.com', '0', '2016-01-14 20:46:28', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('81', '777@qq.com', '0', '2016-01-14 21:22:22', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('82', '888', '0', '2016-01-15 18:48:22', '0', '300', '0', '新用户注册奖励300元', '300', '0');
INSERT INTO `ot_user_jl` VALUES ('83', '77@qq.com', '35', '2016-01-15 19:10:28', '0', '4000', '1', '推荐奖10%', '400', '0');
INSERT INTO `ot_user_jl` VALUES ('84', 'admin@qq.com', '35', '2016-01-15 19:10:28', '0', '4000', '2', '经理奖第2代', '120', '0');
INSERT INTO `ot_user_jl` VALUES ('85', '77@qq.com', '36', '2016-01-15 19:19:52', '0', '4000', '1', '推荐奖10%', '400', '0');
INSERT INTO `ot_user_jl` VALUES ('86', 'admin@qq.com', '36', '2016-01-15 19:19:52', '0', '4000', '2', '经理奖第2代', '120', '0');
INSERT INTO `ot_user_jl` VALUES ('87', 'ppp', '0', '2016-01-15 21:19:08', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('88', 'ccc', '0', '2016-01-16 01:06:13', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('89', 'c2', '0', '2016-01-16 01:06:32', '0', '0', '0', '新用户注册奖励0元', '0', '0');
INSERT INTO `ot_user_jl` VALUES ('90', 'admin@qq.com', '37', '2016-01-16 01:08:16', '0', '500', '1', '推荐奖10%', '75', '0');
INSERT INTO `ot_user_jl` VALUES ('91', 'admin@qq.com', '37', '2016-01-16 01:08:16', '0', '500', '1', '经理奖第1代', '25', '0');
INSERT INTO `ot_user_jl` VALUES ('92', 'admin@qq.com', '38', '2016-01-16 01:11:09', '0', '500', '1', '推荐奖10%', '75', '0');
INSERT INTO `ot_user_jl` VALUES ('93', 'admin@qq.com', '38', '2016-01-16 01:11:09', '0', '500', '1', '经理奖第1代', '25', '0');
INSERT INTO `ot_user_jl` VALUES ('94', 'admin@qq.com', '39', '2016-01-16 01:11:09', '0', '200', '1', '推荐奖10%', '30', '0');
INSERT INTO `ot_user_jl` VALUES ('95', 'admin@qq.com', '39', '2016-01-16 01:11:09', '0', '200', '1', '经理奖第1代', '10', '0');

-- ----------------------------
-- Table structure for `ot_zsbyg_dd`
-- ----------------------------
DROP TABLE IF EXISTS `ot_zsbyg_dd`;
CREATE TABLE `ot_zsbyg_dd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(14) DEFAULT NULL COMMENT '提供帮助ID',
  `gid` int(14) DEFAULT NULL COMMENT '接受帮助ID',
  `puser` varchar(255) DEFAULT NULL,
  `guser` varchar(255) DEFAULT NULL,
  `gmfs` varchar(255) DEFAULT NULL,
  `sj` varchar(255) DEFAULT NULL,
  `shr` varchar(255) DEFAULT NULL,
  `shdz` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `leixin` varchar(255) DEFAULT NULL,
  `cpmc` varchar(255) DEFAULT NULL,
  `sfzj` varchar(255) DEFAULT NULL,
  `sffh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_zsbyg_dd
-- ----------------------------
