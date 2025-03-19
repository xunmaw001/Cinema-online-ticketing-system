-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm25385
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm25385/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm25385/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm25385/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyingpianxinxi`
--

DROP TABLE IF EXISTS `discussyingpianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyingpianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='影片信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyingpianxinxi`
--

LOCK TABLES `discussyingpianxinxi` WRITE;
/*!40000 ALTER TABLE `discussyingpianxinxi` DISABLE KEYS */;
INSERT INTO `discussyingpianxinxi` VALUES (81,'2021-04-14 15:37:00',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-14 15:37:00',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-14 15:37:00',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-14 15:37:00',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-14 15:37:00',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-14 15:37:00',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyingpianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyingtingxinxi`
--

DROP TABLE IF EXISTS `discussyingtingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyingtingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='影厅信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyingtingxinxi`
--

LOCK TABLES `discussyingtingxinxi` WRITE;
/*!40000 ALTER TABLE `discussyingtingxinxi` DISABLE KEYS */;
INSERT INTO `discussyingtingxinxi` VALUES (91,'2021-04-14 15:37:00',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-14 15:37:00',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-14 15:37:00',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-14 15:37:00',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-14 15:37:00',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-14 15:37:00',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyingtingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guanhougan`
--

DROP TABLE IF EXISTS `guanhougan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guanhougan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingpianmingcheng` varchar(200) DEFAULT NULL COMMENT '影片名称',
  `yingpianfenlei` varchar(200) DEFAULT NULL COMMENT '影片分类',
  `yingpianfengmian` varchar(200) DEFAULT NULL COMMENT '影片封面',
  `shangyingshijian` varchar(200) DEFAULT NULL COMMENT '上映时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `pingji` varchar(200) NOT NULL COMMENT '评即',
  `pingyu` longtext COMMENT '评语',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='观后感';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guanhougan`
--

LOCK TABLES `guanhougan` WRITE;
/*!40000 ALTER TABLE `guanhougan` DISABLE KEYS */;
INSERT INTO `guanhougan` VALUES (51,'2021-04-14 15:37:00','影片名称1','影片分类1','http://localhost:8080/ssm25385/upload/guanhougan_yingpianfengmian1.jpg','上映时间1','账号1','姓名1','一星','评语1'),(52,'2021-04-14 15:37:00','影片名称2','影片分类2','http://localhost:8080/ssm25385/upload/guanhougan_yingpianfengmian2.jpg','上映时间2','账号2','姓名2','一星','评语2'),(53,'2021-04-14 15:37:00','影片名称3','影片分类3','http://localhost:8080/ssm25385/upload/guanhougan_yingpianfengmian3.jpg','上映时间3','账号3','姓名3','一星','评语3'),(54,'2021-04-14 15:37:00','影片名称4','影片分类4','http://localhost:8080/ssm25385/upload/guanhougan_yingpianfengmian4.jpg','上映时间4','账号4','姓名4','一星','评语4'),(55,'2021-04-14 15:37:00','影片名称5','影片分类5','http://localhost:8080/ssm25385/upload/guanhougan_yingpianfengmian5.jpg','上映时间5','账号5','姓名5','一星','评语5'),(56,'2021-04-14 15:37:00','影片名称6','影片分类6','http://localhost:8080/ssm25385/upload/guanhougan_yingpianfengmian6.jpg','上映时间6','账号6','姓名6','一星','评语6');
/*!40000 ALTER TABLE `guanhougan` ENABLE KEYS */;
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
INSERT INTO `messages` VALUES (71,'2021-04-14 15:37:00',1,'用户名1','留言内容1','回复内容1'),(72,'2021-04-14 15:37:00',2,'用户名2','留言内容2','回复内容2'),(73,'2021-04-14 15:37:00',3,'用户名3','留言内容3','回复内容3'),(74,'2021-04-14 15:37:00',4,'用户名4','留言内容4','回复内容4'),(75,'2021-04-14 15:37:00',5,'用户名5','留言内容5','回复内容5'),(76,'2021-04-14 15:37:00',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','iaj7f5prg7m8niob0qm61exs7t75vito','2021-04-14 15:39:12','2021-04-14 16:39:12');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-14 15:37:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpiandingdan`
--

DROP TABLE IF EXISTS `yingpiandingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpiandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `yingpianmingcheng` varchar(200) DEFAULT NULL COMMENT '影片名称',
  `yingpianfenlei` varchar(200) DEFAULT NULL COMMENT '影片分类',
  `yingpianfengmian` varchar(200) DEFAULT NULL COMMENT '影片封面',
  `shangyingshijian` varchar(200) DEFAULT NULL COMMENT '上映时间',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `shuliang` varchar(200) NOT NULL COMMENT '数量',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618414788345 DEFAULT CHARSET=utf8 COMMENT='影片订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpiandingdan`
--

LOCK TABLES `yingpiandingdan` WRITE;
/*!40000 ALTER TABLE `yingpiandingdan` DISABLE KEYS */;
INSERT INTO `yingpiandingdan` VALUES (41,'2021-04-14 15:37:00','订单编号1','影片名称1','影片分类1','http://localhost:8080/ssm25385/upload/yingpiandingdan_yingpianfengmian1.jpg','上映时间1','票价1','数量1','总价1','账号1','姓名1','联系电话1'),(42,'2021-04-14 15:37:00','订单编号2','影片名称2','影片分类2','http://localhost:8080/ssm25385/upload/yingpiandingdan_yingpianfengmian2.jpg','上映时间2','票价2','数量2','总价2','账号2','姓名2','联系电话2'),(43,'2021-04-14 15:37:00','订单编号3','影片名称3','影片分类3','http://localhost:8080/ssm25385/upload/yingpiandingdan_yingpianfengmian3.jpg','上映时间3','票价3','数量3','总价3','账号3','姓名3','联系电话3'),(44,'2021-04-14 15:37:00','订单编号4','影片名称4','影片分类4','http://localhost:8080/ssm25385/upload/yingpiandingdan_yingpianfengmian4.jpg','上映时间4','票价4','数量4','总价4','账号4','姓名4','联系电话4'),(45,'2021-04-14 15:37:00','订单编号5','影片名称5','影片分类5','http://localhost:8080/ssm25385/upload/yingpiandingdan_yingpianfengmian5.jpg','上映时间5','票价5','数量5','总价5','账号5','姓名5','联系电话5'),(46,'2021-04-14 15:37:00','订单编号6','影片名称6','影片分类6','http://localhost:8080/ssm25385/upload/yingpiandingdan_yingpianfengmian6.jpg','上映时间6','票价6','数量6','总价6','账号6','姓名6','联系电话6'),(1618414788344,'2021-04-14 15:39:47','202141423392439605516','影片名称6','影片分类6','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian6.jpg','2021-04-14 23:37:00','6','3','18','用户1','姓名1','13823888881');
/*!40000 ALTER TABLE `yingpiandingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpianleixing`
--

DROP TABLE IF EXISTS `yingpianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingpianleixing` varchar(200) DEFAULT NULL COMMENT '影片类型',
  `jianyaojieshao` longtext COMMENT '简要介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='影片类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpianleixing`
--

LOCK TABLES `yingpianleixing` WRITE;
/*!40000 ALTER TABLE `yingpianleixing` DISABLE KEYS */;
INSERT INTO `yingpianleixing` VALUES (21,'2021-04-14 15:37:00','影片类型1','简要介绍1'),(22,'2021-04-14 15:37:00','影片类型2','简要介绍2'),(23,'2021-04-14 15:37:00','影片类型3','简要介绍3'),(24,'2021-04-14 15:37:00','影片类型4','简要介绍4'),(25,'2021-04-14 15:37:00','影片类型5','简要介绍5'),(26,'2021-04-14 15:37:00','影片类型6','简要介绍6');
/*!40000 ALTER TABLE `yingpianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpianxinxi`
--

DROP TABLE IF EXISTS `yingpianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingpianmingcheng` varchar(200) NOT NULL COMMENT '影片名称',
  `yingpianzhuangtai` varchar(200) DEFAULT NULL COMMENT '影片状态',
  `yingpianfenlei` varchar(200) NOT NULL COMMENT '影片分类',
  `yingpianfengmian` varchar(200) NOT NULL COMMENT '影片封面',
  `yingpiandiqu` varchar(200) NOT NULL COMMENT '影片地区',
  `shangyingshijian` datetime DEFAULT NULL COMMENT '上映时间',
  `piaojia` int(11) NOT NULL COMMENT '票价',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `yingpianxiangqing` longtext COMMENT '影片详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yingpianmingcheng` (`yingpianmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='影片信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpianxinxi`
--

LOCK TABLES `yingpianxinxi` WRITE;
/*!40000 ALTER TABLE `yingpianxinxi` DISABLE KEYS */;
INSERT INTO `yingpianxinxi` VALUES (31,'2021-04-14 15:37:00','影片名称1','未上映','影片分类1','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian1.jpg','影片地区1','2021-04-14 23:37:00',1,1,'影片详情1','是','',1,1,'2021-04-14 23:37:00',1),(32,'2021-04-14 15:37:00','影片名称2','未上映','影片分类2','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian2.jpg','影片地区2','2021-04-14 23:37:00',2,2,'影片详情2','是','',2,2,'2021-04-14 23:37:00',2),(33,'2021-04-14 15:37:00','影片名称3','未上映','影片分类3','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian3.jpg','影片地区3','2021-04-14 23:37:00',3,3,'影片详情3','是','',3,3,'2021-04-14 23:37:00',3),(34,'2021-04-14 15:37:00','影片名称4','未上映','影片分类4','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian4.jpg','影片地区4','2021-04-14 23:37:00',4,4,'影片详情4','是','',4,4,'2021-04-14 23:37:00',4),(35,'2021-04-14 15:37:00','影片名称5','未上映','影片分类5','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian5.jpg','影片地区5','2021-04-14 23:37:00',5,5,'影片详情5','是','',5,5,'2021-04-14 23:37:00',5),(36,'2021-04-14 15:37:00','影片名称6','未上映','影片分类6','http://localhost:8080/ssm25385/upload/yingpianxinxi_yingpianfengmian6.jpg','影片地区6','2021-04-14 23:37:00',6,3,'影片详情6','是','',6,6,'2021-04-14 23:39:50',8);
/*!40000 ALTER TABLE `yingpianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingtingxinxi`
--

DROP TABLE IF EXISTS `yingtingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingtingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingtingmingcheng` varchar(200) DEFAULT NULL COMMENT '影厅名称',
  `yingtingfengmian` varchar(200) DEFAULT NULL COMMENT '影厅封面',
  `yingtingweizhi` varchar(200) DEFAULT NULL COMMENT '影厅位置',
  `guanyingrenshu` int(11) DEFAULT NULL COMMENT '观影人数',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='影厅信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingtingxinxi`
--

LOCK TABLES `yingtingxinxi` WRITE;
/*!40000 ALTER TABLE `yingtingxinxi` DISABLE KEYS */;
INSERT INTO `yingtingxinxi` VALUES (61,'2021-04-14 15:37:00','影厅名称1','http://localhost:8080/ssm25385/upload/yingtingxinxi_yingtingfengmian1.jpg','影厅位置1',1,'详细介绍1',1,1,1),(62,'2021-04-14 15:37:00','影厅名称2','http://localhost:8080/ssm25385/upload/yingtingxinxi_yingtingfengmian2.jpg','影厅位置2',2,'详细介绍2',2,2,2),(63,'2021-04-14 15:37:00','影厅名称3','http://localhost:8080/ssm25385/upload/yingtingxinxi_yingtingfengmian3.jpg','影厅位置3',3,'详细介绍3',3,3,3),(64,'2021-04-14 15:37:00','影厅名称4','http://localhost:8080/ssm25385/upload/yingtingxinxi_yingtingfengmian4.jpg','影厅位置4',4,'详细介绍4',4,4,4),(65,'2021-04-14 15:37:00','影厅名称5','http://localhost:8080/ssm25385/upload/yingtingxinxi_yingtingfengmian5.jpg','影厅位置5',5,'详细介绍5',5,5,5),(66,'2021-04-14 15:37:00','影厅名称6','http://localhost:8080/ssm25385/upload/yingtingxinxi_yingtingfengmian6.jpg','影厅位置6',6,'详细介绍6',6,6,6);
/*!40000 ALTER TABLE `yingtingxinxi` ENABLE KEYS */;
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
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxiyouxiang` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-14 15:37:00','用户1','123456','姓名1','男','440300199101010001','13823888881','773890001@qq.com','http://localhost:8080/ssm25385/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-14 15:37:00','用户2','123456','姓名2','男','440300199202020002','13823888882','773890002@qq.com','http://localhost:8080/ssm25385/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-14 15:37:00','用户3','123456','姓名3','男','440300199303030003','13823888883','773890003@qq.com','http://localhost:8080/ssm25385/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-14 15:37:00','用户4','123456','姓名4','男','440300199404040004','13823888884','773890004@qq.com','http://localhost:8080/ssm25385/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-14 15:37:00','用户5','123456','姓名5','男','440300199505050005','13823888885','773890005@qq.com','http://localhost:8080/ssm25385/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-14 15:37:00','用户6','123456','姓名6','男','440300199606060006','13823888886','773890006@qq.com','http://localhost:8080/ssm25385/upload/yonghu_zhaopian6.jpg');
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

-- Dump completed on 2021-04-18 14:07:54
