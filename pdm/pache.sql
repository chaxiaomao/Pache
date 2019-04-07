/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pache

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-07 17:27:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c2_attribute
-- ----------------------------
DROP TABLE IF EXISTS `c2_attribute`;
CREATE TABLE `c2_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eshop_id` bigint(20) DEFAULT '1',
  `type` tinyint(4) DEFAULT '0',
  `code` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `hint` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `input_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `default_value` text COLLATE utf8mb4_bin,
  `memo` text COLLATE utf8mb4_bin,
  `is_sku` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
  `is_required` tinyint(4) DEFAULT '0',
  `is_unique` tinyint(4) DEFAULT '0',
  `is_depend` tinyint(4) DEFAULT '0',
  `depend_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_2` (`type`),
  KEY `Index_3` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attribute
-- ----------------------------
INSERT INTO `c2_attribute` VALUES ('12', '1', '1', 'C2', '瓶盖', '瓶盖', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 05:34:49', '2019-04-06 18:45:00');
INSERT INTO `c2_attribute` VALUES ('13', '1', '1', 'C3', '海绵(粉红+灰)', '海绵(粉红+灰)', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:21:40', '2019-04-06 15:57:45');
INSERT INTO `c2_attribute` VALUES ('14', '1', '1', 'C4', '鞋油', '鞋油', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:23:23', '2019-04-06 15:50:22');
INSERT INTO `c2_attribute` VALUES ('15', '1', '1', 'C5', '不干胶', '不干胶', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:24:28', '2019-04-07 09:42:14');
INSERT INTO `c2_attribute` VALUES ('16', '1', '1', 'C6', '收缩膜', '收缩膜', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:24:56', '2019-04-06 15:51:21');
INSERT INTO `c2_attribute` VALUES ('17', '1', '1', 'C7', '外箱', '外箱', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:25:42', '2019-04-07 09:46:53');
INSERT INTO `c2_attribute` VALUES ('18', '1', '1', 'C8', '中板', '中板', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:37:51', '2019-04-06 15:52:31');
INSERT INTO `c2_attribute` VALUES ('19', '1', '1', 'C9', '海绵(灰)', '海绵(灰)', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-06 15:54:29', '2019-04-07 09:35:57');
INSERT INTO `c2_attribute` VALUES ('20', '1', '1', 'C10', '过滤绵(黑色)', '过滤绵(黑色)', '', 'radioList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 08:59:34', '2019-04-07 08:59:34');
INSERT INTO `c2_attribute` VALUES ('21', '1', '1', 'C11', '上盖', '上盖', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:04:46', '2019-04-07 09:04:46');
INSERT INTO `c2_attribute` VALUES ('22', '1', '1', 'C12', '底盒', '底盒', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:05:20', '2019-04-07 09:05:20');
INSERT INTO `c2_attribute` VALUES ('23', '1', '1', 'C13', '吸塑盒', '吸塑盒', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:05:43', '2019-04-07 09:29:40');
INSERT INTO `c2_attribute` VALUES ('24', '1', '1', 'C14', '套袋', '套袋', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:07:31', '2019-04-07 09:07:31');
INSERT INTO `c2_attribute` VALUES ('25', '1', '1', 'C15', '彩盒', '彩盒', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:09:02', '2019-04-07 09:45:41');
INSERT INTO `c2_attribute` VALUES ('26', '1', '1', 'C16', '软管', '软管', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:09:56', '2019-04-07 09:10:04');
INSERT INTO `c2_attribute` VALUES ('27', '1', '1', 'C17', '黑色绵羊鞋膏', '黑色绵羊鞋膏', '', 'checkboxList', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-07 09:11:54', '2019-04-07 09:11:54');

-- ----------------------------
-- Table structure for c2_attributeset
-- ----------------------------
DROP TABLE IF EXISTS `c2_attributeset`;
CREATE TABLE `c2_attributeset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eshop_id` bigint(20) DEFAULT '1',
  `type` tinyint(4) DEFAULT '1',
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_2` (`type`),
  KEY `Index_3` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attributeset
-- ----------------------------
INSERT INTO `c2_attributeset` VALUES ('3', '1', '1', 'XCSXZ', '鞋擦属性组', '鞋擦属性组', '1', '0', '2019-04-06 15:26:40', '2019-04-06 18:41:06');
INSERT INTO `c2_attributeset` VALUES ('4', '1', '1', 'QJS', '清洁刷属性', '清洁刷属性', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:44:15');

-- ----------------------------
-- Table structure for c2_attributeset_attribute_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_attributeset_attribute_rs`;
CREATE TABLE `c2_attributeset_attribute_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attributeset_id` bigint(20) DEFAULT '0',
  `attribute_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`attributeset_id`),
  KEY `Index_2` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attributeset_attribute_rs
-- ----------------------------
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('10', '3', '13', '1', '0', '2019-04-06 15:26:40', '2019-04-06 15:26:40');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('16', '3', '12', '1', '0', '2019-04-06 15:38:22', '2019-04-06 15:38:22');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('17', '3', '14', '1', '0', '2019-04-06 15:38:22', '2019-04-06 15:38:22');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('18', '3', '15', '1', '0', '2019-04-06 15:38:22', '2019-04-06 15:38:22');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('19', '3', '16', '1', '0', '2019-04-06 15:38:22', '2019-04-06 15:38:22');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('20', '3', '17', '1', '0', '2019-04-06 15:38:22', '2019-04-06 15:38:22');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('21', '3', '18', '1', '0', '2019-04-06 15:38:22', '2019-04-06 15:38:22');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('23', '3', '19', '1', '0', '2019-04-06 18:41:06', '2019-04-06 18:41:06');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('24', '4', '15', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:25:53');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('25', '4', '16', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:25:53');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('26', '4', '17', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:25:53');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('27', '4', '20', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:25:53');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('28', '4', '21', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:25:53');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('29', '4', '22', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:25:53');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('30', '4', '23', '1', '0', '2019-04-07 09:27:34', '2019-04-07 09:27:34');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('31', '4', '19', '1', '0', '2019-04-07 09:31:37', '2019-04-07 09:31:37');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('32', '4', '25', '1', '0', '2019-04-07 09:37:39', '2019-04-07 09:37:39');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('33', '4', '24', '1', '0', '2019-04-07 09:44:15', '2019-04-07 09:44:15');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('34', '4', '26', '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('35', '4', '27', '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');

-- ----------------------------
-- Table structure for c2_attributeset_lang
-- ----------------------------
DROP TABLE IF EXISTS `c2_attributeset_lang`;
CREATE TABLE `c2_attributeset_lang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`language`(191)),
  KEY `Index_2` (`entity_id`),
  KEY `Index_3` (`entity_id`,`language`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attributeset_lang
-- ----------------------------

-- ----------------------------
-- Table structure for c2_attribute_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_attribute_item`;
CREATE TABLE `c2_attribute_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) DEFAULT '0',
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_selected` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`attribute_id`),
  KEY `Index_2` (`code`(191))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attribute_item
-- ----------------------------
INSERT INTO `c2_attribute_item` VALUES ('3', '12', '01', '', '黄色', '163#', '2', '1', '50', '2019-04-06 07:39:31', '2019-04-06 07:39:31');
INSERT INTO `c2_attribute_item` VALUES ('4', '12', '02', '', '白色', '163#', '2', '1', '50', '2019-04-06 07:39:31', '2019-04-06 07:39:31');
INSERT INTO `c2_attribute_item` VALUES ('5', '13', '01', '', '87*17mm', '87*17mm', '2', '1', '50', '2019-04-06 15:21:41', '2019-04-06 15:21:41');
INSERT INTO `c2_attribute_item` VALUES ('6', '14', '01', '', '无色', '无色', '2', '1', '50', '2019-04-06 15:23:23', '2019-04-06 15:23:23');
INSERT INTO `c2_attribute_item` VALUES ('7', '15', '01', '', '163#', '163#', '2', '1', '50', '2019-04-06 15:24:28', '2019-04-06 15:24:28');
INSERT INTO `c2_attribute_item` VALUES ('8', '16', '01', '', '450mm*1.5c', '450mm*1.5c', '2', '1', '50', '2019-04-06 15:24:56', '2019-04-06 15:24:56');
INSERT INTO `c2_attribute_item` VALUES ('9', '17', '01', '', '58.5*40*41.5cm', '58.5*40*41.5cm', '2', '1', '50', '2019-04-06 15:25:42', '2019-04-06 15:25:42');
INSERT INTO `c2_attribute_item` VALUES ('10', '18', '01', '', '白中板', '163#', '2', '1', '50', '2019-04-06 15:37:51', '2019-04-06 15:37:51');
INSERT INTO `c2_attribute_item` VALUES ('11', '18', '', '', '黑中板', '163#', '2', '1', '50', '2019-04-06 15:37:51', '2019-04-06 15:37:51');
INSERT INTO `c2_attribute_item` VALUES ('13', '16', '02', '', '350mm*1.9c', '350mm*1.9c', '2', '1', '50', '2019-04-06 15:51:21', '2019-04-06 15:51:21');
INSERT INTO `c2_attribute_item` VALUES ('14', '17', '02', '', '58*39*39cm', '58*39*39cm', '2', '1', '50', '2019-04-06 15:51:51', '2019-04-06 15:51:51');
INSERT INTO `c2_attribute_item` VALUES ('15', '19', '01', '', '87*15', '87*15', '2', '1', '50', '2019-04-06 15:54:30', '2019-04-06 15:54:30');
INSERT INTO `c2_attribute_item` VALUES ('16', '12', '03', '', '黑色', '163#', '2', '1', '50', '2019-04-06 18:45:00', '2019-04-06 18:45:00');
INSERT INTO `c2_attribute_item` VALUES ('17', '20', '01', '', '47.44*110.72*40mm', '47.44*110.72*40mm', '2', '1', '50', '2019-04-07 08:59:34', '2019-04-07 08:59:34');
INSERT INTO `c2_attribute_item` VALUES ('18', '21', '01', '', '167#', '167#', '2', '1', '50', '2019-04-07 09:04:46', '2019-04-07 09:04:46');
INSERT INTO `c2_attribute_item` VALUES ('19', '22', '01', '', '167#', '167#', '2', '1', '50', '2019-04-07 09:05:20', '2019-04-07 09:05:20');
INSERT INTO `c2_attribute_item` VALUES ('20', '23', '01', '', '167#', '167#', '2', '1', '50', '2019-04-07 09:05:43', '2019-04-07 09:05:43');
INSERT INTO `c2_attribute_item` VALUES ('21', '17', '03', '', '64*49*31cm', '64*49*31cm', '2', '1', '50', '2019-04-07 09:06:03', '2019-04-07 09:06:03');
INSERT INTO `c2_attribute_item` VALUES ('22', '24', '01', '', '270*430mm*0.03c', '270*430mm*0.03c', '2', '1', '50', '2019-04-07 09:07:31', '2019-04-07 09:07:31');
INSERT INTO `c2_attribute_item` VALUES ('24', '25', '01', '', '166#', '166#', '2', '1', '50', '2019-04-07 09:09:03', '2019-04-07 09:09:03');
INSERT INTO `c2_attribute_item` VALUES ('25', '26', '01', '', '黑色丝印软管30G', '黑色丝印软管30G', '2', '1', '50', '2019-04-07 09:09:56', '2019-04-07 09:09:56');
INSERT INTO `c2_attribute_item` VALUES ('26', '26', '02', '', '无色丝印软管30G', '无色丝印软管30G', '2', '1', '50', '2019-04-07 09:09:56', '2019-04-07 09:09:56');
INSERT INTO `c2_attribute_item` VALUES ('27', '26', '03', '', '棕色丝印软管30G', '棕色丝印软管30G', '2', '1', '50', '2019-04-07 09:10:05', '2019-04-07 09:10:05');
INSERT INTO `c2_attribute_item` VALUES ('28', '25', '02', '', '838无色彩盒', '838无色彩盒', '2', '1', '50', '2019-04-07 09:10:43', '2019-04-07 09:10:43');
INSERT INTO `c2_attribute_item` VALUES ('29', '25', '03', '', '838棕色彩盒', '838棕色彩盒', '2', '1', '50', '2019-04-07 09:10:43', '2019-04-07 09:10:43');
INSERT INTO `c2_attribute_item` VALUES ('30', '27', '01', '', '黑色', '黑色', '2', '1', '50', '2019-04-07 09:11:54', '2019-04-07 09:11:54');
INSERT INTO `c2_attribute_item` VALUES ('31', '27', '02', '', '自然色', '自然色', '2', '1', '50', '2019-04-07 09:11:54', '2019-04-07 09:11:54');
INSERT INTO `c2_attribute_item` VALUES ('32', '27', '03', '', '棕色', '棕色', '2', '1', '50', '2019-04-07 09:11:54', '2019-04-07 09:11:54');
INSERT INTO `c2_attribute_item` VALUES ('33', '23', '02', '', '1167#', '1167#', '2', '1', '50', '2019-04-07 09:29:40', '2019-04-07 09:29:40');
INSERT INTO `c2_attribute_item` VALUES ('34', '19', '02', '', '47.44*110.72*40mm', '47.44*110.72*40mm', '2', '1', '50', '2019-04-07 09:35:57', '2019-04-07 09:35:57');
INSERT INTO `c2_attribute_item` VALUES ('35', '17', '04', '', '52.3*37.8*53.2cm', '52.3*37.8*53.2cm', '2', '1', '50', '2019-04-07 09:38:49', '2019-04-07 09:38:49');
INSERT INTO `c2_attribute_item` VALUES ('36', '15', '02', '', '1166#', '1166#', '2', '1', '50', '2019-04-07 09:42:14', '2019-04-07 09:42:14');
INSERT INTO `c2_attribute_item` VALUES ('37', '25', '04', '', '838黑色彩盒', '838黑色彩盒', '2', '1', '50', '2019-04-07 09:45:41', '2019-04-07 09:45:41');
INSERT INTO `c2_attribute_item` VALUES ('38', '17', '05', '', '48*44*26cm', '48*44*26cm', '2', '1', '50', '2019-04-07 09:46:53', '2019-04-07 09:46:53');

-- ----------------------------
-- Table structure for c2_attribute_lang
-- ----------------------------
DROP TABLE IF EXISTS `c2_attribute_lang`;
CREATE TABLE `c2_attribute_lang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`language`(191)),
  KEY `Index_2` (`entity_id`),
  KEY `Index_3` (`entity_id`,`language`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attribute_lang
-- ----------------------------

-- ----------------------------
-- Table structure for c2_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `c2_auth_assignment`;
CREATE TABLE `c2_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `c2_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `c2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of c2_auth_assignment
-- ----------------------------
INSERT INTO `c2_auth_assignment` VALUES ('P_CRM', '2', '1494992704');
INSERT INTO `c2_auth_assignment` VALUES ('P_P3S', '1', '1553834079');
INSERT INTO `c2_auth_assignment` VALUES ('P_Sales', '2', '1494988087');
INSERT INTO `c2_auth_assignment` VALUES ('客服', '3', '1494809730');
INSERT INTO `c2_auth_assignment` VALUES ('系统管理员', '1', '1494988059');

-- ----------------------------
-- Table structure for c2_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_auth_item`;
CREATE TABLE `c2_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `c2_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `c2_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of c2_auth_item
-- ----------------------------
INSERT INTO `c2_auth_item` VALUES ('P_Api', '2', 'api 接口访问', null, null, '1495683273', '1495683273');
INSERT INTO `c2_auth_item` VALUES ('P_CRM', '2', 'CRM 客户关系管理', null, null, '1481702351', '1494981130');
INSERT INTO `c2_auth_item` VALUES ('P_Logistics', '2', '后勤资料管理', null, null, '1495506790', '1495506790');
INSERT INTO `c2_auth_item` VALUES ('P_P3S', '2', 'P_P3S', null, null, '1553834067', '1553834067');
INSERT INTO `c2_auth_item` VALUES ('P_Sales', '2', 'Sales 销售管理', null, null, '1481702395', '1494981201');
INSERT INTO `c2_auth_item` VALUES ('P_Statistics', '2', 'Statistics 统计', null, null, '1494981273', '1494981273');
INSERT INTO `c2_auth_item` VALUES ('P_System', '2', 'System 系统配置', null, null, '1494981539', '1494981539');
INSERT INTO `c2_auth_item` VALUES ('客服', '1', '', null, null, '1494809711', '1495506881');
INSERT INTO `c2_auth_item` VALUES ('系统管理员', '1', '', null, null, '1481702421', '1495683288');
INSERT INTO `c2_auth_item` VALUES ('经理', '1', '', null, null, '1494987655', '1495506856');

-- ----------------------------
-- Table structure for c2_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `c2_auth_item_child`;
CREATE TABLE `c2_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `c2_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `c2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c2_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `c2_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of c2_auth_item_child
-- ----------------------------
INSERT INTO `c2_auth_item_child` VALUES ('客服', 'P_CRM');
INSERT INTO `c2_auth_item_child` VALUES ('客服', 'P_Logistics');
INSERT INTO `c2_auth_item_child` VALUES ('客服', 'P_Sales');
INSERT INTO `c2_auth_item_child` VALUES ('系统管理员', 'P_Api');
INSERT INTO `c2_auth_item_child` VALUES ('系统管理员', 'P_System');
INSERT INTO `c2_auth_item_child` VALUES ('系统管理员', '客服');
INSERT INTO `c2_auth_item_child` VALUES ('系统管理员', '经理');
INSERT INTO `c2_auth_item_child` VALUES ('经理', 'P_CRM');
INSERT INTO `c2_auth_item_child` VALUES ('经理', 'P_Logistics');
INSERT INTO `c2_auth_item_child` VALUES ('经理', 'P_Sales');
INSERT INTO `c2_auth_item_child` VALUES ('经理', 'P_Statistics');
INSERT INTO `c2_auth_item_child` VALUES ('经理', '客服');

-- ----------------------------
-- Table structure for c2_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `c2_auth_rule`;
CREATE TABLE `c2_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of c2_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for c2_be_user
-- ----------------------------
DROP TABLE IF EXISTS `c2_be_user`;
CREATE TABLE `c2_be_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT '0',
  `attributeset_id` bigint(20) DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `registration_ip` varchar(255) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`username`),
  KEY `Index_2` (`email`),
  KEY `Index_3` (`type`),
  KEY `Index_4` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c2_be_user
-- ----------------------------
INSERT INTO `c2_be_user` VALUES ('1', '0', '0', 'admin', 'admin@zdt6.com', '$2y$10$L2ELm8yMYvl2429Id0M1u.g0l1lCnOyGIcYY.26T.k91y5RsWkyv.', 'wh3xjpD0cazZIwLEDNK785pe54bG6Dm1', '0000-00-00 00:00:00', null, null, '127.0.0.1', '0', '2019-04-07 08:39:07', null, null, '0', '0', '1', '0', '2017-01-25 11:01:00', '2017-05-17 05:42:02');
INSERT INTO `c2_be_user` VALUES ('2', '0', '0', 'tester1', 'tester1@zdt6.com', '$2y$10$QDFHh.AvjI7RnBmBnHNavOmw/H2cRSt69s0SIe9l4oGy0.03Rvkt.', 'T1yk3EUV6Qf4KwVz7jJspdR5PiX3F8yk', '0000-00-00 00:00:00', null, null, '127.0.0.1', null, '2017-05-18 03:25:05', null, null, '0', '0', '1', '0', '0000-00-00 00:00:00', '2017-05-17 05:43:39');
INSERT INTO `c2_be_user` VALUES ('3', '0', '0', 'tester2', 'tester2@zdt6.com', '$2y$10$F3fC9b1cgSJZ/LzG1451Su2s3NkPYs8jDM/p0A9iur.vBX2BPDSti', 'fgm17RciIC0qaCAiF6lj8s7DX07A_con', '0000-00-00 00:00:00', null, null, '127.0.0.1', null, null, null, null, '0', '0', '1', '0', '2017-05-16 12:07:01', '2017-05-24 03:41:30');

-- ----------------------------
-- Table structure for c2_be_user_profile
-- ----------------------------
DROP TABLE IF EXISTS `c2_be_user_profile`;
CREATE TABLE `c2_be_user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  `timezone` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `terms` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c2_be_user_profile
-- ----------------------------
INSERT INTO `c2_be_user_profile` VALUES ('1', '1', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', null, 'Bi', 'Ben', '2017-06-01 00:00:00', 'ASGOWptT-UWl57arDgUEtNDvrSm3ZFhJ.jpg', '0', '1', '0', null, null);
INSERT INTO `c2_be_user_profile` VALUES ('2', '2', 'test1', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', null, 'Firstname', 'Lastname', '2017-05-28 00:00:00', 'yHC5IkHVVhfDAnVaapt43tNc1pZuluOb.jpg', '0', '1', '0', null, null);
INSERT INTO `c2_be_user_profile` VALUES ('3', '3', null, null, null, null, null, null, null, null, null, null, null, null, '0', '1', '0', null, null);

-- ----------------------------
-- Table structure for c2_city
-- ----------------------------
DROP TABLE IF EXISTS `c2_city`;
CREATE TABLE `c2_city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` char(35) COLLATE utf8mb4_bin DEFAULT NULL,
  `country_code` char(3) COLLATE utf8mb4_bin DEFAULT NULL,
  `district` char(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`name`),
  KEY `Index_2` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_city
-- ----------------------------

-- ----------------------------
-- Table structure for c2_config
-- ----------------------------
DROP TABLE IF EXISTS `c2_config`;
CREATE TABLE `c2_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT '0',
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `default_value` text COLLATE utf8mb4_bin,
  `custom_value` text COLLATE utf8mb4_bin,
  `memo` tinytext COLLATE utf8mb4_bin,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_2` (`label`(191)),
  KEY `Index_3` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_config
-- ----------------------------

-- ----------------------------
-- Table structure for c2_country
-- ----------------------------
DROP TABLE IF EXISTS `c2_country`;
CREATE TABLE `c2_country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` char(3) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` char(52) COLLATE utf8mb4_bin DEFAULT NULL,
  `continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') COLLATE utf8mb4_bin DEFAULT NULL,
  `region` char(26) COLLATE utf8mb4_bin DEFAULT NULL,
  `surface_area` float(10,2) DEFAULT NULL,
  `indep_year` smallint(6) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `life_expectancy` float(3,1) DEFAULT NULL,
  `gnp_old` float(10,2) DEFAULT NULL,
  `local_name` char(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `government_form` char(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `head_of_state` char(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `capital` int(11) DEFAULT NULL,
  `code2` char(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `gnp` float(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`),
  KEY `Index_2` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_country
-- ----------------------------

-- ----------------------------
-- Table structure for c2_country_language
-- ----------------------------
DROP TABLE IF EXISTS `c2_country_language`;
CREATE TABLE `c2_country_language` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_code` char(3) COLLATE utf8mb4_bin DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_official` enum('T','F') COLLATE utf8mb4_bin DEFAULT NULL,
  `percentage` float(4,1) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`country_code`),
  KEY `Index_2` (`language`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_country_language
-- ----------------------------

-- ----------------------------
-- Table structure for c2_currency
-- ----------------------------
DROP TABLE IF EXISTS `c2_currency`;
CREATE TABLE `c2_currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_main` tinyint(4) DEFAULT '0',
  `convert_rate` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`iso_code`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_currency
-- ----------------------------
INSERT INTO `c2_currency` VALUES ('1', '人民币', '人民币', 'CNY', '0', '1.00', '1', '0', '2019-03-29 06:21:53', '2019-03-29 06:21:53');

-- ----------------------------
-- Table structure for c2_entity_attachment
-- ----------------------------
DROP TABLE IF EXISTS `c2_entity_attachment`;
CREATE TABLE `c2_entity_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) DEFAULT '0',
  `entity_class` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entity_attribute` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `content` text COLLATE utf8mb4_bin,
  `hash` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` int(11) DEFAULT '0',
  `mime_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `logic_path` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`entity_id`,`entity_class`(191),`entity_attribute`(191),`type`),
  KEY `Index_2` (`entity_class`(191),`type`),
  KEY `Index_3` (`hash`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_entity_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for c2_inventory_delivery_note
-- ----------------------------
DROP TABLE IF EXISTS `c2_inventory_delivery_note`;
CREATE TABLE `c2_inventory_delivery_note` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT '0',
  `sales_order_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT '0',
  `occurrence_date` datetime DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT '0.00',
  `contact_man` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `cs_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `financial_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `delivery_method` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `memo` text COLLATE utf8mb4_bin,
  `remote_ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_audited` tinyint(4) DEFAULT '0',
  `audited_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_2` (`warehouse_id`),
  KEY `Index_3` (`occurrence_date`),
  KEY `Index_4` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_inventory_delivery_note
-- ----------------------------

-- ----------------------------
-- Table structure for c2_inventory_delivery_note_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_inventory_delivery_note_item`;
CREATE TABLE `c2_inventory_delivery_note_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) DEFAULT '0',
  `product_id` bigint(20) DEFAULT '0',
  `product_sku_id` bigint(20) DEFAULT '0',
  `sku_label` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT '0',
  `quantity` mediumint(9) NOT NULL DEFAULT '0',
  `measure_id` bigint(20) DEFAULT '0',
  `volume` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `pieces` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT '0.00',
  `factory_price` decimal(10,2) DEFAULT '0.00',
  `subtotal` decimal(10,2) DEFAULT '0.00',
  `memo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`note_id`),
  KEY `Index_2` (`product_id`),
  KEY `Index_3` (`product_sku_id`),
  KEY `Index_4` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_inventory_delivery_note_item
-- ----------------------------

-- ----------------------------
-- Table structure for c2_inventory_note_log
-- ----------------------------
DROP TABLE IF EXISTS `c2_inventory_note_log`;
CREATE TABLE `c2_inventory_note_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) DEFAULT '0',
  `type` tinyint(4) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT '0',
  `occurrence_date` datetime DEFAULT NULL,
  `memo` text COLLATE utf8mb4_bin,
  `updated_by` bigint(20) DEFAULT '0',
  `created_by` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`note_id`,`type`),
  KEY `Index_2` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_inventory_note_log
-- ----------------------------

-- ----------------------------
-- Table structure for c2_inventory_receipt_note
-- ----------------------------
DROP TABLE IF EXISTS `c2_inventory_receipt_note`;
CREATE TABLE `c2_inventory_receipt_note` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT '0',
  `supplier_id` bigint(20) DEFAULT '0',
  `occurrence_date` datetime DEFAULT NULL,
  `arrival_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `buyer_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `dept_manager_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `financial_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `memo` text COLLATE utf8mb4_bin,
  `remote_ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_3` (`occurrence_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_inventory_receipt_note
-- ----------------------------

