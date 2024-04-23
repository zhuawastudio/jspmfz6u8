-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmfz6u8
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmfz6u8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmfz6u8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmfz6u8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (71,'2021-03-05 05:20:25',1,'用户名1','留言内容1','回复内容1'),(72,'2021-03-05 05:20:25',2,'用户名2','留言内容2','回复内容2'),(73,'2021-03-05 05:20:25',3,'用户名3','留言内容3','回复内容3'),(74,'2021-03-05 05:20:25',4,'用户名4','留言内容4','回复内容4'),(75,'2021-03-05 05:20:25',5,'用户名5','留言内容5','回复内容5'),(76,'2021-03-05 05:20:25',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2021-03-05 05:20:25','标题1','简介1','http://localhost:8080/jspmfz6u8/upload/news_picture1.jpg','内容1'),(62,'2021-03-05 05:20:25','标题2','简介2','http://localhost:8080/jspmfz6u8/upload/news_picture2.jpg','内容2'),(63,'2021-03-05 05:20:25','标题3','简介3','http://localhost:8080/jspmfz6u8/upload/news_picture3.jpg','内容3'),(64,'2021-03-05 05:20:25','标题4','简介4','http://localhost:8080/jspmfz6u8/upload/news_picture4.jpg','内容4'),(65,'2021-03-05 05:20:25','标题5','简介5','http://localhost:8080/jspmfz6u8/upload/news_picture5.jpg','内容5'),(66,'2021-03-05 05:20:25','标题6','简介6','http://localhost:8080/jspmfz6u8/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyehao` varchar(200) NOT NULL COMMENT '企业号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyehao` (`qiyehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2021-03-05 05:20:25','企业1','123456','企业名称1','http://localhost:8080/jspmfz6u8/upload/qiye_tupian1.jpg','13823888881','地址1','773890001@qq.com'),(22,'2021-03-05 05:20:25','企业2','123456','企业名称2','http://localhost:8080/jspmfz6u8/upload/qiye_tupian2.jpg','13823888882','地址2','773890002@qq.com'),(23,'2021-03-05 05:20:25','企业3','123456','企业名称3','http://localhost:8080/jspmfz6u8/upload/qiye_tupian3.jpg','13823888883','地址3','773890003@qq.com'),(24,'2021-03-05 05:20:25','企业4','123456','企业名称4','http://localhost:8080/jspmfz6u8/upload/qiye_tupian4.jpg','13823888884','地址4','773890004@qq.com'),(25,'2021-03-05 05:20:25','企业5','123456','企业名称5','http://localhost:8080/jspmfz6u8/upload/qiye_tupian5.jpg','13823888885','地址5','773890005@qq.com'),(26,'2021-03-05 05:20:25','企业6','123456','企业名称6','http://localhost:8080/jspmfz6u8/upload/qiye_tupian6.jpg','13823888886','地址6','773890006@qq.com');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'企业1','qiye','企业','n4mvzpkily69h7ek5ddt2dwix59mhnal','2021-03-05 05:22:23','2021-03-05 07:38:27'),(2,1,'abo','users','管理员','ndxyjo7rtajvcmdao72b0me83gv1krg4','2021-03-05 05:26:12','2021-03-05 07:39:37'),(3,11,'用户1','yonghu','用户','xki113xiiq8wjczqubowr5mlhihtq56t','2021-03-05 06:35:14','2021-03-05 07:39:19');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-05 05:20:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-05 05:20:25','用户1','123456','姓名1','http://localhost:8080/jspmfz6u8/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-05 05:20:25','用户2','123456','姓名2','http://localhost:8080/jspmfz6u8/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-05 05:20:25','用户3','123456','姓名3','http://localhost:8080/jspmfz6u8/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-05 05:20:25','用户4','123456','姓名4','http://localhost:8080/jspmfz6u8/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-05 05:20:25','用户5','123456','姓名5','http://localhost:8080/jspmfz6u8/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-05 05:20:25','用户6','123456','姓名6','http://localhost:8080/jspmfz6u8/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweileibie`
--

DROP TABLE IF EXISTS `zhiweileibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweileibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweileibie` varchar(200) NOT NULL COMMENT '职位类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614926406719 DEFAULT CHARSET=utf8 COMMENT='职位类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweileibie`
--

LOCK TABLES `zhiweileibie` WRITE;
/*!40000 ALTER TABLE `zhiweileibie` DISABLE KEYS */;
INSERT INTO `zhiweileibie` VALUES (31,'2021-03-05 05:20:25','职位类别1'),(32,'2021-03-05 05:20:25','职位类别2'),(33,'2021-03-05 05:20:25','职位类别3'),(34,'2021-03-05 05:20:25','职位类别4'),(35,'2021-03-05 05:20:25','职位类别5'),(36,'2021-03-05 05:20:25','职位类别6'),(1614926406718,'2021-03-05 06:40:06','文职');
/*!40000 ALTER TABLE `zhiweileibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweishenqing`
--

DROP TABLE IF EXISTS `zhiweishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhiweileibie` varchar(200) DEFAULT NULL COMMENT '职位类别',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhiweijianjie` varchar(200) DEFAULT NULL COMMENT '职位简介',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614926284676 DEFAULT CHARSET=utf8 COMMENT='职位申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweishenqing`
--

LOCK TABLES `zhiweishenqing` WRITE;
/*!40000 ALTER TABLE `zhiweishenqing` DISABLE KEYS */;
INSERT INTO `zhiweishenqing` VALUES (51,'2021-03-05 05:20:25','职位名称1','职位类别1','薪资待遇1','职位简介1','企业号1','企业名称1','2021-03-05','','用户名1','姓名1','手机号码1','是',''),(52,'2021-03-05 05:20:25','职位名称2','职位类别2','薪资待遇2','职位简介2','企业号2','企业名称2','2021-03-05','','用户名2','姓名2','手机号码2','是',''),(53,'2021-03-05 05:20:25','职位名称3','职位类别3','薪资待遇3','职位简介3','企业号3','企业名称3','2021-03-05','','用户名3','姓名3','手机号码3','是',''),(54,'2021-03-05 05:20:25','职位名称4','职位类别4','薪资待遇4','职位简介4','企业号4','企业名称4','2021-03-05','','用户名4','姓名4','手机号码4','是',''),(55,'2021-03-05 05:20:25','职位名称5','职位类别5','薪资待遇5','职位简介5','企业号5','企业名称5','2021-03-05','','用户名5','姓名5','手机号码5','是',''),(56,'2021-03-05 05:20:25','职位名称6','职位类别6','薪资待遇6','职位简介6','企业号6','企业名称6','2021-03-05','','用户名6','姓名6','手机号码6','是',''),(1614926284675,'2021-03-05 06:38:03','文员','职位类别1','4000-5000','dsfdfsdfsdf','企业1','企业名称1','2021-03-05','http://localhost:8080/jspmfz6u8/upload/1614926280069.jpg','用户1','姓名1','13823888881','是','请于3月7号上午9点来公司面试');
/*!40000 ALTER TABLE `zhiweishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweixinxi`
--

DROP TABLE IF EXISTS `zhiweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhiweileibie` varchar(200) DEFAULT NULL COMMENT '职位类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhiweijianjie` longtext COMMENT '职位简介',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614926232452 DEFAULT CHARSET=utf8 COMMENT='职位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweixinxi`
--

LOCK TABLES `zhiweixinxi` WRITE;
/*!40000 ALTER TABLE `zhiweixinxi` DISABLE KEYS */;
INSERT INTO `zhiweixinxi` VALUES (41,'2021-03-05 05:20:25','职位名称1','职位类别1','http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian1.jpg',1,'薪资待遇1','职位简介1','2021-03-05','联系人1','13823888881','企业号1','企业名称1','地址1'),(42,'2021-03-05 05:20:25','职位名称2','职位类别2','http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian2.jpg',2,'薪资待遇2','职位简介2','2021-03-05','联系人2','13823888882','企业号2','企业名称2','地址2'),(43,'2021-03-05 05:20:25','职位名称3','职位类别3','http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian3.jpg',3,'薪资待遇3','职位简介3','2021-03-05','联系人3','13823888883','企业号3','企业名称3','地址3'),(44,'2021-03-05 05:20:25','职位名称4','职位类别4','http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian4.jpg',4,'薪资待遇4','职位简介4','2021-03-05','联系人4','13823888884','企业号4','企业名称4','地址4'),(45,'2021-03-05 05:20:25','职位名称5','职位类别5','http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian5.jpg',5,'薪资待遇5','职位简介5','2021-03-05','联系人5','13823888885','企业号5','企业名称5','地址5'),(46,'2021-03-05 05:20:25','职位名称6','职位类别6','http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian6.jpg',6,'薪资待遇6','职位简介6','2021-03-05','联系人6','13823888886','企业号6','企业名称6','地址6'),(1614926232451,'2021-03-05 06:37:11','文员','职位类别1','http://localhost:8080/jspmfz6u8/upload/1614926198070.jpg',2,'4000-5000','dsfdfsdfsdf','2021-03-05','杨小姐','13823822222','企业1','企业名称1','地址1');
/*!40000 ALTER TABLE `zhiweixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 10:14:20
