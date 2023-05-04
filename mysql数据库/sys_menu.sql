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

 Date: 06/02/2021 13:44:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2048 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_menu` VALUES (2042, '社团评论管理', 1, 5, 'societiescomment', 'community/societiescomment/index', 1, 0, 'C', '0', '0', 'community:societiescomment:list', 'edit', 'admin', '2021-02-04 22:55:41', 'admin', '2021-02-04 22:58:42', '社团评论菜单');
INSERT INTO `sys_menu` VALUES (2043, '社团评论查询', 2042, 1, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:query', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '社团评论新增', 2042, 2, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:add', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '社团评论修改', 2042, 3, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:edit', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '社团评论删除', 2042, 4, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:remove', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '社团评论导出', 2042, 5, '#', '', 1, 0, 'F', '0', '0', 'community:societiescomment:export', '#', 'admin', '2021-02-04 22:55:41', '', NULL, '');

SET FOREIGN_KEY_CHECKS = 1;
