/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : admin_app

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 19/06/2022 04:02:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
# Create Database
# ------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `admin_app` DEFAULT CHARACTER SET = utf8mb4;

Use `admin_app`;
# ------------------------------------------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键用户ID',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态0关1开',
  `avatar` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '头像地址',
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名/网名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '手机号',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qq',
  `rmb` bigint(20) NOT NULL DEFAULT 0 COMMENT '余额',
  `creator_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user`(`user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 4, 1, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic_source%2F9d%2Fc2%2Fdd%2F9dc2ddda0a69053caa0ef363c0c0bc25.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1655308372&t=0102c39db6f3370cd0f2c847bf531294', '1', '超管', '1', '1', 200, '2022-06-09 18:14:43');
INSERT INTO `sys_user` VALUES (14, 'test', 'ef8364020560a703cfc7aebebcd0b62d1bfea7d4a841eb8964cfbcda2ba85dd5', 5, 1, '12311', '123123', 'test', '345', '5467', 0, '2022-06-04 02:25:01');
INSERT INTO `sys_user` VALUES (15, 'test1', 'e8f81bba5388d565643dc51e766558cbf4f64b2c59e7768677bd2109afc1c9dc', 5, 1, '', '', '1', '0', '0', 0, '2022-06-04 02:25:02');
INSERT INTO `sys_user` VALUES (16, 'admin1', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:03:35');
INSERT INTO `sys_user` VALUES (19, 'admin12', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:11');
INSERT INTO `sys_user` VALUES (20, 'admin121', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:12');
INSERT INTO `sys_user` VALUES (21, '111', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:14');
INSERT INTO `sys_user` VALUES (22, '2222', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:16');
INSERT INTO `sys_user` VALUES (23, '555', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:18');
INSERT INTO `sys_user` VALUES (24, '5551', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:27');
INSERT INTO `sys_user` VALUES (25, '55511', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 00:04:29');
INSERT INTO `sys_user` VALUES (31, '5552112admin', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 18:58:56');
INSERT INTO `sys_user` VALUES (35, 'zk8rY', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:01:09');
INSERT INTO `sys_user` VALUES (36, '8ewrTYtiZJ2A6jw', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:01:17');
INSERT INTO `sys_user` VALUES (37, '1321235325', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:04:44');
INSERT INTO `sys_user` VALUES (38, 'fKptnJ2WAE6wWbP', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:10');
INSERT INTO `sys_user` VALUES (39, 'SJDbSh4sG5BBmp3', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:10');
INSERT INTO `sys_user` VALUES (40, 'AwxJReytHDMrmER', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:28');
INSERT INTO `sys_user` VALUES (41, 'aNd5cbPErQcHj4m', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:28');
INSERT INTO `sys_user` VALUES (42, 'XFkpA4Zj4iHcPYh', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:28');
INSERT INTO `sys_user` VALUES (43, 'RWCKF8Z7mGPbFrh', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:29');
INSERT INTO `sys_user` VALUES (44, 'CnnajHQjkXHNn2Y', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:29');
INSERT INTO `sys_user` VALUES (45, '2Gt4ennrbaftx78', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:29');
INSERT INTO `sys_user` VALUES (46, 'JDGErZix2wHm4mA', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:29');
INSERT INTO `sys_user` VALUES (47, '4njFk57JCZkxnJs', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:30');
INSERT INTO `sys_user` VALUES (48, '3mCCiwc4amHYAen', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:30');
INSERT INTO `sys_user` VALUES (49, 'aPjRZ83S8JahmJ8', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:30');
INSERT INTO `sys_user` VALUES (50, 'naZk8pFiaHnZ6Sw', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:30');
INSERT INTO `sys_user` VALUES (51, 'HNjZ8jNZMnRyzrZ', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:31');
INSERT INTO `sys_user` VALUES (52, 'KbYzCDx4eXfy7if', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:31');
INSERT INTO `sys_user` VALUES (53, 'd8ZWZ8BkzEcQHSw', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:31');
INSERT INTO `sys_user` VALUES (54, 'zQA3zBtHQZr5mrQ', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:31');
INSERT INTO `sys_user` VALUES (55, 'r75sKk37GhY2QTE', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:31');
INSERT INTO `sys_user` VALUES (56, 'kar7eajhymR6CmP', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:32');
INSERT INTO `sys_user` VALUES (57, 'PkAQbkHB2Sh8T8w', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:32');
INSERT INTO `sys_user` VALUES (58, 'eCpbwcwa2k8E7FF', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:32');
INSERT INTO `sys_user` VALUES (59, 'sPbzad7FsrQnm4z', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:32');
INSERT INTO `sys_user` VALUES (60, 'pbWCRbjKcfzMb6x', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:33');
INSERT INTO `sys_user` VALUES (61, 'CFJEFprcjDATMQz', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:33');
INSERT INTO `sys_user` VALUES (62, 'XydbGFSmSWyby6K', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:33');
INSERT INTO `sys_user` VALUES (63, 'TttCEWGRNaR82pm', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:33');
INSERT INTO `sys_user` VALUES (64, '53iTpNasZA3P4jb', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:34');
INSERT INTO `sys_user` VALUES (65, 'WfWHEZKiHpPkMmw', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:34');
INSERT INTO `sys_user` VALUES (66, 'WWAFAPiti7tCmcK', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:34');
INSERT INTO `sys_user` VALUES (67, 'axk4yZKcajP7BTy', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:34');
INSERT INTO `sys_user` VALUES (68, 'ZS4NkbcXyrDHdKX', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:35');
INSERT INTO `sys_user` VALUES (69, 'Tm3aaFREFfmRSAY', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:35');
INSERT INTO `sys_user` VALUES (70, 'tf6njWfzA4DiCey', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:35');
INSERT INTO `sys_user` VALUES (71, '6hXZi442EJzi5d5', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:35');
INSERT INTO `sys_user` VALUES (72, 'i7EKRFDYSAkYJHz', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:36');
INSERT INTO `sys_user` VALUES (73, 'PisTJTmxC2PQ3Hz', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:36');
INSERT INTO `sys_user` VALUES (74, 'GhGNE6YCC7ttfri', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:36');
INSERT INTO `sys_user` VALUES (75, 'QizTnhMxT6R3XH8', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:36');
INSERT INTO `sys_user` VALUES (76, 'CkCkTZ2kHR7ajNb', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:37');
INSERT INTO `sys_user` VALUES (77, 'MnttJ6sQZRWQHTW', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:37');
INSERT INTO `sys_user` VALUES (78, '2sH8wYaG7zywdHP', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:37');
INSERT INTO `sys_user` VALUES (79, '2iajcE7N8ayJQJD', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:37');
INSERT INTO `sys_user` VALUES (80, 'dcRAyaBetZT8PR3', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:38');
INSERT INTO `sys_user` VALUES (81, 'DnNwyAhnky4EDfE', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:38');
INSERT INTO `sys_user` VALUES (82, 'EW6DAsNtM7rX5JY', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:38');
INSERT INTO `sys_user` VALUES (83, 'wEsCH2f7SxZpRPi', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:38');
INSERT INTO `sys_user` VALUES (84, 'An5w2trZAR3ad3b', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:39');
INSERT INTO `sys_user` VALUES (85, '63fddA788YRCtNi', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:39');
INSERT INTO `sys_user` VALUES (86, 'JPWnzxj2yHmd47f', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:39');
INSERT INTO `sys_user` VALUES (87, 'aeXQyZFbCDWk38n', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:39');
INSERT INTO `sys_user` VALUES (88, '7AFDmm2jiynnswM', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:40');
INSERT INTO `sys_user` VALUES (89, 'y7Q85Y5dGfyKr3M', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:40');
INSERT INTO `sys_user` VALUES (90, 'MxcTridaf7bESrK', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:41');
INSERT INTO `sys_user` VALUES (91, 'KHSn7XbezbpxBns', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:41');
INSERT INTO `sys_user` VALUES (92, 'DfxxfYMRQdQ7ATe', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:41');
INSERT INTO `sys_user` VALUES (93, 'cZF7bJG7dP4Fc5i', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:41');
INSERT INTO `sys_user` VALUES (94, 'm7Eet6k36sSNswM', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:42');
INSERT INTO `sys_user` VALUES (95, 'TWwbJYFmj45hMRC', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:42');
INSERT INTO `sys_user` VALUES (96, 'PRyGHbF8cisANJm', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:42');
INSERT INTO `sys_user` VALUES (97, 'MDEpGAfdz4FNHRf', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:42');
INSERT INTO `sys_user` VALUES (98, 'cnCnbn488RWJA4N', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:43');
INSERT INTO `sys_user` VALUES (99, 'bebKpkjAfXhzGtC', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:43');
INSERT INTO `sys_user` VALUES (100, 'Nbj8HZYW5zAGPij', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:43');
INSERT INTO `sys_user` VALUES (101, 'XX2xPCjRCzxNN8i', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:43');
INSERT INTO `sys_user` VALUES (102, 'Ja4X5p2WQz6DrAd', 'ca4d813add4aff6947970522723bc2f4322729de1c138ca125de1691787997ca', 0, 0, '', '', '', '0', '0', 0, '2022-06-06 19:05:44');

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表id',
  `sys_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统名称',
  `sys_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统logo图标',
  `sys_home` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台首页地址',
  `sys_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '系统后台地址',
  `sys_bottom_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统底部信息',
  `sys_notice_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '系统公告',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `user_init_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户管理：初始、重置密码',
  `sys_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统颜色',
  `sys_api_encrypt` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'API加密 Y/N',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名',
  `level` int(11) NOT NULL COMMENT '权限',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menus` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '显示的菜单',
  `permissions` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限API列表',
  `creator_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '创建人',
  `creator_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '更新人',
  `updated_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (4, '超级管理员', 1, '超管', '24,33,39,40,41,34,30,31,32,26,36,37,38,35,46,44,45,43,52,53,51,55,56,57,54,58,59,61,60', '13,11,14,15,18,19,20,17,23,24,25,26,22,28,29,31,32,33,27,16,34,36,37,35', '1', '2022-05-30 16:58:28', '1', '2022-06-07 18:02:42');
INSERT INTO `sys_role` VALUES (5, '管理员', 2, '管理员的', '24,44,45,43,36,37,38,35', '26,11', '1', '2022-05-23 17:28:54', '1', '2022-05-30 22:50:32');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '上级id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '权限名字',
  `uri` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'uri',
  `p_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型0前缀1 URI',
  `is_public` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否公开权限 默认0  1公开',
  `has_children` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否有下级',
  `sub_count` int(11) NOT NULL DEFAULT 0 COMMENT '子菜单数量',
  `creator_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '创建人',
  `creator_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '更新人',
  `updated_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (11, 0, '后台管理-用户管理', '/admin/user', 0, 0, 1, 5, '', '2022-05-29 23:50:40', '', '2022-06-07 18:00:02');
INSERT INTO `sys_permission` VALUES (13, 11, '添加用户', '/add', 1, 0, 0, 0, '', '2022-05-29 22:22:48', '', '2022-05-29 23:49:56');
INSERT INTO `sys_permission` VALUES (14, 11, '删除用户', '/delete', 1, 0, 0, 0, '1', '2022-05-30 21:10:18', '', '2022-05-30 21:10:56');
INSERT INTO `sys_permission` VALUES (15, 11, '用户列表', '/list', 1, 0, 0, 0, '1', '2022-05-30 21:54:57', '', '2022-05-30 21:55:03');
INSERT INTO `sys_permission` VALUES (16, 11, '更新用户', '/update', 1, 0, 0, 0, '1', '2022-05-30 22:27:53', '1', '2022-05-30 22:27:53');
INSERT INTO `sys_permission` VALUES (17, 0, '后台管理-菜单管理', '/admin/menu', 0, 0, 1, 3, '1', '2022-05-30 22:28:22', '', '2022-05-30 22:33:14');
INSERT INTO `sys_permission` VALUES (18, 17, '添加菜单', '/add', 1, 0, 0, 0, '1', '2022-05-30 22:29:55', '', '2022-05-30 22:30:21');
INSERT INTO `sys_permission` VALUES (19, 17, '更新菜单', '/update', 1, 0, 0, 0, '1', '2022-05-30 22:30:12', '1', '2022-05-30 22:30:12');
INSERT INTO `sys_permission` VALUES (20, 17, '删除菜单', '/delete', 1, 0, 0, 0, '1', '2022-05-30 22:30:34', '1', '2022-05-30 22:30:34');
INSERT INTO `sys_permission` VALUES (22, 0, '后台管理-角色管理', '/admin/role', 0, 0, 1, 4, '1', '2022-05-30 22:32:19', '', '2022-05-30 22:33:53');
INSERT INTO `sys_permission` VALUES (23, 22, '添加', '/add', 1, 0, 0, 0, '1', '2022-05-30 22:32:44', '1', '2022-05-30 22:32:44');
INSERT INTO `sys_permission` VALUES (24, 22, '修改', '/edit', 1, 0, 0, 0, '1', '2022-05-30 22:33:32', '1', '2022-05-30 22:33:32');
INSERT INTO `sys_permission` VALUES (25, 22, '删除', '/delete', 1, 0, 0, 0, '1', '2022-05-30 22:33:43', '1', '2022-05-30 22:33:43');
INSERT INTO `sys_permission` VALUES (26, 22, '列表', '/list', 1, 0, 0, 0, '1', '2022-05-30 22:33:53', '1', '2022-05-30 22:33:53');
INSERT INTO `sys_permission` VALUES (27, 0, '后台管理-API权限', '/admin/permission', 0, 0, 1, 5, '1', '2022-05-30 22:34:23', '', '2022-05-30 22:41:06');
INSERT INTO `sys_permission` VALUES (28, 27, '添加', '/add', 1, 0, 0, 0, '1', '2022-05-30 22:34:48', '1', '2022-05-30 22:34:48');
INSERT INTO `sys_permission` VALUES (29, 27, '根据上级类目ID查询所有子孙ID', '/child', 1, 0, 0, 0, '1', '2022-05-30 22:37:38', '1', '2022-05-30 22:37:38');
INSERT INTO `sys_permission` VALUES (31, 27, '查询列表接口', '/query', 1, 0, 0, 0, '1', '2022-05-30 22:39:53', '1', '2022-05-30 22:39:53');
INSERT INTO `sys_permission` VALUES (32, 27, '更新API', '/update', 1, 0, 0, 0, '1', '2022-05-30 22:40:57', '1', '2022-05-30 22:40:57');
INSERT INTO `sys_permission` VALUES (33, 27, '删除', '/delete', 1, 0, 0, 0, '1', '2022-05-30 22:41:06', '1', '2022-05-30 22:41:06');
INSERT INTO `sys_permission` VALUES (34, 11, '加款接口', '/addRmb', 1, 0, 0, 0, '1', '2022-06-07 18:00:02', '1', '2022-06-07 18:00:02');
INSERT INTO `sys_permission` VALUES (35, 0, '后台管理-日志-余额消费', '/admin/log/user-rmb', 0, 0, 1, 2, '1', '2022-06-07 18:01:45', '', '2022-06-07 18:02:28');
INSERT INTO `sys_permission` VALUES (36, 35, '列表', '/list', 1, 0, 0, 0, '1', '2022-06-07 18:02:13', '1', '2022-06-07 18:02:13');
INSERT INTO `sys_permission` VALUES (37, 35, '清空', '/clear', 1, 0, 0, 0, '1', '2022-06-07 18:02:28', '1', '2022-06-07 18:02:28');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(11) NOT NULL COMMENT '上级ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'laber',
  `m_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '菜单类型',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '组件路径',
  `component_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '组件名称',
  `has_children` tinyint(1) NOT NULL COMMENT '是否有下级',
  `hidden` tinyint(1) NOT NULL COMMENT '是否隐藏',
  `i_frame` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是外链',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '权限',
  `cache` tinyint(1) NOT NULL DEFAULT 0 COMMENT '缓存',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'icon',
  `sub_count` int(11) NOT NULL COMMENT '子菜单数量',
  `menu_sort` int(11) NOT NULL COMMENT '排序',
  `creator_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '创建人',
  `creator_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updated_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '更新人',
  `updated_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (24, 0, '系统设置', '系统设置', 0, 'system', '', '', 1, 0, 0, '', 0, 'setting', 4, 999, '1', '2022-05-18 20:10:13', '1', '2022-05-30 22:25:34');
INSERT INTO `sys_menu` VALUES (26, 24, '菜单管理', '菜单管理', 1, 'menu', 'system/menu/index', 'MenuList', 1, 0, 0, 'admin:menu:list', 0, 'menu', 4, 997, '1', '2022-05-18 20:10:23', '1', '2022-05-24 02:10:04');
INSERT INTO `sys_menu` VALUES (30, 26, '新增', '新增', 2, '', '', '', 0, 0, 0, 'admin:menu:add', 0, '', 0, 999, '1', '2022-05-18 02:57:30', '1', '2022-05-18 02:57:30');
INSERT INTO `sys_menu` VALUES (31, 26, '修改', '修改', 2, '', '', '', 0, 0, 0, 'admin:menu:edit', 0, '', 0, 999, '1', '2022-05-18 03:00:39', '1', '2022-05-18 03:00:39');
INSERT INTO `sys_menu` VALUES (32, 26, '删除', '删除', 2, '', '', '', 0, 0, 0, 'admin:menu:del', 0, '', 0, 999, '1', '2022-05-18 03:03:20', '1', '2022-05-18 03:03:20');
INSERT INTO `sys_menu` VALUES (33, 0, '外链', '外链', 0, 'http://www.baidu.com', '', '', 0, 0, 1, '', 0, '链接', 0, 1000, '1', '2022-05-30 23:04:00', '1', '2022-05-30 23:04:00');
INSERT INTO `sys_menu` VALUES (34, 24, '角色管理', '角色管理', 1, 'role', 'system/role/index', 'Role', 1, 0, 0, 'admin:roles:list', 0, 'role', 3, 999, '1', '2022-05-18 20:20:57', '1', '2022-05-23 20:29:58');
INSERT INTO `sys_menu` VALUES (35, 24, '用户管理', '用户管理', 1, 'user', 'system/user/index', 'User', 1, 0, 0, 'admin:user:list', 0, 'peoples', 3, 996, '1', '2022-05-19 23:37:39', '1', '2022-05-23 20:06:48');
INSERT INTO `sys_menu` VALUES (36, 35, '新增', '新增', 2, '', '', '', 0, 0, 0, 'admin:user:add', 0, '', 0, 999, '1', '2022-05-23 20:06:01', '1', '2022-05-23 20:06:01');
INSERT INTO `sys_menu` VALUES (37, 35, '修改', '修改', 2, '', '', '', 0, 0, 0, 'admin:user:edit', 0, '', 0, 999, '1', '2022-05-23 20:06:26', '1', '2022-05-23 20:06:26');
INSERT INTO `sys_menu` VALUES (38, 35, '删除', '删除', 2, '', '', '', 0, 0, 0, 'admin:user:del', 0, '', 0, 999, '1', '2022-05-23 20:06:48', '1', '2022-05-23 20:06:48');
INSERT INTO `sys_menu` VALUES (39, 34, '新增', '新增', 2, '', '', '', 0, 0, 0, 'admin:roles:add', 0, '', 0, 999, '1', '2022-05-23 20:29:40', '1', '2022-05-23 20:29:40');
INSERT INTO `sys_menu` VALUES (40, 34, '修改', '修改', 2, '', '', '', 0, 0, 0, 'admin:roles:edit', 0, '', 0, 999, '1', '2022-05-23 20:29:49', '1', '2022-05-23 20:29:49');
INSERT INTO `sys_menu` VALUES (41, 34, '删除', '删除', 2, '', '', '', 0, 0, 0, 'admin:roles:del', 0, '', 0, 999, '1', '2022-05-23 20:29:58', '1', '2022-05-23 20:29:58');
INSERT INTO `sys_menu` VALUES (42, 26, '表格-操作', '表格-操作', 2, '', '', '', 0, 0, 0, 'admin:menu:table:operate', 0, '', 0, 999, '1', '2022-05-24 02:10:04', '1', '2022-05-24 02:10:04');
INSERT INTO `sys_menu` VALUES (43, 0, '全局权限', '全局权限', 0, 'global-permission', '', '', 1, 1, 0, '', 0, 'role', 4, 9999, '1', '2022-05-31 23:24:04', '1', '2022-06-04 02:19:47');
INSERT INTO `sys_menu` VALUES (44, 43, '搜索栏-刷新按钮', '搜索栏-刷新按钮', 2, '', '', '', 0, 0, 0, 'global:tool-search:refresh', 0, '', 0, 999, '1', '2022-05-24 02:22:53', '1', '2022-05-24 02:22:53');
INSERT INTO `sys_menu` VALUES (45, 43, '搜索栏', '搜索栏', 2, '', '', '', 0, 0, 0, 'global:tool-search', 0, '', 0, 999, '1', '2022-05-24 02:33:30', '1', '2022-05-24 02:33:30');
INSERT INTO `sys_menu` VALUES (46, 24, 'API权限', 'API权限', 1, 'permission', 'system/permission/index', 'Permission', 1, 0, 0, 'admin:permission:list', 0, 'permission', 4, 998, '1', '2022-05-28 20:12:09', '1', '2022-05-30 17:49:34');
INSERT INTO `sys_menu` VALUES (47, 46, '新增', '新增', 2, '', '', '', 0, 0, 0, 'admin:permission:add', 0, '', 0, 999, '1', '2022-05-30 17:44:25', '1', '2022-05-30 17:44:25');
INSERT INTO `sys_menu` VALUES (48, 46, '修改', '修改', 2, '', '', '', 0, 0, 0, 'admin:permission:edit', 0, '', 0, 999, '1', '2022-05-30 17:44:36', '1', '2022-05-30 17:44:36');
INSERT INTO `sys_menu` VALUES (49, 46, '删除', '删除', 2, '', '', '', 0, 0, 0, 'admin:permission:del', 0, '', 0, 999, '1', '2022-05-30 17:44:46', '1', '2022-05-30 17:44:46');
INSERT INTO `sys_menu` VALUES (50, 46, '表格操作', '表格操作', 2, '', '', '', 0, 0, 0, 'admin:permission:table:operate', 0, '', 0, 999, '1', '2022-05-30 17:49:34', '1', '2022-05-30 17:49:34');
INSERT INTO `sys_menu` VALUES (51, 0, '应用管理', '应用管理', 0, 'app', '', '', 1, 0, 0, '', 0, 'app', 2, 999, '1', '2022-05-31 23:03:07', '1', '2022-05-31 23:28:42');
INSERT INTO `sys_menu` VALUES (52, 51, '应用类型', '应用类型', 1, 'type', '', '', 0, 0, 0, '', 0, '类型 (1)', 0, 999, '1', '2022-05-31 23:07:49', '1', '2022-05-31 23:07:49');
INSERT INTO `sys_menu` VALUES (53, 51, '应用列表', '应用列表', 1, 'list', '', '', 0, 0, 0, '', 0, 'list', 0, 999, '1', '2022-05-31 23:21:03', '1', '2022-05-31 23:21:03');
INSERT INTO `sys_menu` VALUES (54, 0, '小程序管理', '小程序管理', 0, 'app-sys', '', '', 1, 0, 0, '', 0, '小程序', 3, 999, '1', '2022-05-31 23:31:00', '1', '2022-06-03 17:19:57');
INSERT INTO `sys_menu` VALUES (55, 54, '首页', '首页', 1, 'index', '', '', 0, 0, 0, '', 0, 'index', 0, 999, '1', '2022-06-03 17:18:52', '1', '2022-06-03 17:18:52');
INSERT INTO `sys_menu` VALUES (56, 54, '应用列表', '应用列表', 1, 'app-list', '', '', 0, 0, 0, '', 0, 'list', 0, 999, '1', '2022-06-03 17:19:24', '1', '2022-06-03 17:19:24');
INSERT INTO `sys_menu` VALUES (57, 54, '用户管理', '用户管理', 1, 'user-list', '', '', 0, 0, 0, '', 0, '用户', 0, 999, '1', '2022-06-03 17:19:57', '1', '2022-06-03 17:19:57');
INSERT INTO `sys_menu` VALUES (58, 43, '首页罗盘展示数据-超管拥有', '首页罗盘展示数据-超管拥有', 2, '', '', '', 0, 0, 0, 'global:dashboard:index-data:supper', 0, '', 0, 999, '1', '2022-06-04 02:00:28', '1', '2022-06-04 02:00:28');
INSERT INTO `sys_menu` VALUES (59, 43, '首页罗盘展示数据-超管拥有', '首页罗盘展示数据-超管拥有', 2, '', '', '', 0, 0, 0, 'global:dashboard:index-data:zhanzhang', 0, '', 0, 999, '1', '2022-06-04 02:19:47', '1', '2022-06-04 02:19:47');
INSERT INTO `sys_menu` VALUES (60, 0, '系统监控', '系统监控', 0, 'monitor', '', '', 1, 0, 0, '', 0, 'monitor', 1, 999, '1', '2022-06-06 19:13:57', '1', '2022-06-06 22:00:44');
INSERT INTO `sys_menu` VALUES (61, 60, '余额变动日志', '余额变动日志', 1, 'log-user-rmb', 'monitor/log/index', 'LogUserRmb', 0, 0, 0, '', 0, 'log', 0, 999, '1', '2022-06-06 19:15:12', '1', '2022-06-06 19:15:12');

-- ----------------------------
-- Table structure for sys_login_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_logs`;
CREATE TABLE `sys_login_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '登陆IP',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `header` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'header',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '登陆时间',
  `normal` int(11) NULL DEFAULT NULL COMMENT '是否正常登陆',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'tips',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登陆日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_create_time_index`(`create_time`) USING BTREE,
  INDEX `inx_log_type`(`log_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for log_sys_user_rmb
-- ----------------------------
DROP TABLE IF EXISTS `log_sys_user_rmb`;
CREATE TABLE `log_sys_user_rmb`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `consume` int(11) NOT NULL COMMENT '消耗余额',
  `before` int(11) NOT NULL COMMENT '消耗前余额',
  `after` int(11) NOT NULL COMMENT '消耗后余额',
  `creator_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ip',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '余额消费表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_sys_user_rmb
-- ----------------------------
INSERT INTO `log_sys_user_rmb` VALUES (1, '后台加扣款操作', 1, 10, 100, 110, '2022-06-07 03:49:51', '');
INSERT INTO `log_sys_user_rmb` VALUES (2, '后台加扣款操作', 1, 10, 110, 120, '2022-06-07 03:50:05', '');
INSERT INTO `log_sys_user_rmb` VALUES (3, '后台加扣款操作', 1, 50, 120, 170, '2022-06-07 03:50:15', '');
INSERT INTO `log_sys_user_rmb` VALUES (4, '后台加扣款操作', 1, -20, 170, 150, '2022-06-07 03:50:21', '');
INSERT INTO `log_sys_user_rmb` VALUES (5, '后台加扣款操作', 1, 10, 150, 160, '2022-06-07 03:52:46', '');
INSERT INTO `log_sys_user_rmb` VALUES (6, '后台加扣款操作', 1, 10, 160, 170, '2022-06-07 03:58:42', '127.0.0.1:50648');
INSERT INTO `log_sys_user_rmb` VALUES (7, '后台加扣款操作', 1, 10, 170, 180, '2022-06-07 04:00:13', '127.0.0.1:50878');
INSERT INTO `log_sys_user_rmb` VALUES (8, '后台加扣款操作', 1, 10, 180, 190, '2022-06-07 04:00:27', '127.0.0.1:50902');
INSERT INTO `log_sys_user_rmb` VALUES (9, '后台加扣款操作', 1, 10, 190, 200, '2022-06-07 04:01:19', '127.0.0.1:51008');
INSERT INTO `log_sys_user_rmb` VALUES (10, '后台加扣款操作', 1, 100, 200, 300, '2022-06-07 04:01:34', '127.0.0.1:51042');
INSERT INTO `log_sys_user_rmb` VALUES (11, '后台加扣款操作', 1, -100, 300, 200, '2022-06-07 04:02:35', '127.0.0.1:51249');
INSERT INTO `log_sys_user_rmb` VALUES (12, '后台加扣款操作', 1, -1, 200, 199, '2022-06-07 04:03:42', '127.0.0.1:60791');
INSERT INTO `log_sys_user_rmb` VALUES (13, '后台加扣款操作', 1, 99, 199, 298, '2022-06-07 04:11:14', '127.0.0.1:61842');
INSERT INTO `log_sys_user_rmb` VALUES (14, '后台加扣款操作', 1, -98, 298, 200, '2022-06-07 04:11:19', '127.0.0.1:61857');
INSERT INTO `log_sys_user_rmb` VALUES (15, '后台加扣款操作', 1, 10, 200, 210, '2022-06-07 04:23:42', '127.0.0.1');
INSERT INTO `log_sys_user_rmb` VALUES (16, '后台加扣款操作', 1, 10, 210, 220, '2022-06-07 04:28:03', '127.0.0.1');
INSERT INTO `log_sys_user_rmb` VALUES (17, '后台加扣款操作', 1, -20, 220, 200, '2022-06-09 18:14:43', '127.0.0.1');

SET FOREIGN_KEY_CHECKS = 1;
