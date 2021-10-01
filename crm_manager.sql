/*
 Navicat Premium Data Transfer

 Source Server         : wy
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : crm_manager

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 01/10/2021 20:05:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `admin_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `admin_id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('xiexin', '123456', 1);
INSERT INTO `admin` VALUES ('eee', 'wwww', 2);
INSERT INTO `admin` VALUES ('qweqwe', 'wqeewqe', 3);
INSERT INTO `admin` VALUES ('qeq', 'qwewqe', 4);
INSERT INTO `admin` VALUES ('qweqwe', 'qwewqe', 5);
INSERT INTO `admin` VALUES ('werewr', 'qeweqwe', 6);
INSERT INTO `admin` VALUES ('werwer', 'wrwer', 7);
INSERT INTO `admin` VALUES ('werwer', 'werwerw', 8);
INSERT INTO `admin` VALUES ('werweryrtyry', 'rytryrytry', 9);
INSERT INTO `admin` VALUES ('rtyrtytrrty', 'tryty', 10);
INSERT INTO `admin` VALUES ('rtyrty', 'ertert', 11);
INSERT INTO `admin` VALUES ('trytryrtty', 'etretetet', 12);
INSERT INTO `admin` VALUES ('twresdfg', 'rewwerwerw', 13);
INSERT INTO `admin` VALUES ('retertdgfrdg', 'reteterte', 14);
INSERT INTO `admin` VALUES ('erdhbcvbfd', 'gfdgdfgfdg', 15);
INSERT INTO `admin` VALUES ('rwerfsdvgs', 'sfgdfsrgfdg', 16);
INSERT INTO `admin` VALUES ('sfgvsdfs', 'wwerfsdsf', 17);
INSERT INTO `admin` VALUES ('wrvsdf', 'swerfvswer', 18);
INSERT INTO `admin` VALUES ('sdvdfrdf', 'swedfvcsd', 19);
INSERT INTO `admin` VALUES ('werfsvdfr', 'wesrfdvwers', 20);
INSERT INTO `admin` VALUES ('fwesdrfwer', 'ewsrfdvesr', 21);
INSERT INTO `admin` VALUES ('vfdgdgsd', 'gfdgfdgdgd', 22);
INSERT INTO `admin` VALUES ('werwrw', 'werwr', 23);

-- ----------------------------
-- Table structure for admindto
-- ----------------------------
DROP TABLE IF EXISTS `admindto`;
CREATE TABLE `admindto`  (
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `errorCount` int(255) DEFAULT NULL,
  `lockDate` datetime(0) DEFAULT NULL,
  `unLockDate` datetime(0) DEFAULT NULL,
  `admindto_id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`admindto_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admindto
-- ----------------------------
INSERT INTO `admindto` VALUES ('arwerqeqw', 1, '2020-10-25 12:24:14', NULL, 4);
INSERT INTO `admindto` VALUES ('uyghj', 1, '2020-10-25 12:26:43', NULL, 5);
INSERT INTO `admindto` VALUES ('huigukg', 5, '2020-10-25 12:29:44', NULL, 6);
INSERT INTO `admindto` VALUES ('admin', 2, '2020-12-23 09:38:28', NULL, 7);
INSERT INTO `admindto` VALUES ('abc', 5, '2021-05-18 17:40:42', NULL, 8);
INSERT INTO `admindto` VALUES ('ccc', 2, '2021-05-18 17:42:23', NULL, 9);

-- ----------------------------
-- Table structure for log_pwd_err
-- ----------------------------
DROP TABLE IF EXISTS `log_pwd_err`;
CREATE TABLE `log_pwd_err`  (
  `login_id` int(11) NOT NULL,
  `err_num` int(11) NOT NULL,
  `last_date` datetime(0) NOT NULL,
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `cust_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名称',
  `cust_company` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户所属公司',
  `cust_position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户职位',
  `cust_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户手机号',
  `cust_birth` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户生日 yyyy-MM-dd',
  `cust_sex` int(1) NOT NULL COMMENT '客户性别',
  `cust_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客户介绍',
  `user_id` int(11) NOT NULL COMMENT '业务员ID',
  `create_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间 yyyy-MM-dd HH:mm:ss',
  `modify_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改时间 yyyy-MM-dd HH:mm:ss',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cust_name_uq`(`cust_name`) USING BTREE COMMENT '客户名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES (1, '郑小龙', '郑氏集团', '研发经理', '13300120019', '1977-11-15', 1, '负责公司的技术研发', 25, '2008-01-13', '2008-01-13');
INSERT INTO `t_customer` VALUES (2, '郑小龙2', '郑氏集团2', '技术经理2', '13300001111', '1988-02-05', 1, '研发技术...', 25, '2018-11-12', '2018-11-12');
INSERT INTO `t_customer` VALUES (4, '小王1', '阿里', '公关部经理1', '18888880000', '1989-02-04', 1, NULL, 9, '2017-11-12', '2020-08-03 20:51:47');
INSERT INTO `t_customer` VALUES (5, '郑大龙123', '谷歌123', '研发大牛123', '13766661111', '1990-02-04', 1, 'fdasdfasfdas', 8, '2016-11-12', '2020-08-06 09:29:32');
INSERT INTO `t_customer` VALUES (6, '李小花', '腾讯', '公关经理', '16688886666', '1990-02-02', 2, '', 7, '2015-11-12', '2020-08-03 20:47:29');
INSERT INTO `t_customer` VALUES (7, '郑小龙6', '郑氏集团6', '技术经理6', '13900001111', '1991-02-05', 1, '研发技术...', 38, '2014-11-12', '2014-11-12');
INSERT INTO `t_customer` VALUES (8, '郑小龙7', '郑氏集团7', '技术经理7', '15600001111', '1991-02-05', 1, '研发技术...', 22, '2013-11-12', '2013-11-12');
INSERT INTO `t_customer` VALUES (9, '郑小龙8', '郑氏集团8', '技术经理8', '15500001111', '1992-02-05', 1, '研发技术...', 7, '2012-11-12', '2012-11-12');
INSERT INTO `t_customer` VALUES (10, '郑小龙9', '郑氏集团9', '技术经理9', '16600001111', '1992-02-05', 1, '研发技术...', 7, '2011-11-12', '2011-11-12');
INSERT INTO `t_customer` VALUES (11, '郑小龙10', '郑氏集团10', '技术经理10', '17700001111', '1992-02-05', 1, '研发技术...', 7, '2010-11-12', '2010-11-12');
INSERT INTO `t_customer` VALUES (12, '郑小龙11', '郑氏集团11', '技术经理11', '18800001111', '1992-02-05', 1, '研发技术...', 7, '2009-11-12', '2009-11-12');
INSERT INTO `t_customer` VALUES (13, '郑小龙12', '郑氏集团12', '技术经理12', '19900001111', '1991-02-05', 1, '研发技术...', 7, '2008-11-12', '2008-11-12');
INSERT INTO `t_customer` VALUES (14, '测试客户1', '大龙集团', '销售经理', '18800123389', '2020-08-03', 2, '', 7, '2020-08-03 20:23:17', '2020-08-03 20:23:17');
INSERT INTO `t_customer` VALUES (15, 'test123', '谷歌', '研发大牛', '13300120019', '2020-08-04', 2, '技术菜鸟', 7, '2020-08-04 18:21:17', '2020-08-04 18:21:17');
INSERT INTO `t_customer` VALUES (16, '测试客户12', '腾讯', '经理4', '13766668888', '2020-08-03', 2, '发的说法', 7, '2020-08-04 18:22:32', '2020-08-04 18:22:32');
INSERT INTO `t_customer` VALUES (17, '龙12', '腾讯', '研发大牛', '13300120019', '2020-08-02', 2, '技术老司机', 7, '2020-08-05 11:42:18', '2020-08-05 11:42:18');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `real_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实名称',
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户图像',
  `type` int(1) NOT NULL COMMENT '用户类型  1 管理员   2 业务员',
  `is_del` int(1) NOT NULL COMMENT '是否有效  1 有效   2 无效',
  `create_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `modify_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name_uq`(`username`) USING BTREE COMMENT '用户名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (7, 'abc', '123456', 'qqqqqqqqqqqqa', '', 2, 1, '2020-06-08 11:32:06', '2020-06-08 11:32:06');
INSERT INTO `t_user` VALUES (8, 'test', '1234', 'www', '???', 2, 1, '????', '2020-06-08 11:32:43');
INSERT INTO `t_user` VALUES (9, 'abc1', '1234', '1111111', '???', 2, 1, '????', '2020-06-10 11:32:56');
INSERT INTO `t_user` VALUES (10, 'bbbbbb', '???1', '冯绍峰', '???', 1, 2, '????', '2020-06-08 11:33:02');
INSERT INTO `t_user` VALUES (11, 'cccc', '12312', 'c4', '???', 1, 2, '????', '2020-06-08 11:33:08');
INSERT INTO `t_user` VALUES (12, 'hhh', '123456', '44444', '???', 1, 1, '????', '2020-06-03 11:33:12');
INSERT INTO `t_user` VALUES (13, 'ggg', '123456', 'g243423424', NULL, 2, 1, '2020-06-08 11:33:18', '2020-06-08 11:33:18');
INSERT INTO `t_user` VALUES (18, 'tt', 'xx.jpg', 'ttttt', NULL, 2, 1, '2020-06-08 11:33:59', '2020-06-08 11:33:59');
INSERT INTO `t_user` VALUES (22, 'tst11', 'xxx', '测试111', NULL, 2, 1, '2020-07-29 21:35:23', '2020-07-29 21:35:23');
INSERT INTO `t_user` VALUES (23, 'test2', '123456', '测试2', NULL, 1, 1, '2020-07-29 21:35:40', '2020-07-29 21:35:40');
INSERT INTO `t_user` VALUES (24, 'test3', '123456', '测试3', NULL, 2, 1, '2020-07-29 21:43:17', '2020-07-29 21:43:17');
INSERT INTO `t_user` VALUES (25, 'fdafsfd', '123456', '我烦了', NULL, 2, 1, '2020-08-03 14:25:16', '2020-08-03 14:25:16');
INSERT INTO `t_user` VALUES (26, '测试123', '123456', 'test123', NULL, 2, 1, '2020-08-04 09:32:20', '2020-08-04 09:32:20');
INSERT INTO `t_user` VALUES (27, 'xingling', '123444', '星霖', NULL, 1, 2, '2020-10-19 09:48:30', '2020-10-19 09:48:30');
INSERT INTO `t_user` VALUES (28, 'menglong', '888888', '梦龙', NULL, 2, 2, '2020-10-19 09:51:42', '2020-10-19 09:51:42');
INSERT INTO `t_user` VALUES (29, '请问请问', '请问企鹅', '委屈恶气呃', NULL, 1, 2, '2020-10-19 10:45:19', '2020-10-19 10:45:19');
INSERT INTO `t_user` VALUES (31, '444', '444', '444', NULL, 1, 1, '2020-10-20 11:07:28', '2020-10-20 11:07:28');
INSERT INTO `t_user` VALUES (32, '6666', '6666', '666666', NULL, 1, 1, '2020-11-02 14:46:09', '2020-11-02 14:46:09');
INSERT INTO `t_user` VALUES (33, '6777', '777', '777', NULL, 1, 1, '2020-11-02 14:47:59', '2020-11-02 14:47:59');
INSERT INTO `t_user` VALUES (34, '为人人', '3242 ', '23日324', NULL, 1, 1, '2020-11-02 14:48:44', '2020-11-02 14:48:44');
INSERT INTO `t_user` VALUES (37, '2221', '1212', '32323', NULL, 1, 1, '2020-11-02 17:09:12', '2020-11-02 17:09:12');
INSERT INTO `t_user` VALUES (38, 'biaobiao', '123213413', '展彪', NULL, 2, 1, '2012-08-09', '2012-08-09');
INSERT INTO `t_user` VALUES (39, 'zhangsan', '123', '张仲景', 'xx.jpg', 1, 2, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (40, 'lisi', '123', '李同', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (41, 'labixiaoxin', '123', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (42, '42342424', '123', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (43, 'biaobiai2', '24234', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (46, 'wukong', '2134213', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (47, 'bajie', '21434324', '暂无', 'xx.jpg', 1, 2, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (48, '234234', '2344', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (51, '324234234', '324234', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (52, 'yyyy', 'xxx', '暂无11', NULL, 2, 1, '2021-04-09', '2021-08-11 00:00:00');
INSERT INTO `t_user` VALUES (53, 'oooo', '123456', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (54, '435435', '435435', '暂无', 'xx.jpg', 1, 1, '2021-04-09', '2021-04-09');
INSERT INTO `t_user` VALUES (55, 'aini', '99999', '张三的哥哥彪彪', 'wu', 1, 1, '2021-05-12 12:15:20', '2021-05-12 12:15:20');
INSERT INTO `t_user` VALUES (56, '34324234', '123456', '234234', NULL, 1, 1, '2021-05-13 14:56:41', '2021-05-13 14:56:41');
INSERT INTO `t_user` VALUES (59, '234234AD', '3242', '234324', NULL, 1, 2, '2021-05-13 15:25:17', '2021-05-13 15:25:17');
INSERT INTO `t_user` VALUES (60, 'AFASFEF', 'WER', 'WER', NULL, 2, 1, '2021-05-13 15:25:29', '2021-05-13 15:25:29');
INSERT INTO `t_user` VALUES (61, '3333', '333', '333', NULL, 1, 2, '2021-05-13 15:27:37', '2021-05-13 15:27:37');
INSERT INTO `t_user` VALUES (63, 'wy', '123', '小王', 'xxx.jpg', 1, 1, '2000-11-08', '2000-11-08');
INSERT INTO `t_user` VALUES (66, 'sdfghjk', '123', 'sdfgh', 'xxx', 1, 1, '2021-08-15 00:23:51', '2021-08-15 00:23:53');
INSERT INTO `t_user` VALUES (67, 'ads', '1233', '爱迪生', 'xxx.jsp', 1, 1, '2021-08-15 09:09:06', '2021-08-15 09:09:11');

-- ----------------------------
-- Table structure for t_visit
-- ----------------------------
DROP TABLE IF EXISTS `t_visit`;
CREATE TABLE `t_visit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拜访ID',
  `user_id` int(11) NOT NULL COMMENT '业务员ID',
  `cust_id` int(11) NOT NULL COMMENT '客户ID',
  `visit_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拜访描述',
  `visit_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拜访时间',
  `create_time` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_visit
-- ----------------------------
INSERT INTO `t_visit` VALUES (1, 7, 6, '确定1期广告价格', '2020-07-01', '2020-08-03 21:16:56');
INSERT INTO `t_visit` VALUES (2, 7, 6, '确定2期广告价格', '2020-07-22', '2020-08-03 21:17:29');
INSERT INTO `t_visit` VALUES (3, 7, 2, '测试拜访', '2020-08-03', '2020-08-04 18:37:45');
INSERT INTO `t_visit` VALUES (4, 7, 1, '沟通一期  工程', '2020-07-06', '2020-08-06 09:44:33');
INSERT INTO `t_visit` VALUES (5, 7, 2, 'fdasfsafdasfa', '2020-08-03', '2020-08-06 09:46:47');
INSERT INTO `t_visit` VALUES (6, 7, 1, 'ertrwerwerwerw', '2020-10-15', '2020-10-15 14:41:23');
INSERT INTO `t_visit` VALUES (7, 7, 4, '生病了!!', '2020-10-15', '2020-10-28 09:29:42');
INSERT INTO `t_visit` VALUES (8, 7, 1, '手动阀手动阀微软', '2020-11-10', '2020-11-02 13:04:09');
INSERT INTO `t_visit` VALUES (9, 7, 1, '为热热我热温热认为人', '2020-11-05', '2020-11-02 13:04:51');
INSERT INTO `t_visit` VALUES (10, 7, 4, '温柔温热嗡嗡嗡王瑞荣', '2020-11-03', '2020-11-02 13:05:18');
INSERT INTO `t_visit` VALUES (11, 7, 1, 'rwererwrwre', '2020-11-13', '2020-11-03 16:38:30');
INSERT INTO `t_visit` VALUES (12, 25, 1, '问问去恶趣味全额我去饿', '2020-11-04', '2020-11-04 16:03:56');
INSERT INTO `t_visit` VALUES (13, 25, 1, '问问去驱蚊器恶趣味去委屈恶气我去饿', '2020-11-19', '2020-11-04 16:04:23');
INSERT INTO `t_visit` VALUES (14, 7, 6, '3前饿色的访问色弱粉色人', '2020-11-13', '2020-11-04 16:05:53');
INSERT INTO `t_visit` VALUES (15, 25, 1, '魏汝稳喂喂喂士大夫', '2020-11-07', '2020-11-04 16:07:24');
INSERT INTO `t_visit` VALUES (16, 7, 7, '53525435435435435543543543', '2020-11-05', '2020-11-04 16:36:03');
INSERT INTO `t_visit` VALUES (17, 7, 8, '温热微软人温热微软', '2020-11-11', '2020-11-04 16:36:24');
INSERT INTO `t_visit` VALUES (18, 7, 1, '1111', '2021-05-17', '2021-05-17 16:53:41');
INSERT INTO `t_visit` VALUES (19, 7, 1, '517', '2021-05-17', '2021-05-17 16:54:11');
INSERT INTO `t_visit` VALUES (20, 7, 1, '千万企鹅去', '2021-05-16', '2021-05-17 16:54:16');
INSERT INTO `t_visit` VALUES (21, 7, 1, '驱蚊器恶气', '2021-05-14', '2021-05-17 16:54:21');
INSERT INTO `t_visit` VALUES (22, 7, 1, 'wrwerwerwrwerwr', '2021-05-20', '2021-05-140');
INSERT INTO `t_visit` VALUES (23, 7, 1, 'werwrwer', '2021-05-20', '2021-05-140');
INSERT INTO `t_visit` VALUES (24, 7, 1, 'qw3re3qweqwerwerwe', '', '2021-05-151');
INSERT INTO `t_visit` VALUES (25, 7, 1, 'fdgsf', '2021-08-05', '2021-08-217');

SET FOREIGN_KEY_CHECKS = 1;
