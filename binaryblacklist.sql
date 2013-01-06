-- MySQL dump 10.14  Distrib 5.5.28a-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: newznab
-- ------------------------------------------------------
-- Server version	5.5.28a-MariaDB-a1~precise

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
-- Table structure for table `binaryblacklist`
--

DROP TABLE IF EXISTS `binaryblacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binaryblacklist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regex` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `msgcol` int(11) unsigned NOT NULL DEFAULT '1',
  `optype` int(11) unsigned NOT NULL DEFAULT '1',
  `status` int(11) unsigned NOT NULL DEFAULT '1',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=100035 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binaryblacklist`
--

LOCK TABLES `binaryblacklist` WRITE;
/*!40000 ALTER TABLE `binaryblacklist` DISABLE KEYS */;
INSERT INTO `binaryblacklist` VALUES (1,'alt.binaries.boneless','usenet-4all|u4all|usenet4all',1,2,0,'only allow u4all posts in boneless'),(2,'alt.binaries.*','german|danish|spanish|flemish|dutch|swedish|swesub|deutsch|nl\\.?sub|norwegian|\\.ita\\.',1,1,1,'do not index non-english language binaries'),(100001,'alt.binaries.*','german|danish|spanish|flemish|dutch|swedish|swesub|deutsch|nl\\.?sub|norwegian|\\.ita\\.',3,1,1,'do not index non-english language binaries'),(100007,'alt.binaries.cores','xxx',3,1,0,'Removes XXX.'),(100008,'alt.binaries.cores','xxx',1,1,0,'Removes XXX.'),(100003,'alt.binaries.ghosts','xxx',3,1,0,'removes xxx'),(100004,'alt.binaries.ghosts','xxx',1,1,0,'removes xxx'),(100005,'alt.binaries.mom','xxx',3,1,0,'Removes XXX.'),(100006,'alt.binaries.mom','xxx',1,1,0,'Removes XXX.'),(100010,'alt.binaries.multimedia','nosendemails@me.com|The Phantom|xslidian@hmlt|tim96|GeorgBaer|knt',2,1,1,'Deletes crap'),(100030,'alt.binaries.movies.xvid','theknife',2,1,0,NULL),(100020,'alt.binaries.hdtv.x264','Turkish|CyTSuNee|NZBRoyalty|German',1,1,0,NULL),(100015,'alt.binaries.*','^[^.^ ]{10,20}$',1,1,1,'Filters out all hashes between 10 and 20 characters, that haven\'t got a space, period or caret in them, a negated character class that starts with a ^, doesn\'t have a ^ before every character.'),(100017,'alt.binaries.tv','6UL85|XA7MY|36CLX|Y642D',1,1,1,'Removes crap.'),(100027,'alt.binaries.*','TheMaker|gilf|lordsofusenet|klaus|ihate|aart|my2cents|ISNOGOOD|Captain Jack',2,1,0,'VIRUS POSTERS'),(100016,'alt.binaries.*','^[a-z0-9]{20}',1,1,1,'Removes crap.'),(100019,'alt.binaries.hdtv.x264','zed|ich',2,1,1,'Removes crap.'),(100022,'alt.binaries.*','TrollHD|Olympics|Serbian|NASCAR|damike99',1,1,0,NULL),(100023,'alt.binaries.*','NovaRip',1,1,0,NULL),(100024,'alt.binaries.*','NoTHing|9NoTHing|EveryFinG',1,1,0,NULL),(100025,'alt.binaries.*','seizoen|nomytnopyht',1,1,0,NULL),(100026,'alt.binaries.*','CowboyUp26|gr4ndstre4m|CowboyUp2012|trein',1,1,0,NULL),(100028,'alt.binaries.*','CPP-Gebruiker',2,1,0,'foreign'),(100029,'alt.binaries.hdtv','\\[Password\\]',1,1,0,''),(100011,'alt.binaries.multimedia','FLEMISH|iRLS\\\\HYBRiS|FR|NORWEGIAN|Liga|DUTCH|EUFA|Footy|GERMAN|NRL|Snoballkrigen!ATKGalleria|RealCo|[MP4SUX]|',1,1,0,NULL),(100031,'alt.binaries.teevee','GERMAN|german',1,1,0,NULL),(100018,'alt.binaries.tv','german|danish|flemish|dutch|swedish|swesub|deutch|nl\\\\.?sub|norwegian|DEFA|Knochen',1,1,0,NULL),(100021,'alt.binaries.*','NoTHing',2,1,0,NULL),(100014,'alt.binaries.*','^[a-z0-9]{1,80}([0-9-]+$|$)',1,1,1,'Hashed Releases.'),(100032,'alt.binaries.*','AutoRarPar\\d',1,1,0,'Removes releases with AutoRarPar\\d in the name.'),(100033,'alt.binaries.*','(^|[.\\/ \\-]+)(sie|seit|ihn|ihm|haben|besitzen|sein|kriegen|nehmen|welche|jenes|von|auf|gegen|nach|das|sein|der|und|fuer|ersten|leicht|meinem|zum|aus|dem|blitzlicht|alle|grosse|zed|ich|sed|blitzen)([.\\/ \\-]+|$)',1,1,0,'Removes many german releases.'),(100034,'alt.binaries.*','[aeiouy]{4,80}',1,1,0,'Removes multiple vowels strung together. See: http://blog.phile.biz/post/39106364519/useful-blacklist-rules');
/*!40000 ALTER TABLE `binaryblacklist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-06  1:03:21
