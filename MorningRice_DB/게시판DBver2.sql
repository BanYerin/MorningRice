CREATE DATABASE  IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET euckr COLLATE euckr_bin */;
USE `board`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_pw` varchar(50) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL,
  `board_title` varchar(50) CHARACTER SET euckr COLLATE euckr_bin NOT NULL,
  `board_content` text CHARACTER SET euckr COLLATE euckr_bin NOT NULL,
  `board_user` varchar(50) CHARACTER SET euckr COLLATE euckr_bin NOT NULL,
  `board_date` date NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (2,'1324','주문이 편해서 좋네요ㅎㅎ','회원가입, 로그인없이 바로 주문가능해서 편하고 좋네요ㅎㅎ','네오','2019-05-11'),(4,'1111','맛있네요ㅎㅎ','생각보다 맛있네요 추천합니다ㅎㅎ','어피치','2019-05-11'),(7,'','첫 번째 글이네요ㅋㅋ','첫 번째 글입니다ㅋㅋ','네오','2019-05-13');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_pw` varchar(20) NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'communitymanager');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `new_table` (
  `username` varchar(20) COLLATE euckr_bin DEFAULT NULL,
  `password` varchar(30) COLLATE euckr_bin DEFAULT NULL,
  `tel` varchar(50) COLLATE euckr_bin DEFAULT NULL,
  `menu` varchar(20) COLLATE euckr_bin DEFAULT NULL,
  `date` varchar(50) COLLATE euckr_bin DEFAULT NULL,
  `time` varchar(20) COLLATE euckr_bin DEFAULT NULL,
  `message` varchar(100) COLLATE euckr_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_board`
--

DROP TABLE IF EXISTS `qa_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qa_board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_pw` varchar(50) COLLATE euckr_bin NOT NULL,
  `board_title` varchar(50) COLLATE euckr_bin NOT NULL,
  `board_content` text COLLATE euckr_bin NOT NULL,
  `board_user` varchar(50) COLLATE euckr_bin NOT NULL,
  `board_date` date NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=euckr COLLATE=euckr_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_board`
--

LOCK TABLES `qa_board` WRITE;
/*!40000 ALTER TABLE `qa_board` DISABLE KEYS */;
INSERT INTO `qa_board` VALUES (1,'apeach','커스텀 메뉴 가능해요?','혹시 없는 메뉴도 주문제작 가능한가요?ㅎㅎ','어피치','2019-05-30'),(2,'hello','영업시간 연장','너무 맛있어서 그러는데 저녁때까지 영업시간 연장해주시면 안될까요?ㅠㅠ','헬로','2019-05-30'),(3,'neo','단체주문 가능한가요?','단체주문으로 50개 주문하고싶은데 가능한가요?ㅎㅎ','네오','2019-05-30'),(4,'aa','a','as','a','2019-06-01');
/*!40000 ALTER TABLE `qa_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_board`
--

DROP TABLE IF EXISTS `review_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review_board` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_pw` varchar(50) COLLATE euckr_bin NOT NULL,
  `board_title` varchar(50) COLLATE euckr_bin NOT NULL,
  `board_content` text COLLATE euckr_bin NOT NULL,
  `board_user` varchar(50) COLLATE euckr_bin NOT NULL,
  `board_date` date NOT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=euckr COLLATE=euckr_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_board`
--

LOCK TABLES `review_board` WRITE;
/*!40000 ALTER TABLE `review_board` DISABLE KEYS */;
INSERT INTO `review_board` VALUES (1,'124','첫 번째 글이네요ㅋㅋ','첫번째 글이네요 ㅎㅎ 맛있는 음식 감사합니다.','네오','2019-05-18'),(2,'djvlcl','주문이 간편해서 좋아요','회원가입, 로그인 없이 간편하게 주문할 수 있어서 좋네요 ! ㅎㅎ\r\n','어피치','2019-05-18'),(3,'kakao','위치 충북대 아니예요?','모닝라이스 대체 어디에 있음? 지도 충북대인데?','카카오','2019-05-18'),(4,'moji','맛 = 꿀?','제가 벌집에서 꿀을 퍼먹어봤는데 마치 그 맛!','무지무지','2019-05-18'),(5,'frodo','따르릉~ 여보세요???','글 수정하고가요~','프로도','2019-05-18'),(6,'friends','양이 조금...','저만 그런가 모르겠는데 전보다 양이 조금 줄어든 것 같아요.. 초심 잃지 않으셨으면 좋겠어요ㅜ 그래도 맛은 꿀이에요♥','프렌즈','2019-05-18');
/*!40000 ALTER TABLE `review_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-02  1:37:29
