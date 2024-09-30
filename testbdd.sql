-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dbforum
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240911125857','2024-09-11 12:59:09',20687);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `titre` varchar(50) NOT NULL,
  `date_poste` datetime NOT NULL,
  `contenu` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B6BD307FA76ED395` (`user_id`),
  KEY `IDX_B6BD307F727ACA70` (`parent_id`),
  CONSTRAINT `FK_B6BD307F727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `message` (`id`),
  CONSTRAINT `FK_B6BD307FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,15,NULL,'Velit doloremque magni.','2024-04-21 14:18:47','Nam eaque cum id. Explicabo dolor fuga magni quia est amet. Earum aut quia hic.'),(2,11,NULL,'Quia modi itaque.','2024-02-22 02:38:28','Repellat sint sequi illum nulla rem ut beatae. Optio cupiditate cupiditate voluptatibus. Eveniet aut et maiores. Consectetur quibusdam velit aperiam non libero laborum. Quas ut pariatur earum alias eligendi.'),(3,11,NULL,'Quis voluptates accusantium.','2024-07-21 22:06:47','Eos suscipit minima inventore voluptates consectetur quibusdam. Omnis nihil ipsam aliquam est dignissimos nulla optio. Neque reiciendis qui temporibus excepturi amet provident et sit. Et et nihil iusto quaerat. Quos explicabo totam laudantium aut quaerat assumenda animi.'),(4,19,NULL,'Omnis maiores sed.','2024-05-28 00:01:09','Debitis perspiciatis iste dicta ut et cum non. Et velit enim in voluptates consectetur maiores assumenda. Reprehenderit quis sit non maiores. Eaque praesentium eum sapiente explicabo consequatur et quo.'),(5,13,NULL,'Unde quis fugiat.','2024-07-31 13:25:42','Rerum aut molestias illo odit excepturi. Perferendis molestiae doloribus pariatur neque iure. Ut sunt rerum ea.'),(6,13,NULL,'Voluptatem officiis ullam et.','2024-08-06 19:21:13','Non dicta neque consequatur blanditiis fugiat qui. Rerum expedita impedit impedit doloremque quia inventore tempora. Velit est quas saepe. Occaecati aliquid qui facere possimus quisquam. Et perferendis nesciunt itaque labore.'),(7,20,NULL,'Sit aliquam ratione delectus.','2024-07-21 17:04:10','Sed earum dolorem voluptatem et laudantium animi omnis. Qui voluptatem aut vero totam sint et possimus. Iusto magnam earum laborum quas.'),(8,17,NULL,'Qui nostrum iusto.','2024-03-31 05:20:56','Beatae maxime voluptates inventore ut. Hic autem atque voluptas ipsum eaque provident ipsam. Iste a doloremque ut officia molestias. Aut voluptates deleniti eveniet eos.'),(9,17,NULL,'Eos quia est.','2024-05-03 14:15:15','Ea quia quos libero quo. Rerum beatae qui quis voluptatem consequatur voluptatem et. Nostrum consectetur praesentium atque rerum.'),(10,11,NULL,'Maiores magnam eum ipsam.','2024-03-14 22:07:07','Suscipit eos voluptatibus fugit magnam consectetur. Magni blanditiis quia explicabo praesentium expedita vel. Vero autem magni labore similique quia ut autem. Quidem est officiis non ipsa est consequatur quae. At et odio facilis tempora.'),(11,15,10,'Eum dolor quia ea.','2024-01-04 21:21:58','Esse dolor ex voluptatem et modi nostrum numquam et. Earum voluptates corporis molestias quo ea esse. Sunt excepturi neque inventore debitis numquam suscipit voluptas. Dolorem nam quas eius deserunt.'),(12,12,8,'Fuga ad non.','2024-08-06 14:10:09','Vitae distinctio exercitationem velit sed. Ut aliquam aliquid quis nam voluptas impedit quo ut. Odit minus non et ipsa est. Illum voluptatem nesciunt et eveniet et debitis.'),(13,17,7,'Aspernatur sint porro hic.','2024-09-01 06:16:14','Quidem maxime incidunt ut et voluptatem commodi aliquam. Id culpa debitis molestias fuga porro perspiciatis nesciunt. Excepturi aperiam repudiandae qui quia quo quasi optio. Sint dolorum laborum ut aut.'),(14,20,4,'Quia maiores.','2024-08-05 04:28:20','Nisi sit est expedita culpa. Tempore nemo corrupti eum nulla molestias maxime enim minus. Animi aut sapiente atque harum expedita temporibus et. Voluptatum voluptas sunt quae occaecati rem.'),(15,11,10,'Eum eos iusto aliquid.','2024-07-18 07:29:42','Tempora dicta cumque dolores quod eum nisi. Quia veniam velit sequi eum. Maxime debitis blanditiis itaque est id in adipisci. Dicta maiores dolorem voluptate vel.'),(16,12,2,'Consequuntur ipsam sed mollitia.','2024-04-08 07:26:07','Eos excepturi perferendis sunt culpa rerum in. Quia cumque repellat quibusdam quam. Ipsam et repudiandae non qui voluptatem repudiandae. Saepe odio soluta odio excepturi voluptas amet.'),(17,17,10,'Aut dolores itaque.','2024-05-04 08:45:53','Et reprehenderit magni est vero omnis. Non esse quae quasi ipsam maiores sunt est consequuntur. Est et quasi a unde rem.'),(18,15,10,'Consequatur voluptas minus.','2024-06-03 11:17:50','Qui possimus facere illum asperiores. Atque autem occaecati voluptatem facilis aut fugiat a. Tempore perferendis magni nemo dolore inventore sit. Cumque praesentium provident rerum ab quod.'),(19,12,10,'Consequatur perspiciatis et saepe.','2024-02-27 07:04:01','Minus soluta dicta iste nostrum. Necessitatibus eos nesciunt ad libero. Delectus ut omnis enim voluptatem. Est quo et quibusdam facere voluptatem maiores fugit.'),(20,12,2,'Qui illum voluptatem.','2024-02-08 16:10:02','Enim necessitatibus voluptate iure omnis rem. Praesentium eius vel ut cum qui eum. Nesciunt dicta exercitationem mollitia excepturi quia vero.'),(21,11,7,'Facere voluptatibus et.','2024-08-22 23:21:34','Et quas saepe consectetur et cum et. Eaque iusto nemo eaque ipsa qui enim ut. Rem nulla itaque molestiae.'),(22,17,3,'Et consequatur earum.','2024-04-18 11:11:26','Accusamus minima accusantium odio velit esse ut consequuntur. Vero eos nam laboriosam veritatis sint tempore. Repellat laudantium quos ea rem aperiam fuga quo. Fuga laudantium nulla aspernatur inventore qui.'),(23,20,5,'Assumenda tenetur maxime.','2024-03-20 13:54:40','Et iure ullam eum aliquid est. Dolore ad et nulla ad soluta quam odit.'),(24,12,8,'Ut minima eum.','2024-07-10 22:50:09','Necessitatibus eos ut sunt aspernatur sit. Enim vel suscipit tenetur sunt. Ex porro omnis harum ea. Adipisci consequatur id iure repudiandae et quasi. Et et laudantium et repellat adipisci nam est.'),(25,12,3,'Nostrum deleniti iusto reprehenderit.','2024-04-01 19:40:13','Fugiat blanditiis iste quo vitae et non quia aut. Maxime est consequatur officiis et labore voluptas eos. Et animi in nihil explicabo. Velit est harum sapiente eligendi et aliquam.'),(26,19,4,'Quidem accusamus.','2024-07-17 16:29:08','Fugiat fugit voluptate ut quaerat. Blanditiis saepe inventore itaque ex. Qui suscipit repellat explicabo veritatis.'),(27,14,7,'Vero enim qui dolor.','2024-05-02 10:12:37','Vel animi eius iure nihil omnis possimus. Ratione repellat quidem et itaque ut molestias. Quia velit est voluptas ut. Culpa sunt in illo ratione mollitia ratione consequatur.'),(28,14,1,'Vel dolorem deleniti.','2024-07-29 06:59:07','Est eos in sunt rerum at vitae officia. Maiores at ut ut recusandae.'),(29,19,3,'Optio quia quisquam eos.','2024-08-10 13:45:55','Possimus vitae consequuntur ut minima excepturi debitis quaerat. Omnis odio deserunt tempore esse. Dicta inventore aliquid facilis sapiente.'),(30,14,8,'Maxime aliquam consectetur.','2024-03-01 03:16:06','Esse temporibus perspiciatis error non. Inventore porro veniam ex laborum voluptatem fugiat et blanditiis. Aliquam provident consectetur optio quo facilis.');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date_inscription` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'jacqueline.charrier@sfr.fr','[]','$2y$13$aG7j27TFcbbhsN7uvspziOU/79VHcHlyC9xXdwa6Nhej2l4t9Gt4i','Charrier','Jacqueline','2024-05-24 08:28:54'),(12,'charles.loiseau@dbmail.com','[]','$2y$13$OpqErJRRnwqBs6mySJ43GeyJ92YPTCR/2PsO3Eei4GpOz.L3Y3kpG','Loiseau','Charles','2024-05-09 07:43:07'),(13,'théodore.legros@live.com','[]','$2y$13$MxpDLKlTMugnly0HbcT1geMzMcaaWzGX2jPOaUJJV4r.O4yB4Zjnu','Legros','Théodore','2024-04-30 00:00:15'),(14,'michelle.barbe@free.fr','[]','$2y$13$2GVTVoHbd20T3AEfFhkn0Oo8rXrc9TJfQANe.EeVRPBZrjWNDrzJC','Barbe','Michelle','2024-01-15 15:54:27'),(15,'henriette.fournier@tele2.fr','[]','$2y$13$R/Gi0MhF.O0kIzvxlRdrt.t6etHvqgsg7U7ez9xdcoURamJWywpj2','Fournier','Henriette','2024-01-22 21:27:29'),(16,'juliette.pereira@yahoo.fr','[]','$2y$13$MkbZS2oQQ5dhIMSD.seAzeuyuUOFM/bixcVCksTMjhwirQ0sU7oEu','Pereira','Juliette','2024-07-16 19:25:43'),(17,'simone.ramos@sfr.fr','[]','$2y$13$TYb4cK71iG29uHCq7iLmw.BNO17IDs9XCEF49vLAzOIsQwJk2SaXW','Ramos','Simone','2024-02-21 04:39:44'),(18,'david.maury@club-internet.fr','[]','$2y$13$.x9p5RRC0rUhj7onYCHQcubvxCVGFOvQZOwrPl6AH83kv2s7uixmq','Maury','David','2024-05-30 17:59:18'),(19,'adrienne.garnier@laposte.net','[]','$2y$13$IT7DK0oM/thoOm8oYI9do.cgKRA2DvihoHLcB7zW92NOmxMA2Pu/e','Garnier','Adrienne','2024-06-18 20:20:30'),(20,'valentine.thierry@dbmail.com','[]','$2y$13$htyUkZr2zzIbAt.MMKIdHO2xmZgVlxodxH.NEXNvGh0uayafYN3qK','Thierry','Valentine','2024-02-12 01:23:38');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-30 11:00:00