-- ----------------------------
-- Table structure for c2_inventory_receipt_note_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_inventory_receipt_note_item`;
CREATE TABLE `c2_inventory_receipt_note_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `product_sku_id` int(11) DEFAULT '0',
  `sku_label` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT '0',
  `quantity` mediumint(9) NOT NULL DEFAULT '0',
  `until_price` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `measure_id` bigint(20) DEFAULT '0',
  `purcharse_order_code` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`note_id`),
  KEY `Index_2` (`product_sku_id`),
  KEY `Index_3` (`sku_label`(191)),
  KEY `Index_4` (`purcharse_order_code`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_inventory_receipt_note_item
-- ----------------------------

-- ----------------------------
-- Table structure for c2_measure
-- ----------------------------
DROP TABLE IF EXISTS `c2_measure`;
CREATE TABLE `c2_measure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin,
  `is_default` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_2` (`label`(191)),
  KEY `Index_3` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_measure
-- ----------------------------
INSERT INTO `c2_measure` VALUES ('1', 'M01', '件', '件', '', '0', '1', '0', '2019-03-29 06:21:03', '2019-03-29 06:21:03');
INSERT INTO `c2_measure` VALUES ('2', 'M02', '斤', '斤', '', '0', '1', '0', '2019-03-29 06:21:17', '2019-03-29 06:21:17');

-- ----------------------------
-- Table structure for c2_product
-- ----------------------------
DROP TABLE IF EXISTS `c2_product`;
CREATE TABLE `c2_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eshop_id` bigint(20) DEFAULT '1',
  `type` tinyint(4) DEFAULT '0',
  `seo_code` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `is_score_exchange` tinyint(4) DEFAULT '0',
  `score_exchange_method` tinyint(4) DEFAULT '1',
  `score` decimal(10,2) DEFAULT '0.00',
  `gift_score` decimal(10,2) DEFAULT '0.00',
  `require_setup` tinyint(4) DEFAULT '1',
  `is_install` tinyint(4) DEFAULT '1',
  `install_price` decimal(10,2) DEFAULT '0.00',
  `low_price` decimal(10,2) DEFAULT '0.00',
  `sales_price` decimal(10,2) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `market_price` decimal(10,2) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT '0',
  `supplier_id` bigint(20) DEFAULT '0',
  `currency_id` bigint(20) DEFAULT '0',
  `measure_id` bigint(20) DEFAULT '0',
  `summary` text,
  `description` text,
  `views_count` int(11) DEFAULT '0',
  `comment_count` int(11) DEFAULT '0',
  `sold_count` int(11) DEFAULT '0',
  `virtual_sold_count` int(11) DEFAULT '0',
  `is_released` tinyint(4) DEFAULT '0',
  `released_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '50',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`seo_code`(191),`eshop_id`,`is_released`),
  KEY `Index_2` (`sku`(191),`eshop_id`,`is_released`),
  KEY `Index_3` (`name`(191),`label`(191)),
  KEY `Index_4` (`status`,`is_released`,`position`),
  KEY `Index_5` (`eshop_id`,`is_released`),
  KEY `Index_6` (`serial_number`(191),`eshop_id`,`is_released`),
  KEY `Index_7` (`brand_id`,`eshop_id`,`is_released`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_product
-- ----------------------------
INSERT INTO `c2_product` VALUES ('3', '1', '0', null, 'PA-163-HB', null, null, '大圆鞋擦(黄白)', '大圆鞋擦(黄白)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-06 15:08:52', '2019-04-06 15:58:20');
INSERT INTO `c2_product` VALUES ('4', '1', '0', null, 'PA-163-QB', null, null, '大圆鞋擦(全黑)', '大圆鞋擦（全黑）', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-06 18:40:45', '2019-04-06 18:41:36');
INSERT INTO `c2_product` VALUES ('5', '1', '0', null, 'PA-167-GG', null, null, '反绒皮清洁刷(内销)', '反绒皮清洁刷(内销)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:26:11', '2019-04-07 09:33:48');
INSERT INTO `c2_product` VALUES ('6', '1', '0', null, 'PA-1167-CC', null, null, '反绒皮清洁刷(出口)', '反绒皮清洁刷(出口)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product` VALUES ('7', '1', '0', null, 'PA-166-LX', null, null, '海绵鞋蜡刷(内销)', '海绵鞋蜡刷(内销)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:31:57', '2019-04-07 09:43:14');
INSERT INTO `c2_product` VALUES ('8', '1', '0', null, 'PA-1166-CK', null, null, '海绵鞋蜡刷(出口)', '海绵鞋蜡刷(出口)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product` VALUES ('9', '1', '0', null, 'PA-838-HS', null, null, '软管黑色绵羊鞋蜡(30G)', '软管黑色绵羊鞋蜡(30G)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:44:43', '2019-04-07 09:44:43');
INSERT INTO `c2_product` VALUES ('10', '1', '0', null, 'PA-838-WS', null, null, '软管无色绵羊鞋蜡(30G)', '软管无色绵羊鞋蜡(30G)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product` VALUES ('11', '1', '0', null, 'PA-838-ZS', null, null, '软管棕色绵羊鞋蜡(30G)', '软管棕色绵羊鞋蜡(30G)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:48:18', '2019-04-07 09:48:18');

-- ----------------------------
-- Table structure for c2_product_attributeset_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_attributeset_rs`;
CREATE TABLE `c2_product_attributeset_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `attributeset_id` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`product_id`),
  KEY `Index_2` (`attributeset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_attributeset_rs
-- ----------------------------
INSERT INTO `c2_product_attributeset_rs` VALUES ('5', '3', '3', '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_attributeset_rs` VALUES ('6', '4', '3', '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_attributeset_rs` VALUES ('7', '5', '4', '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_attributeset_rs` VALUES ('8', '6', '4', '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_attributeset_rs` VALUES ('10', '7', '4', '1', '0', '2019-04-07 09:32:16', '2019-04-07 09:32:16');
INSERT INTO `c2_product_attributeset_rs` VALUES ('11', '7', '3', '1', '0', '2019-04-07 09:36:39', '2019-04-07 09:36:39');
INSERT INTO `c2_product_attributeset_rs` VALUES ('12', '8', '3', '1', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_attributeset_rs` VALUES ('13', '8', '4', '1', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_attributeset_rs` VALUES ('14', '9', '4', '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_attributeset_rs` VALUES ('15', '10', '4', '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_attributeset_rs` VALUES ('16', '11', '4', '1', '0', '2019-04-07 09:48:18', '2019-04-07 09:48:18');

-- ----------------------------
-- Table structure for c2_product_eav
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_eav`;
CREATE TABLE `c2_product_eav` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) DEFAULT '0',
  `attribute_id` bigint(20) DEFAULT '0',
  `attribute_code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` text COLLATE utf8mb4_bin,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`entity_id`,`attribute_id`),
  KEY `Index_2` (`entity_id`),
  KEY `Index_3` (`attribute_code`(191))
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_eav
-- ----------------------------
INSERT INTO `c2_product_eav` VALUES ('5', '2', '12', 'C2', 0x7B2233223A22E9BB84E889B2222C2234223A22E799BDE889B2227D, '1', '0', '2019-04-06 09:44:17', '2019-04-06 09:44:17');
INSERT INTO `c2_product_eav` VALUES ('6', '2', '12', 'C2', 0x7B2233223A22E9BB84E889B2222C2234223A22E799BDE889B2227D, '1', '0', '2019-04-06 09:49:32', '2019-04-06 09:49:32');
INSERT INTO `c2_product_eav` VALUES ('8', '2', '12', 'C2', 0x7B2233223A22E9BB84E889B2222C2234223A22E799BDE889B2227D, '1', '0', '2019-04-06 09:55:44', '2019-04-06 09:55:44');
INSERT INTO `c2_product_eav` VALUES ('9', '2', '11', 'C1', 0x3130636D, '1', '0', '2019-04-06 11:28:21', '2019-04-06 11:28:21');
INSERT INTO `c2_product_eav` VALUES ('23', '3', '12', 'C2', 0x7B2233223A22E9BB84E889B2227D, '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_eav` VALUES ('24', '3', '13', 'C3', 0x7B2235223A2238372A31376D6D227D, '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_eav` VALUES ('25', '3', '14', 'C4', 0x7B2236223A22E697A0E889B2227D, '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_eav` VALUES ('26', '3', '15', 'C5', 0x7B2237223A2231363323227D, '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_eav` VALUES ('27', '3', '16', 'C6', 0x7B2238223A223435306D6D2A312E3563227D, '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_eav` VALUES ('28', '3', '17', 'C7', 0x7B2239223A2235382E352A34302A34312E35636D227D, '1', '0', '2019-04-06 15:58:20', '2019-04-06 15:58:20');
INSERT INTO `c2_product_eav` VALUES ('29', '3', '18', 'C8', 0x7B223130223A22E799BDE4B8ADE69DBF227D, '1', '0', '2019-04-06 15:58:21', '2019-04-06 15:58:21');
INSERT INTO `c2_product_eav` VALUES ('30', '4', '12', 'C2', 0x7B2234223A22E799BDE889B2227D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('31', '4', '13', 'C3', 0x5B5D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('32', '4', '14', 'C4', 0x7B2236223A22E697A0E889B2227D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('33', '4', '15', 'C5', 0x7B2237223A2231363323227D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('34', '4', '16', 'C6', 0x7B223133223A223335306D6D2A312E3963227D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('35', '4', '17', 'C7', 0x7B223134223A2235382A33392A3339636D227D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('36', '4', '18', 'C8', 0x7B223131223A22E9BB91E4B8ADE69DBF227D, '1', '0', '2019-04-06 18:40:45', '2019-04-06 18:40:45');
INSERT INTO `c2_product_eav` VALUES ('37', '3', '19', 'C9', null, '1', '0', '2019-04-06 18:41:07', '2019-04-06 18:41:07');
INSERT INTO `c2_product_eav` VALUES ('38', '4', '19', 'C9', 0x7B223135223A2238372A3135227D, '1', '0', '2019-04-06 18:41:07', '2019-04-06 18:41:07');
INSERT INTO `c2_product_eav` VALUES ('39', '5', '15', 'C5', 0x7B2237223A2231363323227D, '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_eav` VALUES ('40', '5', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_eav` VALUES ('41', '5', '17', 'C7', 0x7B223231223A2236342A34392A3331636D227D, '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_eav` VALUES ('42', '5', '20', 'C10', 0x7B223137223A2234372E34342A3131302E37322A34306D6D227D, '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_eav` VALUES ('43', '5', '21', 'C11', 0x7B223138223A2231363723227D, '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_eav` VALUES ('44', '5', '22', 'C12', 0x7B223139223A2231363723227D, '1', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_eav` VALUES ('45', '5', '23', 'C13', 0x7B223230223A2231363723227D, '1', '0', '2019-04-07 09:27:34', '2019-04-07 09:27:34');
INSERT INTO `c2_product_eav` VALUES ('46', '6', '15', 'C5', 0x7B2237223A2231363323227D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('47', '6', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('48', '6', '17', 'C7', 0x7B223231223A2236342A34392A3331636D227D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('49', '6', '20', 'C10', 0x7B223137223A2234372E34342A3131302E37322A34306D6D227D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('50', '6', '21', 'C11', 0x7B223138223A2231363723227D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('51', '6', '22', 'C12', 0x7B223139223A2231363723227D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('52', '6', '23', 'C13', 0x7B223333223A223131363723227D, '1', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_eav` VALUES ('53', '5', '19', 'C9', null, '1', '0', '2019-04-07 09:31:37', '2019-04-07 09:31:37');
INSERT INTO `c2_product_eav` VALUES ('54', '6', '19', 'C9', null, '1', '0', '2019-04-07 09:31:37', '2019-04-07 09:31:37');
INSERT INTO `c2_product_eav` VALUES ('58', '7', '15', 'C5', 0x7B2237223A2231363323227D, '1', '0', '2019-04-07 09:31:57', '2019-04-07 09:31:57');
INSERT INTO `c2_product_eav` VALUES ('59', '7', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:31:57', '2019-04-07 09:31:57');
INSERT INTO `c2_product_eav` VALUES ('60', '7', '17', 'C7', 0x7B223335223A2235322E332A33372E382A35332E32636D227D, '1', '0', '2019-04-07 09:31:57', '2019-04-07 09:31:57');
INSERT INTO `c2_product_eav` VALUES ('62', '7', '19', 'C9', 0x7B223334223A2234372E34342A3131302E37322A34306D6D227D, '1', '0', '2019-04-07 09:31:58', '2019-04-07 09:31:58');
INSERT INTO `c2_product_eav` VALUES ('63', '7', '20', 'C10', 0x5B5D, '1', '0', '2019-04-07 09:32:17', '2019-04-07 09:32:17');
INSERT INTO `c2_product_eav` VALUES ('64', '7', '21', 'C11', 0x7B223138223A2231363723227D, '1', '0', '2019-04-07 09:32:17', '2019-04-07 09:32:17');
INSERT INTO `c2_product_eav` VALUES ('65', '7', '22', 'C12', 0x7B223139223A2231363723227D, '1', '0', '2019-04-07 09:32:17', '2019-04-07 09:32:17');
INSERT INTO `c2_product_eav` VALUES ('66', '7', '23', 'C13', 0x5B5D, '1', '0', '2019-04-07 09:32:17', '2019-04-07 09:32:17');
INSERT INTO `c2_product_eav` VALUES ('67', '7', '12', 'C2', 0x5B5D, '1', '0', '2019-04-07 09:36:39', '2019-04-07 09:36:39');
INSERT INTO `c2_product_eav` VALUES ('68', '7', '13', 'C3', 0x5B5D, '1', '0', '2019-04-07 09:36:39', '2019-04-07 09:36:39');
INSERT INTO `c2_product_eav` VALUES ('69', '7', '14', 'C4', 0x7B2236223A22E697A0E889B2227D, '1', '0', '2019-04-07 09:36:39', '2019-04-07 09:36:39');
INSERT INTO `c2_product_eav` VALUES ('70', '7', '18', 'C8', 0x5B5D, '1', '0', '2019-04-07 09:36:39', '2019-04-07 09:36:39');
INSERT INTO `c2_product_eav` VALUES ('71', '5', '25', 'C15', null, '1', '0', '2019-04-07 09:37:39', '2019-04-07 09:37:39');
INSERT INTO `c2_product_eav` VALUES ('72', '6', '25', 'C15', null, '1', '0', '2019-04-07 09:37:39', '2019-04-07 09:37:39');
INSERT INTO `c2_product_eav` VALUES ('73', '7', '25', 'C15', 0x7B223234223A2231363623227D, '1', '0', '2019-04-07 09:37:39', '2019-04-07 09:37:39');
INSERT INTO `c2_product_eav` VALUES ('74', '8', '12', 'C2', 0x5B5D, '1', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_eav` VALUES ('75', '8', '13', 'C3', 0x5B5D, '1', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_eav` VALUES ('76', '8', '14', 'C4', 0x7B2236223A22E697A0E889B2227D, '1', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_eav` VALUES ('77', '8', '15', 'C5', 0x7B223336223A223131363623227D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('78', '8', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('79', '8', '17', 'C7', 0x7B223335223A2235322E332A33372E382A35332E32636D227D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('80', '8', '18', 'C8', 0x5B5D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('81', '8', '19', 'C9', 0x7B223334223A2234372E34342A3131302E37322A34306D6D227D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('82', '8', '20', 'C10', 0x5B5D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('83', '8', '21', 'C11', 0x7B223138223A2231363723227D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('84', '8', '22', 'C12', 0x7B223139223A2231363723227D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('85', '8', '23', 'C13', 0x5B5D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('86', '8', '25', 'C15', 0x7B223234223A2231363623227D, '1', '0', '2019-04-07 09:40:48', '2019-04-07 09:40:48');
INSERT INTO `c2_product_eav` VALUES ('87', '5', '24', 'C14', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('88', '5', '26', 'C16', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('89', '5', '27', 'C17', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('90', '6', '24', 'C14', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('91', '6', '26', 'C16', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('92', '6', '27', 'C17', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('93', '7', '24', 'C14', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('94', '7', '26', 'C16', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('95', '7', '27', 'C17', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('96', '8', '24', 'C14', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('97', '8', '26', 'C16', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('98', '8', '27', 'C17', null, '1', '0', '2019-04-07 09:44:16', '2019-04-07 09:44:16');
INSERT INTO `c2_product_eav` VALUES ('99', '9', '15', 'C5', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('100', '9', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('101', '9', '17', 'C7', 0x7B223338223A2234382A34342A3236636D227D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('102', '9', '19', 'C9', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('103', '9', '20', 'C10', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('104', '9', '21', 'C11', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('105', '9', '22', 'C12', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('106', '9', '23', 'C13', 0x5B5D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('107', '9', '24', 'C14', 0x7B223232223A223237302A3433306D6D2A302E303363227D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('108', '9', '25', 'C15', 0x7B223337223A22383338E9BB91E889B2E5BDA9E79B92227D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('109', '9', '26', 'C16', 0x7B223235223A22E9BB91E889B2E4B89DE58DB0E8BDAFE7AEA1333047227D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('110', '9', '27', 'C17', 0x7B223330223A22E9BB91E889B2227D, '1', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_eav` VALUES ('111', '10', '15', 'C5', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('112', '10', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('113', '10', '17', 'C7', 0x7B223338223A2234382A34342A3236636D227D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('114', '10', '19', 'C9', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('115', '10', '20', 'C10', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('116', '10', '21', 'C11', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('117', '10', '22', 'C12', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('118', '10', '23', 'C13', 0x5B5D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('119', '10', '24', 'C14', 0x7B223232223A223237302A3433306D6D2A302E303363227D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('120', '10', '25', 'C15', 0x7B223238223A22383338E697A0E889B2E5BDA9E79B92227D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('121', '10', '26', 'C16', 0x7B223236223A22E697A0E889B2E4B89DE58DB0E8BDAFE7AEA1333047227D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('122', '10', '27', 'C17', 0x7B223331223A22E887AAE784B6E889B2227D, '1', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_eav` VALUES ('123', '11', '15', 'C5', 0x5B5D, '1', '0', '2019-04-07 09:48:18', '2019-04-07 09:48:18');
INSERT INTO `c2_product_eav` VALUES ('124', '11', '16', 'C6', 0x5B5D, '1', '0', '2019-04-07 09:48:18', '2019-04-07 09:48:18');
INSERT INTO `c2_product_eav` VALUES ('125', '11', '17', 'C7', 0x7B223338223A2234382A34342A3236636D227D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('126', '11', '19', 'C9', 0x5B5D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('127', '11', '20', 'C10', 0x5B5D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('128', '11', '21', 'C11', 0x5B5D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('129', '11', '22', 'C12', 0x5B5D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('130', '11', '23', 'C13', 0x5B5D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('131', '11', '24', 'C14', 0x7B223232223A223237302A3433306D6D2A302E303363227D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('132', '11', '25', 'C15', 0x7B223239223A22383338E6A395E889B2E5BDA9E79B92227D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('133', '11', '26', 'C16', 0x7B223237223A22E6A395E889B2E4B89DE58DB0E8BDAFE7AEA1333047227D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');
INSERT INTO `c2_product_eav` VALUES ('134', '11', '27', 'C17', 0x7B223332223A22E6A395E889B2227D, '1', '0', '2019-04-07 09:48:19', '2019-04-07 09:48:19');

-- ----------------------------
-- Table structure for c2_product_eav_lang
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_eav_lang`;
CREATE TABLE `c2_product_eav_lang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner_id` bigint(20) DEFAULT '0',
  `entity_id` bigint(20) DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` text COLLATE utf8mb4_bin,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`language`(191)),
  KEY `Index_2` (`owner_id`),
  KEY `Index_3` (`entity_id`,`language`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_eav_lang
-- ----------------------------

-- ----------------------------
-- Table structure for c2_product_lang
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_lang`;
CREATE TABLE `c2_product_lang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `breadcrumb` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text COLLATE utf8mb4_bin,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`language`(191)),
  KEY `Index_2` (`entity_id`),
  KEY `Index_3` (`entity_id`,`language`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_lang
-- ----------------------------

-- ----------------------------
-- Table structure for c2_product_sku
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_sku`;
CREATE TABLE `c2_product_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT '0',
  `attr_params` text COLLATE utf8mb4_bin,
  `hash` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `sales_price` decimal(10,2) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `unit` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `summary` text COLLATE utf8mb4_bin,
  `description` text COLLATE utf8mb4_bin,
  `is_released` tinyint(4) DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_2` (`product_id`),
  KEY `Index_3` (`hash`(191)),
  KEY `Index_4` (`sku`(191)),
  KEY `Index_5` (`is_released`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_sku
-- ----------------------------
INSERT INTO `c2_product_sku` VALUES ('6', '3', 0x43323A332F43333A352F43343A362F43353A372F43363A382F43373A392F43383A3130, '33332c352c362c372c382c392c3130', 'PA-163-HB-33332c352c362c372c382c392c3130', '瓶盖:黄色/海绵(粉红+灰):87*17mm/鞋油:无色/不干胶:163#/收缩膜:450mm*1.5c/外箱:58.5*40*41.5cm/中板:白中板', '瓶盖:黄色/海绵(粉红+灰):87*17mm/鞋油:无色/不干胶:163#/收缩膜:450mm*1.5c/外箱:58.5*40*41.5cm/中板:白中板', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-06 16:00:22', '2019-04-06 16:00:22');
INSERT INTO `c2_product_sku` VALUES ('7', '4', 0x43323A342F43343A362F43353A372F43363A31332F43373A31342F43383A31312F43393A3135, '34342c362c372c31332c31342c31312c3135', 'PA-163-QB-34342c362c372c31332c31342c31312c3135', '瓶盖:白色//鞋油:无色/不干胶:163#/收缩膜:350mm*1.9c/外箱:58*39*39cm/中板:黑中板/海绵(灰+灰):87*15', '瓶盖:白色//鞋油:无色/不干胶:163#/收缩膜:350mm*1.9c/外箱:58*39*39cm/中板:黑中板/海绵(灰+灰):87*15', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-06 18:44:17', '2019-04-06 18:44:17');
INSERT INTO `c2_product_sku` VALUES ('8', '5', 0x43353A372F43373A32312F4331303A31372F4331313A31382F4331323A31392F4331333A3230, '35372c32312c31372c31382c31392c3230', 'PA-167-GG-35372c32312c31372c31382c31392c3230', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:167#', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:167#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:28:16', '2019-04-07 09:28:16');
INSERT INTO `c2_product_sku` VALUES ('9', '6', 0x43353A372F43373A32312F4331303A31372F4331313A31382F4331323A31392F4331333A3333, '36372c32312c31372c31382c31392c3333', 'PA-1167-CC-36372c32312c31372c31382c31392c3333', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:1167#', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:1167#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:30:18', '2019-04-07 09:30:18');
INSERT INTO `c2_product_sku` VALUES ('10', '7', 0x43343A362F43353A372F43373A33352F43393A33342F4331313A31382F4331323A31392F4331353A3234, '37362c372c33352c33342c31382c31392c3234', 'PA-166-LX-37362c372c33352c33342c31382c31392c3234', '//鞋油:无色/不干胶:163#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', '//鞋油:无色/不干胶:163#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:39:48', '2019-04-07 09:39:48');
INSERT INTO `c2_product_sku` VALUES ('11', '8', 0x43343A362F43353A33362F43373A33352F43393A33342F4331313A31382F4331323A31392F4331353A3234, '38362c33362c33352c33342c31382c31392c3234', 'PA-1166-CK-38362c33362c33352c33342c31382c31392c3234', '//鞋油:无色/不干胶:1166#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', '//鞋油:无色/不干胶:1166#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:42:49', '2019-04-07 09:42:49');
INSERT INTO `c2_product_sku` VALUES ('12', '9', 0x43373A33382F4331343A32322F4331353A33372F4331363A32352F4331373A3330, '3933382c32322c33372c32352c3330', 'PA-838-HS-3933382c32322c33372c32352c3330', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838黑色彩盒/软管:黑色丝印软管30G/黑色绵羊鞋膏:黑色', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838黑色彩盒/软管:黑色丝印软管30G/黑色绵羊鞋膏:黑色', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:47:17', '2019-04-07 09:47:17');
INSERT INTO `c2_product_sku` VALUES ('13', '10', 0x43373A33382F4331343A32322F4331353A32382F4331363A32362F4331373A3331, '313033382c32322c32382c32362c3331', 'PA-838-WS-313033382c32322c32382c32362c3331', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838无色彩盒/软管:无色丝印软管30G/黑色绵羊鞋膏:自然色', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838无色彩盒/软管:无色丝印软管30G/黑色绵羊鞋膏:自然色', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:48:00', '2019-04-07 09:48:00');
INSERT INTO `c2_product_sku` VALUES ('14', '11', 0x43373A33382F4331343A32322F4331353A32392F4331363A32372F4331373A3332, '313133382c32322c32392c32372c3332', 'PA-838-ZS-313133382c32322c32392c32372c3332', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838棕色彩盒/软管:棕色丝印软管30G/黑色绵羊鞋膏:棕色', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838棕色彩盒/软管:棕色丝印软管30G/黑色绵羊鞋膏:棕色', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:48:51', '2019-04-07 09:48:51');

-- ----------------------------
-- Table structure for c2_region
-- ----------------------------
DROP TABLE IF EXISTS `c2_region`;
CREATE TABLE `c2_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`label`(191)) USING BTREE,
  KEY `Index_2` (`code`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3469 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of c2_region
-- ----------------------------
INSERT INTO `c2_region` VALUES ('1', '1', '110000', '北京', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2', '1', '120000', '天津', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3', '1', '130000', '河北', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('4', '1', '140000', '山西', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('5', '1', '150000', '内蒙古', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('6', '1', '210000', '辽宁', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('7', '1', '220000', '吉林', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('8', '1', '230000', '黑龙江', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('9', '1', '310000', '上海', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('10', '1', '320000', '江苏', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('11', '1', '330000', '浙江', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('12', '1', '340000', '安徽', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('13', '1', '350000', '福建', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('14', '1', '360000', '江西', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('15', '1', '370000', '山东', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('16', '1', '410000', '河南', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('17', '1', '420000', '湖北', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('18', '1', '430000', '湖南', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('19', '1', '440000', '广东', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('20', '1', '450000', '广西', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('21', '1', '460000', '海南', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('22', '1', '500000', '重庆', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('23', '1', '510000', '四川', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('24', '1', '520000', '贵州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('25', '1', '530000', '云南', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('26', '1', '540000', '西藏', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('27', '1', '610000', '陕西', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('28', '1', '620000', '甘肃', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('29', '1', '630000', '青海', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('30', '1', '640000', '宁夏', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('31', '1', '650000', '新疆', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('32', '1', '710000', '台湾', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('33', '1', '810000', '香港', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('34', '1', '820000', '澳门', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('35', '2', '110100', '东城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('36', '2', '110200', '西城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('37', '2', '110500', '朝阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('38', '2', '110600', '丰台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('39', '2', '110700', '石景山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('40', '2', '110800', '海淀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('41', '2', '110900', '门头沟区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('42', '2', '111100', '房山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('43', '2', '111200', '通州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('44', '2', '111300', '顺义区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('45', '2', '111400', '昌平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('46', '2', '111500', '大兴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('47', '2', '111600', '怀柔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('48', '2', '111700', '平谷区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('49', '2', '111800', '密云区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('50', '2', '111900', '延庆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('51', '2', '120100', '和平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('52', '2', '120200', '河东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('53', '2', '120300', '河西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('54', '2', '120400', '南开区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('55', '2', '120500', '河北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('56', '2', '120600', '红桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('57', '2', '121000', '东丽区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('58', '2', '121100', '西青区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('59', '2', '121200', '津南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('60', '2', '121300', '北辰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('61', '2', '121400', '武清区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('62', '2', '121500', '宝坻区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('63', '2', '121600', '滨海新区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('64', '2', '121700', '宁河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('65', '2', '121800', '静海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('66', '2', '121900', '蓟州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('67', '2', '130100', '石家庄市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('68', '2', '130200', '唐山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('69', '2', '130300', '秦皇岛市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('70', '2', '130400', '邯郸市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('71', '2', '130500', '邢台市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('72', '2', '130600', '保定市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('73', '2', '130700', '张家口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('74', '2', '130800', '承德市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('75', '2', '130900', '沧州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('76', '2', '131000', '廊坊市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('77', '2', '131100', '衡水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('78', '2', '139000', '省直辖县级行政区划', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('79', '2', '140100', '太原市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('80', '2', '140200', '大同市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('81', '2', '140300', '阳泉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('82', '2', '140400', '长治市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('83', '2', '140500', '晋城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('84', '2', '140600', '朔州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('85', '2', '140700', '晋中市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('86', '2', '140800', '运城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('87', '2', '140900', '忻州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('88', '2', '141000', '临汾市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('89', '2', '141100', '吕梁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('90', '2', '150100', '呼和浩特市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('91', '2', '150200', '包头市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('92', '2', '150300', '乌海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('93', '2', '150400', '赤峰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('94', '2', '150500', '通辽市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('95', '2', '150600', '鄂尔多斯市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('96', '2', '150700', '呼伦贝尔市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('97', '2', '150800', '巴彦淖尔市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('98', '2', '150900', '乌兰察布市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('99', '2', '152200', '兴安盟', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('100', '2', '152500', '锡林郭勒盟', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('101', '2', '152900', '阿拉善盟', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('102', '2', '210100', '沈阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('103', '2', '210200', '大连市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('104', '2', '210300', '鞍山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('105', '2', '210400', '抚顺市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('106', '2', '210500', '本溪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('107', '2', '210600', '丹东市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('108', '2', '210700', '锦州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('109', '2', '210800', '营口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('110', '2', '210900', '阜新市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('111', '2', '211000', '辽阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('112', '2', '211100', '盘锦市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('113', '2', '211200', '铁岭市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('114', '2', '211300', '朝阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('115', '2', '211400', '葫芦岛市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('116', '2', '220100', '长春市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('117', '2', '220200', '吉林市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('118', '2', '220300', '四平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('119', '2', '220400', '辽源市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('120', '2', '220500', '通化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('121', '2', '220600', '白山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('122', '2', '220700', '松原市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('123', '2', '220800', '白城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('124', '2', '222400', '延边朝鲜族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('125', '2', '230100', '哈尔滨市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('126', '2', '230200', '齐齐哈尔市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('127', '2', '230300', '鸡西市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('128', '2', '230400', '鹤岗市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('129', '2', '230500', '双鸭山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('130', '2', '230600', '大庆市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('131', '2', '230700', '伊春市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('132', '2', '230800', '佳木斯市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('133', '2', '230900', '七台河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('134', '2', '231000', '牡丹江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('135', '2', '231100', '黑河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('136', '2', '231200', '绥化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('137', '2', '232700', '大兴安岭地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('138', '2', '310100', '黄浦区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('139', '2', '310400', '徐汇区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('140', '2', '310500', '长宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('141', '2', '310600', '静安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('142', '2', '310700', '普陀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('143', '2', '310900', '虹口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('144', '2', '311000', '杨浦区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('145', '2', '311200', '闵行区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('146', '2', '311300', '宝山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('147', '2', '311400', '嘉定区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('148', '2', '311500', '浦东新区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('149', '2', '311600', '金山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('150', '2', '311700', '松江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('151', '2', '311800', '青浦区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('152', '2', '312000', '奉贤区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('153', '2', '315100', '崇明区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('154', '2', '320100', '南京市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('155', '2', '320200', '无锡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('156', '2', '320300', '徐州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('157', '2', '320400', '常州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('158', '2', '320500', '苏州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('159', '2', '320600', '南通市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('160', '2', '320700', '连云港市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('161', '2', '320800', '淮安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('162', '2', '320900', '盐城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('163', '2', '321000', '扬州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('164', '2', '321100', '镇江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('165', '2', '321200', '泰州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('166', '2', '321300', '宿迁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('167', '2', '330100', '杭州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('168', '2', '330200', '宁波市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('169', '2', '330300', '温州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('170', '2', '330400', '嘉兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('171', '2', '330500', '湖州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('172', '2', '330600', '绍兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('173', '2', '330700', '金华市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('174', '2', '330800', '衢州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('175', '2', '330900', '舟山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('176', '2', '331000', '台州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('177', '2', '331100', '丽水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('178', '2', '340100', '合肥市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('179', '2', '340200', '芜湖市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('180', '2', '340300', '蚌埠市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('181', '2', '340400', '淮南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('182', '2', '340500', '马鞍山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('183', '2', '340600', '淮北市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('184', '2', '340700', '铜陵市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('185', '2', '340800', '安庆市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('186', '2', '341000', '黄山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('187', '2', '341100', '滁州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('188', '2', '341200', '阜阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('189', '2', '341300', '宿州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('190', '2', '341500', '六安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('191', '2', '341600', '亳州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('192', '2', '341700', '池州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('193', '2', '341800', '宣城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('194', '2', '350100', '福州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('195', '2', '350200', '厦门市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('196', '2', '350300', '莆田市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('197', '2', '350400', '三明市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('198', '2', '350500', '泉州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('199', '2', '350600', '漳州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('200', '2', '350700', '南平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('201', '2', '350800', '龙岩市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('202', '2', '350900', '宁德市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('203', '2', '360100', '南昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('204', '2', '360200', '景德镇市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('205', '2', '360300', '萍乡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('206', '2', '360400', '九江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('207', '2', '360500', '新余市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('208', '2', '360600', '鹰潭市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('209', '2', '360700', '赣州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('210', '2', '360800', '吉安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('211', '2', '360900', '宜春市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('212', '2', '361000', '抚州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('213', '2', '361100', '上饶市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('214', '2', '370100', '济南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('215', '2', '370200', '青岛市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('216', '2', '370300', '淄博市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('217', '2', '370400', '枣庄市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('218', '2', '370500', '东营市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('219', '2', '370600', '烟台市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('220', '2', '370700', '潍坊市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('221', '2', '370800', '济宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('222', '2', '370900', '泰安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('223', '2', '371000', '威海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('224', '2', '371100', '日照市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('225', '2', '371200', '莱芜市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('226', '2', '371300', '临沂市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('227', '2', '371400', '德州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('228', '2', '371500', '聊城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('229', '2', '371600', '滨州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('230', '2', '371700', '菏泽市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('231', '2', '410100', '郑州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('232', '2', '410200', '开封市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('233', '2', '410300', '洛阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('234', '2', '410400', '平顶山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('235', '2', '410500', '安阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('236', '2', '410600', '鹤壁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('237', '2', '410700', '新乡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('238', '2', '410800', '焦作市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('239', '2', '410900', '濮阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('240', '2', '411000', '许昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('241', '2', '411100', '漯河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('242', '2', '411200', '三门峡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('243', '2', '411300', '南阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('244', '2', '411400', '商丘市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('245', '2', '411500', '信阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('246', '2', '411600', '周口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('247', '2', '411700', '驻马店市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('248', '2', '419000', '省直辖县级行政区划', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('249', '2', '420100', '武汉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('250', '2', '420200', '黄石市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('251', '2', '420300', '十堰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('252', '2', '420500', '宜昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('253', '2', '420600', '襄阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('254', '2', '420700', '鄂州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('255', '2', '420800', '荆门市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('256', '2', '420900', '孝感市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('257', '2', '421000', '荆州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('258', '2', '421100', '黄冈市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('259', '2', '421200', '咸宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('260', '2', '421300', '随州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('261', '2', '422800', '恩施土家族苗族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('262', '2', '429000', '省直辖县级行政区划', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('263', '2', '430100', '长沙市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('264', '2', '430200', '株洲市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('265', '2', '430300', '湘潭市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('266', '2', '430400', '衡阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('267', '2', '430500', '邵阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('268', '2', '430600', '岳阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('269', '2', '430700', '常德市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('270', '2', '430800', '张家界市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('271', '2', '430900', '益阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('272', '2', '431000', '郴州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('273', '2', '431100', '永州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('274', '2', '431200', '怀化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('275', '2', '431300', '娄底市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('276', '2', '433100', '湘西土家族苗族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('277', '2', '440100', '广州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('278', '2', '440200', '韶关市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('279', '2', '440300', '深圳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('280', '2', '440400', '珠海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('281', '2', '440500', '汕头市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('282', '2', '440600', '佛山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('283', '2', '440700', '江门市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('284', '2', '440800', '湛江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('285', '2', '440900', '茂名市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('286', '2', '441200', '肇庆市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('287', '2', '441300', '惠州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('288', '2', '441400', '梅州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('289', '2', '441500', '汕尾市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('290', '2', '441600', '河源市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('291', '2', '441700', '阳江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('292', '2', '441800', '清远市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('293', '2', '441900', '东莞市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('294', '2', '442000', '中山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('295', '2', '445100', '潮州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('296', '2', '445200', '揭阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('297', '2', '445300', '云浮市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('298', '2', '450100', '南宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('299', '2', '450200', '柳州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('300', '2', '450300', '桂林市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('301', '2', '450400', '梧州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('302', '2', '450500', '北海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('303', '2', '450600', '防城港市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('304', '2', '450700', '钦州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('305', '2', '450800', '贵港市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('306', '2', '450900', '玉林市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('307', '2', '451000', '百色市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('308', '2', '451100', '贺州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('309', '2', '451200', '河池市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('310', '2', '451300', '来宾市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('311', '2', '451400', '崇左市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('312', '2', '460100', '海口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('313', '2', '460200', '三亚市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('314', '2', '460300', '三沙市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('315', '2', '460400', '儋州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('316', '2', '469000', '省直辖县级行政区划', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('317', '2', '500100', '万州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('318', '2', '500200', '涪陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('319', '2', '500300', '渝中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('320', '2', '500400', '大渡口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('321', '2', '500500', '江北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('322', '2', '500600', '沙坪坝区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('323', '2', '500700', '九龙坡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('324', '2', '500800', '南岸区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('325', '2', '500900', '北碚区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('326', '2', '501000', '綦江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('327', '2', '501100', '大足区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('328', '2', '501200', '渝北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('329', '2', '501300', '巴南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('330', '2', '501400', '黔江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('331', '2', '501500', '长寿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('332', '2', '501600', '江津区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('333', '2', '501700', '合川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('334', '2', '501800', '永川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('335', '2', '501900', '南川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('336', '2', '502000', '璧山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('337', '2', '502100', '铜梁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('338', '2', '502200', '潼南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('339', '2', '502300', '荣昌区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('340', '2', '502400', '开州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('341', '2', '502800', '梁平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('342', '2', '502900', '城口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('343', '2', '503000', '丰都县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('344', '2', '503100', '垫江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('345', '2', '503200', '武隆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('346', '2', '503300', '忠县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('347', '2', '503500', '云阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('348', '2', '503600', '奉节县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('349', '2', '503700', '巫山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('350', '2', '503800', '巫溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('351', '2', '504000', '石柱土家族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('352', '2', '504100', '秀山土家族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('353', '2', '504200', '酉阳土家族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('354', '2', '504300', '彭水苗族土家族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('355', '2', '510100', '成都市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('356', '2', '510300', '自贡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('357', '2', '510400', '攀枝花市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('358', '2', '510500', '泸州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('359', '2', '510600', '德阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('360', '2', '510700', '绵阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('361', '2', '510800', '广元市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('362', '2', '510900', '遂宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('363', '2', '511000', '内江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('364', '2', '511100', '乐山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('365', '2', '511300', '南充市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('366', '2', '511400', '眉山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('367', '2', '511500', '宜宾市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('368', '2', '511600', '广安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('369', '2', '511700', '达州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('370', '2', '511800', '雅安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('371', '2', '511900', '巴中市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('372', '2', '512000', '资阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('373', '2', '513200', '阿坝藏族羌族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('374', '2', '513300', '甘孜藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('375', '2', '513400', '凉山彝族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('376', '2', '520100', '贵阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('377', '2', '520200', '六盘水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('378', '2', '520300', '遵义市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('379', '2', '520400', '安顺市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('380', '2', '520500', '毕节市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('381', '2', '520600', '铜仁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('382', '2', '522300', '黔西南布依族苗族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('383', '2', '522600', '黔东南苗族侗族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('384', '2', '522700', '黔南布依族苗族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('385', '2', '530100', '昆明市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('386', '2', '530300', '曲靖市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('387', '2', '530400', '玉溪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('388', '2', '530500', '保山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('389', '2', '530600', '昭通市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('390', '2', '530700', '丽江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('391', '2', '530800', '普洱市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('392', '2', '530900', '临沧市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('393', '2', '532300', '楚雄彝族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('394', '2', '532500', '红河哈尼族彝族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('395', '2', '532600', '文山壮族苗族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('396', '2', '532800', '西双版纳傣族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('397', '2', '532900', '大理白族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('398', '2', '533100', '德宏傣族景颇族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('399', '2', '533300', '怒江傈僳族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('400', '2', '533400', '迪庆藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('401', '2', '540100', '拉萨市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('402', '2', '540200', '日喀则市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('403', '2', '540300', '昌都市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('404', '2', '540400', '林芝市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('405', '2', '540500', '山南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('406', '2', '542400', '那曲地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('407', '2', '542500', '阿里地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('408', '2', '610100', '西安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('409', '2', '610200', '铜川市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('410', '2', '610300', '宝鸡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('411', '2', '610400', '咸阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('412', '2', '610500', '渭南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('413', '2', '610600', '延安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('414', '2', '610700', '汉中市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('415', '2', '610800', '榆林市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('416', '2', '610900', '安康市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('417', '2', '611000', '商洛市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('418', '2', '620100', '兰州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('419', '2', '620200', '嘉峪关市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('420', '2', '620300', '金昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('421', '2', '620400', '白银市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('422', '2', '620500', '天水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('423', '2', '620600', '武威市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('424', '2', '620700', '张掖市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('425', '2', '620800', '平凉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('426', '2', '620900', '酒泉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('427', '2', '621000', '庆阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('428', '2', '621100', '定西市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('429', '2', '621200', '陇南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('430', '2', '622900', '临夏回族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('431', '2', '623000', '甘南藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('432', '2', '630100', '西宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('433', '2', '630200', '海东市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('434', '2', '632200', '海北藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('435', '2', '632300', '黄南藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('436', '2', '632500', '海南藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('437', '2', '632600', '果洛藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('438', '2', '632700', '玉树藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('439', '2', '632800', '海西蒙古族藏族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('440', '2', '640100', '银川市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('441', '2', '640200', '石嘴山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('442', '2', '640300', '吴忠市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('443', '2', '640400', '固原市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('444', '2', '640500', '中卫市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('445', '2', '650100', '乌鲁木齐市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('446', '2', '650200', '克拉玛依市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('447', '2', '650400', '吐鲁番市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('448', '2', '650500', '哈密市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('449', '2', '652300', '昌吉回族自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('450', '2', '652700', '博尔塔拉蒙古自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('451', '2', '652800', '巴音郭楞蒙古自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('452', '2', '652900', '阿克苏地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('453', '2', '653000', '克孜勒苏柯尔克孜自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('454', '2', '653100', '喀什地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('455', '2', '653200', '和田地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('456', '2', '654000', '伊犁哈萨克自治州', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('457', '2', '654200', '塔城地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('458', '2', '654300', '阿勒泰地区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('459', '2', '659000', '自治区直辖县级行政区划', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('460', '2', '710100', '台北市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('461', '2', '710200', '新北市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('462', '2', '710300', '桃园市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('463', '2', '710400', '台中市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('464', '2', '710500', '台南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('465', '2', '710600', '高雄市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('466', '2', '710700', '基隆市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('467', '2', '710800', '新竹市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('468', '2', '710900', '嘉义市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('469', '2', '711000', '新竹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('470', '2', '711100', '苗栗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('471', '2', '711200', '彰化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('472', '2', '711300', '南投县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('473', '2', '711400', '云林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('474', '2', '711500', '嘉义县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('475', '2', '711600', '屏东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('476', '2', '711700', '宜兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('477', '2', '711800', '花莲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('478', '2', '711900', '台东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('479', '2', '712000', '澎湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('480', '2', '712100', '金门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('481', '2', '712200', '连江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('482', '2', '810100', '香港岛', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('483', '2', '810200', '九龙半岛', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('484', '2', '810300', '新界', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('485', '2', '820100', '花地玛堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('486', '2', '820200', '圣安多尼堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('487', '2', '820300', '大堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('488', '2', '820400', '望德堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('489', '2', '820500', '风顺堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('490', '2', '820600', '嘉模堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('491', '2', '820700', '圣方济各堂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('492', '2', '820800', '路氹城', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('493', '3', '110101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('494', '3', '110201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('495', '3', '110801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('496', '3', '110701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('497', '3', '110901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('498', '3', '111201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('499', '3', '111101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('500', '3', '111301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('501', '3', '110601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('502', '3', '110501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('503', '3', '111401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('504', '3', '111501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('505', '3', '111701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('506', '3', '111601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('507', '3', '111901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('508', '3', '111801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('509', '3', '120201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('510', '3', '120101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('511', '3', '120401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('512', '3', '120501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('513', '3', '120601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('514', '3', '121201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('515', '3', '121501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('516', '3', '121601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('517', '3', '120301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('518', '3', '121001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('519', '3', '121701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('520', '3', '121901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('521', '3', '121801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('522', '3', '121301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('523', '3', '121401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('524', '3', '121101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('525', '3', '130102', '长安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('526', '3', '130104', '桥西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('527', '3', '130105', '新华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('528', '3', '130107', '井陉矿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('529', '3', '130108', '裕华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('530', '3', '130109', '藁城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('531', '3', '130110', '鹿泉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('532', '3', '130111', '栾城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('533', '3', '130121', '井陉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('534', '3', '130123', '正定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('535', '3', '130125', '行唐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('536', '3', '130126', '灵寿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('537', '3', '130127', '高邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('538', '3', '130128', '深泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('539', '3', '130129', '赞皇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('540', '3', '130130', '无极县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('541', '3', '130131', '平山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('542', '3', '130132', '元氏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('543', '3', '130133', '赵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('544', '3', '130183', '晋州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('545', '3', '130184', '新乐市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('546', '3', '130202', '路南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('547', '3', '130203', '路北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('548', '3', '130204', '古冶区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('549', '3', '130205', '开平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('550', '3', '130207', '丰南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('551', '3', '130208', '丰润区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('552', '3', '130209', '曹妃甸区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('553', '3', '130223', '滦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('554', '3', '130224', '滦南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('555', '3', '130225', '乐亭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('556', '3', '130227', '迁西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('557', '3', '130229', '玉田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('558', '3', '130281', '遵化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('559', '3', '130283', '迁安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('560', '3', '130302', '海港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('561', '3', '130303', '山海关区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('562', '3', '130304', '北戴河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('563', '3', '130306', '抚宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('564', '3', '130321', '青龙满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('565', '3', '130322', '昌黎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('566', '3', '130324', '卢龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('567', '3', '130402', '邯山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('568', '3', '130403', '丛台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('569', '3', '130404', '复兴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('570', '3', '130406', '峰峰矿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('571', '3', '130421', '邯郸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('572', '3', '130423', '临漳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('573', '3', '130424', '成安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('574', '3', '130425', '大名县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('575', '3', '130426', '涉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('576', '3', '130427', '磁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('577', '3', '130428', '肥乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('578', '3', '130429', '永年县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('579', '3', '130430', '邱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('580', '3', '130431', '鸡泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('581', '3', '130432', '广平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('582', '3', '130433', '馆陶县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('583', '3', '130434', '魏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('584', '3', '130435', '曲周县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('585', '3', '130481', '武安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('586', '3', '130502', '桥东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('587', '3', '130503', '桥西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('588', '3', '130521', '邢台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('589', '3', '130522', '临城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('590', '3', '130523', '内丘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('591', '3', '130524', '柏乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('592', '3', '130525', '隆尧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('593', '3', '130526', '任县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('594', '3', '130527', '南和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('595', '3', '130528', '宁晋县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('596', '3', '130529', '巨鹿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('597', '3', '130530', '新河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('598', '3', '130531', '广宗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('599', '3', '130532', '平乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('600', '3', '130533', '威县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('601', '3', '130534', '清河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('602', '3', '130535', '临西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('603', '3', '130581', '南宫市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('604', '3', '130582', '沙河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('605', '3', '130602', '竞秀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('606', '3', '130606', '莲池区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('607', '3', '130607', '满城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('608', '3', '130608', '清苑区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('609', '3', '130609', '徐水区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('610', '3', '130623', '涞水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('611', '3', '130624', '阜平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('612', '3', '130626', '定兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('613', '3', '130627', '唐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('614', '3', '130628', '高阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('615', '3', '130629', '容城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('616', '3', '130630', '涞源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('617', '3', '130631', '望都县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('618', '3', '130632', '安新县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('619', '3', '130633', '易县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('620', '3', '130634', '曲阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('621', '3', '130635', '蠡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('622', '3', '130636', '顺平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('623', '3', '130637', '博野县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('624', '3', '130638', '雄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('625', '3', '130681', '涿州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('626', '3', '130683', '安国市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('627', '3', '130684', '高碑店市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('628', '3', '130702', '桥东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('629', '3', '130703', '桥西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('630', '3', '130705', '宣化区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('631', '3', '130706', '下花园区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('632', '3', '130708', '万全区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('633', '3', '130709', '崇礼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('634', '3', '130722', '张北县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('635', '3', '130723', '康保县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('636', '3', '130724', '沽源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('637', '3', '130725', '尚义县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('638', '3', '130726', '蔚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('639', '3', '130727', '阳原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('640', '3', '130728', '怀安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('641', '3', '130730', '怀来县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('642', '3', '130731', '涿鹿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('643', '3', '130732', '赤城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('644', '3', '130802', '双桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('645', '3', '130803', '双滦区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('646', '3', '130804', '鹰手营子矿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('647', '3', '130821', '承德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('648', '3', '130822', '兴隆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('649', '3', '130823', '平泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('650', '3', '130824', '滦平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('651', '3', '130825', '隆化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('652', '3', '130826', '丰宁满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('653', '3', '130827', '宽城满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('654', '3', '130828', '围场满族蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('655', '3', '130902', '新华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('656', '3', '130903', '运河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('657', '3', '130921', '沧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('658', '3', '130922', '青县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('659', '3', '130923', '东光县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('660', '3', '130924', '海兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('661', '3', '130925', '盐山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('662', '3', '130926', '肃宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('663', '3', '130927', '南皮县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('664', '3', '130928', '吴桥县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('665', '3', '130929', '献县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('666', '3', '130930', '孟村回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('667', '3', '130981', '泊头市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('668', '3', '130982', '任丘市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('669', '3', '130983', '黄骅市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('670', '3', '130984', '河间市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('671', '3', '131002', '安次区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('672', '3', '131003', '广阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('673', '3', '131022', '固安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('674', '3', '131023', '永清县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('675', '3', '131024', '香河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('676', '3', '131025', '大城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('677', '3', '131026', '文安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('678', '3', '131028', '大厂回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('679', '3', '131081', '霸州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('680', '3', '131082', '三河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('681', '3', '131102', '桃城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('682', '3', '131103', '冀州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('683', '3', '131121', '枣强县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('684', '3', '131122', '武邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('685', '3', '131123', '武强县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('686', '3', '131124', '饶阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('687', '3', '131125', '安平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('688', '3', '131126', '故城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('689', '3', '131127', '景县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('690', '3', '131128', '阜城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('691', '3', '131182', '深州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('692', '3', '139001', '定州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('693', '3', '139002', '辛集市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('694', '3', '140105', '小店区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('695', '3', '140106', '迎泽区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('696', '3', '140107', '杏花岭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('697', '3', '140108', '尖草坪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('698', '3', '140109', '万柏林区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('699', '3', '140110', '晋源区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('700', '3', '140121', '清徐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('701', '3', '140122', '阳曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('702', '3', '140123', '娄烦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('703', '3', '140181', '古交市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('704', '3', '140202', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('705', '3', '140203', '矿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('706', '3', '140211', '南郊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('707', '3', '140212', '新荣区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('708', '3', '140221', '阳高县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('709', '3', '140222', '天镇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('710', '3', '140223', '广灵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('711', '3', '140224', '灵丘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('712', '3', '140225', '浑源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('713', '3', '140226', '左云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('714', '3', '140227', '大同县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('715', '3', '140302', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('716', '3', '140303', '矿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('717', '3', '140311', '郊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('718', '3', '140321', '平定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('719', '3', '140322', '盂县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('720', '3', '140402', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('721', '3', '140411', '郊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('722', '3', '140421', '长治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('723', '3', '140423', '襄垣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('724', '3', '140424', '屯留县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('725', '3', '140425', '平顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('726', '3', '140426', '黎城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('727', '3', '140427', '壶关县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('728', '3', '140428', '长子县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('729', '3', '140429', '武乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('730', '3', '140430', '沁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('731', '3', '140431', '沁源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('732', '3', '140481', '潞城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('733', '3', '140502', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('734', '3', '140521', '沁水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('735', '3', '140522', '阳城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('736', '3', '140524', '陵川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('737', '3', '140525', '泽州县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('738', '3', '140581', '高平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('739', '3', '140602', '朔城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('740', '3', '140603', '平鲁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('741', '3', '140621', '山阴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('742', '3', '140622', '应县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('743', '3', '140623', '右玉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('744', '3', '140624', '怀仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('745', '3', '140702', '榆次区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('746', '3', '140721', '榆社县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('747', '3', '140722', '左权县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('748', '3', '140723', '和顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('749', '3', '140724', '昔阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('750', '3', '140725', '寿阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('751', '3', '140726', '太谷县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('752', '3', '140727', '祁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('753', '3', '140728', '平遥县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('754', '3', '140729', '灵石县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('755', '3', '140781', '介休市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('756', '3', '140802', '盐湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('757', '3', '140821', '临猗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('758', '3', '140822', '万荣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('759', '3', '140823', '闻喜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('760', '3', '140824', '稷山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('761', '3', '140825', '新绛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('762', '3', '140826', '绛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('763', '3', '140827', '垣曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('764', '3', '140828', '夏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('765', '3', '140829', '平陆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('766', '3', '140830', '芮城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('767', '3', '140881', '永济市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('768', '3', '140882', '河津市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('769', '3', '140902', '忻府区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('770', '3', '140921', '定襄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('771', '3', '140922', '五台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('772', '3', '140923', '代县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('773', '3', '140924', '繁峙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('774', '3', '140925', '宁武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('775', '3', '140926', '静乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('776', '3', '140927', '神池县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('777', '3', '140928', '五寨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('778', '3', '140929', '岢岚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('779', '3', '140930', '河曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('780', '3', '140931', '保德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('781', '3', '140932', '偏关县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('782', '3', '140981', '原平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('783', '3', '141002', '尧都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('784', '3', '141021', '曲沃县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('785', '3', '141022', '翼城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('786', '3', '141023', '襄汾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('787', '3', '141024', '洪洞县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('788', '3', '141025', '古县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('789', '3', '141026', '安泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('790', '3', '141027', '浮山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('791', '3', '141028', '吉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('792', '3', '141029', '乡宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('793', '3', '141030', '大宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('794', '3', '141031', '隰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('795', '3', '141032', '永和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('796', '3', '141033', '蒲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('797', '3', '141034', '汾西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('798', '3', '141081', '侯马市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('799', '3', '141082', '霍州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('800', '3', '141102', '离石区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('801', '3', '141121', '文水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('802', '3', '141122', '交城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('803', '3', '141123', '兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('804', '3', '141124', '临县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('805', '3', '141125', '柳林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('806', '3', '141126', '石楼县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('807', '3', '141127', '岚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('808', '3', '141128', '方山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('809', '3', '141129', '中阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('810', '3', '141130', '交口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('811', '3', '141181', '孝义市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('812', '3', '141182', '汾阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('813', '3', '150102', '新城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('814', '3', '150103', '回民区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('815', '3', '150104', '玉泉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('816', '3', '150105', '赛罕区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('817', '3', '150121', '土默特左旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('818', '3', '150122', '托克托县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('819', '3', '150123', '和林格尔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('820', '3', '150124', '清水河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('821', '3', '150125', '武川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('822', '3', '150202', '东河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('823', '3', '150203', '昆都仑区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('824', '3', '150204', '青山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('825', '3', '150205', '石拐区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('826', '3', '150206', '白云鄂博矿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('827', '3', '150207', '九原区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('828', '3', '150221', '土默特右旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('829', '3', '150222', '固阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('830', '3', '150223', '达尔罕茂明安联合旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('831', '3', '150302', '海勃湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('832', '3', '150303', '海南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('833', '3', '150304', '乌达区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('834', '3', '150402', '红山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('835', '3', '150403', '元宝山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('836', '3', '150404', '松山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('837', '3', '150421', '阿鲁科尔沁旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('838', '3', '150422', '巴林左旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('839', '3', '150423', '巴林右旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('840', '3', '150424', '林西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('841', '3', '150425', '克什克腾旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('842', '3', '150426', '翁牛特旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('843', '3', '150428', '喀喇沁旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('844', '3', '150429', '宁城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('845', '3', '150430', '敖汉旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('846', '3', '150502', '科尔沁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('847', '3', '150521', '科尔沁左翼中旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('848', '3', '150522', '科尔沁左翼后旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('849', '3', '150523', '开鲁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('850', '3', '150524', '库伦旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('851', '3', '150525', '奈曼旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('852', '3', '150526', '扎鲁特旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('853', '3', '150581', '霍林郭勒市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('854', '3', '150602', '东胜区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('855', '3', '150603', '康巴什区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('856', '3', '150621', '达拉特旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('857', '3', '150622', '准格尔旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('858', '3', '150623', '鄂托克前旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('859', '3', '150624', '鄂托克旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('860', '3', '150625', '杭锦旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('861', '3', '150626', '乌审旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('862', '3', '150627', '伊金霍洛旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('863', '3', '150702', '海拉尔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('864', '3', '150703', '扎赉诺尔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('865', '3', '150721', '阿荣旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('866', '3', '150722', '莫力达瓦达斡尔族自治旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('867', '3', '150723', '鄂伦春自治旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('868', '3', '150724', '鄂温克族自治旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('869', '3', '150725', '陈巴尔虎旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('870', '3', '150726', '新巴尔虎左旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('871', '3', '150727', '新巴尔虎右旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('872', '3', '150781', '满洲里市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('873', '3', '150782', '牙克石市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('874', '3', '150783', '扎兰屯市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('875', '3', '150784', '额尔古纳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('876', '3', '150785', '根河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('877', '3', '150802', '临河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('878', '3', '150821', '五原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('879', '3', '150822', '磴口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('880', '3', '150823', '乌拉特前旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('881', '3', '150824', '乌拉特中旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('882', '3', '150825', '乌拉特后旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('883', '3', '150826', '杭锦后旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('884', '3', '150902', '集宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('885', '3', '150921', '卓资县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('886', '3', '150922', '化德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('887', '3', '150923', '商都县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('888', '3', '150924', '兴和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('889', '3', '150925', '凉城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('890', '3', '150926', '察哈尔右翼前旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('891', '3', '150927', '察哈尔右翼中旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('892', '3', '150928', '察哈尔右翼后旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('893', '3', '150929', '四子王旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('894', '3', '150981', '丰镇市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('895', '3', '152201', '乌兰浩特市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('896', '3', '152202', '阿尔山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('897', '3', '152221', '科尔沁右翼前旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('898', '3', '152222', '科尔沁右翼中旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('899', '3', '152223', '扎赉特旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('900', '3', '152224', '突泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('901', '3', '152501', '二连浩特市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('902', '3', '152502', '锡林浩特市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('903', '3', '152522', '阿巴嘎旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('904', '3', '152523', '苏尼特左旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('905', '3', '152524', '苏尼特右旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('906', '3', '152525', '东乌珠穆沁旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('907', '3', '152526', '西乌珠穆沁旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('908', '3', '152527', '太仆寺旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('909', '3', '152528', '镶黄旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('910', '3', '152529', '正镶白旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('911', '3', '152530', '正蓝旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('912', '3', '152531', '多伦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('913', '3', '152921', '阿拉善左旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('914', '3', '152922', '阿拉善右旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('915', '3', '152923', '额济纳旗', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('916', '3', '210102', '和平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('917', '3', '210103', '沈河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('918', '3', '210104', '大东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('919', '3', '210105', '皇姑区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('920', '3', '210106', '铁西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('921', '3', '210111', '苏家屯区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('922', '3', '210112', '浑南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('923', '3', '210113', '沈北新区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('924', '3', '210114', '于洪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('925', '3', '210115', '辽中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('926', '3', '210123', '康平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('927', '3', '210124', '法库县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('928', '3', '210181', '新民市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('929', '3', '210202', '中山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('930', '3', '210203', '西岗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('931', '3', '210204', '沙河口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('932', '3', '210211', '甘井子区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('933', '3', '210212', '旅顺口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('934', '3', '210213', '金州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('935', '3', '210214', '普兰店区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('936', '3', '210224', '长海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('937', '3', '210281', '瓦房店市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('938', '3', '210283', '庄河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('939', '3', '210302', '铁东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('940', '3', '210303', '铁西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('941', '3', '210304', '立山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('942', '3', '210311', '千山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('943', '3', '210321', '台安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('944', '3', '210323', '岫岩满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('945', '3', '210381', '海城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('946', '3', '210402', '新抚区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('947', '3', '210403', '东洲区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('948', '3', '210404', '望花区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('949', '3', '210411', '顺城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('950', '3', '210421', '抚顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('951', '3', '210422', '新宾满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('952', '3', '210423', '清原满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('953', '3', '210502', '平山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('954', '3', '210503', '溪湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('955', '3', '210504', '明山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('956', '3', '210505', '南芬区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('957', '3', '210521', '本溪满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('958', '3', '210522', '桓仁满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('959', '3', '210602', '元宝区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('960', '3', '210603', '振兴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('961', '3', '210604', '振安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('962', '3', '210624', '宽甸满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('963', '3', '210681', '东港市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('964', '3', '210682', '凤城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('965', '3', '210702', '古塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('966', '3', '210703', '凌河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('967', '3', '210711', '太和区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('968', '3', '210726', '黑山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('969', '3', '210727', '义县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('970', '3', '210781', '凌海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('971', '3', '210782', '北镇市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('972', '3', '210802', '站前区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('973', '3', '210803', '西市区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('974', '3', '210804', '鲅鱼圈区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('975', '3', '210811', '老边区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('976', '3', '210881', '盖州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('977', '3', '210882', '大石桥市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('978', '3', '210902', '海州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('979', '3', '210903', '新邱区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('980', '3', '210904', '太平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('981', '3', '210905', '清河门区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('982', '3', '210911', '细河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('983', '3', '210921', '阜新蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('984', '3', '210922', '彰武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('985', '3', '211002', '白塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('986', '3', '211003', '文圣区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('987', '3', '211004', '宏伟区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('988', '3', '211005', '弓长岭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('989', '3', '211011', '太子河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('990', '3', '211021', '辽阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('991', '3', '211081', '灯塔市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('992', '3', '211102', '双台子区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('993', '3', '211103', '兴隆台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('994', '3', '211104', '大洼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('995', '3', '211122', '盘山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('996', '3', '211202', '银州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('997', '3', '211204', '清河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('998', '3', '211221', '铁岭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('999', '3', '211223', '西丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1000', '3', '211224', '昌图县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1001', '3', '211281', '调兵山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1002', '3', '211282', '开原市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1003', '3', '211302', '双塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1004', '3', '211303', '龙城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1005', '3', '211321', '朝阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1006', '3', '211322', '建平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1007', '3', '211324', '喀喇沁左翼蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1008', '3', '211381', '北票市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1009', '3', '211382', '凌源市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1010', '3', '211402', '连山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1011', '3', '211403', '龙港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1012', '3', '211404', '南票区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1013', '3', '211421', '绥中县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1014', '3', '211422', '建昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1015', '3', '211481', '兴城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1016', '3', '220102', '南关区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1017', '3', '220103', '宽城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1018', '3', '220104', '朝阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1019', '3', '220105', '二道区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1020', '3', '220106', '绿园区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1021', '3', '220112', '双阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1022', '3', '220113', '九台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1023', '3', '220122', '农安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1024', '3', '220182', '榆树市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1025', '3', '220183', '德惠市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1026', '3', '220202', '昌邑区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1027', '3', '220203', '龙潭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1028', '3', '220204', '船营区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1029', '3', '220211', '丰满区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1030', '3', '220221', '永吉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1031', '3', '220281', '蛟河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1032', '3', '220282', '桦甸市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1033', '3', '220283', '舒兰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1034', '3', '220284', '磐石市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1035', '3', '220302', '铁西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1036', '3', '220303', '铁东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1037', '3', '220322', '梨树县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1038', '3', '220323', '伊通满族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1039', '3', '220381', '公主岭市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1040', '3', '220382', '双辽市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1041', '3', '220402', '龙山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1042', '3', '220403', '西安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1043', '3', '220421', '东丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1044', '3', '220422', '东辽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1045', '3', '220502', '东昌区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1046', '3', '220503', '二道江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1047', '3', '220521', '通化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1048', '3', '220523', '辉南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1049', '3', '220524', '柳河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1050', '3', '220581', '梅河口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1051', '3', '220582', '集安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1052', '3', '220602', '浑江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1053', '3', '220605', '江源区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1054', '3', '220621', '抚松县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1055', '3', '220622', '靖宇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1056', '3', '220623', '长白朝鲜族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1057', '3', '220681', '临江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1058', '3', '220702', '宁江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1059', '3', '220721', '前郭尔罗斯蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1060', '3', '220722', '长岭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1061', '3', '220723', '乾安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1062', '3', '220781', '扶余市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1063', '3', '220802', '洮北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1064', '3', '220821', '镇赉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1065', '3', '220822', '通榆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1066', '3', '220881', '洮南市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1067', '3', '220882', '大安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1068', '3', '222401', '延吉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1069', '3', '222402', '图们市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1070', '3', '222403', '敦化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1071', '3', '222404', '珲春市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1072', '3', '222405', '龙井市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1073', '3', '222406', '和龙市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1074', '3', '222424', '汪清县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1075', '3', '222426', '安图县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1076', '3', '230102', '道里区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1077', '3', '230103', '南岗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1078', '3', '230104', '道外区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1079', '3', '230108', '平房区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1080', '3', '230109', '松北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1081', '3', '230110', '香坊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1082', '3', '230111', '呼兰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1083', '3', '230112', '阿城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1084', '3', '230113', '双城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1085', '3', '230123', '依兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1086', '3', '230124', '方正县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1087', '3', '230125', '宾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1088', '3', '230126', '巴彦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1089', '3', '230127', '木兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1090', '3', '230128', '通河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1091', '3', '230129', '延寿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1092', '3', '230183', '尚志市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1093', '3', '230184', '五常市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1094', '3', '230202', '龙沙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1095', '3', '230203', '建华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1096', '3', '230204', '铁锋区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1097', '3', '230205', '昂昂溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1098', '3', '230206', '富拉尔基区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1099', '3', '230207', '碾子山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1100', '3', '230208', '梅里斯达斡尔族区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1101', '3', '230221', '龙江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1102', '3', '230223', '依安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1103', '3', '230224', '泰来县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1104', '3', '230225', '甘南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1105', '3', '230227', '富裕县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1106', '3', '230229', '克山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1107', '3', '230230', '克东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1108', '3', '230231', '拜泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1109', '3', '230281', '讷河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1110', '3', '230302', '鸡冠区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1111', '3', '230303', '恒山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1112', '3', '230304', '滴道区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1113', '3', '230305', '梨树区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1114', '3', '230306', '城子河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1115', '3', '230307', '麻山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1116', '3', '230321', '鸡东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1117', '3', '230381', '虎林市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1118', '3', '230382', '密山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1119', '3', '230402', '向阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1120', '3', '230403', '工农区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1121', '3', '230404', '南山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1122', '3', '230405', '兴安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1123', '3', '230406', '东山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1124', '3', '230407', '兴山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1125', '3', '230421', '萝北县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1126', '3', '230422', '绥滨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1127', '3', '230502', '尖山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1128', '3', '230503', '岭东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1129', '3', '230505', '四方台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1130', '3', '230506', '宝山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1131', '3', '230521', '集贤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1132', '3', '230522', '友谊县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1133', '3', '230523', '宝清县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1134', '3', '230524', '饶河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1135', '3', '230602', '萨尔图区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1136', '3', '230603', '龙凤区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1137', '3', '230604', '让胡路区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1138', '3', '230605', '红岗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1139', '3', '230606', '大同区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1140', '3', '230621', '肇州县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1141', '3', '230622', '肇源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1142', '3', '230623', '林甸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1143', '3', '230624', '杜尔伯特蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1144', '3', '230702', '伊春区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1145', '3', '230703', '南岔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1146', '3', '230704', '友好区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1147', '3', '230705', '西林区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1148', '3', '230706', '翠峦区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1149', '3', '230707', '新青区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1150', '3', '230708', '美溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1151', '3', '230709', '金山屯区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1152', '3', '230710', '五营区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1153', '3', '230711', '乌马河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1154', '3', '230712', '汤旺河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1155', '3', '230713', '带岭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1156', '3', '230714', '乌伊岭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1157', '3', '230715', '红星区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1158', '3', '230716', '上甘岭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1159', '3', '230722', '嘉荫县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1160', '3', '230781', '铁力市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1161', '3', '230803', '向阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1162', '3', '230804', '前进区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1163', '3', '230805', '东风区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1164', '3', '230811', '郊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1165', '3', '230822', '桦南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1166', '3', '230826', '桦川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1167', '3', '230828', '汤原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1168', '3', '230881', '同江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1169', '3', '230882', '富锦市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1170', '3', '230883', '抚远市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1171', '3', '230902', '新兴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1172', '3', '230903', '桃山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1173', '3', '230904', '茄子河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1174', '3', '230921', '勃利县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1175', '3', '231002', '东安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1176', '3', '231003', '阳明区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1177', '3', '231004', '爱民区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1178', '3', '231005', '西安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1179', '3', '231025', '林口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1180', '3', '231081', '绥芬河市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1181', '3', '231083', '海林市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1182', '3', '231084', '宁安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1183', '3', '231085', '穆棱市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1184', '3', '231086', '东宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1185', '3', '231102', '爱辉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1186', '3', '231121', '嫩江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1187', '3', '231123', '逊克县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1188', '3', '231124', '孙吴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1189', '3', '231181', '北安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1190', '3', '231182', '五大连池市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1191', '3', '231202', '北林区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1192', '3', '231221', '望奎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1193', '3', '231222', '兰西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1194', '3', '231223', '青冈县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1195', '3', '231224', '庆安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1196', '3', '231225', '明水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1197', '3', '231226', '绥棱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1198', '3', '231281', '安达市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1199', '3', '231282', '肇东市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1200', '3', '231283', '海伦市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1201', '3', '232721', '呼玛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1202', '3', '232722', '塔河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1203', '3', '232723', '漠河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1204', '3', '310101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1205', '3', '310401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1206', '3', '310501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1207', '3', '310701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1208', '3', '310601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1209', '3', '310901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1210', '3', '311001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1211', '3', '311201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1212', '3', '311301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1213', '3', '311401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1214', '3', '311501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1215', '3', '311601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1216', '3', '311701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1217', '3', '311801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1218', '3', '320102', '玄武区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1219', '3', '320104', '秦淮区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1220', '3', '320105', '建邺区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1221', '3', '320106', '鼓楼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1222', '3', '320111', '浦口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1223', '3', '320113', '栖霞区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1224', '3', '320114', '雨花台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1225', '3', '320115', '江宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1226', '3', '320116', '六合区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1227', '3', '320117', '溧水区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1228', '3', '320118', '高淳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1229', '3', '320205', '锡山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1230', '3', '320206', '惠山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1231', '3', '320211', '滨湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1232', '3', '320213', '梁溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1233', '3', '320214', '新吴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1234', '3', '320281', '江阴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1235', '3', '320282', '宜兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1236', '3', '320302', '鼓楼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1237', '3', '320303', '云龙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1238', '3', '320305', '贾汪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1239', '3', '320311', '泉山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1240', '3', '320312', '铜山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1241', '3', '320321', '丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1242', '3', '320322', '沛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1243', '3', '320324', '睢宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1244', '3', '320381', '新沂市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1245', '3', '320382', '邳州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1246', '3', '320402', '天宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1247', '3', '320404', '钟楼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1248', '3', '320411', '新北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1249', '3', '320412', '武进区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1250', '3', '320413', '金坛区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1251', '3', '320481', '溧阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1252', '3', '320505', '虎丘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1253', '3', '320506', '吴中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1254', '3', '320507', '相城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1255', '3', '320508', '姑苏区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1256', '3', '320509', '吴江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1257', '3', '320581', '常熟市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1258', '3', '320582', '张家港市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1259', '3', '320583', '昆山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1260', '3', '320585', '太仓市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1261', '3', '320602', '崇川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1262', '3', '320611', '港闸区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1263', '3', '320612', '通州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1264', '3', '320621', '海安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1265', '3', '320623', '如东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1266', '3', '320681', '启东市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1267', '3', '320682', '如皋市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1268', '3', '320684', '海门市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1269', '3', '320703', '连云区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1270', '3', '320706', '海州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1271', '3', '320707', '赣榆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1272', '3', '320722', '东海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1273', '3', '320723', '灌云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1274', '3', '320724', '灌南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1275', '3', '320803', '淮安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1276', '3', '320804', '淮阴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1277', '3', '320812', '清江浦区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1278', '3', '320813', '洪泽区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1279', '3', '320826', '涟水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1280', '3', '320830', '盱眙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1281', '3', '320831', '金湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1282', '3', '320902', '亭湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1283', '3', '320903', '盐都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1284', '3', '320904', '大丰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1285', '3', '320921', '响水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1286', '3', '320922', '滨海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1287', '3', '320923', '阜宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1288', '3', '320924', '射阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1289', '3', '320925', '建湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1290', '3', '320981', '东台市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1291', '3', '321002', '广陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1292', '3', '321003', '邗江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1293', '3', '321012', '江都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1294', '3', '321023', '宝应县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1295', '3', '321081', '仪征市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1296', '3', '321084', '高邮市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1297', '3', '321102', '京口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1298', '3', '321111', '润州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1299', '3', '321112', '丹徒区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1300', '3', '321181', '丹阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1301', '3', '321182', '扬中市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1302', '3', '321183', '句容市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1303', '3', '321202', '海陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1304', '3', '321203', '高港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1305', '3', '321204', '姜堰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1306', '3', '321281', '兴化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1307', '3', '321282', '靖江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1308', '3', '321283', '泰兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1309', '3', '321302', '宿城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1310', '3', '321311', '宿豫区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1311', '3', '321322', '沭阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1312', '3', '321323', '泗阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1313', '3', '321324', '泗洪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1314', '3', '330102', '上城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1315', '3', '330103', '下城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1316', '3', '330104', '江干区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1317', '3', '330105', '拱墅区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1318', '3', '330106', '西湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1319', '3', '330108', '滨江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1320', '3', '330109', '萧山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1321', '3', '330110', '余杭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1322', '3', '330111', '富阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1323', '3', '330122', '桐庐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1324', '3', '330127', '淳安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1325', '3', '330182', '建德市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1326', '3', '330185', '临安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1327', '3', '330203', '海曙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1328', '3', '330204', '江东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1329', '3', '330205', '江北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1330', '3', '330206', '北仑区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1331', '3', '330211', '镇海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1332', '3', '330212', '鄞州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1333', '3', '330225', '象山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1334', '3', '330226', '宁海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1335', '3', '330281', '余姚市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1336', '3', '330282', '慈溪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1337', '3', '330283', '奉化市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1338', '3', '330302', '鹿城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1339', '3', '330303', '龙湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1340', '3', '330304', '瓯海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1341', '3', '330305', '洞头区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1342', '3', '330324', '永嘉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1343', '3', '330326', '平阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1344', '3', '330327', '苍南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1345', '3', '330328', '文成县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1346', '3', '330329', '泰顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1347', '3', '330381', '瑞安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1348', '3', '330382', '乐清市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1349', '3', '330402', '南湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1350', '3', '330411', '秀洲区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1351', '3', '330421', '嘉善县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1352', '3', '330424', '海盐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1353', '3', '330481', '海宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1354', '3', '330482', '平湖市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1355', '3', '330483', '桐乡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1356', '3', '330502', '吴兴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1357', '3', '330503', '南浔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1358', '3', '330521', '德清县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1359', '3', '330522', '长兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1360', '3', '330523', '安吉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1361', '3', '330602', '越城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1362', '3', '330603', '柯桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1363', '3', '330604', '上虞区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1364', '3', '330624', '新昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1365', '3', '330681', '诸暨市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1366', '3', '330683', '嵊州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1367', '3', '330702', '婺城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1368', '3', '330703', '金东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1369', '3', '330723', '武义县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1370', '3', '330726', '浦江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1371', '3', '330727', '磐安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1372', '3', '330781', '兰溪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1373', '3', '330782', '义乌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1374', '3', '330783', '东阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1375', '3', '330784', '永康市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1376', '3', '330802', '柯城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1377', '3', '330803', '衢江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1378', '3', '330822', '常山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1379', '3', '330824', '开化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1380', '3', '330825', '龙游县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1381', '3', '330881', '江山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1382', '3', '330902', '定海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1383', '3', '330903', '普陀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1384', '3', '330921', '岱山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1385', '3', '330922', '嵊泗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1386', '3', '331002', '椒江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1387', '3', '331003', '黄岩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1388', '3', '331004', '路桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1389', '3', '331021', '玉环县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1390', '3', '331022', '三门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1391', '3', '331023', '天台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1392', '3', '331024', '仙居县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1393', '3', '331081', '温岭市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1394', '3', '331082', '临海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1395', '3', '331102', '莲都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1396', '3', '331121', '青田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1397', '3', '331122', '缙云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1398', '3', '331123', '遂昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1399', '3', '331124', '松阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1400', '3', '331125', '云和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1401', '3', '331126', '庆元县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1402', '3', '331127', '景宁畲族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1403', '3', '331181', '龙泉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1404', '3', '340102', '瑶海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1405', '3', '340103', '庐阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1406', '3', '340104', '蜀山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1407', '3', '340111', '包河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1408', '3', '340121', '长丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1409', '3', '340122', '肥东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1410', '3', '340123', '肥西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1411', '3', '340124', '庐江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1412', '3', '340181', '巢湖市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1413', '3', '340202', '镜湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1414', '3', '340203', '弋江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1415', '3', '340207', '鸠江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1416', '3', '340208', '三山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1417', '3', '340221', '芜湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1418', '3', '340222', '繁昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1419', '3', '340223', '南陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1420', '3', '340225', '无为县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1421', '3', '340302', '龙子湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1422', '3', '340303', '蚌山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1423', '3', '340304', '禹会区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1424', '3', '340311', '淮上区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1425', '3', '340321', '怀远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1426', '3', '340322', '五河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1427', '3', '340323', '固镇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1428', '3', '340402', '大通区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1429', '3', '340403', '田家庵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1430', '3', '340404', '谢家集区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1431', '3', '340405', '八公山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1432', '3', '340406', '潘集区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1433', '3', '340421', '凤台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1434', '3', '340422', '寿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1435', '3', '340503', '花山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1436', '3', '340504', '雨山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1437', '3', '340506', '博望区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1438', '3', '340521', '当涂县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1439', '3', '340522', '含山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1440', '3', '340523', '和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1441', '3', '340602', '杜集区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1442', '3', '340603', '相山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1443', '3', '340604', '烈山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1444', '3', '340621', '濉溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1445', '3', '340705', '铜官区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1446', '3', '340706', '义安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1447', '3', '340711', '郊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1448', '3', '340722', '枞阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1449', '3', '340802', '迎江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1450', '3', '340803', '大观区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1451', '3', '340811', '宜秀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1452', '3', '340822', '怀宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1453', '3', '340824', '潜山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1454', '3', '340825', '太湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1455', '3', '340826', '宿松县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1456', '3', '340827', '望江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1457', '3', '340828', '岳西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1458', '3', '340881', '桐城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1459', '3', '341002', '屯溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1460', '3', '341003', '黄山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1461', '3', '341004', '徽州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1462', '3', '341021', '歙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1463', '3', '341022', '休宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1464', '3', '341023', '黟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1465', '3', '341024', '祁门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1466', '3', '341102', '琅琊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1467', '3', '341103', '南谯区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1468', '3', '341122', '来安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1469', '3', '341124', '全椒县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1470', '3', '341125', '定远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1471', '3', '341126', '凤阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1472', '3', '341181', '天长市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1473', '3', '341182', '明光市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1474', '3', '341202', '颍州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1475', '3', '341203', '颍东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1476', '3', '341204', '颍泉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1477', '3', '341221', '临泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1478', '3', '341222', '太和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1479', '3', '341225', '阜南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1480', '3', '341226', '颍上县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1481', '3', '341282', '界首市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1482', '3', '341302', '埇桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1483', '3', '341321', '砀山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1484', '3', '341322', '萧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1485', '3', '341323', '灵璧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1486', '3', '341324', '泗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1487', '3', '341502', '金安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1488', '3', '341503', '裕安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1489', '3', '341504', '叶集区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1490', '3', '341522', '霍邱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1491', '3', '341523', '舒城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1492', '3', '341524', '金寨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1493', '3', '341525', '霍山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1494', '3', '341602', '谯城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1495', '3', '341621', '涡阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1496', '3', '341622', '蒙城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1497', '3', '341623', '利辛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1498', '3', '341702', '贵池区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1499', '3', '341721', '东至县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1500', '3', '341722', '石台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1501', '3', '341723', '青阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1502', '3', '341802', '宣州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1503', '3', '341821', '郎溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1504', '3', '341822', '广德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1505', '3', '341823', '泾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1506', '3', '341824', '绩溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1507', '3', '341825', '旌德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1508', '3', '341881', '宁国市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1509', '3', '350102', '鼓楼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1510', '3', '350103', '台江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1511', '3', '350104', '仓山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1512', '3', '350105', '马尾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1513', '3', '350111', '晋安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1514', '3', '350121', '闽侯县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1515', '3', '350122', '连江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1516', '3', '350123', '罗源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1517', '3', '350124', '闽清县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1518', '3', '350125', '永泰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1519', '3', '350128', '平潭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1520', '3', '350181', '福清市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1521', '3', '350182', '长乐市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1522', '3', '350203', '思明区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1523', '3', '350205', '海沧区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1524', '3', '350206', '湖里区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1525', '3', '350211', '集美区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1526', '3', '350212', '同安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1527', '3', '350213', '翔安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1528', '3', '350302', '城厢区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1529', '3', '350303', '涵江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1530', '3', '350304', '荔城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1531', '3', '350305', '秀屿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1532', '3', '350322', '仙游县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1533', '3', '350402', '梅列区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1534', '3', '350403', '三元区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1535', '3', '350421', '明溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1536', '3', '350423', '清流县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1537', '3', '350424', '宁化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1538', '3', '350425', '大田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1539', '3', '350426', '尤溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1540', '3', '350427', '沙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1541', '3', '350428', '将乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1542', '3', '350429', '泰宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1543', '3', '350430', '建宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1544', '3', '350481', '永安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1545', '3', '350502', '鲤城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1546', '3', '350503', '丰泽区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1547', '3', '350504', '洛江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1548', '3', '350505', '泉港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1549', '3', '350521', '惠安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1550', '3', '350524', '安溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1551', '3', '350525', '永春县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1552', '3', '350526', '德化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1553', '3', '350527', '金门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1554', '3', '350581', '石狮市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1555', '3', '350582', '晋江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1556', '3', '350583', '南安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1557', '3', '350602', '芗城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1558', '3', '350603', '龙文区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1559', '3', '350622', '云霄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1560', '3', '350623', '漳浦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1561', '3', '350624', '诏安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1562', '3', '350625', '长泰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1563', '3', '350626', '东山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1564', '3', '350627', '南靖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1565', '3', '350628', '平和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1566', '3', '350629', '华安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1567', '3', '350681', '龙海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1568', '3', '350702', '延平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1569', '3', '350703', '建阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1570', '3', '350721', '顺昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1571', '3', '350722', '浦城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1572', '3', '350723', '光泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1573', '3', '350724', '松溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1574', '3', '350725', '政和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1575', '3', '350781', '邵武市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1576', '3', '350782', '武夷山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1577', '3', '350783', '建瓯市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1578', '3', '350802', '新罗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1579', '3', '350803', '永定区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1580', '3', '350821', '长汀县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1581', '3', '350823', '上杭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1582', '3', '350824', '武平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1583', '3', '350825', '连城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1584', '3', '350881', '漳平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1585', '3', '350902', '蕉城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1586', '3', '350921', '霞浦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1587', '3', '350922', '古田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1588', '3', '350923', '屏南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1589', '3', '350924', '寿宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1590', '3', '350925', '周宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1591', '3', '350926', '柘荣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1592', '3', '350981', '福安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1593', '3', '350982', '福鼎市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1594', '3', '360102', '东湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1595', '3', '360103', '西湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1596', '3', '360104', '青云谱区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1597', '3', '360105', '湾里区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1598', '3', '360111', '青山湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1599', '3', '360112', '新建区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1600', '3', '360121', '南昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1601', '3', '360123', '安义县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1602', '3', '360124', '进贤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1603', '3', '360202', '昌江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1604', '3', '360203', '珠山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1605', '3', '360222', '浮梁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1606', '3', '360281', '乐平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1607', '3', '360302', '安源区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1608', '3', '360313', '湘东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1609', '3', '360321', '莲花县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1610', '3', '360322', '上栗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1611', '3', '360323', '芦溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1612', '3', '360402', '濂溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1613', '3', '360403', '浔阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1614', '3', '360421', '九江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1615', '3', '360423', '武宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1616', '3', '360424', '修水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1617', '3', '360425', '永修县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1618', '3', '360426', '德安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1619', '3', '360428', '都昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1620', '3', '360429', '湖口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1621', '3', '360430', '彭泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1622', '3', '360481', '瑞昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1623', '3', '360482', '共青城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1624', '3', '360483', '庐山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1625', '3', '360502', '渝水区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1626', '3', '360521', '分宜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1627', '3', '360602', '月湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1628', '3', '360622', '余江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1629', '3', '360681', '贵溪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1630', '3', '360702', '章贡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1631', '3', '360703', '南康区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1632', '3', '360721', '赣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1633', '3', '360722', '信丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1634', '3', '360723', '大余县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1635', '3', '360724', '上犹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1636', '3', '360725', '崇义县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1637', '3', '360726', '安远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1638', '3', '360727', '龙南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1639', '3', '360728', '定南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1640', '3', '360729', '全南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1641', '3', '360730', '宁都县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1642', '3', '360731', '于都县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1643', '3', '360732', '兴国县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1644', '3', '360733', '会昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1645', '3', '360734', '寻乌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1646', '3', '360735', '石城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1647', '3', '360781', '瑞金市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1648', '3', '360802', '吉州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1649', '3', '360803', '青原区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1650', '3', '360821', '吉安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1651', '3', '360822', '吉水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1652', '3', '360823', '峡江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1653', '3', '360824', '新干县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1654', '3', '360825', '永丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1655', '3', '360826', '泰和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1656', '3', '360827', '遂川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1657', '3', '360828', '万安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1658', '3', '360829', '安福县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1659', '3', '360830', '永新县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1660', '3', '360881', '井冈山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1661', '3', '360902', '袁州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1662', '3', '360921', '奉新县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1663', '3', '360922', '万载县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1664', '3', '360923', '上高县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1665', '3', '360924', '宜丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1666', '3', '360925', '靖安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1667', '3', '360926', '铜鼓县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1668', '3', '360981', '丰城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1669', '3', '360982', '樟树市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1670', '3', '360983', '高安市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1671', '3', '361002', '临川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1672', '3', '361021', '南城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1673', '3', '361022', '黎川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1674', '3', '361023', '南丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1675', '3', '361024', '崇仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1676', '3', '361025', '乐安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1677', '3', '361026', '宜黄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1678', '3', '361027', '金溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1679', '3', '361028', '资溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1680', '3', '361029', '东乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1681', '3', '361030', '广昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1682', '3', '361102', '信州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1683', '3', '361103', '广丰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1684', '3', '361121', '上饶县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1685', '3', '361123', '玉山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1686', '3', '361124', '铅山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1687', '3', '361125', '横峰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1688', '3', '361126', '弋阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1689', '3', '361127', '余干县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1690', '3', '361128', '鄱阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1691', '3', '361129', '万年县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1692', '3', '361130', '婺源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1693', '3', '361181', '德兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1694', '3', '370102', '历下区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1695', '3', '370103', '市中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1696', '3', '370104', '槐荫区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1697', '3', '370105', '天桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1698', '3', '370112', '历城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1699', '3', '370113', '长清区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1700', '3', '370124', '平阴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1701', '3', '370125', '济阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1702', '3', '370126', '商河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1703', '3', '370181', '章丘市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1704', '3', '370202', '市南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1705', '3', '370203', '市北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1706', '3', '370211', '黄岛区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1707', '3', '370212', '崂山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1708', '3', '370213', '李沧区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1709', '3', '370214', '城阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1710', '3', '370281', '胶州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1711', '3', '370282', '即墨市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1712', '3', '370283', '平度市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1713', '3', '370285', '莱西市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1714', '3', '370302', '淄川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1715', '3', '370303', '张店区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1716', '3', '370304', '博山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1717', '3', '370305', '临淄区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1718', '3', '370306', '周村区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1719', '3', '370321', '桓台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1720', '3', '370322', '高青县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1721', '3', '370323', '沂源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1722', '3', '370402', '市中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1723', '3', '370403', '薛城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1724', '3', '370404', '峄城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1725', '3', '370405', '台儿庄区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1726', '3', '370406', '山亭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1727', '3', '370481', '滕州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1728', '3', '370502', '东营区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1729', '3', '370503', '河口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1730', '3', '370505', '垦利区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1731', '3', '370522', '利津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1732', '3', '370523', '广饶县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1733', '3', '370602', '芝罘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1734', '3', '370611', '福山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1735', '3', '370612', '牟平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1736', '3', '370613', '莱山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1737', '3', '370634', '长岛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1738', '3', '370681', '龙口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1739', '3', '370682', '莱阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1740', '3', '370683', '莱州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1741', '3', '370684', '蓬莱市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1742', '3', '370685', '招远市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1743', '3', '370686', '栖霞市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1744', '3', '370687', '海阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1745', '3', '370702', '潍城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1746', '3', '370703', '寒亭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1747', '3', '370704', '坊子区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1748', '3', '370705', '奎文区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1749', '3', '370724', '临朐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1750', '3', '370725', '昌乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1751', '3', '370781', '青州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1752', '3', '370782', '诸城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1753', '3', '370783', '寿光市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1754', '3', '370784', '安丘市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1755', '3', '370785', '高密市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1756', '3', '370786', '昌邑市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1757', '3', '370811', '任城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1758', '3', '370812', '兖州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1759', '3', '370826', '微山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1760', '3', '370827', '鱼台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1761', '3', '370828', '金乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1762', '3', '370829', '嘉祥县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1763', '3', '370830', '汶上县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1764', '3', '370831', '泗水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1765', '3', '370832', '梁山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1766', '3', '370881', '曲阜市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1767', '3', '370883', '邹城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1768', '3', '370902', '泰山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1769', '3', '370911', '岱岳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1770', '3', '370921', '宁阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1771', '3', '370923', '东平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1772', '3', '370982', '新泰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1773', '3', '370983', '肥城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1774', '3', '371002', '环翠区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1775', '3', '371003', '文登区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1776', '3', '371082', '荣成市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1777', '3', '371083', '乳山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1778', '3', '371102', '东港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1779', '3', '371103', '岚山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1780', '3', '371121', '五莲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1781', '3', '371122', '莒县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1782', '3', '371202', '莱城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1783', '3', '371203', '钢城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1784', '3', '371302', '兰山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1785', '3', '371311', '罗庄区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1786', '3', '371312', '河东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1787', '3', '371321', '沂南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1788', '3', '371322', '郯城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1789', '3', '371323', '沂水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1790', '3', '371324', '兰陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1791', '3', '371325', '费县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1792', '3', '371326', '平邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1793', '3', '371327', '莒南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1794', '3', '371328', '蒙阴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1795', '3', '371329', '临沭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1796', '3', '371402', '德城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1797', '3', '371403', '陵城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1798', '3', '371422', '宁津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1799', '3', '371423', '庆云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1800', '3', '371424', '临邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1801', '3', '371425', '齐河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1802', '3', '371426', '平原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1803', '3', '371427', '夏津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1804', '3', '371428', '武城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1805', '3', '371481', '乐陵市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1806', '3', '371482', '禹城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1807', '3', '371502', '东昌府区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1808', '3', '371521', '阳谷县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1809', '3', '371522', '莘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1810', '3', '371523', '茌平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1811', '3', '371524', '东阿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1812', '3', '371525', '冠县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1813', '3', '371526', '高唐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1814', '3', '371581', '临清市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1815', '3', '371602', '滨城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1816', '3', '371603', '沾化区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1817', '3', '371621', '惠民县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1818', '3', '371622', '阳信县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1819', '3', '371623', '无棣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1820', '3', '371625', '博兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1821', '3', '371626', '邹平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1822', '3', '371702', '牡丹区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1823', '3', '371703', '定陶区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1824', '3', '371721', '曹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1825', '3', '371722', '单县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1826', '3', '371723', '成武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1827', '3', '371724', '巨野县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1828', '3', '371725', '郓城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1829', '3', '371726', '鄄城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1830', '3', '371728', '东明县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1831', '3', '410102', '中原区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1832', '3', '410103', '二七区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1833', '3', '410104', '管城回族区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1834', '3', '410105', '金水区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1835', '3', '410106', '上街区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1836', '3', '410108', '惠济区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1837', '3', '410122', '中牟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1838', '3', '410181', '巩义市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1839', '3', '410182', '荥阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1840', '3', '410183', '新密市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1841', '3', '410184', '新郑市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1842', '3', '410185', '登封市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1843', '3', '410202', '龙亭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1844', '3', '410203', '顺河回族区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1845', '3', '410204', '鼓楼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1846', '3', '410205', '禹王台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1847', '3', '410211', '金明区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1848', '3', '410212', '祥符区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1849', '3', '410221', '杞县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1850', '3', '410222', '通许县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1851', '3', '410223', '尉氏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1852', '3', '410225', '兰考县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1853', '3', '410302', '老城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1854', '3', '410303', '西工区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1855', '3', '410304', '瀍河回族区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1856', '3', '410305', '涧西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1857', '3', '410306', '吉利区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1858', '3', '410311', '洛龙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1859', '3', '410322', '孟津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1860', '3', '410323', '新安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1861', '3', '410324', '栾川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1862', '3', '410325', '嵩县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1863', '3', '410326', '汝阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1864', '3', '410327', '宜阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1865', '3', '410328', '洛宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1866', '3', '410329', '伊川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1867', '3', '410381', '偃师市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1868', '3', '410402', '新华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1869', '3', '410403', '卫东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1870', '3', '410404', '石龙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1871', '3', '410411', '湛河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1872', '3', '410421', '宝丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1873', '3', '410422', '叶县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1874', '3', '410423', '鲁山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1875', '3', '410425', '郏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1876', '3', '410481', '舞钢市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1877', '3', '410482', '汝州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1878', '3', '410502', '文峰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1879', '3', '410503', '北关区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1880', '3', '410505', '殷都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1881', '3', '410506', '龙安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1882', '3', '410522', '安阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1883', '3', '410523', '汤阴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1884', '3', '410526', '滑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1885', '3', '410527', '内黄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1886', '3', '410581', '林州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1887', '3', '410602', '鹤山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1888', '3', '410603', '山城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1889', '3', '410611', '淇滨区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1890', '3', '410621', '浚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1891', '3', '410622', '淇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1892', '3', '410702', '红旗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1893', '3', '410703', '卫滨区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1894', '3', '410704', '凤泉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1895', '3', '410711', '牧野区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1896', '3', '410721', '新乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1897', '3', '410724', '获嘉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1898', '3', '410725', '原阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1899', '3', '410726', '延津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1900', '3', '410727', '封丘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1901', '3', '410728', '长垣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1902', '3', '410781', '卫辉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1903', '3', '410782', '辉县市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1904', '3', '410802', '解放区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1905', '3', '410803', '中站区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1906', '3', '410804', '马村区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1907', '3', '410811', '山阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1908', '3', '410821', '修武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1909', '3', '410822', '博爱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1910', '3', '410823', '武陟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1911', '3', '410825', '温县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1912', '3', '410882', '沁阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1913', '3', '410883', '孟州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1914', '3', '410902', '华龙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1915', '3', '410922', '清丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1916', '3', '410923', '南乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1917', '3', '410926', '范县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1918', '3', '410927', '台前县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1919', '3', '410928', '濮阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1920', '3', '411002', '魏都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1921', '3', '411023', '许昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1922', '3', '411024', '鄢陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1923', '3', '411025', '襄城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1924', '3', '411081', '禹州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1925', '3', '411082', '长葛市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1926', '3', '411102', '源汇区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1927', '3', '411103', '郾城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1928', '3', '411104', '召陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1929', '3', '411121', '舞阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1930', '3', '411122', '临颍县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1931', '3', '411202', '湖滨区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1932', '3', '411203', '陕州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1933', '3', '411221', '渑池县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1934', '3', '411224', '卢氏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1935', '3', '411281', '义马市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1936', '3', '411282', '灵宝市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1937', '3', '411302', '宛城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1938', '3', '411303', '卧龙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1939', '3', '411321', '南召县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1940', '3', '411322', '方城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1941', '3', '411323', '西峡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1942', '3', '411324', '镇平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1943', '3', '411325', '内乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1944', '3', '411326', '淅川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1945', '3', '411327', '社旗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1946', '3', '411328', '唐河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1947', '3', '411329', '新野县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1948', '3', '411330', '桐柏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1949', '3', '411381', '邓州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1950', '3', '411402', '梁园区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1951', '3', '411403', '睢阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1952', '3', '411421', '民权县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1953', '3', '411422', '睢县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1954', '3', '411423', '宁陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1955', '3', '411424', '柘城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1956', '3', '411425', '虞城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1957', '3', '411426', '夏邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1958', '3', '411481', '永城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1959', '3', '411502', '浉河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1960', '3', '411503', '平桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1961', '3', '411521', '罗山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1962', '3', '411522', '光山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1963', '3', '411523', '新县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1964', '3', '411524', '商城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1965', '3', '411525', '固始县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1966', '3', '411526', '潢川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1967', '3', '411527', '淮滨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1968', '3', '411528', '息县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1969', '3', '411602', '川汇区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1970', '3', '411621', '扶沟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1971', '3', '411622', '西华县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1972', '3', '411623', '商水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1973', '3', '411624', '沈丘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1974', '3', '411625', '郸城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1975', '3', '411626', '淮阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1976', '3', '411627', '太康县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1977', '3', '411628', '鹿邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1978', '3', '411681', '项城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1979', '3', '411702', '驿城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1980', '3', '411721', '西平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1981', '3', '411722', '上蔡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1982', '3', '411723', '平舆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1983', '3', '411724', '正阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1984', '3', '411725', '确山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1985', '3', '411726', '泌阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1986', '3', '411727', '汝南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1987', '3', '411728', '遂平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1988', '3', '411729', '新蔡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1989', '3', '419001', '济源市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1990', '3', '420102', '江岸区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1991', '3', '420103', '江汉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1992', '3', '420104', '硚口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1993', '3', '420105', '汉阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1994', '3', '420106', '武昌区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1995', '3', '420107', '青山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1996', '3', '420111', '洪山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1997', '3', '420112', '东西湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1998', '3', '420113', '汉南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('1999', '3', '420114', '蔡甸区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2000', '3', '420115', '江夏区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2001', '3', '420116', '黄陂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2002', '3', '420117', '新洲区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2003', '3', '420202', '黄石港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2004', '3', '420203', '西塞山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2005', '3', '420204', '下陆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2006', '3', '420205', '铁山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2007', '3', '420222', '阳新县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2008', '3', '420281', '大冶市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2009', '3', '420302', '茅箭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2010', '3', '420303', '张湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2011', '3', '420304', '郧阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2012', '3', '420322', '郧西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2013', '3', '420323', '竹山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2014', '3', '420324', '竹溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2015', '3', '420325', '房县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2016', '3', '420381', '丹江口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2017', '3', '420502', '西陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2018', '3', '420503', '伍家岗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2019', '3', '420504', '点军区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2020', '3', '420505', '猇亭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2021', '3', '420506', '夷陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2022', '3', '420525', '远安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2023', '3', '420526', '兴山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2024', '3', '420527', '秭归县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2025', '3', '420528', '长阳土家族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2026', '3', '420529', '五峰土家族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2027', '3', '420581', '宜都市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2028', '3', '420582', '当阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2029', '3', '420583', '枝江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2030', '3', '420602', '襄城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2031', '3', '420606', '樊城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2032', '3', '420607', '襄州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2033', '3', '420624', '南漳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2034', '3', '420625', '谷城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2035', '3', '420626', '保康县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2036', '3', '420682', '老河口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2037', '3', '420683', '枣阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2038', '3', '420684', '宜城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2039', '3', '420702', '梁子湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2040', '3', '420703', '华容区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2041', '3', '420704', '鄂城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2042', '3', '420802', '东宝区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2043', '3', '420804', '掇刀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2044', '3', '420821', '京山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2045', '3', '420822', '沙洋县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2046', '3', '420881', '钟祥市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2047', '3', '420902', '孝南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2048', '3', '420921', '孝昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2049', '3', '420922', '大悟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2050', '3', '420923', '云梦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2051', '3', '420981', '应城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2052', '3', '420982', '安陆市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2053', '3', '420984', '汉川市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2054', '3', '421002', '沙市区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2055', '3', '421003', '荆州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2056', '3', '421022', '公安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2057', '3', '421023', '监利县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2058', '3', '421024', '江陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2059', '3', '421081', '石首市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2060', '3', '421083', '洪湖市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2061', '3', '421087', '松滋市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2062', '3', '421102', '黄州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2063', '3', '421121', '团风县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2064', '3', '421122', '红安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2065', '3', '421123', '罗田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2066', '3', '421124', '英山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2067', '3', '421125', '浠水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2068', '3', '421126', '蕲春县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2069', '3', '421127', '黄梅县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2070', '3', '421181', '麻城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2071', '3', '421182', '武穴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2072', '3', '421202', '咸安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2073', '3', '421221', '嘉鱼县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2074', '3', '421222', '通城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2075', '3', '421223', '崇阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2076', '3', '421224', '通山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2077', '3', '421281', '赤壁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2078', '3', '421303', '曾都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2079', '3', '421321', '随县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2080', '3', '421381', '广水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2081', '3', '422801', '恩施市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2082', '3', '422802', '利川市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2083', '3', '422822', '建始县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2084', '3', '422823', '巴东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2085', '3', '422825', '宣恩县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2086', '3', '422826', '咸丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2087', '3', '422827', '来凤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2088', '3', '422828', '鹤峰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2089', '3', '429004', '仙桃市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2090', '3', '429005', '潜江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2091', '3', '429006', '天门市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2092', '3', '429021', '神农架林区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2093', '3', '430102', '芙蓉区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2094', '3', '430103', '天心区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2095', '3', '430104', '岳麓区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2096', '3', '430105', '开福区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2097', '3', '430111', '雨花区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2098', '3', '430112', '望城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2099', '3', '430121', '长沙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2100', '3', '430124', '宁乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2101', '3', '430181', '浏阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2102', '3', '430202', '荷塘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2103', '3', '430203', '芦淞区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2104', '3', '430204', '石峰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2105', '3', '430211', '天元区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2106', '3', '430221', '株洲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2107', '3', '430223', '攸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2108', '3', '430224', '茶陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2109', '3', '430225', '炎陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2110', '3', '430281', '醴陵市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2111', '3', '430302', '雨湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2112', '3', '430304', '岳塘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2113', '3', '430321', '湘潭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2114', '3', '430381', '湘乡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2115', '3', '430382', '韶山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2116', '3', '430405', '珠晖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2117', '3', '430406', '雁峰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2118', '3', '430407', '石鼓区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2119', '3', '430408', '蒸湘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2120', '3', '430412', '南岳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2121', '3', '430421', '衡阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2122', '3', '430422', '衡南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2123', '3', '430423', '衡山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2124', '3', '430424', '衡东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2125', '3', '430426', '祁东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2126', '3', '430481', '耒阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2127', '3', '430482', '常宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2128', '3', '430502', '双清区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2129', '3', '430503', '大祥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2130', '3', '430511', '北塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2131', '3', '430521', '邵东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2132', '3', '430522', '新邵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2133', '3', '430523', '邵阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2134', '3', '430524', '隆回县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2135', '3', '430525', '洞口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2136', '3', '430527', '绥宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2137', '3', '430528', '新宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2138', '3', '430529', '城步苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2139', '3', '430581', '武冈市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2140', '3', '430602', '岳阳楼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2141', '3', '430603', '云溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2142', '3', '430611', '君山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2143', '3', '430621', '岳阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2144', '3', '430623', '华容县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2145', '3', '430624', '湘阴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2146', '3', '430626', '平江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2147', '3', '430681', '汨罗市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2148', '3', '430682', '临湘市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2149', '3', '430702', '武陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2150', '3', '430703', '鼎城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2151', '3', '430721', '安乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2152', '3', '430722', '汉寿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2153', '3', '430723', '澧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2154', '3', '430724', '临澧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2155', '3', '430725', '桃源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2156', '3', '430726', '石门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2157', '3', '430781', '津市市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2158', '3', '430802', '永定区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2159', '3', '430811', '武陵源区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2160', '3', '430821', '慈利县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2161', '3', '430822', '桑植县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2162', '3', '430902', '资阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2163', '3', '430903', '赫山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2164', '3', '430921', '南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2165', '3', '430922', '桃江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2166', '3', '430923', '安化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2167', '3', '430981', '沅江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2168', '3', '431002', '北湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2169', '3', '431003', '苏仙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2170', '3', '431021', '桂阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2171', '3', '431022', '宜章县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2172', '3', '431023', '永兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2173', '3', '431024', '嘉禾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2174', '3', '431025', '临武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2175', '3', '431026', '汝城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2176', '3', '431027', '桂东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2177', '3', '431028', '安仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2178', '3', '431081', '资兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2179', '3', '431102', '零陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2180', '3', '431103', '冷水滩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2181', '3', '431121', '祁阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2182', '3', '431122', '东安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2183', '3', '431123', '双牌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2184', '3', '431124', '道县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2185', '3', '431125', '江永县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2186', '3', '431126', '宁远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2187', '3', '431127', '蓝山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2188', '3', '431128', '新田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2189', '3', '431129', '江华瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2190', '3', '431202', '鹤城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2191', '3', '431221', '中方县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2192', '3', '431222', '沅陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2193', '3', '431223', '辰溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2194', '3', '431224', '溆浦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2195', '3', '431225', '会同县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2196', '3', '431226', '麻阳苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2197', '3', '431227', '新晃侗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2198', '3', '431228', '芷江侗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2199', '3', '431229', '靖州苗族侗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2200', '3', '431230', '通道侗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2201', '3', '431281', '洪江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2202', '3', '431302', '娄星区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2203', '3', '431321', '双峰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2204', '3', '431322', '新化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2205', '3', '431381', '冷水江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2206', '3', '431382', '涟源市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2207', '3', '433101', '吉首市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2208', '3', '433122', '泸溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2209', '3', '433123', '凤凰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2210', '3', '433124', '花垣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2211', '3', '433125', '保靖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2212', '3', '433126', '古丈县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2213', '3', '433127', '永顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2214', '3', '433130', '龙山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2215', '3', '440103', '荔湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2216', '3', '440104', '越秀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2217', '3', '440105', '海珠区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2218', '3', '440106', '天河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2219', '3', '440111', '白云区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2220', '3', '440112', '黄埔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2221', '3', '440113', '番禺区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2222', '3', '440114', '花都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2223', '3', '440115', '南沙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2224', '3', '440117', '从化区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2225', '3', '440118', '增城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2226', '3', '440203', '武江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2227', '3', '440204', '浈江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2228', '3', '440205', '曲江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2229', '3', '440222', '始兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2230', '3', '440224', '仁化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2231', '3', '440229', '翁源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2232', '3', '440232', '乳源瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2233', '3', '440233', '新丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2234', '3', '440281', '乐昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2235', '3', '440282', '南雄市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2236', '3', '440303', '罗湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2237', '3', '440304', '福田区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2238', '3', '440305', '南山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2239', '3', '440306', '宝安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2240', '3', '440307', '龙岗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2241', '3', '440308', '盐田区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2242', '3', '440402', '香洲区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2243', '3', '440403', '斗门区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2244', '3', '440404', '金湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2245', '3', '440507', '龙湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2246', '3', '440511', '金平区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2247', '3', '440512', '濠江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2248', '3', '440513', '潮阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2249', '3', '440514', '潮南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2250', '3', '440515', '澄海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2251', '3', '440523', '南澳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2252', '3', '440604', '禅城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2253', '3', '440605', '南海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2254', '3', '440606', '顺德区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2255', '3', '440607', '三水区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2256', '3', '440608', '高明区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2257', '3', '440703', '蓬江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2258', '3', '440704', '江海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2259', '3', '440705', '新会区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2260', '3', '440781', '台山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2261', '3', '440783', '开平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2262', '3', '440784', '鹤山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2263', '3', '440785', '恩平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2264', '3', '440802', '赤坎区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2265', '3', '440803', '霞山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2266', '3', '440804', '坡头区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2267', '3', '440811', '麻章区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2268', '3', '440823', '遂溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2269', '3', '440825', '徐闻县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2270', '3', '440881', '廉江市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2271', '3', '440882', '雷州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2272', '3', '440883', '吴川市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2273', '3', '440902', '茂南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2274', '3', '440904', '电白区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2275', '3', '440981', '高州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2276', '3', '440982', '化州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2277', '3', '440983', '信宜市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2278', '3', '441202', '端州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2279', '3', '441203', '鼎湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2280', '3', '441204', '高要区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2281', '3', '441223', '广宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2282', '3', '441224', '怀集县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2283', '3', '441225', '封开县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2284', '3', '441226', '德庆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2285', '3', '441284', '四会市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2286', '3', '441302', '惠城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2287', '3', '441303', '惠阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2288', '3', '441322', '博罗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2289', '3', '441323', '惠东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2290', '3', '441324', '龙门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2291', '3', '441402', '梅江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2292', '3', '441403', '梅县区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2293', '3', '441422', '大埔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2294', '3', '441423', '丰顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2295', '3', '441424', '五华县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2296', '3', '441426', '平远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2297', '3', '441427', '蕉岭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2298', '3', '441481', '兴宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2299', '3', '441502', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2300', '3', '441521', '海丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2301', '3', '441523', '陆河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2302', '3', '441581', '陆丰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2303', '3', '441602', '源城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2304', '3', '441621', '紫金县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2305', '3', '441622', '龙川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2306', '3', '441623', '连平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2307', '3', '441624', '和平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2308', '3', '441625', '东源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2309', '3', '441702', '江城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2310', '3', '441704', '阳东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2311', '3', '441721', '阳西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2312', '3', '441781', '阳春市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2313', '3', '441802', '清城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2314', '3', '441803', '清新区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2315', '3', '441821', '佛冈县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2316', '3', '441823', '阳山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2317', '3', '441825', '连山壮族瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2318', '3', '441826', '连南瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2319', '3', '441881', '英德市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2320', '3', '441882', '连州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2321', '3', '442001', '石岐区街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2322', '3', '442002', '东区街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2323', '3', '442003', '火炬开发区街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2324', '3', '442004', '西区街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2325', '3', '442005', '南区街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2326', '3', '442006', '五桂山街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2327', '3', '442007', '小榄镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2328', '3', '442008', '黄圃镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2329', '3', '442009', '民众镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2330', '3', '442010', '东凤镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2331', '3', '442011', '东升镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2332', '3', '442012', '古镇镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2333', '3', '442013', '沙溪镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2334', '3', '442014', '坦洲镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2335', '3', '442015', '港口镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2336', '3', '442016', '三角镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2337', '3', '442017', '横栏镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2338', '3', '442018', '南头镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2339', '3', '442019', '阜沙镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2340', '3', '442020', '南朗镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2341', '3', '442021', '三乡镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2342', '3', '442022', '板芙镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2343', '3', '442023', '大涌镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2344', '3', '442024', '神湾镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2345', '3', '441901', '东城街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2346', '3', '441902', '南城街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2347', '3', '441903', '万江街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2348', '3', '441904', '莞城街道', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2349', '3', '441905', '石碣镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2350', '3', '441906', '石龙镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2351', '3', '441907', '茶山镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2352', '3', '441908', '石排镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2353', '3', '441909', '企石镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2354', '3', '441910', '横沥镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2355', '3', '441911', '桥头镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2356', '3', '441912', '谢岗镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2357', '3', '441913', '东坑镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2358', '3', '441914', '常平镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2359', '3', '441915', '寮步镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2360', '3', '441916', '樟木头镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2361', '3', '441917', '大朗镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2362', '3', '441918', '黄江镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2363', '3', '441919', '清溪镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2364', '3', '441920', '塘厦镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2365', '3', '441921', '凤岗镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2366', '3', '441922', '大岭山镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2367', '3', '441923', '长安镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2368', '3', '441924', '虎门镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2369', '3', '441925', '厚街镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2370', '3', '441926', '沙田镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2371', '3', '441927', '道滘镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2372', '3', '441928', '洪梅镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2373', '3', '441929', '麻涌镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2374', '3', '441930', '望牛墩镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2375', '3', '441931', '中堂镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2376', '3', '441932', '高埗镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2377', '3', '441933', '松山湖', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2378', '3', '441934', '虎门港', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2379', '3', '441935', '东莞生态园', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2380', '3', '445102', '湘桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2381', '3', '445103', '潮安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2382', '3', '445122', '饶平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2383', '3', '445202', '榕城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2384', '3', '445203', '揭东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2385', '3', '445222', '揭西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2386', '3', '445224', '惠来县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2387', '3', '445281', '普宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2388', '3', '445302', '云城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2389', '3', '445303', '云安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2390', '3', '445321', '新兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2391', '3', '445322', '郁南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2392', '3', '445381', '罗定市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2393', '3', '450102', '兴宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2394', '3', '450103', '青秀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2395', '3', '450105', '江南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2396', '3', '450107', '西乡塘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2397', '3', '450108', '良庆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2398', '3', '450109', '邕宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2399', '3', '450110', '武鸣区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2400', '3', '450123', '隆安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2401', '3', '450124', '马山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2402', '3', '450125', '上林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2403', '3', '450126', '宾阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2404', '3', '450127', '横县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2405', '3', '450202', '城中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2406', '3', '450203', '鱼峰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2407', '3', '450204', '柳南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2408', '3', '450205', '柳北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2409', '3', '450206', '柳江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2410', '3', '450222', '柳城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2411', '3', '450223', '鹿寨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2412', '3', '450224', '融安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2413', '3', '450225', '融水苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2414', '3', '450226', '三江侗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2415', '3', '450302', '秀峰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2416', '3', '450303', '叠彩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2417', '3', '450304', '象山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2418', '3', '450305', '七星区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2419', '3', '450311', '雁山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2420', '3', '450312', '临桂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2421', '3', '450321', '阳朔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2422', '3', '450323', '灵川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2423', '3', '450324', '全州县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2424', '3', '450325', '兴安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2425', '3', '450326', '永福县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2426', '3', '450327', '灌阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2427', '3', '450328', '龙胜各族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2428', '3', '450329', '资源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2429', '3', '450330', '平乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2430', '3', '450331', '荔浦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2431', '3', '450332', '恭城瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2432', '3', '450403', '万秀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2433', '3', '450405', '长洲区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2434', '3', '450406', '龙圩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2435', '3', '450421', '苍梧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2436', '3', '450422', '藤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2437', '3', '450423', '蒙山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2438', '3', '450481', '岑溪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2439', '3', '450502', '海城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2440', '3', '450503', '银海区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2441', '3', '450512', '铁山港区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2442', '3', '450521', '合浦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2443', '3', '450602', '港口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2444', '3', '450603', '防城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2445', '3', '450621', '上思县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2446', '3', '450681', '东兴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2447', '3', '450702', '钦南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2448', '3', '450703', '钦北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2449', '3', '450721', '灵山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2450', '3', '450722', '浦北县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2451', '3', '450802', '港北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2452', '3', '450803', '港南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2453', '3', '450804', '覃塘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2454', '3', '450821', '平南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2455', '3', '450881', '桂平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2456', '3', '450902', '玉州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2457', '3', '450903', '福绵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2458', '3', '450921', '容县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2459', '3', '450922', '陆川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2460', '3', '450923', '博白县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2461', '3', '450924', '兴业县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2462', '3', '450981', '北流市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2463', '3', '451002', '右江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2464', '3', '451021', '田阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2465', '3', '451022', '田东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2466', '3', '451023', '平果县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2467', '3', '451024', '德保县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2468', '3', '451026', '那坡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2469', '3', '451027', '凌云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2470', '3', '451028', '乐业县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2471', '3', '451029', '田林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2472', '3', '451030', '西林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2473', '3', '451031', '隆林各族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2474', '3', '451081', '靖西市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2475', '3', '451102', '八步区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2476', '3', '451103', '平桂区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2477', '3', '451121', '昭平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2478', '3', '451122', '钟山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2479', '3', '451123', '富川瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2480', '3', '451202', '金城江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2481', '3', '451221', '南丹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2482', '3', '451222', '天峨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2483', '3', '451223', '凤山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2484', '3', '451224', '东兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2485', '3', '451225', '罗城仫佬族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2486', '3', '451226', '环江毛南族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2487', '3', '451227', '巴马瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2488', '3', '451228', '都安瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2489', '3', '451229', '大化瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2490', '3', '451281', '宜州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2491', '3', '451302', '兴宾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2492', '3', '451321', '忻城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2493', '3', '451322', '象州县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2494', '3', '451323', '武宣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2495', '3', '451324', '金秀瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2496', '3', '451381', '合山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2497', '3', '451402', '江州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2498', '3', '451421', '扶绥县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2499', '3', '451422', '宁明县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2500', '3', '451423', '龙州县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2501', '3', '451424', '大新县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2502', '3', '451425', '天等县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2503', '3', '451481', '凭祥市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2504', '3', '460105', '秀英区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2505', '3', '460106', '龙华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2506', '3', '460107', '琼山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2507', '3', '460108', '美兰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2508', '3', '460202', '海棠区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2509', '3', '460203', '吉阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2510', '3', '460204', '天涯区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2511', '3', '460205', '崖州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2512', '3', '460301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2513', '3', '460401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2514', '3', '460402', '那大镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2515', '3', '460403', '和庆镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2516', '3', '460404', '南丰镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2517', '3', '460405', '大成镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2518', '3', '460406', '雅星镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2519', '3', '460407', '兰洋镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2520', '3', '460408', '光村镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2521', '3', '460409', '木棠镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2522', '3', '460410', '海头镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2523', '3', '460411', '峨蔓镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2524', '3', '460412', '王五镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2525', '3', '460413', '白马井镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2526', '3', '460414', '中和镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2527', '3', '460415', '排浦镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2528', '3', '460416', '东成镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2529', '3', '460417', '新州镇', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2530', '3', '460418', '八一总场', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2531', '3', '460419', '蓝洋农场', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2532', '3', '460420', '西联农场', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2533', '3', '460421', '西培农场', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2534', '3', '469001', '五指山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2535', '3', '469002', '琼海市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2536', '3', '469005', '文昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2537', '3', '469006', '万宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2538', '3', '469007', '东方市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2539', '3', '469021', '定安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2540', '3', '469022', '屯昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2541', '3', '469023', '澄迈县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2542', '3', '469024', '临高县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2543', '3', '469025', '白沙黎族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2544', '3', '469026', '昌江黎族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2545', '3', '469027', '乐东黎族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2546', '3', '469028', '陵水黎族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2547', '3', '469029', '保亭黎族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2548', '3', '469030', '琼中黎族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2549', '3', '500101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2550', '3', '500201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2551', '3', '500301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2552', '3', '500501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2553', '3', '500401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2554', '3', '500601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2555', '3', '500801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2556', '3', '500901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2557', '3', '500701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2558', '3', '501101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2559', '3', '501001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2560', '3', '501201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2561', '3', '501301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2562', '3', '501401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2563', '3', '501501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2564', '3', '501701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2565', '3', '501801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2566', '3', '501901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2567', '3', '501601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2568', '3', '502001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2569', '3', '502101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2570', '3', '502201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2571', '3', '502301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2572', '3', '502401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2573', '3', '502801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2574', '3', '503001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2575', '3', '502901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2576', '3', '503101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2577', '3', '503201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2578', '3', '503301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2579', '3', '503601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2580', '3', '503701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2581', '3', '503501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2582', '3', '503801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2583', '3', '504101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2584', '3', '504001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2585', '3', '504301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2586', '3', '504201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2587', '3', '510104', '锦江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2588', '3', '510105', '青羊区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2589', '3', '510106', '金牛区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2590', '3', '510107', '武侯区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2591', '3', '510108', '成华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2592', '3', '510112', '龙泉驿区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2593', '3', '510113', '青白江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2594', '3', '510114', '新都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2595', '3', '510115', '温江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2596', '3', '510116', '双流区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2597', '3', '510121', '金堂县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2598', '3', '510124', '郫县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2599', '3', '510129', '大邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2600', '3', '510131', '蒲江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2601', '3', '510132', '新津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2602', '3', '510181', '都江堰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2603', '3', '510182', '彭州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2604', '3', '510183', '邛崃市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2605', '3', '510184', '崇州市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2606', '3', '510185', '简阳市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2607', '3', '510302', '自流井区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2608', '3', '510303', '贡井区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2609', '3', '510304', '大安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2610', '3', '510311', '沿滩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2611', '3', '510321', '荣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2612', '3', '510322', '富顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2613', '3', '510402', '东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2614', '3', '510403', '西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2615', '3', '510411', '仁和区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2616', '3', '510421', '米易县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2617', '3', '510422', '盐边县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2618', '3', '510502', '江阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2619', '3', '510503', '纳溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2620', '3', '510504', '龙马潭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2621', '3', '510521', '泸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2622', '3', '510522', '合江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2623', '3', '510524', '叙永县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2624', '3', '510525', '古蔺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2625', '3', '510603', '旌阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2626', '3', '510623', '中江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2627', '3', '510626', '罗江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2628', '3', '510681', '广汉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2629', '3', '510682', '什邡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2630', '3', '510683', '绵竹市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2631', '3', '510703', '涪城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2632', '3', '510704', '游仙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2633', '3', '510705', '安州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2634', '3', '510722', '三台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2635', '3', '510723', '盐亭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2636', '3', '510725', '梓潼县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2637', '3', '510726', '北川羌族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2638', '3', '510727', '平武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2639', '3', '510781', '江油市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2640', '3', '510802', '利州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2641', '3', '510811', '昭化区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2642', '3', '510812', '朝天区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2643', '3', '510821', '旺苍县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2644', '3', '510822', '青川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2645', '3', '510823', '剑阁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2646', '3', '510824', '苍溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2647', '3', '510903', '船山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2648', '3', '510904', '安居区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2649', '3', '510921', '蓬溪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2650', '3', '510922', '射洪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2651', '3', '510923', '大英县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2652', '3', '511002', '市中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2653', '3', '511011', '东兴区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2654', '3', '511024', '威远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2655', '3', '511025', '资中县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2656', '3', '511028', '隆昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2657', '3', '511102', '市中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2658', '3', '511111', '沙湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2659', '3', '511112', '五通桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2660', '3', '511113', '金口河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2661', '3', '511123', '犍为县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2662', '3', '511124', '井研县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2663', '3', '511126', '夹江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2664', '3', '511129', '沐川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2665', '3', '511132', '峨边彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2666', '3', '511133', '马边彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2667', '3', '511181', '峨眉山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2668', '3', '511302', '顺庆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2669', '3', '511303', '高坪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2670', '3', '511304', '嘉陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2671', '3', '511321', '南部县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2672', '3', '511322', '营山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2673', '3', '511323', '蓬安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2674', '3', '511324', '仪陇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2675', '3', '511325', '西充县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2676', '3', '511381', '阆中市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2677', '3', '511402', '东坡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2678', '3', '511403', '彭山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2679', '3', '511421', '仁寿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2680', '3', '511423', '洪雅县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2681', '3', '511424', '丹棱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2682', '3', '511425', '青神县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2683', '3', '511502', '翠屏区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2684', '3', '511503', '南溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2685', '3', '511521', '宜宾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2686', '3', '511523', '江安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2687', '3', '511524', '长宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2688', '3', '511525', '高县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2689', '3', '511526', '珙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2690', '3', '511527', '筠连县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2691', '3', '511528', '兴文县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2692', '3', '511529', '屏山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2693', '3', '511602', '广安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2694', '3', '511603', '前锋区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2695', '3', '511621', '岳池县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2696', '3', '511622', '武胜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2697', '3', '511623', '邻水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2698', '3', '511681', '华蓥市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2699', '3', '511702', '通川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2700', '3', '511703', '达川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2701', '3', '511722', '宣汉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2702', '3', '511723', '开江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2703', '3', '511724', '大竹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2704', '3', '511725', '渠县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2705', '3', '511781', '万源市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2706', '3', '511802', '雨城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2707', '3', '511803', '名山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2708', '3', '511822', '荥经县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2709', '3', '511823', '汉源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2710', '3', '511824', '石棉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2711', '3', '511825', '天全县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2712', '3', '511826', '芦山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2713', '3', '511827', '宝兴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2714', '3', '511902', '巴州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2715', '3', '511903', '恩阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2716', '3', '511921', '通江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2717', '3', '511922', '南江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2718', '3', '511923', '平昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2719', '3', '512002', '雁江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2720', '3', '512021', '安岳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2721', '3', '512022', '乐至县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2722', '3', '513201', '马尔康市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2723', '3', '513221', '汶川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2724', '3', '513222', '理县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2725', '3', '513223', '茂县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2726', '3', '513224', '松潘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2727', '3', '513225', '九寨沟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2728', '3', '513226', '金川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2729', '3', '513227', '小金县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2730', '3', '513228', '黑水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2731', '3', '513230', '壤塘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2732', '3', '513231', '阿坝县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2733', '3', '513232', '若尔盖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2734', '3', '513233', '红原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2735', '3', '513301', '康定市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2736', '3', '513322', '泸定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2737', '3', '513323', '丹巴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2738', '3', '513324', '九龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2739', '3', '513325', '雅江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2740', '3', '513326', '道孚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2741', '3', '513327', '炉霍县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2742', '3', '513328', '甘孜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2743', '3', '513329', '新龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2744', '3', '513330', '德格县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2745', '3', '513331', '白玉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2746', '3', '513332', '石渠县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2747', '3', '513333', '色达县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2748', '3', '513334', '理塘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2749', '3', '513335', '巴塘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2750', '3', '513336', '乡城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2751', '3', '513337', '稻城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2752', '3', '513338', '得荣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2753', '3', '513401', '西昌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2754', '3', '513422', '木里藏族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2755', '3', '513423', '盐源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2756', '3', '513424', '德昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2757', '3', '513425', '会理县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2758', '3', '513426', '会东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2759', '3', '513427', '宁南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2760', '3', '513428', '普格县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2761', '3', '513429', '布拖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2762', '3', '513430', '金阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2763', '3', '513431', '昭觉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2764', '3', '513432', '喜德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2765', '3', '513433', '冕宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2766', '3', '513434', '越西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2767', '3', '513435', '甘洛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2768', '3', '513436', '美姑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2769', '3', '513437', '雷波县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2770', '3', '520102', '南明区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2771', '3', '520103', '云岩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2772', '3', '520111', '花溪区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2773', '3', '520112', '乌当区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2774', '3', '520113', '白云区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2775', '3', '520115', '观山湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2776', '3', '520121', '开阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2777', '3', '520122', '息烽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2778', '3', '520123', '修文县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2779', '3', '520181', '清镇市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2780', '3', '520201', '钟山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2781', '3', '520203', '六枝特区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2782', '3', '520221', '水城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2783', '3', '520222', '盘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2784', '3', '520302', '红花岗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2785', '3', '520303', '汇川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2786', '3', '520304', '播州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2787', '3', '520322', '桐梓县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2788', '3', '520323', '绥阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2789', '3', '520324', '正安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2790', '3', '520325', '道真仡佬族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2791', '3', '520326', '务川仡佬族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2792', '3', '520327', '凤冈县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2793', '3', '520328', '湄潭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2794', '3', '520329', '余庆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2795', '3', '520330', '习水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2796', '3', '520381', '赤水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2797', '3', '520382', '仁怀市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2798', '3', '520402', '西秀区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2799', '3', '520403', '平坝区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2800', '3', '520422', '普定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2801', '3', '520423', '镇宁布依族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2802', '3', '520424', '关岭布依族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2803', '3', '520425', '紫云苗族布依族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2804', '3', '520502', '七星关区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2805', '3', '520521', '大方县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2806', '3', '520522', '黔西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2807', '3', '520523', '金沙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2808', '3', '520524', '织金县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2809', '3', '520525', '纳雍县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2810', '3', '520526', '威宁彝族回族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2811', '3', '520527', '赫章县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2812', '3', '520602', '碧江区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2813', '3', '520603', '万山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2814', '3', '520621', '江口县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2815', '3', '520622', '玉屏侗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2816', '3', '520623', '石阡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2817', '3', '520624', '思南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2818', '3', '520625', '印江土家族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2819', '3', '520626', '德江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2820', '3', '520627', '沿河土家族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2821', '3', '520628', '松桃苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2822', '3', '522301', '兴义市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2823', '3', '522322', '兴仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2824', '3', '522323', '普安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2825', '3', '522324', '晴隆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2826', '3', '522325', '贞丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2827', '3', '522326', '望谟县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2828', '3', '522327', '册亨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2829', '3', '522328', '安龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2830', '3', '522601', '凯里市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2831', '3', '522622', '黄平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2832', '3', '522623', '施秉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2833', '3', '522624', '三穗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2834', '3', '522625', '镇远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2835', '3', '522626', '岑巩县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2836', '3', '522627', '天柱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2837', '3', '522628', '锦屏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2838', '3', '522629', '剑河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2839', '3', '522630', '台江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2840', '3', '522631', '黎平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2841', '3', '522632', '榕江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2842', '3', '522633', '从江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2843', '3', '522634', '雷山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2844', '3', '522635', '麻江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2845', '3', '522636', '丹寨县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2846', '3', '522701', '都匀市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2847', '3', '522702', '福泉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2848', '3', '522722', '荔波县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2849', '3', '522723', '贵定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2850', '3', '522725', '瓮安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2851', '3', '522726', '独山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2852', '3', '522727', '平塘县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2853', '3', '522728', '罗甸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2854', '3', '522729', '长顺县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2855', '3', '522730', '龙里县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2856', '3', '522731', '惠水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2857', '3', '522732', '三都水族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2858', '3', '530102', '五华区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2859', '3', '530103', '盘龙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2860', '3', '530111', '官渡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2861', '3', '530112', '西山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2862', '3', '530113', '东川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2863', '3', '530114', '呈贡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2864', '3', '530122', '晋宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2865', '3', '530124', '富民县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2866', '3', '530125', '宜良县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2867', '3', '530126', '石林彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2868', '3', '530127', '嵩明县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2869', '3', '530128', '禄劝彝族苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2870', '3', '530129', '寻甸回族彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2871', '3', '530181', '安宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2872', '3', '530302', '麒麟区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2873', '3', '530303', '沾益区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2874', '3', '530321', '马龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2875', '3', '530322', '陆良县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2876', '3', '530323', '师宗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2877', '3', '530324', '罗平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2878', '3', '530325', '富源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2879', '3', '530326', '会泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2880', '3', '530381', '宣威市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2881', '3', '530402', '红塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2882', '3', '530403', '江川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2883', '3', '530422', '澄江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2884', '3', '530423', '通海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2885', '3', '530424', '华宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2886', '3', '530425', '易门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2887', '3', '530426', '峨山彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2888', '3', '530427', '新平彝族傣族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2889', '3', '530428', '元江哈尼族彝族傣族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2890', '3', '530502', '隆阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2891', '3', '530521', '施甸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2892', '3', '530523', '龙陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2893', '3', '530524', '昌宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2894', '3', '530581', '腾冲市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2895', '3', '530602', '昭阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2896', '3', '530621', '鲁甸县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2897', '3', '530622', '巧家县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2898', '3', '530623', '盐津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2899', '3', '530624', '大关县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2900', '3', '530625', '永善县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2901', '3', '530626', '绥江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2902', '3', '530627', '镇雄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2903', '3', '530628', '彝良县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2904', '3', '530629', '威信县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2905', '3', '530630', '水富县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2906', '3', '530702', '古城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2907', '3', '530721', '玉龙纳西族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2908', '3', '530722', '永胜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2909', '3', '530723', '华坪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2910', '3', '530724', '宁蒗彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2911', '3', '530802', '思茅区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2912', '3', '530821', '宁洱哈尼族彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2913', '3', '530822', '墨江哈尼族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2914', '3', '530823', '景东彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2915', '3', '530824', '景谷傣族彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2916', '3', '530825', '镇沅彝族哈尼族拉祜族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2917', '3', '530826', '江城哈尼族彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2918', '3', '530827', '孟连傣族拉祜族佤族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2919', '3', '530828', '澜沧拉祜族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2920', '3', '530829', '西盟佤族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2921', '3', '530902', '临翔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2922', '3', '530921', '凤庆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2923', '3', '530922', '云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2924', '3', '530923', '永德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2925', '3', '530924', '镇康县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2926', '3', '530925', '双江拉祜族佤族布朗族傣族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2927', '3', '530926', '耿马傣族佤族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2928', '3', '530927', '沧源佤族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2929', '3', '532301', '楚雄市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2930', '3', '532322', '双柏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2931', '3', '532323', '牟定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2932', '3', '532324', '南华县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2933', '3', '532325', '姚安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2934', '3', '532326', '大姚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2935', '3', '532327', '永仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2936', '3', '532328', '元谋县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2937', '3', '532329', '武定县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2938', '3', '532331', '禄丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2939', '3', '532501', '个旧市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2940', '3', '532502', '开远市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2941', '3', '532503', '蒙自市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2942', '3', '532504', '弥勒市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2943', '3', '532523', '屏边苗族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2944', '3', '532524', '建水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2945', '3', '532525', '石屏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2946', '3', '532527', '泸西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2947', '3', '532528', '元阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2948', '3', '532529', '红河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2949', '3', '532530', '金平苗族瑶族傣族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2950', '3', '532531', '绿春县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2951', '3', '532532', '河口瑶族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2952', '3', '532601', '文山市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2953', '3', '532622', '砚山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2954', '3', '532623', '西畴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2955', '3', '532624', '麻栗坡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2956', '3', '532625', '马关县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2957', '3', '532626', '丘北县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2958', '3', '532627', '广南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2959', '3', '532628', '富宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2960', '3', '532801', '景洪市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2961', '3', '532822', '勐海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2962', '3', '532823', '勐腊县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2963', '3', '532901', '大理市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2964', '3', '532922', '漾濞彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2965', '3', '532923', '祥云县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2966', '3', '532924', '宾川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2967', '3', '532925', '弥渡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2968', '3', '532926', '南涧彝族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2969', '3', '532927', '巍山彝族回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2970', '3', '532928', '永平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2971', '3', '532929', '云龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2972', '3', '532930', '洱源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2973', '3', '532931', '剑川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2974', '3', '532932', '鹤庆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2975', '3', '533102', '瑞丽市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2976', '3', '533103', '芒市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2977', '3', '533122', '梁河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2978', '3', '533123', '盈江县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2979', '3', '533124', '陇川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2980', '3', '533301', '泸水市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2981', '3', '533323', '福贡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2982', '3', '533324', '贡山独龙族怒族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2983', '3', '533325', '兰坪白族普米族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2984', '3', '533401', '香格里拉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2985', '3', '533422', '德钦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2986', '3', '533423', '维西傈僳族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2987', '3', '540102', '城关区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2988', '3', '540103', '堆龙德庆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2989', '3', '540121', '林周县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2990', '3', '540122', '当雄县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2991', '3', '540123', '尼木县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2992', '3', '540124', '曲水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2993', '3', '540126', '达孜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2994', '3', '540127', '墨竹工卡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2995', '3', '540202', '桑珠孜区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2996', '3', '540221', '南木林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2997', '3', '540222', '江孜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2998', '3', '540223', '定日县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('2999', '3', '540224', '萨迦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3000', '3', '540225', '拉孜县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3001', '3', '540226', '昂仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3002', '3', '540227', '谢通门县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3003', '3', '540228', '白朗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3004', '3', '540229', '仁布县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3005', '3', '540230', '康马县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3006', '3', '540231', '定结县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3007', '3', '540232', '仲巴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3008', '3', '540233', '亚东县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3009', '3', '540234', '吉隆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3010', '3', '540235', '聂拉木县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3011', '3', '540236', '萨嘎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3012', '3', '540237', '岗巴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3013', '3', '540302', '卡若区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3014', '3', '540321', '江达县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3015', '3', '540322', '贡觉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3016', '3', '540323', '类乌齐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3017', '3', '540324', '丁青县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3018', '3', '540325', '察雅县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3019', '3', '540326', '八宿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3020', '3', '540327', '左贡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3021', '3', '540328', '芒康县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3022', '3', '540329', '洛隆县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3023', '3', '540330', '边坝县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3024', '3', '540402', '巴宜区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3025', '3', '540421', '工布江达县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3026', '3', '540422', '米林县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3027', '3', '540423', '墨脱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3028', '3', '540424', '波密县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3029', '3', '540425', '察隅县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3030', '3', '540426', '朗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3031', '3', '540502', '乃东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3032', '3', '540521', '扎囊县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3033', '3', '540522', '贡嘎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3034', '3', '540523', '桑日县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3035', '3', '540524', '琼结县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3036', '3', '540525', '曲松县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3037', '3', '540526', '措美县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3038', '3', '540527', '洛扎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3039', '3', '540528', '加查县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3040', '3', '540529', '隆子县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3041', '3', '540530', '错那县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3042', '3', '540531', '浪卡子县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3043', '3', '542421', '那曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3044', '3', '542422', '嘉黎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3045', '3', '542423', '比如县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3046', '3', '542424', '聂荣县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3047', '3', '542425', '安多县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3048', '3', '542426', '申扎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3049', '3', '542427', '索县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3050', '3', '542428', '班戈县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3051', '3', '542429', '巴青县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3052', '3', '542430', '尼玛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3053', '3', '542431', '双湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3054', '3', '542521', '普兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3055', '3', '542522', '札达县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3056', '3', '542523', '噶尔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3057', '3', '542524', '日土县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3058', '3', '542525', '革吉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3059', '3', '542526', '改则县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3060', '3', '542527', '措勤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3061', '3', '610102', '新城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3062', '3', '610103', '碑林区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3063', '3', '610104', '莲湖区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3064', '3', '610111', '灞桥区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3065', '3', '610112', '未央区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3066', '3', '610113', '雁塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3067', '3', '610114', '阎良区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3068', '3', '610115', '临潼区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3069', '3', '610116', '长安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3070', '3', '610117', '高陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3071', '3', '610122', '蓝田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3072', '3', '610124', '周至县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3073', '3', '610125', '户县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3074', '3', '610202', '王益区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3075', '3', '610203', '印台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3076', '3', '610204', '耀州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3077', '3', '610222', '宜君县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3078', '3', '610302', '渭滨区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3079', '3', '610303', '金台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3080', '3', '610304', '陈仓区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3081', '3', '610322', '凤翔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3082', '3', '610323', '岐山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3083', '3', '610324', '扶风县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3084', '3', '610326', '眉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3085', '3', '610327', '陇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3086', '3', '610328', '千阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3087', '3', '610329', '麟游县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3088', '3', '610330', '凤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3089', '3', '610331', '太白县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3090', '3', '610402', '秦都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3091', '3', '610403', '杨陵区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3092', '3', '610404', '渭城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3093', '3', '610422', '三原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3094', '3', '610423', '泾阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3095', '3', '610424', '乾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3096', '3', '610425', '礼泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3097', '3', '610426', '永寿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3098', '3', '610427', '彬县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3099', '3', '610428', '长武县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3100', '3', '610429', '旬邑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3101', '3', '610430', '淳化县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3102', '3', '610431', '武功县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3103', '3', '610481', '兴平市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3104', '3', '610502', '临渭区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3105', '3', '610503', '华州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3106', '3', '610522', '潼关县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3107', '3', '610523', '大荔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3108', '3', '610524', '合阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3109', '3', '610525', '澄城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3110', '3', '610526', '蒲城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3111', '3', '610527', '白水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3112', '3', '610528', '富平县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3113', '3', '610581', '韩城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3114', '3', '610582', '华阴市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3115', '3', '610602', '宝塔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3116', '3', '610603', '安塞区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3117', '3', '610621', '延长县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3118', '3', '610622', '延川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3119', '3', '610623', '子长县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3120', '3', '610625', '志丹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3121', '3', '610626', '吴起县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3122', '3', '610627', '甘泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3123', '3', '610628', '富县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3124', '3', '610629', '洛川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3125', '3', '610630', '宜川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3126', '3', '610631', '黄龙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3127', '3', '610632', '黄陵县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3128', '3', '610702', '汉台区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3129', '3', '610721', '南郑县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3130', '3', '610722', '城固县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3131', '3', '610723', '洋县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3132', '3', '610724', '西乡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3133', '3', '610725', '勉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3134', '3', '610726', '宁强县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3135', '3', '610727', '略阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3136', '3', '610728', '镇巴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3137', '3', '610729', '留坝县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3138', '3', '610730', '佛坪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3139', '3', '610802', '榆阳区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3140', '3', '610803', '横山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3141', '3', '610821', '神木县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3142', '3', '610822', '府谷县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3143', '3', '610824', '靖边县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3144', '3', '610825', '定边县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3145', '3', '610826', '绥德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3146', '3', '610827', '米脂县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3147', '3', '610828', '佳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3148', '3', '610829', '吴堡县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3149', '3', '610830', '清涧县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3150', '3', '610831', '子洲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3151', '3', '610902', '汉滨区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3152', '3', '610921', '汉阴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3153', '3', '610922', '石泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3154', '3', '610923', '宁陕县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3155', '3', '610924', '紫阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3156', '3', '610925', '岚皋县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3157', '3', '610926', '平利县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3158', '3', '610927', '镇坪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3159', '3', '610928', '旬阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3160', '3', '610929', '白河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3161', '3', '611002', '商州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3162', '3', '611021', '洛南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3163', '3', '611022', '丹凤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3164', '3', '611023', '商南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3165', '3', '611024', '山阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3166', '3', '611025', '镇安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3167', '3', '611026', '柞水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3168', '3', '620102', '城关区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3169', '3', '620103', '七里河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3170', '3', '620104', '西固区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3171', '3', '620105', '安宁区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3172', '3', '620111', '红古区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3173', '3', '620121', '永登县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3174', '3', '620122', '皋兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3175', '3', '620123', '榆中县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3176', '3', '620201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3177', '3', '620302', '金川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3178', '3', '620321', '永昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3179', '3', '620402', '白银区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3180', '3', '620403', '平川区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3181', '3', '620421', '靖远县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3182', '3', '620422', '会宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3183', '3', '620423', '景泰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3184', '3', '620502', '秦州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3185', '3', '620503', '麦积区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3186', '3', '620521', '清水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3187', '3', '620522', '秦安县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3188', '3', '620523', '甘谷县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3189', '3', '620524', '武山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3190', '3', '620525', '张家川回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3191', '3', '620602', '凉州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3192', '3', '620621', '民勤县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3193', '3', '620622', '古浪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3194', '3', '620623', '天祝藏族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3195', '3', '620702', '甘州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3196', '3', '620721', '肃南裕固族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3197', '3', '620722', '民乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3198', '3', '620723', '临泽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3199', '3', '620724', '高台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3200', '3', '620725', '山丹县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3201', '3', '620802', '崆峒区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3202', '3', '620821', '泾川县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3203', '3', '620822', '灵台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3204', '3', '620823', '崇信县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3205', '3', '620824', '华亭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3206', '3', '620825', '庄浪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3207', '3', '620826', '静宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3208', '3', '620902', '肃州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3209', '3', '620921', '金塔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3210', '3', '620922', '瓜州县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3211', '3', '620923', '肃北蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3212', '3', '620924', '阿克塞哈萨克族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3213', '3', '620981', '玉门市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3214', '3', '620982', '敦煌市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3215', '3', '621002', '西峰区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3216', '3', '621021', '庆城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3217', '3', '621022', '环县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3218', '3', '621023', '华池县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3219', '3', '621024', '合水县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3220', '3', '621025', '正宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3221', '3', '621026', '宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3222', '3', '621027', '镇原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3223', '3', '621102', '安定区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3224', '3', '621121', '通渭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3225', '3', '621122', '陇西县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3226', '3', '621123', '渭源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3227', '3', '621124', '临洮县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3228', '3', '621125', '漳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3229', '3', '621126', '岷县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3230', '3', '621202', '武都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3231', '3', '621221', '成县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3232', '3', '621222', '文县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3233', '3', '621223', '宕昌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3234', '3', '621224', '康县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3235', '3', '621225', '西和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3236', '3', '621226', '礼县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3237', '3', '621227', '徽县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3238', '3', '621228', '两当县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3239', '3', '622901', '临夏市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3240', '3', '622921', '临夏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3241', '3', '622922', '康乐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3242', '3', '622923', '永靖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3243', '3', '622924', '广河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3244', '3', '622925', '和政县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3245', '3', '622926', '东乡族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3246', '3', '622927', '积石山保安族东乡族撒拉族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3247', '3', '623001', '合作市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3248', '3', '623021', '临潭县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3249', '3', '623022', '卓尼县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3250', '3', '623023', '舟曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3251', '3', '623024', '迭部县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3252', '3', '623025', '玛曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3253', '3', '623026', '碌曲县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3254', '3', '623027', '夏河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3255', '3', '630102', '城东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3256', '3', '630103', '城中区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3257', '3', '630104', '城西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3258', '3', '630105', '城北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3259', '3', '630121', '大通回族土族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3260', '3', '630122', '湟中县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3261', '3', '630123', '湟源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3262', '3', '630202', '乐都区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3263', '3', '630203', '平安区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3264', '3', '630222', '民和回族土族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3265', '3', '630223', '互助土族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3266', '3', '630224', '化隆回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3267', '3', '630225', '循化撒拉族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3268', '3', '632221', '门源回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3269', '3', '632222', '祁连县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3270', '3', '632223', '海晏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3271', '3', '632224', '刚察县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3272', '3', '632321', '同仁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3273', '3', '632322', '尖扎县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3274', '3', '632323', '泽库县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3275', '3', '632324', '河南蒙古族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3276', '3', '632521', '共和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3277', '3', '632522', '同德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3278', '3', '632523', '贵德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3279', '3', '632524', '兴海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3280', '3', '632525', '贵南县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3281', '3', '632621', '玛沁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3282', '3', '632622', '班玛县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3283', '3', '632623', '甘德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3284', '3', '632624', '达日县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3285', '3', '632625', '久治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3286', '3', '632626', '玛多县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3287', '3', '632701', '玉树市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3288', '3', '632722', '杂多县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3289', '3', '632723', '称多县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3290', '3', '632724', '治多县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3291', '3', '632725', '囊谦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3292', '3', '632726', '曲麻莱县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3293', '3', '632801', '格尔木市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3294', '3', '632802', '德令哈市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3295', '3', '632821', '乌兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3296', '3', '632822', '都兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3297', '3', '632823', '天峻县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3298', '3', '640104', '兴庆区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3299', '3', '640105', '西夏区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3300', '3', '640106', '金凤区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3301', '3', '640121', '永宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3302', '3', '640122', '贺兰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3303', '3', '640181', '灵武市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3304', '3', '640202', '大武口区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3305', '3', '640205', '惠农区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3306', '3', '640221', '平罗县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3307', '3', '640302', '利通区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3308', '3', '640303', '红寺堡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3309', '3', '640323', '盐池县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3310', '3', '640324', '同心县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3311', '3', '640381', '青铜峡市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3312', '3', '640402', '原州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3313', '3', '640422', '西吉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3314', '3', '640423', '隆德县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3315', '3', '640424', '泾源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3316', '3', '640425', '彭阳县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3317', '3', '640502', '沙坡头区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3318', '3', '640521', '中宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3319', '3', '640522', '海原县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3320', '3', '650102', '天山区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3321', '3', '650103', '沙依巴克区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3322', '3', '650104', '新市区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3323', '3', '650105', '水磨沟区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3324', '3', '650106', '头屯河区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3325', '3', '650107', '达坂城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3326', '3', '650109', '米东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3327', '3', '650121', '乌鲁木齐县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3328', '3', '650202', '独山子区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3329', '3', '650203', '克拉玛依区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3330', '3', '650204', '白碱滩区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3331', '3', '650205', '乌尔禾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3332', '3', '650402', '高昌区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3333', '3', '650421', '鄯善县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3334', '3', '650422', '托克逊县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3335', '3', '650502', '伊州区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3336', '3', '650521', '巴里坤哈萨克自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3337', '3', '650522', '伊吾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3338', '3', '652301', '昌吉市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3339', '3', '652302', '阜康市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3340', '3', '652323', '呼图壁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3341', '3', '652324', '玛纳斯县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3342', '3', '652325', '奇台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3343', '3', '652327', '吉木萨尔县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3344', '3', '652328', '木垒哈萨克自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3345', '3', '652701', '博乐市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3346', '3', '652702', '阿拉山口市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3347', '3', '652722', '精河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3348', '3', '652723', '温泉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3349', '3', '652801', '库尔勒市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3350', '3', '652822', '轮台县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3351', '3', '652823', '尉犁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3352', '3', '652824', '若羌县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3353', '3', '652825', '且末县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3354', '3', '652826', '焉耆回族自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3355', '3', '652827', '和静县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3356', '3', '652828', '和硕县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3357', '3', '652829', '博湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3358', '3', '652901', '阿克苏市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3359', '3', '652922', '温宿县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3360', '3', '652923', '库车县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3361', '3', '652924', '沙雅县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3362', '3', '652925', '新和县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3363', '3', '652926', '拜城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3364', '3', '652927', '乌什县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3365', '3', '652928', '阿瓦提县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3366', '3', '652929', '柯坪县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3367', '3', '653001', '阿图什市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3368', '3', '653022', '阿克陶县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3369', '3', '653023', '阿合奇县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3370', '3', '653024', '乌恰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3371', '3', '653101', '喀什市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3372', '3', '653121', '疏附县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3373', '3', '653122', '疏勒县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3374', '3', '653123', '英吉沙县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3375', '3', '653124', '泽普县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3376', '3', '653125', '莎车县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3377', '3', '653126', '叶城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3378', '3', '653127', '麦盖提县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3379', '3', '653128', '岳普湖县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3380', '3', '653129', '伽师县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3381', '3', '653130', '巴楚县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3382', '3', '653131', '塔什库尔干塔吉克自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3383', '3', '653201', '和田市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3384', '3', '653221', '和田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3385', '3', '653222', '墨玉县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3386', '3', '653223', '皮山县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3387', '3', '653224', '洛浦县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3388', '3', '653225', '策勒县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3389', '3', '653226', '于田县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3390', '3', '653227', '民丰县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3391', '3', '654002', '伊宁市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3392', '3', '654003', '奎屯市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3393', '3', '654004', '霍尔果斯市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3394', '3', '654021', '伊宁县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3395', '3', '654022', '察布查尔锡伯自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3396', '3', '654023', '霍城县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3397', '3', '654024', '巩留县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3398', '3', '654025', '新源县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3399', '3', '654026', '昭苏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3400', '3', '654027', '特克斯县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3401', '3', '654028', '尼勒克县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3402', '3', '654201', '塔城市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3403', '3', '654202', '乌苏市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3404', '3', '654221', '额敏县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3405', '3', '654223', '沙湾县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3406', '3', '654224', '托里县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3407', '3', '654225', '裕民县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3408', '3', '654226', '和布克赛尔蒙古自治县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3409', '3', '654301', '阿勒泰市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3410', '3', '654321', '布尔津县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3411', '3', '654322', '富蕴县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3412', '3', '654323', '福海县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3413', '3', '654324', '哈巴河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3414', '3', '654325', '青河县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3415', '3', '654326', '吉木乃县', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3416', '3', '659001', '石河子市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3417', '3', '659002', '阿拉尔市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3418', '3', '659003', '图木舒克市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3419', '3', '659004', '五家渠市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3420', '3', '659006', '铁门关市', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3421', '3', '710101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3422', '3', '710201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3423', '3', '710301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3424', '3', '710401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3425', '3', '710501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3426', '3', '710601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3427', '3', '710701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3428', '3', '710801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3429', '3', '710901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3430', '3', '711001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3431', '3', '711101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3432', '3', '711201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3433', '3', '711301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3434', '3', '711401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3435', '3', '711501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3436', '3', '711601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3437', '3', '711701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3438', '3', '711801', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3439', '3', '711901', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3440', '3', '712001', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3441', '3', '712101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3442', '3', '712201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3443', '3', '810101', '中西区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3444', '3', '810102', '湾仔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3445', '3', '810103', '东区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3446', '3', '810104', '南区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3447', '3', '810201', '油尖旺区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3448', '3', '810202', '深水埗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3449', '3', '810203', '九龙城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3450', '3', '810204', '黄大仙区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3451', '3', '810205', '观塘区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3452', '3', '810301', '北区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3453', '3', '810302', '大埔区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3454', '3', '810303', '沙田区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3455', '3', '810304', '西贡区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3456', '3', '810305', '荃湾区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3457', '3', '810306', '屯门区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3458', '3', '810307', '元朗区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3459', '3', '810308', '葵青区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3460', '3', '810309', '离岛区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3461', '3', '820101', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3462', '3', '820201', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3463', '3', '820301', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3464', '3', '820401', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3465', '3', '820501', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3466', '3', '820601', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3467', '3', '820701', '城区', '1', '0', null, null);
INSERT INTO `c2_region` VALUES ('3468', '3', '820801', '城区', '1', '0', null, null);

-- ----------------------------
-- Table structure for c2_region_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_region_rs`;
CREATE TABLE `c2_region_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0',
  `child_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`parent_id`) USING BTREE,
  KEY `Index_2` (`child_id`) USING BTREE,
  KEY `Index_3` (`parent_id`,`child_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3435 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of c2_region_rs
-- ----------------------------
INSERT INTO `c2_region_rs` VALUES ('1', '1', '35', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2', '1', '36', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3', '1', '37', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('4', '1', '38', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('5', '1', '39', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('6', '1', '40', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('7', '1', '41', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('8', '1', '42', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('9', '1', '43', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('10', '1', '44', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('11', '1', '45', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('12', '1', '46', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('13', '1', '47', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('14', '1', '48', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('15', '1', '49', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('16', '1', '50', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('17', '2', '51', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('18', '2', '52', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('19', '2', '53', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('20', '2', '54', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('21', '2', '55', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('22', '2', '56', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('23', '2', '57', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('24', '2', '58', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('25', '2', '59', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('26', '2', '60', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('27', '2', '61', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('28', '2', '62', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('29', '2', '63', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('30', '2', '64', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('31', '2', '65', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('32', '2', '66', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('33', '3', '67', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('34', '3', '68', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('35', '3', '69', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('36', '3', '70', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('37', '3', '71', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('38', '3', '72', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('39', '3', '73', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('40', '3', '74', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('41', '3', '75', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('42', '3', '76', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('43', '3', '77', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('44', '3', '78', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('45', '4', '79', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('46', '4', '80', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('47', '4', '81', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('48', '4', '82', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('49', '4', '83', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('50', '4', '84', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('51', '4', '85', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('52', '4', '86', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('53', '4', '87', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('54', '4', '88', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('55', '4', '89', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('56', '5', '90', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('57', '5', '91', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('58', '5', '92', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('59', '5', '93', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('60', '5', '94', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('61', '5', '95', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('62', '5', '96', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('63', '5', '97', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('64', '5', '98', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('65', '5', '99', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('66', '5', '100', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('67', '5', '101', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('68', '6', '102', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('69', '6', '103', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('70', '6', '104', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('71', '6', '105', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('72', '6', '106', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('73', '6', '107', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('74', '6', '108', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('75', '6', '109', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('76', '6', '110', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('77', '6', '111', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('78', '6', '112', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('79', '6', '113', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('80', '6', '114', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('81', '6', '115', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('82', '7', '116', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('83', '7', '117', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('84', '7', '118', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('85', '7', '119', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('86', '7', '120', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('87', '7', '121', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('88', '7', '122', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('89', '7', '123', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('90', '7', '124', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('91', '8', '125', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('92', '8', '126', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('93', '8', '127', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('94', '8', '128', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('95', '8', '129', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('96', '8', '130', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('97', '8', '131', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('98', '8', '132', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('99', '8', '133', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('100', '8', '134', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('101', '8', '135', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('102', '8', '136', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('103', '8', '137', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('104', '9', '138', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('105', '9', '139', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('106', '9', '140', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('107', '9', '141', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('108', '9', '142', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('109', '9', '143', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('110', '9', '144', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('111', '9', '145', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('112', '9', '146', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('113', '9', '147', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('114', '9', '148', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('115', '9', '149', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('116', '9', '150', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('117', '9', '151', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('118', '9', '152', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('119', '9', '153', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('120', '10', '154', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('121', '10', '155', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('122', '10', '156', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('123', '10', '157', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('124', '10', '158', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('125', '10', '159', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('126', '10', '160', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('127', '10', '161', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('128', '10', '162', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('129', '10', '163', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('130', '10', '164', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('131', '10', '165', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('132', '10', '166', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('133', '11', '167', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('134', '11', '168', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('135', '11', '169', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('136', '11', '170', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('137', '11', '171', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('138', '11', '172', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('139', '11', '173', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('140', '11', '174', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('141', '11', '175', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('142', '11', '176', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('143', '11', '177', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('144', '12', '178', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('145', '12', '179', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('146', '12', '180', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('147', '12', '181', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('148', '12', '182', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('149', '12', '183', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('150', '12', '184', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('151', '12', '185', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('152', '12', '186', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('153', '12', '187', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('154', '12', '188', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('155', '12', '189', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('156', '12', '190', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('157', '12', '191', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('158', '12', '192', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('159', '12', '193', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('160', '13', '194', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('161', '13', '195', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('162', '13', '196', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('163', '13', '197', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('164', '13', '198', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('165', '13', '199', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('166', '13', '200', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('167', '13', '201', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('168', '13', '202', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('169', '14', '203', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('170', '14', '204', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('171', '14', '205', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('172', '14', '206', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('173', '14', '207', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('174', '14', '208', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('175', '14', '209', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('176', '14', '210', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('177', '14', '211', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('178', '14', '212', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('179', '14', '213', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('180', '15', '214', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('181', '15', '215', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('182', '15', '216', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('183', '15', '217', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('184', '15', '218', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('185', '15', '219', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('186', '15', '220', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('187', '15', '221', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('188', '15', '222', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('189', '15', '223', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('190', '15', '224', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('191', '15', '225', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('192', '15', '226', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('193', '15', '227', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('194', '15', '228', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('195', '15', '229', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('196', '15', '230', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('197', '16', '231', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('198', '16', '232', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('199', '16', '233', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('200', '16', '234', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('201', '16', '235', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('202', '16', '236', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('203', '16', '237', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('204', '16', '238', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('205', '16', '239', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('206', '16', '240', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('207', '16', '241', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('208', '16', '242', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('209', '16', '243', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('210', '16', '244', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('211', '16', '245', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('212', '16', '246', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('213', '16', '247', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('214', '16', '248', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('215', '17', '249', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('216', '17', '250', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('217', '17', '251', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('218', '17', '252', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('219', '17', '253', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('220', '17', '254', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('221', '17', '255', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('222', '17', '256', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('223', '17', '257', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('224', '17', '258', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('225', '17', '259', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('226', '17', '260', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('227', '17', '261', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('228', '17', '262', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('229', '18', '263', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('230', '18', '264', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('231', '18', '265', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('232', '18', '266', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('233', '18', '267', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('234', '18', '268', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('235', '18', '269', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('236', '18', '270', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('237', '18', '271', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('238', '18', '272', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('239', '18', '273', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('240', '18', '274', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('241', '18', '275', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('242', '18', '276', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('243', '19', '277', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('244', '19', '278', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('245', '19', '279', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('246', '19', '280', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('247', '19', '281', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('248', '19', '282', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('249', '19', '283', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('250', '19', '284', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('251', '19', '285', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('252', '19', '286', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('253', '19', '287', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('254', '19', '288', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('255', '19', '289', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('256', '19', '290', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('257', '19', '291', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('258', '19', '292', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('259', '19', '293', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('260', '19', '294', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('261', '19', '295', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('262', '19', '296', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('263', '19', '297', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('264', '20', '298', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('265', '20', '299', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('266', '20', '300', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('267', '20', '301', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('268', '20', '302', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('269', '20', '303', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('270', '20', '304', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('271', '20', '305', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('272', '20', '306', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('273', '20', '307', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('274', '20', '308', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('275', '20', '309', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('276', '20', '310', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('277', '20', '311', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('278', '21', '312', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('279', '21', '313', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('280', '21', '314', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('281', '21', '315', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('282', '21', '316', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('283', '22', '317', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('284', '22', '318', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('285', '22', '319', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('286', '22', '320', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('287', '22', '321', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('288', '22', '322', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('289', '22', '323', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('290', '22', '324', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('291', '22', '325', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('292', '22', '326', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('293', '22', '327', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('294', '22', '328', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('295', '22', '329', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('296', '22', '330', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('297', '22', '331', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('298', '22', '332', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('299', '22', '333', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('300', '22', '334', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('301', '22', '335', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('302', '22', '336', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('303', '22', '337', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('304', '22', '338', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('305', '22', '339', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('306', '22', '340', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('307', '22', '341', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('308', '22', '342', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('309', '22', '343', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('310', '22', '344', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('311', '22', '345', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('312', '22', '346', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('313', '22', '347', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('314', '22', '348', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('315', '22', '349', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('316', '22', '350', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('317', '22', '351', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('318', '22', '352', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('319', '22', '353', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('320', '22', '354', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('321', '23', '355', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('322', '23', '356', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('323', '23', '357', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('324', '23', '358', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('325', '23', '359', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('326', '23', '360', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('327', '23', '361', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('328', '23', '362', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('329', '23', '363', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('330', '23', '364', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('331', '23', '365', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('332', '23', '366', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('333', '23', '367', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('334', '23', '368', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('335', '23', '369', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('336', '23', '370', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('337', '23', '371', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('338', '23', '372', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('339', '23', '373', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('340', '23', '374', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('341', '23', '375', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('342', '24', '376', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('343', '24', '377', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('344', '24', '378', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('345', '24', '379', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('346', '24', '380', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('347', '24', '381', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('348', '24', '382', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('349', '24', '383', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('350', '24', '384', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('351', '25', '385', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('352', '25', '386', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('353', '25', '387', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('354', '25', '388', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('355', '25', '389', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('356', '25', '390', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('357', '25', '391', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('358', '25', '392', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('359', '25', '393', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('360', '25', '394', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('361', '25', '395', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('362', '25', '396', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('363', '25', '397', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('364', '25', '398', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('365', '25', '399', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('366', '25', '400', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('367', '26', '401', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('368', '26', '402', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('369', '26', '403', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('370', '26', '404', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('371', '26', '405', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('372', '26', '406', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('373', '26', '407', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('374', '27', '408', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('375', '27', '409', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('376', '27', '410', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('377', '27', '411', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('378', '27', '412', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('379', '27', '413', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('380', '27', '414', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('381', '27', '415', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('382', '27', '416', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('383', '27', '417', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('384', '28', '418', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('385', '28', '419', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('386', '28', '420', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('387', '28', '421', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('388', '28', '422', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('389', '28', '423', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('390', '28', '424', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('391', '28', '425', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('392', '28', '426', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('393', '28', '427', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('394', '28', '428', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('395', '28', '429', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('396', '28', '430', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('397', '28', '431', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('398', '29', '432', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('399', '29', '433', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('400', '29', '434', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('401', '29', '435', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('402', '29', '436', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('403', '29', '437', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('404', '29', '438', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('405', '29', '439', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('406', '30', '440', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('407', '30', '441', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('408', '30', '442', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('409', '30', '443', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('410', '30', '444', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('411', '31', '445', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('412', '31', '446', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('413', '31', '447', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('414', '31', '448', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('415', '31', '449', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('416', '31', '450', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('417', '31', '451', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('418', '31', '452', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('419', '31', '453', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('420', '31', '454', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('421', '31', '455', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('422', '31', '456', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('423', '31', '457', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('424', '31', '458', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('425', '31', '459', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('426', '32', '460', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('427', '32', '461', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('428', '32', '462', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('429', '32', '463', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('430', '32', '464', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('431', '32', '465', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('432', '32', '466', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('433', '32', '467', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('434', '32', '468', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('435', '32', '469', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('436', '32', '470', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('437', '32', '471', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('438', '32', '472', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('439', '32', '473', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('440', '32', '474', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('441', '32', '475', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('442', '32', '476', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('443', '32', '477', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('444', '32', '478', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('445', '32', '479', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('446', '32', '480', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('447', '32', '481', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('448', '33', '482', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('449', '33', '483', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('450', '33', '484', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('451', '34', '485', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('452', '34', '486', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('453', '34', '487', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('454', '34', '488', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('455', '34', '489', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('456', '34', '490', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('457', '34', '491', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('458', '34', '492', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('459', '35', '493', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('460', '36', '494', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('461', '40', '495', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('462', '39', '496', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('463', '41', '497', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('464', '43', '498', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('465', '42', '499', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('466', '44', '500', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('467', '38', '501', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('468', '37', '502', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('469', '45', '503', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('470', '46', '504', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('471', '48', '505', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('472', '47', '506', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('473', '50', '507', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('474', '49', '508', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('475', '52', '509', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('476', '51', '510', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('477', '54', '511', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('478', '55', '512', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('479', '56', '513', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('480', '59', '514', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('481', '62', '515', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('482', '63', '516', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('483', '53', '517', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('484', '57', '518', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('485', '64', '519', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('486', '66', '520', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('487', '65', '521', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('488', '60', '522', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('489', '61', '523', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('490', '58', '524', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('491', '67', '525', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('492', '67', '526', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('493', '67', '527', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('494', '67', '528', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('495', '67', '529', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('496', '67', '530', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('497', '67', '531', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('498', '67', '532', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('499', '67', '533', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('500', '67', '534', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('501', '67', '535', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('502', '67', '536', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('503', '67', '537', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('504', '67', '538', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('505', '67', '539', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('506', '67', '540', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('507', '67', '541', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('508', '67', '542', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('509', '67', '543', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('510', '67', '544', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('511', '67', '545', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('512', '68', '546', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('513', '68', '547', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('514', '68', '548', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('515', '68', '549', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('516', '68', '550', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('517', '68', '551', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('518', '68', '552', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('519', '68', '553', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('520', '68', '554', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('521', '68', '555', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('522', '68', '556', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('523', '68', '557', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('524', '68', '558', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('525', '68', '559', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('526', '69', '560', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('527', '69', '561', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('528', '69', '562', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('529', '69', '563', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('530', '69', '564', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('531', '69', '565', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('532', '69', '566', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('533', '70', '567', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('534', '70', '568', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('535', '70', '569', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('536', '70', '570', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('537', '70', '571', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('538', '70', '572', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('539', '70', '573', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('540', '70', '574', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('541', '70', '575', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('542', '70', '576', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('543', '70', '577', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('544', '70', '578', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('545', '70', '579', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('546', '70', '580', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('547', '70', '581', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('548', '70', '582', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('549', '70', '583', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('550', '70', '584', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('551', '70', '585', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('552', '71', '586', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('553', '71', '587', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('554', '71', '588', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('555', '71', '589', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('556', '71', '590', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('557', '71', '591', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('558', '71', '592', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('559', '71', '593', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('560', '71', '594', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('561', '71', '595', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('562', '71', '596', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('563', '71', '597', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('564', '71', '598', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('565', '71', '599', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('566', '71', '600', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('567', '71', '601', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('568', '71', '602', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('569', '71', '603', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('570', '71', '604', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('571', '72', '605', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('572', '72', '606', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('573', '72', '607', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('574', '72', '608', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('575', '72', '609', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('576', '72', '610', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('577', '72', '611', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('578', '72', '612', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('579', '72', '613', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('580', '72', '614', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('581', '72', '615', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('582', '72', '616', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('583', '72', '617', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('584', '72', '618', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('585', '72', '619', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('586', '72', '620', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('587', '72', '621', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('588', '72', '622', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('589', '72', '623', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('590', '72', '624', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('591', '72', '625', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('592', '72', '626', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('593', '72', '627', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('594', '73', '628', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('595', '73', '629', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('596', '73', '630', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('597', '73', '631', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('598', '73', '632', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('599', '73', '633', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('600', '73', '634', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('601', '73', '635', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('602', '73', '636', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('603', '73', '637', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('604', '73', '638', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('605', '73', '639', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('606', '73', '640', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('607', '73', '641', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('608', '73', '642', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('609', '73', '643', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('610', '74', '644', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('611', '74', '645', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('612', '74', '646', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('613', '74', '647', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('614', '74', '648', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('615', '74', '649', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('616', '74', '650', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('617', '74', '651', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('618', '74', '652', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('619', '74', '653', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('620', '74', '654', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('621', '75', '655', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('622', '75', '656', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('623', '75', '657', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('624', '75', '658', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('625', '75', '659', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('626', '75', '660', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('627', '75', '661', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('628', '75', '662', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('629', '75', '663', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('630', '75', '664', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('631', '75', '665', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('632', '75', '666', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('633', '75', '667', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('634', '75', '668', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('635', '75', '669', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('636', '75', '670', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('637', '76', '671', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('638', '76', '672', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('639', '76', '673', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('640', '76', '674', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('641', '76', '675', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('642', '76', '676', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('643', '76', '677', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('644', '76', '678', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('645', '76', '679', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('646', '76', '680', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('647', '77', '681', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('648', '77', '682', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('649', '77', '683', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('650', '77', '684', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('651', '77', '685', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('652', '77', '686', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('653', '77', '687', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('654', '77', '688', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('655', '77', '689', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('656', '77', '690', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('657', '77', '691', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('658', '78', '692', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('659', '78', '693', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('660', '79', '694', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('661', '79', '695', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('662', '79', '696', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('663', '79', '697', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('664', '79', '698', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('665', '79', '699', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('666', '79', '700', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('667', '79', '701', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('668', '79', '702', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('669', '79', '703', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('670', '80', '704', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('671', '80', '705', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('672', '80', '706', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('673', '80', '707', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('674', '80', '708', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('675', '80', '709', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('676', '80', '710', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('677', '80', '711', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('678', '80', '712', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('679', '80', '713', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('680', '80', '714', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('681', '81', '715', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('682', '81', '716', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('683', '81', '717', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('684', '81', '718', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('685', '81', '719', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('686', '82', '720', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('687', '82', '721', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('688', '82', '722', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('689', '82', '723', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('690', '82', '724', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('691', '82', '725', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('692', '82', '726', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('693', '82', '727', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('694', '82', '728', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('695', '82', '729', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('696', '82', '730', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('697', '82', '731', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('698', '82', '732', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('699', '83', '733', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('700', '83', '734', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('701', '83', '735', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('702', '83', '736', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('703', '83', '737', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('704', '83', '738', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('705', '84', '739', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('706', '84', '740', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('707', '84', '741', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('708', '84', '742', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('709', '84', '743', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('710', '84', '744', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('711', '85', '745', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('712', '85', '746', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('713', '85', '747', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('714', '85', '748', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('715', '85', '749', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('716', '85', '750', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('717', '85', '751', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('718', '85', '752', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('719', '85', '753', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('720', '85', '754', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('721', '85', '755', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('722', '86', '756', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('723', '86', '757', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('724', '86', '758', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('725', '86', '759', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('726', '86', '760', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('727', '86', '761', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('728', '86', '762', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('729', '86', '763', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('730', '86', '764', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('731', '86', '765', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('732', '86', '766', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('733', '86', '767', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('734', '86', '768', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('735', '87', '769', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('736', '87', '770', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('737', '87', '771', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('738', '87', '772', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('739', '87', '773', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('740', '87', '774', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('741', '87', '775', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('742', '87', '776', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('743', '87', '777', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('744', '87', '778', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('745', '87', '779', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('746', '87', '780', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('747', '87', '781', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('748', '87', '782', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('749', '88', '783', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('750', '88', '784', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('751', '88', '785', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('752', '88', '786', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('753', '88', '787', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('754', '88', '788', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('755', '88', '789', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('756', '88', '790', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('757', '88', '791', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('758', '88', '792', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('759', '88', '793', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('760', '88', '794', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('761', '88', '795', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('762', '88', '796', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('763', '88', '797', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('764', '88', '798', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('765', '88', '799', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('766', '89', '800', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('767', '89', '801', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('768', '89', '802', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('769', '89', '803', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('770', '89', '804', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('771', '89', '805', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('772', '89', '806', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('773', '89', '807', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('774', '89', '808', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('775', '89', '809', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('776', '89', '810', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('777', '89', '811', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('778', '89', '812', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('779', '90', '813', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('780', '90', '814', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('781', '90', '815', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('782', '90', '816', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('783', '90', '817', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('784', '90', '818', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('785', '90', '819', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('786', '90', '820', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('787', '90', '821', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('788', '91', '822', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('789', '91', '823', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('790', '91', '824', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('791', '91', '825', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('792', '91', '826', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('793', '91', '827', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('794', '91', '828', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('795', '91', '829', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('796', '91', '830', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('797', '92', '831', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('798', '92', '832', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('799', '92', '833', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('800', '93', '834', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('801', '93', '835', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('802', '93', '836', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('803', '93', '837', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('804', '93', '838', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('805', '93', '839', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('806', '93', '840', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('807', '93', '841', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('808', '93', '842', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('809', '93', '843', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('810', '93', '844', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('811', '93', '845', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('812', '94', '846', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('813', '94', '847', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('814', '94', '848', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('815', '94', '849', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('816', '94', '850', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('817', '94', '851', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('818', '94', '852', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('819', '94', '853', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('820', '95', '854', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('821', '95', '855', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('822', '95', '856', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('823', '95', '857', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('824', '95', '858', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('825', '95', '859', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('826', '95', '860', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('827', '95', '861', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('828', '95', '862', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('829', '96', '863', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('830', '96', '864', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('831', '96', '865', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('832', '96', '866', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('833', '96', '867', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('834', '96', '868', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('835', '96', '869', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('836', '96', '870', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('837', '96', '871', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('838', '96', '872', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('839', '96', '873', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('840', '96', '874', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('841', '96', '875', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('842', '96', '876', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('843', '97', '877', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('844', '97', '878', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('845', '97', '879', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('846', '97', '880', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('847', '97', '881', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('848', '97', '882', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('849', '97', '883', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('850', '98', '884', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('851', '98', '885', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('852', '98', '886', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('853', '98', '887', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('854', '98', '888', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('855', '98', '889', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('856', '98', '890', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('857', '98', '891', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('858', '98', '892', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('859', '98', '893', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('860', '98', '894', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('861', '99', '895', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('862', '99', '896', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('863', '99', '897', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('864', '99', '898', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('865', '99', '899', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('866', '99', '900', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('867', '100', '901', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('868', '100', '902', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('869', '100', '903', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('870', '100', '904', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('871', '100', '905', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('872', '100', '906', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('873', '100', '907', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('874', '100', '908', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('875', '100', '909', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('876', '100', '910', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('877', '100', '911', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('878', '100', '912', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('879', '101', '913', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('880', '101', '914', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('881', '101', '915', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('882', '102', '916', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('883', '102', '917', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('884', '102', '918', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('885', '102', '919', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('886', '102', '920', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('887', '102', '921', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('888', '102', '922', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('889', '102', '923', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('890', '102', '924', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('891', '102', '925', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('892', '102', '926', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('893', '102', '927', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('894', '102', '928', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('895', '103', '929', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('896', '103', '930', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('897', '103', '931', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('898', '103', '932', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('899', '103', '933', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('900', '103', '934', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('901', '103', '935', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('902', '103', '936', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('903', '103', '937', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('904', '103', '938', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('905', '104', '939', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('906', '104', '940', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('907', '104', '941', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('908', '104', '942', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('909', '104', '943', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('910', '104', '944', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('911', '104', '945', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('912', '105', '946', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('913', '105', '947', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('914', '105', '948', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('915', '105', '949', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('916', '105', '950', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('917', '105', '951', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('918', '105', '952', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('919', '106', '953', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('920', '106', '954', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('921', '106', '955', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('922', '106', '956', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('923', '106', '957', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('924', '106', '958', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('925', '107', '959', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('926', '107', '960', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('927', '107', '961', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('928', '107', '962', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('929', '107', '963', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('930', '107', '964', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('931', '108', '965', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('932', '108', '966', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('933', '108', '967', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('934', '108', '968', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('935', '108', '969', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('936', '108', '970', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('937', '108', '971', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('938', '109', '972', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('939', '109', '973', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('940', '109', '974', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('941', '109', '975', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('942', '109', '976', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('943', '109', '977', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('944', '110', '978', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('945', '110', '979', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('946', '110', '980', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('947', '110', '981', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('948', '110', '982', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('949', '110', '983', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('950', '110', '984', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('951', '111', '985', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('952', '111', '986', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('953', '111', '987', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('954', '111', '988', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('955', '111', '989', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('956', '111', '990', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('957', '111', '991', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('958', '112', '992', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('959', '112', '993', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('960', '112', '994', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('961', '112', '995', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('962', '113', '996', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('963', '113', '997', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('964', '113', '998', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('965', '113', '999', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('966', '113', '1000', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('967', '113', '1001', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('968', '113', '1002', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('969', '114', '1003', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('970', '114', '1004', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('971', '114', '1005', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('972', '114', '1006', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('973', '114', '1007', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('974', '114', '1008', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('975', '114', '1009', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('976', '115', '1010', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('977', '115', '1011', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('978', '115', '1012', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('979', '115', '1013', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('980', '115', '1014', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('981', '115', '1015', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('982', '116', '1016', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('983', '116', '1017', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('984', '116', '1018', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('985', '116', '1019', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('986', '116', '1020', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('987', '116', '1021', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('988', '116', '1022', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('989', '116', '1023', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('990', '116', '1024', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('991', '116', '1025', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('992', '117', '1026', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('993', '117', '1027', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('994', '117', '1028', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('995', '117', '1029', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('996', '117', '1030', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('997', '117', '1031', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('998', '117', '1032', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('999', '117', '1033', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1000', '117', '1034', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1001', '118', '1035', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1002', '118', '1036', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1003', '118', '1037', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1004', '118', '1038', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1005', '118', '1039', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1006', '118', '1040', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1007', '119', '1041', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1008', '119', '1042', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1009', '119', '1043', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1010', '119', '1044', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1011', '120', '1045', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1012', '120', '1046', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1013', '120', '1047', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1014', '120', '1048', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1015', '120', '1049', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1016', '120', '1050', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1017', '120', '1051', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1018', '121', '1052', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1019', '121', '1053', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1020', '121', '1054', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1021', '121', '1055', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1022', '121', '1056', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1023', '121', '1057', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1024', '122', '1058', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1025', '122', '1059', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1026', '122', '1060', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1027', '122', '1061', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1028', '122', '1062', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1029', '123', '1063', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1030', '123', '1064', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1031', '123', '1065', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1032', '123', '1066', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1033', '123', '1067', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1034', '124', '1068', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1035', '124', '1069', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1036', '124', '1070', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1037', '124', '1071', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1038', '124', '1072', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1039', '124', '1073', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1040', '124', '1074', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1041', '124', '1075', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1042', '125', '1076', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1043', '125', '1077', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1044', '125', '1078', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1045', '125', '1079', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1046', '125', '1080', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1047', '125', '1081', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1048', '125', '1082', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1049', '125', '1083', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1050', '125', '1084', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1051', '125', '1085', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1052', '125', '1086', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1053', '125', '1087', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1054', '125', '1088', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1055', '125', '1089', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1056', '125', '1090', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1057', '125', '1091', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1058', '125', '1092', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1059', '125', '1093', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1060', '126', '1094', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1061', '126', '1095', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1062', '126', '1096', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1063', '126', '1097', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1064', '126', '1098', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1065', '126', '1099', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1066', '126', '1100', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1067', '126', '1101', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1068', '126', '1102', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1069', '126', '1103', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1070', '126', '1104', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1071', '126', '1105', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1072', '126', '1106', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1073', '126', '1107', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1074', '126', '1108', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1075', '126', '1109', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1076', '127', '1110', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1077', '127', '1111', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1078', '127', '1112', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1079', '127', '1113', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1080', '127', '1114', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1081', '127', '1115', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1082', '127', '1116', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1083', '127', '1117', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1084', '127', '1118', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1085', '128', '1119', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1086', '128', '1120', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1087', '128', '1121', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1088', '128', '1122', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1089', '128', '1123', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1090', '128', '1124', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1091', '128', '1125', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1092', '128', '1126', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1093', '129', '1127', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1094', '129', '1128', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1095', '129', '1129', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1096', '129', '1130', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1097', '129', '1131', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1098', '129', '1132', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1099', '129', '1133', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1100', '129', '1134', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1101', '130', '1135', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1102', '130', '1136', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1103', '130', '1137', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1104', '130', '1138', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1105', '130', '1139', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1106', '130', '1140', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1107', '130', '1141', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1108', '130', '1142', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1109', '130', '1143', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1110', '131', '1144', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1111', '131', '1145', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1112', '131', '1146', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1113', '131', '1147', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1114', '131', '1148', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1115', '131', '1149', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1116', '131', '1150', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1117', '131', '1151', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1118', '131', '1152', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1119', '131', '1153', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1120', '131', '1154', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1121', '131', '1155', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1122', '131', '1156', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1123', '131', '1157', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1124', '131', '1158', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1125', '131', '1159', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1126', '131', '1160', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1127', '132', '1161', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1128', '132', '1162', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1129', '132', '1163', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1130', '132', '1164', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1131', '132', '1165', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1132', '132', '1166', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1133', '132', '1167', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1134', '132', '1168', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1135', '132', '1169', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1136', '132', '1170', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1137', '133', '1171', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1138', '133', '1172', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1139', '133', '1173', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1140', '133', '1174', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1141', '134', '1175', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1142', '134', '1176', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1143', '134', '1177', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1144', '134', '1178', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1145', '134', '1179', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1146', '134', '1180', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1147', '134', '1181', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1148', '134', '1182', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1149', '134', '1183', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1150', '134', '1184', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1151', '135', '1185', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1152', '135', '1186', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1153', '135', '1187', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1154', '135', '1188', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1155', '135', '1189', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1156', '135', '1190', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1157', '136', '1191', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1158', '136', '1192', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1159', '136', '1193', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1160', '136', '1194', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1161', '136', '1195', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1162', '136', '1196', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1163', '136', '1197', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1164', '136', '1198', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1165', '136', '1199', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1166', '136', '1200', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1167', '137', '1201', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1168', '137', '1202', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1169', '137', '1203', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1170', '138', '1204', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1171', '139', '1205', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1172', '140', '1206', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1173', '142', '1207', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1174', '141', '1208', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1175', '143', '1209', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1176', '144', '1210', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1177', '145', '1211', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1178', '146', '1212', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1179', '147', '1213', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1180', '148', '1214', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1181', '149', '1215', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1182', '150', '1216', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1183', '151', '1217', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1184', '154', '1218', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1185', '154', '1219', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1186', '154', '1220', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1187', '154', '1221', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1188', '154', '1222', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1189', '154', '1223', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1190', '154', '1224', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1191', '154', '1225', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1192', '154', '1226', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1193', '154', '1227', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1194', '154', '1228', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1195', '155', '1229', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1196', '155', '1230', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1197', '155', '1231', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1198', '155', '1232', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1199', '155', '1233', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1200', '155', '1234', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1201', '155', '1235', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1202', '156', '1236', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1203', '156', '1237', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1204', '156', '1238', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1205', '156', '1239', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1206', '156', '1240', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1207', '156', '1241', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1208', '156', '1242', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1209', '156', '1243', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1210', '156', '1244', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1211', '156', '1245', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1212', '157', '1246', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1213', '157', '1247', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1214', '157', '1248', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1215', '157', '1249', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1216', '157', '1250', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1217', '157', '1251', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1218', '158', '1252', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1219', '158', '1253', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1220', '158', '1254', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1221', '158', '1255', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1222', '158', '1256', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1223', '158', '1257', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1224', '158', '1258', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1225', '158', '1259', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1226', '158', '1260', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1227', '159', '1261', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1228', '159', '1262', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1229', '159', '1263', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1230', '159', '1264', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1231', '159', '1265', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1232', '159', '1266', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1233', '159', '1267', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1234', '159', '1268', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1235', '160', '1269', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1236', '160', '1270', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1237', '160', '1271', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1238', '160', '1272', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1239', '160', '1273', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1240', '160', '1274', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1241', '161', '1275', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1242', '161', '1276', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1243', '161', '1277', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1244', '161', '1278', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1245', '161', '1279', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1246', '161', '1280', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1247', '161', '1281', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1248', '162', '1282', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1249', '162', '1283', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1250', '162', '1284', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1251', '162', '1285', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1252', '162', '1286', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1253', '162', '1287', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1254', '162', '1288', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1255', '162', '1289', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1256', '162', '1290', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1257', '163', '1291', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1258', '163', '1292', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1259', '163', '1293', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1260', '163', '1294', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1261', '163', '1295', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1262', '163', '1296', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1263', '164', '1297', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1264', '164', '1298', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1265', '164', '1299', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1266', '164', '1300', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1267', '164', '1301', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1268', '164', '1302', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1269', '165', '1303', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1270', '165', '1304', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1271', '165', '1305', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1272', '165', '1306', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1273', '165', '1307', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1274', '165', '1308', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1275', '166', '1309', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1276', '166', '1310', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1277', '166', '1311', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1278', '166', '1312', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1279', '166', '1313', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1280', '167', '1314', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1281', '167', '1315', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1282', '167', '1316', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1283', '167', '1317', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1284', '167', '1318', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1285', '167', '1319', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1286', '167', '1320', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1287', '167', '1321', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1288', '167', '1322', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1289', '167', '1323', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1290', '167', '1324', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1291', '167', '1325', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1292', '167', '1326', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1293', '168', '1327', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1294', '168', '1328', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1295', '168', '1329', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1296', '168', '1330', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1297', '168', '1331', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1298', '168', '1332', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1299', '168', '1333', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1300', '168', '1334', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1301', '168', '1335', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1302', '168', '1336', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1303', '168', '1337', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1304', '169', '1338', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1305', '169', '1339', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1306', '169', '1340', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1307', '169', '1341', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1308', '169', '1342', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1309', '169', '1343', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1310', '169', '1344', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1311', '169', '1345', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1312', '169', '1346', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1313', '169', '1347', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1314', '169', '1348', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1315', '170', '1349', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1316', '170', '1350', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1317', '170', '1351', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1318', '170', '1352', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1319', '170', '1353', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1320', '170', '1354', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1321', '170', '1355', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1322', '171', '1356', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1323', '171', '1357', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1324', '171', '1358', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1325', '171', '1359', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1326', '171', '1360', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1327', '172', '1361', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1328', '172', '1362', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1329', '172', '1363', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1330', '172', '1364', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1331', '172', '1365', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1332', '172', '1366', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1333', '173', '1367', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1334', '173', '1368', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1335', '173', '1369', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1336', '173', '1370', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1337', '173', '1371', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1338', '173', '1372', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1339', '173', '1373', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1340', '173', '1374', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1341', '173', '1375', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1342', '174', '1376', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1343', '174', '1377', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1344', '174', '1378', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1345', '174', '1379', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1346', '174', '1380', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1347', '174', '1381', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1348', '175', '1382', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1349', '175', '1383', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1350', '175', '1384', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1351', '175', '1385', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1352', '176', '1386', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1353', '176', '1387', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1354', '176', '1388', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1355', '176', '1389', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1356', '176', '1390', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1357', '176', '1391', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1358', '176', '1392', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1359', '176', '1393', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1360', '176', '1394', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1361', '177', '1395', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1362', '177', '1396', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1363', '177', '1397', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1364', '177', '1398', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1365', '177', '1399', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1366', '177', '1400', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1367', '177', '1401', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1368', '177', '1402', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1369', '177', '1403', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1370', '178', '1404', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1371', '178', '1405', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1372', '178', '1406', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1373', '178', '1407', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1374', '178', '1408', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1375', '178', '1409', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1376', '178', '1410', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1377', '178', '1411', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1378', '178', '1412', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1379', '179', '1413', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1380', '179', '1414', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1381', '179', '1415', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1382', '179', '1416', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1383', '179', '1417', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1384', '179', '1418', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1385', '179', '1419', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1386', '179', '1420', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1387', '180', '1421', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1388', '180', '1422', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1389', '180', '1423', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1390', '180', '1424', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1391', '180', '1425', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1392', '180', '1426', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1393', '180', '1427', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1394', '181', '1428', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1395', '181', '1429', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1396', '181', '1430', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1397', '181', '1431', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1398', '181', '1432', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1399', '181', '1433', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1400', '181', '1434', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1401', '182', '1435', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1402', '182', '1436', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1403', '182', '1437', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1404', '182', '1438', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1405', '182', '1439', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1406', '182', '1440', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1407', '183', '1441', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1408', '183', '1442', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1409', '183', '1443', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1410', '183', '1444', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1411', '184', '1445', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1412', '184', '1446', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1413', '184', '1447', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1414', '184', '1448', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1415', '185', '1449', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1416', '185', '1450', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1417', '185', '1451', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1418', '185', '1452', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1419', '185', '1453', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1420', '185', '1454', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1421', '185', '1455', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1422', '185', '1456', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1423', '185', '1457', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1424', '185', '1458', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1425', '186', '1459', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1426', '186', '1460', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1427', '186', '1461', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1428', '186', '1462', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1429', '186', '1463', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1430', '186', '1464', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1431', '186', '1465', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1432', '187', '1466', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1433', '187', '1467', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1434', '187', '1468', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1435', '187', '1469', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1436', '187', '1470', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1437', '187', '1471', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1438', '187', '1472', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1439', '187', '1473', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1440', '188', '1474', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1441', '188', '1475', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1442', '188', '1476', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1443', '188', '1477', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1444', '188', '1478', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1445', '188', '1479', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1446', '188', '1480', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1447', '188', '1481', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1448', '189', '1482', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1449', '189', '1483', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1450', '189', '1484', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1451', '189', '1485', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1452', '189', '1486', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1453', '190', '1487', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1454', '190', '1488', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1455', '190', '1489', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1456', '190', '1490', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1457', '190', '1491', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1458', '190', '1492', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1459', '190', '1493', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1460', '191', '1494', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1461', '191', '1495', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1462', '191', '1496', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1463', '191', '1497', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1464', '192', '1498', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1465', '192', '1499', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1466', '192', '1500', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1467', '192', '1501', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1468', '193', '1502', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1469', '193', '1503', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1470', '193', '1504', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1471', '193', '1505', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1472', '193', '1506', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1473', '193', '1507', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1474', '193', '1508', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1475', '194', '1509', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1476', '194', '1510', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1477', '194', '1511', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1478', '194', '1512', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1479', '194', '1513', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1480', '194', '1514', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1481', '194', '1515', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1482', '194', '1516', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1483', '194', '1517', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1484', '194', '1518', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1485', '194', '1519', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1486', '194', '1520', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1487', '194', '1521', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1488', '195', '1522', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1489', '195', '1523', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1490', '195', '1524', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1491', '195', '1525', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1492', '195', '1526', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1493', '195', '1527', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1494', '196', '1528', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1495', '196', '1529', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1496', '196', '1530', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1497', '196', '1531', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1498', '196', '1532', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1499', '197', '1533', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1500', '197', '1534', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1501', '197', '1535', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1502', '197', '1536', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1503', '197', '1537', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1504', '197', '1538', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1505', '197', '1539', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1506', '197', '1540', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1507', '197', '1541', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1508', '197', '1542', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1509', '197', '1543', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1510', '197', '1544', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1511', '198', '1545', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1512', '198', '1546', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1513', '198', '1547', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1514', '198', '1548', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1515', '198', '1549', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1516', '198', '1550', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1517', '198', '1551', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1518', '198', '1552', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1519', '198', '1553', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1520', '198', '1554', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1521', '198', '1555', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1522', '198', '1556', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1523', '199', '1557', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1524', '199', '1558', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1525', '199', '1559', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1526', '199', '1560', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1527', '199', '1561', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1528', '199', '1562', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1529', '199', '1563', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1530', '199', '1564', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1531', '199', '1565', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1532', '199', '1566', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1533', '199', '1567', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1534', '200', '1568', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1535', '200', '1569', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1536', '200', '1570', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1537', '200', '1571', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1538', '200', '1572', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1539', '200', '1573', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1540', '200', '1574', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1541', '200', '1575', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1542', '200', '1576', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1543', '200', '1577', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1544', '201', '1578', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1545', '201', '1579', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1546', '201', '1580', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1547', '201', '1581', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1548', '201', '1582', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1549', '201', '1583', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1550', '201', '1584', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1551', '202', '1585', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1552', '202', '1586', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1553', '202', '1587', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1554', '202', '1588', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1555', '202', '1589', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1556', '202', '1590', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1557', '202', '1591', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1558', '202', '1592', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1559', '202', '1593', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1560', '203', '1594', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1561', '203', '1595', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1562', '203', '1596', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1563', '203', '1597', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1564', '203', '1598', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1565', '203', '1599', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1566', '203', '1600', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1567', '203', '1601', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1568', '203', '1602', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1569', '204', '1603', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1570', '204', '1604', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1571', '204', '1605', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1572', '204', '1606', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1573', '205', '1607', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1574', '205', '1608', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1575', '205', '1609', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1576', '205', '1610', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1577', '205', '1611', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1578', '206', '1612', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1579', '206', '1613', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1580', '206', '1614', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1581', '206', '1615', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1582', '206', '1616', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1583', '206', '1617', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1584', '206', '1618', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1585', '206', '1619', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1586', '206', '1620', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1587', '206', '1621', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1588', '206', '1622', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1589', '206', '1623', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1590', '206', '1624', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1591', '207', '1625', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1592', '207', '1626', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1593', '208', '1627', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1594', '208', '1628', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1595', '208', '1629', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1596', '209', '1630', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1597', '209', '1631', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1598', '209', '1632', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1599', '209', '1633', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1600', '209', '1634', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1601', '209', '1635', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1602', '209', '1636', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1603', '209', '1637', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1604', '209', '1638', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1605', '209', '1639', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1606', '209', '1640', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1607', '209', '1641', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1608', '209', '1642', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1609', '209', '1643', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1610', '209', '1644', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1611', '209', '1645', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1612', '209', '1646', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1613', '209', '1647', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1614', '210', '1648', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1615', '210', '1649', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1616', '210', '1650', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1617', '210', '1651', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1618', '210', '1652', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1619', '210', '1653', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1620', '210', '1654', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1621', '210', '1655', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1622', '210', '1656', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1623', '210', '1657', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1624', '210', '1658', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1625', '210', '1659', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1626', '210', '1660', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1627', '211', '1661', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1628', '211', '1662', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1629', '211', '1663', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1630', '211', '1664', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1631', '211', '1665', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1632', '211', '1666', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1633', '211', '1667', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1634', '211', '1668', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1635', '211', '1669', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1636', '211', '1670', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1637', '212', '1671', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1638', '212', '1672', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1639', '212', '1673', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1640', '212', '1674', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1641', '212', '1675', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1642', '212', '1676', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1643', '212', '1677', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1644', '212', '1678', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1645', '212', '1679', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1646', '212', '1680', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1647', '212', '1681', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1648', '213', '1682', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1649', '213', '1683', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1650', '213', '1684', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1651', '213', '1685', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1652', '213', '1686', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1653', '213', '1687', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1654', '213', '1688', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1655', '213', '1689', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1656', '213', '1690', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1657', '213', '1691', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1658', '213', '1692', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1659', '213', '1693', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1660', '214', '1694', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1661', '214', '1695', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1662', '214', '1696', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1663', '214', '1697', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1664', '214', '1698', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1665', '214', '1699', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1666', '214', '1700', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1667', '214', '1701', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1668', '214', '1702', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1669', '214', '1703', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1670', '215', '1704', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1671', '215', '1705', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1672', '215', '1706', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1673', '215', '1707', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1674', '215', '1708', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1675', '215', '1709', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1676', '215', '1710', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1677', '215', '1711', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1678', '215', '1712', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1679', '215', '1713', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1680', '216', '1714', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1681', '216', '1715', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1682', '216', '1716', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1683', '216', '1717', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1684', '216', '1718', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1685', '216', '1719', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1686', '216', '1720', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1687', '216', '1721', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1688', '217', '1722', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1689', '217', '1723', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1690', '217', '1724', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1691', '217', '1725', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1692', '217', '1726', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1693', '217', '1727', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1694', '218', '1728', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1695', '218', '1729', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1696', '218', '1730', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1697', '218', '1731', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1698', '218', '1732', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1699', '219', '1733', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1700', '219', '1734', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1701', '219', '1735', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1702', '219', '1736', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1703', '219', '1737', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1704', '219', '1738', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1705', '219', '1739', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1706', '219', '1740', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1707', '219', '1741', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1708', '219', '1742', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1709', '219', '1743', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1710', '219', '1744', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1711', '220', '1745', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1712', '220', '1746', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1713', '220', '1747', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1714', '220', '1748', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1715', '220', '1749', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1716', '220', '1750', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1717', '220', '1751', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1718', '220', '1752', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1719', '220', '1753', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1720', '220', '1754', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1721', '220', '1755', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1722', '220', '1756', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1723', '221', '1757', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1724', '221', '1758', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1725', '221', '1759', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1726', '221', '1760', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1727', '221', '1761', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1728', '221', '1762', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1729', '221', '1763', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1730', '221', '1764', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1731', '221', '1765', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1732', '221', '1766', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1733', '221', '1767', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1734', '222', '1768', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1735', '222', '1769', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1736', '222', '1770', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1737', '222', '1771', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1738', '222', '1772', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1739', '222', '1773', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1740', '223', '1774', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1741', '223', '1775', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1742', '223', '1776', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1743', '223', '1777', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1744', '224', '1778', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1745', '224', '1779', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1746', '224', '1780', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1747', '224', '1781', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1748', '225', '1782', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1749', '225', '1783', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1750', '226', '1784', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1751', '226', '1785', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1752', '226', '1786', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1753', '226', '1787', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1754', '226', '1788', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1755', '226', '1789', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1756', '226', '1790', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1757', '226', '1791', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1758', '226', '1792', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1759', '226', '1793', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1760', '226', '1794', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1761', '226', '1795', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1762', '227', '1796', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1763', '227', '1797', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1764', '227', '1798', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1765', '227', '1799', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1766', '227', '1800', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1767', '227', '1801', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1768', '227', '1802', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1769', '227', '1803', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1770', '227', '1804', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1771', '227', '1805', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1772', '227', '1806', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1773', '228', '1807', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1774', '228', '1808', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1775', '228', '1809', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1776', '228', '1810', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1777', '228', '1811', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1778', '228', '1812', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1779', '228', '1813', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1780', '228', '1814', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1781', '229', '1815', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1782', '229', '1816', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1783', '229', '1817', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1784', '229', '1818', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1785', '229', '1819', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1786', '229', '1820', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1787', '229', '1821', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1788', '230', '1822', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1789', '230', '1823', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1790', '230', '1824', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1791', '230', '1825', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1792', '230', '1826', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1793', '230', '1827', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1794', '230', '1828', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1795', '230', '1829', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1796', '230', '1830', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1797', '231', '1831', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1798', '231', '1832', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1799', '231', '1833', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1800', '231', '1834', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1801', '231', '1835', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1802', '231', '1836', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1803', '231', '1837', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1804', '231', '1838', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1805', '231', '1839', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1806', '231', '1840', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1807', '231', '1841', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1808', '231', '1842', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1809', '232', '1843', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1810', '232', '1844', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1811', '232', '1845', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1812', '232', '1846', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1813', '232', '1847', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1814', '232', '1848', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1815', '232', '1849', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1816', '232', '1850', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1817', '232', '1851', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1818', '232', '1852', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1819', '233', '1853', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1820', '233', '1854', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1821', '233', '1855', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1822', '233', '1856', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1823', '233', '1857', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1824', '233', '1858', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1825', '233', '1859', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1826', '233', '1860', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1827', '233', '1861', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1828', '233', '1862', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1829', '233', '1863', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1830', '233', '1864', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1831', '233', '1865', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1832', '233', '1866', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1833', '233', '1867', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1834', '234', '1868', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1835', '234', '1869', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1836', '234', '1870', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1837', '234', '1871', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1838', '234', '1872', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1839', '234', '1873', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1840', '234', '1874', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1841', '234', '1875', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1842', '234', '1876', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1843', '234', '1877', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1844', '235', '1878', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1845', '235', '1879', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1846', '235', '1880', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1847', '235', '1881', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1848', '235', '1882', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1849', '235', '1883', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1850', '235', '1884', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1851', '235', '1885', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1852', '235', '1886', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1853', '236', '1887', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1854', '236', '1888', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1855', '236', '1889', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1856', '236', '1890', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1857', '236', '1891', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1858', '237', '1892', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1859', '237', '1893', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1860', '237', '1894', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1861', '237', '1895', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1862', '237', '1896', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1863', '237', '1897', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1864', '237', '1898', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1865', '237', '1899', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1866', '237', '1900', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1867', '237', '1901', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1868', '237', '1902', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1869', '237', '1903', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1870', '238', '1904', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1871', '238', '1905', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1872', '238', '1906', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1873', '238', '1907', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1874', '238', '1908', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1875', '238', '1909', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1876', '238', '1910', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1877', '238', '1911', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1878', '238', '1912', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1879', '238', '1913', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1880', '239', '1914', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1881', '239', '1915', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1882', '239', '1916', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1883', '239', '1917', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1884', '239', '1918', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1885', '239', '1919', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1886', '240', '1920', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1887', '240', '1921', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1888', '240', '1922', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1889', '240', '1923', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1890', '240', '1924', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1891', '240', '1925', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1892', '241', '1926', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1893', '241', '1927', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1894', '241', '1928', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1895', '241', '1929', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1896', '241', '1930', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1897', '242', '1931', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1898', '242', '1932', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1899', '242', '1933', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1900', '242', '1934', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1901', '242', '1935', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1902', '242', '1936', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1903', '243', '1937', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1904', '243', '1938', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1905', '243', '1939', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1906', '243', '1940', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1907', '243', '1941', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1908', '243', '1942', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1909', '243', '1943', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1910', '243', '1944', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1911', '243', '1945', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1912', '243', '1946', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1913', '243', '1947', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1914', '243', '1948', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1915', '243', '1949', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1916', '244', '1950', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1917', '244', '1951', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1918', '244', '1952', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1919', '244', '1953', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1920', '244', '1954', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1921', '244', '1955', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1922', '244', '1956', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1923', '244', '1957', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1924', '244', '1958', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1925', '245', '1959', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1926', '245', '1960', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1927', '245', '1961', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1928', '245', '1962', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1929', '245', '1963', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1930', '245', '1964', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1931', '245', '1965', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1932', '245', '1966', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1933', '245', '1967', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1934', '245', '1968', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1935', '246', '1969', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1936', '246', '1970', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1937', '246', '1971', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1938', '246', '1972', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1939', '246', '1973', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1940', '246', '1974', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1941', '246', '1975', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1942', '246', '1976', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1943', '246', '1977', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1944', '246', '1978', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1945', '247', '1979', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1946', '247', '1980', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1947', '247', '1981', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1948', '247', '1982', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1949', '247', '1983', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1950', '247', '1984', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1951', '247', '1985', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1952', '247', '1986', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1953', '247', '1987', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1954', '247', '1988', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1955', '248', '1989', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1956', '249', '1990', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1957', '249', '1991', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1958', '249', '1992', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1959', '249', '1993', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1960', '249', '1994', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1961', '249', '1995', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1962', '249', '1996', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1963', '249', '1997', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1964', '249', '1998', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1965', '249', '1999', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1966', '249', '2000', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1967', '249', '2001', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1968', '249', '2002', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1969', '250', '2003', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1970', '250', '2004', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1971', '250', '2005', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1972', '250', '2006', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1973', '250', '2007', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1974', '250', '2008', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1975', '251', '2009', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1976', '251', '2010', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1977', '251', '2011', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1978', '251', '2012', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1979', '251', '2013', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1980', '251', '2014', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1981', '251', '2015', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1982', '251', '2016', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1983', '252', '2017', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1984', '252', '2018', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1985', '252', '2019', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1986', '252', '2020', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1987', '252', '2021', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1988', '252', '2022', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1989', '252', '2023', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1990', '252', '2024', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1991', '252', '2025', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1992', '252', '2026', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1993', '252', '2027', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1994', '252', '2028', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1995', '252', '2029', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1996', '253', '2030', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1997', '253', '2031', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1998', '253', '2032', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('1999', '253', '2033', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2000', '253', '2034', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2001', '253', '2035', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2002', '253', '2036', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2003', '253', '2037', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2004', '253', '2038', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2005', '254', '2039', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2006', '254', '2040', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2007', '254', '2041', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2008', '255', '2042', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2009', '255', '2043', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2010', '255', '2044', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2011', '255', '2045', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2012', '255', '2046', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2013', '256', '2047', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2014', '256', '2048', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2015', '256', '2049', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2016', '256', '2050', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2017', '256', '2051', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2018', '256', '2052', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2019', '256', '2053', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2020', '257', '2054', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2021', '257', '2055', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2022', '257', '2056', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2023', '257', '2057', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2024', '257', '2058', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2025', '257', '2059', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2026', '257', '2060', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2027', '257', '2061', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2028', '258', '2062', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2029', '258', '2063', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2030', '258', '2064', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2031', '258', '2065', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2032', '258', '2066', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2033', '258', '2067', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2034', '258', '2068', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2035', '258', '2069', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2036', '258', '2070', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2037', '258', '2071', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2038', '259', '2072', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2039', '259', '2073', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2040', '259', '2074', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2041', '259', '2075', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2042', '259', '2076', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2043', '259', '2077', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2044', '260', '2078', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2045', '260', '2079', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2046', '260', '2080', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2047', '261', '2081', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2048', '261', '2082', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2049', '261', '2083', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2050', '261', '2084', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2051', '261', '2085', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2052', '261', '2086', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2053', '261', '2087', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2054', '261', '2088', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2055', '262', '2089', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2056', '262', '2090', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2057', '262', '2091', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2058', '262', '2092', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2059', '263', '2093', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2060', '263', '2094', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2061', '263', '2095', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2062', '263', '2096', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2063', '263', '2097', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2064', '263', '2098', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2065', '263', '2099', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2066', '263', '2100', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2067', '263', '2101', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2068', '264', '2102', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2069', '264', '2103', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2070', '264', '2104', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2071', '264', '2105', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2072', '264', '2106', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2073', '264', '2107', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2074', '264', '2108', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2075', '264', '2109', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2076', '264', '2110', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2077', '265', '2111', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2078', '265', '2112', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2079', '265', '2113', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2080', '265', '2114', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2081', '265', '2115', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2082', '266', '2116', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2083', '266', '2117', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2084', '266', '2118', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2085', '266', '2119', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2086', '266', '2120', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2087', '266', '2121', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2088', '266', '2122', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2089', '266', '2123', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2090', '266', '2124', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2091', '266', '2125', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2092', '266', '2126', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2093', '266', '2127', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2094', '267', '2128', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2095', '267', '2129', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2096', '267', '2130', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2097', '267', '2131', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2098', '267', '2132', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2099', '267', '2133', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2100', '267', '2134', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2101', '267', '2135', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2102', '267', '2136', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2103', '267', '2137', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2104', '267', '2138', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2105', '267', '2139', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2106', '268', '2140', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2107', '268', '2141', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2108', '268', '2142', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2109', '268', '2143', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2110', '268', '2144', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2111', '268', '2145', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2112', '268', '2146', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2113', '268', '2147', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2114', '268', '2148', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2115', '269', '2149', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2116', '269', '2150', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2117', '269', '2151', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2118', '269', '2152', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2119', '269', '2153', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2120', '269', '2154', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2121', '269', '2155', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2122', '269', '2156', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2123', '269', '2157', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2124', '270', '2158', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2125', '270', '2159', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2126', '270', '2160', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2127', '270', '2161', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2128', '271', '2162', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2129', '271', '2163', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2130', '271', '2164', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2131', '271', '2165', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2132', '271', '2166', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2133', '271', '2167', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2134', '272', '2168', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2135', '272', '2169', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2136', '272', '2170', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2137', '272', '2171', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2138', '272', '2172', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2139', '272', '2173', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2140', '272', '2174', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2141', '272', '2175', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2142', '272', '2176', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2143', '272', '2177', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2144', '272', '2178', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2145', '273', '2179', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2146', '273', '2180', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2147', '273', '2181', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2148', '273', '2182', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2149', '273', '2183', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2150', '273', '2184', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2151', '273', '2185', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2152', '273', '2186', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2153', '273', '2187', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2154', '273', '2188', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2155', '273', '2189', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2156', '274', '2190', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2157', '274', '2191', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2158', '274', '2192', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2159', '274', '2193', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2160', '274', '2194', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2161', '274', '2195', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2162', '274', '2196', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2163', '274', '2197', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2164', '274', '2198', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2165', '274', '2199', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2166', '274', '2200', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2167', '274', '2201', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2168', '275', '2202', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2169', '275', '2203', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2170', '275', '2204', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2171', '275', '2205', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2172', '275', '2206', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2173', '276', '2207', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2174', '276', '2208', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2175', '276', '2209', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2176', '276', '2210', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2177', '276', '2211', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2178', '276', '2212', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2179', '276', '2213', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2180', '276', '2214', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2181', '277', '2215', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2182', '277', '2216', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2183', '277', '2217', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2184', '277', '2218', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2185', '277', '2219', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2186', '277', '2220', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2187', '277', '2221', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2188', '277', '2222', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2189', '277', '2223', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2190', '277', '2224', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2191', '277', '2225', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2192', '278', '2226', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2193', '278', '2227', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2194', '278', '2228', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2195', '278', '2229', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2196', '278', '2230', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2197', '278', '2231', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2198', '278', '2232', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2199', '278', '2233', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2200', '278', '2234', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2201', '278', '2235', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2202', '279', '2236', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2203', '279', '2237', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2204', '279', '2238', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2205', '279', '2239', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2206', '279', '2240', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2207', '279', '2241', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2208', '280', '2242', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2209', '280', '2243', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2210', '280', '2244', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2211', '281', '2245', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2212', '281', '2246', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2213', '281', '2247', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2214', '281', '2248', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2215', '281', '2249', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2216', '281', '2250', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2217', '281', '2251', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2218', '282', '2252', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2219', '282', '2253', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2220', '282', '2254', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2221', '282', '2255', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2222', '282', '2256', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2223', '283', '2257', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2224', '283', '2258', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2225', '283', '2259', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2226', '283', '2260', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2227', '283', '2261', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2228', '283', '2262', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2229', '283', '2263', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2230', '284', '2264', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2231', '284', '2265', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2232', '284', '2266', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2233', '284', '2267', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2234', '284', '2268', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2235', '284', '2269', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2236', '284', '2270', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2237', '284', '2271', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2238', '284', '2272', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2239', '285', '2273', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2240', '285', '2274', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2241', '285', '2275', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2242', '285', '2276', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2243', '285', '2277', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2244', '286', '2278', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2245', '286', '2279', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2246', '286', '2280', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2247', '286', '2281', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2248', '286', '2282', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2249', '286', '2283', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2250', '286', '2284', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2251', '286', '2285', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2252', '287', '2286', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2253', '287', '2287', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2254', '287', '2288', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2255', '287', '2289', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2256', '287', '2290', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2257', '288', '2291', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2258', '288', '2292', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2259', '288', '2293', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2260', '288', '2294', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2261', '288', '2295', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2262', '288', '2296', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2263', '288', '2297', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2264', '288', '2298', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2265', '289', '2299', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2266', '289', '2300', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2267', '289', '2301', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2268', '289', '2302', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2269', '290', '2303', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2270', '290', '2304', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2271', '290', '2305', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2272', '290', '2306', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2273', '290', '2307', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2274', '290', '2308', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2275', '291', '2309', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2276', '291', '2310', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2277', '291', '2311', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2278', '291', '2312', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2279', '292', '2313', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2280', '292', '2314', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2281', '292', '2315', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2282', '292', '2316', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2283', '292', '2317', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2284', '292', '2318', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2285', '292', '2319', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2286', '292', '2320', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2287', '294', '2321', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2288', '294', '2322', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2289', '294', '2323', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2290', '294', '2324', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2291', '294', '2325', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2292', '294', '2326', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2293', '294', '2327', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2294', '294', '2328', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2295', '294', '2329', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2296', '294', '2330', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2297', '294', '2331', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2298', '294', '2332', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2299', '294', '2333', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2300', '294', '2334', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2301', '294', '2335', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2302', '294', '2336', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2303', '294', '2337', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2304', '294', '2338', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2305', '294', '2339', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2306', '294', '2340', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2307', '294', '2341', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2308', '294', '2342', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2309', '294', '2343', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2310', '294', '2344', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2311', '293', '2345', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2312', '293', '2346', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2313', '293', '2347', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2314', '293', '2348', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2315', '293', '2349', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2316', '293', '2350', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2317', '293', '2351', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2318', '293', '2352', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2319', '293', '2353', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2320', '293', '2354', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2321', '293', '2355', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2322', '293', '2356', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2323', '293', '2357', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2324', '293', '2358', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2325', '293', '2359', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2326', '293', '2360', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2327', '293', '2361', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2328', '293', '2362', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2329', '293', '2363', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2330', '293', '2364', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2331', '293', '2365', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2332', '293', '2366', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2333', '293', '2367', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2334', '293', '2368', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2335', '293', '2369', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2336', '293', '2370', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2337', '293', '2371', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2338', '293', '2372', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2339', '293', '2373', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2340', '293', '2374', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2341', '293', '2375', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2342', '293', '2376', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2343', '293', '2377', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2344', '293', '2378', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2345', '293', '2379', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2346', '295', '2380', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2347', '295', '2381', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2348', '295', '2382', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2349', '296', '2383', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2350', '296', '2384', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2351', '296', '2385', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2352', '296', '2386', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2353', '296', '2387', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2354', '297', '2388', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2355', '297', '2389', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2356', '297', '2390', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2357', '297', '2391', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2358', '297', '2392', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2359', '298', '2393', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2360', '298', '2394', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2361', '298', '2395', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2362', '298', '2396', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2363', '298', '2397', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2364', '298', '2398', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2365', '298', '2399', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2366', '298', '2400', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2367', '298', '2401', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2368', '298', '2402', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2369', '298', '2403', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2370', '298', '2404', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2371', '299', '2405', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2372', '299', '2406', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2373', '299', '2407', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2374', '299', '2408', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2375', '299', '2409', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2376', '299', '2410', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2377', '299', '2411', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2378', '299', '2412', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2379', '299', '2413', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2380', '299', '2414', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2381', '300', '2415', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2382', '300', '2416', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2383', '300', '2417', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2384', '300', '2418', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2385', '300', '2419', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2386', '300', '2420', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2387', '300', '2421', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2388', '300', '2422', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2389', '300', '2423', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2390', '300', '2424', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2391', '300', '2425', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2392', '300', '2426', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2393', '300', '2427', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2394', '300', '2428', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2395', '300', '2429', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2396', '300', '2430', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2397', '300', '2431', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2398', '301', '2432', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2399', '301', '2433', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2400', '301', '2434', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2401', '301', '2435', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2402', '301', '2436', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2403', '301', '2437', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2404', '301', '2438', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2405', '302', '2439', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2406', '302', '2440', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2407', '302', '2441', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2408', '302', '2442', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2409', '303', '2443', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2410', '303', '2444', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2411', '303', '2445', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2412', '303', '2446', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2413', '304', '2447', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2414', '304', '2448', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2415', '304', '2449', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2416', '304', '2450', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2417', '305', '2451', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2418', '305', '2452', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2419', '305', '2453', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2420', '305', '2454', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2421', '305', '2455', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2422', '306', '2456', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2423', '306', '2457', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2424', '306', '2458', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2425', '306', '2459', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2426', '306', '2460', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2427', '306', '2461', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2428', '306', '2462', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2429', '307', '2463', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2430', '307', '2464', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2431', '307', '2465', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2432', '307', '2466', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2433', '307', '2467', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2434', '307', '2468', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2435', '307', '2469', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2436', '307', '2470', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2437', '307', '2471', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2438', '307', '2472', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2439', '307', '2473', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2440', '307', '2474', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2441', '308', '2475', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2442', '308', '2476', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2443', '308', '2477', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2444', '308', '2478', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2445', '308', '2479', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2446', '309', '2480', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2447', '309', '2481', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2448', '309', '2482', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2449', '309', '2483', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2450', '309', '2484', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2451', '309', '2485', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2452', '309', '2486', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2453', '309', '2487', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2454', '309', '2488', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2455', '309', '2489', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2456', '309', '2490', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2457', '310', '2491', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2458', '310', '2492', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2459', '310', '2493', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2460', '310', '2494', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2461', '310', '2495', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2462', '310', '2496', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2463', '311', '2497', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2464', '311', '2498', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2465', '311', '2499', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2466', '311', '2500', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2467', '311', '2501', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2468', '311', '2502', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2469', '311', '2503', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2470', '312', '2504', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2471', '312', '2505', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2472', '312', '2506', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2473', '312', '2507', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2474', '313', '2508', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2475', '313', '2509', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2476', '313', '2510', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2477', '313', '2511', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2478', '314', '2512', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2479', '315', '2513', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2480', '315', '2514', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2481', '315', '2515', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2482', '315', '2516', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2483', '315', '2517', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2484', '315', '2518', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2485', '315', '2519', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2486', '315', '2520', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2487', '315', '2521', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2488', '315', '2522', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2489', '315', '2523', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2490', '315', '2524', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2491', '315', '2525', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2492', '315', '2526', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2493', '315', '2527', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2494', '315', '2528', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2495', '315', '2529', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2496', '315', '2530', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2497', '315', '2531', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2498', '315', '2532', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2499', '315', '2533', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2500', '316', '2534', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2501', '316', '2535', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2502', '316', '2536', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2503', '316', '2537', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2504', '316', '2538', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2505', '316', '2539', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2506', '316', '2540', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2507', '316', '2541', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2508', '316', '2542', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2509', '316', '2543', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2510', '316', '2544', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2511', '316', '2545', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2512', '316', '2546', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2513', '316', '2547', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2514', '316', '2548', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2515', '317', '2549', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2516', '318', '2550', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2517', '319', '2551', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2518', '321', '2552', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2519', '320', '2553', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2520', '322', '2554', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2521', '324', '2555', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2522', '325', '2556', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2523', '323', '2557', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2524', '327', '2558', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2525', '326', '2559', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2526', '328', '2560', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2527', '329', '2561', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2528', '330', '2562', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2529', '331', '2563', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2530', '333', '2564', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2531', '334', '2565', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2532', '335', '2566', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2533', '332', '2567', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2534', '336', '2568', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2535', '337', '2569', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2536', '338', '2570', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2537', '339', '2571', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2538', '340', '2572', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2539', '341', '2573', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2540', '343', '2574', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2541', '342', '2575', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2542', '344', '2576', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2543', '345', '2577', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2544', '346', '2578', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2545', '348', '2579', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2546', '349', '2580', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2547', '347', '2581', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2548', '350', '2582', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2549', '352', '2583', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2550', '351', '2584', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2551', '354', '2585', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2552', '353', '2586', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2553', '355', '2587', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2554', '355', '2588', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2555', '355', '2589', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2556', '355', '2590', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2557', '355', '2591', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2558', '355', '2592', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2559', '355', '2593', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2560', '355', '2594', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2561', '355', '2595', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2562', '355', '2596', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2563', '355', '2597', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2564', '355', '2598', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2565', '355', '2599', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2566', '355', '2600', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2567', '355', '2601', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2568', '355', '2602', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2569', '355', '2603', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2570', '355', '2604', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2571', '355', '2605', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2572', '355', '2606', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2573', '356', '2607', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2574', '356', '2608', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2575', '356', '2609', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2576', '356', '2610', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2577', '356', '2611', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2578', '356', '2612', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2579', '357', '2613', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2580', '357', '2614', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2581', '357', '2615', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2582', '357', '2616', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2583', '357', '2617', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2584', '358', '2618', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2585', '358', '2619', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2586', '358', '2620', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2587', '358', '2621', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2588', '358', '2622', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2589', '358', '2623', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2590', '358', '2624', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2591', '359', '2625', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2592', '359', '2626', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2593', '359', '2627', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2594', '359', '2628', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2595', '359', '2629', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2596', '359', '2630', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2597', '360', '2631', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2598', '360', '2632', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2599', '360', '2633', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2600', '360', '2634', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2601', '360', '2635', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2602', '360', '2636', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2603', '360', '2637', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2604', '360', '2638', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2605', '360', '2639', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2606', '361', '2640', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2607', '361', '2641', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2608', '361', '2642', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2609', '361', '2643', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2610', '361', '2644', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2611', '361', '2645', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2612', '361', '2646', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2613', '362', '2647', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2614', '362', '2648', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2615', '362', '2649', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2616', '362', '2650', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2617', '362', '2651', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2618', '363', '2652', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2619', '363', '2653', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2620', '363', '2654', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2621', '363', '2655', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2622', '363', '2656', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2623', '364', '2657', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2624', '364', '2658', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2625', '364', '2659', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2626', '364', '2660', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2627', '364', '2661', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2628', '364', '2662', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2629', '364', '2663', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2630', '364', '2664', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2631', '364', '2665', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2632', '364', '2666', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2633', '364', '2667', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2634', '365', '2668', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2635', '365', '2669', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2636', '365', '2670', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2637', '365', '2671', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2638', '365', '2672', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2639', '365', '2673', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2640', '365', '2674', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2641', '365', '2675', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2642', '365', '2676', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2643', '366', '2677', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2644', '366', '2678', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2645', '366', '2679', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2646', '366', '2680', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2647', '366', '2681', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2648', '366', '2682', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2649', '367', '2683', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2650', '367', '2684', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2651', '367', '2685', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2652', '367', '2686', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2653', '367', '2687', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2654', '367', '2688', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2655', '367', '2689', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2656', '367', '2690', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2657', '367', '2691', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2658', '367', '2692', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2659', '368', '2693', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2660', '368', '2694', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2661', '368', '2695', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2662', '368', '2696', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2663', '368', '2697', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2664', '368', '2698', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2665', '369', '2699', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2666', '369', '2700', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2667', '369', '2701', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2668', '369', '2702', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2669', '369', '2703', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2670', '369', '2704', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2671', '369', '2705', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2672', '370', '2706', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2673', '370', '2707', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2674', '370', '2708', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2675', '370', '2709', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2676', '370', '2710', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2677', '370', '2711', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2678', '370', '2712', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2679', '370', '2713', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2680', '371', '2714', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2681', '371', '2715', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2682', '371', '2716', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2683', '371', '2717', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2684', '371', '2718', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2685', '372', '2719', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2686', '372', '2720', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2687', '372', '2721', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2688', '373', '2722', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2689', '373', '2723', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2690', '373', '2724', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2691', '373', '2725', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2692', '373', '2726', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2693', '373', '2727', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2694', '373', '2728', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2695', '373', '2729', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2696', '373', '2730', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2697', '373', '2731', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2698', '373', '2732', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2699', '373', '2733', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2700', '373', '2734', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2701', '374', '2735', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2702', '374', '2736', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2703', '374', '2737', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2704', '374', '2738', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2705', '374', '2739', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2706', '374', '2740', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2707', '374', '2741', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2708', '374', '2742', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2709', '374', '2743', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2710', '374', '2744', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2711', '374', '2745', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2712', '374', '2746', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2713', '374', '2747', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2714', '374', '2748', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2715', '374', '2749', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2716', '374', '2750', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2717', '374', '2751', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2718', '374', '2752', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2719', '375', '2753', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2720', '375', '2754', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2721', '375', '2755', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2722', '375', '2756', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2723', '375', '2757', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2724', '375', '2758', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2725', '375', '2759', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2726', '375', '2760', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2727', '375', '2761', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2728', '375', '2762', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2729', '375', '2763', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2730', '375', '2764', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2731', '375', '2765', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2732', '375', '2766', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2733', '375', '2767', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2734', '375', '2768', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2735', '375', '2769', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2736', '376', '2770', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2737', '376', '2771', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2738', '376', '2772', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2739', '376', '2773', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2740', '376', '2774', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2741', '376', '2775', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2742', '376', '2776', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2743', '376', '2777', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2744', '376', '2778', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2745', '376', '2779', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2746', '377', '2780', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2747', '377', '2781', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2748', '377', '2782', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2749', '377', '2783', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2750', '378', '2784', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2751', '378', '2785', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2752', '378', '2786', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2753', '378', '2787', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2754', '378', '2788', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2755', '378', '2789', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2756', '378', '2790', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2757', '378', '2791', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2758', '378', '2792', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2759', '378', '2793', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2760', '378', '2794', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2761', '378', '2795', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2762', '378', '2796', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2763', '378', '2797', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2764', '379', '2798', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2765', '379', '2799', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2766', '379', '2800', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2767', '379', '2801', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2768', '379', '2802', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2769', '379', '2803', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2770', '380', '2804', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2771', '380', '2805', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2772', '380', '2806', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2773', '380', '2807', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2774', '380', '2808', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2775', '380', '2809', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2776', '380', '2810', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2777', '380', '2811', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2778', '381', '2812', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2779', '381', '2813', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2780', '381', '2814', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2781', '381', '2815', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2782', '381', '2816', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2783', '381', '2817', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2784', '381', '2818', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2785', '381', '2819', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2786', '381', '2820', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2787', '381', '2821', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2788', '382', '2822', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2789', '382', '2823', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2790', '382', '2824', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2791', '382', '2825', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2792', '382', '2826', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2793', '382', '2827', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2794', '382', '2828', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2795', '382', '2829', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2796', '383', '2830', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2797', '383', '2831', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2798', '383', '2832', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2799', '383', '2833', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2800', '383', '2834', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2801', '383', '2835', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2802', '383', '2836', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2803', '383', '2837', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2804', '383', '2838', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2805', '383', '2839', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2806', '383', '2840', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2807', '383', '2841', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2808', '383', '2842', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2809', '383', '2843', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2810', '383', '2844', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2811', '383', '2845', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2812', '384', '2846', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2813', '384', '2847', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2814', '384', '2848', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2815', '384', '2849', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2816', '384', '2850', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2817', '384', '2851', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2818', '384', '2852', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2819', '384', '2853', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2820', '384', '2854', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2821', '384', '2855', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2822', '384', '2856', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2823', '384', '2857', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2824', '385', '2858', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2825', '385', '2859', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2826', '385', '2860', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2827', '385', '2861', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2828', '385', '2862', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2829', '385', '2863', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2830', '385', '2864', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2831', '385', '2865', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2832', '385', '2866', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2833', '385', '2867', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2834', '385', '2868', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2835', '385', '2869', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2836', '385', '2870', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2837', '385', '2871', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2838', '386', '2872', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2839', '386', '2873', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2840', '386', '2874', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2841', '386', '2875', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2842', '386', '2876', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2843', '386', '2877', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2844', '386', '2878', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2845', '386', '2879', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2846', '386', '2880', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2847', '387', '2881', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2848', '387', '2882', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2849', '387', '2883', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2850', '387', '2884', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2851', '387', '2885', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2852', '387', '2886', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2853', '387', '2887', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2854', '387', '2888', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2855', '387', '2889', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2856', '388', '2890', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2857', '388', '2891', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2858', '388', '2892', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2859', '388', '2893', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2860', '388', '2894', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2861', '389', '2895', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2862', '389', '2896', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2863', '389', '2897', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2864', '389', '2898', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2865', '389', '2899', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2866', '389', '2900', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2867', '389', '2901', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2868', '389', '2902', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2869', '389', '2903', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2870', '389', '2904', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2871', '389', '2905', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2872', '390', '2906', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2873', '390', '2907', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2874', '390', '2908', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2875', '390', '2909', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2876', '390', '2910', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2877', '391', '2911', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2878', '391', '2912', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2879', '391', '2913', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2880', '391', '2914', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2881', '391', '2915', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2882', '391', '2916', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2883', '391', '2917', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2884', '391', '2918', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2885', '391', '2919', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2886', '391', '2920', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2887', '392', '2921', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2888', '392', '2922', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2889', '392', '2923', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2890', '392', '2924', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2891', '392', '2925', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2892', '392', '2926', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2893', '392', '2927', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2894', '392', '2928', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2895', '393', '2929', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2896', '393', '2930', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2897', '393', '2931', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2898', '393', '2932', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2899', '393', '2933', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2900', '393', '2934', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2901', '393', '2935', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2902', '393', '2936', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2903', '393', '2937', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2904', '393', '2938', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2905', '394', '2939', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2906', '394', '2940', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2907', '394', '2941', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2908', '394', '2942', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2909', '394', '2943', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2910', '394', '2944', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2911', '394', '2945', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2912', '394', '2946', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2913', '394', '2947', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2914', '394', '2948', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2915', '394', '2949', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2916', '394', '2950', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2917', '394', '2951', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2918', '395', '2952', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2919', '395', '2953', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2920', '395', '2954', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2921', '395', '2955', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2922', '395', '2956', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2923', '395', '2957', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2924', '395', '2958', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2925', '395', '2959', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2926', '396', '2960', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2927', '396', '2961', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2928', '396', '2962', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2929', '397', '2963', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2930', '397', '2964', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2931', '397', '2965', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2932', '397', '2966', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2933', '397', '2967', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2934', '397', '2968', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2935', '397', '2969', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2936', '397', '2970', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2937', '397', '2971', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2938', '397', '2972', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2939', '397', '2973', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2940', '397', '2974', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2941', '398', '2975', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2942', '398', '2976', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2943', '398', '2977', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2944', '398', '2978', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2945', '398', '2979', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2946', '399', '2980', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2947', '399', '2981', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2948', '399', '2982', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2949', '399', '2983', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2950', '400', '2984', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2951', '400', '2985', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2952', '400', '2986', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2953', '401', '2987', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2954', '401', '2988', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2955', '401', '2989', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2956', '401', '2990', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2957', '401', '2991', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2958', '401', '2992', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2959', '401', '2993', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2960', '401', '2994', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2961', '402', '2995', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2962', '402', '2996', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2963', '402', '2997', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2964', '402', '2998', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2965', '402', '2999', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2966', '402', '3000', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2967', '402', '3001', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2968', '402', '3002', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2969', '402', '3003', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2970', '402', '3004', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2971', '402', '3005', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2972', '402', '3006', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2973', '402', '3007', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2974', '402', '3008', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2975', '402', '3009', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2976', '402', '3010', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2977', '402', '3011', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2978', '402', '3012', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2979', '403', '3013', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2980', '403', '3014', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2981', '403', '3015', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2982', '403', '3016', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2983', '403', '3017', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2984', '403', '3018', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2985', '403', '3019', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2986', '403', '3020', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2987', '403', '3021', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2988', '403', '3022', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2989', '403', '3023', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2990', '404', '3024', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2991', '404', '3025', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2992', '404', '3026', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2993', '404', '3027', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2994', '404', '3028', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2995', '404', '3029', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2996', '404', '3030', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2997', '405', '3031', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2998', '405', '3032', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('2999', '405', '3033', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3000', '405', '3034', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3001', '405', '3035', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3002', '405', '3036', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3003', '405', '3037', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3004', '405', '3038', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3005', '405', '3039', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3006', '405', '3040', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3007', '405', '3041', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3008', '405', '3042', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3009', '406', '3043', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3010', '406', '3044', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3011', '406', '3045', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3012', '406', '3046', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3013', '406', '3047', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3014', '406', '3048', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3015', '406', '3049', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3016', '406', '3050', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3017', '406', '3051', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3018', '406', '3052', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3019', '406', '3053', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3020', '407', '3054', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3021', '407', '3055', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3022', '407', '3056', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3023', '407', '3057', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3024', '407', '3058', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3025', '407', '3059', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3026', '407', '3060', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3027', '408', '3061', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3028', '408', '3062', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3029', '408', '3063', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3030', '408', '3064', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3031', '408', '3065', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3032', '408', '3066', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3033', '408', '3067', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3034', '408', '3068', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3035', '408', '3069', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3036', '408', '3070', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3037', '408', '3071', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3038', '408', '3072', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3039', '408', '3073', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3040', '409', '3074', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3041', '409', '3075', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3042', '409', '3076', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3043', '409', '3077', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3044', '410', '3078', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3045', '410', '3079', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3046', '410', '3080', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3047', '410', '3081', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3048', '410', '3082', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3049', '410', '3083', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3050', '410', '3084', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3051', '410', '3085', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3052', '410', '3086', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3053', '410', '3087', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3054', '410', '3088', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3055', '410', '3089', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3056', '411', '3090', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3057', '411', '3091', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3058', '411', '3092', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3059', '411', '3093', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3060', '411', '3094', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3061', '411', '3095', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3062', '411', '3096', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3063', '411', '3097', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3064', '411', '3098', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3065', '411', '3099', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3066', '411', '3100', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3067', '411', '3101', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3068', '411', '3102', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3069', '411', '3103', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3070', '412', '3104', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3071', '412', '3105', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3072', '412', '3106', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3073', '412', '3107', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3074', '412', '3108', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3075', '412', '3109', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3076', '412', '3110', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3077', '412', '3111', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3078', '412', '3112', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3079', '412', '3113', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3080', '412', '3114', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3081', '413', '3115', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3082', '413', '3116', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3083', '413', '3117', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3084', '413', '3118', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3085', '413', '3119', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3086', '413', '3120', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3087', '413', '3121', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3088', '413', '3122', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3089', '413', '3123', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3090', '413', '3124', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3091', '413', '3125', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3092', '413', '3126', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3093', '413', '3127', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3094', '414', '3128', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3095', '414', '3129', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3096', '414', '3130', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3097', '414', '3131', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3098', '414', '3132', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3099', '414', '3133', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3100', '414', '3134', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3101', '414', '3135', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3102', '414', '3136', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3103', '414', '3137', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3104', '414', '3138', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3105', '415', '3139', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3106', '415', '3140', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3107', '415', '3141', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3108', '415', '3142', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3109', '415', '3143', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3110', '415', '3144', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3111', '415', '3145', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3112', '415', '3146', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3113', '415', '3147', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3114', '415', '3148', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3115', '415', '3149', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3116', '415', '3150', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3117', '416', '3151', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3118', '416', '3152', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3119', '416', '3153', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3120', '416', '3154', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3121', '416', '3155', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3122', '416', '3156', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3123', '416', '3157', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3124', '416', '3158', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3125', '416', '3159', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3126', '416', '3160', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3127', '417', '3161', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3128', '417', '3162', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3129', '417', '3163', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3130', '417', '3164', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3131', '417', '3165', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3132', '417', '3166', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3133', '417', '3167', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3134', '418', '3168', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3135', '418', '3169', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3136', '418', '3170', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3137', '418', '3171', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3138', '418', '3172', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3139', '418', '3173', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3140', '418', '3174', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3141', '418', '3175', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3142', '419', '3176', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3143', '420', '3177', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3144', '420', '3178', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3145', '421', '3179', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3146', '421', '3180', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3147', '421', '3181', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3148', '421', '3182', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3149', '421', '3183', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3150', '422', '3184', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3151', '422', '3185', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3152', '422', '3186', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3153', '422', '3187', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3154', '422', '3188', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3155', '422', '3189', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3156', '422', '3190', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3157', '423', '3191', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3158', '423', '3192', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3159', '423', '3193', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3160', '423', '3194', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3161', '424', '3195', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3162', '424', '3196', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3163', '424', '3197', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3164', '424', '3198', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3165', '424', '3199', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3166', '424', '3200', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3167', '425', '3201', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3168', '425', '3202', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3169', '425', '3203', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3170', '425', '3204', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3171', '425', '3205', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3172', '425', '3206', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3173', '425', '3207', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3174', '426', '3208', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3175', '426', '3209', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3176', '426', '3210', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3177', '426', '3211', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3178', '426', '3212', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3179', '426', '3213', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3180', '426', '3214', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3181', '427', '3215', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3182', '427', '3216', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3183', '427', '3217', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3184', '427', '3218', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3185', '427', '3219', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3186', '427', '3220', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3187', '427', '3221', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3188', '427', '3222', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3189', '428', '3223', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3190', '428', '3224', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3191', '428', '3225', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3192', '428', '3226', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3193', '428', '3227', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3194', '428', '3228', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3195', '428', '3229', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3196', '429', '3230', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3197', '429', '3231', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3198', '429', '3232', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3199', '429', '3233', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3200', '429', '3234', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3201', '429', '3235', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3202', '429', '3236', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3203', '429', '3237', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3204', '429', '3238', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3205', '430', '3239', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3206', '430', '3240', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3207', '430', '3241', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3208', '430', '3242', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3209', '430', '3243', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3210', '430', '3244', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3211', '430', '3245', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3212', '430', '3246', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3213', '431', '3247', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3214', '431', '3248', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3215', '431', '3249', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3216', '431', '3250', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3217', '431', '3251', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3218', '431', '3252', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3219', '431', '3253', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3220', '431', '3254', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3221', '432', '3255', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3222', '432', '3256', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3223', '432', '3257', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3224', '432', '3258', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3225', '432', '3259', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3226', '432', '3260', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3227', '432', '3261', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3228', '433', '3262', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3229', '433', '3263', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3230', '433', '3264', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3231', '433', '3265', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3232', '433', '3266', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3233', '433', '3267', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3234', '434', '3268', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3235', '434', '3269', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3236', '434', '3270', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3237', '434', '3271', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3238', '435', '3272', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3239', '435', '3273', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3240', '435', '3274', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3241', '435', '3275', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3242', '436', '3276', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3243', '436', '3277', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3244', '436', '3278', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3245', '436', '3279', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3246', '436', '3280', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3247', '437', '3281', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3248', '437', '3282', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3249', '437', '3283', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3250', '437', '3284', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3251', '437', '3285', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3252', '437', '3286', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3253', '438', '3287', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3254', '438', '3288', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3255', '438', '3289', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3256', '438', '3290', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3257', '438', '3291', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3258', '438', '3292', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3259', '439', '3293', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3260', '439', '3294', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3261', '439', '3295', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3262', '439', '3296', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3263', '439', '3297', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3264', '440', '3298', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3265', '440', '3299', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3266', '440', '3300', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3267', '440', '3301', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3268', '440', '3302', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3269', '440', '3303', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3270', '441', '3304', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3271', '441', '3305', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3272', '441', '3306', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3273', '442', '3307', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3274', '442', '3308', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3275', '442', '3309', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3276', '442', '3310', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3277', '442', '3311', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3278', '443', '3312', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3279', '443', '3313', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3280', '443', '3314', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3281', '443', '3315', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3282', '443', '3316', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3283', '444', '3317', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3284', '444', '3318', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3285', '444', '3319', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3286', '445', '3320', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3287', '445', '3321', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3288', '445', '3322', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3289', '445', '3323', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3290', '445', '3324', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3291', '445', '3325', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3292', '445', '3326', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3293', '445', '3327', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3294', '446', '3328', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3295', '446', '3329', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3296', '446', '3330', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3297', '446', '3331', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3298', '447', '3332', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3299', '447', '3333', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3300', '447', '3334', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3301', '448', '3335', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3302', '448', '3336', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3303', '448', '3337', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3304', '449', '3338', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3305', '449', '3339', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3306', '449', '3340', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3307', '449', '3341', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3308', '449', '3342', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3309', '449', '3343', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3310', '449', '3344', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3311', '450', '3345', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3312', '450', '3346', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3313', '450', '3347', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3314', '450', '3348', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3315', '451', '3349', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3316', '451', '3350', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3317', '451', '3351', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3318', '451', '3352', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3319', '451', '3353', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3320', '451', '3354', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3321', '451', '3355', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3322', '451', '3356', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3323', '451', '3357', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3324', '452', '3358', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3325', '452', '3359', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3326', '452', '3360', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3327', '452', '3361', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3328', '452', '3362', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3329', '452', '3363', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3330', '452', '3364', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3331', '452', '3365', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3332', '452', '3366', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3333', '453', '3367', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3334', '453', '3368', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3335', '453', '3369', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3336', '453', '3370', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3337', '454', '3371', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3338', '454', '3372', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3339', '454', '3373', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3340', '454', '3374', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3341', '454', '3375', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3342', '454', '3376', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3343', '454', '3377', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3344', '454', '3378', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3345', '454', '3379', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3346', '454', '3380', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3347', '454', '3381', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3348', '454', '3382', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3349', '455', '3383', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3350', '455', '3384', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3351', '455', '3385', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3352', '455', '3386', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3353', '455', '3387', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3354', '455', '3388', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3355', '455', '3389', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3356', '455', '3390', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3357', '456', '3391', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3358', '456', '3392', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3359', '456', '3393', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3360', '456', '3394', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3361', '456', '3395', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3362', '456', '3396', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3363', '456', '3397', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3364', '456', '3398', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3365', '456', '3399', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3366', '456', '3400', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3367', '456', '3401', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3368', '457', '3402', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3369', '457', '3403', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3370', '457', '3404', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3371', '457', '3405', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3372', '457', '3406', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3373', '457', '3407', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3374', '457', '3408', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3375', '458', '3409', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3376', '458', '3410', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3377', '458', '3411', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3378', '458', '3412', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3379', '458', '3413', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3380', '458', '3414', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3381', '458', '3415', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3382', '459', '3416', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3383', '459', '3417', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3384', '459', '3418', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3385', '459', '3419', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3386', '459', '3420', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3387', '460', '3421', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3388', '461', '3422', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3389', '462', '3423', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3390', '463', '3424', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3391', '464', '3425', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3392', '465', '3426', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3393', '466', '3427', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3394', '467', '3428', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3395', '468', '3429', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3396', '469', '3430', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3397', '470', '3431', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3398', '471', '3432', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3399', '472', '3433', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3400', '473', '3434', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3401', '474', '3435', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3402', '475', '3436', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3403', '476', '3437', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3404', '477', '3438', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3405', '478', '3439', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3406', '479', '3440', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3407', '480', '3441', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3408', '481', '3442', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3409', '482', '3443', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3410', '482', '3444', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3411', '482', '3445', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3412', '482', '3446', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3413', '483', '3447', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3414', '483', '3448', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3415', '483', '3449', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3416', '483', '3450', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3417', '483', '3451', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3418', '484', '3452', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3419', '484', '3453', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3420', '484', '3454', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3421', '484', '3455', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3422', '484', '3456', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3423', '484', '3457', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3424', '484', '3458', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3425', '484', '3459', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3426', '484', '3460', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3427', '485', '3461', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3428', '486', '3462', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3429', '487', '3463', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3430', '488', '3464', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3431', '489', '3465', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3432', '490', '3466', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3433', '491', '3467', '1', '0', null, null);
INSERT INTO `c2_region_rs` VALUES ('3434', '492', '3468', '1', '0', null, null);

-- ----------------------------
-- Table structure for c2_resume
-- ----------------------------
DROP TABLE IF EXISTS `c2_resume`;
CREATE TABLE `c2_resume` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mobile_num` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `expect_salary` varchar(255) DEFAULT NULL,
  `expect_industry` varchar(255) DEFAULT NULL,
  `content` text,
  `memo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_resume
-- ----------------------------
INSERT INTO `c2_resume` VALUES ('1', '陈洵杰', '15622965560', '1145470390@qq.com', '<p><span style=\"font-size: 16px;\">有良好的编程习惯，遵循面相对象开发流程，熟练使用IDE开发工具及日常办公软件。有很好的团队意识和较强的责任心。思维清晰、逻辑严谨、沟通表达能力较强。熟悉YII2，熟用Git，SVN等工具，对Linux系统操作，MySQL有一定了解。技术栈方向有Java安卓开发，JavaScript，PHP，HTML。业余时间参与创业团队的共享类项目修改，智能家居开发等；建立私人仓库，学习开原项目，偶尔会写博客。</span></p>', '本科', '广东科技学院', '互联网IT', '互联网/电子商务', '10K+', '互联网软件开发工程师', '<p><strong><span style=\"font-size: 16px;\">2019/1-至今 明图家居生活</span></strong></p><p><span style=\"font-size: 16px;\">负责微信商城项目的维护和需求开发；</span></p><p><span style=\"font-size: 16px;\">独立负责活微信动投票平台项目的开发以及维护；</span></p><p><span style=\"font-size: 16px;\">负责进销存的功能开发以及维护；</span></p><p><span style=\"font-size: 16px;\">负责分销功能的开发；</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><strong><span style=\"font-size: 16px;\">2016/9-2019/1 子弹头科技</span></strong></p><p><span style=\"font-size: 16px;\">前期项目参与子弹头CRM系统，商城系统，依照任务执行项目的测试，参与微信端前端功能和界面，参与后台业务，负责使用对应的文档编写；</span></p><p><span style=\"font-size: 16px;\">中期参与可比优居微信小游戏开发，负责移植和简单的二次开发；参与商城平台app客户端开发，完成对应功能开发和测试，功能维护和更新；</span></p><p><span style=\"font-size: 16px;\">后期参与小程序预研并编写方案；参与可比优居CRM系统，包括前端界面和功能，部分后台接口，编写对应使用文档；</span></p><p><span style=\"font-size: 16px;\">参与心到项目，参与部分自定义表单开发，负责客户端app的架构和分工，完成前端功能和业务，编写开发文档规范。</span></p><p><span style=\"font-size: 16px;\"><br></span></p><p><strong><span style=\"font-size: 16px;\">2016/2-2016/9 小世界网络</span></strong></p><p><span style=\"font-size: 16px;\">参与微信分销开发，包括前端功能和界面，参与后端业务，负责对应的功能文档编写；</span></p><p><span style=\"font-size: 16px;\">参与官网后台开发，负责对应的功能文档编写；</span></p>', '<p><strong>获得互联网＋比赛三等级</strong><br><strong>获得学校优秀干部奖</strong><span class=\"redactor-invisible-space\"><br></span></p>', '1', '2019-04-02 14:41:55', '2019-04-02 17:09:19');

-- ----------------------------
-- Table structure for c2_supplier
-- ----------------------------
DROP TABLE IF EXISTS `c2_supplier`;
CREATE TABLE `c2_supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `province_id` bigint(20) DEFAULT '0',
  `city_id` bigint(20) DEFAULT '0',
  `district_id` bigint(20) DEFAULT '0',
  `geo_longitude` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `geo_latitude` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `geo_marker_color` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text COLLATE utf8mb4_bin,
  `is_default` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`code`(191)),
  KEY `Index_2` (`label`(191)),
  KEY `Index_3` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_supplier
-- ----------------------------
INSERT INTO `c2_supplier` VALUES ('1', 'HHGYS', '小榄供应商', '小榄供应商', '25', '392', '2921', '', '', '', 0x3C703EE593A6E59388E59388E59388E59388E59388E59388E59388E593883C2F703E, '0', '1', '0', '2019-03-30 11:22:49', '2019-04-07 11:25:53');

-- ----------------------------
-- Table structure for c2_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `c2_warehouse`;
CREATE TABLE `c2_warehouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `eshop_id` bigint(20) DEFAULT NULL,
  `entity_id` bigint(20) DEFAULT '0',
  `entity_class` varchar(255) COLLATE utf8mb4_bin DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT '0',
  `area_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `geo_longitude` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `geo_latitude` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `geo_marker_color` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`eshop_id`),
  KEY `Index_2` (`entity_id`),
  KEY `Index_3` (`province_id`,`country_id`,`city_id`,`area_id`),
  KEY `Index_4` (`geo_longitude`(191),`geo_latitude`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_warehouse
-- ----------------------------
INSERT INTO `c2_warehouse` VALUES ('1', '小榄仓库', '小榄仓库', 'zsck', 'xhun', '1562296556', null, '0', '0', null, '9', '147', '1213', null, '东方', '', '', '', null, '1', '0', '2019-03-30 11:18:06', '2019-04-07 11:25:31');
