/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pache

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-22 02:11:40
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
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `default_value` text,
  `memo` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `c2_attribute` VALUES ('28', '1', '1', 'C18', '通用', '通用', '', 'textInput', '', '', '1', '1', '0', '0', '0', null, '1', '0', '2019-04-08 13:13:08', '2019-04-08 13:13:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_attributeset
-- ----------------------------
INSERT INTO `c2_attributeset` VALUES ('3', '1', '1', 'XCSXZ', '鞋擦属性组', '鞋擦属性组', '1', '0', '2019-04-06 15:26:40', '2019-04-06 18:41:06');
INSERT INTO `c2_attributeset` VALUES ('4', '1', '1', 'QJS', '清洁刷属性', '清洁刷属性', '1', '0', '2019-04-07 09:25:53', '2019-04-07 09:44:15');
INSERT INTO `c2_attributeset` VALUES ('5', '1', '1', 'TY', '通用属性组', '通用属性组', '1', '0', '2019-04-08 13:12:35', '2019-04-08 13:13:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `c2_attributeset_attribute_rs` VALUES ('36', '5', '28', '1', '0', '2019-04-08 13:13:25', '2019-04-08 13:13:25');

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
INSERT INTO `c2_be_user` VALUES ('1', '0', '0', 'admin', 'admin@zdt6.com', '$2y$10$L2ELm8yMYvl2429Id0M1u.g0l1lCnOyGIcYY.26T.k91y5RsWkyv.', 'wh3xjpD0cazZIwLEDNK785pe54bG6Dm1', '0000-00-00 00:00:00', null, null, '127.0.0.1', '0', '2019-04-19 13:12:18', null, null, '0', '0', '1', '0', '2017-01-25 11:01:00', '2017-05-17 05:42:02');
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
-- Table structure for c2_chieftain_master_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_chieftain_master_rs`;
CREATE TABLE `c2_chieftain_master_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chess_id` bigint(20) DEFAULT NULL,
  `chieftain_id` bigint(20) DEFAULT '0',
  `master_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`chieftain_id`),
  KEY `Index_2` (`master_id`),
  KEY `Index_3` (`chess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_chieftain_master_rs
-- ----------------------------

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
-- Table structure for c2_elder_chieftain_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_elder_chieftain_rs`;
CREATE TABLE `c2_elder_chieftain_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chess_id` bigint(20) DEFAULT NULL,
  `elder_id` bigint(20) DEFAULT '0',
  `chieftain_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`elder_id`),
  KEY `Index_2` (`chieftain_id`),
  KEY `Index_3` (`chess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_elder_chieftain_rs
-- ----------------------------

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
-- Table structure for c2_familiar_peasant_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_familiar_peasant_rs`;
CREATE TABLE `c2_familiar_peasant_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chess_id` bigint(20) DEFAULT NULL,
  `familiar_id` bigint(20) DEFAULT '0',
  `peasant_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`familiar_id`),
  KEY `Index_2` (`peasant_id`),
  KEY `Index_3` (`chess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_familiar_peasant_rs
-- ----------------------------

-- ----------------------------
-- Table structure for c2_fe_user
-- ----------------------------
DROP TABLE IF EXISTS `c2_fe_user`;
CREATE TABLE `c2_fe_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT '0',
  `attributeset_id` bigint(20) DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `registration_ip` varchar(255) DEFAULT NULL,
  `registration_src_type` tinyint(4) DEFAULT '100',
  `flags` int(11) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `wechat_union_id` char(10) DEFAULT NULL,
  `wechat_open_id` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `sms_receipt` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT '0',
  `city_id` bigint(20) DEFAULT '0',
  `created_by` bigint(20) DEFAULT '0',
  `updated_by` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`username`(191)),
  KEY `Index_2` (`email`(191)),
  KEY `Index_3` (`type`),
  KEY `Index_4` (`open_id`(191)),
  KEY `Index_5` (`wechat_open_id`(191)),
  KEY `Index_6` (`access_token`(191),`status`),
  KEY `Index_7` (`mobile_number`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_fe_user
-- ----------------------------
INSERT INTO `c2_fe_user` VALUES ('1', '1', '0', 'xun', '', null, null, null, null, null, null, '100', null, null, null, null, null, null, null, '1562296560', null, null, null, null, '0', '0', '0', '0', '1', '0', '2019-04-13 08:16:46', '2019-04-13 08:16:46');
INSERT INTO `c2_fe_user` VALUES ('2', '2', '0', '采购01', '', null, null, null, null, null, null, '1', null, null, null, null, null, null, null, '1562296561', null, null, null, null, '0', '0', '0', '0', '1', '0', '2019-04-13 09:08:03', '2019-04-13 09:08:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_inventory_delivery_note
-- ----------------------------
INSERT INTO `c2_inventory_delivery_note` VALUES ('8', '1', 'DN20190416HQ00000008', '惺惺惜惺惺', '1', '5', '1', '2019-03-01 07:35:36', '0.00', '2', '2', '2', '2', '1', '123', '', null, '0', '0', '1', '1', '3', '1', '0', '2019-04-16 17:22:13', '2019-04-16 17:20:50');
INSERT INTO `c2_inventory_delivery_note` VALUES ('9', '1', 'DN20190418KH00000009', '蓝菊', '1', '6', '1', '2019-03-01 07:35:36', '900.00', null, null, null, null, '在线', '货运', '', null, '0', '0', '1', '1', '3', '1', '0', '2019-04-18 13:58:53', '2019-04-18 13:58:26');
INSERT INTO `c2_inventory_delivery_note` VALUES ('10', '1', 'DN20190420PT00000010', '惺惺惜惺惺', '1', '6', '1', '2019-03-01 07:35:36', '0.00', null, null, null, null, '', '', '', null, '0', '0', '1', '1', '3', '1', '0', '2019-04-20 18:27:38', '2019-04-20 18:07:12');
INSERT INTO `c2_inventory_delivery_note` VALUES ('11', '1', 'DN20190421H000000011', '惺惺惜惺惺', '1', '6', '1', '2019-03-01 07:35:36', '0.00', null, null, null, null, '在线', '货运', 0x3C703E31323331323C2F703E, null, '0', '0', '1', '1', '4', '1', '0', '2019-04-21 08:38:32', '2019-04-21 08:38:32');
INSERT INTO `c2_inventory_delivery_note` VALUES ('12', '1', 'DN20190421EE00000012', '惺惺惜惺惺', '1', '6', '1', '2019-03-01 07:35:36', '0.00', null, null, null, null, '在线', '货运', '', null, '0', '0', '1', '1', '4', '1', '0', '2019-04-21 08:43:08', '2019-04-21 08:42:45');
INSERT INTO `c2_inventory_delivery_note` VALUES ('13', '1', 'DN20190421VK00000013', '惺惺惜惺惺', '1', '2', '1', '2019-03-01 07:35:36', '0.00', null, null, null, null, '在线', '货运', '', null, '0', '0', '1', '1', '1', '1', '0', '2019-04-21 08:45:32', '2019-04-21 08:45:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_inventory_delivery_note_item
-- ----------------------------
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('5', '8', '18', '0', '大圆鞋擦(黄白)', '0', '10', '1', null, null, null, '0.00', '9.00', '90.00', '', '1', '0', '2019-04-16 17:20:50', '2019-04-16 17:20:50');
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('6', '9', '18', '0', '大圆鞋擦(黄白)', '0', '100', '1', null, null, null, '0.00', '9.00', '900.00', '', '1', '0', '2019-04-18 13:58:26', '2019-04-18 13:58:26');
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('7', '10', '18', '0', '大圆鞋擦(黄白)', '0', '3', '1', null, null, null, '0.00', '3.00', '9.00', '', '1', '0', '2019-04-20 18:07:12', '2019-04-20 18:07:12');
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('8', '10', '5', '0', '反绒皮清洁刷(内销)', '0', '3', '1', null, null, null, '0.00', '4.00', '12.00', null, '1', '0', '2019-04-20 18:27:38', '2019-04-20 18:27:38');
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('9', '11', '18', '0', '大圆鞋擦(黄白)', '0', '1', '1', null, null, null, '0.00', '0.00', '0.00', null, '1', '0', '2019-04-21 08:38:33', '2019-04-21 08:38:33');
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('10', '12', '18', '0', '大圆鞋擦(黄白)', '0', '100', '1', null, null, null, '0.00', '2.00', '200.00', '', '1', '0', '2019-04-21 08:42:45', '2019-04-21 08:42:45');
INSERT INTO `c2_inventory_delivery_note_item` VALUES ('11', '13', '18', '0', '大圆鞋擦(黄白)', '0', '1', '1', null, null, null, '0.00', '0.00', '0.00', null, '1', '0', '2019-04-21 08:45:32', '2019-04-21 08:45:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_inventory_note_log
-- ----------------------------
INSERT INTO `c2_inventory_note_log` VALUES ('4', '3', '1', null, '1', '2019-04-12 11:15:51', 0x3C703E3132333C2F703E, '1', '1', '1', '0', '2019-04-11 12:53:33', '2019-04-11 12:53:33');
INSERT INTO `c2_inventory_note_log` VALUES ('5', '4', '1', null, '1', '2019-04-06 03:15:47', '', '1', '1', '1', '0', '2019-04-11 13:00:40', '2019-04-11 13:00:40');
INSERT INTO `c2_inventory_note_log` VALUES ('6', '6', '2', null, '1', '2019-04-11 07:15:12', '', '1', '1', '1', '0', '2019-04-11 13:25:16', '2019-04-11 13:25:16');
INSERT INTO `c2_inventory_note_log` VALUES ('7', '5', '1', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-17 13:37:11', '2019-04-17 13:37:11');
INSERT INTO `c2_inventory_note_log` VALUES ('8', '8', '2', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-17 13:37:43', '2019-04-17 13:37:43');
INSERT INTO `c2_inventory_note_log` VALUES ('9', '6', '1', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-18 13:49:50', '2019-04-18 13:49:50');
INSERT INTO `c2_inventory_note_log` VALUES ('10', '9', '2', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-18 13:59:51', '2019-04-18 13:59:51');
INSERT INTO `c2_inventory_note_log` VALUES ('11', '7', '1', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-18 16:33:59', '2019-04-18 16:33:59');
INSERT INTO `c2_inventory_note_log` VALUES ('12', '10', '1', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-20 18:29:39', '2019-04-20 18:29:39');
INSERT INTO `c2_inventory_note_log` VALUES ('13', '10', '1', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-20 18:29:54', '2019-04-20 18:29:54');
INSERT INTO `c2_inventory_note_log` VALUES ('14', '10', '1', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-20 18:30:03', '2019-04-20 18:30:03');
INSERT INTO `c2_inventory_note_log` VALUES ('15', '10', '1', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-20 18:30:20', '2019-04-20 18:30:20');
INSERT INTO `c2_inventory_note_log` VALUES ('16', '10', '1', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-20 18:30:37', '2019-04-20 18:30:37');
INSERT INTO `c2_inventory_note_log` VALUES ('17', '6', '3', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-21 06:21:28', '2019-04-21 06:21:28');
INSERT INTO `c2_inventory_note_log` VALUES ('18', '11', '1', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 08:38:39', '2019-04-21 08:38:39');
INSERT INTO `c2_inventory_note_log` VALUES ('19', '12', '1', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 08:43:23', '2019-04-21 08:43:23');
INSERT INTO `c2_inventory_note_log` VALUES ('20', '12', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 09:11:05', '2019-04-21 09:11:05');
INSERT INTO `c2_inventory_note_log` VALUES ('21', '12', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 09:13:17', '2019-04-21 09:13:17');
INSERT INTO `c2_inventory_note_log` VALUES ('22', '12', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 09:18:47', '2019-04-21 09:18:47');
INSERT INTO `c2_inventory_note_log` VALUES ('23', '10', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_note_log` VALUES ('24', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_note_log` VALUES ('25', '10', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_note_log` VALUES ('26', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_note_log` VALUES ('27', '12', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 15:46:58', '2019-04-21 15:46:58');
INSERT INTO `c2_inventory_note_log` VALUES ('28', '12', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 15:52:16', '2019-04-21 15:52:16');
INSERT INTO `c2_inventory_note_log` VALUES ('29', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 15:55:02', '2019-04-21 15:55:02');
INSERT INTO `c2_inventory_note_log` VALUES ('30', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 15:57:43', '2019-04-21 15:57:43');
INSERT INTO `c2_inventory_note_log` VALUES ('31', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:01:34', '2019-04-21 16:01:34');
INSERT INTO `c2_inventory_note_log` VALUES ('32', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:04:32', '2019-04-21 16:04:32');
INSERT INTO `c2_inventory_note_log` VALUES ('33', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:05:38', '2019-04-21 16:05:38');
INSERT INTO `c2_inventory_note_log` VALUES ('34', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:06:41', '2019-04-21 16:06:41');
INSERT INTO `c2_inventory_note_log` VALUES ('35', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:10:05', '2019-04-21 16:10:05');
INSERT INTO `c2_inventory_note_log` VALUES ('36', '8', '2', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-21 16:12:25', '2019-04-21 16:12:25');
INSERT INTO `c2_inventory_note_log` VALUES ('37', '8', '3', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-21 16:12:39', '2019-04-21 16:12:39');
INSERT INTO `c2_inventory_note_log` VALUES ('38', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:16:16', '2019-04-21 16:16:16');
INSERT INTO `c2_inventory_note_log` VALUES ('39', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 16:20:00', '2019-04-21 16:20:00');
INSERT INTO `c2_inventory_note_log` VALUES ('40', '12', '3', null, '1', '2019-03-01 07:35:36', '', '1', '1', '1', '0', '2019-04-21 16:21:03', '2019-04-21 16:21:03');
INSERT INTO `c2_inventory_note_log` VALUES ('41', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 17:04:28', '2019-04-21 17:04:28');
INSERT INTO `c2_inventory_note_log` VALUES ('42', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 17:06:38', '2019-04-21 17:06:38');
INSERT INTO `c2_inventory_note_log` VALUES ('43', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 17:08:21', '2019-04-21 17:08:21');
INSERT INTO `c2_inventory_note_log` VALUES ('44', '11', '3', null, '1', '2019-03-01 07:35:36', 0x3C703E31323331323C2F703E, '1', '1', '1', '0', '2019-04-21 17:11:25', '2019-04-21 17:11:25');
INSERT INTO `c2_inventory_note_log` VALUES ('45', '9', '2', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-21 17:16:43', '2019-04-21 17:16:43');
INSERT INTO `c2_inventory_note_log` VALUES ('46', '9', '3', null, '1', '2019-03-15 14:30:02', '', '1', '1', '1', '0', '2019-04-21 17:22:40', '2019-04-21 17:22:40');

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
  `arrival_date` datetime NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_inventory_receipt_note
-- ----------------------------
INSERT INTO `c2_inventory_receipt_note` VALUES ('3', '1', 'RN20190411OF00000001', '休息休息', '1', '1', '0000-00-00 00:00:00', '2019-04-12 11:15:51', '12345', 'x', 'x', 'x', 'x', 0x3C703E3132333C2F703E, null, '1', '1', '3', '1', '0', '2019-04-11 12:53:23', '2019-04-11 12:53:23');
INSERT INTO `c2_inventory_receipt_note` VALUES ('4', '1', 'RN20190411AB00000004', '谢谢', '1', '1', '0000-00-00 00:00:00', '2019-04-06 03:15:47', 'x', 'x', 'x', 'x', 'x', '', null, '1', '1', '3', '1', '0', '2019-04-11 13:00:21', '2019-04-11 13:00:21');
INSERT INTO `c2_inventory_receipt_note` VALUES ('5', '1', 'RN20190417EC00000005', '谢谢谢谢想', '1', '1', '0000-00-00 00:00:00', '2019-03-15 14:30:02', '0000909090', '2', '1', '1', '1', '', null, '1', '1', '3', '1', '0', '2019-04-17 13:34:00', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note` VALUES ('6', '1', 'RN20190418QH00000006', '表情', '1', '1', '2019-03-15 14:30:02', '2019-03-15 14:30:02', '0000909090', null, '表情', '1', null, '', null, '1', '1', '4', '1', '0', '2019-04-18 13:49:18', '2019-04-18 13:49:18');
INSERT INTO `c2_inventory_receipt_note` VALUES ('7', '1', 'RN20190418T900000007', '表情', '1', '1', '2019-03-15 14:30:02', '2019-03-15 14:30:02', '0000909090', null, '表情', '1', null, '', null, '1', '1', '4', '1', '0', '2019-04-18 17:44:00', '2019-04-18 13:52:42');
INSERT INTO `c2_inventory_receipt_note` VALUES ('8', '1', 'RN20190418LF00000008', '表情', '1', '1', '2019-03-15 14:30:02', '2019-03-15 14:30:02', '0000909090', null, '表情', '1', null, '', null, '1', '1', '4', '1', '0', '2019-04-18 14:07:07', '2019-04-18 14:07:07');
INSERT INTO `c2_inventory_receipt_note` VALUES ('9', '1', 'RN20190421OG00000009', '谢谢谢谢想', '1', '1', '2019-03-15 14:30:02', '2019-03-15 14:30:02', '0000909090', null, '财务', '2', null, '', null, '1', '1', '4', '1', '0', '2019-04-21 17:16:35', '2019-04-21 17:16:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_inventory_receipt_note_item
-- ----------------------------
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('3', '3', '12', '15', '', '1', '4', '1.40', '5.60', '1', null, '123', '1', '0', '2019-04-11 12:53:23', '2019-04-11 12:53:23');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('4', '4', '13', '16', '', '1', '1', '7.00', '7.00', '1', null, '', '1', '0', '2019-04-11 13:00:22', '2019-04-11 13:00:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('5', '4', '12', '15', '', '1', '2', '2.00', '4.00', '1', null, '', '1', '0', '2019-04-11 13:00:22', '2019-04-11 13:00:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('6', '5', '14', '1', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('7', '5', '14', '2', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('8', '5', '16', '5', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('9', '5', '20', '9', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('10', '5', '21', '10', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('11', '5', '22', '11', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('12', '5', '23', '12', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('13', '5', '24', '13', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-17 13:32:39', '2019-04-17 13:32:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('14', '6', '14', '1', '', '1', '1', '1.00', '1.00', '1', null, '', '1', '0', '2019-04-18 13:49:18', '2019-04-18 13:49:18');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('15', '7', '19', '6', '', '1', '110', '9.00', '90.00', '1', null, '', '1', '0', '2019-04-18 13:52:43', '2019-04-18 13:52:43');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('16', '8', '21', '10', '', '1', '1000', '5.00', '5000.00', '1', null, '', '1', '0', '2019-04-18 14:07:07', '2019-04-18 14:07:07');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('17', '10', '16', '5', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('18', '10', '20', '9', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('19', '10', '21', '10', null, '0', '10', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('20', '10', '22', '11', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('21', '10', '23', '12', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('22', '10', '24', '14', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('23', '10', '16', '5', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 15:25:58', '2019-04-21 15:25:58');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('24', '11', '16', '5', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('25', '11', '20', '9', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('26', '11', '21', '10', null, '0', '5', null, null, '0', null, null, '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('27', '11', '22', '11', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('28', '11', '23', '12', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('29', '11', '24', '14', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:30:01', '2019-04-21 15:30:01');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('30', '10', '16', '5', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('31', '10', '20', '9', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('32', '10', '21', '10', null, '0', '10', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('33', '10', '22', '11', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('34', '10', '23', '12', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('35', '10', '24', '14', null, '0', '2', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('36', '10', '16', '5', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 15:36:19', '2019-04-21 15:36:19');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('37', '11', '16', '5', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('38', '11', '20', '9', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('39', '11', '21', '10', null, '0', '5', null, null, '0', null, null, '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('40', '11', '22', '11', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('41', '11', '23', '12', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('42', '11', '24', '14', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 15:41:46', '2019-04-21 15:41:46');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('43', '11', '16', '5', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:04:28', '2019-04-21 17:04:28');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('44', '11', '20', '9', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:04:28', '2019-04-21 17:04:28');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('45', '11', '21', '10', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:04:28', '2019-04-21 17:04:28');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('46', '11', '22', '11', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:04:28', '2019-04-21 17:04:28');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('47', '11', '23', '12', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:04:28', '2019-04-21 17:04:28');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('48', '11', '24', '14', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:04:29', '2019-04-21 17:04:29');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('49', '11', '16', '5', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:06:38', '2019-04-21 17:06:38');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('50', '11', '20', '9', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:06:38', '2019-04-21 17:06:38');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('51', '11', '21', '10', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:06:38', '2019-04-21 17:06:38');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('52', '11', '22', '11', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:06:39', '2019-04-21 17:06:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('53', '11', '23', '12', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:06:39', '2019-04-21 17:06:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('54', '11', '24', '14', null, '0', '0', null, null, '0', null, null, '1', '0', '2019-04-21 17:06:39', '2019-04-21 17:06:39');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('55', '11', '16', '5', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 17:08:22', '2019-04-21 17:08:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('56', '11', '20', '9', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 17:08:22', '2019-04-21 17:08:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('57', '11', '21', '10', null, '0', '5', null, null, '0', null, null, '1', '0', '2019-04-21 17:08:22', '2019-04-21 17:08:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('58', '11', '22', '11', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 17:08:22', '2019-04-21 17:08:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('59', '11', '23', '12', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 17:08:22', '2019-04-21 17:08:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('60', '11', '24', '14', null, '0', '1', null, null, '0', null, null, '1', '0', '2019-04-21 17:08:22', '2019-04-21 17:08:22');
INSERT INTO `c2_inventory_receipt_note_item` VALUES ('61', '9', '21', '10', '', '1', '1000', '80.00', '80000.00', '1', null, '', '1', '0', '2019-04-21 17:16:35', '2019-04-21 17:16:35');

-- ----------------------------
-- Table structure for c2_lord_elder_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_lord_elder_rs`;
CREATE TABLE `c2_lord_elder_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chess_id` bigint(20) DEFAULT NULL,
  `lord_id` bigint(20) DEFAULT '0',
  `elder_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`lord_id`),
  KEY `Index_2` (`elder_id`),
  KEY `Index_3` (`chess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_lord_elder_rs
-- ----------------------------

-- ----------------------------
-- Table structure for c2_master_familiar_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_master_familiar_rs`;
CREATE TABLE `c2_master_familiar_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chess_id` bigint(20) DEFAULT NULL,
  `master_id` bigint(20) DEFAULT '0',
  `familiar_id` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`master_id`),
  KEY `Index_2` (`familiar_id`),
  KEY `Index_3` (`chess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_master_familiar_rs
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
-- Table structure for c2_order
-- ----------------------------
DROP TABLE IF EXISTS `c2_order`;
CREATE TABLE `c2_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `production_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_order
-- ----------------------------
INSERT INTO `c2_order` VALUES ('2', '1', '111111', '2019-04-05 23:30:25', '2019-04-04 07:15:25', '1', '1', '3', '1', '2019-04-16 06:43:34', '2019-04-16 06:43:34');
INSERT INTO `c2_order` VALUES ('3', '1', '1001', '2019-04-05 23:30:25', '2019-04-04 07:15:25', '1', '1', '3', '1', '2019-04-16 06:45:11', '2019-04-17 13:33:26');
INSERT INTO `c2_order` VALUES ('4', '1', '1', '2019-04-05 23:30:25', '2019-04-04 07:15:25', '1', '1', '1', '1', '2019-04-16 13:39:54', '2019-04-16 13:47:09');
INSERT INTO `c2_order` VALUES ('5', '1', '2', '2019-04-05 23:30:25', '2019-04-04 07:15:25', '1', '1', '1', '1', '2019-04-16 16:52:21', '2019-04-16 16:52:21');
INSERT INTO `c2_order` VALUES ('6', '1', '1009', '2019-04-05 23:30:25', '2019-04-04 07:15:25', '1', '1', '1', '1', '2019-04-18 13:48:10', '2019-04-18 13:48:10');

-- ----------------------------
-- Table structure for c2_order_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_order_item`;
CREATE TABLE `c2_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `pieces` int(11) DEFAULT NULL,
  `packing` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `gross_weight` varchar(255) DEFAULT NULL,
  `net_weight` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`product_id`),
  KEY `Index_2` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_order_item
-- ----------------------------
INSERT INTO `c2_order_item` VALUES ('3', '2', '18', null, null, '1', '1', '', '', '', '', '', null, '0', '1', '2019-04-16 06:43:34', '2019-04-16 06:43:34');
INSERT INTO `c2_order_item` VALUES ('4', '3', '15', null, null, '90', '1', '', '', '', '', '', null, '0', '1', '2019-04-16 06:45:11', '2019-04-16 06:45:11');
INSERT INTO `c2_order_item` VALUES ('5', '4', '18', null, null, '10', '10', '', '', '', '', '', null, '0', '1', '2019-04-16 13:39:54', '2019-04-16 13:39:54');
INSERT INTO `c2_order_item` VALUES ('6', '5', '18', null, null, '10', '10', '', '', '', '', '', null, '0', '1', '2019-04-16 16:52:21', '2019-04-16 16:52:21');
INSERT INTO `c2_order_item` VALUES ('7', '3', '18', null, null, '80', '1', '', '', '', '', '', null, '0', '1', '2019-04-17 13:28:01', '2019-04-17 13:28:01');
INSERT INTO `c2_order_item` VALUES ('8', '6', '18', null, null, '1', '0', '', '', '', '', '', null, '0', '1', '2019-04-18 13:48:10', '2019-04-18 13:48:10');

-- ----------------------------
-- Table structure for c2_order_item_consumption
-- ----------------------------
DROP TABLE IF EXISTS `c2_order_item_consumption`;
CREATE TABLE `c2_order_item_consumption` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `material_id` int(11) DEFAULT NULL,
  `material_item_id` int(11) DEFAULT '0',
  `quantity` mediumint(9) NOT NULL DEFAULT '0',
  `consumed_num` mediumint(9) DEFAULT NULL,
  `subtotal` mediumint(9) DEFAULT NULL,
  `measure_id` bigint(20) DEFAULT '0',
  `memo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`order_id`),
  KEY `Index_2` (`product_id`),
  KEY `Index_3` (`material_item_id`),
  KEY `Index_4` (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_order_item_consumption
-- ----------------------------
INSERT INTO `c2_order_item_consumption` VALUES ('1', '3', '15', '14', '2', '90', '1', '90', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('2', '3', '15', '14', '1', '90', '1', '90', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('3', '3', '18', '16', '5', '80', '1', '80', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('4', '3', '18', '20', '9', '80', '1', '80', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('5', '3', '18', '21', '10', '80', '5', '400', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('6', '3', '18', '22', '11', '80', '1', '80', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('7', '3', '18', '23', '12', '80', '1', '80', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');
INSERT INTO `c2_order_item_consumption` VALUES ('8', '3', '18', '24', '14', '80', '1', '80', '0', null, '1', '0', '2019-04-21 19:19:10', '2019-04-21 19:19:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_product
-- ----------------------------
INSERT INTO `c2_product` VALUES ('5', '1', '1', null, 'PA-167-GG', null, null, '反绒皮清洁刷(内销)', '反绒皮清洁刷(内销)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:26:11', '2019-04-16 15:23:13');
INSERT INTO `c2_product` VALUES ('6', '1', '1', null, 'PA-1167-CC', null, null, '反绒皮清洁刷(出口)', '反绒皮清洁刷(出口)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product` VALUES ('7', '1', '1', null, 'PA-166-LX', null, null, '海绵鞋蜡刷(内销)', '海绵鞋蜡刷(内销)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:31:57', '2019-04-07 09:43:14');
INSERT INTO `c2_product` VALUES ('8', '1', '1', null, 'PA-1166-CK', null, null, '海绵鞋蜡刷(出口)', '海绵鞋蜡刷(出口)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product` VALUES ('9', '1', '1', null, 'PA-838-HS', null, null, '软管黑色绵羊鞋蜡(30G)', '软管黑色绵羊鞋蜡(30G)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:44:43', '2019-04-07 09:44:43');
INSERT INTO `c2_product` VALUES ('10', '1', '1', null, 'PA-838-WS', null, null, '软管无色绵羊鞋蜡(30G)', '软管无色绵羊鞋蜡(30G)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product` VALUES ('11', '1', '1', null, 'PA-838-ZS', null, null, '软管棕色绵羊鞋蜡(30G)', '软管棕色绵羊鞋蜡(30G)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-07 09:48:18', '2019-04-07 09:48:18');
INSERT INTO `c2_product` VALUES ('12', '1', '1', null, 'Test', null, null, '测试商品', '测试商品', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-08 13:13:44', '2019-04-08 13:13:44');
INSERT INTO `c2_product` VALUES ('13', '1', '2', null, 'c01', null, null, '胶袋', '胶袋', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-11 12:59:08', '2019-04-21 09:55:16');
INSERT INTO `c2_product` VALUES ('14', '1', '2', null, 'c02', null, null, '纸箱', '纸箱', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-11 13:04:11', '2019-04-16 06:16:30');
INSERT INTO `c2_product` VALUES ('15', '1', '1', null, 'C3', null, null, '产品001', '产品001', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-11 18:11:53', '2019-04-11 18:11:53');
INSERT INTO `c2_product` VALUES ('16', '1', '2', null, 'XY', null, null, '鞋油', '鞋油', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 05:57:03', '2019-04-16 05:58:19');
INSERT INTO `c2_product` VALUES ('18', '1', '1', null, 'PA-163-HB', null, null, '大圆鞋擦(黄白)', '大圆鞋擦(黄白)', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:20:05', '2019-04-18 13:47:29');
INSERT INTO `c2_product` VALUES ('19', '1', '2', null, 'HM', null, null, '海绵', '海绵', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:32:34', '2019-04-16 06:32:34');
INSERT INTO `c2_product` VALUES ('20', '1', '2', null, 'SG', null, null, '上盖', '上盖', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:33:12', '2019-04-16 06:33:12');
INSERT INTO `c2_product` VALUES ('21', '1', '2', null, 'DH', null, null, '底盒', '底盒', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:33:31', '2019-04-16 06:35:32');
INSERT INTO `c2_product` VALUES ('22', '1', '2', null, 'BGJ', null, null, '不干胶', '不干胶', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:33:52', '2019-04-16 06:33:52');
INSERT INTO `c2_product` VALUES ('23', '1', '2', null, 'CH', null, null, '彩盒', '彩盒', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:34:08', '2019-04-16 06:34:08');
INSERT INTO `c2_product` VALUES ('24', '1', '2', null, 'WX', null, null, '外箱', '外箱', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-16 06:34:23', '2019-04-16 17:47:30');
INSERT INTO `c2_product` VALUES ('25', '1', '1', null, 'K1', null, null, '产品K1', '产品K1', null, null, null, '0', '1', '0.00', '0.00', '1', '1', '0.00', '0.00', null, null, null, '0', '1', '0', '0', null, null, '0', '0', '0', '0', '0', null, '1', '1', '1', '50', '2019-04-20 08:07:42', '2019-04-20 12:34:15');

-- ----------------------------
-- Table structure for c2_product_attribute_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_attribute_rs`;
CREATE TABLE `c2_product_attribute_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `attribute_id` bigint(20) NOT NULL DEFAULT '0',
  `stock` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`product_id`),
  KEY `Index_2` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_product_attribute_rs
-- ----------------------------

-- ----------------------------
-- Table structure for c2_product_attributeset_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_attributeset_rs`;
CREATE TABLE `c2_product_attributeset_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `attributeset_id` bigint(20) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`product_id`),
  KEY `Index_2` (`attributeset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_attributeset_rs
-- ----------------------------
INSERT INTO `c2_product_attributeset_rs` VALUES ('7', '5', '4', '0', '2019-04-07 09:26:11', '2019-04-07 09:26:11');
INSERT INTO `c2_product_attributeset_rs` VALUES ('8', '6', '4', '0', '2019-04-07 09:28:55', '2019-04-07 09:28:55');
INSERT INTO `c2_product_attributeset_rs` VALUES ('10', '7', '4', '0', '2019-04-07 09:32:16', '2019-04-07 09:32:16');
INSERT INTO `c2_product_attributeset_rs` VALUES ('11', '7', '3', '0', '2019-04-07 09:36:39', '2019-04-07 09:36:39');
INSERT INTO `c2_product_attributeset_rs` VALUES ('12', '8', '3', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_attributeset_rs` VALUES ('13', '8', '4', '0', '2019-04-07 09:40:47', '2019-04-07 09:40:47');
INSERT INTO `c2_product_attributeset_rs` VALUES ('14', '9', '4', '0', '2019-04-07 09:44:44', '2019-04-07 09:44:44');
INSERT INTO `c2_product_attributeset_rs` VALUES ('15', '10', '4', '0', '2019-04-07 09:47:36', '2019-04-07 09:47:36');
INSERT INTO `c2_product_attributeset_rs` VALUES ('16', '11', '4', '0', '2019-04-07 09:48:18', '2019-04-07 09:48:18');
INSERT INTO `c2_product_attributeset_rs` VALUES ('17', '12', '5', '0', '2019-04-08 13:13:44', '2019-04-08 13:13:44');
INSERT INTO `c2_product_attributeset_rs` VALUES ('18', '13', '5', '0', '2019-04-11 12:59:09', '2019-04-11 12:59:09');
INSERT INTO `c2_product_attributeset_rs` VALUES ('19', '14', '3', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_attributeset_rs` VALUES ('20', '14', '4', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

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
INSERT INTO `c2_product_eav` VALUES ('135', '12', '28', 'C18', 0xE6B58BE8AF95E5B19EE680A7, '1', '0', '2019-04-08 13:13:44', '2019-04-08 13:13:44');
INSERT INTO `c2_product_eav` VALUES ('136', '13', '28', 'C18', 0xE9BB91E889B2, '1', '0', '2019-04-11 12:59:09', '2019-04-11 12:59:09');
INSERT INTO `c2_product_eav` VALUES ('137', '14', '12', 'C2', 0x5B5D, '1', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_eav` VALUES ('138', '14', '13', 'C3', 0x5B5D, '1', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_eav` VALUES ('139', '14', '14', 'C4', 0x5B5D, '1', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_eav` VALUES ('140', '14', '15', 'C5', 0x5B5D, '1', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_eav` VALUES ('141', '14', '16', 'C6', 0x5B5D, '1', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_eav` VALUES ('142', '14', '17', 'C7', 0x7B2239223A2235382E352A34302A34312E35636D222C223134223A2235382A33392A3339636D222C223231223A2236342A34392A3331636D222C223335223A2235322E332A33372E382A35332E32636D222C223338223A2234382A34342A3236636D227D, '1', '0', '2019-04-11 13:04:11', '2019-04-11 13:04:11');
INSERT INTO `c2_product_eav` VALUES ('143', '14', '18', 'C8', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('144', '14', '19', 'C9', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('145', '14', '20', 'C10', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('146', '14', '21', 'C11', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('147', '14', '22', 'C12', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('148', '14', '23', 'C13', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('149', '14', '24', 'C14', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('150', '14', '25', 'C15', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('151', '14', '26', 'C16', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');
INSERT INTO `c2_product_eav` VALUES ('152', '14', '27', 'C17', 0x5B5D, '1', '0', '2019-04-11 13:04:12', '2019-04-11 13:04:12');

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
-- Table structure for c2_product_material_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_material_item`;
CREATE TABLE `c2_product_material_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT '0',
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`product_id`),
  KEY `Index_2` (`code`(191))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_product_material_item
-- ----------------------------
INSERT INTO `c2_product_material_item` VALUES ('1', '14', '01', '', '纸箱', '10*10*10/黄色', '1', '50', '2019-04-12 14:18:50', '2019-04-12 14:18:50');
INSERT INTO `c2_product_material_item` VALUES ('2', '14', '02', '', '纸箱', '20*20*20/黑色', '1', '50', '2019-04-12 14:18:50', '2019-04-12 14:18:50');
INSERT INTO `c2_product_material_item` VALUES ('5', '16', '1', '', '鞋油', '鞋油', '1', '50', '2019-04-16 05:57:03', '2019-04-16 05:57:03');
INSERT INTO `c2_product_material_item` VALUES ('6', '19', '01', '', '海绵(粉红+灰)', '87*17mm', '1', '50', '2019-04-16 06:32:34', '2019-04-16 06:32:34');
INSERT INTO `c2_product_material_item` VALUES ('7', '19', '02', '', '海绵(灰+灰)', '87*15mm', '1', '50', '2019-04-16 06:32:34', '2019-04-16 06:32:34');
INSERT INTO `c2_product_material_item` VALUES ('8', '19', '03', '', '海绵(灰)', '47.44*110.72*40mm', '1', '50', '2019-04-16 06:32:34', '2019-04-16 06:32:34');
INSERT INTO `c2_product_material_item` VALUES ('9', '20', '1', '', '上盖', '166#', '1', '50', '2019-04-16 06:33:12', '2019-04-16 06:33:12');
INSERT INTO `c2_product_material_item` VALUES ('10', '21', '1', '', '底盒', '166#', '1', '50', '2019-04-16 06:33:31', '2019-04-16 06:33:31');
INSERT INTO `c2_product_material_item` VALUES ('11', '22', '1', '', '不干胶', '166#', '1', '50', '2019-04-16 06:33:52', '2019-04-16 06:33:52');
INSERT INTO `c2_product_material_item` VALUES ('12', '23', '1', '', '彩盒', '166#', '1', '50', '2019-04-16 06:34:08', '2019-04-16 06:34:08');
INSERT INTO `c2_product_material_item` VALUES ('13', '24', '1', '', '外箱', '52.3*37.8*53.2cm', '1', '50', '2019-04-16 06:34:23', '2019-04-16 06:34:23');
INSERT INTO `c2_product_material_item` VALUES ('14', '24', '2', '', '外箱', '22.3*27.8*23.2cm', '1', '50', '2019-04-16 17:47:26', '2019-04-16 17:47:26');
INSERT INTO `c2_product_material_item` VALUES ('15', '13', '1', '', '塑料袋', '绿色', '1', '50', '2019-04-20 12:34:06', '2019-04-20 12:34:06');
INSERT INTO `c2_product_material_item` VALUES ('16', '13', '2', '', '塑料袋', '黑色', '1', '50', '2019-04-21 09:55:16', '2019-04-21 09:55:16');

-- ----------------------------
-- Table structure for c2_product_material_rs
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_material_rs`;
CREATE TABLE `c2_product_material_rs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `material_id` bigint(20) NOT NULL DEFAULT '0',
  `material_item_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `num` bigint(20) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`product_id`),
  KEY `Index_2` (`material_id`),
  KEY `Index_3` (`material_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_product_material_rs
-- ----------------------------
INSERT INTO `c2_product_material_rs` VALUES ('4', '15', '14', '2', '1', '1', '50', '2019-04-12 18:46:58', '2019-04-12 18:46:58');
INSERT INTO `c2_product_material_rs` VALUES ('5', '15', '14', '1', '1', '1', '50', '2019-04-13 07:49:43', '2019-04-13 07:49:43');
INSERT INTO `c2_product_material_rs` VALUES ('6', '18', '16', '5', '1', '1', '50', '2019-04-16 06:36:07', '2019-04-16 06:36:07');
INSERT INTO `c2_product_material_rs` VALUES ('7', '18', '20', '9', '1', '1', '50', '2019-04-16 06:36:07', '2019-04-16 06:36:07');
INSERT INTO `c2_product_material_rs` VALUES ('8', '18', '21', '10', '1', '5', '50', '2019-04-16 06:36:07', '2019-04-16 06:36:07');
INSERT INTO `c2_product_material_rs` VALUES ('9', '18', '22', '11', '1', '1', '50', '2019-04-16 06:36:07', '2019-04-16 06:36:07');
INSERT INTO `c2_product_material_rs` VALUES ('10', '18', '23', '12', '1', '1', '50', '2019-04-16 06:36:07', '2019-04-16 06:36:07');
INSERT INTO `c2_product_material_rs` VALUES ('11', '18', '24', '14', '1', '1', '50', '2019-04-16 06:36:07', '2019-04-16 06:36:07');
INSERT INTO `c2_product_material_rs` VALUES ('12', '5', '16', '5', '1', '1', '50', '2019-04-16 15:23:13', '2019-04-16 15:23:13');
INSERT INTO `c2_product_material_rs` VALUES ('13', '25', '13', '15', '1', '1', '50', '2019-04-20 12:34:15', '2019-04-20 12:34:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of c2_product_sku
-- ----------------------------
INSERT INTO `c2_product_sku` VALUES ('8', '5', 0x43353A372F43373A32312F4331303A31372F4331313A31382F4331323A31392F4331333A3230, '35372c32312c31372c31382c31392c3230', 'PA-167-GG-35372c32312c31372c31382c31392c3230', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:167#', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:167#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:28:16', '2019-04-07 09:28:16');
INSERT INTO `c2_product_sku` VALUES ('9', '6', 0x43353A372F43373A32312F4331303A31372F4331313A31382F4331323A31392F4331333A3333, '36372c32312c31372c31382c31392c3333', 'PA-1167-CC-36372c32312c31372c31382c31392c3333', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:1167#', '不干胶:163#//外箱:64*49*31cm/过滤绵(黑色):17/上盖:167#/底盒:167#/吸塑盒:1167#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:30:18', '2019-04-07 09:30:18');
INSERT INTO `c2_product_sku` VALUES ('10', '7', 0x43343A362F43353A372F43373A33352F43393A33342F4331313A31382F4331323A31392F4331353A3234, '37362c372c33352c33342c31382c31392c3234', 'PA-166-LX-37362c372c33352c33342c31382c31392c3234', '//鞋油:无色/不干胶:163#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', '//鞋油:无色/不干胶:163#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:39:48', '2019-04-07 09:39:48');
INSERT INTO `c2_product_sku` VALUES ('11', '8', 0x43343A362F43353A33362F43373A33352F43393A33342F4331313A31382F4331323A31392F4331353A3234, '38362c33362c33352c33342c31382c31392c3234', 'PA-1166-CK-38362c33362c33352c33342c31382c31392c3234', '//鞋油:无色/不干胶:1166#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', '//鞋油:无色/不干胶:1166#//外箱:52.3*37.8*53.2cm//海绵(灰):47.44*110.72*40mm//上盖:167#/底盒:167#//彩盒:166#', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:42:49', '2019-04-07 09:42:49');
INSERT INTO `c2_product_sku` VALUES ('12', '9', 0x43373A33382F4331343A32322F4331353A33372F4331363A32352F4331373A3330, '3933382c32322c33372c32352c3330', 'PA-838-HS-3933382c32322c33372c32352c3330', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838黑色彩盒/软管:黑色丝印软管30G/黑色绵羊鞋膏:黑色', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838黑色彩盒/软管:黑色丝印软管30G/黑色绵羊鞋膏:黑色', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:47:17', '2019-04-07 09:47:17');
INSERT INTO `c2_product_sku` VALUES ('13', '10', 0x43373A33382F4331343A32322F4331353A32382F4331363A32362F4331373A3331, '313033382c32322c32382c32362c3331', 'PA-838-WS-313033382c32322c32382c32362c3331', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838无色彩盒/软管:无色丝印软管30G/黑色绵羊鞋膏:自然色', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838无色彩盒/软管:无色丝印软管30G/黑色绵羊鞋膏:自然色', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:48:00', '2019-04-07 09:48:00');
INSERT INTO `c2_product_sku` VALUES ('14', '11', 0x43373A33382F4331343A32322F4331353A32392F4331363A32372F4331373A3332, '313133382c32322c32392c32372c3332', 'PA-838-ZS-313133382c32322c32392c32372c3332', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838棕色彩盒/软管:棕色丝印软管30G/黑色绵羊鞋膏:棕色', '//外箱:48*44*26cm//////套袋:270*430mm*0.03c/彩盒:838棕色彩盒/软管:棕色丝印软管30G/黑色绵羊鞋膏:棕色', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-07 09:48:51', '2019-04-07 09:48:51');
INSERT INTO `c2_product_sku` VALUES ('15', '12', 0x4331383AE6B58BE8AF95E5B19EE680A7, '3132e6b58be8af95e5b19ee680a7', 'Test-3132e6b58be8af95e5b19ee680a7', '通用:测试属性', '通用:测试属性', null, null, '0', '0', '6', null, null, '1', '1', '0', '2019-04-08 13:13:54', '2019-04-11 13:00:40');
INSERT INTO `c2_product_sku` VALUES ('16', '13', 0x4331383AE9BB91E889B2, '3133e9bb91e889b2', 'c01-3133e9bb91e889b2', '通用:黑色', '通用:黑色', null, null, '0', '0', '1', null, null, '1', '1', '0', '2019-04-11 12:59:22', '2019-04-11 13:00:40');
INSERT INTO `c2_product_sku` VALUES ('17', '14', 0x43373A39, '313439', 'c02-313439', '/////外箱:58.5*40*41.5cm//////////', '/////外箱:58.5*40*41.5cm//////////', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-11 13:04:30', '2019-04-11 13:04:30');
INSERT INTO `c2_product_sku` VALUES ('18', '14', 0x43373A3134, '31343134', 'c02-31343134', '/////外箱:58*39*39cm//////////', '/////外箱:58*39*39cm//////////', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-11 13:04:30', '2019-04-11 13:04:30');
INSERT INTO `c2_product_sku` VALUES ('19', '14', 0x43373A3231, '31343231', 'c02-31343231', '/////外箱:64*49*31cm//////////', '/////外箱:64*49*31cm//////////', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-11 13:04:30', '2019-04-11 13:04:30');
INSERT INTO `c2_product_sku` VALUES ('20', '14', 0x43373A3335, '31343335', 'c02-31343335', '/////外箱:52.3*37.8*53.2cm//////////', '/////外箱:52.3*37.8*53.2cm//////////', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-11 13:04:30', '2019-04-11 13:04:30');
INSERT INTO `c2_product_sku` VALUES ('21', '14', 0x43373A3338, '31343338', 'c02-31343338', '/////外箱:48*44*26cm//////////', '/////外箱:48*44*26cm//////////', null, null, '0', '0', '0', null, null, '1', '1', '0', '2019-04-11 13:04:30', '2019-04-11 13:04:30');

-- ----------------------------
-- Table structure for c2_product_stock
-- ----------------------------
DROP TABLE IF EXISTS `c2_product_stock`;
CREATE TABLE `c2_product_stock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eshop_id` bigint(20) DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT '0',
  `product_id` bigint(20) DEFAULT '0',
  `sku` varchar(255) DEFAULT '0',
  `product_sku_id` bigint(20) DEFAULT '0',
  `product_material_id` bigint(20) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `state` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_1` (`eshop_id`),
  KEY `Index_2` (`warehouse_id`),
  KEY `Index_3` (`product_sku_id`),
  KEY `Index_4` (`product_material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_product_stock
-- ----------------------------
INSERT INTO `c2_product_stock` VALUES ('1', null, '1', '14', '0', '0', '1', '1001', null, '1', '0', '2019-04-17 13:37:11', '2019-04-17 13:37:11');
INSERT INTO `c2_product_stock` VALUES ('2', null, '1', '14', '0', '0', '2', '1000', null, '1', '0', '2019-04-17 13:37:11', '2019-04-17 13:37:11');
INSERT INTO `c2_product_stock` VALUES ('3', null, '1', '16', '0', '0', '5', '648', null, '1', '0', '2019-04-17 13:37:11', '2019-04-21 09:18:47');
INSERT INTO `c2_product_stock` VALUES ('4', null, '1', '20', '0', '0', '9', '738', null, '1', '0', '2019-04-17 13:37:11', '2019-04-21 09:18:47');
INSERT INTO `c2_product_stock` VALUES ('5', null, '1', '21', '0', '0', '10', '1730', null, '1', '0', '2019-04-17 13:37:12', '2019-04-21 09:18:47');
INSERT INTO `c2_product_stock` VALUES ('6', null, '1', '22', '0', '0', '11', '738', null, '1', '0', '2019-04-17 13:37:12', '2019-04-21 09:18:47');
INSERT INTO `c2_product_stock` VALUES ('7', null, '1', '23', '0', '0', '12', '738', null, '1', '0', '2019-04-17 13:37:12', '2019-04-21 09:18:47');
INSERT INTO `c2_product_stock` VALUES ('8', null, '1', '24', '0', '0', '13', '1000', null, '1', '0', '2019-04-17 13:37:12', '2019-04-17 13:37:12');
INSERT INTO `c2_product_stock` VALUES ('9', null, '1', '19', '0', '0', '6', '100', null, '1', '0', '2019-04-18 16:33:59', '2019-04-18 16:33:59');
INSERT INTO `c2_product_stock` VALUES ('12', null, '1', '7', '0', '0', null, '100', null, '1', '0', '2019-04-20 17:02:56', '2019-04-20 17:02:56');
INSERT INTO `c2_product_stock` VALUES ('13', null, '1', '13', '0', '0', '15', '1000', null, '1', '0', '2019-04-21 06:21:28', '2019-04-21 06:21:28');
INSERT INTO `c2_product_stock` VALUES ('14', null, '1', '5', '0', '0', null, '999', null, '1', '0', '2019-04-21 08:11:50', '2019-04-21 08:12:07');
INSERT INTO `c2_product_stock` VALUES ('15', null, '1', '18', '0', '0', null, '847', null, '1', '0', '2019-04-21 08:12:35', '2019-04-21 09:18:47');
INSERT INTO `c2_product_stock` VALUES ('16', null, '1', '13', '0', '0', '16', '200', null, '1', '0', '2019-04-21 09:57:36', '2019-04-21 09:57:36');
INSERT INTO `c2_product_stock` VALUES ('52', null, '1', '6', '0', '0', null, '0', null, '1', '0', '2019-04-21 11:18:02', '2019-04-21 11:18:02');
INSERT INTO `c2_product_stock` VALUES ('53', null, '1', '24', '0', '0', '14', '-52', null, '1', '0', '2019-04-21 11:28:25', '2019-04-21 11:28:25');

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
INSERT INTO `c2_supplier` VALUES ('1', 'HHGYS', '小榄供应商', '小榄供应商', '25', '392', '2921', '15622965560', '0760-2222222', '', 0x3C703EE59CB0E59D80E59CB0E59D80E59CB0E59D803C7370616E20636C6173733D227265646163746F722D696E76697369626C652D7370616365223EE59CB0E59D803C7370616E20636C6173733D227265646163746F722D696E76697369626C652D7370616365223EE59CB0E59D803C7370616E20636C6173733D227265646163746F722D696E76697369626C652D7370616365223E3C2F7370616E3E3C2F7370616E3E3C2F7370616E3E3C2F703E, '0', '1', '0', '2019-03-30 11:22:49', '2019-04-17 14:18:33');

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

-- ----------------------------
-- Table structure for c2_warehouse_delivery_commit_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_warehouse_delivery_commit_item`;
CREATE TABLE `c2_warehouse_delivery_commit_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) DEFAULT '0',
  `product_id` bigint(20) DEFAULT '0',
  `product_sku_id` bigint(20) DEFAULT '0',
  `sku_label` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT '0',
  `quantity` mediumint(9) NOT NULL DEFAULT '0',
  `actual_quantity` mediumint(9) NOT NULL,
  `stock_quantity` mediumint(9) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_warehouse_delivery_commit_item
-- ----------------------------
INSERT INTO `c2_warehouse_delivery_commit_item` VALUES ('1', '10', '18', '0', '大圆鞋擦(黄白)', '0', '3', '2', '1', '1', null, null, null, '0.00', '0.00', '0.00', '', '1', '0', '2019-04-20 18:30:37', '2019-04-20 18:30:37');
INSERT INTO `c2_warehouse_delivery_commit_item` VALUES ('2', '10', '5', '0', '反绒皮清洁刷(内销)', '0', '3', '0', '0', '1', null, null, null, '0.00', '0.00', '0.00', '', '1', '0', '2019-04-20 18:30:38', '2019-04-20 18:30:38');
INSERT INTO `c2_warehouse_delivery_commit_item` VALUES ('3', '11', '18', '0', '大圆鞋擦(黄白)', '0', '1', '1', '0', '1', null, null, null, '0.00', '0.00', '0.00', '', '1', '0', '2019-04-21 08:38:39', '2019-04-21 08:38:39');
INSERT INTO `c2_warehouse_delivery_commit_item` VALUES ('4', '12', '18', '0', '大圆鞋擦(黄白)', '0', '100', '50', '50', '1', null, null, null, '0.00', '0.00', '0.00', '', '1', '0', '2019-04-21 08:43:23', '2019-04-21 08:43:23');

-- ----------------------------
-- Table structure for c2_warehouse_receipt_commit_item
-- ----------------------------
DROP TABLE IF EXISTS `c2_warehouse_receipt_commit_item`;
CREATE TABLE `c2_warehouse_receipt_commit_item` (
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of c2_warehouse_receipt_commit_item
-- ----------------------------
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('9', '6', '13', '15', '', '1', '1000', '1.00', '1000.00', '1', null, '', '1', '0', '2019-04-21 05:58:37', '2019-04-21 05:58:37');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('10', '8', '21', '10', '', '1', '1000', '5.00', '5000.00', '1', null, '', '1', '0', '2019-04-21 16:12:25', '2019-04-21 16:12:25');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('11', '11', '16', '5', null, '0', '-1', null, null, '1', null, null, '1', '0', '2019-04-21 17:11:25', '2019-04-21 17:11:25');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('12', '11', '20', '9', null, '0', '-1', null, null, '1', null, null, '1', '0', '2019-04-21 17:11:26', '2019-04-21 17:11:26');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('13', '11', '21', '10', null, '0', '-5', null, null, '1', null, null, '1', '0', '2019-04-21 17:11:26', '2019-04-21 17:11:26');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('14', '11', '22', '11', null, '0', '-1', null, null, '1', null, null, '1', '0', '2019-04-21 17:11:26', '2019-04-21 17:11:26');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('15', '11', '23', '12', null, '0', '-1', null, null, '1', null, null, '1', '0', '2019-04-21 17:11:26', '2019-04-21 17:11:26');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('16', '11', '24', '14', null, '0', '-1', null, null, '1', null, null, '1', '0', '2019-04-21 17:11:26', '2019-04-21 17:11:26');
INSERT INTO `c2_warehouse_receipt_commit_item` VALUES ('17', '9', '21', '10', '', '1', '1000', '80.00', '80000.00', '1', null, '', '1', '0', '2019-04-21 17:16:44', '2019-04-21 17:16:44');
