/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50149
Source Host           : localhost:3306
Source Database       : humansystem

Target Server Type    : MYSQL
Target Server Version : 50149
File Encoding         : 65001

Date: 2019-03-17 00:26:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for checkon
-- ----------------------------
DROP TABLE IF EXISTS `checkon`;
CREATE TABLE `checkon` (
`kid`  int(11) NOT NULL AUTO_INCREMENT ,
`starttime`  datetime NULL DEFAULT NULL ,
`endtime`  datetime NULL DEFAULT NULL ,
`gowork_state`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无' ,
`upwork_state`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无' ,
`eid`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`kid`),
FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `eid` USING BTREE (`eid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=52

;

-- ----------------------------
-- Records of checkon
-- ----------------------------
BEGIN;
INSERT INTO `checkon` VALUES ('51', '2018-11-01 21:39:55', null, '旷工', null, '18');
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
`did`  int(11) NOT NULL AUTO_INCREMENT ,
`dname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`did`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=42

;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES ('33', '人事部'), ('35', '软件123'), ('37', '财务部'), ('39', '软件11'), ('40', ''), ('41', null);
COMMIT;

-- ----------------------------
-- Table structure for dissent
-- ----------------------------
DROP TABLE IF EXISTS `dissent`;
CREATE TABLE `dissent` (
`did`  int(11) NOT NULL AUTO_INCREMENT ,
`excuse`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`month`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`eid`  int(110) NULL DEFAULT NULL ,
PRIMARY KEY (`did`),
FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `eid` USING BTREE (`eid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of dissent
-- ----------------------------
BEGIN;
INSERT INTO `dissent` VALUES ('1', '下午准时打了卡，没有记到', '2018-10-25', '18'), ('2', '打卡次数缺少了一次', '2018-10-18', '18');
COMMIT;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
`eid`  int(11) NOT NULL AUTO_INCREMENT ,
`ename`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sex`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`age`  int(10) NULL DEFAULT NULL ,
`tel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`state`  int(20) NULL DEFAULT NULL ,
`uid`  int(100) NULL DEFAULT NULL ,
`did`  int(100) NULL DEFAULT NULL ,
`pid`  int(100) NULL DEFAULT NULL ,
`tid`  int(110) NULL DEFAULT NULL ,
PRIMARY KEY (`eid`),
FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`did`) REFERENCES `dept` (`did`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`pid`) REFERENCES `post` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `uid` USING BTREE (`uid`) ,
INDEX `did` USING BTREE (`did`) ,
INDEX `pid` USING BTREE (`pid`) ,
INDEX `tid` USING BTREE (`tid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=19

;

-- ----------------------------
-- Records of employee
-- ----------------------------
BEGIN;
INSERT INTO `employee` VALUES ('13', '梦不落雨林', '女', '12', '111', '123@qq.com', '1', '30', '33', '47', '47'), ('14', '魔鬼中的天使', '男', '14', '123', '123456789@qq.com', '1', '31', '33', '47', '47'), ('16', '没说什么', '女', '15', '123', '123@qq.com', '1', '37', '33', '47', '48'), ('17', '1', '女', '12115', '123', '123@qq.com', '1', '38', '33', '47', null), ('18', 'gg', '女', '12', '12312312', '123@qq.com', '0', '39', '33', '47', null);
COMMIT;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
`pid`  int(100) NOT NULL AUTO_INCREMENT ,
`pname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`did`  int(100) NULL DEFAULT NULL ,
PRIMARY KEY (`pid`),
FOREIGN KEY (`did`) REFERENCES `dept` (`did`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `did` USING BTREE (`did`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=48

;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES ('47', '项目经理123', '33');
COMMIT;

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
`reid`  int(11) NOT NULL AUTO_INCREMENT ,
`rname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`address`  varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`pid`  int(11) NULL DEFAULT NULL ,
`grantTime`  date NULL DEFAULT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`state`  int(20) NULL DEFAULT NULL ,
PRIMARY KEY (`reid`),
FOREIGN KEY (`pid`) REFERENCES `post` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `pid` USING BTREE (`pid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=36

;

-- ----------------------------
-- Records of recruit
-- ----------------------------
BEGIN;
INSERT INTO `recruit` VALUES ('34', '耳朵', '奇迹再现', '47', '2018-10-01', '工资1W7', '0'), ('35', null, '精彩才刚刚开始', '47', '2018-10-03', '项目经验123', '0');
COMMIT;

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
`rid`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sex`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`age`  int(10) NULL DEFAULT NULL ,
`job`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`experience`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`specialty`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`studyeffort`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`school`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tel`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`content`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`state`  int(20) NULL DEFAULT 0 ,
`uid`  int(110) NULL DEFAULT NULL ,
`reid`  int(110) NULL DEFAULT NULL ,
`interview`  int(110) NULL DEFAULT 0 ,
PRIMARY KEY (`rid`),
FOREIGN KEY (`reid`) REFERENCES `recruit` (`reid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `uid` USING BTREE (`uid`) ,
INDEX `reid` USING BTREE (`reid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=60

;

-- ----------------------------
-- Records of resume
-- ----------------------------
BEGIN;
INSERT INTO `resume` VALUES ('56', '剑龙骑士', '女', '12', '归去来兮', '123', '有种离开叫做舍不得', '本科', '我知道是你', '123', '123@qq.com', '	我突然想起你				', '4', '33', '34', '4'), ('57', '没说什么', '女', '12', '归去来兮', '123', '有种离开叫做舍不得', '高中', '我知道是你', '123', '123@qq.com', '	那一夜				', '4', '37', '35', '4'), ('58', '1', '女', '12', '江西', '123', '阮籍', '高中', '宜春', '123', '123@qq.com', 'ggg				', '4', '38', '34', '4'), ('59', 'gg', '女', '12', '江西', '123', '阮籍', '高中', '宜春', '123', '123@qq.com', '	ggg				', '4', '39', '34', '4');
COMMIT;

-- ----------------------------
-- Table structure for rwandph
-- ----------------------------
DROP TABLE IF EXISTS `rwandph`;
CREATE TABLE `rwandph` (
`rpid`  int(11) NOT NULL AUTO_INCREMENT ,
`money`  decimal(50,0) NULL DEFAULT NULL ,
`rptime`  datetime NULL DEFAULT NULL ,
`cause`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`eid`  int(110) NULL DEFAULT NULL ,
PRIMARY KEY (`rpid`),
INDEX `eid` USING BTREE (`eid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=23

;

-- ----------------------------
-- Records of rwandph
-- ----------------------------
BEGIN;
INSERT INTO `rwandph` VALUES ('13', '-100', '2018-10-11 00:00:00', '加了一天班', '13'), ('14', '100', '2018-10-11 00:00:00', '加了一天班', '14'), ('16', '100', '2018-10-10 00:00:00', '加了一天班', '13'), ('17', '14', '2018-10-24 13:20:56', '打卡次数缺少了一次', '14'), ('18', '100', '2018-10-10 00:00:00', '加了一天班', '16'), ('19', '100', '2018-10-10 00:00:00', '加了一天班', '16'), ('20', '30', '2018-10-25 20:39:00', '下午准时打了卡，没有记到', '18'), ('21', '123', '2018-10-26 10:39:02', '下午准时打了卡，没有记到', '18'), ('22', '123', '2018-11-01 21:42:07', '下午准时打了卡，没有记到', '18');
COMMIT;

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
`sid`  int(11) NOT NULL AUTO_INCREMENT ,
`basic`  double NULL DEFAULT NULL ,
`bonus`  double NULL DEFAULT NULL COMMENT '奖金' ,
`social`  double NULL DEFAULT NULL COMMENT '社保' ,
`punish`  double NULL DEFAULT NULL COMMENT '惩罚' ,
`totalSal`  double NULL DEFAULT NULL COMMENT '总计' ,
`accountTime`  date NULL DEFAULT NULL COMMENT '会计时间' ,
`eid`  int(110) NULL DEFAULT NULL COMMENT '员工ID' ,
PRIMARY KEY (`sid`),
FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `eid` USING BTREE (`eid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of salary
-- ----------------------------
BEGIN;
INSERT INTO `salary` VALUES ('8', '63', '123', '200', '153', '539', '2018-11-01', '18');
COMMIT;

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
`tid`  int(11) NOT NULL AUTO_INCREMENT ,
`tname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`begintime`  date NULL DEFAULT NULL ,
`endtime`  date NULL DEFAULT NULL ,
`content`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`state`  int(255) NULL DEFAULT 0 ,
`eid`  int(110) NULL DEFAULT NULL ,
PRIMARY KEY (`tid`, `content`),
FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `eid` USING BTREE (`eid`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=49

;

-- ----------------------------
-- Records of train
-- ----------------------------
BEGIN;
INSERT INTO `train` VALUES ('48', 'c++', '2018-10-01', '2018-10-08', '打败奥特曼', '0', null);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`uid`  int(11) NOT NULL AUTO_INCREMENT ,
`uname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`upasswd`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`state`  int(110) NULL DEFAULT NULL ,
PRIMARY KEY (`uid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=41

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('2', 'admin', '123', '2'), ('30', 'aaa', '123', '1'), ('31', 'yyy', '123', '1'), ('32', '1', '234', '0'), ('33', '11', '11', '0'), ('36', 'bb', '123', '0'), ('37', 'mm', '11', '1'), ('38', 'yy', '11', '0'), ('39', 'gg', '11', '0'), ('40', '2', '2', '0');
COMMIT;

-- ----------------------------
-- Auto increment value for checkon
-- ----------------------------
ALTER TABLE `checkon` AUTO_INCREMENT=52;

-- ----------------------------
-- Auto increment value for dept
-- ----------------------------
ALTER TABLE `dept` AUTO_INCREMENT=42;

-- ----------------------------
-- Auto increment value for dissent
-- ----------------------------
ALTER TABLE `dissent` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for employee
-- ----------------------------
ALTER TABLE `employee` AUTO_INCREMENT=19;

-- ----------------------------
-- Auto increment value for post
-- ----------------------------
ALTER TABLE `post` AUTO_INCREMENT=48;

-- ----------------------------
-- Auto increment value for recruit
-- ----------------------------
ALTER TABLE `recruit` AUTO_INCREMENT=36;

-- ----------------------------
-- Auto increment value for resume
-- ----------------------------
ALTER TABLE `resume` AUTO_INCREMENT=60;

-- ----------------------------
-- Auto increment value for rwandph
-- ----------------------------
ALTER TABLE `rwandph` AUTO_INCREMENT=23;

-- ----------------------------
-- Auto increment value for salary
-- ----------------------------
ALTER TABLE `salary` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for train
-- ----------------------------
ALTER TABLE `train` AUTO_INCREMENT=49;

-- ----------------------------
-- Auto increment value for user
-- ----------------------------
ALTER TABLE `user` AUTO_INCREMENT=41;
