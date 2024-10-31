/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kuaididaiqu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kuaididaiqu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kuaididaiqu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg'),(2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg'),(3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG'),(4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg'),(5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg'),(6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `daiqundingdan` */

DROP TABLE IF EXISTS `daiqundingdan`;

CREATE TABLE `daiqundingdan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '代取快递名称 Search',
  `yh_types` int(255) DEFAULT NULL COMMENT '订单发布人',
  `consigneeSite` varchar(200) DEFAULT NULL COMMENT '送件地址',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收件人',
  `consigneeNumber` varchar(200) DEFAULT NULL COMMENT '收件人手机号',
  `takeACode` varchar(255) DEFAULT NULL COMMENT '取件码',
  `kdzt_types` tinyint(4) DEFAULT NULL COMMENT '快递状态 Search',
  `dqr_types` tinyint(4) DEFAULT NULL COMMENT '代取人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='代取订单表';

/*Data for the table `daiqundingdan` */

insert  into `daiqundingdan`(`id`,`name`,`yh_types`,`consigneeSite`,`consignee`,`consigneeNumber`,`takeACode`,`kdzt_types`,`dqr_types`) values (11,'快递名称1',1,'收件地址1','收件人1','收件人手机号1','f1d7ab',4,3);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-02-25 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-02-25 11:41:54'),(3,'kdzt_types','快递状态',1,'未取',NULL,'2021-02-25 11:41:54'),(4,'kdzt_types','快递状态',2,'未接',NULL,'2021-02-25 11:41:54'),(5,'kdzt_types','快递状态',3,'已收',NULL,'2021-02-25 11:41:54'),(6,'kdzt_types','快递状态',4,'正在路上',NULL,'2021-02-25 11:41:54'),(7,'kdzt_types','快递状态',5,'已发布代取订单',NULL,'2021-02-25 11:41:54');

/*Table structure for table `kuaidi` */

DROP TABLE IF EXISTS `kuaidi`;

CREATE TABLE `kuaidi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '快递名称 Search',
  `consigneeSite` varchar(200) DEFAULT NULL COMMENT '收件地址',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收件人',
  `consigneeNumber` varchar(200) DEFAULT NULL COMMENT '收件人手机号',
  `addresser` varchar(200) DEFAULT NULL COMMENT '发件人',
  `addresserNumber` varchar(200) DEFAULT NULL COMMENT '发件人手机号',
  `kdzt_types` tinyint(4) DEFAULT NULL COMMENT '快递状态 Search',
  `takeACode` varchar(255) DEFAULT NULL COMMENT '取件码',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='快递表';

/*Data for the table `kuaidi` */

insert  into `kuaidi`(`id`,`name`,`consigneeSite`,`consignee`,`consigneeNumber`,`addresser`,`addresserNumber`,`kdzt_types`,`takeACode`,`create_time`) values (4,'快递名称1','收件地址1','收件人1','收件人手机号1','发件人1','发件人手机号1',5,'996b24','2021-03-15 16:30:56');

/*Table structure for table `renyuan` */

DROP TABLE IF EXISTS `renyuan`;

CREATE TABLE `renyuan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机号',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `renyuan` */

insert  into `renyuan`(`id`,`name`,`account`,`password`,`img_photo`,`sex_types`,`mobile`,`role`) values (1,'小金','111','111','http://localhost:8080/kuaididaiqu/file/download?fileName=1615795847899.jpg',1,'17796312333','用户'),(2,'小札','222','222','http://localhost:8080/kuaididaiqu/file/download?fileName=1615795839868.jpg',2,'12312312333','用户'),(3,'代取员1','333','333','http://localhost:8080/kuaididaiqu/file/download?fileName=1615795831602.jpg',1,'12312312333','代取员'),(4,'代取员2','444','444','http://localhost:8080/kuaididaiqu/file/download?fileName=1615795826795.jpg',2,'12312312333','代取员'),(6,'代取员3','555','555','http://localhost:8080/kuaididaiqu/file/download?fileName=1615795821616.jpg',2,'12312312333','代取员');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'admin','users','管理员','pdvez759gua8nbllwg6x88od9txqyskc','2021-03-04 11:02:31','2021-03-15 17:30:36'),(6,1,'小金','users','用户','fejvjnhtjlx39c81qvp00v7g4f6jmumr','2021-03-04 14:54:56','2021-03-15 17:31:31'),(7,3,'代取员1','users','代取员','67pekesofgw7tx2tyujm3vusyz4x2872','2021-03-04 15:58:19','2021-03-15 17:31:20'),(8,4,'代取员2','users','代取员','3whu6o4o6z6xqneqpg5dih79efzlij0b','2021-03-04 16:03:23','2021-03-04 17:03:24'),(9,6,'代取员3','users','代取员','3b10zenslhy432sm0ls0o4g0tqyq8md3','2021-03-04 17:07:44','2021-03-04 18:08:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-01 00:00:00');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-07 17:35:20','日常公告标题','日常公告','公告信息','2021-03-07 17:35:20'),(2,'2021-03-07 17:35:20','紧急公告标题','紧急公告','公告信息','2021-03-07 17:35:20'),(3,'2021-03-07 17:35:20','其他公告标题','其他公告','公告信息','2021-03-07 17:35:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
