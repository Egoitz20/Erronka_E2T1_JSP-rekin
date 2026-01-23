-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: e2t1dbaplikazioa
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Temporary view structure for view `bista_langile_informazioa`
--

DROP TABLE IF EXISTS `bista_langile_informazioa`;
/*!50001 DROP VIEW IF EXISTS `bista_langile_informazioa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bista_langile_informazioa` AS SELECT 
 1 AS `ID`,
 1 AS `IZENA`,
 1 AS `ABIZENA`,
 1 AS `EMAILA`,
 1 AS `TELEFONOA`,
 1 AS `KONTRATAZIO_DATA`,
 1 AS `ID_NAGUSI`,
 1 AS `NAGUSI_IZENA`,
 1 AS `NAGUSI_ABIZENA`,
 1 AS `ID_LANPOSTU`,
 1 AS `LANPOSTU_DESK`,
 1 AS `ERABILTZAILEA`,
 1 AS `PASAHITZA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `produktu_info`
--

DROP TABLE IF EXISTS `produktu_info`;
/*!50001 DROP VIEW IF EXISTS `produktu_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produktu_info` AS SELECT 
 1 AS `ID`,
 1 AS `PRODUKTU_IZENA`,
 1 AS `DESKRIBAPENA`,
 1 AS `BALIOA`,
 1 AS `SALNEURRIA`,
 1 AS `KATEGORIA_IZENA`,
 1 AS `KOPURUA`,
 1 AS `ESKAERA_DATA`,
 1 AS `ESKAERA_EGOERA`,
 1 AS `BEZERO_IZENA`,
 1 AS `BEZERO_EMAILA`,
 1 AS `SALTZAILE_IZENA`,
 1 AS `SALTZAILEA`,
 1 AS `LANGILE_EMAILA`,
 1 AS `PRODUKTU_KOPURUA`,
 1 AS `BILTEGI_IZENA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `langile_info`
--

DROP TABLE IF EXISTS `langile_info`;
/*!50001 DROP VIEW IF EXISTS `langile_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `langile_info` AS SELECT 
 1 AS `ID`,
 1 AS `IZEN_ABIZENAK`,
 1 AS `ERABILTZAILEA`,
 1 AS `PASAHITZA`,
 1 AS `EMAILA`,
 1 AS `TELEFONOA`,
 1 AS `KONTRATAZIO_DATA`,
 1 AS `ID_NAGUSI`,
 1 AS `SOLDATA`,
 1 AS `LANPOSTUA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bezero_info`
--

DROP TABLE IF EXISTS `bezero_info`;
/*!50001 DROP VIEW IF EXISTS `bezero_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bezero_info` AS SELECT 
 1 AS `ID`,
 1 AS `IZENA`,
 1 AS `HELBIDEA`,
 1 AS `EMAILA`,
 1 AS `ZENBAKIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `biltegi_info`
--

DROP TABLE IF EXISTS `biltegi_info`;
/*!50001 DROP VIEW IF EXISTS `biltegi_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `biltegi_info` AS SELECT 
 1 AS `ID`,
 1 AS `IZENA`,
 1 AS `HELBIDEA`,
 1 AS `POSTAKODEA`,
 1 AS `UDALERRIA`,
 1 AS `PROBINTZIA`,
 1 AS `ID_HERRIALDE`,
 1 AS `HERRIALDE`,
 1 AS `KONTINENTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `erabiltzaile_info`
--

DROP TABLE IF EXISTS `erabiltzaile_info`;
/*!50001 DROP VIEW IF EXISTS `erabiltzaile_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `erabiltzaile_info` AS SELECT 
 1 AS `ID`,
 1 AS `IZENA`,
 1 AS `PASAHITZA`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `bista_langile_informazioa`
--

/*!50001 DROP VIEW IF EXISTS `bista_langile_informazioa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bista_langile_informazioa` AS select `langile`.`ID` AS `ID`,`langile`.`IZENA` AS `IZENA`,`langile`.`ABIZENA` AS `ABIZENA`,`langile`.`EMAILA` AS `EMAILA`,`langile`.`TELEFONOA` AS `TELEFONOA`,`langile`.`KONTRATAZIO_DATA` AS `KONTRATAZIO_DATA`,`langile`.`ID_NAGUSI` AS `ID_NAGUSI`,`n`.`IZENA` AS `NAGUSI_IZENA`,`n`.`ABIZENA` AS `NAGUSI_ABIZENA`,`bulegari`.`ID_LANPOSTU` AS `ID_LANPOSTU`,`lanpostu`.`DESKRIBAPENA` AS `LANPOSTU_DESK`,`saltzaile`.`ERABILTZAILEA` AS `ERABILTZAILEA`,`saltzaile`.`PASAHITZA` AS `PASAHITZA` from ((((`langile` left join `langile` `n` on((`langile`.`ID_NAGUSI` = `n`.`ID`))) left join `bulegari` on((`langile`.`ID` = `bulegari`.`ID`))) left join `lanpostu` on((`bulegari`.`ID_LANPOSTU` = `lanpostu`.`ID`))) left join `saltzaile` on((`langile`.`ID` = `saltzaile`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produktu_info`
--

/*!50001 DROP VIEW IF EXISTS `produktu_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produktu_info` AS select distinct `produktu`.`ID` AS `ID`,`produktu`.`IZENA` AS `PRODUKTU_IZENA`,`produktu`.`DESKRIBAPENA` AS `DESKRIBAPENA`,`produktu`.`BALIOA` AS `BALIOA`,`eskari_lerro`.`SALNEURRIA` AS `SALNEURRIA`,`kategoria`.`IZENA` AS `KATEGORIA_IZENA`,`eskari_lerro`.`KOPURUA` AS `KOPURUA`,`eskari`.`ESKAERA_DATA` AS `ESKAERA_DATA`,`eskari_egoera`.`DESKRIBAPENA` AS `ESKAERA_EGOERA`,concat_ws(' ',`bezero`.`IZENA`,`bezero`.`ABIZENA`) AS `BEZERO_IZENA`,`bezero`.`EMAILA` AS `BEZERO_EMAILA`,concat_ws(' ',`langile`.`IZENA`,`langile`.`ABIZENA`) AS `SALTZAILE_IZENA`,`saltzaile`.`ERABILTZAILEA` AS `SALTZAILEA`,`langile`.`EMAILA` AS `LANGILE_EMAILA`,`inbentario`.`KOPURUA` AS `PRODUKTU_KOPURUA`,`biltegi`.`IZENA` AS `BILTEGI_IZENA` from (((((((((`produktu` join `kategoria` on((`produktu`.`ID_KATEGORIA` = `kategoria`.`ID`))) join `eskari_lerro` on((`produktu`.`ID` = `eskari_lerro`.`ID_PRODUKTU`))) join `eskari` on((`eskari_lerro`.`ID_ESKARI` = `eskari`.`ID`))) join `eskari_egoera` on((`eskari`.`ID_EGOERA` = `eskari_egoera`.`ID`))) join `bezero` on((`eskari`.`ID_BEZERO` = `bezero`.`ID`))) join `saltzaile` on((`eskari`.`ID_SALTZAILE` = `saltzaile`.`ID`))) join `langile` on((`saltzaile`.`ID` = `langile`.`ID`))) join `inbentario` on((`produktu`.`ID` = `inbentario`.`ID_PRODUKTU`))) join `biltegi` on((`inbentario`.`ID_BILTEGI` = `biltegi`.`ID`))) order by `produktu`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `langile_info`
--

/*!50001 DROP VIEW IF EXISTS `langile_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `langile_info` AS select `langile`.`ID` AS `ID`,concat_ws(' ',`langile`.`IZENA`,`langile`.`ABIZENA`) AS `IZEN_ABIZENAK`,`saltzaile`.`ERABILTZAILEA` AS `ERABILTZAILEA`,`saltzaile`.`PASAHITZA` AS `PASAHITZA`,`langile`.`EMAILA` AS `EMAILA`,`langile`.`TELEFONOA` AS `TELEFONOA`,`langile`.`KONTRATAZIO_DATA` AS `KONTRATAZIO_DATA`,`langile`.`ID_NAGUSI` AS `ID_NAGUSI`,`langile`.`SOLDATA` AS `SOLDATA`,`lanpostu`.`DESKRIBAPENA` AS `LANPOSTUA` from (((`langile` left join `saltzaile` on((`langile`.`ID` = `saltzaile`.`ID`))) left join `bulegari` on((`langile`.`ID` = `bulegari`.`ID`))) left join `lanpostu` on((`bulegari`.`ID_LANPOSTU` = `lanpostu`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bezero_info`
--

/*!50001 DROP VIEW IF EXISTS `bezero_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bezero_info` AS select `bezero`.`ID` AS `ID`,concat_ws(' ',`bezero`.`IZENA`,`bezero`.`ABIZENA`) AS `IZENA`,`bezero`.`HELBIDEA` AS `HELBIDEA`,`bezero`.`EMAILA` AS `EMAILA`,`bezero_telefono`.`ZENBAKIA` AS `ZENBAKIA` from (`bezero` join `bezero_telefono` on((`bezero`.`ID` = `bezero_telefono`.`ID_BEZERO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `biltegi_info`
--

/*!50001 DROP VIEW IF EXISTS `biltegi_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `biltegi_info` AS select `biltegi`.`ID` AS `ID`,`biltegi`.`IZENA` AS `IZENA`,`kokaleku`.`HELBIDEA` AS `HELBIDEA`,`kokaleku`.`POSTAKODEA` AS `POSTAKODEA`,`kokaleku`.`UDALERRIA` AS `UDALERRIA`,`kokaleku`.`PROBINTZIA` AS `PROBINTZIA`,`kokaleku`.`ID_HERRIALDE` AS `ID_HERRIALDE`,`herrialde`.`IZENA` AS `HERRIALDE`,`kontinente`.`IZENA` AS `KONTINENTE` from (((`biltegi` join `kokaleku` on((`biltegi`.`ID_KOKALEKU` = `kokaleku`.`ID`))) join `herrialde` on((`kokaleku`.`ID_HERRIALDE` = `herrialde`.`ID`))) join `kontinente` on((`herrialde`.`ID_KONTINENTE` = `kontinente`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `erabiltzaile_info`
--

/*!50001 DROP VIEW IF EXISTS `erabiltzaile_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `erabiltzaile_info` AS select `erabiltzaileak`.`ID` AS `ID`,`erabiltzaileak`.`IZENA` AS `IZENA`,`erabiltzaileak`.`PASAHITZA` AS `PASAHITZA` from `erabiltzaileak` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'e2t1dbaplikazioa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-23 11:48:19
