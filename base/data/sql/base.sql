/*
MySQL Database Backup Tools
Server:127.0.0.1:
Database:base
Data:2020-01-04 15:03:27
*/
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tp_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`) USING BTREE,
  KEY `nodeId` (`node_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','74','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','73','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','72','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','71','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','70','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','69','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','66','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','65','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','64','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','1','1','0');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','75','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','76','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','77','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','78','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','79','3','75');

-- ----------------------------
-- Table structure for tp_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('1','系统管理','&#xe61d;','2','1','','0','1450752856','1481180175');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('2','工具','&#xe616;','3','1','','0','1476016712','1481180175');

-- ----------------------------
-- Table structure for tp_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `isdelete` (`isdelete`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('1','0','1','Admin','后台管理','后台管理，不可更改','1','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('2','1','1','AdminGroup','分组管理',' ','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('3','1','1','AdminNode','节点管理',' ','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('4','1','1','AdminRole','角色管理',' ','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('5','1','1','AdminUser','用户管理','','2','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('6','1','0','Index','首页','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('7','6','0','welcome','欢迎页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('8','6','0','index','未定义','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('9','1','2','Generate','代码自动生成','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('10','1','2','Demo/excel','Excel一键导出','','2','0','15','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('11','1','2','Demo/download','下载','','2','0','14','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('12','1','2','Demo/downloadImage','远程图片下载','','2','0','8','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('13','1','2','Demo/mail','邮件发送','','2','0','13','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('14','1','2','Demo/qiniu','七牛上传','','2','0','12','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('15','1','2','Demo/hashids','ID加密','','2','0','11','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('16','1','2','Demo/layer','丰富弹层','','2','0','10','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('17','1','2','Demo/tableFixed','表格溢出','','2','0','9','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('18','1','2','Demo/ueditor','百度编辑器','','2','0','7','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('19','1','2','Demo/imageUpload','图片上传','','2','0','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('20','1','2','Demo/qrcode','二维码生成','','2','0','8','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('21','1','1','NodeMap','节点图','','2','1','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('22','1','1','WebLog','操作日志','','2','1','6','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('23','1','1','LoginLog','登录日志','','2','1','7','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('59','1','2','one.two.three.Four/index','多级节点','','2','0','16','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('24','23','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('25','22','0','index','列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('26','22','0','detail','详情','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('27','21','0','load','自动导入','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('28','21','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('29','5','0','add','添加','','3','0','51','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('30','21','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('31','21','0','deleteForever','永久删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('32','9','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('33','9','0','generate','生成方法','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('34','5','0','password','修改密码','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('35','5','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('36','5','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('37','5','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('38','4','0','user','用户列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('39','4','0','access','授权','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('40','4','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('41','4','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('42','4','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('43','4','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('44','4','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('45','3','0','load','节点快速导入测试','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('46','3','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('47','3','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('48','3','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('49','3','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('50','3','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('51','2','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('52','2','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('53','2','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('54','2','0','forbid','默认禁用操作','','3','0','51','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('55','2','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('56','1','2','one','一级菜单','','2','1','17','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('60','56','2','two','二级','','3','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('61','60','2','three','三级菜单','','4','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('62','61','2','Four','四级菜单','','5','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('63','1','2','Demo/version','轻量版编辑器','','2','0','6','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('64','1','2','Upload','文件上传','','2','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('65','64','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('66','64','0','upload','文件上传','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('67','63','0','remote','远程图片抓取','','3','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('68','67','0','listImage','图片列表','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('69','64','0','remote','远程图片抓取','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('70','64','0','listImage','图片列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('71','1','2','Sql','备份数据库','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('72','71','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('73','71','0','mysql','数据库备份','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('74','71','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('75','1','2','Map','站点地图','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('76','75','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('77','75','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('78','75','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('79','75','0','resume','默认恢复操作','','3','0','50','1','0');

-- ----------------------------
-- Table structure for tp_admin_node_load
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点快速导入';
-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('4','编辑','edit','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('5','添加','add','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('6','首页','index','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('7','删除','delete','1');

-- ----------------------------
-- Table structure for tp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parentId` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `isdelete` (`isdelete`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` (`id`,`pid`,`name`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','0','客户名称','','1','0','1571640709','1571640709');

-- ----------------------------
-- Table structure for tp_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------
INSERT INTO `tp_admin_role_user` (`role_id`,`user_id`) VALUES ('1','2');

-- ----------------------------
-- Table structure for tp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `accountpassword` (`account`,`password`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` (`id`,`account`,`realname`,`password`,`last_login_time`,`last_login_ip`,`login_count`,`email`,`mobile`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','admin','超级管理员','e10adc3949ba59abbe56e057f20f883e','1578121363','127.0.0.1','1','tianpian0805@gmail.com','13121126169','我是超级管理员','1','0','1222907803','1451033528');
INSERT INTO `tp_admin_user` (`id`,`account`,`realname`,`password`,`last_login_time`,`last_login_ip`,`login_count`,`email`,`mobile`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('2','demo','测试','e10adc3949ba59abbe56e057f20f883e','1578042106','127.0.0.1','0','','','','1','0','1476777133','1477399793');

-- ----------------------------
-- Table structure for tp_file
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_file
-- ----------------------------

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`,`num`) VALUES ('1','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2020-01-04 15:02:43','1');

-- ----------------------------
-- Table structure for tp_login_num
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_num`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tp_login_num` AS select `tp_login_log`.`uid` AS `uid`,date_format(`tp_login_log`.`login_time`,'%Y-%m-%d') AS `login_time`,round(sum(`tp_login_log`.`num`),2) AS `num` from `tp_login_log` group by date_format(`tp_login_log`.`login_time`,'%Y-%m-%d'),`tp_login_log`.`uid`;
-- ----------------------------
-- Records of tp_login_num
-- ----------------------------
INSERT INTO `tp_login_num` (`uid`,`login_time`,`num`) VALUES ('1','2020-01-04','1.00');

-- ----------------------------
-- Table structure for tp_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_map`;
CREATE TABLE `tp_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '编辑时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_node_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';
-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_number
-- ----------------------------
DROP TABLE IF EXISTS `tp_number`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tp_number` AS select `tp_web_log_all`.`uid` AS `uid`,date_format(from_unixtime(`tp_web_log_all`.`create_at`),'%Y-%m-%d') AS `create_at`,round(sum(`tp_web_log_all`.`time`),2) AS `time` from `tp_web_log_all` group by date_format(from_unixtime(`tp_web_log_all`.`create_at`),'%Y-%m-%d'),`tp_web_log_all`.`uid`;
-- ----------------------------
-- Records of tp_number
-- ----------------------------
INSERT INTO `tp_number` (`uid`,`create_at`,`time`) VALUES ('0','2020-01-04','3.00');
INSERT INTO `tp_number` (`uid`,`create_at`,`time`) VALUES ('1','2020-01-04','16.00');

-- ----------------------------
-- Table structure for tp_one_two_three_four
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='四级控制器';
-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` (`id`,`field1`,`option`,`select`,`radio`,`checkbox`,`password`,`textarea`,`date`,`mobile`,`email`,`sort`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','yuan1994','tpadmin','2','1','','2222','https://github.com/yuan1994/tpadmin','2016-12-07','13012345678','tianpian0805@gmail.com','50','1','0','1481947278','1481947353');

-- ----------------------------
-- Table structure for tp_sql
-- ----------------------------
-- ----------------------------
-- Records of tp_sql
-- ----------------------------
-- ----------------------------
-- Table structure for tp_web_log_all
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_all`;
CREATE TABLE `tp_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `time` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站日志';
-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('1','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1578106872','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('2','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}','1578106872','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('3','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}','1578106875','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('4','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1578106876','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('5','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1578106876','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('6','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1578106897','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('7','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1578106897','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('8','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1578108859','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('9','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1578108859','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('10','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1578109880','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('11','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1578109881','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('12','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1578109883','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('13','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/pub/logout.html','admin','Pub','logout','GET','a:0:{}','1578109893','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('14','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/pub/login.html','admin','Pub','login','GET','a:0:{}','1578109894','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('15','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/pub/login.html','admin','Pub','login','GET','a:0:{}','1578121355','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('16','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:2:{s:7:"account";s:5:"admin";s:8:"password";s:6:"123456";}','1578121363','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('17','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1578121364','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('18','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1578121364','1');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`,`time`) VALUES ('19','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://base.local/admin/sql/index.html','admin','Sql','index','GET','a:0:{}','1578121398','1');

