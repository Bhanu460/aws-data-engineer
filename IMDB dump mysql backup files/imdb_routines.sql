CREATE DATABASE  IF NOT EXISTS `imdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `imdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 3.80.167.225    Database: imdb
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `movies1`
--

DROP TABLE IF EXISTS `movies1`;
/*!50001 DROP VIEW IF EXISTS `movies1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movies1` AS SELECT 
 1 AS `tconst`,
 1 AS `ordering`,
 1 AS `nconst`,
 1 AS `category`,
 1 AS `job`,
 1 AS `characters`,
 1 AS `titleType`,
 1 AS `primaryTitle`,
 1 AS `originalTitle`,
 1 AS `isAdult`,
 1 AS `startYear`,
 1 AS `endYear`,
 1 AS `runtimeMinutes`,
 1 AS `genres`,
 1 AS `primaryName`,
 1 AS `birthYear`,
 1 AS `deathYear`,
 1 AS `primaryProfession`,
 1 AS `directors`,
 1 AS `writers`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!50001 DROP VIEW IF EXISTS `movies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movies` AS SELECT 
 1 AS `tconst`,
 1 AS `ordering`,
 1 AS `nconst`,
 1 AS `category`,
 1 AS `job`,
 1 AS `characters`,
 1 AS `titleType`,
 1 AS `primaryTitle`,
 1 AS `originalTitle`,
 1 AS `isAdult`,
 1 AS `startYear`,
 1 AS `endYear`,
 1 AS `runtimeMinutes`,
 1 AS `genres`,
 1 AS `primaryName`,
 1 AS `birthYear`,
 1 AS `deathYear`,
 1 AS `primaryProfession`,
 1 AS `directors`,
 1 AS `writers`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `movies1`
--

/*!50001 DROP VIEW IF EXISTS `movies1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `movies1` AS select `tp`.`tconst` AS `tconst`,`tp`.`ordering` AS `ordering`,`tp`.`nconst` AS `nconst`,`tp`.`category` AS `category`,`tp`.`job` AS `job`,`tp`.`characters` AS `characters`,`tb`.`titleType` AS `titleType`,`tb`.`primaryTitle` AS `primaryTitle`,`tb`.`originalTitle` AS `originalTitle`,`tb`.`isAdult` AS `isAdult`,`tb`.`startYear` AS `startYear`,`tb`.`endYear` AS `endYear`,`tb`.`runtimeMinutes` AS `runtimeMinutes`,`tb`.`genres` AS `genres`,`nm`.`primaryName` AS `primaryName`,`nm`.`birthYear` AS `birthYear`,`nm`.`deathYear` AS `deathYear`,`nm`.`primaryProfession` AS `primaryProfession`,`tc`.`directors` AS `directors`,`tc`.`writers` AS `writers` from (((`title_principals` `tp` left join `title_basics` `tb` on((`tp`.`tconst` = `tb`.`tconst`))) left join `name_basics` `nm` on((`tp`.`nconst` = `nm`.`nconst`))) left join `title_crew` `tc` on((`tc`.`tconst` = `tp`.`tconst`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movies`
--

/*!50001 DROP VIEW IF EXISTS `movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movies` AS select `tp`.`tconst` AS `tconst`,`tp`.`ordering` AS `ordering`,`tp`.`nconst` AS `nconst`,`tp`.`category` AS `category`,`tp`.`job` AS `job`,`tp`.`characters` AS `characters`,`tb`.`titleType` AS `titleType`,`tb`.`primaryTitle` AS `primaryTitle`,`tb`.`originalTitle` AS `originalTitle`,`tb`.`isAdult` AS `isAdult`,`tb`.`startYear` AS `startYear`,`tb`.`endYear` AS `endYear`,`tb`.`runtimeMinutes` AS `runtimeMinutes`,`tb`.`genres` AS `genres`,`nm`.`primaryName` AS `primaryName`,`nm`.`birthYear` AS `birthYear`,`nm`.`deathYear` AS `deathYear`,`nm`.`primaryProfession` AS `primaryProfession`,`tc`.`directors` AS `directors`,`tc`.`writers` AS `writers` from (((`title_principals` `tp` left join `title_basics` `tb` on((`tp`.`tconst` = `tb`.`tconst`))) left join `name_basics` `nm` on((`tp`.`nconst` = `nm`.`nconst`))) left join `title_crew` `tc` on((`tc`.`tconst` = `tp`.`tconst`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 19:02:28
