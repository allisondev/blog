-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: allison_blog
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Germantown, a Hidden Gem',1,'Even amongst local Philadelphians, not that many people know about Germantown, a historic neighborhood in Northwest Philadelphia. I\'ve been living in Germantown for a year and a half now, and I love the neighborhood. The area dates back to colonial times and is even the home of the Germantown White House, the oldest surviving presidential residence for George Washington. Aside from the rich history, the neighborhood also offers wonderful shops and restaurants, the Wissahickon Park for nature lovers (and who doesn\'t love nature?), as well as a vibrant community of friendly neighbors. Pay Germantown a visit if you get a chance!'),(2,'B. Free',2,'One of the must visit places to which I always bring my out-of-town friends is the B. Free Franklin post office. The first post office of the United States is right here in Philadelphia, on the busy Market Street in Old City. It is still a functioning post office to this day, and free to walk in and mail a letter which will be stamped by the special B. Free Franklin stamp. Right next to the main room of the post office is the printing press shop, where you can learn all about the printing press from printers dressed in colonial attire. I have not yet visit the newly opened Ben Franklin museum, right behind the post office, so I can\'t wait to go back again soon!'),(3,'Mutter Museum',1,'I recently visited the Mutter Museum, which is exactly as its brochure described it: Disturbingly Informative. The museum houses a fascinating collection of physiological specimens, many of which are of a rare disease or abnormality, aiding researchers attempts to study and learn more about the human body. The museum is very educational, but might not be for everybody.'),(4,'Wit Wiz Plz',3,'I\'m not a cheesesteak snob, but I do like trying the different places that all claim to serve the best cheesesteak in town. So far, I\'ve tried the tourist-popular Pat\'s and Geno\'s, the local-beloved Jim\'s Famous on South Street, as well as Chubbys and Alessandero\'s in Roxborough near Manayunk. Which other ones should I try?'),(5,'I *Giant Heart* Philly',2,'Literally. This weekend I went to the Franklin Institute for a day of educational fun with my family. Going through the Giant Heart and the new Brain exhibit is as much fun for an adult as it would be for a little kid. Everyone had a blast! You\'re never too old for the Franklin Institute.');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) DEFAULT NULL,
  `author_email_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Allison Law','hsallisonlaw@gmail.com'),(2,'Jane Smith','jane.smith@allisonlawsblog.com'),(3,'John Doe','john.doe@allisonlawsblog.com');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-28 13:01:06
