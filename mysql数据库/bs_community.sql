/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : bs_community

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 05/02/2021 02:00:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bs_activity
-- ----------------------------
DROP TABLE IF EXISTS `bs_activity`;
CREATE TABLE `bs_activity`  (
  `activity_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `activity_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '活动图片',
  `activity_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
  `introduction` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动简介',
  `activity_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动内容',
  `societies_id` bigint(0) NULL DEFAULT NULL COMMENT '社团ID',
  `societies_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团名称',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '活动地点',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态（0审核中 1审核通过  2 审核失败）',
  `open_time` datetime(0) NULL DEFAULT NULL COMMENT '活动时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社团活动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_activity
-- ----------------------------
INSERT INTO `bs_activity` VALUES (100, 'http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png', '测试活动', '这是一个测试活动', '<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>', 100, '测试社团', '测试地址', '1', '2021-03-12 00:00:00', '2021-02-02 01:10:19', '2021-02-03 00:00:45');
INSERT INTO `bs_activity` VALUES (101, 'http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png', '测试活动', '这是一个测试活动', '<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>', 100, '测试社团', '测试地址', '1', '2021-03-12 00:00:00', '2021-02-02 01:10:19', '2021-02-03 00:00:45');
INSERT INTO `bs_activity` VALUES (102, 'http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png', '测试活动', '这是一个测试活动', '<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>', 100, '测试社团', '测试地址', '1', '2021-03-12 00:00:00', '2021-02-02 01:10:19', '2021-02-03 00:00:45');
INSERT INTO `bs_activity` VALUES (103, 'http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png', '测试活动', '这是一个测试活动', '<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>', 100, '测试社团', '测试地址', '1', '2021-03-12 00:00:00', '2021-02-02 01:10:19', '2021-02-03 00:00:45');
INSERT INTO `bs_activity` VALUES (106, 'http://localhost:8080/profile/upload/2021/02/03/a95c2d95-689e-4bcb-ba41-9977a3f0e1f1.png', '测试活动3', '测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3', '<p>测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3</p>', 100, '测试社团', '测试活动3测试活动3测试活动3', '0', NULL, '2021-02-03 00:39:31', NULL);

-- ----------------------------
-- Table structure for bs_activity_like
-- ----------------------------
DROP TABLE IF EXISTS `bs_activity_like`;
CREATE TABLE `bs_activity_like`  (
  `like_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '点赞ID',
  `liker_id` bigint(0) NULL DEFAULT NULL COMMENT '点赞人ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '点赞时间',
  PRIMARY KEY (`like_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_activity_like
-- ----------------------------

-- ----------------------------
-- Table structure for bs_president_apply
-- ----------------------------
DROP TABLE IF EXISTS `bs_president_apply`;
CREATE TABLE `bs_president_apply`  (
  `apply_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `president_id` bigint(0) NOT NULL COMMENT '社长ID',
  `societies_id` bigint(0) NULL DEFAULT NULL COMMENT '社团ID',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态（0审核中 1审核通过  2 审核失败）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '转正时间',
  PRIMARY KEY (`apply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社长申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_president_apply
-- ----------------------------
INSERT INTO `bs_president_apply` VALUES (100, 1, 100, '1', '2021-02-02 23:14:34', '2021-02-02 23:46:46');

-- ----------------------------
-- Table structure for bs_societies
-- ----------------------------
DROP TABLE IF EXISTS `bs_societies`;
CREATE TABLE `bs_societies`  (
  `societies_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '社团ID',
  `president_id` bigint(0) NULL DEFAULT NULL COMMENT '社长ID',
  `societies_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '社团名称',
  `societies_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '社团类型',
  `societies_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '社团图片',
  `members` int(0) NULL DEFAULT 0 COMMENT '成员数',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团理念',
  PRIMARY KEY (`societies_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社团表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_societies
-- ----------------------------
INSERT INTO `bs_societies` VALUES (100, 1, '测试社团', '1', 'http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png', 2, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (101, NULL, '测试社团2', '2', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (102, NULL, '测试社团3', '3', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (103, NULL, '测试社团4', '4', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (104, NULL, '测试社团5', '1', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (105, NULL, '测试社团6', '1', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (106, NULL, '测试社团4', '1', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');
INSERT INTO `bs_societies` VALUES (107, NULL, '测试社团7', '1', 'http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg', 0, '0', '0', '', '2021-02-01 00:11:03', '测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团');

-- ----------------------------
-- Table structure for bs_societies_comment
-- ----------------------------
DROP TABLE IF EXISTS `bs_societies_comment`;
CREATE TABLE `bs_societies_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `reply_id` bigint(0) NULL DEFAULT NULL COMMENT '回复ID',
  `societies_id` bigint(0) NULL DEFAULT NULL COMMENT '社团ID',
  `comment_id` bigint(0) NULL DEFAULT NULL COMMENT '评论人ID',
  `target_id` bigint(0) NULL DEFAULT NULL COMMENT '目标用户ID',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论内容',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社团评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_societies_comment
-- ----------------------------
INSERT INTO `bs_societies_comment` VALUES (100, 0, 100, 2, NULL, '五千万', '2021-02-05 01:10:05');
INSERT INTO `bs_societies_comment` VALUES (101, 0, 100, 2, NULL, '士大夫', '2021-02-05 01:10:08');
INSERT INTO `bs_societies_comment` VALUES (102, 100, 100, 2, 2, '是的', '2021-02-05 01:45:32');
INSERT INTO `bs_societies_comment` VALUES (103, 100, 100, 2, 2, '企业', '2021-02-05 01:45:50');

-- ----------------------------
-- Table structure for bs_societies_member
-- ----------------------------
DROP TABLE IF EXISTS `bs_societies_member`;
CREATE TABLE `bs_societies_member`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `member_id` bigint(0) NULL DEFAULT NULL COMMENT '成员ID',
  `member_avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '社团图片',
  `member_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成员名称',
  `member_phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成员联系方式',
  `societies_id` bigint(0) NULL DEFAULT NULL COMMENT '社团ID',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '成员状态（0审核中 1正式成员）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '转正时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社团成员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bs_societies_member
-- ----------------------------
INSERT INTO `bs_societies_member` VALUES (100, 1, '', '超级管理员', '15888888888', 100, '1', '0', '2021-02-04 11:17:27', '2021-02-04 17:26:41');
INSERT INTO `bs_societies_member` VALUES (101, 2, '', '测试用户1', '15666666666', 100, '1', '0', '2021-02-04 17:00:47', '2021-02-04 17:22:55');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'bs_activity', '社团活动表', NULL, NULL, 'BsActivity', 'crud', 'com.bs.community', 'community', 'activity', '社团活动', 'bs', '0', '/', '{\"parentMenuId\":1}', 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08', NULL);
INSERT INTO `gen_table` VALUES (3, 'bs_activity_like', '活动点赞表', NULL, NULL, 'BsActivityLike', 'crud', 'com.bs.community', 'community', 'activitylike', '活动点赞', 'bs', '0', '/', '{\"parentMenuId\":1}', 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:26', NULL);
INSERT INTO `gen_table` VALUES (5, 'bs_societies', '社团表', NULL, NULL, 'BsSocieties', 'crud', 'com.bs.community', 'community', 'societies', '社团', 'bs', '0', '/', '{\"parentMenuId\":1}', 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56', NULL);
INSERT INTO `gen_table` VALUES (6, 'bs_societies_member', '社团成员表', NULL, NULL, 'BsSocietiesMember', 'crud', 'com.bs.community', 'community', 'societiesmember', '社团成员', 'bs', '0', '/', '{\"parentMenuId\":1}', 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:28:02', NULL);
INSERT INTO `gen_table` VALUES (7, 'bs_societies_comment', '社团评论表', NULL, NULL, 'BsSocietiesComment', 'crud', 'com.bs.community', 'community', 'societiescomment', '活动评论', 'bs', '0', '/', '{}', 'admin', '2021-02-02 00:09:54', '', '2021-02-04 22:30:56', NULL);
INSERT INTO `gen_table` VALUES (8, 'bs_president_apply', '社长申请表', NULL, NULL, 'BsPresidentApply', 'crud', 'com.bs.community', 'community', 'presidentapply', '社长申请', 'bs', '0', '/', '{\"parentMenuId\":1}', 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:09', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'activity_id', '活动ID', 'bigint', 'Long', 'activityId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (2, '1', 'activity_img', '活动图片', 'varchar(100)', 'String', 'activityImg', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'imageUpload', '', 2, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (3, '1', 'activity_name', '活动名称', 'varchar(30)', 'String', 'activityName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (4, '1', 'introduction', '活动简介', 'varchar(150)', 'String', 'introduction', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (5, '1', 'activity_content', '活动内容', 'text', 'String', 'activityContent', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'editor', '', 5, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (6, '1', 'societies_id', '社团ID', 'bigint', 'Long', 'societiesId', '0', '0', NULL, '1', '1', NULL, '1', 'EQ', 'select', '', 6, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (7, '1', 'societies_name', '社团名称', 'varchar(30)', 'String', 'societiesName', '0', '0', '1', '1', '1', '1', NULL, 'LIKE', 'input', '', 7, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (8, '1', 'members', '活动参加人数', 'int', 'Long', 'members', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (9, '1', 'status', '审核状态（0审核中 1审核通过  2 审核失败）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 9, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (10, '1', 'open_time', '活动时间', 'datetime', 'Date', 'openTime', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (11, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (12, '1', 'update_time', '发布时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-01-31 21:51:02', '', '2021-01-31 22:27:08');
INSERT INTO `gen_table_column` VALUES (20, '3', 'like_id', '点赞ID', 'bigint', 'Long', 'likeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:26');
INSERT INTO `gen_table_column` VALUES (21, '3', 'liker_id', '点赞人ID', 'bigint', 'Long', 'likerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:26');
INSERT INTO `gen_table_column` VALUES (22, '3', 'create_time', '点赞时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:26');
INSERT INTO `gen_table_column` VALUES (31, '5', 'societies_id', '社团ID', 'bigint', 'Long', 'societiesId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (32, '5', 'president_id', '社长ID', 'bigint', 'Long', 'presidentId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (33, '5', 'societies_name', '社团名称', 'varchar(30)', 'String', 'societiesName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (34, '5', 'societies_type', '社团类型', 'varchar(2)', 'String', 'societiesType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'societies_type', 4, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (35, '5', 'societies_img', '社团图片', 'varchar(100)', 'String', 'societiesImg', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'imageUpload', '', 5, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (36, '5', 'members', '成员数', 'int', 'Long', 'members', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (37, '5', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (38, '5', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (39, '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (40, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (41, '5', 'remark', '社团理念', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:27:56');
INSERT INTO `gen_table_column` VALUES (42, '6', 'id', 'ID', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (43, '6', 'member_id', '成员ID', 'bigint', 'Long', 'memberId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (44, '6', 'member_avatar', '社团图片', 'varchar(100)', 'String', 'memberAvatar', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'imageUpload', '', 3, 'admin', '2021-01-31 21:51:03', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (45, '6', 'member_name', '成员名称', 'varchar(30)', 'String', 'memberName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (46, '6', 'member_phone', '成员联系方式', 'varchar(30)', 'String', 'memberPhone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (47, '6', 'societies_id', '社团ID', 'bigint', 'Long', 'societiesId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (48, '6', 'status', '成员状态（0审核中 1正式成员）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (49, '6', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (50, '6', 'create_time', '申请时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (51, '6', 'update_time', '转正时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-01-31 21:51:04', '', '2021-01-31 22:28:02');
INSERT INTO `gen_table_column` VALUES (58, '8', 'apply_id', 'ID', 'bigint', 'Long', 'applyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:09');
INSERT INTO `gen_table_column` VALUES (60, '8', 'president_id', '社长ID', 'bigint', 'Long', 'presidentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:09');
INSERT INTO `gen_table_column` VALUES (63, '8', 'societies_id', '社团ID', 'bigint', 'Long', 'societiesId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:09');
INSERT INTO `gen_table_column` VALUES (65, '8', 'status', '审核状态（0审核中 1审核通过  2 审核失败）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:10');
INSERT INTO `gen_table_column` VALUES (66, '8', 'create_time', '申请时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:10');
INSERT INTO `gen_table_column` VALUES (67, '8', 'update_time', '转正时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-02-02 00:11:41', '', '2021-02-02 00:14:10');
INSERT INTO `gen_table_column` VALUES (68, '7', 'id', '评论ID', 'bigint', 'Long', 'id', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, '', '2021-02-04 22:26:46', '', '2021-02-04 22:30:56');
INSERT INTO `gen_table_column` VALUES (69, '7', 'reply_id', '回复ID', 'bigint', 'Long', 'replyId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 2, '', '2021-02-04 22:26:46', '', '2021-02-04 22:30:56');
INSERT INTO `gen_table_column` VALUES (70, '7', 'societies_id', '社团ID', 'bigint', 'Long', 'societiesId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2021-02-04 22:26:46', '', '2021-02-04 22:30:56');
INSERT INTO `gen_table_column` VALUES (73, '7', 'content', '评论内容', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 6, '', '2021-02-04 22:26:46', '', '2021-02-04 22:30:56');
INSERT INTO `gen_table_column` VALUES (74, '7', 'createDate', '申请时间', 'datetime', 'Date', 'createdate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 7, '', '2021-02-04 22:26:46', '', '2021-02-04 22:30:56');
INSERT INTO `gen_table_column` VALUES (75, '7', 'comment_id', '评论人ID', 'bigint', 'Long', 'commentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2021-02-04 22:46:31', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, '7', 'target_id', '目标用户ID', 'bigint', 'Long', 'targetId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2021-02-04 22:46:31', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-01-16 13:45:55', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-01-16 13:45:55', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-01-16 13:45:55', '', NULL, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '社团id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父社团id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '社团名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社长',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团图片',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '社团状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '校园社团', 0, '若依', '15888888888', 'ry@qq.com', NULL, NULL, '0', '0', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 20:16:50');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '科技学术类', '1', 'societies_type', NULL, NULL, 'N', '0', 'admin', '2021-01-31 22:12:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '文艺体育类', '2', 'societies_type', NULL, NULL, 'N', '0', 'admin', '2021-01-31 22:13:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '理论学习类', '3', 'societies_type', NULL, NULL, 'N', '0', 'admin', '2021-01-31 22:13:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '公益服务类', '4', 'societies_type', NULL, NULL, 'N', '0', 'admin', '2021-01-31 22:13:33', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '社团类型', 'societies_type', '0', 'admin', '2021-01-31 21:54:30', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 15:14:17');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-16 15:34:27');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 15:34:31');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-16 16:02:06');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 17:18:57');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-16 17:24:16');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-16 17:24:25');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-31 19:48:23');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2021-01-31 21:40:51');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-31 21:40:58');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-01 00:03:18');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-01 23:07:45');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-01 23:54:12');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-02 00:08:50');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-02 00:08:53');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-02 22:57:46');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-03 00:22:19');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-03 00:23:28');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-03 00:40:44');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-03 00:44:58');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-03 00:45:05');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-03 01:27:30');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-03 01:27:46');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-03 01:43:35');
INSERT INTO `sys_logininfor` VALUES (124, 'test2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2021-02-03 15:01:03');
INSERT INTO `sys_logininfor` VALUES (125, 'test2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-03 15:01:08');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 11:05:19');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 11:20:15');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 11:47:15');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-02-04 14:59:38');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 14:59:42');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:04:08');
INSERT INTO `sys_logininfor` VALUES (132, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:10:20');
INSERT INTO `sys_logininfor` VALUES (133, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:15:01');
INSERT INTO `sys_logininfor` VALUES (134, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:17:49');
INSERT INTO `sys_logininfor` VALUES (135, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:17:50');
INSERT INTO `sys_logininfor` VALUES (136, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:18:26');
INSERT INTO `sys_logininfor` VALUES (137, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:18:28');
INSERT INTO `sys_logininfor` VALUES (138, 'test2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:19:13');
INSERT INTO `sys_logininfor` VALUES (139, 'test2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:19:13');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:20:31');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:20:31');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:21:16');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:21:16');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:21:49');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 15:21:53');
INSERT INTO `sys_logininfor` VALUES (146, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 15:22:06');
INSERT INTO `sys_logininfor` VALUES (147, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 16:38:55');
INSERT INTO `sys_logininfor` VALUES (148, 'test3', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2021-02-04 16:40:10');
INSERT INTO `sys_logininfor` VALUES (149, 'test3', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2021-02-04 16:40:51');
INSERT INTO `sys_logininfor` VALUES (150, 'test3', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2021-02-04 16:41:38');
INSERT INTO `sys_logininfor` VALUES (151, 'test2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 16:41:59');
INSERT INTO `sys_logininfor` VALUES (152, 'test2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 16:55:06');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 16:55:11');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 16:57:16');
INSERT INTO `sys_logininfor` VALUES (155, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 16:57:26');
INSERT INTO `sys_logininfor` VALUES (156, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 17:00:55');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 17:01:01');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 19:09:16');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-04 20:01:40');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 20:01:48');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 22:22:53');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-04 23:41:51');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-05 00:11:49');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-05 00:11:49');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '对不起，您的账号：admin 已停用', '2021-02-05 00:12:41');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-02-05 00:16:29');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-05 00:16:34');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-05 00:17:49');
INSERT INTO `sys_logininfor` VALUES (169, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-05 00:18:06');
INSERT INTO `sys_logininfor` VALUES (170, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-02-05 01:46:01');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2021-02-05 01:46:10');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-02-05 01:46:16');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2036 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-01-16 13:45:55', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 22:53:47', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '1', '0', '', 'tool', 'admin', '2021-01-16 13:45:55', 'admin', '2021-02-04 22:58:56', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户信息管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 23:06:28', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '1', '0', 'system:role:list', 'peoples', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 23:09:17', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '1', '0', 'system:menu:list', 'tree-table', 'admin', '2021-01-16 13:45:55', 'admin', '2021-02-04 22:58:49', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '1', '0', 'system:dept:list', 'tree', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 20:19:17', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 20:19:08', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 9, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 23:08:05', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '1', '0', 'system:config:list', 'edit', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 20:19:01', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '社团公告管理', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 23:07:45', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-01-16 13:45:55', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-01-16 13:45:55', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-01-16 13:45:55', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-01-16 13:45:55', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-01-16 13:45:55', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-01-16 13:45:55', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-01-16 13:45:55', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-01-16 13:45:55', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-01-16 13:45:55', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-01-16 13:45:55', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-01-16 13:45:55', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '社团信息管理', 1, 2, 'societies', 'community/societies/index', 1, 0, 'C', '0', '0', 'community:societies:list', 'guide', 'admin', '2021-01-31 22:51:25', 'admin', '2021-01-31 23:06:33', '社团菜单');
INSERT INTO `sys_menu` VALUES (2001, '社团查询', 2000, 1, '#', '', 1, 0, 'F', '0', '0', 'community:societies:query', '#', 'admin', '2021-01-31 22:51:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '社团新增', 2000, 2, '#', '', 1, 0, 'F', '0', '0', 'community:societies:add', '#', 'admin', '2021-01-31 22:51:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '社团修改', 2000, 3, '#', '', 1, 0, 'F', '0', '0', 'community:societies:edit', '#', 'admin', '2021-01-31 22:51:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '社团删除', 2000, 4, '#', '', 1, 0, 'F', '0', '0', 'community:societies:remove', '#', 'admin', '2021-01-31 22:51:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '社团导出', 2000, 5, '#', '', 1, 0, 'F', '0', '0', 'community:societies:export', '#', 'admin', '2021-01-31 22:51:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '社团成员管理', 1, 3, 'societiesmember', 'community/societiesmember/index', 1, 0, 'C', '0', '0', 'community:societiesmember:list', 'people', 'admin', '2021-01-31 22:51:40', 'admin', '2021-01-31 23:06:39', '社团成员菜单');
INSERT INTO `sys_menu` VALUES (2007, '社团成员查询', 2006, 1, '#', '', 1, 0, 'F', '0', '0', 'community:societiesmember:query', '#', 'admin', '2021-01-31 22:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '社团成员新增', 2006, 2, '#', '', 1, 0, 'F', '0', '0', 'community:societiesmember:add', '#', 'admin', '2021-01-31 22:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '社团成员修改', 2006, 3, '#', '', 1, 0, 'F', '0', '0', 'community:societiesmember:edit', '#', 'admin', '2021-01-31 22:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '社团成员删除', 2006, 4, '#', '', 1, 0, 'F', '0', '0', 'community:societiesmember:remove', '#', 'admin', '2021-01-31 22:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '社团成员导出', 2006, 5, '#', '', 1, 0, 'F', '0', '0', 'community:societiesmember:export', '#', 'admin', '2021-01-31 22:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '社长申请管理', 1, 4, 'presidentapply', 'community/presidentapply/index', 1, 0, 'C', '0', '0', 'community:presidentapply:list', 'clipboard', 'admin', '2021-01-31 22:51:48', 'admin', '2021-01-31 23:06:46', '社长申请菜单');
INSERT INTO `sys_menu` VALUES (2013, '社长申请查询', 2012, 1, '#', '', 1, 0, 'F', '0', '0', 'community:presidentapply:query', '#', 'admin', '2021-01-31 22:51:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '社长申请新增', 2012, 2, '#', '', 1, 0, 'F', '0', '0', 'community:presidentapply:add', '#', 'admin', '2021-01-31 22:51:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '社长申请修改', 2012, 3, '#', '', 1, 0, 'F', '0', '0', 'community:presidentapply:edit', '#', 'admin', '2021-01-31 22:51:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '社长申请删除', 2012, 4, '#', '', 1, 0, 'F', '0', '0', 'community:presidentapply:remove', '#', 'admin', '2021-01-31 22:51:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '社长申请导出', 2012, 5, '#', '', 1, 0, 'F', '0', '0', 'community:presidentapply:export', '#', 'admin', '2021-01-31 22:51:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '社团活动管理', 1, 5, 'activity', 'community/activity/index', 1, 0, 'C', '0', '0', 'community:activity:list', 'build', 'admin', '2021-01-31 22:51:58', 'admin', '2021-01-31 23:06:52', '社团活动菜单');
INSERT INTO `sys_menu` VALUES (2019, '社团活动查询', 2018, 1, '#', '', 1, 0, 'F', '0', '0', 'community:activity:query', '#', 'admin', '2021-01-31 22:51:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '社团活动新增', 2018, 2, '#', '', 1, 0, 'F', '0', '0', 'community:activity:add', '#', 'admin', '2021-01-31 22:51:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '社团活动修改', 2018, 3, '#', '', 1, 0, 'F', '0', '0', 'community:activity:edit', '#', 'admin', '2021-01-31 22:51:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '社团活动删除', 2018, 4, '#', '', 1, 0, 'F', '0', '0', 'community:activity:remove', '#', 'admin', '2021-01-31 22:51:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '社团活动导出', 2018, 5, '#', '', 1, 0, 'F', '0', '0', 'community:activity:export', '#', 'admin', '2021-01-31 22:51:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '活动点赞管理', 1, 6, 'activitylike', 'community/activitylike/index', 1, 0, 'C', '1', '0', 'community:activitylike:list', 'button', 'admin', '2021-01-31 22:52:07', 'admin', '2021-02-03 01:54:11', '活动点赞菜单');
INSERT INTO `sys_menu` VALUES (2025, '活动点赞查询', 2024, 1, '#', '', 1, 0, 'F', '0', '0', 'community:activitylike:query', '#', 'admin', '2021-01-31 22:52:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '活动点赞新增', 2024, 2, '#', '', 1, 0, 'F', '0', '0', 'community:activitylike:add', '#', 'admin', '2021-01-31 22:52:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '活动点赞修改', 2024, 3, '#', '', 1, 0, 'F', '0', '0', 'community:activitylike:edit', '#', 'admin', '2021-01-31 22:52:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '活动点赞删除', 2024, 4, '#', '', 1, 0, 'F', '0', '0', 'community:activitylike:remove', '#', 'admin', '2021-01-31 22:52:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '活动点赞导出', 2024, 5, '#', '', 1, 0, 'F', '0', '0', 'community:activitylike:export', '#', 'admin', '2021-01-31 22:52:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '活动评论管理', 1, 7, 'activitycomment', 'community/activitycomment/index', 1, 0, 'C', '0', '0', 'community:activitycomment:list', 'button', 'admin', '2021-01-31 22:52:15', 'admin', '2021-01-31 23:07:04', '活动评论菜单');
INSERT INTO `sys_menu` VALUES (2031, '活动评论查询', 2030, 1, '#', '', 1, 0, 'F', '0', '0', 'community:activitycomment:query', '#', 'admin', '2021-01-31 22:52:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '活动评论新增', 2030, 2, '#', '', 1, 0, 'F', '0', '0', 'community:activitycomment:add', '#', 'admin', '2021-01-31 22:52:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '活动评论修改', 2030, 3, '#', '', 1, 0, 'F', '0', '0', 'community:activitycomment:edit', '#', 'admin', '2021-01-31 22:52:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '活动评论删除', 2030, 4, '#', '', 1, 0, 'F', '0', '0', 'community:activitycomment:remove', '#', 'admin', '2021-01-31 22:52:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '活动评论导出', 2030, 5, '#', '', 1, 0, 'F', '0', '0', 'community:activitycomment:export', '#', 'admin', '2021-01-31 22:52:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '社团评论管理', 1, 5, 'societiescomment', 'community/societiescomment/index', 1, 0, 'C', '0', '0', 'community:societiescomment:list', 'edit', 'admin', '2021-02-04 22:55:41', 'admin', '2021-02-04 22:58:42', '社团评论菜单');
INSERT INTO `sys_menu` VALUES (2043, '社团评论查询', 2042, 1, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:query', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '社团评论新增', 2042, 2, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:add', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '社团评论修改', 2042, 3, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:edit', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '社团评论删除', 2042, 4, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:remove', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '社团评论导出', 2042, 5, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:export', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-01-16 13:45:56', 'admin', '2021-02-01 01:12:10', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0x3C703EE7BBB4E68AA4E58685E5AEB93C2F703E, '0', 'admin', '2021-01-16 13:45:56', 'admin', '2021-02-01 01:24:39', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '角色管理', 1, 'com.bs.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chief\",\"roleName\":\"团长\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:28:20');
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1610775955000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通学员\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:29:01');
INSERT INTO `sys_oper_log` VALUES (102, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1610782100000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chief\",\"roleName\":\"团长\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:29:10');
INSERT INTO `sys_oper_log` VALUES (103, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1610782100000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chief\",\"roleName\":\"团长\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:29:14');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 3, 'com.bs.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-01-16 15:29:37');
INSERT INTO `sys_oper_log` VALUES (105, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1610782100000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chief\",\"roleName\":\"团长\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:30:00');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1610775955000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通学员\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:30:09');
INSERT INTO `sys_oper_log` VALUES (107, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1610782100000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chief\",\"roleName\":\"团长\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:30:34');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 3, 'com.bs.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-16 15:30:43');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 3, 'com.bs.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{deptId=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:07:05');
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 3, 'com.bs.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:07:08');
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 2, 'com.bs.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"篮球社团\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610775955000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:15:13');
INSERT INTO `sys_oper_log` VALUES (112, '部门管理', 2, 'com.bs.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"校园社团\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1610775955000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:16:50');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"岗位管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:18:55');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"edit\",\"orderNum\":\"7\",\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:19:01');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"岗位管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:19:08');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tree\",\"orderNum\":\"4\",\"menuName\":\"部门管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 20:19:17');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.bs.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'bs_societies,bs_president_apply,bs_activity_like,bs_activity_comment,bs_activity,bs_societies_member', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 21:51:04');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"ActivityId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"activityId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"活动ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101062000,\"tableId\":1,\"pk\":true,\"columnName\":\"activity_id\"},{\"capJavaField\":\"ActivityImg\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"activityImg\",\"htmlType\":\"imageUpload\",\"edit\":true,\"query\":false,\"columnComment\":\"活动图片\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"activity_img\"},{\"capJavaField\":\"ActivityName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"活动名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"activity_name\"},{\"capJavaField\":\"Introduction\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"introduction\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"活动简介\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 21:53:44');
INSERT INTO `sys_oper_log` VALUES (119, '字典类型', 1, 'com.bs.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"社团类型\",\"params\":{},\"dictType\":\"societies_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 21:54:30');
INSERT INTO `sys_oper_log` VALUES (120, '字典数据', 1, 'com.bs.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"societies_type\",\"dictLabel\":\"科技学术类\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:12:48');
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'com.bs.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"societies_type\",\"dictLabel\":\"文艺体育类\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:13:01');
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'com.bs.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"societies_type\",\"dictLabel\":\"理论学习类\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:13:19');
INSERT INTO `sys_oper_log` VALUES (123, '字典数据', 1, 'com.bs.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"4\",\"dictSort\":4,\"params\":{},\"dictType\":\"societies_type\",\"dictLabel\":\"公益服务类\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:13:33');
INSERT INTO `sys_oper_log` VALUES (124, '字典类型', 9, 'com.bs.web.controller.system.SysDictTypeController.clearCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/clearCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:13:47');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"SocietiesId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"societiesId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"社团ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":5,\"pk\":true,\"columnName\":\"societies_id\"},{\"capJavaField\":\"PresidentId\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"presidentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"社长ID\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"president_id\"},{\"capJavaField\":\"SocietiesName\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"societiesName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社团名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"societies_name\"},{\"capJavaField\":\"SocietiesType\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"societies_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"societiesType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"社团类型\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryT', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:15:08');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"MemberId\",\"usableColumn\":false,\"columnId\":43,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"memberId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"成员ID\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"member_id\"},{\"capJavaField\":\"MemberAvatar\",\"usableColumn\":false,\"columnId\":44,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"memberAvatar\",\"htmlType\":\"imageUpload\",\"edit\":true,\"query\":false,\"columnComment\":\"社团图片\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"member_avatar\"},{\"capJavaField\":\"MemberName\",\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"memberName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"成员名称\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"c', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:16:55');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"CommentId\",\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"评论ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101062000,\"tableId\":2,\"pk\":true,\"columnName\":\"comment_id\"},{\"capJavaField\":\"ReplyId\",\"usableColumn\":false,\"columnId\":14,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"replyId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"回复评论ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"reply_id\"},{\"capJavaField\":\"Commentator\",\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentator\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"评论人\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"commentator\"},{\"capJavaField\":\"CommenContent\",\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"commenContent\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"评论内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"v', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:24:35');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"LikeId\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"likeId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"点赞ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":3,\"pk\":true,\"columnName\":\"like_id\"},{\"capJavaField\":\"LikerId\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"likerId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"点赞人ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"liker_id\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"点赞时间\",\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"tableId\":3,\"pk\":false,\"columnName\":\"create_time\"}],\"businessName\":\"activitylike\",\"moduleName\":\"community\",\"className\":\"BsActivityLike\",\"tableName\":\"bs_activity_like\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.bs.community\",\"functionName\":\"活动点赞\",\"tree\":false,\"tableComment\":\"活动点赞表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":3,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:24:52');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"ApplyId\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"applyId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":4,\"pk\":true,\"columnName\":\"apply_id\"},{\"capJavaField\":\"PresidentAvatar\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"presidentAvatar\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社长头像\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"president_avatar\"},{\"capJavaField\":\"PresidentName\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社长名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"president_name\"},{\"capJavaField\":\"PresidentPhone\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentPhone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社长联系方式\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"ja', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:25:12');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"ApplyId\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"applyId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":1612103112000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":4,\"pk\":true,\"columnName\":\"apply_id\"},{\"capJavaField\":\"PresidentAvatar\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"presidentAvatar\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"社长头像\",\"updateTime\":1612103112000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"president_avatar\"},{\"capJavaField\":\"PresidentName\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社长名称\",\"isQuery\":\"1\",\"updateTime\":1612103112000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"president_name\"},{\"capJavaField\":\"PresidentPhone\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentPhone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"column', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:25:57');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"ActivityId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"activityId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"活动ID\",\"updateTime\":1612101223000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101062000,\"tableId\":1,\"pk\":true,\"columnName\":\"activity_id\"},{\"capJavaField\":\"ActivityImg\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"activityImg\",\"htmlType\":\"imageUpload\",\"edit\":true,\"query\":false,\"columnComment\":\"活动图片\",\"updateTime\":1612101224000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"activity_img\"},{\"capJavaField\":\"ActivityName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activityName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"活动名称\",\"isQuery\":\"1\",\"updateTime\":1612101224000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"activity_name\"},{\"capJavaField\":\"Introduction\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"introduction\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComme', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:27:08');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"CommentId\",\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"评论ID\",\"updateTime\":1612103075000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101062000,\"tableId\":2,\"pk\":true,\"columnName\":\"comment_id\"},{\"capJavaField\":\"ReplyId\",\"usableColumn\":false,\"columnId\":14,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"replyId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"回复评论ID\",\"isQuery\":\"1\",\"updateTime\":1612103075000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"reply_id\"},{\"capJavaField\":\"Commentator\",\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentator\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"评论人\",\"isQuery\":\"1\",\"updateTime\":1612103075000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101062000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"commentator\"},{\"capJavaField\":\"CommenContent\",\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"commenContent\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"评论内容\",\"isQuery\":\"1\",\"upd', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:27:19');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"LikeId\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"likeId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"点赞ID\",\"updateTime\":1612103092000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":3,\"pk\":true,\"columnName\":\"like_id\"},{\"capJavaField\":\"LikerId\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"likerId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"点赞人ID\",\"isQuery\":\"1\",\"updateTime\":1612103092000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"liker_id\"},{\"capJavaField\":\"CreateTime\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createTime\",\"htmlType\":\"datetime\",\"edit\":false,\"query\":false,\"columnComment\":\"点赞时间\",\"updateTime\":1612103092000,\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"tableId\":3,\"pk\":false,\"columnName\":\"create_time\"}],\"businessName\":\"activitylike\",\"moduleName\":\"community\",\"className\":\"BsActivityLike\",\"tableName\":\"bs_activity_like\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":1}\",\"genType\":\"0\",\"packageName\":\"com.bs.community\",\"functionName\":\"活动点赞\",\"tree\":false,\"tableComment\":\"活动点赞表\",\"params\":{\"parentMenuId\":1},\"tplCategory\":\"crud\",\"parentMenuId\":\"1\",\"tableId\":3,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:27:26');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"ApplyId\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"applyId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":1612103157000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":4,\"pk\":true,\"columnName\":\"apply_id\"},{\"capJavaField\":\"PresidentAvatar\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"presidentAvatar\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"社长头像\",\"updateTime\":1612103157000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"president_avatar\"},{\"capJavaField\":\"PresidentName\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社长名称\",\"isQuery\":\"1\",\"updateTime\":1612103157000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"president_name\"},{\"capJavaField\":\"PresidentPhone\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentPhone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"column', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:27:36');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"SocietiesId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"societiesId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"社团ID\",\"updateTime\":1612102508000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":5,\"pk\":true,\"columnName\":\"societies_id\"},{\"capJavaField\":\"PresidentId\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"presidentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"社长ID\",\"updateTime\":1612102508000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"president_id\"},{\"capJavaField\":\"SocietiesName\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"societiesName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社团名称\",\"isQuery\":\"1\",\"updateTime\":1612102508000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"societies_name\"},{\"capJavaField\":\"SocietiesType\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"societies_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"societiesType\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:27:56');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":1612102615000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612101063000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"MemberId\",\"usableColumn\":false,\"columnId\":43,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"memberId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"成员ID\",\"updateTime\":1612102615000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"member_id\"},{\"capJavaField\":\"MemberAvatar\",\"usableColumn\":false,\"columnId\":44,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"memberAvatar\",\"htmlType\":\"imageUpload\",\"edit\":true,\"query\":false,\"columnComment\":\"社团图片\",\"updateTime\":1612102615000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612101063000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"member_avatar\"},{\"capJavaField\":\"MemberName\",\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"memberName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"成员名称\",\"isQuery\":\"1\",\"updateTime\":1612102615000,\"sort\":4,\"list\":true,\"p', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:28:02');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 8, 'com.bs.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-01-31 22:35:38');
INSERT INTO `sys_oper_log` VALUES (138, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1610775955000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通社员\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:53:12');
INSERT INTO `sys_oper_log` VALUES (139, '角色管理', 2, 'com.bs.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1610782100000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"chief\",\"roleName\":\"社长\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:53:27');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"monitor\",\"orderNum\":\"2\",\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:53:47');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:53:52');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"1\",\"menuName\":\"社团\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societies\",\"component\":\"community/societies/index\",\"children\":[],\"createTime\":1612104685000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"community:societies:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:54:25');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"1\",\"menuName\":\"社团成员\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiesmember\",\"component\":\"community/societiesmember/index\",\"children\":[],\"createTime\":1612104700000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"community:societiesmember:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:54:38');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"1\",\"menuName\":\"社团\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societies\",\"component\":\"community/societies/index\",\"children\":[],\"createTime\":1612104685000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"community:societies:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:54:57');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"1\",\"menuName\":\"社长申请\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"presidentapply\",\"component\":\"community/presidentapply/index\",\"children\":[],\"createTime\":1612104708000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"C\",\"perms\":\"community:presidentapply:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:55:06');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"社团活动\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activity\",\"component\":\"community/activity/index\",\"children\":[],\"createTime\":1612104718000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2018,\"menuType\":\"C\",\"perms\":\"community:activity:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:55:17');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"活动点赞\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitylike\",\"component\":\"community/activitylike/index\",\"children\":[],\"createTime\":1612104727000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2024,\"menuType\":\"C\",\"perms\":\"community:activitylike:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:55:32');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"活动评论\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitycomment\",\"component\":\"community/activitycomment/index\",\"children\":[],\"createTime\":1612104735000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2030,\"menuType\":\"C\",\"perms\":\"community:activitycomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:55:37');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"1\",\"menuName\":\"社团信息管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societies\",\"component\":\"community/societies/index\",\"children\":[],\"createTime\":1612104685000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"community:societies:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:56:09');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"1\",\"menuName\":\"社团成员管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiesmember\",\"component\":\"community/societiesmember/index\",\"children\":[],\"createTime\":1612104700000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"community:societiesmember:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:56:20');
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"1\",\"menuName\":\"社长申请管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"presidentapply\",\"component\":\"community/presidentapply/index\",\"children\":[],\"createTime\":1612104708000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"C\",\"perms\":\"community:presidentapply:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:56:29');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"1\",\"menuName\":\"社团活动管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activity\",\"component\":\"community/activity/index\",\"children\":[],\"createTime\":1612104718000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2018,\"menuType\":\"C\",\"perms\":\"community:activity:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:56:34');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"活动点赞管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitylike\",\"component\":\"community/activitylike/index\",\"children\":[],\"createTime\":1612104727000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2024,\"menuType\":\"C\",\"perms\":\"community:activitylike:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:56:40');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"活动评论管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitycomment\",\"component\":\"community/activitycomment/index\",\"children\":[],\"createTime\":1612104735000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2030,\"menuType\":\"C\",\"perms\":\"community:activitycomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 22:56:44');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"用户信息管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"system/user/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:06:28');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"2\",\"menuName\":\"社团信息管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societies\",\"component\":\"community/societies/index\",\"children\":[],\"createTime\":1612104685000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"community:societies:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:06:33');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"3\",\"menuName\":\"社团成员管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiesmember\",\"component\":\"community/societiesmember/index\",\"children\":[],\"createTime\":1612104700000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"community:societiesmember:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:06:39');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":\"4\",\"menuName\":\"社长申请管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"presidentapply\",\"component\":\"community/presidentapply/index\",\"children\":[],\"createTime\":1612104708000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"C\",\"perms\":\"community:presidentapply:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:06:46');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"5\",\"menuName\":\"社团活动管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activity\",\"component\":\"community/activity/index\",\"children\":[],\"createTime\":1612104718000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2018,\"menuType\":\"C\",\"perms\":\"community:activity:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:06:52');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"6\",\"menuName\":\"活动点赞管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitylike\",\"component\":\"community/activitylike/index\",\"children\":[],\"createTime\":1612104727000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2024,\"menuType\":\"C\",\"perms\":\"community:activitylike:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:06:57');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"7\",\"menuName\":\"活动评论管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitycomment\",\"component\":\"community/activitycomment/index\",\"children\":[],\"createTime\":1612104735000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2030,\"menuType\":\"C\",\"perms\":\"community:activitycomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:07:04');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"message\",\"orderNum\":\"8\",\"menuName\":\"社团公告\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:07:26');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"message\",\"orderNum\":\"8\",\"menuName\":\"社团公告管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:07:45');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"dict\",\"orderNum\":\"9\",\"menuName\":\"字典管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dict\",\"component\":\"system/dict/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":105,\"menuType\":\"C\",\"perms\":\"system:dict:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:08:05');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"peoples\",\"orderNum\":\"2\",\"menuName\":\"角色管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"role\",\"component\":\"system/role/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":101,\"menuType\":\"C\",\"perms\":\"system:role:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:09:17');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tree-table\",\"orderNum\":\"3\",\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:09:22');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通社员\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1610775955000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"测试用户1\",\"sex\":\"0\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptId\":105,\"params\":{},\"children\":[]},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1610775955000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-31 23:31:52');
INSERT INTO `sys_oper_log` VALUES (168, '社团', 1, 'com.bs.web.controller.community.BsSocietiesController.add()', 'POST', 1, 'admin', NULL, '/community/societies', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"remark\":\"测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团\",\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612109462648,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/cd9890b0-41fc-4bea-a5af-5668565f3eea.jpg\",\"societiesType\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 00:11:05');
INSERT INTO `sys_oper_log` VALUES (169, '社团', 2, 'com.bs.web.controller.community.BsSocietiesController.edit()', 'PUT', 1, 'admin', NULL, '/community/societies', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"remark\":\"测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团\",\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createBy\":\"\",\"createTime\":1612109463000,\"members\":0,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/dd0027a1-f6e9-420f-9a1a-61334bda9bb2.jpg\",\"societiesType\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 00:17:49');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通社员\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1610775955000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"测试用户1\",\"sex\":\"0\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptId\":105,\"params\":{},\"children\":[]},\"params\":{},\"userName\":\"test1\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1610775955000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 00:20:16');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$Eon5/0CKr.e.5Yp26Y5J/u4VAUecF14SXEjNYzWqNKQenF12bsyYu\",\"updateBy\":\"admin\",\"params\":{},\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 00:20:22');
INSERT INTO `sys_oper_log` VALUES (172, '通知公告', 2, 'com.bs.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"新版本内容\",\"createBy\":\"admin\",\"createTime\":1610775956000,\"updateBy\":\"admin\",\"noticeType\":\"2\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":1,\"noticeTitle\":\"温馨提醒：2018-07-01 新版本发布啦\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 01:12:10');
INSERT INTO `sys_oper_log` VALUES (173, '通知公告', 2, 'com.bs.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>维护内容</p>\",\"createBy\":\"admin\",\"createTime\":1610775956000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 01:12:18');
INSERT INTO `sys_oper_log` VALUES (174, '通知公告', 2, 'com.bs.web.controller.system.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeContent\":\"<p>维护内容</p>\",\"createBy\":\"admin\",\"createTime\":1610775956000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"updateTime\":1612113138000,\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 01:24:39');
INSERT INTO `sys_oper_log` VALUES (175, '社团', 2, 'com.bs.web.controller.community.BsSocietiesController.edit()', 'PUT', 1, 'admin', NULL, '/community/societies', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"remark\":\"测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团测试社团团测试社团团测试社团团测试社团团测试社团\",\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createBy\":\"\",\"createTime\":1612109463000,\"members\":0,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-01 23:12:28');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:09:10');
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 2, 'com.bs.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/bs_president_apply', '127.0.0.1', '内网IP', '{tableName=bs_president_apply}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:09:44');
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 6, 'com.bs.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'bs_societies_comment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:09:54');
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 3, 'com.bs.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2', '127.0.0.1', '内网IP', '{tableIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:10:07');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"CommentId\",\"usableColumn\":false,\"columnId\":54,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"评论ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612195794000,\"tableId\":7,\"pk\":true,\"columnName\":\"comment_id\"},{\"capJavaField\":\"Commentnum\",\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentnum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"回复评论数\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612195794000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"commentNum\"},{\"capJavaField\":\"Commentator\",\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentator\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"评论人\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612195794000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"commentator\"},{\"capJavaField\":\"CommenContent\",\"usableColumn\":false,\"columnId\":57,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"commenContent\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"评论内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:10:33');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 3, 'com.bs.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/4', '127.0.0.1', '内网IP', '{tableIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:11:35');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 6, 'com.bs.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'bs_president_apply', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:11:41');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 2, 'com.bs.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/bs_president_apply', '127.0.0.1', '内网IP', '{tableName=bs_president_apply}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:13:02');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"ApplyId\",\"usableColumn\":false,\"columnId\":58,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"applyId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1612195901000,\"tableId\":8,\"pk\":true,\"columnName\":\"apply_id\"},{\"capJavaField\":\"PresidentId\",\"usableColumn\":false,\"columnId\":60,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"presidentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社长ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612195901000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"president_id\"},{\"capJavaField\":\"SocietiesId\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"societiesId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社团ID\",\"isQuery\":\"1\",\"sort\":6,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1612195901000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"societies_id\"},{\"capJavaField\":\"Status\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"审核状态（0审核中 1审核通过  2 审核失败）\",\"isQuery\":\"1\",\"sort\":8,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"c', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 00:14:10');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.bs.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-02-02 00:14:16');
INSERT INTO `sys_oper_log` VALUES (186, '社长申请', 1, 'com.bs.web.controller.community.BsPresidentApplyController.add()', 'POST', 1, 'admin', NULL, '/community/presidentapply', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"createTime\":1612197672807,\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'president_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\works\\other\\GraduationProject\\CampusCommunity\\bs-business\\target\\classes\\mapper\\community\\BsPresidentApplyMapper.xml]\r\n### The error may involve com.bs.community.mapper.BsPresidentApplyMapper.insertBsPresidentApply-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into bs_president_apply          ( societies_id,                          create_time )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'president_id\' doesn\'t have a default value\n; Field \'president_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'president_id\' doesn\'t have a default value', '2021-02-02 00:41:12');
INSERT INTO `sys_oper_log` VALUES (187, '社团活动', 1, 'com.bs.web.controller.community.BsActivityController.add()', 'POST', 1, 'admin', NULL, '/community/activity', '127.0.0.1', '内网IP', '{\"activityContent\":\"<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>\",\"activityImg\":\"http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png\",\"activityName\":\"测试活动\",\"params\":{},\"createTime\":1612199300204,\"openTime\":1615478400000,\"introduction\":\"这是一个测试活动\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'societies_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\works\\other\\GraduationProject\\CampusCommunity\\bs-business\\target\\classes\\mapper\\community\\BsActivityMapper.xml]\r\n### The error may involve com.bs.community.mapper.BsActivityMapper.insertBsActivity-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into bs_activity          ( activity_img,             activity_name,             introduction,             activity_content,                                                    status,             open_time,             create_time )           values ( ?,             ?,             ?,             ?,                                                    ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'societies_name\' doesn\'t have a default value\n; Field \'societies_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'societies_name\' doesn\'t have a default value', '2021-02-02 01:08:20');
INSERT INTO `sys_oper_log` VALUES (188, '社团活动', 1, 'com.bs.web.controller.community.BsActivityController.add()', 'POST', 1, 'admin', NULL, '/community/activity', '127.0.0.1', '内网IP', '{\"activityContent\":\"<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>\",\"activityImg\":\"http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png\",\"activityName\":\"测试活动\",\"params\":{},\"activityId\":100,\"createTime\":1612199419462,\"openTime\":1615478400000,\"introduction\":\"这是一个测试活动\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 01:10:19');
INSERT INTO `sys_oper_log` VALUES (189, '社长申请', 1, 'com.bs.web.controller.community.BsPresidentApplyController.add()', 'POST', 1, 'admin', NULL, '/community/presidentapply', '127.0.0.1', '内网IP', '{\"presidentId\":1,\"societiesId\":100,\"params\":{},\"applyId\":100,\"createTime\":1612278874031}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 23:14:34');
INSERT INTO `sys_oper_log` VALUES (190, '社长申请', 2, 'com.bs.web.controller.community.BsPresidentApplyController.edit()', 'PUT', 1, 'admin', NULL, '/community/presidentapply', '127.0.0.1', '内网IP', '{\"presidentId\":1,\"societiesId\":100,\"updateTime\":1612280806444,\"params\":{},\"applyId\":100,\"createTime\":1612278874000,\"societies\":{\"presidentId\":1,\"societiesId\":100,\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612278874000,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"},\"president\":{\"admin\":false,\"nickName\":\"超级管理员\",\"avatar\":\"\",\"params\":{},\"userName\":\"admin\"},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 23:46:46');
INSERT INTO `sys_oper_log` VALUES (191, '社团活动', 2, 'com.bs.web.controller.community.BsActivityController.edit()', 'PUT', 1, 'admin', NULL, '/community/activity', '127.0.0.1', '内网IP', '{\"address\":\"测试地址\",\"activityContent\":\"<p>这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动这是一个测试活动</p>\",\"societiesId\":100,\"activityImg\":\"http://localhost:8080/profile/upload/2021/02/02/3995b5b9-b032-465f-a778-12e00cc4888f.png\",\"activityName\":\"测试活动\",\"updateTime\":1612281645480,\"params\":{},\"societiesName\":\"测试社团\",\"activityId\":100,\"createTime\":1612199419000,\"openTime\":1615478400000,\"introduction\":\"这是一个测试活动\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 00:00:45');
INSERT INTO `sys_oper_log` VALUES (192, '社团活动', 1, 'com.bs.web.controller.community.BsActivityController.add()', 'POST', 1, 'admin', NULL, '/community/activity', '127.0.0.1', '内网IP', '{\"activityContent\":\"<p><strong>测试活动2的士大夫士大夫士大夫撒旦</strong></p>\",\"activityImg\":\"http://localhost:8080/profile/upload/2021/02/03/25b7191c-b7a1-4a93-8b29-292f9dd8f405.png\",\"activityName\":\"测试活动2\",\"params\":{},\"activityId\":104,\"createTime\":1612283456656,\"introduction\":\"测试活动2简介\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 00:30:56');
INSERT INTO `sys_oper_log` VALUES (193, '社团活动', 1, 'com.bs.web.controller.community.BsActivityController.add()', 'POST', 1, 'admin', NULL, '/community/activity', '127.0.0.1', '内网IP', '{\"activityContent\":\"<p>测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3</p>\",\"societiesId\":100,\"activityImg\":\"http://localhost:8080/profile/upload/2021/02/03/71550969-6f5e-44cb-bc3c-8c665529c62d.png\",\"activityName\":\"测试活动3\",\"params\":{},\"activityId\":105,\"createTime\":1612283601569,\"introduction\":\"测试活动3测试活动3测试活动3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 00:33:21');
INSERT INTO `sys_oper_log` VALUES (194, '社团活动', 1, 'com.bs.web.controller.community.BsActivityController.add()', 'POST', 1, 'admin', NULL, '/community/activity', '127.0.0.1', '内网IP', '{\"address\":\"测试活动3测试活动3测试活动3\",\"activityContent\":\"<p>测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3</p>\",\"societiesId\":100,\"activityImg\":\"http://localhost:8080/profile/upload/2021/02/03/a95c2d95-689e-4bcb-ba41-9977a3f0e1f1.png\",\"activityName\":\"测试活动3\",\"params\":{},\"societiesName\":\"测试社团\",\"activityId\":106,\"createTime\":1612283971463,\"introduction\":\"测试活动3测试活动3测试活动3测试活动3测试活动3测试活动3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 00:39:31');
INSERT INTO `sys_oper_log` VALUES (195, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.add()', 'POST', 1, NULL, NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13912323132\",\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"测试用户2\",\"sex\":\"0\",\"params\":{},\"userName\":\"test2\",\"roleIds\":[],\"status\":\"0\"}', 'null', 1, '获取用户账户异常', '2021-02-03 01:36:28');
INSERT INTO `sys_oper_log` VALUES (196, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.add()', 'POST', 1, NULL, NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"测试用户2\",\"sex\":\"0\",\"params\":{},\"userName\":\"test2\",\"roleIds\":[],\"status\":\"0\"}', 'null', 1, '获取用户账户异常', '2021-02-03 01:38:13');
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"button\",\"orderNum\":\"6\",\"menuName\":\"活动点赞管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"activitylike\",\"component\":\"community/activitylike/index\",\"children\":[],\"createTime\":1612104727000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2024,\"menuType\":\"C\",\"perms\":\"community:activitylike:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 01:54:11');
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 3, 'com.bs.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-02-03 01:54:49');
INSERT INTO `sys_oper_log` VALUES (199, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.add()', 'POST', 1, NULL, NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13912324534\",\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"测试账号2\",\"sex\":\"0\",\"params\":{},\"userName\":\"test2\",\"roleIds\":[],\"status\":\"0\"}', 'null', 1, '获取用户账户异常', '2021-02-03 14:48:45');
INSERT INTO `sys_oper_log` VALUES (200, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.add()', 'POST', 1, NULL, NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13912934432\",\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"test2\",\"sex\":\"0\",\"params\":{},\"userName\":\"test2\",\"roleIds\":[],\"status\":\"0\"}', 'null', 1, '获取用户账户异常', '2021-02-03 14:50:32');
INSERT INTO `sys_oper_log` VALUES (201, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.add()', 'POST', 1, NULL, NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13912312312\",\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"test2\",\"sex\":\"0\",\"params\":{},\"userName\":\"test2\",\"roleIds\":[],\"status\":\"0\"}', 'null', 1, '获取用户账户异常', '2021-02-03 14:52:31');
INSERT INTO `sys_oper_log` VALUES (202, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.add()', 'POST', 1, NULL, NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13912312312\",\"admin\":false,\"password\":\"$2a$10$2cKQ314wE8uVMHin.bW0Je0Sd1CIgP5/5Nqc7OAFQaZIp9qPcU0Ke\",\"postIds\":[],\"nickName\":\"test2\",\"sex\":\"0\",\"params\":{},\"userName\":\"test2\",\"userId\":100,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 15:00:18');
INSERT INTO `sys_oper_log` VALUES (203, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"params\":{},\"createTime\":1612407947518}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'member_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\works\\other\\GraduationProject\\CampusCommunity\\bs-business\\target\\classes\\mapper\\community\\BsSocietiesMemberMapper.xml]\r\n### The error may involve com.bs.community.mapper.BsSocietiesMemberMapper.insertBsSocietiesMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into bs_societies_member          ( societies_id,                                       create_time )           values ( ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'member_name\' doesn\'t have a default value\n; Field \'member_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'member_name\' doesn\'t have a default value', '2021-02-04 11:05:47');
INSERT INTO `sys_oper_log` VALUES (204, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"超级管理员\",\"params\":{},\"memberPhone\":\"15888888888\",\"createTime\":1612408647168,\"memberAvatar\":\"\",\"id\":100,\"memberId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 11:17:27');
INSERT INTO `sys_oper_log` VALUES (205, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"params\":{},\"memberId\":1}', '{\"msg\":\"您已经申请过改社团！\",\"code\":500}', 0, NULL, '2021-02-04 11:19:47');
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 15:56:05');
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:01:52');
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:08:20');
INSERT INTO `sys_oper_log` VALUES (209, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1111\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:19:52');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1221223\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:20:18');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1212321\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:27:03');
INSERT INTO `sys_oper_log` VALUES (212, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"123124124\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:28:12');
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:33:58');
INSERT INTO `sys_oper_log` VALUES (214, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'test1', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"params\":{},\"memberId\":2}', '{\"msg\":\"您已经申请过改社团！\",\"code\":500}', 0, NULL, '2021-02-04 16:34:08');
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:34:50');
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:38:01');
INSERT INTO `sys_oper_log` VALUES (217, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test2', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"updateBy\":\"test2\",\"postIds\":[],\"nickName\":\"测试用户2\",\"params\":{},\"userName\":\"test2\",\"userId\":100,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:46:45');
INSERT INTO `sys_oper_log` VALUES (218, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'test2', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"params\":{},\"memberId\":100}', '{\"msg\":\"您已经申请过改社团！\",\"code\":500}', 0, NULL, '2021-02-04 16:54:53');
INSERT INTO `sys_oper_log` VALUES (219, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"13912312312\",\"admin\":false,\"delFlag\":\"0\",\"idNumber\":\"1000000000003\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"测试用户2\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"test2\",\"userId\":100,\"createBy\":\"\",\"roleIds\":[],\"createTime\":1612335618000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 16:55:30');
INSERT INTO `sys_oper_log` VALUES (220, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'test1', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"params\":{},\"memberId\":2}', '{\"msg\":\"您已经申请过改社团！\",\"code\":500}', 0, NULL, '2021-02-04 16:57:44');
INSERT INTO `sys_oper_log` VALUES (221, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'test1', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"params\":{},\"memberId\":2}', '{\"msg\":\"您已经申请过改社团！\",\"code\":500}', 0, NULL, '2021-02-04 17:00:02');
INSERT INTO `sys_oper_log` VALUES (222, '社团成员', 1, 'com.bs.web.controller.community.BsSocietiesMemberController.add()', 'POST', 1, 'test1', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"测试用户1\",\"params\":{},\"memberPhone\":\"15666666666\",\"createTime\":1612429246698,\"memberAvatar\":\"\",\"id\":101,\"memberId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 17:00:46');
INSERT INTO `sys_oper_log` VALUES (223, '社团成员', 2, 'com.bs.web.controller.community.BsSocietiesMemberController.edit()', 'PUT', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"超级管理员\",\"delFlag\":\"0\",\"params\":{},\"memberPhone\":\"15888888888\",\"createTime\":1612408647000,\"memberAvatar\":\"\",\"id\":100,\"societies\":{\"societiesId\":100,\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612408647000,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"},\"memberId\":1,\"status\":\"1\"}', 'null', 1, '', '2021-02-04 17:19:18');
INSERT INTO `sys_oper_log` VALUES (224, '社团成员', 2, 'com.bs.web.controller.community.BsSocietiesMemberController.edit()', 'PUT', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"超级管理员\",\"updateTime\":1612430459374,\"delFlag\":\"0\",\"params\":{},\"memberPhone\":\"15888888888\",\"createTime\":1612408647000,\"memberAvatar\":\"\",\"id\":100,\"societies\":{\"societiesId\":100,\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612408647000,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"},\"memberId\":1,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 17:20:59');
INSERT INTO `sys_oper_log` VALUES (225, '社团成员', 2, 'com.bs.web.controller.community.BsSocietiesMemberController.edit()', 'PUT', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"测试用户1\",\"updateTime\":1612430483827,\"delFlag\":\"0\",\"params\":{},\"memberPhone\":\"15666666666\",\"createTime\":1612429247000,\"memberAvatar\":\"\",\"id\":101,\"societies\":{\"societiesId\":100,\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612429247000,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"},\"memberId\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 17:21:23');
INSERT INTO `sys_oper_log` VALUES (226, '社团成员', 2, 'com.bs.web.controller.community.BsSocietiesMemberController.edit()', 'PUT', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"测试用户1\",\"updateTime\":1612430574933,\"delFlag\":\"0\",\"params\":{},\"memberPhone\":\"15666666666\",\"createTime\":1612429247000,\"memberAvatar\":\"\",\"id\":101,\"societies\":{\"societiesId\":100,\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612429247000,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"},\"memberId\":2,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 17:22:54');
INSERT INTO `sys_oper_log` VALUES (227, '社团成员', 2, 'com.bs.web.controller.community.BsSocietiesMemberController.edit()', 'PUT', 1, 'admin', NULL, '/community/societiesmember', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"memberName\":\"超级管理员\",\"updateTime\":1612430801234,\"delFlag\":\"0\",\"params\":{},\"memberPhone\":\"15888888888\",\"createTime\":1612408647000,\"memberAvatar\":\"\",\"id\":100,\"societies\":{\"societiesId\":100,\"delFlag\":\"0\",\"params\":{},\"societiesName\":\"测试社团\",\"createTime\":1612408647000,\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\",\"status\":\"0\"},\"memberId\":1,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 17:26:41');
INSERT INTO `sys_oper_log` VALUES (228, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 2 条，数据如下：<br/>1、账号 test3 学生认证成功<br/>2、账号 test4 学生认证成功\",\"code\":200}', 0, NULL, '2021-02-04 19:14:02');
INSERT INTO `sys_oper_log` VALUES (229, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', 1, '导入用户数据不能为空！', '2021-02-04 19:19:36');
INSERT INTO `sys_oper_log` VALUES (230, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 2 条，数据如下：<br/>1、账号 test3 学生认证成功<br/>2、账号 test4 学生认证成功\",\"code\":200}', 0, NULL, '2021-02-04 19:21:18');
INSERT INTO `sys_oper_log` VALUES (231, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 2 条，数据如下：<br/>1、账号 test3 学生认证成功<br/>2、账号 test4 学生认证成功\",\"code\":200}', 0, NULL, '2021-02-04 19:24:34');
INSERT INTO `sys_oper_log` VALUES (232, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 2 条，数据如下：<br/>1、账号 test3 学生认证成功<br/>2、账号 test4 学生认证成功\",\"code\":200}', 0, NULL, '2021-02-04 19:27:36');
INSERT INTO `sys_oper_log` VALUES (233, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 2 条，数据如下：<br/>1、账号 test3 学生认证成功<br/>2、账号 test4 学生认证成功\",\"code\":200}', 0, NULL, '2021-02-04 19:27:46');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 2, 'com.bs.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/bs_societies_comment', '127.0.0.1', '内网IP', '{tableName=bs_societies_comment}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:26:46');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 2, 'com.bs.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"bs\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":68,\"isIncrement\":\"1\",\"increment\":true,\"insert\":false,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"评论ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"\",\"isPk\":\"1\",\"createTime\":1612448806000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ReplyId\",\"usableColumn\":false,\"columnId\":69,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"replyId\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"回复ID\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"\",\"isPk\":\"0\",\"createTime\":1612448806000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"reply_id\"},{\"capJavaField\":\"SocietiesId\",\"usableColumn\":false,\"columnId\":70,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"societiesId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"社团ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"\",\"isPk\":\"0\",\"createTime\":1612448806000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"societies_id\"},{\"capJavaField\":\"Commentuser\",\"usableColumn\":false,\"columnId\":71,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"commentuser\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"评论人ID\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint\",\"createBy\":\"\",\"isPk\":\"0\",\"createTime\":1612448806000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:30:56');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 8, 'com.bs.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-02-04 22:31:04');
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 2, 'com.bs.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/bs_societies_comment', '127.0.0.1', '内网IP', '{tableName=bs_societies_comment}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:46:31');
INSERT INTO `sys_oper_log` VALUES (238, '代码生成', 8, 'com.bs.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-02-04 22:46:33');
INSERT INTO `sys_oper_log` VALUES (239, '代码生成', 8, 'com.bs.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-02-04 22:46:56');
INSERT INTO `sys_oper_log` VALUES (240, '代码生成', 8, 'com.bs.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-02-04 22:47:18');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"社团评论\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiescomment\",\"component\":\"community/societiescomment/index\",\"children\":[],\"createTime\":1612450541000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"community:societiescomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:57:04');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"1\",\"menuName\":\"社团评论\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiescomment\",\"component\":\"community/societiescomment/index\",\"children\":[],\"createTime\":1612450541000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"community:societiescomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:57:39');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"7\",\"menuName\":\"社团评论\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiescomment\",\"component\":\"community/societiescomment/index\",\"children\":[],\"createTime\":1612450541000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"community:societiescomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:57:55');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"5\",\"menuName\":\"社团评论\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiescomment\",\"component\":\"community/societiescomment/index\",\"children\":[],\"createTime\":1612450541000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"community:societiescomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:58:19');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"edit\",\"orderNum\":\"5\",\"menuName\":\"社团评论管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"societiescomment\",\"component\":\"community/societiescomment/index\",\"children\":[],\"createTime\":1612450541000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2042,\"menuType\":\"C\",\"perms\":\"community:societiescomment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:58:42');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tree-table\",\"orderNum\":\"3\",\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:58:49');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 2, 'com.bs.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1610775955000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-04 22:58:56');
INSERT INTO `sys_oper_log` VALUES (248, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"啊实打实的\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 00:39:24');
INSERT INTO `sys_oper_log` VALUES (249, '用户管理', 2, 'com.bs.web.controller.system.SysUserController.edit()', 'PUT', 1, 'test1', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"阿斯顿撒\",\"updateBy\":\"test1\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 00:40:29');
INSERT INTO `sys_oper_log` VALUES (250, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"士大夫\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:40:57');
INSERT INTO `sys_oper_log` VALUES (251, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:41:05');
INSERT INTO `sys_oper_log` VALUES (252, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:42:24');
INSERT INTO `sys_oper_log` VALUES (253, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:45:01');
INSERT INTO `sys_oper_log` VALUES (254, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:45:46');
INSERT INTO `sys_oper_log` VALUES (255, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:46:31');
INSERT INTO `sys_oper_log` VALUES (256, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:47:39');
INSERT INTO `sys_oper_log` VALUES (257, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:48:07');
INSERT INTO `sys_oper_log` VALUES (258, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:51:22');
INSERT INTO `sys_oper_log` VALUES (259, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000002\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证失败,请重新认证！\",\"code\":500}', 0, NULL, '2021-02-05 00:51:27');
INSERT INTO `sys_oper_log` VALUES (260, '用户管理', 1, 'com.bs.web.controller.system.SysUserController.certification()', 'POST', 1, 'test1', NULL, '/system/user/certification', '127.0.0.1', '内网IP', '{\"admin\":false,\"idNumber\":\"1000000000001\",\"postIds\":[],\"nickName\":\"测试用户1\",\"params\":{},\"userName\":\"test1\",\"userId\":2,\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"认证成功！\",\"code\":200}', 0, NULL, '2021-02-05 00:51:37');
INSERT INTO `sys_oper_log` VALUES (261, '活动评论', 1, 'com.bs.web.controller.community.BsSocietiesCommentController.add()', 'POST', 1, 'test1', NULL, '/community/societiescomment', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"五千万\",\"commentId\":2,\"id\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 01:08:01');
INSERT INTO `sys_oper_log` VALUES (262, '活动评论', 1, 'com.bs.web.controller.community.BsSocietiesCommentController.add()', 'POST', 1, 'test1', NULL, '/community/societiescomment', '127.0.0.1', '内网IP', '{\"params\":{},\"content\":\"士大夫\",\"commentId\":2,\"id\":101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 01:08:22');
INSERT INTO `sys_oper_log` VALUES (263, '活动评论', 1, 'com.bs.web.controller.community.BsSocietiesCommentController.add()', 'POST', 1, 'test1', NULL, '/community/societiescomment', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"targetId\":2,\"createdate\":1612460732437,\"params\":{},\"content\":\"是的\",\"replyId\":100,\"commentId\":2,\"id\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 01:45:32');
INSERT INTO `sys_oper_log` VALUES (264, '活动评论', 1, 'com.bs.web.controller.community.BsSocietiesCommentController.add()', 'POST', 1, 'test1', NULL, '/community/societiescomment', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"targetId\":2,\"createdate\":1612460750157,\"params\":{},\"content\":\"企业\",\"replyId\":100,\"commentId\":2,\"id\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 01:45:50');
INSERT INTO `sys_oper_log` VALUES (265, '活动评论', 1, 'com.bs.web.controller.community.BsSocietiesCommentController.add()', 'POST', 1, 'admin', NULL, '/community/societiescomment', '127.0.0.1', '内网IP', '{\"societiesId\":100,\"targetId\":2,\"commentUser\":{\"nickName\":\"测试用户1\",\"avatar\":\"\",\"id\":2,\"params\":{}},\"createdate\":1612461198143,\"params\":{},\"content\":\"五千万1\",\"replyId\":100,\"commentId\":1,\"id\":104,\"societies\":{\"societiesId\":100,\"params\":{},\"societiesName\":\"测试社团\",\"societiesImg\":\"http://localhost:8080/profile/upload/2021/02/01/eb2fba81-ecb3-4e77-bd98-19b486e1431b.png\",\"societiesType\":\"1\"},\"targetUser\":{\"nickName\":\"测试用户1\",\"avatar\":\"\",\"id\":2,\"params\":{}}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 01:53:18');
INSERT INTO `sys_oper_log` VALUES (266, '活动评论', 3, 'com.bs.web.controller.community.BsSocietiesCommentController.remove()', 'DELETE', 1, 'admin', NULL, '/community/societiescomment/104', '127.0.0.1', '内网IP', '{ids=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-05 01:53:53');
INSERT INTO `sys_oper_log` VALUES (267, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：', '2021-02-05 01:56:20');
INSERT INTO `sys_oper_log` VALUES (268, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：', '2021-02-05 01:57:05');
INSERT INTO `sys_oper_log` VALUES (269, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', 'null', 1, '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：', '2021-02-05 01:59:01');
INSERT INTO `sys_oper_log` VALUES (270, '用户管理', 6, 'com.bs.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、姓名： 测试用户3 学生认证成功\",\"code\":200}', 0, NULL, '2021-02-05 02:00:04');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '社长', 1, '0', 'admin', '2021-01-16 13:45:55', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'user', '普通成员', 2, '0', 'admin', '2021-01-16 13:45:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-01-16 13:45:55', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通社员', 'common', 3, '2', 1, 1, '0', '0', 'admin', '2021-01-16 13:45:55', 'admin', '2021-01-31 22:53:12', '普通角色');
INSERT INTO `sys_role` VALUES (100, '社长', 'chief', 2, '1', 1, 1, '0', '0', 'admin', '2021-01-16 15:28:20', 'admin', '2021-01-31 22:53:27', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 102);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 105);
INSERT INTO `sys_role_menu` VALUES (100, 106);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1013);
INSERT INTO `sys_role_menu` VALUES (100, 1014);
INSERT INTO `sys_role_menu` VALUES (100, 1015);
INSERT INTO `sys_role_menu` VALUES (100, 1016);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 1030);
INSERT INTO `sys_role_menu` VALUES (100, 1031);
INSERT INTO `sys_role_menu` VALUES (100, 1032);
INSERT INTO `sys_role_menu` VALUES (100, 1033);
INSERT INTO `sys_role_menu` VALUES (100, 1034);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `id_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '超级管理员', '1000000000000', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '0', '127.0.0.1', '2021-01-16 13:45:55', 'admin', '2021-01-16 13:45:55', '', NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'test1', '测试用户1', '1000000000001', '00', 'ry@qq.com', '15666666666', '0', '', '$2a$10$Eon5/0CKr.e.5Yp26Y5J/u4VAUecF14SXEjNYzWqNKQenF12bsyYu', '1', '0', '127.0.0.1', '2021-01-16 13:45:55', 'admin', '2021-01-16 13:45:55', 'test1', '2021-02-05 00:51:37', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'test2', '测试用户2', '1000000000002', '00', '', '13912312312', '0', '', '$2a$10$2cKQ314wE8uVMHin.bW0Je0Sd1CIgP5/5Nqc7OAFQaZIp9qPcU0Ke', '0', '0', '', NULL, '', '2021-02-03 15:00:18', 'admin', '2021-02-04 16:55:30', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'test3', '测试用户3', '1000000000003', '00', '', '13912312313', '0', '', '$2a$10$2cKQ314wE8uVMHin.bW0Je0Sd1CIgP5/5Nqc7OAFQaZIp9qPcU0Ke', '1', '0', '', NULL, '', '2021-02-03 15:00:18', 'admin', '2021-02-05 02:00:04', NULL);
INSERT INTO `sys_user` VALUES (102, NULL, 'test4', '测试用户4', '1000000000004', '00', '', '13912312314', '0', '', '$2a$10$2cKQ314wE8uVMHin.bW0Je0Sd1CIgP5/5Nqc7OAFQaZIp9qPcU0Ke', '0', '0', '', NULL, '', '2021-02-03 15:00:18', 'admin', '2021-02-04 19:27:46', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

SET FOREIGN_KEY_CHECKS = 1;
