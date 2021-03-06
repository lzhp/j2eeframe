/*
Navicat MySQL Data Transfer

Source Server         : activiti
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : jxcia

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-07-30 12:42:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_data`;
CREATE TABLE `sys_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_user_id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sys_data
-- ----------------------------
INSERT INTO `sys_data` VALUES ('1', '2011-04-14 23:54:00', '1', 'N', '2011-04-17 12:28:00', '1', '3', 'RESOURCE_TYPE', '组件', null, '3', 'COMPONENT', 'COMPONENT');
INSERT INTO `sys_data` VALUES ('2', '2011-04-14 23:56:00', '1', 'N', '2011-04-17 12:28:00', '1', '3', 'RESOURCE_TYPE', '功能', null, '4', 'FUNCTION', 'FUNCTION');
INSERT INTO `sys_data` VALUES ('21', '2011-04-17 12:25:00', '1', 'N', '2011-05-22 18:34:37', '1', '2', 'RESOURCE_TYPE', '目录', null, '2', 'LEAF', 'LEAF');
INSERT INTO `sys_data` VALUES ('22', '2011-04-17 12:28:00', '1', 'N', '2011-05-22 18:34:27', '1', '2', 'RESOURCE_TYPE', '面板', null, '1', 'PANEL', 'PANEL');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_Name` varchar(80) NOT NULL,
  `dept_code` varchar(20) NOT NULL,
  `dept_level` varchar(5) DEFAULT '1',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `org_type` varchar(8) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `leaf` int(11) DEFAULT '1',
  `orderIndex` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('0', '总行', '0', '0', '-1', '1', null, null, '0', '1', null, null);
INSERT INTO `sys_dept` VALUES ('1', '测试', 'test', '1', '0', '1', '哈哈', 'dep@qq.com', '0', '1', '说明', '1');
INSERT INTO `sys_dept` VALUES ('2', '测试2', 'test2', '2', '1', '1', null, null, '1', '1', null, '1');
INSERT INTO `sys_dept` VALUES ('3', '测试3', 'test3', '2', '1', '1', null, null, '1', '2', null, '1');
INSERT INTO `sys_dept` VALUES ('4', '测试4', 'test4', '1', '0', '1', null, null, '1', '2', null, '1');

-- ----------------------------
-- Table structure for `sys_errorlog`
-- ----------------------------
DROP TABLE IF EXISTS `sys_errorlog`;
CREATE TABLE `sys_errorlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminal` varchar(45) NOT NULL,
  `occurdate` datetime DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `responsedate` datetime DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1588 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_errorlog
-- ----------------------------
INSERT INTO `sys_errorlog` VALUES ('562', 'M001', '2013-04-12 05:31:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:31:32');
INSERT INTO `sys_errorlog` VALUES ('563', 'M001', '2013-04-12 05:31:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:31:32');
INSERT INTO `sys_errorlog` VALUES ('564', 'M001', '2013-04-12 05:31:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:31:32');
INSERT INTO `sys_errorlog` VALUES ('565', 'M001', '2013-04-12 05:31:32', 'admin', '2013-05-02 18:43:45', '当前Vstart的进程数：0', '2013-04-12 05:31:32');
INSERT INTO `sys_errorlog` VALUES ('566', 'M001', '2013-04-12 05:31:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:31:32');
INSERT INTO `sys_errorlog` VALUES ('567', 'M001', '2013-04-12 05:31:32', null, null, '当前内存使用量：1', '2013-04-12 05:31:32');
INSERT INTO `sys_errorlog` VALUES ('574', 'M001', '2013-04-12 05:32:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:32:02');
INSERT INTO `sys_errorlog` VALUES ('575', 'M001', '2013-04-12 05:32:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:32:02');
INSERT INTO `sys_errorlog` VALUES ('576', 'M001', '2013-04-12 05:32:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:32:02');
INSERT INTO `sys_errorlog` VALUES ('577', 'M001', '2013-04-12 05:32:02', null, null, '当前Vstart的进程数：0', '2013-04-12 05:32:02');
INSERT INTO `sys_errorlog` VALUES ('578', 'M001', '2013-04-12 05:32:02', null, null, '当前TransPro的进程数：0', '2013-04-12 05:32:02');
INSERT INTO `sys_errorlog` VALUES ('579', 'M001', '2013-04-12 05:32:02', null, null, '当前内存使用量：1', '2013-04-12 05:32:02');
INSERT INTO `sys_errorlog` VALUES ('580', 'M001', '2013-04-12 05:32:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:32:32');
INSERT INTO `sys_errorlog` VALUES ('581', 'M001', '2013-04-12 05:32:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:32:32');
INSERT INTO `sys_errorlog` VALUES ('582', 'M001', '2013-04-12 05:32:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:32:32');
INSERT INTO `sys_errorlog` VALUES ('583', 'M001', '2013-04-12 05:32:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:32:32');
INSERT INTO `sys_errorlog` VALUES ('584', 'M001', '2013-04-12 05:32:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:32:32');
INSERT INTO `sys_errorlog` VALUES ('585', 'M001', '2013-04-12 05:32:32', null, null, '当前内存使用量：1', '2013-04-12 05:32:32');
INSERT INTO `sys_errorlog` VALUES ('586', 'M001', '2013-04-12 05:33:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:33:02');
INSERT INTO `sys_errorlog` VALUES ('587', 'M001', '2013-04-12 05:33:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:33:02');
INSERT INTO `sys_errorlog` VALUES ('588', 'M001', '2013-04-12 05:33:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:33:02');
INSERT INTO `sys_errorlog` VALUES ('589', 'M001', '2013-04-12 05:33:02', null, null, '当前Vstart的进程数：0', '2013-04-12 05:33:02');
INSERT INTO `sys_errorlog` VALUES ('590', 'M001', '2013-04-12 05:33:02', null, null, '当前TransPro的进程数：0', '2013-04-12 05:33:02');
INSERT INTO `sys_errorlog` VALUES ('591', 'M001', '2013-04-12 05:33:02', null, null, '当前内存使用量：1', '2013-04-12 05:33:02');
INSERT INTO `sys_errorlog` VALUES ('592', 'M001', '2013-04-12 05:33:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:33:32');
INSERT INTO `sys_errorlog` VALUES ('593', 'M001', '2013-04-12 05:33:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:33:32');
INSERT INTO `sys_errorlog` VALUES ('594', 'M001', '2013-04-12 05:33:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:33:32');
INSERT INTO `sys_errorlog` VALUES ('595', 'M001', '2013-04-12 05:33:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:33:32');
INSERT INTO `sys_errorlog` VALUES ('596', 'M001', '2013-04-12 05:33:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:33:32');
INSERT INTO `sys_errorlog` VALUES ('597', 'M001', '2013-04-12 05:33:32', null, null, '当前内存使用量：1', '2013-04-12 05:33:32');
INSERT INTO `sys_errorlog` VALUES ('598', 'M001', '2013-04-12 05:34:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:34:02');
INSERT INTO `sys_errorlog` VALUES ('599', 'M001', '2013-04-12 05:34:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:34:02');
INSERT INTO `sys_errorlog` VALUES ('600', 'M001', '2013-04-12 05:34:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:34:02');
INSERT INTO `sys_errorlog` VALUES ('601', 'M001', '2013-04-12 05:34:02', null, null, '当前Vstart的进程数：0', '2013-04-12 05:34:02');
INSERT INTO `sys_errorlog` VALUES ('602', 'M001', '2013-04-12 05:34:02', null, null, '当前TransPro的进程数：0', '2013-04-12 05:34:02');
INSERT INTO `sys_errorlog` VALUES ('603', 'M001', '2013-04-12 05:34:02', null, null, '当前内存使用量：1', '2013-04-12 05:34:02');
INSERT INTO `sys_errorlog` VALUES ('604', 'M001', '2013-04-12 05:34:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:34:32');
INSERT INTO `sys_errorlog` VALUES ('605', 'M001', '2013-04-12 05:34:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:34:32');
INSERT INTO `sys_errorlog` VALUES ('606', 'M001', '2013-04-12 05:34:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:34:32');
INSERT INTO `sys_errorlog` VALUES ('607', 'M001', '2013-04-12 05:34:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:34:32');
INSERT INTO `sys_errorlog` VALUES ('608', 'M001', '2013-04-12 05:34:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:34:32');
INSERT INTO `sys_errorlog` VALUES ('609', 'M001', '2013-04-12 05:34:32', null, null, '当前内存使用量：1', '2013-04-12 05:34:32');
INSERT INTO `sys_errorlog` VALUES ('616', 'M001', '2013-04-12 05:35:01', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:35:01');
INSERT INTO `sys_errorlog` VALUES ('617', 'M001', '2013-04-12 05:35:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:35:01');
INSERT INTO `sys_errorlog` VALUES ('618', 'M001', '2013-04-12 05:35:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:35:01');
INSERT INTO `sys_errorlog` VALUES ('619', 'M001', '2013-04-12 05:35:01', null, null, '当前Vstart的进程数：0', '2013-04-12 05:35:01');
INSERT INTO `sys_errorlog` VALUES ('620', 'M001', '2013-04-12 05:35:01', null, null, '当前TransPro的进程数：0', '2013-04-12 05:35:01');
INSERT INTO `sys_errorlog` VALUES ('621', 'M001', '2013-04-12 05:35:01', null, null, '当前内存使用量：1', '2013-04-12 05:35:01');
INSERT INTO `sys_errorlog` VALUES ('628', 'M001', '2013-04-12 05:35:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:35:31');
INSERT INTO `sys_errorlog` VALUES ('629', 'M001', '2013-04-12 05:35:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:35:31');
INSERT INTO `sys_errorlog` VALUES ('630', 'M001', '2013-04-12 05:35:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:35:31');
INSERT INTO `sys_errorlog` VALUES ('631', 'M001', '2013-04-12 05:35:31', null, null, '当前Vstart的进程数：0', '2013-04-12 05:35:31');
INSERT INTO `sys_errorlog` VALUES ('632', 'M001', '2013-04-12 05:35:31', null, null, '当前TransPro的进程数：0', '2013-04-12 05:35:31');
INSERT INTO `sys_errorlog` VALUES ('633', 'M001', '2013-04-12 05:35:31', null, null, '当前内存使用量：1', '2013-04-12 05:35:31');
INSERT INTO `sys_errorlog` VALUES ('640', 'M001', '2013-04-12 05:36:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:36:02');
INSERT INTO `sys_errorlog` VALUES ('641', 'M001', '2013-04-12 05:36:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:36:02');
INSERT INTO `sys_errorlog` VALUES ('642', 'M001', '2013-04-12 05:36:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:36:02');
INSERT INTO `sys_errorlog` VALUES ('643', 'M001', '2013-04-12 05:36:02', null, null, '当前Vstart的进程数：0', '2013-04-12 05:36:02');
INSERT INTO `sys_errorlog` VALUES ('644', 'M001', '2013-04-12 05:36:02', null, null, '当前TransPro的进程数：0', '2013-04-12 05:36:02');
INSERT INTO `sys_errorlog` VALUES ('645', 'M001', '2013-04-12 05:36:02', null, null, '当前内存使用量：1', '2013-04-12 05:36:02');
INSERT INTO `sys_errorlog` VALUES ('652', 'M001', '2013-04-12 05:36:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:36:32');
INSERT INTO `sys_errorlog` VALUES ('653', 'M001', '2013-04-12 05:36:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:36:32');
INSERT INTO `sys_errorlog` VALUES ('654', 'M001', '2013-04-12 05:36:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:36:32');
INSERT INTO `sys_errorlog` VALUES ('655', 'M001', '2013-04-12 05:36:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:36:32');
INSERT INTO `sys_errorlog` VALUES ('656', 'M001', '2013-04-12 05:36:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:36:32');
INSERT INTO `sys_errorlog` VALUES ('657', 'M001', '2013-04-12 05:36:32', null, null, '当前内存使用量：1', '2013-04-12 05:36:32');
INSERT INTO `sys_errorlog` VALUES ('664', 'M001', '2013-04-12 05:37:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:37:02');
INSERT INTO `sys_errorlog` VALUES ('665', 'M001', '2013-04-12 05:37:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:37:02');
INSERT INTO `sys_errorlog` VALUES ('666', 'M001', '2013-04-12 05:37:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:37:02');
INSERT INTO `sys_errorlog` VALUES ('667', 'M001', '2013-04-12 05:37:02', null, null, '当前Vstart的进程数：0', '2013-04-12 05:37:02');
INSERT INTO `sys_errorlog` VALUES ('668', 'M001', '2013-04-12 05:37:02', null, null, '当前TransPro的进程数：0', '2013-04-12 05:37:02');
INSERT INTO `sys_errorlog` VALUES ('669', 'M001', '2013-04-12 05:37:02', null, null, '当前内存使用量：1', '2013-04-12 05:37:02');
INSERT INTO `sys_errorlog` VALUES ('676', 'M001', '2013-04-12 05:37:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:37:32');
INSERT INTO `sys_errorlog` VALUES ('677', 'M001', '2013-04-12 05:37:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:37:32');
INSERT INTO `sys_errorlog` VALUES ('678', 'M001', '2013-04-12 05:37:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:37:32');
INSERT INTO `sys_errorlog` VALUES ('679', 'M001', '2013-04-12 05:37:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:37:32');
INSERT INTO `sys_errorlog` VALUES ('680', 'M001', '2013-04-12 05:37:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:37:32');
INSERT INTO `sys_errorlog` VALUES ('681', 'M001', '2013-04-12 05:37:32', null, null, '当前内存使用量：1', '2013-04-12 05:37:32');
INSERT INTO `sys_errorlog` VALUES ('682', 'M001', '2013-04-12 05:38:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:38:02');
INSERT INTO `sys_errorlog` VALUES ('683', 'M001', '2013-04-12 05:38:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:38:02');
INSERT INTO `sys_errorlog` VALUES ('684', 'M001', '2013-04-12 05:38:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:38:02');
INSERT INTO `sys_errorlog` VALUES ('685', 'M001', '2013-04-12 05:38:02', null, null, '当前Vstart的进程数：0', '2013-04-12 05:38:02');
INSERT INTO `sys_errorlog` VALUES ('686', 'M001', '2013-04-12 05:38:02', null, null, '当前TransPro的进程数：0', '2013-04-12 05:38:02');
INSERT INTO `sys_errorlog` VALUES ('687', 'M001', '2013-04-12 05:38:02', null, null, '当前内存使用量：1', '2013-04-12 05:38:02');
INSERT INTO `sys_errorlog` VALUES ('688', 'M001', '2013-04-12 05:38:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:38:32');
INSERT INTO `sys_errorlog` VALUES ('689', 'M001', '2013-04-12 05:38:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:38:32');
INSERT INTO `sys_errorlog` VALUES ('690', 'M001', '2013-04-12 05:38:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:38:32');
INSERT INTO `sys_errorlog` VALUES ('691', 'M001', '2013-04-12 05:38:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:38:32');
INSERT INTO `sys_errorlog` VALUES ('692', 'M001', '2013-04-12 05:38:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:38:32');
INSERT INTO `sys_errorlog` VALUES ('693', 'M001', '2013-04-12 05:38:32', null, null, '当前内存使用量：1', '2013-04-12 05:38:32');
INSERT INTO `sys_errorlog` VALUES ('694', 'M001', '2013-04-12 05:39:01', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:39:01');
INSERT INTO `sys_errorlog` VALUES ('695', 'M001', '2013-04-12 05:39:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:39:01');
INSERT INTO `sys_errorlog` VALUES ('696', 'M001', '2013-04-12 05:39:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:39:01');
INSERT INTO `sys_errorlog` VALUES ('697', 'M001', '2013-04-12 05:39:01', null, null, '当前Vstart的进程数：0', '2013-04-12 05:39:01');
INSERT INTO `sys_errorlog` VALUES ('698', 'M001', '2013-04-12 05:39:01', null, null, '当前TransPro的进程数：0', '2013-04-12 05:39:01');
INSERT INTO `sys_errorlog` VALUES ('699', 'M001', '2013-04-12 05:39:01', null, null, '当前内存使用量：1', '2013-04-12 05:39:01');
INSERT INTO `sys_errorlog` VALUES ('700', 'M001', '2013-04-12 05:39:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 05:39:32');
INSERT INTO `sys_errorlog` VALUES ('701', 'M001', '2013-04-12 05:39:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 05:39:32');
INSERT INTO `sys_errorlog` VALUES ('702', 'M001', '2013-04-12 05:39:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 05:39:32');
INSERT INTO `sys_errorlog` VALUES ('703', 'M001', '2013-04-12 05:39:32', null, null, '当前Vstart的进程数：0', '2013-04-12 05:39:32');
INSERT INTO `sys_errorlog` VALUES ('704', 'M001', '2013-04-12 05:39:32', null, null, '当前TransPro的进程数：0', '2013-04-12 05:39:32');
INSERT INTO `sys_errorlog` VALUES ('705', 'M001', '2013-04-12 05:39:32', null, null, '当前内存使用量：1', '2013-04-12 05:39:32');
INSERT INTO `sys_errorlog` VALUES ('706', 'M001', '2013-04-12 15:16:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 15:16:02');
INSERT INTO `sys_errorlog` VALUES ('707', 'M001', '2013-04-12 15:16:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 15:16:02');
INSERT INTO `sys_errorlog` VALUES ('708', 'M001', '2013-04-12 15:16:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 15:16:02');
INSERT INTO `sys_errorlog` VALUES ('709', 'M001', '2013-04-12 15:16:02', null, null, '当前Vstart的进程数：0', '2013-04-12 15:16:02');
INSERT INTO `sys_errorlog` VALUES ('710', 'M001', '2013-04-12 15:16:02', null, null, '当前TransPro的进程数：0', '2013-04-12 15:16:02');
INSERT INTO `sys_errorlog` VALUES ('711', 'M001', '2013-04-12 15:16:02', null, null, '当前内存使用量：1', '2013-04-12 15:16:02');
INSERT INTO `sys_errorlog` VALUES ('712', 'M001', '2013-04-12 15:16:32', null, null, '当前recvmbfe的进程数：0', '2013-04-12 15:16:32');
INSERT INTO `sys_errorlog` VALUES ('713', 'M001', '2013-04-12 15:16:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 15:16:32');
INSERT INTO `sys_errorlog` VALUES ('714', 'M001', '2013-04-12 15:16:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 15:16:32');
INSERT INTO `sys_errorlog` VALUES ('715', 'M001', '2013-04-12 15:16:32', null, null, '当前Vstart的进程数：0', '2013-04-12 15:16:32');
INSERT INTO `sys_errorlog` VALUES ('716', 'M001', '2013-04-12 15:16:32', null, null, '当前TransPro的进程数：0', '2013-04-12 15:16:32');
INSERT INTO `sys_errorlog` VALUES ('717', 'M001', '2013-04-12 15:16:32', null, null, '当前内存使用量：1', '2013-04-12 15:16:32');
INSERT INTO `sys_errorlog` VALUES ('718', 'M001', '2013-04-12 15:17:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 15:17:02');
INSERT INTO `sys_errorlog` VALUES ('719', 'M001', '2013-04-12 15:17:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 15:17:02');
INSERT INTO `sys_errorlog` VALUES ('720', 'M001', '2013-04-12 15:17:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 15:17:02');
INSERT INTO `sys_errorlog` VALUES ('721', 'M001', '2013-04-12 15:17:02', null, null, '当前Vstart的进程数：0', '2013-04-12 15:17:02');
INSERT INTO `sys_errorlog` VALUES ('722', 'M001', '2013-04-12 15:17:02', null, null, '当前TransPro的进程数：0', '2013-04-12 15:17:02');
INSERT INTO `sys_errorlog` VALUES ('723', 'M001', '2013-04-12 15:17:02', null, null, '当前内存使用量：1', '2013-04-12 15:17:02');
INSERT INTO `sys_errorlog` VALUES ('724', 'M001', '2013-04-12 09:31:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:31:31');
INSERT INTO `sys_errorlog` VALUES ('725', 'M001', '2013-04-12 09:31:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:31:31');
INSERT INTO `sys_errorlog` VALUES ('726', 'M001', '2013-04-12 09:31:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:31:31');
INSERT INTO `sys_errorlog` VALUES ('727', 'M001', '2013-04-12 09:31:31', null, null, '当前Vstart的进程数：0', '2013-04-12 09:31:31');
INSERT INTO `sys_errorlog` VALUES ('728', 'M001', '2013-04-12 09:31:31', null, null, '当前TransPro的进程数：0', '2013-04-12 09:31:31');
INSERT INTO `sys_errorlog` VALUES ('729', 'M001', '2013-04-12 09:31:31', null, null, '当前内存使用量：1', '2013-04-12 09:31:31');
INSERT INTO `sys_errorlog` VALUES ('730', 'M001', '2013-04-12 09:32:02', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:32:02');
INSERT INTO `sys_errorlog` VALUES ('731', 'M001', '2013-04-12 09:32:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:32:02');
INSERT INTO `sys_errorlog` VALUES ('732', 'M001', '2013-04-12 09:32:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:32:02');
INSERT INTO `sys_errorlog` VALUES ('733', 'M001', '2013-04-12 09:32:02', null, null, '当前Vstart的进程数：0', '2013-04-12 09:32:02');
INSERT INTO `sys_errorlog` VALUES ('734', 'M001', '2013-04-12 09:32:02', null, null, '当前TransPro的进程数：0', '2013-04-12 09:32:02');
INSERT INTO `sys_errorlog` VALUES ('735', 'M001', '2013-04-12 09:32:02', null, null, '当前内存使用量：1', '2013-04-12 09:32:02');
INSERT INTO `sys_errorlog` VALUES ('736', 'M001', '2013-04-12 09:32:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:32:31');
INSERT INTO `sys_errorlog` VALUES ('737', 'M001', '2013-04-12 09:32:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:32:31');
INSERT INTO `sys_errorlog` VALUES ('738', 'M001', '2013-04-12 09:32:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:32:31');
INSERT INTO `sys_errorlog` VALUES ('739', 'M001', '2013-04-12 09:32:31', null, null, '当前Vstart的进程数：0', '2013-04-12 09:32:31');
INSERT INTO `sys_errorlog` VALUES ('740', 'M001', '2013-04-12 09:32:31', null, null, '当前TransPro的进程数：0', '2013-04-12 09:32:31');
INSERT INTO `sys_errorlog` VALUES ('741', 'M001', '2013-04-12 09:32:31', null, null, '当前内存使用量：1', '2013-04-12 09:32:31');
INSERT INTO `sys_errorlog` VALUES ('742', 'M001', '2013-04-12 09:34:01', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:34:01');
INSERT INTO `sys_errorlog` VALUES ('743', 'M001', '2013-04-12 09:34:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:34:01');
INSERT INTO `sys_errorlog` VALUES ('744', 'M001', '2013-04-12 09:34:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:34:01');
INSERT INTO `sys_errorlog` VALUES ('745', 'M001', '2013-04-12 09:34:01', null, null, '当前Vstart的进程数：0', '2013-04-12 09:34:01');
INSERT INTO `sys_errorlog` VALUES ('746', 'M001', '2013-04-12 09:34:01', null, null, '当前TransPro的进程数：0', '2013-04-12 09:34:01');
INSERT INTO `sys_errorlog` VALUES ('747', 'M001', '2013-04-12 09:34:01', null, null, '当前内存使用量：1%', '2013-04-12 09:34:01');
INSERT INTO `sys_errorlog` VALUES ('748', 'M001', '2013-04-12 09:34:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:34:31');
INSERT INTO `sys_errorlog` VALUES ('749', 'M001', '2013-04-12 09:34:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:34:31');
INSERT INTO `sys_errorlog` VALUES ('750', 'M001', '2013-04-12 09:34:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:34:31');
INSERT INTO `sys_errorlog` VALUES ('751', 'M001', '2013-04-12 09:34:31', null, null, '当前Vstart的进程数：0', '2013-04-12 09:34:31');
INSERT INTO `sys_errorlog` VALUES ('752', 'M001', '2013-04-12 09:34:31', null, null, '当前TransPro的进程数：0', '2013-04-12 09:34:31');
INSERT INTO `sys_errorlog` VALUES ('753', 'M001', '2013-04-12 09:34:31', null, null, '当前内存使用量：1%', '2013-04-12 09:34:31');
INSERT INTO `sys_errorlog` VALUES ('754', 'M001', '2013-04-12 09:35:01', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:35:01');
INSERT INTO `sys_errorlog` VALUES ('755', 'M001', '2013-04-12 09:35:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:35:01');
INSERT INTO `sys_errorlog` VALUES ('756', 'M001', '2013-04-12 09:35:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:35:01');
INSERT INTO `sys_errorlog` VALUES ('757', 'M001', '2013-04-12 09:35:01', null, null, '当前Vstart的进程数：0', '2013-04-12 09:35:01');
INSERT INTO `sys_errorlog` VALUES ('758', 'M001', '2013-04-12 09:35:01', null, null, '当前TransPro的进程数：0', '2013-04-12 09:35:01');
INSERT INTO `sys_errorlog` VALUES ('759', 'M001', '2013-04-12 09:35:01', null, null, '当前内存使用量：1%', '2013-04-12 09:35:01');
INSERT INTO `sys_errorlog` VALUES ('760', 'M001', '2013-04-12 09:35:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:35:31');
INSERT INTO `sys_errorlog` VALUES ('761', 'M001', '2013-04-12 09:35:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:35:31');
INSERT INTO `sys_errorlog` VALUES ('762', 'M001', '2013-04-12 09:35:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:35:31');
INSERT INTO `sys_errorlog` VALUES ('763', 'M001', '2013-04-12 09:35:31', null, null, '当前Vstart的进程数：0', '2013-04-12 09:35:31');
INSERT INTO `sys_errorlog` VALUES ('764', 'M001', '2013-04-12 09:35:31', null, null, '当前TransPro的进程数：0', '2013-04-12 09:35:31');
INSERT INTO `sys_errorlog` VALUES ('765', 'M001', '2013-04-12 09:35:31', null, null, '当前内存使用量：1%', '2013-04-12 09:35:31');
INSERT INTO `sys_errorlog` VALUES ('766', 'M001', '2013-04-12 09:37:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:37:31');
INSERT INTO `sys_errorlog` VALUES ('767', 'M001', '2013-04-12 09:37:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:37:31');
INSERT INTO `sys_errorlog` VALUES ('768', 'M001', '2013-04-12 09:37:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:37:31');
INSERT INTO `sys_errorlog` VALUES ('769', 'M001', '2013-04-12 09:37:31', null, null, '当前Vstart的进程数：0', '2013-04-12 09:37:31');
INSERT INTO `sys_errorlog` VALUES ('770', 'M001', '2013-04-12 09:37:31', null, null, '当前TransPro的进程数：0', '2013-04-12 09:37:31');
INSERT INTO `sys_errorlog` VALUES ('771', 'M001', '2013-04-12 09:37:31', null, null, '当前内存使用量：1%', '2013-04-12 09:37:31');
INSERT INTO `sys_errorlog` VALUES ('772', 'M001', '2013-04-12 09:38:01', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:38:01');
INSERT INTO `sys_errorlog` VALUES ('773', 'M001', '2013-04-12 09:38:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:38:01');
INSERT INTO `sys_errorlog` VALUES ('774', 'M001', '2013-04-12 09:38:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:38:01');
INSERT INTO `sys_errorlog` VALUES ('775', 'M001', '2013-04-12 09:38:01', null, null, '当前Vstart的进程数：0', '2013-04-12 09:38:01');
INSERT INTO `sys_errorlog` VALUES ('776', 'M001', '2013-04-12 09:38:01', null, null, '当前TransPro的进程数：0', '2013-04-12 09:38:01');
INSERT INTO `sys_errorlog` VALUES ('777', 'M001', '2013-04-12 09:38:01', null, null, '当前内存使用量：1%', '2013-04-12 09:38:01');
INSERT INTO `sys_errorlog` VALUES ('778', 'M001', '2013-04-12 09:38:31', null, null, '当前recvmbfe的进程数：0', '2013-04-12 09:38:31');
INSERT INTO `sys_errorlog` VALUES ('779', 'M001', '2013-04-12 09:38:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 09:38:31');
INSERT INTO `sys_errorlog` VALUES ('780', 'M001', '2013-04-12 09:38:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 09:38:31');
INSERT INTO `sys_errorlog` VALUES ('781', 'M001', '2013-04-12 09:38:31', null, null, '当前Vstart的进程数：0', '2013-04-12 09:38:31');
INSERT INTO `sys_errorlog` VALUES ('782', 'M001', '2013-04-12 09:38:31', null, null, '当前TransPro的进程数：0', '2013-04-12 09:38:31');
INSERT INTO `sys_errorlog` VALUES ('783', 'M001', '2013-04-12 09:38:31', null, null, '当前内存使用量：1%', '2013-04-12 09:38:31');
INSERT INTO `sys_errorlog` VALUES ('784', 'M001', '2013-04-12 10:49:07', null, null, '当前recvmbfe的进程数：0', '2013-04-12 10:49:07');
INSERT INTO `sys_errorlog` VALUES ('785', 'M001', '2013-04-12 10:49:07', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 10:49:07');
INSERT INTO `sys_errorlog` VALUES ('786', 'M001', '2013-04-12 10:49:07', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 10:49:07');
INSERT INTO `sys_errorlog` VALUES ('787', 'M001', '2013-04-12 10:49:07', null, null, '当前Vstart的进程数：0', '2013-04-12 10:49:07');
INSERT INTO `sys_errorlog` VALUES ('788', 'M001', '2013-04-12 10:49:07', null, null, '当前TransPro的进程数：0', '2013-04-12 10:49:07');
INSERT INTO `sys_errorlog` VALUES ('789', 'M001', '2013-04-12 10:49:07', null, null, '当前内存使用量：1%', '2013-04-12 10:49:07');
INSERT INTO `sys_errorlog` VALUES ('790', 'M001', '2013-04-12 10:49:19', null, null, '当前recvmbfe的进程数：0', '2013-04-12 10:49:19');
INSERT INTO `sys_errorlog` VALUES ('791', 'M001', '2013-04-12 10:49:19', null, null, '当前mbfeprogram的进程数：0', '2013-04-12 10:49:19');
INSERT INTO `sys_errorlog` VALUES ('792', 'M001', '2013-04-12 10:49:19', null, null, '当前BEPSMBFE的进程数：0', '2013-04-12 10:49:19');
INSERT INTO `sys_errorlog` VALUES ('793', 'M001', '2013-04-12 10:49:19', null, null, '当前Vstart的进程数：0', '2013-04-12 10:49:19');
INSERT INTO `sys_errorlog` VALUES ('794', 'M001', '2013-04-12 10:49:19', null, null, '当前TransPro的进程数：0', '2013-04-12 10:49:19');
INSERT INTO `sys_errorlog` VALUES ('795', 'M001', '2013-04-12 10:49:19', null, null, '当前内存使用量：1%', '2013-04-12 10:49:19');
INSERT INTO `sys_errorlog` VALUES ('796', 'M001', '2013-04-15 03:09:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 03:09:02');
INSERT INTO `sys_errorlog` VALUES ('797', 'M001', '2013-04-15 03:09:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 03:09:02');
INSERT INTO `sys_errorlog` VALUES ('798', 'M001', '2013-04-15 03:09:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 03:09:02');
INSERT INTO `sys_errorlog` VALUES ('799', 'M001', '2013-04-15 03:09:02', null, null, '当前Vstart的进程数：0', '2013-04-15 03:09:02');
INSERT INTO `sys_errorlog` VALUES ('800', 'M001', '2013-04-15 03:09:02', null, null, '当前TransPro的进程数：0', '2013-04-15 03:09:02');
INSERT INTO `sys_errorlog` VALUES ('801', 'M001', '2013-04-15 03:09:02', null, null, '当前内存使用量：1%', '2013-04-15 03:09:02');
INSERT INTO `sys_errorlog` VALUES ('802', 'M001', '2013-04-15 08:00:04', null, null, '当前recvmbfe的进程数：0', '2013-04-15 08:00:04');
INSERT INTO `sys_errorlog` VALUES ('803', 'M001', '2013-04-15 08:00:04', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 08:00:04');
INSERT INTO `sys_errorlog` VALUES ('804', 'M001', '2013-04-15 08:00:04', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 08:00:04');
INSERT INTO `sys_errorlog` VALUES ('805', 'M001', '2013-04-15 08:00:04', null, null, '当前Vstart的进程数：0', '2013-04-15 08:00:04');
INSERT INTO `sys_errorlog` VALUES ('806', 'M001', '2013-04-15 08:00:04', null, null, '当前TransPro的进程数：0', '2013-04-15 08:00:04');
INSERT INTO `sys_errorlog` VALUES ('807', 'M001', '2013-04-15 08:00:04', null, null, '当前内存使用量：1%', '2013-04-15 08:00:04');
INSERT INTO `sys_errorlog` VALUES ('808', 'M001', '2013-04-15 08:01:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 08:01:01');
INSERT INTO `sys_errorlog` VALUES ('809', 'M001', '2013-04-15 08:01:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 08:01:01');
INSERT INTO `sys_errorlog` VALUES ('810', 'M001', '2013-04-15 08:01:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 08:01:01');
INSERT INTO `sys_errorlog` VALUES ('811', 'M001', '2013-04-15 08:01:01', null, null, '当前Vstart的进程数：0', '2013-04-15 08:01:01');
INSERT INTO `sys_errorlog` VALUES ('812', 'M001', '2013-04-15 08:01:01', null, null, '当前TransPro的进程数：0', '2013-04-15 08:01:01');
INSERT INTO `sys_errorlog` VALUES ('813', 'M001', '2013-04-15 08:01:01', null, null, '当前内存使用量：1%', '2013-04-15 08:01:01');
INSERT INTO `sys_errorlog` VALUES ('814', 'M001', '2013-04-15 08:02:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 08:02:01');
INSERT INTO `sys_errorlog` VALUES ('815', 'M001', '2013-04-15 08:02:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 08:02:01');
INSERT INTO `sys_errorlog` VALUES ('816', 'M001', '2013-04-15 08:02:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 08:02:01');
INSERT INTO `sys_errorlog` VALUES ('817', 'M001', '2013-04-15 08:02:01', null, null, '当前Vstart的进程数：0', '2013-04-15 08:02:01');
INSERT INTO `sys_errorlog` VALUES ('818', 'M001', '2013-04-15 08:02:01', null, null, '当前TransPro的进程数：0', '2013-04-15 08:02:01');
INSERT INTO `sys_errorlog` VALUES ('819', 'M001', '2013-04-15 08:02:01', null, null, '当前内存使用量：1%', '2013-04-15 08:02:01');
INSERT INTO `sys_errorlog` VALUES ('820', 'M001', '2013-04-15 08:03:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 08:03:01');
INSERT INTO `sys_errorlog` VALUES ('821', 'M001', '2013-04-15 08:03:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 08:03:01');
INSERT INTO `sys_errorlog` VALUES ('822', 'M001', '2013-04-15 08:03:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 08:03:01');
INSERT INTO `sys_errorlog` VALUES ('823', 'M001', '2013-04-15 08:03:01', null, null, '当前Vstart的进程数：0', '2013-04-15 08:03:01');
INSERT INTO `sys_errorlog` VALUES ('824', 'M001', '2013-04-15 08:03:01', null, null, '当前TransPro的进程数：0', '2013-04-15 08:03:01');
INSERT INTO `sys_errorlog` VALUES ('825', 'M001', '2013-04-15 08:03:01', null, null, '当前内存使用量：1%', '2013-04-15 08:03:01');
INSERT INTO `sys_errorlog` VALUES ('826', 'M001', '2013-04-15 08:04:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 08:04:01');
INSERT INTO `sys_errorlog` VALUES ('827', 'M001', '2013-04-15 08:04:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 08:04:01');
INSERT INTO `sys_errorlog` VALUES ('828', 'M001', '2013-04-15 08:04:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 08:04:01');
INSERT INTO `sys_errorlog` VALUES ('829', 'M001', '2013-04-15 08:04:01', null, null, '当前Vstart的进程数：0', '2013-04-15 08:04:01');
INSERT INTO `sys_errorlog` VALUES ('830', 'M001', '2013-04-15 08:04:01', null, null, '当前TransPro的进程数：0', '2013-04-15 08:04:01');
INSERT INTO `sys_errorlog` VALUES ('831', 'M001', '2013-04-15 08:04:01', null, null, '当前内存使用量：1%', '2013-04-15 08:04:01');
INSERT INTO `sys_errorlog` VALUES ('832', 'M001', '2013-04-15 16:06:03', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:06:03');
INSERT INTO `sys_errorlog` VALUES ('833', 'M001', '2013-04-15 16:06:03', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:06:03');
INSERT INTO `sys_errorlog` VALUES ('834', 'M001', '2013-04-15 16:06:03', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:06:03');
INSERT INTO `sys_errorlog` VALUES ('835', 'M001', '2013-04-15 16:06:03', null, null, '当前Vstart的进程数：0', '2013-04-15 16:06:03');
INSERT INTO `sys_errorlog` VALUES ('836', 'M001', '2013-04-15 16:06:03', null, null, '当前TransPro的进程数：0', '2013-04-15 16:06:03');
INSERT INTO `sys_errorlog` VALUES ('837', 'M001', '2013-04-15 16:06:03', null, null, '当前内存使用量：1%', '2013-04-15 16:06:03');
INSERT INTO `sys_errorlog` VALUES ('838', 'M001', '2013-04-15 16:06:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:06:31');
INSERT INTO `sys_errorlog` VALUES ('839', 'M001', '2013-04-15 16:06:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:06:31');
INSERT INTO `sys_errorlog` VALUES ('840', 'M001', '2013-04-15 16:06:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:06:31');
INSERT INTO `sys_errorlog` VALUES ('841', 'M001', '2013-04-15 16:06:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:06:31');
INSERT INTO `sys_errorlog` VALUES ('842', 'M001', '2013-04-15 16:06:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:06:31');
INSERT INTO `sys_errorlog` VALUES ('843', 'M001', '2013-04-15 16:06:31', null, null, '当前内存使用量：1%', '2013-04-15 16:06:31');
INSERT INTO `sys_errorlog` VALUES ('844', 'M001', '2013-04-15 16:07:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:07:01');
INSERT INTO `sys_errorlog` VALUES ('845', 'M001', '2013-04-15 16:07:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:07:01');
INSERT INTO `sys_errorlog` VALUES ('846', 'M001', '2013-04-15 16:07:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:07:01');
INSERT INTO `sys_errorlog` VALUES ('847', 'M001', '2013-04-15 16:07:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:07:01');
INSERT INTO `sys_errorlog` VALUES ('848', 'M001', '2013-04-15 16:07:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:07:01');
INSERT INTO `sys_errorlog` VALUES ('849', 'M001', '2013-04-15 16:07:01', null, null, '当前内存使用量：1%', '2013-04-15 16:07:01');
INSERT INTO `sys_errorlog` VALUES ('850', 'M001', '2013-04-15 16:07:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:07:31');
INSERT INTO `sys_errorlog` VALUES ('851', 'M001', '2013-04-15 16:07:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:07:31');
INSERT INTO `sys_errorlog` VALUES ('852', 'M001', '2013-04-15 16:07:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:07:31');
INSERT INTO `sys_errorlog` VALUES ('853', 'M001', '2013-04-15 16:07:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:07:31');
INSERT INTO `sys_errorlog` VALUES ('854', 'M001', '2013-04-15 16:07:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:07:31');
INSERT INTO `sys_errorlog` VALUES ('855', 'M001', '2013-04-15 16:07:31', null, null, '当前内存使用量：1%', '2013-04-15 16:07:31');
INSERT INTO `sys_errorlog` VALUES ('856', 'M001', '2013-04-15 16:08:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:08:01');
INSERT INTO `sys_errorlog` VALUES ('857', 'M001', '2013-04-15 16:08:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:08:01');
INSERT INTO `sys_errorlog` VALUES ('858', 'M001', '2013-04-15 16:08:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:08:01');
INSERT INTO `sys_errorlog` VALUES ('859', 'M001', '2013-04-15 16:08:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:08:01');
INSERT INTO `sys_errorlog` VALUES ('860', 'M001', '2013-04-15 16:08:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:08:01');
INSERT INTO `sys_errorlog` VALUES ('861', 'M001', '2013-04-15 16:08:01', null, null, '当前内存使用量：1%', '2013-04-15 16:08:01');
INSERT INTO `sys_errorlog` VALUES ('862', 'M001', '2013-04-15 16:08:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:08:31');
INSERT INTO `sys_errorlog` VALUES ('863', 'M001', '2013-04-15 16:08:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:08:31');
INSERT INTO `sys_errorlog` VALUES ('864', 'M001', '2013-04-15 16:08:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:08:31');
INSERT INTO `sys_errorlog` VALUES ('865', 'M001', '2013-04-15 16:08:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:08:31');
INSERT INTO `sys_errorlog` VALUES ('866', 'M001', '2013-04-15 16:08:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:08:31');
INSERT INTO `sys_errorlog` VALUES ('867', 'M001', '2013-04-15 16:08:31', null, null, '当前内存使用量：1%', '2013-04-15 16:08:31');
INSERT INTO `sys_errorlog` VALUES ('868', 'M001', '2013-04-15 16:09:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:09:01');
INSERT INTO `sys_errorlog` VALUES ('869', 'M001', '2013-04-15 16:09:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:09:01');
INSERT INTO `sys_errorlog` VALUES ('870', 'M001', '2013-04-15 16:09:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:09:01');
INSERT INTO `sys_errorlog` VALUES ('871', 'M001', '2013-04-15 16:09:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:09:01');
INSERT INTO `sys_errorlog` VALUES ('872', 'M001', '2013-04-15 16:09:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:09:01');
INSERT INTO `sys_errorlog` VALUES ('873', 'M001', '2013-04-15 16:09:01', null, null, '当前内存使用量：1%', '2013-04-15 16:09:01');
INSERT INTO `sys_errorlog` VALUES ('874', 'M001', '2013-04-15 16:09:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:09:31');
INSERT INTO `sys_errorlog` VALUES ('875', 'M001', '2013-04-15 16:09:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:09:31');
INSERT INTO `sys_errorlog` VALUES ('876', 'M001', '2013-04-15 16:09:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:09:31');
INSERT INTO `sys_errorlog` VALUES ('877', 'M001', '2013-04-15 16:09:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:09:31');
INSERT INTO `sys_errorlog` VALUES ('878', 'M001', '2013-04-15 16:09:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:09:31');
INSERT INTO `sys_errorlog` VALUES ('879', 'M001', '2013-04-15 16:09:31', null, null, '当前内存使用量：1%', '2013-04-15 16:09:31');
INSERT INTO `sys_errorlog` VALUES ('880', 'M001', '2013-04-15 08:13:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 08:13:02');
INSERT INTO `sys_errorlog` VALUES ('881', 'M001', '2013-04-15 08:13:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 08:13:02');
INSERT INTO `sys_errorlog` VALUES ('882', 'M001', '2013-04-15 08:13:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 08:13:02');
INSERT INTO `sys_errorlog` VALUES ('883', 'M001', '2013-04-15 08:13:02', null, null, '当前Vstart的进程数：0', '2013-04-15 08:13:02');
INSERT INTO `sys_errorlog` VALUES ('884', 'M001', '2013-04-15 08:13:02', null, null, '当前TransPro的进程数：0', '2013-04-15 08:13:02');
INSERT INTO `sys_errorlog` VALUES ('885', 'M001', '2013-04-15 08:13:02', null, null, '当前内存使用量：1%', '2013-04-15 08:13:02');
INSERT INTO `sys_errorlog` VALUES ('886', 'M001', '2013-04-15 16:29:34', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:29:34');
INSERT INTO `sys_errorlog` VALUES ('887', 'M001', '2013-04-15 16:29:34', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:29:34');
INSERT INTO `sys_errorlog` VALUES ('888', 'M001', '2013-04-15 16:29:34', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:29:34');
INSERT INTO `sys_errorlog` VALUES ('889', 'M001', '2013-04-15 16:29:34', null, null, '当前Vstart的进程数：0', '2013-04-15 16:29:34');
INSERT INTO `sys_errorlog` VALUES ('890', 'M001', '2013-04-15 16:29:34', null, null, '当前TransPro的进程数：0', '2013-04-15 16:29:34');
INSERT INTO `sys_errorlog` VALUES ('891', 'M001', '2013-04-15 16:29:34', null, null, '当前内存使用量：1%', '2013-04-15 16:29:34');
INSERT INTO `sys_errorlog` VALUES ('892', 'M001', '2013-04-15 16:30:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:30:01');
INSERT INTO `sys_errorlog` VALUES ('893', 'M001', '2013-04-15 16:30:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:30:01');
INSERT INTO `sys_errorlog` VALUES ('894', 'M001', '2013-04-15 16:30:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:30:01');
INSERT INTO `sys_errorlog` VALUES ('895', 'M001', '2013-04-15 16:30:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:30:01');
INSERT INTO `sys_errorlog` VALUES ('896', 'M001', '2013-04-15 16:30:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:30:01');
INSERT INTO `sys_errorlog` VALUES ('897', 'M001', '2013-04-15 16:30:01', null, null, '当前内存使用量：1%', '2013-04-15 16:30:01');
INSERT INTO `sys_errorlog` VALUES ('898', 'M001', '2013-04-15 16:30:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:30:31');
INSERT INTO `sys_errorlog` VALUES ('899', 'M001', '2013-04-15 16:30:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:30:31');
INSERT INTO `sys_errorlog` VALUES ('900', 'M001', '2013-04-15 16:30:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:30:31');
INSERT INTO `sys_errorlog` VALUES ('901', 'M001', '2013-04-15 16:30:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:30:31');
INSERT INTO `sys_errorlog` VALUES ('902', 'M001', '2013-04-15 16:30:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:30:31');
INSERT INTO `sys_errorlog` VALUES ('903', 'M001', '2013-04-15 16:30:31', null, null, '当前内存使用量：1%', '2013-04-15 16:30:31');
INSERT INTO `sys_errorlog` VALUES ('904', 'M001', '2013-04-15 16:31:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:31:01');
INSERT INTO `sys_errorlog` VALUES ('905', 'M001', '2013-04-15 16:31:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:31:01');
INSERT INTO `sys_errorlog` VALUES ('906', 'M001', '2013-04-15 16:31:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:31:01');
INSERT INTO `sys_errorlog` VALUES ('907', 'M001', '2013-04-15 16:31:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:31:01');
INSERT INTO `sys_errorlog` VALUES ('908', 'M001', '2013-04-15 16:31:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:31:01');
INSERT INTO `sys_errorlog` VALUES ('909', 'M001', '2013-04-15 16:31:01', null, null, '当前内存使用量：1%', '2013-04-15 16:31:01');
INSERT INTO `sys_errorlog` VALUES ('910', 'M001', '2013-04-15 16:33:34', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:33:34');
INSERT INTO `sys_errorlog` VALUES ('911', 'M001', '2013-04-15 16:33:34', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:33:34');
INSERT INTO `sys_errorlog` VALUES ('912', 'M001', '2013-04-15 16:33:34', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:33:34');
INSERT INTO `sys_errorlog` VALUES ('913', 'M001', '2013-04-15 16:33:34', null, null, '当前Vstart的进程数：0', '2013-04-15 16:33:34');
INSERT INTO `sys_errorlog` VALUES ('914', 'M001', '2013-04-15 16:33:34', null, null, '当前TransPro的进程数：0', '2013-04-15 16:33:34');
INSERT INTO `sys_errorlog` VALUES ('915', 'M001', '2013-04-15 16:33:34', null, null, '当前内存使用量：1%', '2013-04-15 16:33:34');
INSERT INTO `sys_errorlog` VALUES ('916', 'M001', '2013-04-15 16:46:33', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:46:33');
INSERT INTO `sys_errorlog` VALUES ('917', 'M001', '2013-04-15 16:46:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:46:33');
INSERT INTO `sys_errorlog` VALUES ('918', 'M001', '2013-04-15 16:46:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:46:33');
INSERT INTO `sys_errorlog` VALUES ('919', 'M001', '2013-04-15 16:46:33', null, null, '当前Vstart的进程数：0', '2013-04-15 16:46:33');
INSERT INTO `sys_errorlog` VALUES ('920', 'M001', '2013-04-15 16:46:33', null, null, '当前TransPro的进程数：0', '2013-04-15 16:46:33');
INSERT INTO `sys_errorlog` VALUES ('921', 'M001', '2013-04-15 16:46:33', null, null, '当前内存使用量：1%', '2013-04-15 16:46:33');
INSERT INTO `sys_errorlog` VALUES ('922', 'M001', '2013-04-15 16:56:33', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:56:33');
INSERT INTO `sys_errorlog` VALUES ('923', 'M001', '2013-04-15 16:56:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:56:33');
INSERT INTO `sys_errorlog` VALUES ('924', 'M001', '2013-04-15 16:56:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:56:33');
INSERT INTO `sys_errorlog` VALUES ('925', 'M001', '2013-04-15 16:56:33', null, null, '当前Vstart的进程数：0', '2013-04-15 16:56:33');
INSERT INTO `sys_errorlog` VALUES ('926', 'M001', '2013-04-15 16:56:33', null, null, '当前TransPro的进程数：0', '2013-04-15 16:56:33');
INSERT INTO `sys_errorlog` VALUES ('927', 'M001', '2013-04-15 16:56:33', null, null, '当前内存使用量：1%', '2013-04-15 16:56:33');
INSERT INTO `sys_errorlog` VALUES ('928', 'M001', '2013-04-15 16:57:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:57:01');
INSERT INTO `sys_errorlog` VALUES ('929', 'M001', '2013-04-15 16:57:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:57:01');
INSERT INTO `sys_errorlog` VALUES ('930', 'M001', '2013-04-15 16:57:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:57:01');
INSERT INTO `sys_errorlog` VALUES ('931', 'M001', '2013-04-15 16:57:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:57:01');
INSERT INTO `sys_errorlog` VALUES ('932', 'M001', '2013-04-15 16:57:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:57:01');
INSERT INTO `sys_errorlog` VALUES ('933', 'M001', '2013-04-15 16:57:01', null, null, '当前内存使用量：1%', '2013-04-15 16:57:01');
INSERT INTO `sys_errorlog` VALUES ('934', 'M001', '2013-04-15 16:57:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:57:31');
INSERT INTO `sys_errorlog` VALUES ('935', 'M001', '2013-04-15 16:57:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:57:31');
INSERT INTO `sys_errorlog` VALUES ('936', 'M001', '2013-04-15 16:57:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:57:31');
INSERT INTO `sys_errorlog` VALUES ('937', 'M001', '2013-04-15 16:57:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:57:31');
INSERT INTO `sys_errorlog` VALUES ('938', 'M001', '2013-04-15 16:57:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:57:31');
INSERT INTO `sys_errorlog` VALUES ('939', 'M001', '2013-04-15 16:57:31', null, null, '当前内存使用量：1%', '2013-04-15 16:57:31');
INSERT INTO `sys_errorlog` VALUES ('940', 'M001', '2013-04-15 16:58:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:58:02');
INSERT INTO `sys_errorlog` VALUES ('941', 'M001', '2013-04-15 16:58:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:58:02');
INSERT INTO `sys_errorlog` VALUES ('942', 'M001', '2013-04-15 16:58:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:58:02');
INSERT INTO `sys_errorlog` VALUES ('943', 'M001', '2013-04-15 16:58:02', null, null, '当前Vstart的进程数：0', '2013-04-15 16:58:02');
INSERT INTO `sys_errorlog` VALUES ('944', 'M001', '2013-04-15 16:58:02', null, null, '当前TransPro的进程数：0', '2013-04-15 16:58:02');
INSERT INTO `sys_errorlog` VALUES ('945', 'M001', '2013-04-15 16:58:02', null, null, '当前内存使用量：1%', '2013-04-15 16:58:02');
INSERT INTO `sys_errorlog` VALUES ('946', 'M001', '2013-04-15 16:58:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:58:31');
INSERT INTO `sys_errorlog` VALUES ('947', 'M001', '2013-04-15 16:58:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:58:31');
INSERT INTO `sys_errorlog` VALUES ('948', 'M001', '2013-04-15 16:58:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:58:31');
INSERT INTO `sys_errorlog` VALUES ('949', 'M001', '2013-04-15 16:58:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:58:31');
INSERT INTO `sys_errorlog` VALUES ('950', 'M001', '2013-04-15 16:58:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:58:31');
INSERT INTO `sys_errorlog` VALUES ('951', 'M001', '2013-04-15 16:58:31', null, null, '当前内存使用量：1%', '2013-04-15 16:58:31');
INSERT INTO `sys_errorlog` VALUES ('952', 'M001', '2013-04-15 16:59:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:59:01');
INSERT INTO `sys_errorlog` VALUES ('953', 'M001', '2013-04-15 16:59:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:59:01');
INSERT INTO `sys_errorlog` VALUES ('954', 'M001', '2013-04-15 16:59:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:59:01');
INSERT INTO `sys_errorlog` VALUES ('955', 'M001', '2013-04-15 16:59:01', null, null, '当前Vstart的进程数：0', '2013-04-15 16:59:01');
INSERT INTO `sys_errorlog` VALUES ('956', 'M001', '2013-04-15 16:59:01', null, null, '当前TransPro的进程数：0', '2013-04-15 16:59:01');
INSERT INTO `sys_errorlog` VALUES ('957', 'M001', '2013-04-15 16:59:01', null, null, '当前内存使用量：1%', '2013-04-15 16:59:01');
INSERT INTO `sys_errorlog` VALUES ('958', 'M001', '2013-04-15 16:59:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 16:59:31');
INSERT INTO `sys_errorlog` VALUES ('959', 'M001', '2013-04-15 16:59:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 16:59:31');
INSERT INTO `sys_errorlog` VALUES ('960', 'M001', '2013-04-15 16:59:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 16:59:31');
INSERT INTO `sys_errorlog` VALUES ('961', 'M001', '2013-04-15 16:59:31', null, null, '当前Vstart的进程数：0', '2013-04-15 16:59:31');
INSERT INTO `sys_errorlog` VALUES ('962', 'M001', '2013-04-15 16:59:31', null, null, '当前TransPro的进程数：0', '2013-04-15 16:59:31');
INSERT INTO `sys_errorlog` VALUES ('963', 'M001', '2013-04-15 16:59:31', null, null, '当前内存使用量：1%', '2013-04-15 16:59:31');
INSERT INTO `sys_errorlog` VALUES ('964', 'M001', '2013-04-15 17:00:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:00:02');
INSERT INTO `sys_errorlog` VALUES ('965', 'M001', '2013-04-15 17:00:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:00:02');
INSERT INTO `sys_errorlog` VALUES ('966', 'M001', '2013-04-15 17:00:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:00:02');
INSERT INTO `sys_errorlog` VALUES ('967', 'M001', '2013-04-15 17:00:02', null, null, '当前Vstart的进程数：0', '2013-04-15 17:00:02');
INSERT INTO `sys_errorlog` VALUES ('968', 'M001', '2013-04-15 17:00:02', null, null, '当前TransPro的进程数：0', '2013-04-15 17:00:02');
INSERT INTO `sys_errorlog` VALUES ('969', 'M001', '2013-04-15 17:00:02', null, null, '当前内存使用量：1%', '2013-04-15 17:00:02');
INSERT INTO `sys_errorlog` VALUES ('970', 'M001', '2013-04-15 17:00:32', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:00:32');
INSERT INTO `sys_errorlog` VALUES ('971', 'M001', '2013-04-15 17:00:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:00:32');
INSERT INTO `sys_errorlog` VALUES ('972', 'M001', '2013-04-15 17:00:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:00:32');
INSERT INTO `sys_errorlog` VALUES ('973', 'M001', '2013-04-15 17:00:32', null, null, '当前Vstart的进程数：0', '2013-04-15 17:00:32');
INSERT INTO `sys_errorlog` VALUES ('974', 'M001', '2013-04-15 17:00:32', null, null, '当前TransPro的进程数：0', '2013-04-15 17:00:32');
INSERT INTO `sys_errorlog` VALUES ('975', 'M001', '2013-04-15 17:00:32', null, null, '当前内存使用量：1%', '2013-04-15 17:00:32');
INSERT INTO `sys_errorlog` VALUES ('976', 'M001', '2013-04-15 17:01:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:01:02');
INSERT INTO `sys_errorlog` VALUES ('977', 'M001', '2013-04-15 17:01:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:01:02');
INSERT INTO `sys_errorlog` VALUES ('978', 'M001', '2013-04-15 17:01:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:01:02');
INSERT INTO `sys_errorlog` VALUES ('979', 'M001', '2013-04-15 17:01:02', null, null, '当前Vstart的进程数：0', '2013-04-15 17:01:02');
INSERT INTO `sys_errorlog` VALUES ('980', 'M001', '2013-04-15 17:01:02', null, null, '当前TransPro的进程数：0', '2013-04-15 17:01:02');
INSERT INTO `sys_errorlog` VALUES ('981', 'M001', '2013-04-15 17:01:02', null, null, '当前内存使用量：1%', '2013-04-15 17:01:02');
INSERT INTO `sys_errorlog` VALUES ('982', 'M001', '2013-04-15 17:01:32', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:01:32');
INSERT INTO `sys_errorlog` VALUES ('983', 'M001', '2013-04-15 17:01:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:01:32');
INSERT INTO `sys_errorlog` VALUES ('984', 'M001', '2013-04-15 17:01:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:01:32');
INSERT INTO `sys_errorlog` VALUES ('985', 'M001', '2013-04-15 17:01:32', null, null, '当前Vstart的进程数：0', '2013-04-15 17:01:32');
INSERT INTO `sys_errorlog` VALUES ('986', 'M001', '2013-04-15 17:01:32', null, null, '当前TransPro的进程数：0', '2013-04-15 17:01:32');
INSERT INTO `sys_errorlog` VALUES ('987', 'M001', '2013-04-15 17:01:32', null, null, '当前内存使用量：1%', '2013-04-15 17:01:32');
INSERT INTO `sys_errorlog` VALUES ('988', 'M001', '2013-04-15 17:02:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:02:02');
INSERT INTO `sys_errorlog` VALUES ('989', 'M001', '2013-04-15 17:02:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:02:02');
INSERT INTO `sys_errorlog` VALUES ('990', 'M001', '2013-04-15 17:02:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:02:02');
INSERT INTO `sys_errorlog` VALUES ('991', 'M001', '2013-04-15 17:02:02', null, null, '当前Vstart的进程数：0', '2013-04-15 17:02:02');
INSERT INTO `sys_errorlog` VALUES ('992', 'M001', '2013-04-15 17:02:02', null, null, '当前TransPro的进程数：0', '2013-04-15 17:02:02');
INSERT INTO `sys_errorlog` VALUES ('993', 'M001', '2013-04-15 17:02:02', null, null, '当前内存使用量：1%', '2013-04-15 17:02:02');
INSERT INTO `sys_errorlog` VALUES ('994', 'M001', '2013-04-15 17:02:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:02:31');
INSERT INTO `sys_errorlog` VALUES ('995', 'M001', '2013-04-15 17:02:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:02:31');
INSERT INTO `sys_errorlog` VALUES ('996', 'M001', '2013-04-15 17:02:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:02:31');
INSERT INTO `sys_errorlog` VALUES ('997', 'M001', '2013-04-15 17:02:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:02:31');
INSERT INTO `sys_errorlog` VALUES ('998', 'M001', '2013-04-15 17:02:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:02:31');
INSERT INTO `sys_errorlog` VALUES ('999', 'M001', '2013-04-15 17:02:31', null, null, '当前内存使用量：1%', '2013-04-15 17:02:31');
INSERT INTO `sys_errorlog` VALUES ('1000', 'M001', '2013-04-15 17:03:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:03:01');
INSERT INTO `sys_errorlog` VALUES ('1001', 'M001', '2013-04-15 17:03:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:03:01');
INSERT INTO `sys_errorlog` VALUES ('1002', 'M001', '2013-04-15 17:03:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:03:01');
INSERT INTO `sys_errorlog` VALUES ('1003', 'M001', '2013-04-15 17:03:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:03:01');
INSERT INTO `sys_errorlog` VALUES ('1004', 'M001', '2013-04-15 17:03:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:03:01');
INSERT INTO `sys_errorlog` VALUES ('1005', 'M001', '2013-04-15 17:03:01', null, null, '当前内存使用量：1%', '2013-04-15 17:03:01');
INSERT INTO `sys_errorlog` VALUES ('1006', 'M001', '2013-04-15 17:03:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:03:31');
INSERT INTO `sys_errorlog` VALUES ('1007', 'M001', '2013-04-15 17:03:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:03:31');
INSERT INTO `sys_errorlog` VALUES ('1008', 'M001', '2013-04-15 17:03:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:03:31');
INSERT INTO `sys_errorlog` VALUES ('1009', 'M001', '2013-04-15 17:03:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:03:31');
INSERT INTO `sys_errorlog` VALUES ('1010', 'M001', '2013-04-15 17:03:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:03:31');
INSERT INTO `sys_errorlog` VALUES ('1011', 'M001', '2013-04-15 17:03:31', null, null, '当前内存使用量：1%', '2013-04-15 17:03:31');
INSERT INTO `sys_errorlog` VALUES ('1012', 'M001', '2013-04-15 17:04:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:04:01');
INSERT INTO `sys_errorlog` VALUES ('1013', 'M001', '2013-04-15 17:04:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:04:01');
INSERT INTO `sys_errorlog` VALUES ('1014', 'M001', '2013-04-15 17:04:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:04:01');
INSERT INTO `sys_errorlog` VALUES ('1015', 'M001', '2013-04-15 17:04:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:04:01');
INSERT INTO `sys_errorlog` VALUES ('1016', 'M001', '2013-04-15 17:04:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:04:01');
INSERT INTO `sys_errorlog` VALUES ('1017', 'M001', '2013-04-15 17:04:01', null, null, '当前内存使用量：1%', '2013-04-15 17:04:01');
INSERT INTO `sys_errorlog` VALUES ('1018', 'M001', '2013-04-15 17:04:32', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:04:32');
INSERT INTO `sys_errorlog` VALUES ('1019', 'M001', '2013-04-15 17:04:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:04:32');
INSERT INTO `sys_errorlog` VALUES ('1020', 'M001', '2013-04-15 17:04:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:04:32');
INSERT INTO `sys_errorlog` VALUES ('1021', 'M001', '2013-04-15 17:04:32', null, null, '当前Vstart的进程数：0', '2013-04-15 17:04:32');
INSERT INTO `sys_errorlog` VALUES ('1022', 'M001', '2013-04-15 17:04:32', null, null, '当前TransPro的进程数：0', '2013-04-15 17:04:32');
INSERT INTO `sys_errorlog` VALUES ('1023', 'M001', '2013-04-15 17:04:32', null, null, '当前内存使用量：1%', '2013-04-15 17:04:32');
INSERT INTO `sys_errorlog` VALUES ('1024', 'M001', '2013-04-15 17:05:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:05:01');
INSERT INTO `sys_errorlog` VALUES ('1025', 'M001', '2013-04-15 17:05:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:05:01');
INSERT INTO `sys_errorlog` VALUES ('1026', 'M001', '2013-04-15 17:05:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:05:01');
INSERT INTO `sys_errorlog` VALUES ('1027', 'M001', '2013-04-15 17:05:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:05:01');
INSERT INTO `sys_errorlog` VALUES ('1028', 'M001', '2013-04-15 17:05:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:05:01');
INSERT INTO `sys_errorlog` VALUES ('1029', 'M001', '2013-04-15 17:05:01', null, null, '当前内存使用量：1%', '2013-04-15 17:05:01');
INSERT INTO `sys_errorlog` VALUES ('1030', 'M001', '2013-04-15 17:05:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:05:31');
INSERT INTO `sys_errorlog` VALUES ('1031', 'M001', '2013-04-15 17:05:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:05:31');
INSERT INTO `sys_errorlog` VALUES ('1032', 'M001', '2013-04-15 17:05:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:05:31');
INSERT INTO `sys_errorlog` VALUES ('1033', 'M001', '2013-04-15 17:05:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:05:31');
INSERT INTO `sys_errorlog` VALUES ('1034', 'M001', '2013-04-15 17:05:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:05:31');
INSERT INTO `sys_errorlog` VALUES ('1035', 'M001', '2013-04-15 17:05:31', null, null, '当前内存使用量：1%', '2013-04-15 17:05:31');
INSERT INTO `sys_errorlog` VALUES ('1036', 'M001', '2013-04-15 17:06:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:06:01');
INSERT INTO `sys_errorlog` VALUES ('1037', 'M001', '2013-04-15 17:06:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:06:01');
INSERT INTO `sys_errorlog` VALUES ('1038', 'M001', '2013-04-15 17:06:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:06:01');
INSERT INTO `sys_errorlog` VALUES ('1039', 'M001', '2013-04-15 17:06:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:06:01');
INSERT INTO `sys_errorlog` VALUES ('1040', 'M001', '2013-04-15 17:06:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:06:01');
INSERT INTO `sys_errorlog` VALUES ('1041', 'M001', '2013-04-15 17:06:01', null, null, '当前内存使用量：1%', '2013-04-15 17:06:01');
INSERT INTO `sys_errorlog` VALUES ('1042', 'M001', '2013-04-15 17:06:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:06:31');
INSERT INTO `sys_errorlog` VALUES ('1043', 'M001', '2013-04-15 17:06:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:06:31');
INSERT INTO `sys_errorlog` VALUES ('1044', 'M001', '2013-04-15 17:06:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:06:31');
INSERT INTO `sys_errorlog` VALUES ('1045', 'M001', '2013-04-15 17:06:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:06:31');
INSERT INTO `sys_errorlog` VALUES ('1046', 'M001', '2013-04-15 17:06:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:06:31');
INSERT INTO `sys_errorlog` VALUES ('1047', 'M001', '2013-04-15 17:06:31', null, null, '当前内存使用量：1%', '2013-04-15 17:06:31');
INSERT INTO `sys_errorlog` VALUES ('1048', 'M001', '2013-04-15 17:07:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:07:01');
INSERT INTO `sys_errorlog` VALUES ('1049', 'M001', '2013-04-15 17:07:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:07:01');
INSERT INTO `sys_errorlog` VALUES ('1050', 'M001', '2013-04-15 17:07:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:07:01');
INSERT INTO `sys_errorlog` VALUES ('1051', 'M001', '2013-04-15 17:07:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:07:01');
INSERT INTO `sys_errorlog` VALUES ('1052', 'M001', '2013-04-15 17:07:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:07:01');
INSERT INTO `sys_errorlog` VALUES ('1053', 'M001', '2013-04-15 17:07:01', null, null, '当前内存使用量：1%', '2013-04-15 17:07:01');
INSERT INTO `sys_errorlog` VALUES ('1054', 'M001', '2013-04-15 17:07:32', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:07:32');
INSERT INTO `sys_errorlog` VALUES ('1055', 'M001', '2013-04-15 17:07:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:07:32');
INSERT INTO `sys_errorlog` VALUES ('1056', 'M001', '2013-04-15 17:07:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:07:32');
INSERT INTO `sys_errorlog` VALUES ('1057', 'M001', '2013-04-15 17:07:32', null, null, '当前Vstart的进程数：0', '2013-04-15 17:07:32');
INSERT INTO `sys_errorlog` VALUES ('1058', 'M001', '2013-04-15 17:07:32', null, null, '当前TransPro的进程数：0', '2013-04-15 17:07:32');
INSERT INTO `sys_errorlog` VALUES ('1059', 'M001', '2013-04-15 17:07:32', null, null, '当前内存使用量：1%', '2013-04-15 17:07:32');
INSERT INTO `sys_errorlog` VALUES ('1060', 'M001', '2013-04-15 17:08:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:08:01');
INSERT INTO `sys_errorlog` VALUES ('1061', 'M001', '2013-04-15 17:08:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:08:01');
INSERT INTO `sys_errorlog` VALUES ('1062', 'M001', '2013-04-15 17:08:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:08:01');
INSERT INTO `sys_errorlog` VALUES ('1063', 'M001', '2013-04-15 17:08:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:08:01');
INSERT INTO `sys_errorlog` VALUES ('1064', 'M001', '2013-04-15 17:08:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:08:01');
INSERT INTO `sys_errorlog` VALUES ('1065', 'M001', '2013-04-15 17:08:01', null, null, '当前内存使用量：1%', '2013-04-15 17:08:01');
INSERT INTO `sys_errorlog` VALUES ('1066', 'M001', '2013-04-15 17:08:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:08:31');
INSERT INTO `sys_errorlog` VALUES ('1067', 'M001', '2013-04-15 17:08:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:08:31');
INSERT INTO `sys_errorlog` VALUES ('1068', 'M001', '2013-04-15 17:08:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:08:31');
INSERT INTO `sys_errorlog` VALUES ('1069', 'M001', '2013-04-15 17:08:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:08:31');
INSERT INTO `sys_errorlog` VALUES ('1070', 'M001', '2013-04-15 17:08:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:08:31');
INSERT INTO `sys_errorlog` VALUES ('1071', 'M001', '2013-04-15 17:08:31', null, null, '当前内存使用量：1%', '2013-04-15 17:08:31');
INSERT INTO `sys_errorlog` VALUES ('1072', 'M001', '2013-04-15 17:09:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:09:01');
INSERT INTO `sys_errorlog` VALUES ('1073', 'M001', '2013-04-15 17:09:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:09:01');
INSERT INTO `sys_errorlog` VALUES ('1074', 'M001', '2013-04-15 17:09:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:09:01');
INSERT INTO `sys_errorlog` VALUES ('1075', 'M001', '2013-04-15 17:09:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:09:01');
INSERT INTO `sys_errorlog` VALUES ('1076', 'M001', '2013-04-15 17:09:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:09:01');
INSERT INTO `sys_errorlog` VALUES ('1077', 'M001', '2013-04-15 17:09:01', null, null, '当前内存使用量：1%', '2013-04-15 17:09:01');
INSERT INTO `sys_errorlog` VALUES ('1078', 'M001', '2013-04-15 17:09:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:09:31');
INSERT INTO `sys_errorlog` VALUES ('1079', 'M001', '2013-04-15 17:09:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:09:31');
INSERT INTO `sys_errorlog` VALUES ('1080', 'M001', '2013-04-15 17:09:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:09:31');
INSERT INTO `sys_errorlog` VALUES ('1081', 'M001', '2013-04-15 17:09:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:09:31');
INSERT INTO `sys_errorlog` VALUES ('1082', 'M001', '2013-04-15 17:09:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:09:31');
INSERT INTO `sys_errorlog` VALUES ('1083', 'M001', '2013-04-15 17:09:31', null, null, '当前内存使用量：1%', '2013-04-15 17:09:31');
INSERT INTO `sys_errorlog` VALUES ('1084', 'M001', '2013-04-15 17:10:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:10:01');
INSERT INTO `sys_errorlog` VALUES ('1085', 'M001', '2013-04-15 17:10:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:10:01');
INSERT INTO `sys_errorlog` VALUES ('1086', 'M001', '2013-04-15 17:10:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:10:01');
INSERT INTO `sys_errorlog` VALUES ('1087', 'M001', '2013-04-15 17:10:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:10:01');
INSERT INTO `sys_errorlog` VALUES ('1088', 'M001', '2013-04-15 17:10:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:10:01');
INSERT INTO `sys_errorlog` VALUES ('1089', 'M001', '2013-04-15 17:10:01', null, null, '当前内存使用量：1%', '2013-04-15 17:10:01');
INSERT INTO `sys_errorlog` VALUES ('1090', 'M001', '2013-04-15 17:10:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:10:31');
INSERT INTO `sys_errorlog` VALUES ('1091', 'M001', '2013-04-15 17:10:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:10:31');
INSERT INTO `sys_errorlog` VALUES ('1092', 'M001', '2013-04-15 17:10:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:10:31');
INSERT INTO `sys_errorlog` VALUES ('1093', 'M001', '2013-04-15 17:10:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:10:31');
INSERT INTO `sys_errorlog` VALUES ('1094', 'M001', '2013-04-15 17:10:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:10:31');
INSERT INTO `sys_errorlog` VALUES ('1095', 'M001', '2013-04-15 17:10:31', null, null, '当前内存使用量：1%', '2013-04-15 17:10:31');
INSERT INTO `sys_errorlog` VALUES ('1096', 'M001', '2013-04-15 17:11:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:11:01');
INSERT INTO `sys_errorlog` VALUES ('1097', 'M001', '2013-04-15 17:11:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:11:01');
INSERT INTO `sys_errorlog` VALUES ('1098', 'M001', '2013-04-15 17:11:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:11:01');
INSERT INTO `sys_errorlog` VALUES ('1099', 'M001', '2013-04-15 17:11:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:11:01');
INSERT INTO `sys_errorlog` VALUES ('1100', 'M001', '2013-04-15 17:11:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:11:01');
INSERT INTO `sys_errorlog` VALUES ('1101', 'M001', '2013-04-15 17:11:01', null, null, '当前内存使用量：1%', '2013-04-15 17:11:01');
INSERT INTO `sys_errorlog` VALUES ('1102', 'M001', '2013-04-15 17:11:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:11:31');
INSERT INTO `sys_errorlog` VALUES ('1103', 'M001', '2013-04-15 17:11:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:11:31');
INSERT INTO `sys_errorlog` VALUES ('1104', 'M001', '2013-04-15 17:11:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:11:31');
INSERT INTO `sys_errorlog` VALUES ('1105', 'M001', '2013-04-15 17:11:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:11:31');
INSERT INTO `sys_errorlog` VALUES ('1106', 'M001', '2013-04-15 17:11:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:11:31');
INSERT INTO `sys_errorlog` VALUES ('1107', 'M001', '2013-04-15 17:11:31', null, null, '当前内存使用量：1%', '2013-04-15 17:11:31');
INSERT INTO `sys_errorlog` VALUES ('1108', 'M001', '2013-04-15 17:13:05', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:13:05');
INSERT INTO `sys_errorlog` VALUES ('1109', 'M001', '2013-04-15 17:13:05', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:13:05');
INSERT INTO `sys_errorlog` VALUES ('1110', 'M001', '2013-04-15 17:13:05', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:13:05');
INSERT INTO `sys_errorlog` VALUES ('1111', 'M001', '2013-04-15 17:13:05', null, null, '当前Vstart的进程数：0', '2013-04-15 17:13:05');
INSERT INTO `sys_errorlog` VALUES ('1112', 'M001', '2013-04-15 17:13:05', null, null, '当前TransPro的进程数：0', '2013-04-15 17:13:05');
INSERT INTO `sys_errorlog` VALUES ('1113', 'M001', '2013-04-15 17:13:05', null, null, '当前内存使用量：1%', '2013-04-15 17:13:05');
INSERT INTO `sys_errorlog` VALUES ('1114', 'M001', '2013-04-15 17:14:33', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:14:33');
INSERT INTO `sys_errorlog` VALUES ('1115', 'M001', '2013-04-15 17:14:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:14:33');
INSERT INTO `sys_errorlog` VALUES ('1116', 'M001', '2013-04-15 17:14:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:14:33');
INSERT INTO `sys_errorlog` VALUES ('1117', 'M001', '2013-04-15 17:14:33', null, null, '当前Vstart的进程数：0', '2013-04-15 17:14:33');
INSERT INTO `sys_errorlog` VALUES ('1118', 'M001', '2013-04-15 17:14:33', null, null, '当前TransPro的进程数：0', '2013-04-15 17:14:33');
INSERT INTO `sys_errorlog` VALUES ('1119', 'M001', '2013-04-15 17:14:33', null, null, '当前内存使用量：1%', '2013-04-15 17:14:33');
INSERT INTO `sys_errorlog` VALUES ('1120', 'M001', '2013-04-15 17:15:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:15:01');
INSERT INTO `sys_errorlog` VALUES ('1121', 'M001', '2013-04-15 17:15:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:15:01');
INSERT INTO `sys_errorlog` VALUES ('1122', 'M001', '2013-04-15 17:15:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:15:01');
INSERT INTO `sys_errorlog` VALUES ('1123', 'M001', '2013-04-15 17:15:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:15:01');
INSERT INTO `sys_errorlog` VALUES ('1124', 'M001', '2013-04-15 17:15:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:15:01');
INSERT INTO `sys_errorlog` VALUES ('1125', 'M001', '2013-04-15 17:15:01', null, null, '当前内存使用量：1%', '2013-04-15 17:15:01');
INSERT INTO `sys_errorlog` VALUES ('1126', 'M001', '2013-04-15 17:15:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:15:31');
INSERT INTO `sys_errorlog` VALUES ('1127', 'M001', '2013-04-15 17:15:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:15:31');
INSERT INTO `sys_errorlog` VALUES ('1128', 'M001', '2013-04-15 17:15:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:15:31');
INSERT INTO `sys_errorlog` VALUES ('1129', 'M001', '2013-04-15 17:15:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:15:31');
INSERT INTO `sys_errorlog` VALUES ('1130', 'M001', '2013-04-15 17:15:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:15:31');
INSERT INTO `sys_errorlog` VALUES ('1131', 'M001', '2013-04-15 17:15:31', null, null, '当前内存使用量：1%', '2013-04-15 17:15:31');
INSERT INTO `sys_errorlog` VALUES ('1132', 'M001', '2013-04-15 17:16:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:16:01');
INSERT INTO `sys_errorlog` VALUES ('1133', 'M001', '2013-04-15 17:16:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:16:01');
INSERT INTO `sys_errorlog` VALUES ('1134', 'M001', '2013-04-15 17:16:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:16:01');
INSERT INTO `sys_errorlog` VALUES ('1135', 'M001', '2013-04-15 17:16:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:16:01');
INSERT INTO `sys_errorlog` VALUES ('1136', 'M001', '2013-04-15 17:16:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:16:01');
INSERT INTO `sys_errorlog` VALUES ('1137', 'M001', '2013-04-15 17:16:01', null, null, '当前内存使用量：1%', '2013-04-15 17:16:01');
INSERT INTO `sys_errorlog` VALUES ('1138', 'M001', '2013-04-15 17:16:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:16:31');
INSERT INTO `sys_errorlog` VALUES ('1139', 'M001', '2013-04-15 17:16:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:16:31');
INSERT INTO `sys_errorlog` VALUES ('1140', 'M001', '2013-04-15 17:16:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:16:31');
INSERT INTO `sys_errorlog` VALUES ('1141', 'M001', '2013-04-15 17:16:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:16:31');
INSERT INTO `sys_errorlog` VALUES ('1142', 'M001', '2013-04-15 17:16:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:16:31');
INSERT INTO `sys_errorlog` VALUES ('1143', 'M001', '2013-04-15 17:16:31', null, null, '当前内存使用量：1%', '2013-04-15 17:16:31');
INSERT INTO `sys_errorlog` VALUES ('1144', 'M001', '2013-04-15 17:17:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:17:01');
INSERT INTO `sys_errorlog` VALUES ('1145', 'M001', '2013-04-15 17:17:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:17:01');
INSERT INTO `sys_errorlog` VALUES ('1146', 'M001', '2013-04-15 17:17:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:17:01');
INSERT INTO `sys_errorlog` VALUES ('1147', 'M001', '2013-04-15 17:17:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:17:01');
INSERT INTO `sys_errorlog` VALUES ('1148', 'M001', '2013-04-15 17:17:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:17:01');
INSERT INTO `sys_errorlog` VALUES ('1149', 'M001', '2013-04-15 17:17:01', null, null, '当前内存使用量：1%', '2013-04-15 17:17:01');
INSERT INTO `sys_errorlog` VALUES ('1150', 'M001', '2013-04-15 17:17:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:17:31');
INSERT INTO `sys_errorlog` VALUES ('1151', 'M001', '2013-04-15 17:17:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:17:31');
INSERT INTO `sys_errorlog` VALUES ('1152', 'M001', '2013-04-15 17:17:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:17:31');
INSERT INTO `sys_errorlog` VALUES ('1153', 'M001', '2013-04-15 17:17:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:17:31');
INSERT INTO `sys_errorlog` VALUES ('1154', 'M001', '2013-04-15 17:17:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:17:31');
INSERT INTO `sys_errorlog` VALUES ('1155', 'M001', '2013-04-15 17:17:31', null, null, '当前内存使用量：1%', '2013-04-15 17:17:31');
INSERT INTO `sys_errorlog` VALUES ('1156', 'M001', '2013-04-15 17:18:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:18:01');
INSERT INTO `sys_errorlog` VALUES ('1157', 'M001', '2013-04-15 17:18:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:18:01');
INSERT INTO `sys_errorlog` VALUES ('1158', 'M001', '2013-04-15 17:18:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:18:01');
INSERT INTO `sys_errorlog` VALUES ('1159', 'M001', '2013-04-15 17:18:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:18:01');
INSERT INTO `sys_errorlog` VALUES ('1160', 'M001', '2013-04-15 17:18:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:18:01');
INSERT INTO `sys_errorlog` VALUES ('1161', 'M001', '2013-04-15 17:18:01', null, null, '当前内存使用量：1%', '2013-04-15 17:18:01');
INSERT INTO `sys_errorlog` VALUES ('1162', 'M001', '2013-04-15 17:18:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:18:31');
INSERT INTO `sys_errorlog` VALUES ('1163', 'M001', '2013-04-15 17:18:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:18:31');
INSERT INTO `sys_errorlog` VALUES ('1164', 'M001', '2013-04-15 17:18:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:18:31');
INSERT INTO `sys_errorlog` VALUES ('1165', 'M001', '2013-04-15 17:18:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:18:31');
INSERT INTO `sys_errorlog` VALUES ('1166', 'M001', '2013-04-15 17:18:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:18:31');
INSERT INTO `sys_errorlog` VALUES ('1167', 'M001', '2013-04-15 17:18:31', null, null, '当前内存使用量：1%', '2013-04-15 17:18:31');
INSERT INTO `sys_errorlog` VALUES ('1168', 'M001', '2013-04-15 17:19:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:19:02');
INSERT INTO `sys_errorlog` VALUES ('1169', 'M001', '2013-04-15 17:19:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:19:02');
INSERT INTO `sys_errorlog` VALUES ('1170', 'M001', '2013-04-15 17:19:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:19:02');
INSERT INTO `sys_errorlog` VALUES ('1171', 'M001', '2013-04-15 17:19:02', null, null, '当前Vstart的进程数：0', '2013-04-15 17:19:02');
INSERT INTO `sys_errorlog` VALUES ('1172', 'M001', '2013-04-15 17:19:02', null, null, '当前TransPro的进程数：0', '2013-04-15 17:19:02');
INSERT INTO `sys_errorlog` VALUES ('1173', 'M001', '2013-04-15 17:19:02', null, null, '当前内存使用量：1%', '2013-04-15 17:19:02');
INSERT INTO `sys_errorlog` VALUES ('1174', 'M001', '2013-04-15 17:19:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:19:31');
INSERT INTO `sys_errorlog` VALUES ('1175', 'M001', '2013-04-15 17:19:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:19:31');
INSERT INTO `sys_errorlog` VALUES ('1176', 'M001', '2013-04-15 17:19:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:19:31');
INSERT INTO `sys_errorlog` VALUES ('1177', 'M001', '2013-04-15 17:19:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:19:31');
INSERT INTO `sys_errorlog` VALUES ('1178', 'M001', '2013-04-15 17:19:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:19:31');
INSERT INTO `sys_errorlog` VALUES ('1179', 'M001', '2013-04-15 17:19:31', null, null, '当前内存使用量：1%', '2013-04-15 17:19:31');
INSERT INTO `sys_errorlog` VALUES ('1180', 'M001', '2013-04-15 17:21:04', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:21:04');
INSERT INTO `sys_errorlog` VALUES ('1181', 'M001', '2013-04-15 17:21:04', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:21:04');
INSERT INTO `sys_errorlog` VALUES ('1182', 'M001', '2013-04-15 17:21:04', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:21:04');
INSERT INTO `sys_errorlog` VALUES ('1183', 'M001', '2013-04-15 17:21:04', null, null, '当前Vstart的进程数：0', '2013-04-15 17:21:04');
INSERT INTO `sys_errorlog` VALUES ('1184', 'M001', '2013-04-15 17:21:04', null, null, '当前TransPro的进程数：0', '2013-04-15 17:21:04');
INSERT INTO `sys_errorlog` VALUES ('1185', 'M001', '2013-04-15 17:21:04', null, null, '当前内存使用量：1%', '2013-04-15 17:21:04');
INSERT INTO `sys_errorlog` VALUES ('1186', 'M001', '2013-04-15 17:21:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:21:31');
INSERT INTO `sys_errorlog` VALUES ('1187', 'M001', '2013-04-15 17:21:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:21:31');
INSERT INTO `sys_errorlog` VALUES ('1188', 'M001', '2013-04-15 17:21:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:21:31');
INSERT INTO `sys_errorlog` VALUES ('1189', 'M001', '2013-04-15 17:21:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:21:31');
INSERT INTO `sys_errorlog` VALUES ('1190', 'M001', '2013-04-15 17:21:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:21:31');
INSERT INTO `sys_errorlog` VALUES ('1191', 'M001', '2013-04-15 17:21:31', null, null, '当前内存使用量：1%', '2013-04-15 17:21:31');
INSERT INTO `sys_errorlog` VALUES ('1192', 'M001', '2013-04-15 17:22:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:22:01');
INSERT INTO `sys_errorlog` VALUES ('1193', 'M001', '2013-04-15 17:22:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:22:01');
INSERT INTO `sys_errorlog` VALUES ('1194', 'M001', '2013-04-15 17:22:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:22:01');
INSERT INTO `sys_errorlog` VALUES ('1195', 'M001', '2013-04-15 17:22:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:22:01');
INSERT INTO `sys_errorlog` VALUES ('1196', 'M001', '2013-04-15 17:22:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:22:01');
INSERT INTO `sys_errorlog` VALUES ('1197', 'M001', '2013-04-15 17:22:01', null, null, '当前内存使用量：1%', '2013-04-15 17:22:01');
INSERT INTO `sys_errorlog` VALUES ('1198', 'M001', '2013-04-15 17:31:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:31:02');
INSERT INTO `sys_errorlog` VALUES ('1199', 'M001', '2013-04-15 17:31:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:31:02');
INSERT INTO `sys_errorlog` VALUES ('1200', 'M001', '2013-04-15 17:31:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:31:02');
INSERT INTO `sys_errorlog` VALUES ('1201', 'M001', '2013-04-15 17:31:02', null, null, '当前Vstart的进程数：0', '2013-04-15 17:31:02');
INSERT INTO `sys_errorlog` VALUES ('1202', 'M001', '2013-04-15 17:31:02', null, null, '当前TransPro的进程数：0', '2013-04-15 17:31:02');
INSERT INTO `sys_errorlog` VALUES ('1203', 'M001', '2013-04-15 17:31:02', null, null, '当前内存使用量：1%', '2013-04-15 17:31:02');
INSERT INTO `sys_errorlog` VALUES ('1204', 'M001', '2013-04-15 17:31:31', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:31:31');
INSERT INTO `sys_errorlog` VALUES ('1205', 'M001', '2013-04-15 17:31:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:31:31');
INSERT INTO `sys_errorlog` VALUES ('1206', 'M001', '2013-04-15 17:31:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:31:31');
INSERT INTO `sys_errorlog` VALUES ('1207', 'M001', '2013-04-15 17:31:31', null, null, '当前Vstart的进程数：0', '2013-04-15 17:31:31');
INSERT INTO `sys_errorlog` VALUES ('1208', 'M001', '2013-04-15 17:31:31', null, null, '当前TransPro的进程数：0', '2013-04-15 17:31:31');
INSERT INTO `sys_errorlog` VALUES ('1209', 'M001', '2013-04-15 17:31:31', null, null, '当前内存使用量：1%', '2013-04-15 17:31:31');
INSERT INTO `sys_errorlog` VALUES ('1210', 'M001', '2013-04-15 17:32:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:32:01');
INSERT INTO `sys_errorlog` VALUES ('1211', 'M001', '2013-04-15 17:32:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:32:01');
INSERT INTO `sys_errorlog` VALUES ('1212', 'M001', '2013-04-15 17:32:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:32:01');
INSERT INTO `sys_errorlog` VALUES ('1213', 'M001', '2013-04-15 17:32:01', null, null, '当前Vstart的进程数：0', '2013-04-15 17:32:01');
INSERT INTO `sys_errorlog` VALUES ('1214', 'M001', '2013-04-15 17:32:01', null, null, '当前TransPro的进程数：0', '2013-04-15 17:32:01');
INSERT INTO `sys_errorlog` VALUES ('1215', 'M001', '2013-04-15 17:32:01', null, null, '当前内存使用量：1%', '2013-04-15 17:32:01');
INSERT INTO `sys_errorlog` VALUES ('1216', 'M001', '2013-04-15 17:33:33', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:33:33');
INSERT INTO `sys_errorlog` VALUES ('1217', 'M001', '2013-04-15 17:33:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:33:33');
INSERT INTO `sys_errorlog` VALUES ('1218', 'M001', '2013-04-15 17:33:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:33:33');
INSERT INTO `sys_errorlog` VALUES ('1219', 'M001', '2013-04-15 17:33:33', null, null, '当前Vstart的进程数：0', '2013-04-15 17:33:33');
INSERT INTO `sys_errorlog` VALUES ('1220', 'M001', '2013-04-15 17:33:33', null, null, '当前TransPro的进程数：0', '2013-04-15 17:33:33');
INSERT INTO `sys_errorlog` VALUES ('1221', 'M001', '2013-04-15 17:33:33', null, null, '当前内存使用量：1%', '2013-04-15 17:33:33');
INSERT INTO `sys_errorlog` VALUES ('1222', 'M001', '2013-04-15 17:40:38', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:40:38');
INSERT INTO `sys_errorlog` VALUES ('1223', 'M001', '2013-04-15 17:40:38', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:40:38');
INSERT INTO `sys_errorlog` VALUES ('1224', 'M001', '2013-04-15 17:40:38', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:40:38');
INSERT INTO `sys_errorlog` VALUES ('1225', 'M001', '2013-04-15 17:40:38', null, null, '当前Vstart的进程数：0', '2013-04-15 17:40:38');
INSERT INTO `sys_errorlog` VALUES ('1226', 'M001', '2013-04-15 17:40:38', null, null, '当前TransPro的进程数：0', '2013-04-15 17:40:38');
INSERT INTO `sys_errorlog` VALUES ('1227', 'M001', '2013-04-15 17:40:38', null, null, '当前内存使用量：1%', '2013-04-15 17:40:38');
INSERT INTO `sys_errorlog` VALUES ('1228', 'M001', '2013-04-15 17:42:03', null, null, '当前recvmbfe的进程数：0', '2013-04-15 17:42:03');
INSERT INTO `sys_errorlog` VALUES ('1229', 'M001', '2013-04-15 17:42:03', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 17:42:03');
INSERT INTO `sys_errorlog` VALUES ('1230', 'M001', '2013-04-15 17:42:03', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 17:42:03');
INSERT INTO `sys_errorlog` VALUES ('1231', 'M001', '2013-04-15 17:42:03', null, null, '当前Vstart的进程数：0', '2013-04-15 17:42:03');
INSERT INTO `sys_errorlog` VALUES ('1232', 'M001', '2013-04-15 17:42:03', null, null, '当前TransPro的进程数：0', '2013-04-15 17:42:03');
INSERT INTO `sys_errorlog` VALUES ('1233', 'M001', '2013-04-15 17:42:03', null, null, '当前内存使用量：1%', '2013-04-15 17:42:03');
INSERT INTO `sys_errorlog` VALUES ('1234', 'M001', '2013-04-15 09:49:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 09:49:02');
INSERT INTO `sys_errorlog` VALUES ('1235', 'M001', '2013-04-15 09:49:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 09:49:02');
INSERT INTO `sys_errorlog` VALUES ('1236', 'M001', '2013-04-15 09:49:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 09:49:02');
INSERT INTO `sys_errorlog` VALUES ('1237', 'M001', '2013-04-15 09:49:02', null, null, '当前Vstart的进程数：0', '2013-04-15 09:49:02');
INSERT INTO `sys_errorlog` VALUES ('1238', 'M001', '2013-04-15 09:49:02', null, null, '当前TransPro的进程数：0', '2013-04-15 09:49:02');
INSERT INTO `sys_errorlog` VALUES ('1239', 'M001', '2013-04-15 09:49:02', null, null, '当前内存使用量：1%', '2013-04-15 09:49:02');
INSERT INTO `sys_errorlog` VALUES ('1240', 'M001', '2013-04-15 09:50:02', null, null, '当前recvmbfe的进程数：0', '2013-04-15 09:50:02');
INSERT INTO `sys_errorlog` VALUES ('1241', 'M001', '2013-04-15 09:50:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 09:50:02');
INSERT INTO `sys_errorlog` VALUES ('1242', 'M001', '2013-04-15 09:50:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 09:50:02');
INSERT INTO `sys_errorlog` VALUES ('1243', 'M001', '2013-04-15 09:50:02', null, null, '当前Vstart的进程数：0', '2013-04-15 09:50:02');
INSERT INTO `sys_errorlog` VALUES ('1244', 'M001', '2013-04-15 09:50:02', null, null, '当前TransPro的进程数：0', '2013-04-15 09:50:02');
INSERT INTO `sys_errorlog` VALUES ('1245', 'M001', '2013-04-15 09:50:02', null, null, '当前内存使用量：1%', '2013-04-15 09:50:02');
INSERT INTO `sys_errorlog` VALUES ('1246', 'M001', '2013-04-15 09:51:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 09:51:01');
INSERT INTO `sys_errorlog` VALUES ('1247', 'M001', '2013-04-15 09:51:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 09:51:01');
INSERT INTO `sys_errorlog` VALUES ('1248', 'M001', '2013-04-15 09:51:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 09:51:01');
INSERT INTO `sys_errorlog` VALUES ('1249', 'M001', '2013-04-15 09:51:01', null, null, '当前Vstart的进程数：0', '2013-04-15 09:51:01');
INSERT INTO `sys_errorlog` VALUES ('1250', 'M001', '2013-04-15 09:51:01', null, null, '当前TransPro的进程数：0', '2013-04-15 09:51:01');
INSERT INTO `sys_errorlog` VALUES ('1251', 'M001', '2013-04-15 09:51:01', null, null, '当前内存使用量：1%', '2013-04-15 09:51:01');
INSERT INTO `sys_errorlog` VALUES ('1252', 'M001', '2013-04-15 09:52:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 09:52:01');
INSERT INTO `sys_errorlog` VALUES ('1253', 'M001', '2013-04-15 09:52:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 09:52:01');
INSERT INTO `sys_errorlog` VALUES ('1254', 'M001', '2013-04-15 09:52:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 09:52:01');
INSERT INTO `sys_errorlog` VALUES ('1255', 'M001', '2013-04-15 09:52:01', null, null, '当前Vstart的进程数：0', '2013-04-15 09:52:01');
INSERT INTO `sys_errorlog` VALUES ('1256', 'M001', '2013-04-15 09:52:01', null, null, '当前TransPro的进程数：0', '2013-04-15 09:52:01');
INSERT INTO `sys_errorlog` VALUES ('1257', 'M001', '2013-04-15 09:52:01', null, null, '当前内存使用量：1%', '2013-04-15 09:52:01');
INSERT INTO `sys_errorlog` VALUES ('1258', 'M001', '2013-04-15 09:53:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 09:53:01');
INSERT INTO `sys_errorlog` VALUES ('1259', 'M001', '2013-04-15 09:53:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 09:53:01');
INSERT INTO `sys_errorlog` VALUES ('1260', 'M001', '2013-04-15 09:53:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 09:53:01');
INSERT INTO `sys_errorlog` VALUES ('1261', 'M001', '2013-04-15 09:53:01', null, null, '当前Vstart的进程数：0', '2013-04-15 09:53:01');
INSERT INTO `sys_errorlog` VALUES ('1262', 'M001', '2013-04-15 09:53:01', null, null, '当前TransPro的进程数：0', '2013-04-15 09:53:01');
INSERT INTO `sys_errorlog` VALUES ('1263', 'M001', '2013-04-15 09:53:01', null, null, '当前内存使用量：1%', '2013-04-15 09:53:01');
INSERT INTO `sys_errorlog` VALUES ('1264', 'M001', '2013-04-15 09:54:01', null, null, '当前recvmbfe的进程数：0', '2013-04-15 09:54:01');
INSERT INTO `sys_errorlog` VALUES ('1265', 'M001', '2013-04-15 09:54:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-15 09:54:01');
INSERT INTO `sys_errorlog` VALUES ('1266', 'M001', '2013-04-15 09:54:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-15 09:54:01');
INSERT INTO `sys_errorlog` VALUES ('1267', 'M001', '2013-04-15 09:54:01', null, null, '当前Vstart的进程数：0', '2013-04-15 09:54:01');
INSERT INTO `sys_errorlog` VALUES ('1268', 'M001', '2013-04-15 09:54:01', null, null, '当前TransPro的进程数：0', '2013-04-15 09:54:01');
INSERT INTO `sys_errorlog` VALUES ('1269', 'M001', '2013-04-15 09:54:01', null, null, '当前内存使用量：1%', '2013-04-15 09:54:01');
INSERT INTO `sys_errorlog` VALUES ('1270', 'M001', '2013-04-16 03:25:02', null, null, '当前recvmbfe的进程数：0', '2013-04-16 03:25:02');
INSERT INTO `sys_errorlog` VALUES ('1271', 'M001', '2013-04-16 03:25:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-16 03:25:02');
INSERT INTO `sys_errorlog` VALUES ('1272', 'M001', '2013-04-16 03:25:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-16 03:25:02');
INSERT INTO `sys_errorlog` VALUES ('1273', 'M001', '2013-04-16 03:25:02', null, null, '当前Vstart的进程数：0', '2013-04-16 03:25:02');
INSERT INTO `sys_errorlog` VALUES ('1274', 'M001', '2013-04-16 03:25:02', null, null, '当前TransPro的进程数：0', '2013-04-16 03:25:02');
INSERT INTO `sys_errorlog` VALUES ('1275', 'M001', '2013-04-16 03:25:02', null, null, '当前内存使用量：1%', '2013-04-16 03:25:02');
INSERT INTO `sys_errorlog` VALUES ('1276', 'M001', '2013-04-16 03:26:01', null, null, '当前recvmbfe的进程数：0', '2013-04-16 03:26:01');
INSERT INTO `sys_errorlog` VALUES ('1277', 'M001', '2013-04-16 03:26:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-16 03:26:01');
INSERT INTO `sys_errorlog` VALUES ('1278', 'M001', '2013-04-16 03:26:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-16 03:26:01');
INSERT INTO `sys_errorlog` VALUES ('1279', 'M001', '2013-04-16 03:26:01', null, null, '当前Vstart的进程数：0', '2013-04-16 03:26:01');
INSERT INTO `sys_errorlog` VALUES ('1280', 'M001', '2013-04-16 03:26:01', null, null, '当前TransPro的进程数：0', '2013-04-16 03:26:01');
INSERT INTO `sys_errorlog` VALUES ('1281', 'M001', '2013-04-16 03:26:01', null, null, '当前内存使用量：1%', '2013-04-16 03:26:01');
INSERT INTO `sys_errorlog` VALUES ('1282', 'M001', '2013-04-17 11:44:33', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:44:33');
INSERT INTO `sys_errorlog` VALUES ('1283', 'M001', '2013-04-17 11:44:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:44:33');
INSERT INTO `sys_errorlog` VALUES ('1284', 'M001', '2013-04-17 11:44:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:44:33');
INSERT INTO `sys_errorlog` VALUES ('1285', 'M001', '2013-04-17 11:44:33', null, null, '当前Vstart的进程数：0', '2013-04-17 11:44:33');
INSERT INTO `sys_errorlog` VALUES ('1286', 'M001', '2013-04-17 11:44:33', null, null, '当前TransPro的进程数：0', '2013-04-17 11:44:33');
INSERT INTO `sys_errorlog` VALUES ('1287', 'M001', '2013-04-17 11:44:33', null, null, '当前内存使用量：1%', '2013-04-17 11:44:33');
INSERT INTO `sys_errorlog` VALUES ('1288', 'M001', '2013-04-17 11:45:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:45:01');
INSERT INTO `sys_errorlog` VALUES ('1289', 'M001', '2013-04-17 11:45:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:45:01');
INSERT INTO `sys_errorlog` VALUES ('1290', 'M001', '2013-04-17 11:45:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:45:01');
INSERT INTO `sys_errorlog` VALUES ('1291', 'M001', '2013-04-17 11:45:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:45:01');
INSERT INTO `sys_errorlog` VALUES ('1292', 'M001', '2013-04-17 11:45:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:45:01');
INSERT INTO `sys_errorlog` VALUES ('1293', 'M001', '2013-04-17 11:45:01', null, null, '当前内存使用量：1%', '2013-04-17 11:45:01');
INSERT INTO `sys_errorlog` VALUES ('1294', 'M001', '2013-04-17 11:45:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:45:31');
INSERT INTO `sys_errorlog` VALUES ('1295', 'M001', '2013-04-17 11:45:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:45:31');
INSERT INTO `sys_errorlog` VALUES ('1296', 'M001', '2013-04-17 11:45:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:45:31');
INSERT INTO `sys_errorlog` VALUES ('1297', 'M001', '2013-04-17 11:45:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:45:31');
INSERT INTO `sys_errorlog` VALUES ('1298', 'M001', '2013-04-17 11:45:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:45:31');
INSERT INTO `sys_errorlog` VALUES ('1299', 'M001', '2013-04-17 11:45:31', null, null, '当前内存使用量：1%', '2013-04-17 11:45:31');
INSERT INTO `sys_errorlog` VALUES ('1300', 'M001', '2013-04-17 11:46:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:46:01');
INSERT INTO `sys_errorlog` VALUES ('1301', 'M001', '2013-04-17 11:46:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:46:01');
INSERT INTO `sys_errorlog` VALUES ('1302', 'M001', '2013-04-17 11:46:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:46:01');
INSERT INTO `sys_errorlog` VALUES ('1303', 'M001', '2013-04-17 11:46:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:46:01');
INSERT INTO `sys_errorlog` VALUES ('1304', 'M001', '2013-04-17 11:46:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:46:01');
INSERT INTO `sys_errorlog` VALUES ('1305', 'M001', '2013-04-17 11:46:01', null, null, '当前内存使用量：1%', '2013-04-17 11:46:01');
INSERT INTO `sys_errorlog` VALUES ('1306', 'M001', '2013-04-17 11:46:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:46:31');
INSERT INTO `sys_errorlog` VALUES ('1307', 'M001', '2013-04-17 11:46:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:46:31');
INSERT INTO `sys_errorlog` VALUES ('1308', 'M001', '2013-04-17 11:46:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:46:31');
INSERT INTO `sys_errorlog` VALUES ('1309', 'M001', '2013-04-17 11:46:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:46:31');
INSERT INTO `sys_errorlog` VALUES ('1310', 'M001', '2013-04-17 11:46:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:46:31');
INSERT INTO `sys_errorlog` VALUES ('1311', 'M001', '2013-04-17 11:46:31', null, null, '当前内存使用量：1%', '2013-04-17 11:46:31');
INSERT INTO `sys_errorlog` VALUES ('1312', 'M001', '2013-04-17 11:47:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:47:01');
INSERT INTO `sys_errorlog` VALUES ('1313', 'M001', '2013-04-17 11:47:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:47:01');
INSERT INTO `sys_errorlog` VALUES ('1314', 'M001', '2013-04-17 11:47:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:47:01');
INSERT INTO `sys_errorlog` VALUES ('1315', 'M001', '2013-04-17 11:47:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:47:01');
INSERT INTO `sys_errorlog` VALUES ('1316', 'M001', '2013-04-17 11:47:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:47:01');
INSERT INTO `sys_errorlog` VALUES ('1317', 'M001', '2013-04-17 11:47:01', null, null, '当前内存使用量：1%', '2013-04-17 11:47:01');
INSERT INTO `sys_errorlog` VALUES ('1318', 'M001', '2013-04-17 11:47:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:47:31');
INSERT INTO `sys_errorlog` VALUES ('1319', 'M001', '2013-04-17 11:47:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:47:31');
INSERT INTO `sys_errorlog` VALUES ('1320', 'M001', '2013-04-17 11:47:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:47:31');
INSERT INTO `sys_errorlog` VALUES ('1321', 'M001', '2013-04-17 11:47:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:47:31');
INSERT INTO `sys_errorlog` VALUES ('1322', 'M001', '2013-04-17 11:47:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:47:31');
INSERT INTO `sys_errorlog` VALUES ('1323', 'M001', '2013-04-17 11:47:31', null, null, '当前内存使用量：1%', '2013-04-17 11:47:31');
INSERT INTO `sys_errorlog` VALUES ('1324', 'M001', '2013-04-17 11:48:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:48:01');
INSERT INTO `sys_errorlog` VALUES ('1325', 'M001', '2013-04-17 11:48:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:48:01');
INSERT INTO `sys_errorlog` VALUES ('1326', 'M001', '2013-04-17 11:48:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:48:01');
INSERT INTO `sys_errorlog` VALUES ('1327', 'M001', '2013-04-17 11:48:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:48:01');
INSERT INTO `sys_errorlog` VALUES ('1328', 'M001', '2013-04-17 11:48:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:48:01');
INSERT INTO `sys_errorlog` VALUES ('1329', 'M001', '2013-04-17 11:48:01', null, null, '当前内存使用量：1%', '2013-04-17 11:48:01');
INSERT INTO `sys_errorlog` VALUES ('1330', 'M001', '2013-04-17 11:48:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:48:31');
INSERT INTO `sys_errorlog` VALUES ('1331', 'M001', '2013-04-17 11:48:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:48:31');
INSERT INTO `sys_errorlog` VALUES ('1332', 'M001', '2013-04-17 11:48:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:48:31');
INSERT INTO `sys_errorlog` VALUES ('1333', 'M001', '2013-04-17 11:48:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:48:31');
INSERT INTO `sys_errorlog` VALUES ('1334', 'M001', '2013-04-17 11:48:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:48:31');
INSERT INTO `sys_errorlog` VALUES ('1335', 'M001', '2013-04-17 11:48:31', null, null, '当前内存使用量：1%', '2013-04-17 11:48:31');
INSERT INTO `sys_errorlog` VALUES ('1336', 'M001', '2013-04-17 11:49:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:49:01');
INSERT INTO `sys_errorlog` VALUES ('1337', 'M001', '2013-04-17 11:49:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:49:01');
INSERT INTO `sys_errorlog` VALUES ('1338', 'M001', '2013-04-17 11:49:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:49:01');
INSERT INTO `sys_errorlog` VALUES ('1339', 'M001', '2013-04-17 11:49:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:49:01');
INSERT INTO `sys_errorlog` VALUES ('1340', 'M001', '2013-04-17 11:49:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:49:01');
INSERT INTO `sys_errorlog` VALUES ('1341', 'M001', '2013-04-17 11:49:01', null, null, '当前内存使用量：1%', '2013-04-17 11:49:01');
INSERT INTO `sys_errorlog` VALUES ('1342', 'M001', '2013-04-17 11:49:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:49:31');
INSERT INTO `sys_errorlog` VALUES ('1343', 'M001', '2013-04-17 11:49:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:49:31');
INSERT INTO `sys_errorlog` VALUES ('1344', 'M001', '2013-04-17 11:49:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:49:31');
INSERT INTO `sys_errorlog` VALUES ('1345', 'M001', '2013-04-17 11:49:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:49:31');
INSERT INTO `sys_errorlog` VALUES ('1346', 'M001', '2013-04-17 11:49:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:49:31');
INSERT INTO `sys_errorlog` VALUES ('1347', 'M001', '2013-04-17 11:49:31', null, null, '当前内存使用量：1%', '2013-04-17 11:49:31');
INSERT INTO `sys_errorlog` VALUES ('1348', 'M001', '2013-04-17 11:50:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:50:01');
INSERT INTO `sys_errorlog` VALUES ('1349', 'M001', '2013-04-17 11:50:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:50:01');
INSERT INTO `sys_errorlog` VALUES ('1350', 'M001', '2013-04-17 11:50:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:50:01');
INSERT INTO `sys_errorlog` VALUES ('1351', 'M001', '2013-04-17 11:50:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:50:01');
INSERT INTO `sys_errorlog` VALUES ('1352', 'M001', '2013-04-17 11:50:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:50:01');
INSERT INTO `sys_errorlog` VALUES ('1353', 'M001', '2013-04-17 11:50:01', null, null, '当前内存使用量：1%', '2013-04-17 11:50:01');
INSERT INTO `sys_errorlog` VALUES ('1354', 'M001', '2013-04-17 11:50:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:50:31');
INSERT INTO `sys_errorlog` VALUES ('1355', 'M001', '2013-04-17 11:50:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:50:31');
INSERT INTO `sys_errorlog` VALUES ('1356', 'M001', '2013-04-17 11:50:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:50:31');
INSERT INTO `sys_errorlog` VALUES ('1357', 'M001', '2013-04-17 11:50:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:50:31');
INSERT INTO `sys_errorlog` VALUES ('1358', 'M001', '2013-04-17 11:50:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:50:31');
INSERT INTO `sys_errorlog` VALUES ('1359', 'M001', '2013-04-17 11:50:31', null, null, '当前内存使用量：1%', '2013-04-17 11:50:31');
INSERT INTO `sys_errorlog` VALUES ('1360', 'M001', '2013-04-17 11:51:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:51:01');
INSERT INTO `sys_errorlog` VALUES ('1361', 'M001', '2013-04-17 11:51:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:51:01');
INSERT INTO `sys_errorlog` VALUES ('1362', 'M001', '2013-04-17 11:51:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:51:01');
INSERT INTO `sys_errorlog` VALUES ('1363', 'M001', '2013-04-17 11:51:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:51:01');
INSERT INTO `sys_errorlog` VALUES ('1364', 'M001', '2013-04-17 11:51:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:51:01');
INSERT INTO `sys_errorlog` VALUES ('1365', 'M001', '2013-04-17 11:51:01', null, null, '当前内存使用量：1%', '2013-04-17 11:51:01');
INSERT INTO `sys_errorlog` VALUES ('1366', 'M001', '2013-04-17 11:51:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:51:31');
INSERT INTO `sys_errorlog` VALUES ('1367', 'M001', '2013-04-17 11:51:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:51:31');
INSERT INTO `sys_errorlog` VALUES ('1368', 'M001', '2013-04-17 11:51:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:51:31');
INSERT INTO `sys_errorlog` VALUES ('1369', 'M001', '2013-04-17 11:51:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:51:31');
INSERT INTO `sys_errorlog` VALUES ('1370', 'M001', '2013-04-17 11:51:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:51:31');
INSERT INTO `sys_errorlog` VALUES ('1371', 'M001', '2013-04-17 11:51:31', null, null, '当前内存使用量：1%', '2013-04-17 11:51:31');
INSERT INTO `sys_errorlog` VALUES ('1372', 'M001', '2013-04-17 11:52:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:52:01');
INSERT INTO `sys_errorlog` VALUES ('1373', 'M001', '2013-04-17 11:52:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:52:01');
INSERT INTO `sys_errorlog` VALUES ('1374', 'M001', '2013-04-17 11:52:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:52:01');
INSERT INTO `sys_errorlog` VALUES ('1375', 'M001', '2013-04-17 11:52:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:52:01');
INSERT INTO `sys_errorlog` VALUES ('1376', 'M001', '2013-04-17 11:52:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:52:01');
INSERT INTO `sys_errorlog` VALUES ('1377', 'M001', '2013-04-17 11:52:01', null, null, '当前内存使用量：1%', '2013-04-17 11:52:01');
INSERT INTO `sys_errorlog` VALUES ('1378', 'M001', '2013-04-17 11:52:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:52:31');
INSERT INTO `sys_errorlog` VALUES ('1379', 'M001', '2013-04-17 11:52:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:52:31');
INSERT INTO `sys_errorlog` VALUES ('1380', 'M001', '2013-04-17 11:52:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:52:31');
INSERT INTO `sys_errorlog` VALUES ('1381', 'M001', '2013-04-17 11:52:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:52:31');
INSERT INTO `sys_errorlog` VALUES ('1382', 'M001', '2013-04-17 11:52:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:52:31');
INSERT INTO `sys_errorlog` VALUES ('1383', 'M001', '2013-04-17 11:52:31', null, null, '当前内存使用量：1%', '2013-04-17 11:52:31');
INSERT INTO `sys_errorlog` VALUES ('1384', 'M001', '2013-04-17 11:53:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:53:01');
INSERT INTO `sys_errorlog` VALUES ('1385', 'M001', '2013-04-17 11:53:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:53:01');
INSERT INTO `sys_errorlog` VALUES ('1386', 'M001', '2013-04-17 11:53:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:53:01');
INSERT INTO `sys_errorlog` VALUES ('1387', 'M001', '2013-04-17 11:53:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:53:01');
INSERT INTO `sys_errorlog` VALUES ('1388', 'M001', '2013-04-17 11:53:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:53:01');
INSERT INTO `sys_errorlog` VALUES ('1389', 'M001', '2013-04-17 11:53:01', null, null, '当前内存使用量：1%', '2013-04-17 11:53:01');
INSERT INTO `sys_errorlog` VALUES ('1390', 'M001', '2013-04-17 11:53:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:53:31');
INSERT INTO `sys_errorlog` VALUES ('1391', 'M001', '2013-04-17 11:53:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:53:31');
INSERT INTO `sys_errorlog` VALUES ('1392', 'M001', '2013-04-17 11:53:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:53:31');
INSERT INTO `sys_errorlog` VALUES ('1393', 'M001', '2013-04-17 11:53:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:53:31');
INSERT INTO `sys_errorlog` VALUES ('1394', 'M001', '2013-04-17 11:53:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:53:31');
INSERT INTO `sys_errorlog` VALUES ('1395', 'M001', '2013-04-17 11:53:31', null, null, '当前内存使用量：1%', '2013-04-17 11:53:31');
INSERT INTO `sys_errorlog` VALUES ('1396', 'M001', '2013-04-17 11:54:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:54:01');
INSERT INTO `sys_errorlog` VALUES ('1397', 'M001', '2013-04-17 11:54:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:54:01');
INSERT INTO `sys_errorlog` VALUES ('1398', 'M001', '2013-04-17 11:54:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:54:01');
INSERT INTO `sys_errorlog` VALUES ('1399', 'M001', '2013-04-17 11:54:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:54:01');
INSERT INTO `sys_errorlog` VALUES ('1400', 'M001', '2013-04-17 11:54:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:54:01');
INSERT INTO `sys_errorlog` VALUES ('1401', 'M001', '2013-04-17 11:54:01', null, null, '当前内存使用量：1%', '2013-04-17 11:54:01');
INSERT INTO `sys_errorlog` VALUES ('1402', 'M001', '2013-04-17 11:54:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:54:31');
INSERT INTO `sys_errorlog` VALUES ('1403', 'M001', '2013-04-17 11:54:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:54:31');
INSERT INTO `sys_errorlog` VALUES ('1404', 'M001', '2013-04-17 11:54:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:54:31');
INSERT INTO `sys_errorlog` VALUES ('1405', 'M001', '2013-04-17 11:54:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:54:31');
INSERT INTO `sys_errorlog` VALUES ('1406', 'M001', '2013-04-17 11:54:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:54:31');
INSERT INTO `sys_errorlog` VALUES ('1407', 'M001', '2013-04-17 11:54:31', null, null, '当前内存使用量：1%', '2013-04-17 11:54:31');
INSERT INTO `sys_errorlog` VALUES ('1408', 'M001', '2013-04-17 11:55:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:55:01');
INSERT INTO `sys_errorlog` VALUES ('1409', 'M001', '2013-04-17 11:55:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:55:01');
INSERT INTO `sys_errorlog` VALUES ('1410', 'M001', '2013-04-17 11:55:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:55:01');
INSERT INTO `sys_errorlog` VALUES ('1411', 'M001', '2013-04-17 11:55:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:55:01');
INSERT INTO `sys_errorlog` VALUES ('1412', 'M001', '2013-04-17 11:55:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:55:01');
INSERT INTO `sys_errorlog` VALUES ('1413', 'M001', '2013-04-17 11:55:01', null, null, '当前内存使用量：1%', '2013-04-17 11:55:01');
INSERT INTO `sys_errorlog` VALUES ('1414', 'M001', '2013-04-17 11:55:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:55:31');
INSERT INTO `sys_errorlog` VALUES ('1415', 'M001', '2013-04-17 11:55:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:55:31');
INSERT INTO `sys_errorlog` VALUES ('1416', 'M001', '2013-04-17 11:55:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:55:31');
INSERT INTO `sys_errorlog` VALUES ('1417', 'M001', '2013-04-17 11:55:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:55:31');
INSERT INTO `sys_errorlog` VALUES ('1418', 'M001', '2013-04-17 11:55:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:55:31');
INSERT INTO `sys_errorlog` VALUES ('1419', 'M001', '2013-04-17 11:55:31', null, null, '当前内存使用量：1%', '2013-04-17 11:55:31');
INSERT INTO `sys_errorlog` VALUES ('1420', 'M001', '2013-04-17 11:56:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:56:01');
INSERT INTO `sys_errorlog` VALUES ('1421', 'M001', '2013-04-17 11:56:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:56:01');
INSERT INTO `sys_errorlog` VALUES ('1422', 'M001', '2013-04-17 11:56:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:56:01');
INSERT INTO `sys_errorlog` VALUES ('1423', 'M001', '2013-04-17 11:56:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:56:01');
INSERT INTO `sys_errorlog` VALUES ('1424', 'M001', '2013-04-17 11:56:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:56:01');
INSERT INTO `sys_errorlog` VALUES ('1425', 'M001', '2013-04-17 11:56:01', null, null, '当前内存使用量：1%', '2013-04-17 11:56:01');
INSERT INTO `sys_errorlog` VALUES ('1426', 'M001', '2013-04-17 11:56:32', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:56:32');
INSERT INTO `sys_errorlog` VALUES ('1427', 'M001', '2013-04-17 11:56:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:56:32');
INSERT INTO `sys_errorlog` VALUES ('1428', 'M001', '2013-04-17 11:56:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:56:32');
INSERT INTO `sys_errorlog` VALUES ('1429', 'M001', '2013-04-17 11:56:32', null, null, '当前Vstart的进程数：0', '2013-04-17 11:56:32');
INSERT INTO `sys_errorlog` VALUES ('1430', 'M001', '2013-04-17 11:56:32', null, null, '当前TransPro的进程数：0', '2013-04-17 11:56:32');
INSERT INTO `sys_errorlog` VALUES ('1431', 'M001', '2013-04-17 11:56:32', null, null, '当前内存使用量：1%', '2013-04-17 11:56:32');
INSERT INTO `sys_errorlog` VALUES ('1432', 'M001', '2013-04-17 11:57:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:57:01');
INSERT INTO `sys_errorlog` VALUES ('1433', 'M001', '2013-04-17 11:57:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:57:01');
INSERT INTO `sys_errorlog` VALUES ('1434', 'M001', '2013-04-17 11:57:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:57:01');
INSERT INTO `sys_errorlog` VALUES ('1435', 'M001', '2013-04-17 11:57:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:57:01');
INSERT INTO `sys_errorlog` VALUES ('1436', 'M001', '2013-04-17 11:57:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:57:01');
INSERT INTO `sys_errorlog` VALUES ('1437', 'M001', '2013-04-17 11:57:01', null, null, '当前内存使用量：1%', '2013-04-17 11:57:01');
INSERT INTO `sys_errorlog` VALUES ('1438', 'M001', '2013-04-17 11:57:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:57:31');
INSERT INTO `sys_errorlog` VALUES ('1439', 'M001', '2013-04-17 11:57:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:57:31');
INSERT INTO `sys_errorlog` VALUES ('1440', 'M001', '2013-04-17 11:57:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:57:31');
INSERT INTO `sys_errorlog` VALUES ('1441', 'M001', '2013-04-17 11:57:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:57:31');
INSERT INTO `sys_errorlog` VALUES ('1442', 'M001', '2013-04-17 11:57:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:57:31');
INSERT INTO `sys_errorlog` VALUES ('1443', 'M001', '2013-04-17 11:57:31', null, null, '当前内存使用量：1%', '2013-04-17 11:57:31');
INSERT INTO `sys_errorlog` VALUES ('1444', 'M001', '2013-04-17 11:58:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:58:01');
INSERT INTO `sys_errorlog` VALUES ('1445', 'M001', '2013-04-17 11:58:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:58:01');
INSERT INTO `sys_errorlog` VALUES ('1446', 'M001', '2013-04-17 11:58:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:58:01');
INSERT INTO `sys_errorlog` VALUES ('1447', 'M001', '2013-04-17 11:58:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:58:01');
INSERT INTO `sys_errorlog` VALUES ('1448', 'M001', '2013-04-17 11:58:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:58:01');
INSERT INTO `sys_errorlog` VALUES ('1449', 'M001', '2013-04-17 11:58:01', null, null, '当前内存使用量：1%', '2013-04-17 11:58:01');
INSERT INTO `sys_errorlog` VALUES ('1450', 'M001', '2013-04-17 11:58:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:58:31');
INSERT INTO `sys_errorlog` VALUES ('1451', 'M001', '2013-04-17 11:58:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:58:31');
INSERT INTO `sys_errorlog` VALUES ('1452', 'M001', '2013-04-17 11:58:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:58:31');
INSERT INTO `sys_errorlog` VALUES ('1453', 'M001', '2013-04-17 11:58:31', null, null, '当前Vstart的进程数：0', '2013-04-17 11:58:31');
INSERT INTO `sys_errorlog` VALUES ('1454', 'M001', '2013-04-17 11:58:31', null, null, '当前TransPro的进程数：0', '2013-04-17 11:58:31');
INSERT INTO `sys_errorlog` VALUES ('1455', 'M001', '2013-04-17 11:58:31', null, null, '当前内存使用量：1%', '2013-04-17 11:58:31');
INSERT INTO `sys_errorlog` VALUES ('1456', 'M001', '2013-04-17 11:59:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:59:01');
INSERT INTO `sys_errorlog` VALUES ('1457', 'M001', '2013-04-17 11:59:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:59:01');
INSERT INTO `sys_errorlog` VALUES ('1458', 'M001', '2013-04-17 11:59:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:59:01');
INSERT INTO `sys_errorlog` VALUES ('1459', 'M001', '2013-04-17 11:59:01', null, null, '当前Vstart的进程数：0', '2013-04-17 11:59:01');
INSERT INTO `sys_errorlog` VALUES ('1460', 'M001', '2013-04-17 11:59:01', null, null, '当前TransPro的进程数：0', '2013-04-17 11:59:01');
INSERT INTO `sys_errorlog` VALUES ('1461', 'M001', '2013-04-17 11:59:01', null, null, '当前内存使用量：1%', '2013-04-17 11:59:01');
INSERT INTO `sys_errorlog` VALUES ('1462', 'M001', '2013-04-17 11:59:32', null, null, '当前recvmbfe的进程数：0', '2013-04-17 11:59:32');
INSERT INTO `sys_errorlog` VALUES ('1463', 'M001', '2013-04-17 11:59:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 11:59:32');
INSERT INTO `sys_errorlog` VALUES ('1464', 'M001', '2013-04-17 11:59:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 11:59:32');
INSERT INTO `sys_errorlog` VALUES ('1465', 'M001', '2013-04-17 11:59:32', null, null, '当前Vstart的进程数：0', '2013-04-17 11:59:32');
INSERT INTO `sys_errorlog` VALUES ('1466', 'M001', '2013-04-17 11:59:32', null, null, '当前TransPro的进程数：0', '2013-04-17 11:59:32');
INSERT INTO `sys_errorlog` VALUES ('1467', 'M001', '2013-04-17 11:59:32', null, null, '当前内存使用量：1%', '2013-04-17 11:59:32');
INSERT INTO `sys_errorlog` VALUES ('1468', 'M001', '2013-04-17 12:00:02', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:00:02');
INSERT INTO `sys_errorlog` VALUES ('1469', 'M001', '2013-04-17 12:00:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:00:02');
INSERT INTO `sys_errorlog` VALUES ('1470', 'M001', '2013-04-17 12:00:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:00:02');
INSERT INTO `sys_errorlog` VALUES ('1471', 'M001', '2013-04-17 12:00:02', null, null, '当前Vstart的进程数：0', '2013-04-17 12:00:02');
INSERT INTO `sys_errorlog` VALUES ('1472', 'M001', '2013-04-17 12:00:02', null, null, '当前TransPro的进程数：0', '2013-04-17 12:00:02');
INSERT INTO `sys_errorlog` VALUES ('1473', 'M001', '2013-04-17 12:00:02', null, null, '当前内存使用量：1%', '2013-04-17 12:00:02');
INSERT INTO `sys_errorlog` VALUES ('1474', 'M001', '2013-04-17 12:00:33', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:00:33');
INSERT INTO `sys_errorlog` VALUES ('1475', 'M001', '2013-04-17 12:00:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:00:33');
INSERT INTO `sys_errorlog` VALUES ('1476', 'M001', '2013-04-17 12:00:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:00:33');
INSERT INTO `sys_errorlog` VALUES ('1477', 'M001', '2013-04-17 12:00:33', null, null, '当前Vstart的进程数：0', '2013-04-17 12:00:33');
INSERT INTO `sys_errorlog` VALUES ('1478', 'M001', '2013-04-17 12:00:33', null, null, '当前TransPro的进程数：0', '2013-04-17 12:00:33');
INSERT INTO `sys_errorlog` VALUES ('1479', 'M001', '2013-04-17 12:00:33', null, null, '当前内存使用量：1%', '2013-04-17 12:00:33');
INSERT INTO `sys_errorlog` VALUES ('1480', 'M001', '2013-04-17 12:01:02', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:01:02');
INSERT INTO `sys_errorlog` VALUES ('1481', 'M001', '2013-04-17 12:01:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:01:02');
INSERT INTO `sys_errorlog` VALUES ('1482', 'M001', '2013-04-17 12:01:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:01:02');
INSERT INTO `sys_errorlog` VALUES ('1483', 'M001', '2013-04-17 12:01:02', null, null, '当前Vstart的进程数：0', '2013-04-17 12:01:02');
INSERT INTO `sys_errorlog` VALUES ('1484', 'M001', '2013-04-17 12:01:02', null, null, '当前TransPro的进程数：0', '2013-04-17 12:01:02');
INSERT INTO `sys_errorlog` VALUES ('1485', 'M001', '2013-04-17 12:01:02', null, null, '当前内存使用量：1%', '2013-04-17 12:01:02');
INSERT INTO `sys_errorlog` VALUES ('1486', 'M001', '2013-04-17 12:01:33', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:01:33');
INSERT INTO `sys_errorlog` VALUES ('1487', 'M001', '2013-04-17 12:01:33', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:01:33');
INSERT INTO `sys_errorlog` VALUES ('1488', 'M001', '2013-04-17 12:01:33', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:01:33');
INSERT INTO `sys_errorlog` VALUES ('1489', 'M001', '2013-04-17 12:01:33', null, null, '当前Vstart的进程数：0', '2013-04-17 12:01:33');
INSERT INTO `sys_errorlog` VALUES ('1490', 'M001', '2013-04-17 12:01:33', null, null, '当前TransPro的进程数：0', '2013-04-17 12:01:33');
INSERT INTO `sys_errorlog` VALUES ('1491', 'M001', '2013-04-17 12:01:33', null, null, '当前内存使用量：1%', '2013-04-17 12:01:33');
INSERT INTO `sys_errorlog` VALUES ('1492', 'M001', '2013-04-17 12:02:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:02:01');
INSERT INTO `sys_errorlog` VALUES ('1493', 'M001', '2013-04-17 12:02:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:02:01');
INSERT INTO `sys_errorlog` VALUES ('1494', 'M001', '2013-04-17 12:02:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:02:01');
INSERT INTO `sys_errorlog` VALUES ('1495', 'M001', '2013-04-17 12:02:01', null, null, '当前Vstart的进程数：0', '2013-04-17 12:02:01');
INSERT INTO `sys_errorlog` VALUES ('1496', 'M001', '2013-04-17 12:02:01', null, null, '当前TransPro的进程数：0', '2013-04-17 12:02:01');
INSERT INTO `sys_errorlog` VALUES ('1497', 'M001', '2013-04-17 12:02:01', null, null, '当前内存使用量：1%', '2013-04-17 12:02:01');
INSERT INTO `sys_errorlog` VALUES ('1498', 'M001', '2013-04-17 12:02:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:02:31');
INSERT INTO `sys_errorlog` VALUES ('1499', 'M001', '2013-04-17 12:02:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:02:31');
INSERT INTO `sys_errorlog` VALUES ('1500', 'M001', '2013-04-17 12:02:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:02:31');
INSERT INTO `sys_errorlog` VALUES ('1501', 'M001', '2013-04-17 12:02:31', null, null, '当前Vstart的进程数：0', '2013-04-17 12:02:31');
INSERT INTO `sys_errorlog` VALUES ('1502', 'M001', '2013-04-17 12:02:31', null, null, '当前TransPro的进程数：0', '2013-04-17 12:02:31');
INSERT INTO `sys_errorlog` VALUES ('1503', 'M001', '2013-04-17 12:02:31', null, null, '当前内存使用量：1%', '2013-04-17 12:02:31');
INSERT INTO `sys_errorlog` VALUES ('1504', 'M001', '2013-04-17 12:03:02', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:03:02');
INSERT INTO `sys_errorlog` VALUES ('1505', 'M001', '2013-04-17 12:03:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:03:02');
INSERT INTO `sys_errorlog` VALUES ('1506', 'M001', '2013-04-17 12:03:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:03:02');
INSERT INTO `sys_errorlog` VALUES ('1507', 'M001', '2013-04-17 12:03:02', null, null, '当前Vstart的进程数：0', '2013-04-17 12:03:02');
INSERT INTO `sys_errorlog` VALUES ('1508', 'M001', '2013-04-17 12:03:02', null, null, '当前TransPro的进程数：0', '2013-04-17 12:03:02');
INSERT INTO `sys_errorlog` VALUES ('1509', 'M001', '2013-04-17 12:03:02', null, null, '当前内存使用量：1%', '2013-04-17 12:03:02');
INSERT INTO `sys_errorlog` VALUES ('1510', 'M001', '2013-04-17 12:03:32', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:03:32');
INSERT INTO `sys_errorlog` VALUES ('1511', 'M001', '2013-04-17 12:03:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:03:32');
INSERT INTO `sys_errorlog` VALUES ('1512', 'M001', '2013-04-17 12:03:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:03:32');
INSERT INTO `sys_errorlog` VALUES ('1513', 'M001', '2013-04-17 12:03:32', null, null, '当前Vstart的进程数：0', '2013-04-17 12:03:32');
INSERT INTO `sys_errorlog` VALUES ('1514', 'M001', '2013-04-17 12:03:32', null, null, '当前TransPro的进程数：0', '2013-04-17 12:03:32');
INSERT INTO `sys_errorlog` VALUES ('1515', 'M001', '2013-04-17 12:03:32', null, null, '当前内存使用量：1%', '2013-04-17 12:03:32');
INSERT INTO `sys_errorlog` VALUES ('1516', 'M001', '2013-04-17 12:04:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:04:01');
INSERT INTO `sys_errorlog` VALUES ('1517', 'M001', '2013-04-17 12:04:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:04:01');
INSERT INTO `sys_errorlog` VALUES ('1518', 'M001', '2013-04-17 12:04:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:04:01');
INSERT INTO `sys_errorlog` VALUES ('1519', 'M001', '2013-04-17 12:04:01', null, null, '当前Vstart的进程数：0', '2013-04-17 12:04:01');
INSERT INTO `sys_errorlog` VALUES ('1520', 'M001', '2013-04-17 12:04:01', null, null, '当前TransPro的进程数：0', '2013-04-17 12:04:01');
INSERT INTO `sys_errorlog` VALUES ('1521', 'M001', '2013-04-17 12:04:01', null, null, '当前内存使用量：1%', '2013-04-17 12:04:01');
INSERT INTO `sys_errorlog` VALUES ('1522', 'M001', '2013-04-17 12:04:32', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:04:32');
INSERT INTO `sys_errorlog` VALUES ('1523', 'M001', '2013-04-17 12:04:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:04:32');
INSERT INTO `sys_errorlog` VALUES ('1524', 'M001', '2013-04-17 12:04:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:04:32');
INSERT INTO `sys_errorlog` VALUES ('1525', 'M001', '2013-04-17 12:04:32', null, null, '当前Vstart的进程数：0', '2013-04-17 12:04:32');
INSERT INTO `sys_errorlog` VALUES ('1526', 'M001', '2013-04-17 12:04:32', null, null, '当前TransPro的进程数：0', '2013-04-17 12:04:32');
INSERT INTO `sys_errorlog` VALUES ('1527', 'M001', '2013-04-17 12:04:32', null, null, '当前内存使用量：1%', '2013-04-17 12:04:32');
INSERT INTO `sys_errorlog` VALUES ('1528', 'M001', '2013-04-17 12:05:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:05:01');
INSERT INTO `sys_errorlog` VALUES ('1529', 'M001', '2013-04-17 12:05:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:05:01');
INSERT INTO `sys_errorlog` VALUES ('1530', 'M001', '2013-04-17 12:05:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:05:01');
INSERT INTO `sys_errorlog` VALUES ('1531', 'M001', '2013-04-17 12:05:01', null, null, '当前Vstart的进程数：0', '2013-04-17 12:05:01');
INSERT INTO `sys_errorlog` VALUES ('1532', 'M001', '2013-04-17 12:05:01', null, null, '当前TransPro的进程数：0', '2013-04-17 12:05:01');
INSERT INTO `sys_errorlog` VALUES ('1533', 'M001', '2013-04-17 12:05:01', null, null, '当前内存使用量：1%', '2013-04-17 12:05:01');
INSERT INTO `sys_errorlog` VALUES ('1534', 'M001', '2013-04-17 12:05:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:05:31');
INSERT INTO `sys_errorlog` VALUES ('1535', 'M001', '2013-04-17 12:05:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:05:31');
INSERT INTO `sys_errorlog` VALUES ('1536', 'M001', '2013-04-17 12:05:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:05:31');
INSERT INTO `sys_errorlog` VALUES ('1537', 'M001', '2013-04-17 12:05:31', null, null, '当前Vstart的进程数：0', '2013-04-17 12:05:31');
INSERT INTO `sys_errorlog` VALUES ('1538', 'M001', '2013-04-17 12:05:31', null, null, '当前TransPro的进程数：0', '2013-04-17 12:05:31');
INSERT INTO `sys_errorlog` VALUES ('1539', 'M001', '2013-04-17 12:05:31', null, null, '当前内存使用量：1%', '2013-04-17 12:05:31');
INSERT INTO `sys_errorlog` VALUES ('1540', 'M001', '2013-04-17 12:06:02', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:06:02');
INSERT INTO `sys_errorlog` VALUES ('1541', 'M001', '2013-04-17 12:06:02', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:06:02');
INSERT INTO `sys_errorlog` VALUES ('1542', 'M001', '2013-04-17 12:06:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:06:02');
INSERT INTO `sys_errorlog` VALUES ('1543', 'M001', '2013-04-17 12:06:02', null, null, '当前Vstart的进程数：0', '2013-04-17 12:06:02');
INSERT INTO `sys_errorlog` VALUES ('1544', 'M001', '2013-04-17 12:06:02', null, null, '当前TransPro的进程数：0', '2013-04-17 12:06:02');
INSERT INTO `sys_errorlog` VALUES ('1545', 'M001', '2013-04-17 12:06:02', null, null, '当前内存使用量：1%', '2013-04-17 12:06:02');
INSERT INTO `sys_errorlog` VALUES ('1546', 'M001', '2013-04-17 12:06:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:06:31');
INSERT INTO `sys_errorlog` VALUES ('1547', 'M001', '2013-04-17 12:06:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:06:31');
INSERT INTO `sys_errorlog` VALUES ('1548', 'M001', '2013-04-17 12:06:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:06:31');
INSERT INTO `sys_errorlog` VALUES ('1549', 'M001', '2013-04-17 12:06:31', null, null, '当前Vstart的进程数：0', '2013-04-17 12:06:31');
INSERT INTO `sys_errorlog` VALUES ('1550', 'M001', '2013-04-17 12:06:31', null, null, '当前TransPro的进程数：0', '2013-04-17 12:06:31');
INSERT INTO `sys_errorlog` VALUES ('1551', 'M001', '2013-04-17 12:06:31', null, null, '当前内存使用量：1%', '2013-04-17 12:06:31');
INSERT INTO `sys_errorlog` VALUES ('1552', 'M001', '2013-04-17 12:07:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:07:01');
INSERT INTO `sys_errorlog` VALUES ('1553', 'M001', '2013-04-17 12:07:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:07:01');
INSERT INTO `sys_errorlog` VALUES ('1554', 'M001', '2013-04-17 12:07:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:07:01');
INSERT INTO `sys_errorlog` VALUES ('1555', 'M001', '2013-04-17 12:07:01', null, null, '当前Vstart的进程数：0', '2013-04-17 12:07:01');
INSERT INTO `sys_errorlog` VALUES ('1556', 'M001', '2013-04-17 12:07:01', null, null, '当前TransPro的进程数：0', '2013-04-17 12:07:01');
INSERT INTO `sys_errorlog` VALUES ('1557', 'M001', '2013-04-17 12:07:01', null, null, '当前内存使用量：1%', '2013-04-17 12:07:01');
INSERT INTO `sys_errorlog` VALUES ('1558', 'M001', '2013-04-17 12:07:32', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:07:32');
INSERT INTO `sys_errorlog` VALUES ('1559', 'M001', '2013-04-17 12:07:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:07:32');
INSERT INTO `sys_errorlog` VALUES ('1560', 'M001', '2013-04-17 12:07:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:07:32');
INSERT INTO `sys_errorlog` VALUES ('1561', 'M001', '2013-04-17 12:07:32', null, null, '当前Vstart的进程数：0', '2013-04-17 12:07:32');
INSERT INTO `sys_errorlog` VALUES ('1562', 'M001', '2013-04-17 12:07:32', null, null, '当前TransPro的进程数：0', '2013-04-17 12:07:32');
INSERT INTO `sys_errorlog` VALUES ('1563', 'M001', '2013-04-17 12:07:32', null, null, '当前内存使用量：1%', '2013-04-17 12:07:32');
INSERT INTO `sys_errorlog` VALUES ('1564', 'M001', '2013-04-17 12:08:01', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:08:01');
INSERT INTO `sys_errorlog` VALUES ('1565', 'M001', '2013-04-17 12:08:01', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:08:01');
INSERT INTO `sys_errorlog` VALUES ('1566', 'M001', '2013-04-17 12:08:01', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:08:01');
INSERT INTO `sys_errorlog` VALUES ('1567', 'M001', '2013-04-17 12:08:01', null, null, '当前Vstart的进程数：0', '2013-04-17 12:08:01');
INSERT INTO `sys_errorlog` VALUES ('1568', 'M001', '2013-04-17 12:08:01', null, null, '当前TransPro的进程数：0', '2013-04-17 12:08:01');
INSERT INTO `sys_errorlog` VALUES ('1569', 'M001', '2013-04-17 12:08:01', null, null, '当前内存使用量：1%', '2013-04-17 12:08:01');
INSERT INTO `sys_errorlog` VALUES ('1570', 'M001', '2013-04-17 12:08:31', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:08:31');
INSERT INTO `sys_errorlog` VALUES ('1571', 'M001', '2013-04-17 12:08:31', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:08:31');
INSERT INTO `sys_errorlog` VALUES ('1572', 'M001', '2013-04-17 12:08:31', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:08:31');
INSERT INTO `sys_errorlog` VALUES ('1573', 'M001', '2013-04-17 12:08:31', null, null, '当前Vstart的进程数：0', '2013-04-17 12:08:31');
INSERT INTO `sys_errorlog` VALUES ('1574', 'M001', '2013-04-17 12:08:31', null, null, '当前TransPro的进程数：0', '2013-04-17 12:08:31');
INSERT INTO `sys_errorlog` VALUES ('1575', 'M001', '2013-04-17 12:08:31', null, null, '当前内存使用量：1%', '2013-04-17 12:08:31');
INSERT INTO `sys_errorlog` VALUES ('1576', 'M001', '2013-04-17 12:09:02', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:09:02');
INSERT INTO `sys_errorlog` VALUES ('1577', 'M001', '2013-04-17 12:09:02', 'admin', '2013-05-07 13:21:10', '当前mbfeprogram的进程数：0', '2013-04-17 12:09:02');
INSERT INTO `sys_errorlog` VALUES ('1578', 'M001', '2013-04-17 12:09:02', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:09:02');
INSERT INTO `sys_errorlog` VALUES ('1579', 'M001', '2013-04-17 12:09:02', null, null, '当前Vstart的进程数：0', '2013-04-17 12:09:02');
INSERT INTO `sys_errorlog` VALUES ('1580', 'M001', '2013-04-17 12:09:02', null, null, '当前TransPro的进程数：0', '2013-04-17 12:09:02');
INSERT INTO `sys_errorlog` VALUES ('1581', 'M001', '2013-04-17 12:09:02', null, null, '当前内存使用量：1%', '2013-04-17 12:09:02');
INSERT INTO `sys_errorlog` VALUES ('1582', 'M001', '2013-04-17 12:09:32', null, null, '当前recvmbfe的进程数：0', '2013-04-17 12:09:32');
INSERT INTO `sys_errorlog` VALUES ('1583', 'M001', '2013-04-17 12:09:32', null, null, '当前mbfeprogram的进程数：0', '2013-04-17 12:09:32');
INSERT INTO `sys_errorlog` VALUES ('1584', 'M001', '2013-04-17 12:09:32', null, null, '当前BEPSMBFE的进程数：0', '2013-04-17 12:09:32');
INSERT INTO `sys_errorlog` VALUES ('1585', 'M001', '2013-04-17 12:09:32', null, null, '当前Vstart的进程数：0', '2013-04-17 12:09:32');
INSERT INTO `sys_errorlog` VALUES ('1586', 'M001', '2013-04-17 12:09:32', null, null, '当前TransPro的进程数：0', '2013-04-17 12:09:32');
INSERT INTO `sys_errorlog` VALUES ('1587', 'M001', '2013-04-17 12:09:32', null, null, '当前内存使用量：1%', '2013-04-17 12:09:32');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '系统管理员/admin 于 2011-04-14 23:46:29 退出系统！', '2011-04-14 23:46:00', '1');
INSERT INTO `sys_log` VALUES ('2', '系统管理员/admin 于 2011-04-14 23:49:43 退出系统！', '2011-04-14 23:49:00', '1');
INSERT INTO `sys_log` VALUES ('3', '系统管理员修改资源：系统管理,日期：Thu Apr 14 23:50:27 CST 2011', '2011-04-14 23:50:00', '1');
INSERT INTO `sys_log` VALUES ('4', '系统管理员/admin 于 2011-04-14 23:50:36 退出系统！', '2011-04-14 23:50:00', '1');
INSERT INTO `sys_log` VALUES ('5', '系统管理员/admin 于 2011-04-14 23:53:24 退出系统！', '2011-04-14 23:53:00', '1');
INSERT INTO `sys_log` VALUES ('6', '系统管理员添加数据字典：组件,日期：Thu Apr 14 23:54:59 CST 2011', '2011-04-14 23:54:00', '1');
INSERT INTO `sys_log` VALUES ('7', '系统管理员修改数据字典：COMPONENT,日期：Thu Apr 14 23:55:16 CST 2011', '2011-04-14 23:55:00', '1');
INSERT INTO `sys_log` VALUES ('8', '系统管理员/admin 于 2011-04-14 23:55:24 退出系统！', '2011-04-14 23:55:00', '1');
INSERT INTO `sys_log` VALUES ('9', '系统管理员添加数据字典：FUNCTION,日期：Thu Apr 14 23:56:22 CST 2011', '2011-04-14 23:56:00', '1');
INSERT INTO `sys_log` VALUES ('10', '系统管理员修改资源：数据字典,日期：Fri Apr 15 00:03:16 CST 2011', '2011-04-15 00:03:00', '1');
INSERT INTO `sys_log` VALUES ('11', '系统管理员修改资源：数据字典,日期：Fri Apr 15 00:03:19 CST 2011', '2011-04-15 00:03:00', '1');
INSERT INTO `sys_log` VALUES ('21', '系统管理员/admin 于 2011-04-15 20:16:33 退出系统！', '2011-04-15 20:16:00', '1');
INSERT INTO `sys_log` VALUES ('22', '系统管理员/admin 于 2011-04-15 20:16:55 退出系统！', '2011-04-15 20:16:00', '1');
INSERT INTO `sys_log` VALUES ('23', '系统管理员/admin 于 2000-04-15 20:33:56 退出系统！', '2000-04-15 20:33:00', '1');
INSERT INTO `sys_log` VALUES ('24', '系统管理员/admin 于 2000-04-15 20:34:20 退出系统！', '2000-04-15 20:34:00', '1');
INSERT INTO `sys_log` VALUES ('25', '系统管理员/admin 于 2000-04-15 21:06:36 退出系统！', '2000-04-15 21:06:00', '1');
INSERT INTO `sys_log` VALUES ('26', '系统管理员/admin 于 2000-04-15 21:10:23 退出系统！', '2000-04-15 21:10:00', '1');
INSERT INTO `sys_log` VALUES ('27', '系统管理员/admin 于 2000-04-15 21:11:06 退出系统！', '2000-04-15 21:11:00', '1');
INSERT INTO `sys_log` VALUES ('28', '系统管理员/admin 于 2000-04-15 21:12:24 退出系统！', '2000-04-15 21:12:00', '1');
INSERT INTO `sys_log` VALUES ('29', '系统管理员/admin 于 2000-04-15 21:13:35 退出系统！', '2000-04-15 21:13:00', '1');
INSERT INTO `sys_log` VALUES ('30', '系统管理员/admin 于 2000-04-15 21:28:21 退出系统！', '2000-04-15 21:28:00', '1');
INSERT INTO `sys_log` VALUES ('31', '系统管理员/admin 于 2000-04-15 21:29:22 退出系统！', '2000-04-15 21:29:00', '1');
INSERT INTO `sys_log` VALUES ('32', '系统管理员/admin 于 2000-04-15 21:29:35 退出系统！', '2000-04-15 21:29:00', '1');
INSERT INTO `sys_log` VALUES ('33', '系统管理员/admin 于 2000-04-15 21:36:41 退出系统！', '2000-04-15 21:36:00', '1');
INSERT INTO `sys_log` VALUES ('34', '系统管理员/admin 于 2000-04-15 21:56:38 退出系统！', '2000-04-15 21:56:00', '1');
INSERT INTO `sys_log` VALUES ('35', '系统管理员/admin 于 2000-04-15 21:57:04 退出系统！', '2000-04-15 21:57:00', '1');
INSERT INTO `sys_log` VALUES ('36', '系统管理员/admin 于 2000-04-15 22:03:11 退出系统！', '2000-04-15 22:03:00', '1');
INSERT INTO `sys_log` VALUES ('37', '系统管理员/admin 于 2000-04-15 22:04:37 退出系统！', '2000-04-15 22:04:00', '1');
INSERT INTO `sys_log` VALUES ('38', '系统管理员/admin 于 2000-04-15 22:05:13 退出系统！', '2000-04-15 22:05:00', '1');
INSERT INTO `sys_log` VALUES ('39', '系统管理员/admin 于 2000-04-15 22:05:32 退出系统！', '2000-04-15 22:05:00', '1');
INSERT INTO `sys_log` VALUES ('40', '系统管理员/admin 于 2000-04-15 22:06:44 退出系统！', '2000-04-15 22:06:00', '1');
INSERT INTO `sys_log` VALUES ('41', '系统管理员/admin 于 2000-04-15 22:06:57 退出系统！', '2000-04-15 22:06:00', '1');
INSERT INTO `sys_log` VALUES ('42', '系统管理员修改资源：数据字典,日期：Sat Apr 15 22:07:32 CST 2000', '2000-04-15 22:07:00', '1');
INSERT INTO `sys_log` VALUES ('43', '系统管理员修改资源：系统管理,日期：Sat Apr 15 22:07:56 CST 2000', '2000-04-15 22:07:00', '1');
INSERT INTO `sys_log` VALUES ('44', '系统管理员修改资源：系统管理,日期：Sat Apr 15 22:09:03 CST 2000', '2000-04-15 22:09:00', '1');
INSERT INTO `sys_log` VALUES ('45', '系统管理员修改资源：系统管理,日期：Sat Apr 15 22:09:06 CST 2000', '2000-04-15 22:09:00', '1');
INSERT INTO `sys_log` VALUES ('46', '系统管理员修改数据字典：FUNCTION,日期：Sat Apr 15 22:09:13 CST 2000', '2000-04-15 22:09:00', '1');
INSERT INTO `sys_log` VALUES ('47', '系统管理员/admin 于 2000-04-15 22:18:14 退出系统！', '2000-04-15 22:18:00', '1');
INSERT INTO `sys_log` VALUES ('48', '系统管理员修改资源：数据字典,日期：Sat Apr 15 22:18:28 CST 2000', '2000-04-15 22:18:00', '1');
INSERT INTO `sys_log` VALUES ('49', '系统管理员修改资源：系统管理,日期：Sat Apr 15 22:18:30 CST 2000', '2000-04-15 22:18:00', '1');
INSERT INTO `sys_log` VALUES ('50', '系统管理员/admin 于 2000-04-15 22:18:40 退出系统！', '2000-04-15 22:18:00', '1');
INSERT INTO `sys_log` VALUES ('51', '系统管理员/admin 于 2000-04-15 22:22:39 退出系统！', '2000-04-15 22:22:00', '1');
INSERT INTO `sys_log` VALUES ('52', '系统管理员/admin 于 2011-04-15 22:33:47 退出系统！', '2011-04-15 22:33:00', '1');
INSERT INTO `sys_log` VALUES ('61', '系统管理员/admin 于 2011-04-17 10:26:11 退出系统！', '2011-04-17 10:26:00', '1');
INSERT INTO `sys_log` VALUES ('62', '系统管理员/admin 于 2011-04-17 10:28:59 退出系统！', '2011-04-17 10:28:00', '1');
INSERT INTO `sys_log` VALUES ('63', '系统管理员/admin 于 2011-04-17 10:46:26 退出系统！', '2011-04-17 10:46:00', '1');
INSERT INTO `sys_log` VALUES ('64', '系统管理员/admin 于 2011-04-17 10:50:14 退出系统！', '2011-04-17 10:50:00', '1');
INSERT INTO `sys_log` VALUES ('65', '系统管理员/admin 于 2011-04-17 11:43:12 退出系统！', '2011-04-17 11:43:00', '1');
INSERT INTO `sys_log` VALUES ('66', '系统管理员/admin 于 2011-04-17 11:43:28 退出系统！', '2011-04-17 11:43:00', '1');
INSERT INTO `sys_log` VALUES ('67', '系统管理员/admin 于 2011-04-17 11:43:48 退出系统！', '2011-04-17 11:43:00', '1');
INSERT INTO `sys_log` VALUES ('68', '系统管理员添加资源：基础数据,日期：Sun Apr 17 12:19:13 CST 2011', '2011-04-17 12:19:00', '1');
INSERT INTO `sys_log` VALUES ('69', '系统管理员修改资源：数据字典,日期：Sun Apr 17 12:19:39 CST 2011', '2011-04-17 12:19:00', '1');
INSERT INTO `sys_log` VALUES ('70', '系统管理员修改资源：资源管理,日期：Sun Apr 17 12:19:45 CST 2011', '2011-04-17 12:19:00', '1');
INSERT INTO `sys_log` VALUES ('71', '系统管理员修改资源：基础数据,日期：Sun Apr 17 12:20:58 CST 2011', '2011-04-17 12:20:00', '1');
INSERT INTO `sys_log` VALUES ('72', '系统管理员/admin 于 2011-04-17 12:21:14 退出系统！', '2011-04-17 12:21:00', '1');
INSERT INTO `sys_log` VALUES ('73', '系统管理员添加数据字典：LEAF,日期：Sun Apr 17 12:25:19 CST 2011', '2011-04-17 12:25:00', '1');
INSERT INTO `sys_log` VALUES ('74', '系统管理员修改资源：基础数据,日期：Sun Apr 17 12:26:01 CST 2011', '2011-04-17 12:26:00', '1');
INSERT INTO `sys_log` VALUES ('75', '系统管理员/admin 于 2011-04-17 12:26:44 退出系统！', '2011-04-17 12:26:00', '1');
INSERT INTO `sys_log` VALUES ('76', '系统管理员添加数据字典：PANEL,日期：Sun Apr 17 12:28:09 CST 2011', '2011-04-17 12:28:00', '1');
INSERT INTO `sys_log` VALUES ('77', '系统管理员修改数据字典：COMPONENT,日期：2011-04-17', '2011-04-17 12:28:00', '1');
INSERT INTO `sys_log` VALUES ('78', '系统管理员修改数据字典：FUNCTION,日期：2011-04-17', '2011-04-17 12:28:00', '1');
INSERT INTO `sys_log` VALUES ('79', '系统管理员修改数据字典：FUNCTION,日期：2011-04-17', '2011-04-17 12:28:00', '1');
INSERT INTO `sys_log` VALUES ('80', '系统管理员修改数据字典：LEAF,日期：2011-04-17', '2011-04-17 12:28:00', '1');
INSERT INTO `sys_log` VALUES ('81', '系统管理员修改数据字典：COMPONENT,日期：2011-04-17', '2011-04-17 12:28:00', '1');
INSERT INTO `sys_log` VALUES ('82', '系统管理员修改数据字典：PANEL,日期：2011-04-17', '2011-04-17 12:29:00', '1');
INSERT INTO `sys_log` VALUES ('83', '系统管理员修改资源：系统管理,日期：Sun Apr 17 12:29:30 CST 2011', '2011-04-17 12:29:00', '1');
INSERT INTO `sys_log` VALUES ('84', '系统管理员添加资源：人员管理,日期：Sun Apr 17 12:30:51 CST 2011', '2011-04-17 12:30:00', '1');
INSERT INTO `sys_log` VALUES ('85', '系统管理员修改资源：基础数据,日期：Sun Apr 17 12:31:06 CST 2011', '2011-04-17 12:31:00', '1');
INSERT INTO `sys_log` VALUES ('86', '系统管理员/admin 于 2011-04-17 12:31:32 退出系统！', '2011-04-17 12:31:00', '1');
INSERT INTO `sys_log` VALUES ('87', '系统管理员修改资源：人员管理,日期：Sun Apr 17 12:31:56 CST 2011', '2011-04-17 12:31:00', '1');
INSERT INTO `sys_log` VALUES ('88', '系统管理员/admin 于 2011-04-17 12:32:03 退出系统！', '2011-04-17 12:32:00', '1');
INSERT INTO `sys_log` VALUES ('95', '系统管理员修改资源：文件字典,日期：2011-00-17', '2011-04-17 13:00:00', '1');
INSERT INTO `sys_log` VALUES ('98', '系统管理员修改资源：文件字典,日期：2011-00-17', '2011-04-17 13:00:00', '1');
INSERT INTO `sys_log` VALUES ('99', '系统管理员添加资源：文件管理,日期：2011-00-17', '2011-04-17 13:00:00', '1');
INSERT INTO `sys_log` VALUES ('100', '系统管理员修改资源：文件字典,日期：2011-01-17', '2011-04-17 13:01:00', '1');
INSERT INTO `sys_log` VALUES ('101', '系统管理员添加资源：文件管理,日期：2011-01-17', '2011-04-17 13:01:00', '1');
INSERT INTO `sys_log` VALUES ('102', '系统管理员/admin 于 2011-04-17 13:02:50 退出系统！', '2011-04-17 13:02:00', '1');
INSERT INTO `sys_log` VALUES ('103', '系统管理员/admin 于 2011-04-17 13:04:57 退出系统！', '2011-04-17 13:04:00', '1');
INSERT INTO `sys_log` VALUES ('104', '系统管理员/admin 于 2011-04-17 13:05:27 退出系统！', '2011-04-17 13:05:00', '1');
INSERT INTO `sys_log` VALUES ('105', '系统管理员添加资源：文件管理,日期：2011-06-17', '2011-04-17 13:06:00', '1');
INSERT INTO `sys_log` VALUES ('106', '系统管理员添加资源：基础数据,日期：2011-25-17', '2011-04-17 13:25:00', '1');
INSERT INTO `sys_log` VALUES ('107', '系统管理员修改资源：文件归档,日期：2011-25-17', '2011-04-17 13:25:00', '1');
INSERT INTO `sys_log` VALUES ('108', '系统管理员/admin 于 2011-04-17 13:26:55 退出系统！', '2011-04-17 13:26:00', '1');
INSERT INTO `sys_log` VALUES ('109', '系统管理员/admin 于 2011-04-17 13:28:21 退出系统！', '2011-04-17 13:28:00', '1');
INSERT INTO `sys_log` VALUES ('110', '系统管理员/admin 于 2011-04-17 13:29:17 退出系统！', '2011-04-17 13:29:00', '1');
INSERT INTO `sys_log` VALUES ('111', '系统管理员/admin 于 2011-04-17 13:30:53 退出系统！', '2011-04-17 13:30:00', '1');
INSERT INTO `sys_log` VALUES ('112', '系统管理员/admin 于 2011-04-17 13:32:00 退出系统！', '2011-04-17 13:32:00', '1');
INSERT INTO `sys_log` VALUES ('113', '系统管理员添加资源：基础数据,日期：2011-32-17', '2011-04-17 13:32:00', '1');
INSERT INTO `sys_log` VALUES ('114', '系统管理员/admin 于 2011-04-17 13:35:21 退出系统！', '2011-04-17 13:35:00', '1');
INSERT INTO `sys_log` VALUES ('115', '系统管理员/admin 于 2011-04-17 13:35:55 退出系统！', '2011-04-17 13:35:00', '1');
INSERT INTO `sys_log` VALUES ('116', '系统管理员/admin 于 2011-04-17 13:36:08 退出系统！', '2011-04-17 13:36:00', '1');
INSERT INTO `sys_log` VALUES ('117', '系统管理员/admin 于 2011-04-17 13:36:32 退出系统！', '2011-04-17 13:36:00', '1');
INSERT INTO `sys_log` VALUES ('118', '系统管理员/admin 于 2011-04-17 13:40:03 退出系统！', '2011-04-17 13:40:00', '1');
INSERT INTO `sys_log` VALUES ('119', '系统管理员/admin 于 2011-04-17 13:40:16 退出系统！', '2011-04-17 13:40:00', '1');
INSERT INTO `sys_log` VALUES ('120', '系统管理员/admin 于 2011-04-17 13:42:22 退出系统！', '2011-04-17 13:42:00', '1');
INSERT INTO `sys_log` VALUES ('121', '系统管理员/admin 于 2011-04-17 13:42:42 退出系统！', '2011-04-17 13:42:00', '1');
INSERT INTO `sys_log` VALUES ('123', '系统管理员删除资源：文件归档,日期：Sun Apr 17 13:56:51 CST 2011', '2011-04-17 13:56:00', '1');
INSERT INTO `sys_log` VALUES ('124', '系统管理员修改资源：11111,日期：2011-57-17', '2011-04-17 13:57:00', '1');
INSERT INTO `sys_log` VALUES ('125', '系统管理员删除资源：11111,日期：Sun Apr 17 13:58:05 CST 2011', '2011-04-17 13:58:00', '1');
INSERT INTO `sys_log` VALUES ('126', '系统管理员修改资源：2222,日期：2011-59-17', '2011-04-17 13:59:00', '1');
INSERT INTO `sys_log` VALUES ('127', '系统管理员删除资源：2222,日期：Sun Apr 17 13:59:18 CST 2011', '2011-04-17 13:59:00', '1');
INSERT INTO `sys_log` VALUES ('128', '系统管理员修改资源：2222,日期：2011-00-17', '2011-04-17 14:00:00', '1');
INSERT INTO `sys_log` VALUES ('129', '系统管理员删除资源：2222,日期：Sun Apr 17 14:01:35 CST 2011', '2011-04-17 14:01:00', '1');
INSERT INTO `sys_log` VALUES ('130', '系统管理员修改资源：fdaf,日期：2011-02-17', '2011-04-17 14:02:00', '1');
INSERT INTO `sys_log` VALUES ('131', '系统管理员删除资源：fdaf,日期：Sun Apr 17 14:02:50 CST 2011', '2011-04-17 14:02:00', '1');
INSERT INTO `sys_log` VALUES ('132', '系统管理员添加数据字典：fads,日期：Sun Apr 17 14:03:24 CST 2011', '2011-04-17 14:03:00', '1');
INSERT INTO `sys_log` VALUES ('133', '系统管理员删除数据字典：fads,日期：Sun Apr 17 14:05:30 CST 2011', '2011-04-17 14:05:00', '1');
INSERT INTO `sys_log` VALUES ('134', '系统管理员添加数据字典：fd,日期：Sun Apr 17 14:06:09 CST 2011', '2011-04-17 14:06:00', '1');
INSERT INTO `sys_log` VALUES ('135', '系统管理员删除数据字典：fd,日期：Sun Apr 17 14:06:13 CST 2011', '2011-04-17 14:06:00', '1');
INSERT INTO `sys_log` VALUES ('136', '系统管理员添加资源：文件管理,日期：2011-07-17', '2011-04-17 14:07:00', '1');
INSERT INTO `sys_log` VALUES ('141', '系统管理员/admin 于 2011-04-17 19:21:45 退出系统！', '2011-04-17 19:21:00', '1');
INSERT INTO `sys_log` VALUES ('161', '系统管理员/admin 于 2011-04-18 22:52:11 退出系统！', '2011-04-18 22:52:00', '1');
INSERT INTO `sys_log` VALUES ('162', '系统管理员/admin 于 2011-04-18 22:58:17 退出系统！', '2011-04-18 22:58:00', '1');
INSERT INTO `sys_log` VALUES ('181', '系统管理员修改资源：资源授权,日期：2011-08-04', '2011-05-04 16:08:00', '1');
INSERT INTO `sys_log` VALUES ('182', '系统管理员删除资源：资源授权,日期：Wed May 04 16:10:13 CST 2011', '2011-05-04 16:10:00', '1');
INSERT INTO `sys_log` VALUES ('183', '系统管理员修改资源：授权资源,日期：2011-11-04', '2011-05-04 16:11:00', '1');
INSERT INTO `sys_log` VALUES ('184', '系统管理员修改资源：11,日期：2011-13-04', '2011-05-04 16:13:00', '1');
INSERT INTO `sys_log` VALUES ('185', '系统管理员修改资源：22,日期：2011-14-04', '2011-05-04 16:14:00', '1');
INSERT INTO `sys_log` VALUES ('186', '系统管理员删除资源：11,日期：Wed May 04 16:15:18 CST 2011', '2011-05-04 16:15:00', '1');
INSERT INTO `sys_log` VALUES ('187', '系统管理员删除资源：22,日期：Wed May 04 16:19:26 CST 2011', '2011-05-04 16:19:00', '1');
INSERT INTO `sys_log` VALUES ('188', '系统管理员修改资源：授权资源,日期：Wed May 04 16:20:02 CST 2011', '2011-05-04 16:20:00', '1');
INSERT INTO `sys_log` VALUES ('189', '系统管理员修改资源：授权资源,日期：Wed May 04 16:20:15 CST 2011', '2011-05-04 16:20:00', '1');
INSERT INTO `sys_log` VALUES ('190', '系统管理员修改资源：授权资源,日期：Wed May 04 16:20:47 CST 2011', '2011-05-04 16:20:00', '1');
INSERT INTO `sys_log` VALUES ('191', '系统管理员修改资源：111,日期：2011-22-04', '2011-05-04 16:22:00', '1');
INSERT INTO `sys_log` VALUES ('192', '系统管理员修改资源：22,日期：2011-22-04', '2011-05-04 16:22:00', '1');
INSERT INTO `sys_log` VALUES ('193', '系统管理员删除资源：111,日期：Wed May 04 16:23:40 CST 2011', '2011-05-04 16:23:00', '1');
INSERT INTO `sys_log` VALUES ('194', '系统管理员删除资源：22,日期：Wed May 04 16:23:49 CST 2011', '2011-05-04 16:23:00', '1');
INSERT INTO `sys_log` VALUES ('195', '系统管理员删除资源：授权资源,日期：Wed May 04 16:24:11 CST 2011', '2011-05-04 16:24:00', '1');
INSERT INTO `sys_log` VALUES ('196', '系统管理员添加资源：文件管理,日期：2011-28-04', '2011-05-04 16:28:00', '1');
INSERT INTO `sys_log` VALUES ('198', '系统管理员修改资源：11,日期：2011-34-04', '2011-05-04 16:34:00', '1');
INSERT INTO `sys_log` VALUES ('200', '系统管理员删除资源：11,日期：Wed May 04 16:34:36 CST 2011', '2011-05-04 16:34:00', '1');
INSERT INTO `sys_log` VALUES ('203', '系统管理员修改资源：1111,日期：2011-42-04', '2011-05-04 16:42:00', '1');
INSERT INTO `sys_log` VALUES ('204', '系统管理员修改资源：1111,日期：2011-42-04', '2011-05-04 16:42:00', '1');
INSERT INTO `sys_log` VALUES ('205', '系统管理员添加资源：资源授权,日期：2011-42-04', '2011-05-04 16:42:00', '1');
INSERT INTO `sys_log` VALUES ('206', '系统管理员删除资源：1111,日期：Wed May 04 16:43:08 CST 2011', '2011-05-04 16:43:00', '1');
INSERT INTO `sys_log` VALUES ('207', '系统管理员/admin 于 2011-05-04 16:43:25 退出系统！', '2011-05-04 16:43:00', '1');
INSERT INTO `sys_log` VALUES ('221', '系统管理员添加资源：资源授权,日期：2011-10-04', '2011-05-04 20:10:00', '1');
INSERT INTO `sys_log` VALUES ('222', '系统管理员/admin 于 2011-05-04 20:10:48 退出系统！', '2011-05-04 20:10:00', '1');
INSERT INTO `sys_log` VALUES ('223', '系统管理员/admin 于 2011-05-04 20:56:31 退出系统！', '2011-05-04 20:56:00', '1');
INSERT INTO `sys_log` VALUES ('241', '系统管理员添加资源：资源管理,日期：Thu May 05 21:44:37 CST 2011', '2011-05-05 21:44:00', '1');
INSERT INTO `sys_log` VALUES ('242', '系统管理员添加资源：资源管理,日期：Thu May 05 21:45:50 CST 2011', '2011-05-05 21:45:00', '1');
INSERT INTO `sys_log` VALUES ('243', '系统管理员添加资源：资源管理,日期：Thu May 05 21:48:40 CST 2011', '2011-05-05 21:48:00', '1');
INSERT INTO `sys_log` VALUES ('244', '系统管理员添加资源：资源管理,日期：Thu May 05 21:53:33 CST 2011', '2011-05-05 21:53:00', '1');
INSERT INTO `sys_log` VALUES ('245', '系统管理员添加资源：资源管理,日期：Thu May 05 21:55:42 CST 2011', '2011-05-05 21:55:00', '1');
INSERT INTO `sys_log` VALUES ('246', '系统管理员添加资源：资源授权,日期：Thu May 05 22:21:42 CST 2011', '2011-05-05 22:21:00', '1');
INSERT INTO `sys_log` VALUES ('247', '系统管理员添加资源：资源授权,日期：Thu May 05 22:21:48 CST 2011', '2011-05-05 22:21:00', '1');
INSERT INTO `sys_log` VALUES ('261', '系统管理员添加资源：资源管理,日期：Fri May 06 20:31:56 CST 2011', '2011-05-06 20:31:00', '1');
INSERT INTO `sys_log` VALUES ('262', '系统管理员删除资源：资源管理,日期：Fri May 06 20:45:47 CST 2011', '2011-05-06 20:45:00', '1');
INSERT INTO `sys_log` VALUES ('263', '系统管理员删除资源：资源管理,日期：Fri May 06 20:47:47 CST 2011', '2011-05-06 20:47:00', '1');
INSERT INTO `sys_log` VALUES ('264', '系统管理员删除资源：资源管理,日期：Fri May 06 20:47:51 CST 2011', '2011-05-06 20:47:00', '1');
INSERT INTO `sys_log` VALUES ('265', '系统管理员删除资源：资源管理,日期：Fri May 06 20:47:54 CST 2011', '2011-05-06 20:47:00', '1');
INSERT INTO `sys_log` VALUES ('266', '系统管理员删除资源：资源授权,日期：Fri May 06 20:47:59 CST 2011', '2011-05-06 20:47:00', '1');
INSERT INTO `sys_log` VALUES ('267', '系统管理员删除资源：资源授权,日期：Fri May 06 20:48:09 CST 2011', '2011-05-06 20:48:00', '1');
INSERT INTO `sys_log` VALUES ('268', '系统管理员添加资源：资源管理,日期：Fri May 06 20:48:25 CST 2011', '2011-05-06 20:48:00', '1');
INSERT INTO `sys_log` VALUES ('269', '系统管理员删除资源：资源管理,日期：Fri May 06 20:49:03 CST 2011', '2011-05-06 20:49:00', '1');
INSERT INTO `sys_log` VALUES ('270', '系统管理员删除资源：资源管理,日期：Fri May 06 20:49:05 CST 2011', '2011-05-06 20:49:00', '1');
INSERT INTO `sys_log` VALUES ('271', '系统管理员删除资源：资源管理,日期：Fri May 06 20:49:07 CST 2011', '2011-05-06 20:49:00', '1');
INSERT INTO `sys_log` VALUES ('272', '系统管理员添加资源：资源管理,日期：Fri May 06 20:50:27 CST 2011', '2011-05-06 20:50:00', '1');
INSERT INTO `sys_log` VALUES ('273', '系统管理员删除资源：资源管理,日期：Fri May 06 20:51:07 CST 2011', '2011-05-06 20:51:00', '1');
INSERT INTO `sys_log` VALUES ('274', '系统管理员添加资源：文件管理,日期：Fri May 06 20:55:59 CST 2011', '2011-05-06 20:55:00', '1');
INSERT INTO `sys_log` VALUES ('275', '系统管理员添加资源：文件管理,日期：Fri May 06 20:56:19 CST 2011', '2011-05-06 20:56:00', '1');
INSERT INTO `sys_log` VALUES ('276', '系统管理员删除资源：文件管理,日期：Fri May 06 20:56:28 CST 2011', '2011-05-06 20:56:00', '1');
INSERT INTO `sys_log` VALUES ('277', '系统管理员删除资源：文件管理,日期：Fri May 06 20:56:40 CST 2011', '2011-05-06 20:56:00', '1');
INSERT INTO `sys_log` VALUES ('278', '系统管理员添加资源：文件管理,日期：Fri May 06 20:58:04 CST 2011', '2011-05-06 20:58:00', '1');
INSERT INTO `sys_log` VALUES ('279', '系统管理员删除资源：文件管理,日期：Fri May 06 20:58:11 CST 2011', '2011-05-06 20:58:00', '1');
INSERT INTO `sys_log` VALUES ('280', '系统管理员添加资源：人员管理,日期：Fri May 06 20:59:14 CST 2011', '2011-05-06 20:59:00', '1');
INSERT INTO `sys_log` VALUES ('281', '系统管理员删除资源：人员管理,日期：Fri May 06 20:59:22 CST 2011', '2011-05-06 20:59:00', '1');
INSERT INTO `sys_log` VALUES ('282', '系统管理员添加资源：人员管理,日期：Fri May 06 21:00:02 CST 2011', '2011-05-06 21:00:00', '1');
INSERT INTO `sys_log` VALUES ('283', '系统管理员删除资源：人员管理,日期：Fri May 06 21:00:15 CST 2011', '2011-05-06 21:00:00', '1');
INSERT INTO `sys_log` VALUES ('284', '系统管理员添加资源：null,日期：Fri May 06 23:10:49 CST 2011', '2011-05-06 23:10:00', '1');
INSERT INTO `sys_log` VALUES ('285', '系统管理员添加资源：null,日期：Fri May 06 23:11:13 CST 2011', '2011-05-06 23:11:00', '1');
INSERT INTO `sys_log` VALUES ('286', '系统管理员删除资源：null,日期：Fri May 06 23:16:31 CST 2011', '2011-05-06 23:16:00', '1');
INSERT INTO `sys_log` VALUES ('287', '系统管理员删除资源：null,日期：Fri May 06 23:16:37 CST 2011', '2011-05-06 23:16:00', '1');
INSERT INTO `sys_log` VALUES ('301', '系统管理员修改资源：资源管理,日期：Sat May 07 13:58:39 CST 2011', '2011-05-07 13:58:00', '1');
INSERT INTO `sys_log` VALUES ('302', '系统管理员添加资源：新建资源,日期：Sat May 07 13:59:04 CST 2011', '2011-05-07 13:59:00', '1');
INSERT INTO `sys_log` VALUES ('303', '系统管理员删除资源：新建资源,日期：Sat May 07 13:59:16 CST 2011', '2011-05-07 13:59:00', '1');
INSERT INTO `sys_log` VALUES ('304', '系统管理员添加资源：新建资源,日期：Sat May 07 14:01:37 CST 2011', '2011-05-07 14:01:00', '1');
INSERT INTO `sys_log` VALUES ('305', '系统管理员删除资源：新建资源,日期：Sat May 07 14:19:48 CST 2011', '2011-05-07 14:19:00', '1');
INSERT INTO `sys_log` VALUES ('306', '系统管理员添加资源：新建资源,日期：Sat May 07 14:20:53 CST 2011', '2011-05-07 14:20:00', '1');
INSERT INTO `sys_log` VALUES ('307', '系统管理员添加资源：新建资源,日期：Sat May 07 14:23:01 CST 2011', '2011-05-07 14:23:00', '1');
INSERT INTO `sys_log` VALUES ('308', '系统管理员删除资源：新建资源,日期：Sat May 07 14:23:24 CST 2011', '2011-05-07 14:23:00', '1');
INSERT INTO `sys_log` VALUES ('309', '系统管理员删除资源：新建资源,日期：Sat May 07 14:23:30 CST 2011', '2011-05-07 14:23:00', '1');
INSERT INTO `sys_log` VALUES ('310', '系统管理员添加资源：新建资源,日期：Sat May 07 14:31:20 CST 2011', '2011-05-07 14:31:00', '1');
INSERT INTO `sys_log` VALUES ('311', '系统管理员添加资源：新建资源,日期：Sat May 07 14:31:23 CST 2011', '2011-05-07 14:31:00', '1');
INSERT INTO `sys_log` VALUES ('312', '系统管理员删除资源：新建资源,日期：Sat May 07 14:32:55 CST 2011', '2011-05-07 14:32:00', '1');
INSERT INTO `sys_log` VALUES ('313', '系统管理员添加资源：新建资源,日期：Sat May 07 14:33:18 CST 2011', '2011-05-07 14:33:00', '1');
INSERT INTO `sys_log` VALUES ('314', '系统管理员添加资源：新建资源,日期：Sat May 07 14:35:06 CST 2011', '2011-05-07 14:35:00', '1');
INSERT INTO `sys_log` VALUES ('315', '系统管理员添加资源：新建资源,日期：Sat May 07 14:35:12 CST 2011', '2011-05-07 14:35:00', '1');
INSERT INTO `sys_log` VALUES ('316', '系统管理员删除资源：新建资源,日期：Sat May 07 14:35:24 CST 2011', '2011-05-07 14:35:00', '1');
INSERT INTO `sys_log` VALUES ('317', '系统管理员删除资源：新建资源,日期：Sat May 07 14:35:31 CST 2011', '2011-05-07 14:35:00', '1');
INSERT INTO `sys_log` VALUES ('318', '系统管理员删除资源：新建资源,日期：Sat May 07 14:35:36 CST 2011', '2011-05-07 14:35:00', '1');
INSERT INTO `sys_log` VALUES ('319', '系统管理员添加资源：新建资源,日期：Sat May 07 14:38:13 CST 2011', '2011-05-07 14:38:00', '1');
INSERT INTO `sys_log` VALUES ('320', '系统管理员添加资源：新建资源,日期：Sat May 07 14:40:56 CST 2011', '2011-05-07 14:40:00', '1');
INSERT INTO `sys_log` VALUES ('321', '系统管理员添加资源：新建资源,日期：Sat May 07 14:42:14 CST 2011', '2011-05-07 14:42:00', '1');
INSERT INTO `sys_log` VALUES ('322', '系统管理员删除资源：新建资源,日期：Sat May 07 14:43:29 CST 2011', '2011-05-07 14:43:00', '1');
INSERT INTO `sys_log` VALUES ('323', '系统管理员删除资源：新建资源,日期：Sat May 07 14:43:52 CST 2011', '2011-05-07 14:43:00', '1');
INSERT INTO `sys_log` VALUES ('324', '系统管理员删除资源：新建资源,日期：Sat May 07 14:44:30 CST 2011', '2011-05-07 14:44:00', '1');
INSERT INTO `sys_log` VALUES ('325', '系统管理员添加资源：新建资源,日期：Sat May 07 14:44:53 CST 2011', '2011-05-07 14:44:00', '1');
INSERT INTO `sys_log` VALUES ('326', '系统管理员添加资源：新建资源,日期：Sat May 07 14:45:37 CST 2011', '2011-05-07 14:45:00', '1');
INSERT INTO `sys_log` VALUES ('327', '系统管理员删除资源：新建资源,日期：Sat May 07 14:45:49 CST 2011', '2011-05-07 14:45:00', '1');
INSERT INTO `sys_log` VALUES ('328', '系统管理员添加资源：新建资源,日期：Sat May 07 14:47:01 CST 2011', '2011-05-07 14:47:00', '1');
INSERT INTO `sys_log` VALUES ('329', '系统管理员删除资源：新建资源,日期：Sat May 07 14:47:06 CST 2011', '2011-05-07 14:47:00', '1');
INSERT INTO `sys_log` VALUES ('330', '系统管理员添加资源：新建资源,日期：Sat May 07 14:48:31 CST 2011', '2011-05-07 14:48:00', '1');
INSERT INTO `sys_log` VALUES ('331', '系统管理员删除资源：新建资源,日期：Sat May 07 14:48:42 CST 2011', '2011-05-07 14:48:00', '1');
INSERT INTO `sys_log` VALUES ('332', '系统管理员添加资源：新建资源,日期：Sat May 07 14:49:39 CST 2011', '2011-05-07 14:49:00', '1');
INSERT INTO `sys_log` VALUES ('333', '系统管理员删除资源：新建资源,日期：Sat May 07 14:49:48 CST 2011', '2011-05-07 14:49:00', '1');
INSERT INTO `sys_log` VALUES ('334', '系统管理员添加资源：新建资源,日期：Sat May 07 14:50:28 CST 2011', '2011-05-07 14:50:00', '1');
INSERT INTO `sys_log` VALUES ('335', '系统管理员删除资源：新建资源,日期：Sat May 07 14:50:32 CST 2011', '2011-05-07 14:50:00', '1');
INSERT INTO `sys_log` VALUES ('336', '系统管理员添加资源：新建资源,日期：Sat May 07 14:52:09 CST 2011', '2011-05-07 14:52:00', '1');
INSERT INTO `sys_log` VALUES ('337', '系统管理员删除资源：新建资源,日期：Sat May 07 14:52:22 CST 2011', '2011-05-07 14:52:00', '1');
INSERT INTO `sys_log` VALUES ('338', '系统管理员添加资源：新建资源,日期：Sat May 07 14:54:13 CST 2011', '2011-05-07 14:54:00', '1');
INSERT INTO `sys_log` VALUES ('339', '系统管理员删除资源：新建资源,日期：Sat May 07 14:54:18 CST 2011', '2011-05-07 14:54:00', '1');
INSERT INTO `sys_log` VALUES ('340', '系统管理员添加资源：新建资源,日期：Sat May 07 14:55:41 CST 2011', '2011-05-07 14:55:00', '1');
INSERT INTO `sys_log` VALUES ('341', '系统管理员删除资源：新建资源,日期：Sat May 07 14:55:45 CST 2011', '2011-05-07 14:55:00', '1');
INSERT INTO `sys_log` VALUES ('342', '系统管理员删除资源：新建资源,日期：Sat May 07 14:56:10 CST 2011', '2011-05-07 14:56:00', '1');
INSERT INTO `sys_log` VALUES ('343', '系统管理员添加资源：新建资源,日期：Sat May 07 14:56:55 CST 2011', '2011-05-07 14:56:00', '1');
INSERT INTO `sys_log` VALUES ('344', '系统管理员删除资源：新建资源,日期：Sat May 07 14:56:59 CST 2011', '2011-05-07 14:56:00', '1');
INSERT INTO `sys_log` VALUES ('345', '系统管理员添加资源：新建资源,日期：Sat May 07 15:20:42 CST 2011', '2011-05-07 15:20:00', '1');
INSERT INTO `sys_log` VALUES ('346', '系统管理员添加资源：新建资源,日期：Sat May 07 15:22:45 CST 2011', '2011-05-07 15:22:00', '1');
INSERT INTO `sys_log` VALUES ('347', '系统管理员删除资源：新建资源,日期：Sat May 07 15:23:40 CST 2011', '2011-05-07 15:23:00', '1');
INSERT INTO `sys_log` VALUES ('348', '系统管理员删除资源：新建资源,日期：Sat May 07 15:23:58 CST 2011', '2011-05-07 15:23:00', '1');
INSERT INTO `sys_log` VALUES ('349', '系统管理员添加资源：新建资源,日期：Sat May 07 15:25:04 CST 2011', '2011-05-07 15:25:00', '1');
INSERT INTO `sys_log` VALUES ('350', '系统管理员删除资源：新建资源,日期：Sat May 07 15:25:29 CST 2011', '2011-05-07 15:25:00', '1');
INSERT INTO `sys_log` VALUES ('351', '系统管理员添加资源：新建资源,日期：Sat May 07 15:25:55 CST 2011', '2011-05-07 15:25:00', '1');
INSERT INTO `sys_log` VALUES ('352', '系统管理员删除资源：新建资源,日期：Sat May 07 15:25:58 CST 2011', '2011-05-07 15:25:00', '1');
INSERT INTO `sys_log` VALUES ('353', '系统管理员添加资源：新建资源,日期：Sat May 07 15:27:58 CST 2011', '2011-05-07 15:27:00', '1');
INSERT INTO `sys_log` VALUES ('354', '系统管理员删除资源：新建资源,日期：Sat May 07 15:28:02 CST 2011', '2011-05-07 15:28:00', '1');
INSERT INTO `sys_log` VALUES ('355', '系统管理员/admin 于 2011-05-07 15:52:03 退出系统！', '2011-05-07 15:52:00', '1');
INSERT INTO `sys_log` VALUES ('356', '系统管理员/admin 于 2011-05-07 15:52:56 退出系统！', '2011-05-07 15:52:00', '1');
INSERT INTO `sys_log` VALUES ('357', '系统管理员删除资源：新建资源,日期：Sat May 07 15:59:48 CST 2011', '2011-05-07 15:59:00', '1');
INSERT INTO `sys_log` VALUES ('358', '系统管理员添加资源：新建资源,日期：Sat May 07 16:02:50 CST 2011', '2011-05-07 16:02:00', '1');
INSERT INTO `sys_log` VALUES ('359', '系统管理员修改资源：新建资源,日期：Sat May 07 16:02:55 CST 2011', '2011-05-07 16:02:00', '1');
INSERT INTO `sys_log` VALUES ('360', '系统管理员删除资源：新建资源,日期：Sat May 07 16:03:17 CST 2011', '2011-05-07 16:03:00', '1');
INSERT INTO `sys_log` VALUES ('361', '系统管理员修改资源：资源管理,日期：Sat May 07 16:12:12 CST 2011', '2011-05-07 16:12:00', '1');
INSERT INTO `sys_log` VALUES ('362', '系统管理员添加资源：新建资源,日期：Sat May 07 16:12:20 CST 2011', '2011-05-07 16:12:00', '1');
INSERT INTO `sys_log` VALUES ('363', '系统管理员删除资源：新建资源,日期：Sat May 07 16:29:13 CST 2011', '2011-05-07 16:29:00', '1');
INSERT INTO `sys_log` VALUES ('364', '系统管理员添加资源：新建资源,日期：Sat May 07 16:29:18 CST 2011', '2011-05-07 16:29:00', '1');
INSERT INTO `sys_log` VALUES ('365', '系统管理员修改资源：人员管理,日期：Sat May 07 17:33:24 CST 2011', '2011-05-07 17:33:00', '1');
INSERT INTO `sys_log` VALUES ('366', '系统管理员修改资源：人员管理,日期：Sat May 07 17:33:27 CST 2011', '2011-05-07 17:33:00', '1');
INSERT INTO `sys_log` VALUES ('367', '系统管理员修改资源：人员管理,日期：Sat May 07 17:33:27 CST 2011', '2011-05-07 17:33:00', '1');
INSERT INTO `sys_log` VALUES ('381', '系统管理员添加资源：新建资源,日期：Sat May 07 21:28:07 CST 2011', '2011-05-07 21:28:00', '1');
INSERT INTO `sys_log` VALUES ('382', '系统管理员删除资源：新建资源,日期：Sat May 07 21:29:08 CST 2011', '2011-05-07 21:29:00', '1');
INSERT INTO `sys_log` VALUES ('383', '系统管理员添加资源：新建资源,日期：Sat May 07 21:35:05 CST 2011', '2011-05-07 21:35:00', '1');
INSERT INTO `sys_log` VALUES ('384', '系统管理员修改资源：新建资源,日期：Sat May 07 21:35:09 CST 2011', '2011-05-07 21:35:00', '1');
INSERT INTO `sys_log` VALUES ('385', '系统管理员修改资源：文件归档,日期：Sat May 07 21:35:30 CST 2011', '2011-05-07 21:35:00', '1');
INSERT INTO `sys_log` VALUES ('386', '系统管理员修改资源：数据字典,日期：Sat May 07 21:39:03 CST 2011', '2011-05-07 21:39:00', '1');
INSERT INTO `sys_log` VALUES ('387', '系统管理员修改资源：资源授权,日期：Sat May 07 21:43:49 CST 2011', '2011-05-07 21:43:00', '1');
INSERT INTO `sys_log` VALUES ('388', '系统管理员添加资源：新建资源,日期：Sat May 07 21:44:40 CST 2011', '2011-05-07 21:44:00', '1');
INSERT INTO `sys_log` VALUES ('389', '系统管理员修改资源：新建资源,日期：Sat May 07 21:44:42 CST 2011', '2011-05-07 21:44:00', '1');
INSERT INTO `sys_log` VALUES ('390', '系统管理员删除资源：新建资源,日期：Sat May 07 21:44:46 CST 2011', '2011-05-07 21:44:00', '1');
INSERT INTO `sys_log` VALUES ('391', '系统管理员添加资源：新建资源,日期：Sat May 07 21:44:52 CST 2011', '2011-05-07 21:44:00', '1');
INSERT INTO `sys_log` VALUES ('392', '系统管理员修改资源：文件管理,日期：Sat May 07 21:59:14 CST 2011', '2011-05-07 21:59:00', '1');
INSERT INTO `sys_log` VALUES ('393', '系统管理员修改资源：文件管理,日期：Sat May 07 22:03:16 CST 2011', '2011-05-07 22:03:00', '1');
INSERT INTO `sys_log` VALUES ('394', '系统管理员修改资源：文件管理,日期：Sat May 07 22:08:41 CST 2011', '2011-05-07 22:08:00', '1');
INSERT INTO `sys_log` VALUES ('395', '系统管理员修改资源：文件管理,日期：Sat May 07 22:11:35 CST 2011', '2011-05-07 22:11:00', '1');
INSERT INTO `sys_log` VALUES ('396', '系统管理员修改资源：文件管理,日期：Sat May 07 22:11:48 CST 2011', '2011-05-07 22:11:00', '1');
INSERT INTO `sys_log` VALUES ('397', '系统管理员修改资源：文件归档,日期：Sat May 07 22:11:56 CST 2011', '2011-05-07 22:11:00', '1');
INSERT INTO `sys_log` VALUES ('398', '系统管理员修改资源：文件归档,日期：Sat May 07 22:12:01 CST 2011', '2011-05-07 22:12:00', '1');
INSERT INTO `sys_log` VALUES ('399', '系统管理员删除资源：新建资源,日期：Sat May 07 22:13:01 CST 2011', '2011-05-07 22:13:00', '1');
INSERT INTO `sys_log` VALUES ('400', '系统管理员添加资源：新建资源,日期：Sat May 07 22:13:06 CST 2011', '2011-05-07 22:13:00', '1');
INSERT INTO `sys_log` VALUES ('401', '系统管理员删除资源：新建资源,日期：Sat May 07 22:33:49 CST 2011', '2011-05-07 22:33:00', '1');
INSERT INTO `sys_log` VALUES ('402', '系统管理员添加资源：新建资源,日期：Sat May 07 22:43:55 CST 2011', '2011-05-07 22:43:00', '1');
INSERT INTO `sys_log` VALUES ('403', '系统管理员删除资源：新建资源,日期：Sat May 07 22:44:18 CST 2011', '2011-05-07 22:44:00', '1');
INSERT INTO `sys_log` VALUES ('404', '系统管理员添加资源：新建资源,日期：Sat May 07 22:44:28 CST 2011', '2011-05-07 22:44:00', '1');
INSERT INTO `sys_log` VALUES ('405', '系统管理员修改资源：新建资源,日期：Sat May 07 22:44:33 CST 2011', '2011-05-07 22:44:00', '1');
INSERT INTO `sys_log` VALUES ('406', '系统管理员添加资源：新建资源,日期：Sat May 07 22:45:52 CST 2011', '2011-05-07 22:45:00', '1');
INSERT INTO `sys_log` VALUES ('407', '系统管理员修改资源：新建资源,日期：Sat May 07 22:45:55 CST 2011', '2011-05-07 22:45:00', '1');
INSERT INTO `sys_log` VALUES ('408', '系统管理员删除资源：新建资源,日期：Sat May 07 22:46:31 CST 2011', '2011-05-07 22:46:00', '1');
INSERT INTO `sys_log` VALUES ('409', '系统管理员删除资源：新建资源,日期：Sat May 07 22:46:33 CST 2011', '2011-05-07 22:46:00', '1');
INSERT INTO `sys_log` VALUES ('410', '系统管理员添加资源：新建资源,日期：Sat May 07 22:46:38 CST 2011', '2011-05-07 22:46:00', '1');
INSERT INTO `sys_log` VALUES ('411', '系统管理员修改资源：新建资源,日期：Sat May 07 22:46:40 CST 2011', '2011-05-07 22:46:00', '1');
INSERT INTO `sys_log` VALUES ('412', '系统管理员删除资源：新建资源,日期：Sat May 07 22:47:57 CST 2011', '2011-05-07 22:47:00', '1');
INSERT INTO `sys_log` VALUES ('413', '系统管理员添加资源：新建资源,日期：Sat May 07 22:48:00 CST 2011', '2011-05-07 22:48:00', '1');
INSERT INTO `sys_log` VALUES ('414', '系统管理员修改资源：新建资源,日期：Sat May 07 22:48:32 CST 2011', '2011-05-07 22:48:00', '1');
INSERT INTO `sys_log` VALUES ('415', '系统管理员删除资源：新建资源,日期：Sat May 07 22:48:54 CST 2011', '2011-05-07 22:48:00', '1');
INSERT INTO `sys_log` VALUES ('416', '系统管理员添加资源：新建资源,日期：Sat May 07 22:48:56 CST 2011', '2011-05-07 22:48:00', '1');
INSERT INTO `sys_log` VALUES ('417', '系统管理员修改资源：新建资源,日期：Sat May 07 22:48:59 CST 2011', '2011-05-07 22:48:00', '1');
INSERT INTO `sys_log` VALUES ('418', '系统管理员添加资源：新建资源,日期：Sat May 07 22:50:04 CST 2011', '2011-05-07 22:50:00', '1');
INSERT INTO `sys_log` VALUES ('419', '系统管理员删除资源：新建资源,日期：Sat May 07 22:51:49 CST 2011', '2011-05-07 22:51:00', '1');
INSERT INTO `sys_log` VALUES ('420', '系统管理员删除资源：新建资源,日期：Sat May 07 22:51:51 CST 2011', '2011-05-07 22:51:00', '1');
INSERT INTO `sys_log` VALUES ('421', '系统管理员添加资源：新建资源,日期：Sat May 07 22:53:57 CST 2011', '2011-05-07 22:53:00', '1');
INSERT INTO `sys_log` VALUES ('422', '系统管理员添加资源：新建资源,日期：Sat May 07 23:00:48 CST 2011', '2011-05-07 23:00:00', '1');
INSERT INTO `sys_log` VALUES ('423', '系统管理员删除资源：新建资源,日期：Sat May 07 23:04:51 CST 2011', '2011-05-07 23:04:00', '1');
INSERT INTO `sys_log` VALUES ('424', '系统管理员删除资源：新建资源,日期：Sat May 07 23:04:53 CST 2011', '2011-05-07 23:04:00', '1');
INSERT INTO `sys_log` VALUES ('425', '系统管理员添加资源：新建资源,日期：Sat May 07 23:05:00 CST 2011', '2011-05-07 23:05:00', '1');
INSERT INTO `sys_log` VALUES ('426', '系统管理员删除资源：新建资源,日期：Sat May 07 23:05:23 CST 2011', '2011-05-07 23:05:00', '1');
INSERT INTO `sys_log` VALUES ('427', '系统管理员添加资源：新建资源,日期：Sat May 07 23:05:27 CST 2011', '2011-05-07 23:05:00', '1');
INSERT INTO `sys_log` VALUES ('428', '系统管理员添加资源：新建资源,日期：Sat May 07 23:07:04 CST 2011', '2011-05-07 23:07:00', '1');
INSERT INTO `sys_log` VALUES ('429', '系统管理员/admin 于 2011-05-07 23:09:07 退出系统！', '2011-05-07 23:09:00', '1');
INSERT INTO `sys_log` VALUES ('430', '系统管理员添加资源：新建资源,日期：Sat May 07 23:09:29 CST 2011', '2011-05-07 23:09:00', '1');
INSERT INTO `sys_log` VALUES ('431', '系统管理员删除资源：新建资源,日期：Sat May 07 23:10:14 CST 2011', '2011-05-07 23:10:00', '1');
INSERT INTO `sys_log` VALUES ('432', '系统管理员删除资源：新建资源,日期：Sat May 07 23:10:17 CST 2011', '2011-05-07 23:10:00', '1');
INSERT INTO `sys_log` VALUES ('433', '系统管理员删除资源：新建资源,日期：Sat May 07 23:10:19 CST 2011', '2011-05-07 23:10:00', '1');
INSERT INTO `sys_log` VALUES ('434', '系统管理员添加资源：新建资源,日期：Sat May 07 23:10:22 CST 2011', '2011-05-07 23:10:00', '1');
INSERT INTO `sys_log` VALUES ('435', '系统管理员修改资源：新建资源,日期：Sat May 07 23:11:12 CST 2011', '2011-05-07 23:11:00', '1');
INSERT INTO `sys_log` VALUES ('436', '系统管理员删除资源：新建资源,日期：Sat May 07 23:13:28 CST 2011', '2011-05-07 23:13:00', '1');
INSERT INTO `sys_log` VALUES ('437', '系统管理员添加资源：新建资源,日期：Sat May 07 23:13:33 CST 2011', '2011-05-07 23:13:00', '1');
INSERT INTO `sys_log` VALUES ('441', '系统管理员添加资源：新建资源,日期：Sun May 08 08:44:19 CST 2011', '2011-05-08 08:44:00', '1');
INSERT INTO `sys_log` VALUES ('442', '系统管理员删除资源：新建资源,日期：Sun May 08 08:44:48 CST 2011', '2011-05-08 08:44:00', '1');
INSERT INTO `sys_log` VALUES ('443', '系统管理员删除资源：新建资源,日期：Sun May 08 08:44:50 CST 2011', '2011-05-08 08:44:00', '1');
INSERT INTO `sys_log` VALUES ('444', '系统管理员添加资源：新建资源,日期：Sun May 08 08:45:32 CST 2011', '2011-05-08 08:45:00', '1');
INSERT INTO `sys_log` VALUES ('445', '系统管理员修改资源：新建资源,日期：Sun May 08 08:45:35 CST 2011', '2011-05-08 08:45:00', '1');
INSERT INTO `sys_log` VALUES ('446', '系统管理员修改资源：文件分类,日期：Sun May 08 08:45:55 CST 2011', '2011-05-08 08:45:00', '1');
INSERT INTO `sys_log` VALUES ('447', '系统管理员添加资源：角色管理,日期：Sun May 08 08:46:16 CST 2011', '2011-05-08 08:46:00', '1');
INSERT INTO `sys_log` VALUES ('448', '系统管理员修改资源：部门管理,日期：Sun May 08 08:47:48 CST 2011', '2011-05-08 08:47:00', '1');
INSERT INTO `sys_log` VALUES ('449', '系统管理员/admin 于 2011-05-08 09:40:50 退出系统！', '2011-05-08 09:40:00', '1');
INSERT INTO `sys_log` VALUES ('450', '系统管理员修改资源：资源授权,日期：Sun May 08 10:01:42 CST 2011', '2011-05-08 10:01:00', '1');
INSERT INTO `sys_log` VALUES ('451', '系统管理员修改资源：资源管理,日期：Sun May 08 11:26:37 CST 2011', '2011-05-08 11:26:00', '1');
INSERT INTO `sys_log` VALUES ('452', '系统管理员添加资源：新建资源,日期：Sun May 08 12:52:07 CST 2011', '2011-05-08 12:52:00', '1');
INSERT INTO `sys_log` VALUES ('453', '系统管理员修改资源：新建资源,日期：Sun May 08 12:52:09 CST 2011', '2011-05-08 12:52:00', '1');
INSERT INTO `sys_log` VALUES ('454', '系统管理员删除资源：新建资源,日期：Sun May 08 12:52:42 CST 2011', '2011-05-08 12:52:00', '1');
INSERT INTO `sys_log` VALUES ('455', '系统管理员添加资源：新建资源,日期：Sun May 08 12:52:46 CST 2011', '2011-05-08 12:52:00', '1');
INSERT INTO `sys_log` VALUES ('456', '系统管理员修改资源：新建资源,日期：Sun May 08 12:52:55 CST 2011', '2011-05-08 12:52:00', '1');
INSERT INTO `sys_log` VALUES ('457', '系统管理员删除资源：新建资源,日期：Sun May 08 12:54:48 CST 2011', '2011-05-08 12:54:00', '1');
INSERT INTO `sys_log` VALUES ('458', '系统管理员添加资源：新建资源,日期：Sun May 08 12:54:51 CST 2011', '2011-05-08 12:54:00', '1');
INSERT INTO `sys_log` VALUES ('459', '系统管理员删除资源：文件分类,日期：Sun May 08 12:55:25 CST 2011', '2011-05-08 12:55:00', '1');
INSERT INTO `sys_log` VALUES ('460', '系统管理员删除资源：文件归档,日期：Sun May 08 12:55:29 CST 2011', '2011-05-08 12:55:00', '1');
INSERT INTO `sys_log` VALUES ('461', '系统管理员删除资源：新建资源,日期：Sun May 08 12:55:31 CST 2011', '2011-05-08 12:55:00', '1');
INSERT INTO `sys_log` VALUES ('462', '系统管理员添加资源：文件分类,日期：Sun May 08 12:57:04 CST 2011', '2011-05-08 12:57:00', '1');
INSERT INTO `sys_log` VALUES ('463', '系统管理员修改资源：文件分类,日期：Sun May 08 12:59:23 CST 2011', '2011-05-08 12:59:00', '1');
INSERT INTO `sys_log` VALUES ('464', '系统管理员修改资源：文件分类,日期：Sun May 08 12:59:29 CST 2011', '2011-05-08 12:59:00', '1');
INSERT INTO `sys_log` VALUES ('465', '系统管理员修改资源：文件分类,日期：Sun May 08 13:01:06 CST 2011', '2011-05-08 13:01:00', '1');
INSERT INTO `sys_log` VALUES ('466', '系统管理员修改资源：文件分类,日期：Sun May 08 14:25:12 CST 2011', '2011-05-08 14:25:00', '1');
INSERT INTO `sys_log` VALUES ('467', '系统管理员修改资源：部门管理,日期：Sun May 08 14:51:51 CST 2011', '2011-05-08 14:51:00', '1');
INSERT INTO `sys_log` VALUES ('468', '系统管理员修改资源：部门管理,日期：Sun May 08 15:08:29 CST 2011', '2011-05-08 15:08:00', '1');
INSERT INTO `sys_log` VALUES ('469', '系统管理员添加资源：新建资源,日期：Sun May 08 15:12:07 CST 2011', '2011-05-08 15:12:00', '1');
INSERT INTO `sys_log` VALUES ('470', '系统管理员删除资源：新建资源,日期：Sun May 08 15:12:11 CST 2011', '2011-05-08 15:12:00', '1');
INSERT INTO `sys_log` VALUES ('481', '系统管理员添加资源：新建资源,日期：Sun May 08 20:54:26 CST 2011', '2011-05-08 20:54:00', '1');
INSERT INTO `sys_log` VALUES ('482', '系统管理员删除资源：新建资源,日期：Sun May 08 20:54:54 CST 2011', '2011-05-08 20:54:00', '1');
INSERT INTO `sys_log` VALUES ('483', '系统管理员添加资源：新建资源,日期：Sun May 08 20:55:27 CST 2011', '2011-05-08 20:55:00', '1');
INSERT INTO `sys_log` VALUES ('484', '系统管理员删除资源：新建资源,日期：Sun May 08 20:55:59 CST 2011', '2011-05-08 20:55:00', '1');
INSERT INTO `sys_log` VALUES ('485', '系统管理员添加资源：新建资源,日期：Sun May 08 20:56:06 CST 2011', '2011-05-08 20:56:00', '1');
INSERT INTO `sys_log` VALUES ('486', '系统管理员删除资源：新建资源,日期：Sun May 08 20:58:37 CST 2011', '2011-05-08 20:58:00', '1');
INSERT INTO `sys_log` VALUES ('487', '系统管理员添加资源：新建资源,日期：Sun May 08 20:59:21 CST 2011', '2011-05-08 20:59:00', '1');
INSERT INTO `sys_log` VALUES ('488', '系统管理员删除资源：新建资源,日期：Sun May 08 20:59:31 CST 2011', '2011-05-08 20:59:00', '1');
INSERT INTO `sys_log` VALUES ('489', '系统管理员添加资源：新建资源,日期：Sun May 08 21:00:50 CST 2011', '2011-05-08 21:00:00', '1');
INSERT INTO `sys_log` VALUES ('490', '系统管理员删除资源：新建资源,日期：Sun May 08 21:00:58 CST 2011', '2011-05-08 21:00:00', '1');
INSERT INTO `sys_log` VALUES ('491', '系统管理员添加资源：新建资源,日期：Sun May 08 21:01:54 CST 2011', '2011-05-08 21:01:00', '1');
INSERT INTO `sys_log` VALUES ('492', '系统管理员删除资源：新建资源,日期：Sun May 08 21:02:03 CST 2011', '2011-05-08 21:02:00', '1');
INSERT INTO `sys_log` VALUES ('493', '系统管理员添加资源：新建资源,日期：Sun May 08 21:02:11 CST 2011', '2011-05-08 21:02:00', '1');
INSERT INTO `sys_log` VALUES ('494', '系统管理员删除资源：新建资源,日期：Sun May 08 21:02:18 CST 2011', '2011-05-08 21:02:00', '1');
INSERT INTO `sys_log` VALUES ('495', '系统管理员/admin 于 2011-05-08 21:03:53 退出系统！', '2011-05-08 21:03:00', '1');
INSERT INTO `sys_log` VALUES ('496', '系统管理员修改资源：文件分类,日期：Sun May 08 22:01:41 CST 2011', '2011-05-08 22:01:00', '1');
INSERT INTO `sys_log` VALUES ('497', '系统管理员修改资源：部门管理,日期：Sun May 08 22:09:40 CST 2011', '2011-05-08 22:09:00', '1');
INSERT INTO `sys_log` VALUES ('498', '系统管理员修改资源：角色管理,日期：Sun May 08 22:09:50 CST 2011', '2011-05-08 22:09:00', '1');
INSERT INTO `sys_log` VALUES ('499', '系统管理员修改资源：资源授权,日期：Sun May 08 22:10:56 CST 2011', '2011-05-08 22:10:00', '1');
INSERT INTO `sys_log` VALUES ('500', '系统管理员修改资源：文件管理,日期：Sun May 08 22:12:21 CST 2011', '2011-05-08 22:12:00', '1');
INSERT INTO `sys_log` VALUES ('501', '系统管理员修改资源：人员管理,日期：Sun May 08 22:12:32 CST 2011', '2011-05-08 22:12:00', '1');
INSERT INTO `sys_log` VALUES ('521', '系统管理员修改资源：人员管理,日期：Mon May 09 20:27:13 CST 2011', '2011-05-09 20:27:00', '1');
INSERT INTO `sys_log` VALUES ('522', '系统管理员修改资源：系统管理,日期：Mon May 09 20:27:19 CST 2011', '2011-05-09 20:27:00', '1');
INSERT INTO `sys_log` VALUES ('523', '系统管理员修改资源：文件管理,日期：Mon May 09 20:27:22 CST 2011', '2011-05-09 20:27:00', '1');
INSERT INTO `sys_log` VALUES ('524', '系统管理员/admin 于 2011-05-09 23:14:41 退出系统！', '2011-05-09 23:14:00', '1');
INSERT INTO `sys_log` VALUES ('525', '系统管理员/admin 于 2011-05-09 23:17:13 退出系统！', '2011-05-09 23:17:00', '1');
INSERT INTO `sys_log` VALUES ('526', '系统管理员添加资源：新建资源,日期：Sun May 15 20:26:04 CST 2011', '2011-05-15 20:26:04', '1');
INSERT INTO `sys_log` VALUES ('527', '系统管理员/admin 于 2011-05-15 20:29:59 退出系统！', '2011-05-15 20:29:59', '1');
INSERT INTO `sys_log` VALUES ('528', '系统管理员/admin 于 2011-05-15 20:31:10 退出系统！', '2011-05-15 20:31:10', '1');
INSERT INTO `sys_log` VALUES ('529', '系统管理员/admin 于 2011-05-15 20:33:20 退出系统！', '2011-05-15 20:33:20', '1');
INSERT INTO `sys_log` VALUES ('530', '系统管理员/admin 于 2011-05-15 20:40:53 退出系统！', '2011-05-15 20:40:53', '1');
INSERT INTO `sys_log` VALUES ('531', '系统管理员/admin 于 2011-05-15 20:46:06 退出系统！', '2011-05-15 20:46:06', '1');
INSERT INTO `sys_log` VALUES ('532', '系统管理员/admin 于 2011-05-15 20:47:49 退出系统！', '2011-05-15 20:47:49', '1');
INSERT INTO `sys_log` VALUES ('533', '系统管理员/admin 于 2011-05-15 20:49:06 退出系统！', '2011-05-15 20:49:06', '1');
INSERT INTO `sys_log` VALUES ('534', '系统管理员/admin 于 2011-05-15 20:52:41 退出系统！', '2011-05-15 20:52:41', '1');
INSERT INTO `sys_log` VALUES ('535', '系统管理员/admin 于 2011-05-15 20:54:47 退出系统！', '2011-05-15 20:54:47', '1');
INSERT INTO `sys_log` VALUES ('536', '系统管理员/admin 于 2011-05-15 21:11:45 退出系统！', '2011-05-15 21:11:45', '1');
INSERT INTO `sys_log` VALUES ('537', '系统管理员/admin 于 2011-05-15 21:12:12 退出系统！', '2011-05-15 21:12:12', '1');
INSERT INTO `sys_log` VALUES ('538', '系统管理员/admin 于 2011-05-15 21:13:27 退出系统！', '2011-05-15 21:13:27', '1');
INSERT INTO `sys_log` VALUES ('539', '系统管理员/admin 于 2011-05-15 21:13:51 退出系统！', '2011-05-15 21:13:51', '1');
INSERT INTO `sys_log` VALUES ('540', '系统管理员/admin 于 2011-05-15 21:40:50 退出系统！', '2011-05-15 21:40:50', '1');
INSERT INTO `sys_log` VALUES ('541', '系统管理员/admin 于 2011-05-15 21:42:41 退出系统！', '2011-05-15 21:42:41', '1');
INSERT INTO `sys_log` VALUES ('542', '系统管理员/admin 于 2011-05-15 21:43:45 退出系统！', '2011-05-15 21:43:45', '1');
INSERT INTO `sys_log` VALUES ('543', '系统管理员/admin 于 2011-05-15 21:45:52 退出系统！', '2011-05-15 21:45:52', '1');
INSERT INTO `sys_log` VALUES ('544', '系统管理员/admin 于 2011-05-15 21:46:21 退出系统！', '2011-05-15 21:46:21', '1');
INSERT INTO `sys_log` VALUES ('545', '系统管理员/admin 于 2011-05-15 21:51:10 退出系统！', '2011-05-15 21:51:10', '1');
INSERT INTO `sys_log` VALUES ('546', '系统管理员/admin 于 2011-05-15 21:51:45 退出系统！', '2011-05-15 21:51:45', '1');
INSERT INTO `sys_log` VALUES ('547', '系统管理员/admin 于 2011-05-15 21:52:16 退出系统！', '2011-05-15 21:52:16', '1');
INSERT INTO `sys_log` VALUES ('548', '系统管理员/admin 于 2011-05-15 21:54:08 退出系统！', '2011-05-15 21:54:08', '1');
INSERT INTO `sys_log` VALUES ('549', '系统管理员/admin 于 2011-05-15 21:55:19 退出系统！', '2011-05-15 21:55:19', '1');
INSERT INTO `sys_log` VALUES ('550', '系统管理员/admin 于 2011-05-15 21:56:08 退出系统！', '2011-05-15 21:56:08', '1');
INSERT INTO `sys_log` VALUES ('551', '系统管理员/admin 于 2011-05-15 21:56:22 退出系统！', '2011-05-15 21:56:22', '1');
INSERT INTO `sys_log` VALUES ('552', '系统管理员/admin 于 2011-05-15 21:57:04 退出系统！', '2011-05-15 21:57:04', '1');
INSERT INTO `sys_log` VALUES ('553', '系统管理员/admin 于 2011-05-15 22:19:42 退出系统！', '2011-05-15 22:19:42', '1');
INSERT INTO `sys_log` VALUES ('554', '系统管理员/admin 于 2011-05-15 22:21:04 退出系统！', '2011-05-15 22:21:04', '1');
INSERT INTO `sys_log` VALUES ('555', '系统管理员/admin 于 2011-05-15 22:21:46 退出系统！', '2011-05-15 22:21:46', '1');
INSERT INTO `sys_log` VALUES ('556', '系统管理员/admin 于 2011-05-15 22:22:24 退出系统！', '2011-05-15 22:22:24', '1');
INSERT INTO `sys_log` VALUES ('557', '系统管理员/admin 于 2011-05-15 22:23:16 退出系统！', '2011-05-15 22:23:16', '1');
INSERT INTO `sys_log` VALUES ('558', '系统管理员/admin 于 2011-05-15 22:30:07 退出系统！', '2011-05-15 22:30:07', '1');
INSERT INTO `sys_log` VALUES ('559', '系统管理员修改资源：新建资源,日期：Sun May 15 22:32:53 CST 2011', '2011-05-15 22:32:53', '1');
INSERT INTO `sys_log` VALUES ('560', '系统管理员添加资源：新建资源,日期：Sun May 15 22:32:58 CST 2011', '2011-05-15 22:32:58', '1');
INSERT INTO `sys_log` VALUES ('561', '系统管理员删除资源：新建资源,日期：Sun May 15 22:33:08 CST 2011', '2011-05-15 22:33:08', '1');
INSERT INTO `sys_log` VALUES ('562', '系统管理员删除资源：新建资源,日期：Sun May 15 22:33:24 CST 2011', '2011-05-15 22:33:24', '1');
INSERT INTO `sys_log` VALUES ('563', '系统管理员/admin 于 2011-05-16 12:23:04 退出系统！', '2011-05-16 12:23:04', '1');
INSERT INTO `sys_log` VALUES ('564', '系统管理员/admin 于 2011-05-16 12:24:09 退出系统！', '2011-05-16 12:24:09', '1');
INSERT INTO `sys_log` VALUES ('565', '系统管理员/admin 于 2011-05-16 12:24:36 退出系统！', '2011-05-16 12:24:36', '1');
INSERT INTO `sys_log` VALUES ('566', '系统管理员/admin 于 2011-05-16 12:25:22 退出系统！', '2011-05-16 12:25:22', '1');
INSERT INTO `sys_log` VALUES ('567', '系统管理员/admin 于 2011-05-16 12:27:02 退出系统！', '2011-05-16 12:27:02', '1');
INSERT INTO `sys_log` VALUES ('568', '系统管理员/admin 于 2011-05-16 20:53:08 退出系统！', '2011-05-16 20:53:08', '1');
INSERT INTO `sys_log` VALUES ('569', '系统管理员/admin 于 2011-05-16 21:03:50 退出系统！', '2011-05-16 21:03:50', '1');
INSERT INTO `sys_log` VALUES ('570', '系统管理员/admin 于 2011-05-16 21:21:03 退出系统！', '2011-05-16 21:21:03', '1');
INSERT INTO `sys_log` VALUES ('571', '系统管理员/admin 于 2011-05-16 21:21:57 退出系统！', '2011-05-16 21:21:57', '1');
INSERT INTO `sys_log` VALUES ('572', '系统管理员/admin 于 2011-05-16 21:22:58 退出系统！', '2011-05-16 21:22:58', '1');
INSERT INTO `sys_log` VALUES ('573', '系统管理员/admin 于 2011-05-16 21:50:20 退出系统！', '2011-05-16 21:50:20', '1');
INSERT INTO `sys_log` VALUES ('574', '系统管理员/admin 于 2011-05-16 21:52:31 退出系统！', '2011-05-16 21:52:31', '1');
INSERT INTO `sys_log` VALUES ('575', '系统管理员/admin 于 2011-05-16 21:53:23 退出系统！', '2011-05-16 21:53:23', '1');
INSERT INTO `sys_log` VALUES ('576', '系统管理员/admin 于 2011-05-16 21:54:15 退出系统！', '2011-05-16 21:54:15', '1');
INSERT INTO `sys_log` VALUES ('577', '系统管理员/admin 于 2011-05-16 22:21:11 退出系统！', '2011-05-16 22:21:11', '1');
INSERT INTO `sys_log` VALUES ('578', '系统管理员/admin 于 2011-05-16 22:21:49 退出系统！', '2011-05-16 22:21:49', '1');
INSERT INTO `sys_log` VALUES ('579', '系统管理员/admin 于 2011-05-17 19:35:16 退出系统！', '2011-05-17 19:35:16', '1');
INSERT INTO `sys_log` VALUES ('580', '系统管理员/admin 于 2011-05-17 19:35:36 退出系统！', '2011-05-17 19:35:36', '1');
INSERT INTO `sys_log` VALUES ('581', '系统管理员/admin 于 2011-05-17 19:36:24 退出系统！', '2011-05-17 19:36:24', '1');
INSERT INTO `sys_log` VALUES ('582', '系统管理员/admin 于 2011-05-17 19:38:59 退出系统！', '2011-05-17 19:38:59', '1');
INSERT INTO `sys_log` VALUES ('583', '系统管理员/admin 于 2011-05-17 19:41:31 退出系统！', '2011-05-17 19:41:31', '1');
INSERT INTO `sys_log` VALUES ('584', '系统管理员/admin 于 2011-05-17 19:42:30 退出系统！', '2011-05-17 19:42:30', '1');
INSERT INTO `sys_log` VALUES ('585', '系统管理员/admin 于 2011-05-17 19:45:23 退出系统！', '2011-05-17 19:45:23', '1');
INSERT INTO `sys_log` VALUES ('586', '系统管理员/admin 于 2011-05-17 19:48:46 退出系统！', '2011-05-17 19:48:46', '1');
INSERT INTO `sys_log` VALUES ('587', '系统管理员/admin 于 2011-05-17 20:39:44 退出系统！', '2011-05-17 20:39:44', '1');
INSERT INTO `sys_log` VALUES ('588', '系统管理员/admin 于 2011-05-18 00:53:34 退出系统！', '2011-05-18 00:53:34', '1');
INSERT INTO `sys_log` VALUES ('589', '系统管理员/admin 于 2011-05-18 21:28:12 退出系统！', '2011-05-18 21:28:12', '1');
INSERT INTO `sys_log` VALUES ('590', '系统管理员修改资源：资源授权,日期：Thu May 19 22:24:25 CST 2011', '2011-05-19 22:24:25', '1');
INSERT INTO `sys_log` VALUES ('591', '系统管理员添加资源：null,日期：Thu May 19 22:27:58 CST 2011', '2011-05-19 22:27:58', '1');
INSERT INTO `sys_log` VALUES ('592', '系统管理员删除资源：null,日期：Thu May 19 22:28:21 CST 2011', '2011-05-19 22:28:21', '1');
INSERT INTO `sys_log` VALUES ('593', '系统管理员修改资源：部门管理,日期：Fri May 20 21:12:24 CST 2011', '2011-05-20 21:12:24', '1');
INSERT INTO `sys_log` VALUES ('594', '系统管理员修改资源：角色管理,日期：Sat May 21 20:53:02 CST 2011', '2011-05-21 20:53:02', '1');
INSERT INTO `sys_log` VALUES ('595', '系统管理员/admin 于 2011-05-21 20:53:55 退出系统！', '2011-05-21 20:53:55', '1');
INSERT INTO `sys_log` VALUES ('596', '系统管理员删除数据角色：系统管理员,日期：Sat May 21 21:30:19 CST 2011', '2011-05-21 21:30:19', '1');
INSERT INTO `sys_log` VALUES ('597', '系统管理员删除数据角色：系统发布人,日期：Sat May 21 21:30:55 CST 2011', '2011-05-21 21:30:55', '1');
INSERT INTO `sys_log` VALUES ('598', '系统管理员/admin 于 2011-05-21 21:48:12 退出系统！', '2011-05-21 21:48:12', '1');
INSERT INTO `sys_log` VALUES ('599', '系统管理员/admin 于 2011-05-21 21:49:11 退出系统！', '2011-05-21 21:49:11', '1');
INSERT INTO `sys_log` VALUES ('600', '系统管理员/admin 于 2011-05-21 21:55:23 退出系统！', '2011-05-21 21:55:23', '1');
INSERT INTO `sys_log` VALUES ('601', '系统管理员/admin 于 2011-05-21 21:55:40 退出系统！', '2011-05-21 21:55:40', '1');
INSERT INTO `sys_log` VALUES ('602', '系统管理员/admin 于 2011-05-21 21:56:05 退出系统！', '2011-05-21 21:56:05', '1');
INSERT INTO `sys_log` VALUES ('603', '系统管理员/admin 于 2011-05-21 21:56:43 退出系统！', '2011-05-21 21:56:43', '1');
INSERT INTO `sys_log` VALUES ('604', '系统管理员/admin 于 2011-05-21 21:57:37 退出系统！', '2011-05-21 21:57:37', '1');
INSERT INTO `sys_log` VALUES ('605', '系统管理员添加资源：新建资源,日期：Sat May 21 21:59:55 CST 2011', '2011-05-21 21:59:55', '1');
INSERT INTO `sys_log` VALUES ('606', '系统管理员删除资源：资源授权,日期：Sat May 21 21:59:59 CST 2011', '2011-05-21 21:59:59', '1');
INSERT INTO `sys_log` VALUES ('607', '系统管理员修改资源：资源授权,日期：Sat May 21 22:00:08 CST 2011', '2011-05-21 22:00:08', '1');
INSERT INTO `sys_log` VALUES ('608', '系统管理员/admin 于 2011-05-21 22:00:27 退出系统！', '2011-05-21 22:00:27', '1');
INSERT INTO `sys_log` VALUES ('609', '系统管理员修改资源：通用代码,日期：Sun May 22 16:19:02 CST 2011', '2011-05-22 16:19:02', '1');
INSERT INTO `sys_log` VALUES ('610', '系统管理员/admin 于 2011-05-22 16:19:17 退出系统！', '2011-05-22 16:19:17', '1');
INSERT INTO `sys_log` VALUES ('611', '系统管理员/admin 于 2011-05-22 16:23:31 退出系统！', '2011-05-22 16:23:31', '1');
INSERT INTO `sys_log` VALUES ('612', '系统管理员添加角色：1,日期：2011-55-22', '2011-05-22 16:55:00', '1');
INSERT INTO `sys_log` VALUES ('613', '系统管理员修改角色：1,日期：2011-06-22', '2011-05-22 18:06:07', '1');
INSERT INTO `sys_log` VALUES ('614', '系统管理员修改角色：1,日期：2011-08-22', '2011-05-22 18:08:09', '1');
INSERT INTO `sys_log` VALUES ('615', '系统管理员修改角色：系统工程师,日期：2011-08-22', '2011-05-22 18:08:09', '1');
INSERT INTO `sys_log` VALUES ('616', '系统管理员添加角色：系统数据库管理员,日期：2011-08-22', '2011-05-22 18:08:09', '1');
INSERT INTO `sys_log` VALUES ('617', '系统管理员修改角色：1,日期：2011-08-22', '2011-05-22 18:08:23', '1');
INSERT INTO `sys_log` VALUES ('618', '系统管理员修改角色：系统工程师,日期：2011-08-22', '2011-05-22 18:08:23', '1');
INSERT INTO `sys_log` VALUES ('619', '系统管理员添加角色：系统数据库管理员,日期：2011-08-22', '2011-05-22 18:08:23', '1');
INSERT INTO `sys_log` VALUES ('620', '系统管理员添加角色：2,日期：2011-08-22', '2011-05-22 18:08:23', '1');
INSERT INTO `sys_log` VALUES ('621', '系统管理员删除数据角色：2,日期：Sun May 22 18:08:32 CST 2011', '2011-05-22 18:08:32', '1');
INSERT INTO `sys_log` VALUES ('622', '系统管理员删除数据角色：系统数据库管理员,日期：Sun May 22 18:08:57 CST 2011', '2011-05-22 18:08:57', '1');
INSERT INTO `sys_log` VALUES ('623', '系统管理员修改角色：1,日期：2011-09-22', '2011-05-22 18:09:12', '1');
INSERT INTO `sys_log` VALUES ('624', '系统管理员修改角色：系统工程师,日期：2011-09-22', '2011-05-22 18:09:12', '1');
INSERT INTO `sys_log` VALUES ('625', '系统管理员添加角色：系统数据库管理员,日期：2011-09-22', '2011-05-22 18:09:12', '1');
INSERT INTO `sys_log` VALUES ('626', '系统管理员添加角色：2,日期：2011-09-22', '2011-05-22 18:09:12', '1');
INSERT INTO `sys_log` VALUES ('627', '系统管理员添加角色：1,日期：2011-09-22', '2011-05-22 18:09:12', '1');
INSERT INTO `sys_log` VALUES ('628', '系统管理员删除数据角色：2,日期：Sun May 22 18:09:23 CST 2011', '2011-05-22 18:09:23', '1');
INSERT INTO `sys_log` VALUES ('629', '系统管理员删除数据角色：1,日期：Sun May 22 18:09:23 CST 2011', '2011-05-22 18:09:23', '1');
INSERT INTO `sys_log` VALUES ('630', '系统管理员删除数据角色：系统数据库管理员,日期：Sun May 22 18:09:27 CST 2011', '2011-05-22 18:09:27', '1');
INSERT INTO `sys_log` VALUES ('631', '系统管理员添加角色：1,日期：2011-10-22', '2011-05-22 18:10:28', '1');
INSERT INTO `sys_log` VALUES ('632', '系统管理员添加角色：1,日期：2011-10-22', '2011-05-22 18:10:38', '1');
INSERT INTO `sys_log` VALUES ('633', '系统管理员添加角色：2,日期：2011-10-22', '2011-05-22 18:10:38', '1');
INSERT INTO `sys_log` VALUES ('634', '系统管理员添加角色：1,日期：2011-10-22', '2011-05-22 18:10:58', '1');
INSERT INTO `sys_log` VALUES ('635', '系统管理员添加角色：2,日期：2011-10-22', '2011-05-22 18:10:58', '1');
INSERT INTO `sys_log` VALUES ('636', '系统管理员添加角色：3,日期：2011-10-22', '2011-05-22 18:10:58', '1');
INSERT INTO `sys_log` VALUES ('637', '系统管理员删除数据角色：2,日期：Sun May 22 18:11:10 CST 2011', '2011-05-22 18:11:10', '1');
INSERT INTO `sys_log` VALUES ('638', '系统管理员删除数据角色：2,日期：Sun May 22 18:11:10 CST 2011', '2011-05-22 18:11:10', '1');
INSERT INTO `sys_log` VALUES ('639', '系统管理员删除数据角色：3,日期：Sun May 22 18:11:10 CST 2011', '2011-05-22 18:11:10', '1');
INSERT INTO `sys_log` VALUES ('640', '系统管理员删除数据角色：1,日期：Sun May 22 18:11:10 CST 2011', '2011-05-22 18:11:10', '1');
INSERT INTO `sys_log` VALUES ('641', '系统管理员删除数据角色：1,日期：Sun May 22 18:11:10 CST 2011', '2011-05-22 18:11:10', '1');
INSERT INTO `sys_log` VALUES ('642', '系统管理员删除数据角色：1,日期：Sun May 22 18:11:10 CST 2011', '2011-05-22 18:11:10', '1');
INSERT INTO `sys_log` VALUES ('643', '系统管理员添加角色：1,日期：2011-13-22', '2011-05-22 18:13:18', '1');
INSERT INTO `sys_log` VALUES ('644', '系统管理员添加角色：1,日期：2011-13-22', '2011-05-22 18:13:26', '1');
INSERT INTO `sys_log` VALUES ('645', '系统管理员添加角色：2,日期：2011-13-22', '2011-05-22 18:13:26', '1');
INSERT INTO `sys_log` VALUES ('646', '系统管理员删除数据角色：2,日期：Sun May 22 18:13:34 CST 2011', '2011-05-22 18:13:34', '1');
INSERT INTO `sys_log` VALUES ('647', '系统管理员删除数据角色：1,日期：Sun May 22 18:13:34 CST 2011', '2011-05-22 18:13:34', '1');
INSERT INTO `sys_log` VALUES ('648', '系统管理员删除数据角色：1,日期：Sun May 22 18:13:34 CST 2011', '2011-05-22 18:13:34', '1');
INSERT INTO `sys_log` VALUES ('649', '系统管理员添加角色：1,日期：2011-14-22', '2011-05-22 18:14:51', '1');
INSERT INTO `sys_log` VALUES ('650', '系统管理员添加角色：1,日期：2011-14-22', '2011-05-22 18:14:58', '1');
INSERT INTO `sys_log` VALUES ('651', '系统管理员添加角色：2,日期：2011-14-22', '2011-05-22 18:14:58', '1');
INSERT INTO `sys_log` VALUES ('652', '系统管理员删除数据角色：1,日期：Sun May 22 18:15:09 CST 2011', '2011-05-22 18:15:09', '1');
INSERT INTO `sys_log` VALUES ('653', '系统管理员删除数据角色：1,日期：Sun May 22 18:15:09 CST 2011', '2011-05-22 18:15:09', '1');
INSERT INTO `sys_log` VALUES ('654', '系统管理员删除数据角色：2,日期：Sun May 22 18:15:09 CST 2011', '2011-05-22 18:15:09', '1');
INSERT INTO `sys_log` VALUES ('655', '系统管理员添加角色：1,日期：2011-15-22', '2011-05-22 18:15:52', '1');
INSERT INTO `sys_log` VALUES ('656', '系统管理员添加角色：1,日期：2011-15-22', '2011-05-22 18:15:52', '1');
INSERT INTO `sys_log` VALUES ('657', '系统管理员删除数据角色：1,日期：Sun May 22 18:16:12 CST 2011', '2011-05-22 18:16:12', '1');
INSERT INTO `sys_log` VALUES ('658', '系统管理员删除数据角色：1,日期：Sun May 22 18:16:12 CST 2011', '2011-05-22 18:16:12', '1');
INSERT INTO `sys_log` VALUES ('659', '系统管理员添加角色：1,日期：2011-18-22', '2011-05-22 18:18:51', '1');
INSERT INTO `sys_log` VALUES ('660', '系统管理员添加角色：1,日期：2011-18-22', '2011-05-22 18:18:57', '1');
INSERT INTO `sys_log` VALUES ('661', '系统管理员删除数据角色：1,日期：Sun May 22 18:19:07 CST 2011', '2011-05-22 18:19:07', '1');
INSERT INTO `sys_log` VALUES ('662', '系统管理员删除数据角色：1,日期：Sun May 22 18:19:07 CST 2011', '2011-05-22 18:19:07', '1');
INSERT INTO `sys_log` VALUES ('663', '系统管理员添加角色：1,日期：2011-19-22', '2011-05-22 18:19:44', '1');
INSERT INTO `sys_log` VALUES ('664', '系统管理员删除数据角色：1,日期：Sun May 22 18:19:49 CST 2011', '2011-05-22 18:19:49', '1');
INSERT INTO `sys_log` VALUES ('665', '系统管理员修改数据字典：PANEL,日期：2011-05-22', '2011-05-22 18:34:27', '1');
INSERT INTO `sys_log` VALUES ('666', '系统管理员修改数据字典：LEAF,日期：2011-05-22', '2011-05-22 18:34:37', '1');
INSERT INTO `sys_log` VALUES ('667', '系统管理员/admin 于 2011-05-22 18:48:16 退出系统！', '2011-05-22 18:48:16', '1');
INSERT INTO `sys_log` VALUES ('668', '系统管理员/admin 于 2011-05-22 18:48:45 退出系统！', '2011-05-22 18:48:45', '1');
INSERT INTO `sys_log` VALUES ('669', '系统管理员/admin 于 2011-05-22 18:49:10 退出系统！', '2011-05-22 18:49:10', '1');
INSERT INTO `sys_log` VALUES ('670', '系统管理员修改资源：资源授权,日期：Sun May 22 19:28:11 CST 2011', '2011-05-22 19:28:11', '1');
INSERT INTO `sys_log` VALUES ('671', '系统管理员/admin 于 2011-05-22 19:28:18 退出系统！', '2011-05-22 19:28:18', '1');
INSERT INTO `sys_log` VALUES ('672', '系统管理员/admin 于 2011-05-22 19:28:31 退出系统！', '2011-05-22 19:28:31', '1');
INSERT INTO `sys_log` VALUES ('673', '系统管理员/admin 于 2011-05-22 19:29:02 退出系统！', '2011-05-22 19:29:02', '1');
INSERT INTO `sys_log` VALUES ('674', '系统管理员/admin 于 2011-05-22 19:42:37 退出系统！', '2011-05-22 19:42:37', '1');
INSERT INTO `sys_log` VALUES ('675', '系统管理员修改资源：通用代码,日期：Sun May 22 22:59:00 CST 2011', '2011-05-22 22:59:00', '1');
INSERT INTO `sys_log` VALUES ('676', '系统管理员/admin 于 2011-05-22 22:59:18 退出系统！', '2011-05-22 22:59:18', '1');
INSERT INTO `sys_log` VALUES ('677', '系统管理员修改资源：资源管理,日期：Sun May 22 23:14:34 CST 2011', '2011-05-22 23:14:34', '1');
INSERT INTO `sys_log` VALUES ('678', '系统管理员修改资源：资源列表,日期：Sun May 22 23:14:41 CST 2011', '2011-05-22 23:14:41', '1');
INSERT INTO `sys_log` VALUES ('679', '系统管理员修改资源：资源列表,日期：Tue May 24 20:28:58 CST 2011', '2011-05-24 20:28:58', '1');
INSERT INTO `sys_log` VALUES ('680', '系统管理员/admin 于 2011-05-24 20:29:13 退出系统！', '2011-05-24 20:29:13', '1');
INSERT INTO `sys_log` VALUES ('681', '系统管理员修改资源：通用代码,日期：Tue May 24 20:37:57 CST 2011', '2011-05-24 20:37:57', '1');
INSERT INTO `sys_log` VALUES ('682', '系统管理员/admin 于 2011-05-24 20:38:02 退出系统！', '2011-05-24 20:38:02', '1');
INSERT INTO `sys_log` VALUES ('683', '系统管理员添加角色：1,日期：2011-14-24', '2011-05-24 21:14:32', '1');
INSERT INTO `sys_log` VALUES ('684', '系统管理员删除数据角色：1,日期：Tue May 24 21:14:36 CST 2011', '2011-05-24 21:14:36', '1');
INSERT INTO `sys_log` VALUES ('685', '系统管理员添加角色：1,日期：2011-16-24', '2011-05-24 21:16:28', '1');
INSERT INTO `sys_log` VALUES ('686', '系统管理员删除数据角色：1,日期：Tue May 24 21:16:33 CST 2011', '2011-05-24 21:16:33', '1');
INSERT INTO `sys_log` VALUES ('687', '系统管理员添加角色：1,日期：2011-18-24', '2011-05-24 21:18:23', '1');
INSERT INTO `sys_log` VALUES ('688', '系统管理员删除数据角色：1,日期：Tue May 24 21:18:28 CST 2011', '2011-05-24 21:18:28', '1');
INSERT INTO `sys_log` VALUES ('689', '系统管理员修改数据字典：1,日期：2011-19-24', '2011-05-24 21:19:37', '1');
INSERT INTO `sys_log` VALUES ('690', '系统管理员删除数据字典：1,日期：Tue May 24 21:19:42 CST 2011', '2011-05-24 21:19:42', '1');
INSERT INTO `sys_log` VALUES ('691', '系统管理员添加资源：1,日期：2011-20-24', '2011-05-24 21:20:23', '1');
INSERT INTO `sys_log` VALUES ('692', '系统管理员删除资源：1,日期：Tue May 24 21:20:32 CST 2011', '2011-05-24 21:20:32', '1');
INSERT INTO `sys_log` VALUES ('693', '系统管理员添加角色：1,日期：2011-35-24', '2011-05-24 21:35:53', '1');
INSERT INTO `sys_log` VALUES ('694', '系统管理员修改角色：2,日期：2011-50-24', '2011-05-24 21:50:39', '1');
INSERT INTO `sys_log` VALUES ('695', '系统管理员修改角色：3,日期：2011-51-24', '2011-05-24 21:51:02', '1');
INSERT INTO `sys_log` VALUES ('696', '系统管理员添加角色：1,日期：2011-52-24', '2011-05-24 21:52:03', '1');
INSERT INTO `sys_log` VALUES ('697', '系统管理员修改角色：2,日期：2011-52-24', '2011-05-24 21:52:41', '1');
INSERT INTO `sys_log` VALUES ('698', '系统管理员修改角色：3,日期：2011-54-24', '2011-05-24 21:54:19', '1');
INSERT INTO `sys_log` VALUES ('699', '系统管理员修改角色：1,日期：2011-54-24', '2011-05-24 21:54:42', '1');
INSERT INTO `sys_log` VALUES ('700', '系统管理员修改角色：55,日期：2011-55-24', '2011-05-24 21:55:00', '1');
INSERT INTO `sys_log` VALUES ('701', '系统管理员修改角色：5555,日期：2011-55-24', '2011-05-24 21:55:25', '1');
INSERT INTO `sys_log` VALUES ('702', '系统管理员删除数据角色：55,日期：Tue May 24 21:55:33 CST 2011', '2011-05-24 21:55:33', '1');
INSERT INTO `sys_log` VALUES ('703', '系统管理员删除数据角色：5555,日期：Tue May 24 21:55:33 CST 2011', '2011-05-24 21:55:33', '1');
INSERT INTO `sys_log` VALUES ('704', '系统管理员添加角色：1,日期：2011-58-24', '2011-05-24 21:58:45', '1');
INSERT INTO `sys_log` VALUES ('705', '系统管理员修改角色：2,日期：2011-59-24', '2011-05-24 21:59:03', '1');
INSERT INTO `sys_log` VALUES ('706', '系统管理员修改角色：3,日期：2011-59-24', '2011-05-24 21:59:43', '1');
INSERT INTO `sys_log` VALUES ('707', '系统管理员添加角色：1,日期：2011-00-24', '2011-05-24 22:00:03', '1');
INSERT INTO `sys_log` VALUES ('708', '系统管理员删除数据角色：3,日期：Tue May 24 22:00:18 CST 2011', '2011-05-24 22:00:18', '1');
INSERT INTO `sys_log` VALUES ('709', '系统管理员删除数据角色：1,日期：Tue May 24 22:00:18 CST 2011', '2011-05-24 22:00:18', '1');
INSERT INTO `sys_log` VALUES ('710', '系统管理员添加角色：1,日期：2011-03-24', '2011-05-24 22:03:46', '1');
INSERT INTO `sys_log` VALUES ('711', '系统管理员修改角色：12,日期：2011-04-24', '2011-05-24 22:04:04', '1');
INSERT INTO `sys_log` VALUES ('712', '系统管理员删除数据角色：12,日期：Tue May 24 22:05:06 CST 2011', '2011-05-24 22:05:06', '1');
INSERT INTO `sys_log` VALUES ('713', '系统管理员添加角色：2,日期：2011-05-24', '2011-05-24 22:05:47', '1');
INSERT INTO `sys_log` VALUES ('714', '系统管理员删除数据角色：2,日期：Tue May 24 22:05:58 CST 2011', '2011-05-24 22:05:58', '1');
INSERT INTO `sys_log` VALUES ('715', '系统管理员/admin 于 2011-05-24 22:09:08 退出系统！', '2011-05-24 22:09:08', '1');
INSERT INTO `sys_log` VALUES ('716', '系统管理员修改数据字典：1,日期：2011-53-25', '2011-05-25 13:53:09', '1');
INSERT INTO `sys_log` VALUES ('717', '系统管理员删除数据字典：1,日期：Wed May 25 13:53:17 CST 2011', '2011-05-25 13:53:17', '1');
INSERT INTO `sys_log` VALUES ('718', '系统管理员添加资源：角色与资源,日期：Wed May 25 19:51:54 CST 2011', '2011-05-25 19:51:54', '1');
INSERT INTO `sys_log` VALUES ('719', '系统管理员/admin 于 2011-05-25 19:52:13 退出系统！', '2011-05-25 19:52:13', '1');
INSERT INTO `sys_log` VALUES ('720', '系统用户/user 于 2011-05-25 22:49:53 退出系统！', '2011-05-25 22:49:53', '2');
INSERT INTO `sys_log` VALUES ('721', '系统管理员修改数据字典：1,日期：2011-59-25', '2011-05-25 22:59:48', '1');
INSERT INTO `sys_log` VALUES ('722', '系统管理员删除数据字典：1,日期：Wed May 25 23:00:02 CST 2011', '2011-05-25 23:00:02', '1');
INSERT INTO `sys_log` VALUES ('723', '系统用户/user 于 2011-05-25 23:03:55 退出系统！', '2011-05-25 23:03:55', '2');
INSERT INTO `sys_log` VALUES ('724', '系统管理员/admin 于 2011-05-25 23:03:59 退出系统！', '2011-05-25 23:03:59', '1');
INSERT INTO `sys_log` VALUES ('725', '系统管理员修改资源：通用代码,日期：Thu May 26 12:18:57 CST 2011', '2011-05-26 12:18:57', '1');
INSERT INTO `sys_log` VALUES ('726', '系统管理员修改资源：通用代码,日期：Thu May 26 12:40:43 CST 2011', '2011-05-26 12:40:43', '1');
INSERT INTO `sys_log` VALUES ('727', '系统管理员修改资源：通用代码,日期：Thu May 26 12:40:43 CST 2011', '2011-05-26 12:40:43', '1');
INSERT INTO `sys_log` VALUES ('728', '系统管理员添加角色：1,日期：2011-56-26', '2011-05-26 13:56:32', '1');
INSERT INTO `sys_log` VALUES ('729', '系统管理员删除数据角色：1,日期：Thu May 26 13:56:57 CST 2011', '2011-05-26 13:56:57', '1');
INSERT INTO `sys_log` VALUES ('730', '系统管理员/admin 于 2011-05-26 14:02:37 退出系统！', '2011-05-26 14:02:37', '1');
INSERT INTO `sys_log` VALUES ('731', '系统管理员修改资源：通用代码,日期：Thu May 26 23:01:17 CST 2011', '2011-05-26 23:01:17', '1');
INSERT INTO `sys_log` VALUES ('732', '系统管理员添加角色：1,日期：2011-01-26', '2011-05-26 23:01:56', '1');
INSERT INTO `sys_log` VALUES ('733', '系统管理员删除数据角色：1,日期：Thu May 26 23:02:04 CST 2011', '2011-05-26 23:02:04', '1');
INSERT INTO `sys_log` VALUES ('734', '系统管理员/admin 于 2011-05-26 23:13:50 退出系统！', '2011-05-26 23:13:50', '1');
INSERT INTO `sys_log` VALUES ('735', '系统管理员/admin 于 2011-05-26 23:24:29 退出系统！', '2011-05-26 23:24:29', '1');
INSERT INTO `sys_log` VALUES ('736', '系统管理员添加角色：1,日期：2011-42-26', '2011-05-26 23:42:10', '1');
INSERT INTO `sys_log` VALUES ('737', '系统管理员删除数据角色：1,日期：Thu May 26 23:42:17 CST 2011', '2011-05-26 23:42:17', '1');
INSERT INTO `sys_log` VALUES ('738', '系统管理员/admin 于 2011-05-26 23:46:26 退出系统！', '2011-05-26 23:46:26', '1');
INSERT INTO `sys_log` VALUES ('739', '系统用户/user 于 2011-05-26 23:50:51 退出系统！', '2011-05-26 23:50:51', '2');
INSERT INTO `sys_log` VALUES ('740', '系统管理员添加角色：1,日期：2011-37-27', '2011-05-27 00:37:51', '1');
INSERT INTO `sys_log` VALUES ('741', '系统管理员删除数据角色：1,日期：Fri May 27 12:57:59 CST 2011', '2011-05-27 12:57:59', '1');
INSERT INTO `sys_log` VALUES ('742', '系统管理员添加资源：系统信息,日期：Fri May 27 20:52:24 CST 2011', '2011-05-27 20:52:24', '1');
INSERT INTO `sys_log` VALUES ('743', '系统管理员修改资源：资源授权角色,日期：Fri May 27 20:53:13 CST 2011', '2011-05-27 20:53:13', '1');
INSERT INTO `sys_log` VALUES ('744', '系统管理员修改资源：角色授权资源,日期：Fri May 27 20:53:22 CST 2011', '2011-05-27 20:53:22', '1');
INSERT INTO `sys_log` VALUES ('745', '系统管理员修改资源：资源管理,日期：Fri May 27 20:53:32 CST 2011', '2011-05-27 20:53:32', '1');
INSERT INTO `sys_log` VALUES ('746', '系统管理员添加资源：权限控制,日期：Fri May 27 20:55:13 CST 2011', '2011-05-27 20:55:13', '1');
INSERT INTO `sys_log` VALUES ('747', '系统管理员修改资源：资源授权角色,日期：Fri May 27 20:55:25 CST 2011', '2011-05-27 20:55:25', '1');
INSERT INTO `sys_log` VALUES ('748', '系统管理员修改资源：资源授权角色,日期：Fri May 27 20:56:18 CST 2011', '2011-05-27 20:56:18', '1');
INSERT INTO `sys_log` VALUES ('749', '系统管理员修改资源：资源授权角色,日期：Fri May 27 20:56:18 CST 2011', '2011-05-27 20:56:18', '1');
INSERT INTO `sys_log` VALUES ('750', '系统管理员/admin 于 2011-05-27 20:58:12 退出系统！', '2011-05-27 20:58:12', '1');
INSERT INTO `sys_log` VALUES ('751', '系统管理员修改资源：资源综合管理,日期：Fri May 27 21:01:12 CST 2011', '2011-05-27 21:01:12', '1');
INSERT INTO `sys_log` VALUES ('752', '系统管理员修改资源：角色授权资源,日期：Fri May 27 21:01:28 CST 2011', '2011-05-27 21:01:28', '1');
INSERT INTO `sys_log` VALUES ('753', '系统管理员/admin 于 2011-05-27 21:04:29 退出系统！', '2011-05-27 21:04:29', '1');
INSERT INTO `sys_log` VALUES ('754', '系统管理员/admin 于 2011-05-27 21:33:39 退出系统！', '2011-05-27 21:33:39', '1');
INSERT INTO `sys_log` VALUES ('755', '系统管理员/admin 于 2011-05-27 21:33:51 退出系统！', '2011-05-27 21:33:51', '1');
INSERT INTO `sys_log` VALUES ('756', '系统管理员/admin 于 2011-05-27 21:35:15 退出系统！', '2011-05-27 21:35:15', '1');
INSERT INTO `sys_log` VALUES ('757', '系统管理员/admin 于 2011-05-27 21:36:08 退出系统！', '2011-05-27 21:36:08', '1');
INSERT INTO `sys_log` VALUES ('758', '系统管理员/admin 于 2011-05-27 21:36:55 退出系统！', '2011-05-27 21:36:55', '1');
INSERT INTO `sys_log` VALUES ('759', '系统管理员/admin 于 2011-05-27 21:38:32 退出系统！', '2011-05-27 21:38:32', '1');
INSERT INTO `sys_log` VALUES ('760', '系统管理员/admin 于 2011-05-27 21:42:27 退出系统！', '2011-05-27 21:42:27', '1');
INSERT INTO `sys_log` VALUES ('761', '系统管理员/admin 于 2011-05-27 21:54:28 退出系统！', '2011-05-27 21:54:28', '1');
INSERT INTO `sys_log` VALUES ('762', '系统管理员/admin 于 2011-05-27 21:55:37 退出系统！', '2011-05-27 21:55:37', '1');
INSERT INTO `sys_log` VALUES ('763', '系统管理员添加资源：服务器监控,日期：Sun May 29 13:14:23 CST 2011', '2011-05-29 13:14:23', '1');
INSERT INTO `sys_log` VALUES ('764', '系统管理员添加资源：网络监控,日期：Sun May 29 13:14:40 CST 2011', '2011-05-29 13:14:40', '1');
INSERT INTO `sys_log` VALUES ('765', '系统管理员添加资源：Java平台监控,日期：Sun May 29 13:14:52 CST 2011', '2011-05-29 13:14:52', '1');
INSERT INTO `sys_log` VALUES ('766', '系统管理员添加资源：数据库监控,日期：Sun May 29 13:15:10 CST 2011', '2011-05-29 13:15:10', '1');
INSERT INTO `sys_log` VALUES ('767', '系统管理员修改资源：网络状态监控,日期：Sun May 29 13:15:35 CST 2011', '2011-05-29 13:15:35', '1');
INSERT INTO `sys_log` VALUES ('768', '系统管理员修改资源：系统信息监控,日期：Sun May 29 13:16:10 CST 2011', '2011-05-29 13:16:10', '1');
INSERT INTO `sys_log` VALUES ('769', '系统管理员修改资源：系统信息,日期：Sun May 29 13:17:15 CST 2011', '2011-05-29 13:17:15', '1');
INSERT INTO `sys_log` VALUES ('770', '系统管理员修改资源：服务器信息,日期：Sun May 29 13:17:21 CST 2011', '2011-05-29 13:17:21', '1');
INSERT INTO `sys_log` VALUES ('771', '系统管理员修改资源：数据库信息,日期：Sun May 29 13:17:27 CST 2011', '2011-05-29 13:17:27', '1');
INSERT INTO `sys_log` VALUES ('772', '系统管理员修改资源：Java平台,日期：Sun May 29 13:17:31 CST 2011', '2011-05-29 13:17:31', '1');
INSERT INTO `sys_log` VALUES ('773', '系统管理员修改资源：网络状态,日期：Sun May 29 13:17:35 CST 2011', '2011-05-29 13:17:35', '1');
INSERT INTO `sys_log` VALUES ('774', '系统管理员添加资源：系统工具,日期：Sun May 29 13:17:48 CST 2011', '2011-05-29 13:17:48', '1');
INSERT INTO `sys_log` VALUES ('775', '系统管理员修改资源：系统日志,日期：Sun May 29 13:18:56 CST 2011', '2011-05-29 13:18:56', '1');
INSERT INTO `sys_log` VALUES ('776', '系统管理员添加资源：系统操作日志,日期：Sun May 29 13:19:28 CST 2011', '2011-05-29 13:19:28', '1');
INSERT INTO `sys_log` VALUES ('777', '系统管理员修改资源：系统运行日志,日期：Sun May 29 13:19:35 CST 2011', '2011-05-29 13:19:35', '1');
INSERT INTO `sys_log` VALUES ('778', '系统管理员添加资源：Action列表,日期：Sun May 29 13:20:47 CST 2011', '2011-05-29 13:20:47', '1');
INSERT INTO `sys_log` VALUES ('779', '系统管理员修改资源：StrutsAction列表,日期：Sun May 29 13:20:54 CST 2011', '2011-05-29 13:20:54', '1');
INSERT INTO `sys_log` VALUES ('780', '系统管理员添加资源：SpringBean列表,日期：Sun May 29 13:21:11 CST 2011', '2011-05-29 13:21:11', '1');
INSERT INTO `sys_log` VALUES ('781', '系统管理员修改资源：系统网络状态,日期：Sun May 29 13:21:43 CST 2011', '2011-05-29 13:21:43', '1');
INSERT INTO `sys_log` VALUES ('782', '系统管理员修改资源：Java平台信息,日期：Sun May 29 13:22:00 CST 2011', '2011-05-29 13:22:00', '1');
INSERT INTO `sys_log` VALUES ('783', '系统管理员修改资源：系统运行信息,日期：Sun May 29 13:22:46 CST 2011', '2011-05-29 13:22:46', '1');
INSERT INTO `sys_log` VALUES ('784', '系统管理员修改资源：系统基础数据,日期：Sun May 29 13:28:56 CST 2011', '2011-05-29 13:28:56', '1');
INSERT INTO `sys_log` VALUES ('785', '系统管理员修改资源：系统权限控制,日期：Sun May 29 13:29:04 CST 2011', '2011-05-29 13:29:04', '1');
INSERT INTO `sys_log` VALUES ('786', '系统管理员修改资源：服务器信息,日期：Sun May 29 17:31:59 CST 2011', '2011-05-29 17:31:59', '1');
INSERT INTO `sys_log` VALUES ('787', '系统管理员修改资源：服务器运行监控,日期：Mon May 30 21:23:40 CST 2011', '2011-05-30 21:23:40', '1');
INSERT INTO `sys_log` VALUES ('788', '系统管理员修改资源：系统运行监控,日期：Tue May 31 20:48:44 CST 2011', '2011-05-31 20:48:44', '1');
INSERT INTO `sys_log` VALUES ('789', '系统管理员删除资源：系统网络状态,日期：Tue May 31 20:48:47 CST 2011', '2011-05-31 20:48:47', '1');
INSERT INTO `sys_log` VALUES ('790', '系统管理员删除资源：Java平台信息,日期：Tue May 31 20:48:50 CST 2011', '2011-05-31 20:48:50', '1');
INSERT INTO `sys_log` VALUES ('791', '系统管理员删除资源：数据库信息,日期：Tue May 31 20:48:54 CST 2011', '2011-05-31 20:48:54', '1');
INSERT INTO `sys_log` VALUES ('792', '系统管理员修改资源：SpringBean列表,日期：Tue May 31 22:46:35 CST 2011', '2011-05-31 22:46:35', '1');
INSERT INTO `sys_log` VALUES ('793', '系统管理员/admin 于 2011-06-07 15:23:06 退出系统！', '2011-06-07 15:23:06', '1');
INSERT INTO `sys_log` VALUES ('794', '系统管理员/admin 于 2011-06-07 15:51:04 退出系统！', '2011-06-07 15:51:04', '1');
INSERT INTO `sys_log` VALUES ('795', '系统管理员/admin 于 2011-06-13 21:47:28 退出系统！', '2011-06-13 21:47:28', '1');
INSERT INTO `sys_log` VALUES ('796', '系统管理员修改资源：基础数据,日期：Mon Jun 20 19:23:11 CST 2011', '2011-06-20 19:23:11', '1');
INSERT INTO `sys_log` VALUES ('797', '系统管理员修改资源：系统资源,日期：Mon Jun 20 19:23:22 CST 2011', '2011-06-20 19:23:22', '1');
INSERT INTO `sys_log` VALUES ('798', '系统管理员修改资源：系统角色,日期：Mon Jun 20 19:23:30 CST 2011', '2011-06-20 19:23:30', '1');
INSERT INTO `sys_log` VALUES ('799', '系统管理员修改资源：运行监控,日期：Mon Jun 20 19:23:45 CST 2011', '2011-06-20 19:23:45', '1');
INSERT INTO `sys_log` VALUES ('800', '系统管理员修改资源：运行信息,日期：Mon Jun 20 19:23:54 CST 2011', '2011-06-20 19:23:54', '1');
INSERT INTO `sys_log` VALUES ('801', '系统管理员添加资源：系统日志,日期：Mon Jun 20 19:24:09 CST 2011', '2011-06-20 19:24:09', '1');
INSERT INTO `sys_log` VALUES ('802', '系统管理员修改资源：运行日志,日期：Mon Jun 20 19:24:17 CST 2011', '2011-06-20 19:24:17', '1');
INSERT INTO `sys_log` VALUES ('803', '系统管理员修改资源：操作日志,日期：Mon Jun 20 19:24:21 CST 2011', '2011-06-20 19:24:21', '1');
INSERT INTO `sys_log` VALUES ('804', '系统管理员修改资源：权限控制,日期：Mon Jun 20 19:24:29 CST 2011', '2011-06-20 19:24:29', '1');
INSERT INTO `sys_log` VALUES ('805', '系统管理员修改资源：角色授权,日期：Mon Jun 20 19:24:32 CST 2011', '2011-06-20 19:24:32', '1');
INSERT INTO `sys_log` VALUES ('806', '系统管理员修改资源：资源管理,日期：Mon Jun 20 19:24:36 CST 2011', '2011-06-20 19:24:36', '1');
INSERT INTO `sys_log` VALUES ('807', '系统管理员添加资源：系统组件,日期：Mon Jun 20 19:25:47 CST 2011', '2011-06-20 19:25:47', '1');
INSERT INTO `sys_log` VALUES ('808', '系统管理员添加资源：123,日期：Fri Aug 05 21:51:11 CST 2011', '2011-08-05 21:51:11', '1');
INSERT INTO `sys_log` VALUES ('809', '系统管理员删除资源：123,日期：Fri Aug 05 21:51:51 CST 2011', '2011-08-05 21:51:51', '1');
INSERT INTO `sys_log` VALUES ('810', '系统管理员修改资源：运行信息,日期：Fri Aug 05 21:52:22 CST 2011', '2011-08-05 21:52:22', '1');
INSERT INTO `sys_log` VALUES ('811', '系统管理员/admin 于 2011-08-05 22:55:00 退出系统！', '2011-08-05 22:55:00', '1');
INSERT INTO `sys_log` VALUES ('812', '系统管理员/admin 于 2011-08-05 23:23:34 退出系统！', '2011-08-05 23:23:34', '1');
INSERT INTO `sys_log` VALUES ('813', '系统管理员/admin 于 2011-08-13 21:18:03 退出系统！', '2011-08-13 21:18:03', '1');
INSERT INTO `sys_log` VALUES ('814', '系统管理员/admin 于 2011-08-18 20:28:30 退出系统！', '2011-08-18 20:28:30', '1');
INSERT INTO `sys_log` VALUES ('815', '系统管理员/admin 于 2011-08-20 22:01:31 退出系统！', '2011-08-20 22:01:31', '1');
INSERT INTO `sys_log` VALUES ('816', '系统管理员删除资源：部门管理,日期：Mon Sep 19 22:49:31 CST 2011', '2011-09-19 22:49:31', '1');
INSERT INTO `sys_log` VALUES ('817', '系统管理员/admin 于 2011-09-20 21:54:18 退出系统！', '2011-09-20 21:54:18', '1');
INSERT INTO `sys_log` VALUES ('818', '系统管理员/admin 于 2011-09-21 21:23:31 退出系统！', '2011-09-21 21:23:31', '1');
INSERT INTO `sys_log` VALUES ('819', '系统管理员/admin 于 2011-09-21 21:23:48 退出系统！', '2011-09-21 21:23:48', '1');
INSERT INTO `sys_log` VALUES ('820', '系统管理员/admin 于 2011-09-21 21:24:00 退出系统！', '2011-09-21 21:24:00', '1');
INSERT INTO `sys_log` VALUES ('821', '系统管理员/admin 于 2011-09-21 21:24:26 退出系统！', '2011-09-21 21:24:26', '1');
INSERT INTO `sys_log` VALUES ('822', '系统管理员添加资源：null,日期：2011-42-21', '2011-09-21 21:42:09', '1');
INSERT INTO `sys_log` VALUES ('823', '系统管理员删除资源：null,日期：Wed Sep 21 21:42:57 CST 2011', '2011-09-21 21:42:57', '1');
INSERT INTO `sys_log` VALUES ('824', '系统管理员添加资源：null,日期：2011-43-21', '2011-09-21 21:43:40', '1');
INSERT INTO `sys_log` VALUES ('825', '系统管理员删除资源：null,日期：Wed Sep 21 21:44:27 CST 2011', '2011-09-21 21:44:27', '1');
INSERT INTO `sys_log` VALUES ('826', '系统管理员添加资源：null,日期：2011-46-21', '2011-09-21 21:46:19', '1');
INSERT INTO `sys_log` VALUES ('827', '系统管理员删除资源：null,日期：Wed Sep 21 21:46:31 CST 2011', '2011-09-21 21:46:31', '1');
INSERT INTO `sys_log` VALUES ('828', '系统管理员添加资源：null,日期：2011-46-21', '2011-09-21 21:46:55', '1');
INSERT INTO `sys_log` VALUES ('829', '系统管理员删除资源：null,日期：Wed Sep 21 21:47:03 CST 2011', '2011-09-21 21:47:03', '1');
INSERT INTO `sys_log` VALUES ('830', '系统管理员添加资源：null,日期：2011-47-21', '2011-09-21 21:47:37', '1');
INSERT INTO `sys_log` VALUES ('831', '系统管理员删除资源：null,日期：Wed Sep 21 21:47:42 CST 2011', '2011-09-21 21:47:42', '1');
INSERT INTO `sys_log` VALUES ('832', '系统管理员添加资源：新建资源,日期：2011-48-21', '2011-09-21 21:48:14', '1');
INSERT INTO `sys_log` VALUES ('833', '系统管理员删除资源：新建资源,日期：Wed Sep 21 21:48:23 CST 2011', '2011-09-21 21:48:23', '1');
INSERT INTO `sys_log` VALUES ('834', '系统管理员添加资源：新建资源,日期：2011-48-21', '2011-09-21 21:48:52', '1');
INSERT INTO `sys_log` VALUES ('835', '系统管理员添加资源：新建资源,日期：2011-48-21', '2011-09-21 21:48:52', '1');
INSERT INTO `sys_log` VALUES ('836', '系统管理员添加资源：新建资源,日期：2011-13-21', '2011-09-21 22:13:13', '1');
INSERT INTO `sys_log` VALUES ('837', '系统管理员添加资源：新建资源,日期：2011-13-21', '2011-09-21 22:13:23', '1');
INSERT INTO `sys_log` VALUES ('838', '系统管理员添加资源：新建资源,日期：2011-13-21', '2011-09-21 22:13:28', '1');
INSERT INTO `sys_log` VALUES ('839', '系统管理员删除资源：新建资源,日期：Wed Sep 21 22:13:39 CST 2011', '2011-09-21 22:13:39', '1');
INSERT INTO `sys_log` VALUES ('840', '系统管理员删除资源：新建资源,日期：Wed Sep 21 22:13:39 CST 2011', '2011-09-21 22:13:39', '1');
INSERT INTO `sys_log` VALUES ('841', '系统管理员删除资源：新建资源,日期：Wed Sep 21 22:13:39 CST 2011', '2011-09-21 22:13:39', '1');
INSERT INTO `sys_log` VALUES ('842', '系统管理员删除资源：新建资源,日期：Wed Sep 21 22:13:39 CST 2011', '2011-09-21 22:13:39', '1');
INSERT INTO `sys_log` VALUES ('843', '系统管理员删除资源：新建资源,日期：Wed Sep 21 22:13:39 CST 2011', '2011-09-21 22:13:39', '1');
INSERT INTO `sys_log` VALUES ('844', '系统管理员添加资源：新建资源,日期：2011-14-21', '2011-09-21 22:14:14', '1');
INSERT INTO `sys_log` VALUES ('845', '系统管理员删除资源：新建资源,日期：Wed Sep 21 22:14:21 CST 2011', '2011-09-21 22:14:21', '1');
INSERT INTO `sys_log` VALUES ('846', '系统管理员修改资源：系统资源,日期：2011-17-21', '2011-09-21 22:17:00', '1');
INSERT INTO `sys_log` VALUES ('847', '系统管理员/admin 于 2011-09-21 22:20:19 退出系统！', '2011-09-21 22:20:19', '1');
INSERT INTO `sys_log` VALUES ('848', '系统管理员修改资源：通用代码,日期：2011-25-21', '2011-09-21 22:25:21', '1');
INSERT INTO `sys_log` VALUES ('849', '系统管理员修改资源：通用代码,日期：2011-26-21', '2011-09-21 22:26:04', '1');
INSERT INTO `sys_log` VALUES ('850', '系统管理员修改资源：通用代码,日期：2011-27-21', '2011-09-21 22:27:43', '1');
INSERT INTO `sys_log` VALUES ('851', '系统管理员修改资源：通用代码,日期：2011-43-21', '2011-09-21 22:43:46', '1');
INSERT INTO `sys_log` VALUES ('852', '系统管理员修改资源：系统管理,日期：2011-46-21', '2011-09-21 22:46:02', '1');
INSERT INTO `sys_log` VALUES ('853', '系统管理员修改资源：通用代码,日期：2011-51-21', '2011-09-21 22:51:32', '1');
INSERT INTO `sys_log` VALUES ('854', '系统管理员修改资源：通用代码,日期：2011-53-21', '2011-09-21 22:53:14', '1');
INSERT INTO `sys_log` VALUES ('855', '系统管理员修改资源：通用代码,日期：2011-55-21', '2011-09-21 22:55:11', '1');
INSERT INTO `sys_log` VALUES ('856', '系统管理员修改资源：通用代码,日期：2011-56-21', '2011-09-21 22:56:36', '1');
INSERT INTO `sys_log` VALUES ('857', '系统管理员修改资源：通用代码,日期：2011-58-21', '2011-09-21 22:58:02', '1');
INSERT INTO `sys_log` VALUES ('858', '系统管理员修改资源：通用代码,日期：2011-59-21', '2011-09-21 22:59:12', '1');
INSERT INTO `sys_log` VALUES ('859', '系统管理员修改资源：通用代码,日期：2011-00-21', '2011-09-21 23:00:22', '1');
INSERT INTO `sys_log` VALUES ('860', '系统管理员修改资源：通用代码,日期：2011-02-21', '2011-09-21 23:02:12', '1');
INSERT INTO `sys_log` VALUES ('861', '系统管理员修改资源：通用代码,日期：2011-03-21', '2011-09-21 23:03:01', '1');
INSERT INTO `sys_log` VALUES ('862', '系统管理员修改资源：系统资源,日期：2011-04-21', '2011-09-21 23:04:23', '1');
INSERT INTO `sys_log` VALUES ('863', '系统管理员修改资源：系统资源,日期：2011-10-21', '2011-09-21 23:10:34', '1');
INSERT INTO `sys_log` VALUES ('864', '系统管理员修改资源：系统资源,日期：2011-10-21', '2011-09-21 23:10:58', '1');
INSERT INTO `sys_log` VALUES ('865', '系统管理员/admin 于 2011-09-21 23:36:28 退出系统！', '2011-09-21 23:36:28', '1');
INSERT INTO `sys_log` VALUES ('866', '系统管理员/admin 于 2011-09-22 13:54:14 退出系统！', '2011-09-22 13:54:14', '1');
INSERT INTO `sys_log` VALUES ('867', '系统管理员/admin 于 2011-09-22 13:57:15 退出系统！', '2011-09-22 13:57:15', '1');
INSERT INTO `sys_log` VALUES ('868', '系统管理员/admin 于 2011-09-22 20:09:27 退出系统！', '2011-09-22 20:09:27', '1');
INSERT INTO `sys_log` VALUES ('869', '系统管理员添加资源：新建资源,日期：2011-41-22', '2011-09-22 20:41:54', '1');
INSERT INTO `sys_log` VALUES ('870', '系统管理员/admin 于 2011-09-22 20:42:33 退出系统！', '2011-09-22 20:42:33', '1');
INSERT INTO `sys_log` VALUES ('871', '系统管理员添加资源：新建资源,日期：2011-48-22', '2011-09-22 20:48:13', '1');
INSERT INTO `sys_log` VALUES ('872', '系统管理员删除资源：新建资源,日期：Thu Sep 22 20:48:20 CST 2011', '2011-09-22 20:48:20', '1');
INSERT INTO `sys_log` VALUES ('873', '系统管理员添加资源：新建资源,日期：2011-17-25', '2011-09-25 20:17:56', '1');
INSERT INTO `sys_log` VALUES ('874', '系统管理员添加资源：新建资源,日期：2011-58-25', '2011-09-25 20:58:20', '1');
INSERT INTO `sys_log` VALUES ('875', '系统管理员添加资源：新建资源,日期：2011-58-25', '2011-09-25 20:58:36', '1');
INSERT INTO `sys_log` VALUES ('876', '系统管理员修改资源：新建资源,日期：2011-58-25', '2011-09-25 20:58:47', '1');
INSERT INTO `sys_log` VALUES ('877', '系统管理员修改资源：系统资源,日期：2011-58-25', '2011-09-25 20:58:55', '1');
INSERT INTO `sys_log` VALUES ('878', '系统管理员修改资源：新建资源,日期：2011-03-25', '2011-09-25 21:03:07', '1');
INSERT INTO `sys_log` VALUES ('879', '系统管理员修改资源：人员管理,日期：2011-05-25', '2011-09-25 21:05:09', '1');
INSERT INTO `sys_log` VALUES ('880', '系统管理员修改资源：基础数据,日期：2011-09-25', '2011-09-25 21:09:35', '1');
INSERT INTO `sys_log` VALUES ('881', '系统管理员修改资源：资源管理,日期：2011-23-25', '2011-09-25 21:23:23', '1');
INSERT INTO `sys_log` VALUES ('882', '系统管理员/admin 于 2011-09-26 12:56:32 退出系统！', '2011-09-26 12:56:32', '1');
INSERT INTO `sys_log` VALUES ('883', '系统管理员/admin 于 2011-09-26 12:57:01 退出系统！', '2011-09-26 12:57:01', '1');
INSERT INTO `sys_log` VALUES ('884', '系统管理员/admin 于 2011-09-26 12:57:11 退出系统！', '2011-09-26 12:57:11', '1');
INSERT INTO `sys_log` VALUES ('885', '系统管理员/admin 于 2011-09-26 12:58:26 退出系统！', '2011-09-26 12:58:26', '1');
INSERT INTO `sys_log` VALUES ('886', '系统管理员/admin 于 2011-09-26 12:59:07 退出系统！', '2011-09-26 12:59:07', '1');
INSERT INTO `sys_log` VALUES ('887', '系统管理员/admin 于 2011-09-26 13:00:25 退出系统！', '2011-09-26 13:00:25', '1');
INSERT INTO `sys_log` VALUES ('888', '系统管理员/admin 于 2011-09-26 13:02:20 退出系统！', '2011-09-26 13:02:20', '1');
INSERT INTO `sys_log` VALUES ('889', '系统管理员修改资源：工作流,日期：2011-02-26', '2011-09-26 13:02:56', '1');
INSERT INTO `sys_log` VALUES ('890', '系统管理员修改资源：流程管理,日期：2011-03-26', '2011-09-26 13:03:10', '1');
INSERT INTO `sys_log` VALUES ('891', '系统管理员修改资源：流程管理,日期：2011-03-26', '2011-09-26 13:03:16', '1');
INSERT INTO `sys_log` VALUES ('892', '系统管理员修改资源：流程定义,日期：2011-03-26', '2011-09-26 13:03:43', '1');
INSERT INTO `sys_log` VALUES ('893', '系统管理员修改资源：流程管理,日期：2011-04-26', '2011-09-26 13:04:15', '1');
INSERT INTO `sys_log` VALUES ('894', '系统管理员修改资源：新建资源,日期：2011-04-26', '2011-09-26 13:04:21', '1');
INSERT INTO `sys_log` VALUES ('895', '系统管理员修改资源：流程定义,日期：2011-04-26', '2011-09-26 13:04:25', '1');
INSERT INTO `sys_log` VALUES ('896', '系统管理员修改资源：表单定义,日期：2011-08-26', '2011-09-26 13:08:47', '1');
INSERT INTO `sys_log` VALUES ('897', '系统管理员修改资源：员工管理,日期：2011-09-26', '2011-09-26 13:09:08', '1');
INSERT INTO `sys_log` VALUES ('898', '系统管理员修改资源：员工管理,日期：2011-09-26', '2011-09-26 13:09:24', '1');
INSERT INTO `sys_log` VALUES ('899', '系统管理员修改资源：流程管理,日期：2011-09-26', '2011-09-26 13:09:35', '1');
INSERT INTO `sys_log` VALUES ('900', '系统管理员修改资源：流程定义,日期：2011-09-26', '2011-09-26 13:09:42', '1');
INSERT INTO `sys_log` VALUES ('901', '系统管理员修改资源：表单定义,日期：2011-09-26', '2011-09-26 13:09:46', '1');
INSERT INTO `sys_log` VALUES ('902', '系统管理员修改资源：通用代码,日期：2011-46-27', '2011-09-27 21:46:12', '1');
INSERT INTO `sys_log` VALUES ('903', '系统管理员修改资源：通用代码,日期：2011-47-27', '2011-09-27 21:47:19', '1');
INSERT INTO `sys_log` VALUES ('904', '系统管理员修改资源：系统资源,日期：2011-47-27', '2011-09-27 21:47:40', '1');
INSERT INTO `sys_log` VALUES ('905', '系统管理员修改资源：系统资源,日期：2011-48-27', '2011-09-27 21:48:32', '1');
INSERT INTO `sys_log` VALUES ('906', '系统管理员修改资源：系统资源,日期：2011-49-27', '2011-09-27 21:49:48', '1');
INSERT INTO `sys_log` VALUES ('907', '系统管理员修改资源：系统资源,日期：2011-50-27', '2011-09-27 21:50:44', '1');
INSERT INTO `sys_log` VALUES ('908', '系统管理员修改资源：通用代码,日期：2011-51-27', '2011-09-27 21:51:12', '1');
INSERT INTO `sys_log` VALUES ('909', '系统管理员修改资源：基础数据,日期：2011-51-27', '2011-09-27 21:51:26', '1');
INSERT INTO `sys_log` VALUES ('910', '系统管理员修改资源：通用代码,日期：2011-51-27', '2011-09-27 21:51:35', '1');
INSERT INTO `sys_log` VALUES ('911', '系统管理员修改资源：系统资源,日期：2011-51-27', '2011-09-27 21:51:39', '1');
INSERT INTO `sys_log` VALUES ('912', '系统管理员修改资源：系统资源,日期：2011-51-27', '2011-09-27 21:51:59', '1');
INSERT INTO `sys_log` VALUES ('913', '系统管理员修改资源：通用代码,日期：2011-52-27', '2011-09-27 21:52:03', '1');
INSERT INTO `sys_log` VALUES ('914', '系统管理员修改资源：系统角色,日期：2011-03-27', '2011-09-27 22:03:47', '1');
INSERT INTO `sys_log` VALUES ('915', '系统管理员修改资源：角色授权,日期：2011-13-27', '2011-09-27 22:13:42', '1');
INSERT INTO `sys_log` VALUES ('916', '系统用户/user 于 2011-09-28 23:27:07 退出系统！', '2011-09-28 23:27:07', '2');
INSERT INTO `sys_log` VALUES ('917', '系统管理员修改资源：人员管理,日期：2011-08-08', '2011-10-08 22:08:02', '1');
INSERT INTO `sys_log` VALUES ('918', '系统管理员修改资源：通用代码,日期：2011-08-08', '2011-10-08 22:08:11', '1');
INSERT INTO `sys_log` VALUES ('919', '系统管理员修改资源：系统管理,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('920', '系统管理员修改资源：系统资源,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('921', '系统管理员修改资源：通用代码,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('922', '系统管理员修改资源：基础数据,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('923', '系统管理员修改资源：人员管理,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('924', '系统管理员修改资源：文件管理,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('925', '系统管理员修改资源：系统角色,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('926', '系统管理员修改资源：文件分类,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('927', '系统管理员修改资源：资源管理,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('928', '系统管理员修改资源：角色授权,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('929', '系统管理员修改资源：运行监控,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('930', '系统管理员修改资源：权限控制,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('931', '系统管理员修改资源：运行信息,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('932', '系统管理员修改资源：运行日志,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('933', '系统管理员修改资源：操作日志,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('934', '系统管理员修改资源：StrutsAction列表,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('935', '系统管理员修改资源：SpringBean列表,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('936', '系统管理员修改资源：系统日志,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('937', '系统管理员修改资源：系统组件,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('938', '系统管理员修改资源：员工管理,日期：2011-08-08', '2011-10-08 22:08:38', '1');
INSERT INTO `sys_log` VALUES ('939', '系统管理员修改资源：通用代码,日期：2011-08-08', '2011-10-08 22:08:46', '1');
INSERT INTO `sys_log` VALUES ('940', '系统管理员/admin 于 2011-10-08 22:42:51 退出系统！', '2011-10-08 22:42:51', '1');
INSERT INTO `sys_log` VALUES ('941', '系统管理员/admin 于 2011-10-08 22:59:15 退出系统！', '2011-10-08 22:59:15', '1');
INSERT INTO `sys_log` VALUES ('942', '系统管理员/admin 于 2011-10-08 23:02:36 退出系统！', '2011-10-08 23:02:36', '1');
INSERT INTO `sys_log` VALUES ('943', '系统管理员修改资源：基础数据,日期：2011-13-10', '2011-10-10 22:13:09', '1');
INSERT INTO `sys_log` VALUES ('944', '系统管理员修改资源：权限控制,日期：2011-13-10', '2011-10-10 22:13:28', '1');
INSERT INTO `sys_log` VALUES ('945', '系统管理员修改资源：运行信息,日期：2011-13-10', '2011-10-10 22:13:42', '1');
INSERT INTO `sys_log` VALUES ('946', '系统管理员修改资源：系统日志,日期：2011-13-10', '2011-10-10 22:13:54', '1');
INSERT INTO `sys_log` VALUES ('947', '系统管理员修改资源：系统组件,日期：2011-14-10', '2011-10-10 22:14:02', '1');
INSERT INTO `sys_log` VALUES ('948', '系统管理员修改资源：系统资源,日期：2011-15-10', '2011-10-10 22:15:22', '1');
INSERT INTO `sys_log` VALUES ('949', '系统管理员修改资源：通用代码,日期：2011-15-10', '2011-10-10 22:15:44', '1');
INSERT INTO `sys_log` VALUES ('950', '系统管理员修改资源：系统角色,日期：2011-15-10', '2011-10-10 22:15:55', '1');
INSERT INTO `sys_log` VALUES ('951', '系统管理员修改资源：操作日志,日期：2011-16-10', '2011-10-10 22:16:41', '1');
INSERT INTO `sys_log` VALUES ('952', '系统管理员修改资源：运行日志,日期：2011-17-10', '2011-10-10 22:17:02', '1');
INSERT INTO `sys_log` VALUES ('953', '系统管理员修改资源：StrutsAction列表,日期：2011-17-10', '2011-10-10 22:17:02', '1');
INSERT INTO `sys_log` VALUES ('954', '系统管理员修改资源：SpringBean列表,日期：2011-17-10', '2011-10-10 22:17:12', '1');
INSERT INTO `sys_log` VALUES ('955', '系统管理员修改资源：角色授权,日期：2011-17-10', '2011-10-10 22:17:58', '1');
INSERT INTO `sys_log` VALUES ('956', '系统管理员修改资源：资源管理,日期：2011-17-10', '2011-10-10 22:17:58', '1');
INSERT INTO `sys_log` VALUES ('957', '系统管理员修改资源：运行监控,日期：2011-18-10', '2011-10-10 22:18:48', '1');
INSERT INTO `sys_log` VALUES ('958', '系统管理员修改资源：运行信息,日期：2011-18-10', '2011-10-10 22:18:48', '1');
INSERT INTO `sys_log` VALUES ('959', '系统管理员修改资源：运行信息,日期：2011-19-10', '2011-10-10 22:19:43', '1');
INSERT INTO `sys_log` VALUES ('960', '系统管理员修改资源：文件分类,日期：2011-20-10', '2011-10-10 22:20:01', '1');
INSERT INTO `sys_log` VALUES ('961', '系统管理员修改资源：流程定义,日期：2011-20-10', '2011-10-10 22:20:21', '1');
INSERT INTO `sys_log` VALUES ('962', '系统管理员修改资源：员工管理,日期：2011-20-10', '2011-10-10 22:20:27', '1');
INSERT INTO `sys_log` VALUES ('963', '系统管理员/admin 于 2011-10-10 22:27:43 退出系统！', '2011-10-10 22:27:43', '1');
INSERT INTO `sys_log` VALUES ('964', '系统管理员修改资源：文件分类,日期：2011-36-11', '2011-10-11 20:36:25', '1');
INSERT INTO `sys_log` VALUES ('965', '系统管理员修改资源：文件分类,日期：2011-36-11', '2011-10-11 20:36:31', '1');
INSERT INTO `sys_log` VALUES ('966', '系统管理员修改资源：文件分类,日期：2011-38-11', '2011-10-11 20:38:43', '1');
INSERT INTO `sys_log` VALUES ('967', '系统管理员修改资源：角色授权,日期：2011-46-11', '2011-10-11 20:46:10', '1');
INSERT INTO `sys_log` VALUES ('968', '系统管理员修改资源：角色授权,日期：2011-47-11', '2011-10-11 20:47:03', '1');
INSERT INTO `sys_log` VALUES ('969', '系统管理员/admin 于 2011-10-11 20:56:22 退出系统！', '2011-10-11 20:56:22', '1');
INSERT INTO `sys_log` VALUES ('970', '系统管理员/admin 于 2011-10-11 21:00:16 退出系统！', '2011-10-11 21:00:16', '1');
INSERT INTO `sys_log` VALUES ('971', '系统管理员/admin 于 2011-10-13 22:30:19 退出系统！', '2011-10-13 22:30:19', '1');
INSERT INTO `sys_log` VALUES ('972', '系统管理员修改资源：系统管理,日期：2011-03-15', '2011-10-15 23:03:33', '1');
INSERT INTO `sys_log` VALUES ('973', '系统管理员修改资源：系统资源,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('974', '系统管理员修改资源：通用代码,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('975', '系统管理员修改资源：基础数据,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('976', '系统管理员修改资源：人员管理,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('977', '系统管理员修改资源：文件管理,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('978', '系统管理员修改资源：系统角色,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('979', '系统管理员修改资源：文件分类,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('980', '系统管理员修改资源：资源管理,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('981', '系统管理员修改资源：角色授权,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('982', '系统管理员修改资源：运行监控,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('983', '系统管理员修改资源：权限控制,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('984', '系统管理员修改资源：运行信息,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('985', '系统管理员修改资源：运行日志,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('986', '系统管理员修改资源：操作日志,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('987', '系统管理员修改资源：StrutsAction列表,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('988', '系统管理员修改资源：SpringBean列表,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('989', '系统管理员修改资源：系统日志,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('990', '系统管理员修改资源：系统组件,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('991', '系统管理员修改资源：员工管理,日期：2011-03-15', '2011-10-15 23:03:34', '1');
INSERT INTO `sys_log` VALUES ('992', '系统管理员/admin 于 2011-10-15 23:07:44 退出系统！', '2011-10-15 23:07:44', '1');
INSERT INTO `sys_log` VALUES ('993', '系统管理员/admin 于 2011-10-18 21:00:58 退出系统！', '2011-10-18 21:00:58', '1');
INSERT INTO `sys_log` VALUES ('994', '系统管理员修改资源：员工管理,日期：2011-05-20', '2011-10-20 21:05:26', '1');
INSERT INTO `sys_log` VALUES ('995', '系统管理员/admin 于 2011-12-12 09:01:55 退出系统！', '2011-12-12 09:01:55', '1');
INSERT INTO `sys_log` VALUES ('996', '系统管理员/admin 于 2011-12-12 09:55:25 退出系统！', '2011-12-12 09:55:25', '1');
INSERT INTO `sys_log` VALUES ('997', '系统管理员/admin 于 2011-12-12 17:13:10 退出系统！', '2011-12-12 17:13:10', '1');
INSERT INTO `sys_log` VALUES ('998', '系统管理员/admin 于 2011-12-15 08:19:29 退出系统！', '2011-12-15 08:19:29', '1');
INSERT INTO `sys_log` VALUES ('999', '系统管理员/admin 于 2012-02-16 22:23:01 退出系统！', '2012-02-16 22:23:01', '1');
INSERT INTO `sys_log` VALUES ('1000', '系统用户/user 于 2012-02-16 22:32:00 退出系统！', '2012-02-16 22:32:00', '2');
INSERT INTO `sys_log` VALUES ('1001', '系统管理员/admin 于 2012-06-26 18:06:57 退出系统！', '2012-06-26 18:06:57', '1');

-- ----------------------------
-- Table structure for `sys_profile`
-- ----------------------------
DROP TABLE IF EXISTS `sys_profile`;
CREATE TABLE `sys_profile` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_profile
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) DEFAULT NULL,
  `descripton` varchar(255) DEFAULT NULL,
  `iconCls` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5E13532B60A4259E` (`parent_id`),
  CONSTRAINT `FK5E13532B60A4259E` FOREIGN KEY (`parent_id`) REFERENCES `sys_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', '', '系统管理', 'icon-system', '系统管理', '1', 'PANEL', null, 'index.jsp');
INSERT INTO `sys_resource` VALUES ('2', 'SAMS.module.resource.List', '系统资源', '', '系统资源', '1', 'COMPONENT', '21', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('3', 'SAMS.cmp.commoncode.List', '通用代码', '', '通用代码', '2', 'COMPONENT', '21', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('21', '', '基础数据', '', '基础数据', '1', 'COMPONENT', '1', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('22', '', '人员管理', 'icon-hr', '人员管理', '3', 'PANEL', null, 'index.jsp');
INSERT INTO `sys_resource` VALUES ('29', '', '文件字典', 'icon-file', '文件管理', '2', 'PANEL', null, 'index.jsp');
INSERT INTO `sys_resource` VALUES ('163', 'Fes.view.RoleList', '角色管理', '', '系统角色', '3', 'COMPONENT', '21', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('167', '', '文件分类', '', '文件分类', '1', 'COMPONENT', '29', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('168', 'ResourcePanel', '资源管理', '', '资源管理', '5', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('169', '', '角色授权述', '', '角色授权', '2', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('170', '', '管理', '', '管理', '3', 'COMPONENT', '1', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('171', '', '权限控制', '', '权限控制', '2', 'COMPONENT', '1', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('172', 'Fes.view.ErrorlogList', '运行信息', '', '运行信息', '1', 'COMPONENT', '22', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('176', 'Fes.view.DeptLayout', '机构管理', '', '机构管理', '1', 'COMPONENT', '22', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('177', '', '操作日志', '', '操作日志', '2', 'COMPONENT', null, 'index.jsp');
INSERT INTO `sys_resource` VALUES ('178', '', 'StrutsAction列表', '', 'StrutsAction列表', '1', 'COMPONENT', '181', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('179', 'Fes.view.URLMapping', 'SpringBean列表', '', 'SpringBean列表', '2', 'COMPONENT', '181', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('181', 'Fes.view.ErrorlogList', '系统监控', '', '系统组件', '3', 'COMPONENT', '1', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('183', 'Fes.view.UserList', '员工管理', '', '员工管理', '1', 'COMPONENT', '22', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('184', '', '流程管理', 'icon-workflow', '流程管理', '4', 'COMPONENT', null, 'index.jsp');
INSERT INTO `sys_resource` VALUES ('185', '', '流程定义', '', '流程定义', null, 'COMPONENT', '184', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('186', 'Fes.view.ErrorHisList', '历史监控信息', '', '历史监控信息', null, 'COMPONENT', '22', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('191', 'Fes.view.TfunctionList', '方法测试资源', '', '方法测试资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('192', 'Fes.view.TfunctionList', '测试！资源', '', '测试！资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('193', 'Fes.view.TfunctionList', 'a资源', '', 'a资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('194', 'Fes.view.TfunctionList', '测试方法资源', '', '测试方法资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('195', 'Fes.view.infotypeList', '类型信息资源', '', '类型信息资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('196', 'Fes.view.InfotypeList', '类型选择资源', '', '类型选择资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('197', 'Fes.view.InfotypeList', '类型32资源', '', '类型32资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('198', 'Fes.view.InfotypeList', '测试资源', '', '测试资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('199', 'Fes.view.ResourceList', '资源管理资源', '', '资源管理资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('200', 'Fes.view.ResourceList', 'ceshill资源', '', 'ceshill资源', '1', 'COMPONENT', '171', 'index.jsp');
INSERT INTO `sys_resource` VALUES ('201', '哈哈', null, null, '测试我hi', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `description` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `role_level` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `name` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_user_id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'SYS_ADMIN', '系统管理员2', '1', '系统管理员', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('2', 'SYS_USER', '系统用户', '4', '系统用户', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('3', 'SYS_PUBLISHER', '系统发布人', '2', '系统发布人', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('4', 'SYS_ENGINEER', '系统工程师', '5', '系统工程师', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('5', 'SYS_DBA', '系统数据库管理员', '3', '系统数据库管理员', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('7', 'SYS_SECURITY_CHECK', '我的', '6', '她的', null, null, null, null, null, null);
INSERT INTO `sys_role` VALUES ('8', 'Sys_ad', '25', '8', '新建角色2', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sys_role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  KEY `FK3F0D165A63CF26BA` (`role_id`),
  KEY `FK3F0D165A2ED2FFBA` (`resource_id`),
  CONSTRAINT `FK3F0D165A2ED2FFBA` FOREIGN KEY (`resource_id`) REFERENCES `sys_resource` (`id`),
  CONSTRAINT `FK3F0D165A63CF26BA` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `deleted` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_user_id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `layout` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `style` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `email` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '2011-03-27 15:47:45', '1', 'N', '2012-06-26 16:21:24', '1', '544', '0:0:0:0:0:0:0:1', '2012-06-26 16:21:24', 'west', 'admin', '202cb962ac59075b964b07152d234b70', 'ext-all', '系统管理员', '');
INSERT INTO `sys_user` VALUES ('2', '2011-05-25 22:47:58', '1', 'N', '2012-03-03 17:24:17', '2', '11', '127.0.0.1', '2012-03-03 17:24:17', 'west', 'user121', '202cb962ac59075b964b07152d234b70', 'ext-all', '系统用户', '123@qq.com');

-- ----------------------------
-- Table structure for `sys_user_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept` (
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  KEY `dept_id` (`dept_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sys_user_dept_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`),
  CONSTRAINT `sys_user_dept_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
INSERT INTO `sys_user_dept` VALUES ('1', '4');
INSERT INTO `sys_user_dept` VALUES ('2', '4');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FK3F11A27163CF26BA` (`role_id`),
  KEY `FK3F11A2718F9EA9A` (`user_id`),
  CONSTRAINT `FK3F11A27163CF26BA` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK3F11A2718F9EA9A` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('1', '5');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('2', '3');
