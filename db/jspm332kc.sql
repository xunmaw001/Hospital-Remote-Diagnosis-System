-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm332kc
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843053684 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-04 07:28:46',1,1,'提问1','回复1',1),(52,'2021-03-04 07:28:46',2,2,'提问2','回复2',2),(53,'2021-03-04 07:28:46',3,3,'提问3','回复3',3),(54,'2021-03-04 07:28:46',4,4,'提问4','回复4',4),(55,'2021-03-04 07:28:46',5,5,'提问5','回复5',5),(56,'2021-03-04 07:28:46',6,6,'提问6','回复6',6),(1614843053683,'2021-03-04 07:30:52',11,NULL,'‍11111\r\n','11111\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm332kc/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm332kc/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm332kc/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyishengxinxi`
--

DROP TABLE IF EXISTS `discussyishengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='医生信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyishengxinxi`
--

LOCK TABLES `discussyishengxinxi` WRITE;
/*!40000 ALTER TABLE `discussyishengxinxi` DISABLE KEYS */;
INSERT INTO `discussyishengxinxi` VALUES (81,'2021-03-04 07:28:46',1,1,'评论内容1','回复内容1'),(82,'2021-03-04 07:28:46',2,2,'评论内容2','回复内容2'),(83,'2021-03-04 07:28:46',3,3,'评论内容3','回复内容3'),(84,'2021-03-04 07:28:46',4,4,'评论内容4','回复内容4'),(85,'2021-03-04 07:28:46',5,5,'评论内容5','回复内容5'),(86,'2021-03-04 07:28:46',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyishengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-04 07:28:46','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-04 07:28:46','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-04 07:28:46','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-04 07:28:46','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-04 07:28:46','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-04 07:28:46','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','znb8yq3fzdn1jhy8bqyvsd1qudwudc27','2021-03-04 07:29:51','2021-03-04 08:29:51'),(2,21,'医生1','yisheng','管理员','hao1qwxis177qpu33ij7u5w2o6klhf78','2021-03-04 07:31:08','2021-03-04 08:31:34');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-04 07:28:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` int(11) DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jianjie` longtext COMMENT '简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-03-04 07:28:46','医生1','123456','医生姓名1','科室1','职称1','男',1,'13823888881','http://localhost:8080/jspm332kc/upload/yisheng_touxiang1.jpg','简介1'),(22,'2021-03-04 07:28:46','医生2','123456','医生姓名2','科室2','职称2','男',2,'13823888882','http://localhost:8080/jspm332kc/upload/yisheng_touxiang2.jpg','简介2'),(23,'2021-03-04 07:28:46','医生3','123456','医生姓名3','科室3','职称3','男',3,'13823888883','http://localhost:8080/jspm332kc/upload/yisheng_touxiang3.jpg','简介3'),(24,'2021-03-04 07:28:46','医生4','123456','医生姓名4','科室4','职称4','男',4,'13823888884','http://localhost:8080/jspm332kc/upload/yisheng_touxiang4.jpg','简介4'),(25,'2021-03-04 07:28:46','医生5','123456','医生姓名5','科室5','职称5','男',5,'13823888885','http://localhost:8080/jspm332kc/upload/yisheng_touxiang5.jpg','简介5'),(26,'2021-03-04 07:28:46','医生6','123456','医生姓名6','科室6','职称6','男',6,'13823888886','http://localhost:8080/jspm332kc/upload/yisheng_touxiang6.jpg','简介6');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yishengxinxi`
--

DROP TABLE IF EXISTS `yishengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` int(11) DEFAULT NULL COMMENT '医龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jianjie` longtext COMMENT '简介',
  `yuyuefeiyong` int(11) DEFAULT NULL COMMENT '预约费用',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yishengxinxi`
--

LOCK TABLES `yishengxinxi` WRITE;
/*!40000 ALTER TABLE `yishengxinxi` DISABLE KEYS */;
INSERT INTO `yishengxinxi` VALUES (31,'2021-03-04 07:28:46','医生工号1','医生姓名1','科室1','职称1','男',1,'http://localhost:8080/jspm332kc/upload/yishengxinxi_touxiang1.jpg','简介1',1,1,1,'2021-03-04 15:32:16',8),(32,'2021-03-04 07:28:46','医生工号2','医生姓名2','科室2','职称2','男',2,'http://localhost:8080/jspm332kc/upload/yishengxinxi_touxiang2.jpg','简介2',2,2,2,'2021-03-04 15:28:46',2),(33,'2021-03-04 07:28:46','医生工号3','医生姓名3','科室3','职称3','男',3,'http://localhost:8080/jspm332kc/upload/yishengxinxi_touxiang3.jpg','简介3',3,3,3,'2021-03-04 15:28:46',3),(34,'2021-03-04 07:28:46','医生工号4','医生姓名4','科室4','职称4','男',4,'http://localhost:8080/jspm332kc/upload/yishengxinxi_touxiang4.jpg','简介4',4,4,4,'2021-03-04 15:28:46',4),(35,'2021-03-04 07:28:46','医生工号5','医生姓名5','科室5','职称5','男',5,'http://localhost:8080/jspm332kc/upload/yishengxinxi_touxiang5.jpg','简介5',5,5,5,'2021-03-04 15:28:46',5),(36,'2021-03-04 07:28:46','医生工号6','医生姓名6','科室6','职称6','男',6,'http://localhost:8080/jspm332kc/upload/yishengxinxi_touxiang6.jpg','简介6',6,6,6,'2021-03-04 15:28:46',6);
/*!40000 ALTER TABLE `yishengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yishengyuyue`
--

DROP TABLE IF EXISTS `yishengyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yishengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `yuyuefeiyong` varchar(200) DEFAULT NULL COMMENT '预约费用',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614843133262 DEFAULT CHARSET=utf8 COMMENT='医生预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yishengyuyue`
--

LOCK TABLES `yishengyuyue` WRITE;
/*!40000 ALTER TABLE `yishengyuyue` DISABLE KEYS */;
INSERT INTO `yishengyuyue` VALUES (41,'2021-03-04 07:28:46','医生工号1','医生姓名1','科室1','预约费用1','账号1','姓名1','是','','未支付'),(42,'2021-03-04 07:28:46','医生工号2','医生姓名2','科室2','预约费用2','账号2','姓名2','是','','未支付'),(43,'2021-03-04 07:28:46','医生工号3','医生姓名3','科室3','预约费用3','账号3','姓名3','是','','未支付'),(44,'2021-03-04 07:28:46','医生工号4','医生姓名4','科室4','预约费用4','账号4','姓名4','是','','未支付'),(45,'2021-03-04 07:28:46','医生工号5','医生姓名5','科室5','预约费用5','账号5','姓名5','是','','未支付'),(46,'2021-03-04 07:28:46','医生工号6','医生姓名6','科室6','预约费用6','账号6','姓名6','是','','未支付'),(1614843008262,'2021-03-04 07:30:07','医生1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付'),(1614843010877,'2021-03-04 07:30:09','医生1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付'),(1614843015177,'2021-03-04 07:30:14','医生工号1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付'),(1614843026814,'2021-03-04 07:30:26','医生工号1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付'),(1614843127135,'2021-03-04 07:32:06','医生工号1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付'),(1614843128295,'2021-03-04 07:32:08','医生工号1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付'),(1614843133261,'2021-03-04 07:32:12','医生工号1','医生姓名1','科室1','1','用户1','姓名1','否',NULL,'未支付');
/*!40000 ALTER TABLE `yishengyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-04 07:28:46','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/jspm332kc/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-03-04 07:28:46','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/jspm332kc/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-03-04 07:28:46','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/jspm332kc/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-03-04 07:28:46','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/jspm332kc/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-03-04 07:28:46','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/jspm332kc/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-03-04 07:28:46','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/jspm332kc/upload/yonghu_zhaopian6.jpg','备注6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 15:56:05
