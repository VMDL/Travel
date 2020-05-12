-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: db_moodtraveling
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

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
-- Table structure for table `SENTIMENT_SCORE_REVIEW`
--

DROP TABLE IF EXISTS `SENTIMENT_SCORE_REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SENTIMENT_SCORE_REVIEW` (
  `ID_SENTIMENT` int NOT NULL,
  `ID_RECENSIONE` int NOT NULL,
  PRIMARY KEY (`ID_RECENSIONE`),
  KEY `FK_ID_SENTIMENT_TRAVEL` (`ID_SENTIMENT`),
  CONSTRAINT `FK_ID_RECENSIONE` FOREIGN KEY (`ID_RECENSIONE`) REFERENCES `RECENSIONE` (`ID_RECENSIONE`) ON DELETE CASCADE,
  CONSTRAINT `FK_ID_SENTIMENT_TRAVEL` FOREIGN KEY (`ID_SENTIMENT`) REFERENCES `SENTIMENT_SCORE` (`ID_SENTIMENT`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SENTIMENT_SCORE_REVIEW`
--

LOCK TABLES `SENTIMENT_SCORE_REVIEW` WRITE;
/*!40000 ALTER TABLE `SENTIMENT_SCORE_REVIEW` DISABLE KEYS */;
INSERT INTO `SENTIMENT_SCORE_REVIEW` VALUES (3,2),(4,3),(5,85),(6,86),(7,87),(8,88),(9,89),(10,90),(11,91),(12,92),(13,93),(14,94),(15,95),(16,96),(17,97),(18,98),(19,99),(20,100),(21,101),(22,102),(23,103),(24,104),(25,105),(26,106),(27,107),(28,108),(29,109),(30,110),(31,111),(32,112),(33,113),(34,114),(35,115),(36,116),(37,117),(38,118),(39,119),(40,120),(41,121),(42,122),(43,123),(44,124),(45,125),(46,126),(47,127),(48,128),(49,129),(50,130),(51,131),(52,132),(53,133),(54,134),(55,135),(56,136),(57,137),(58,138),(59,139),(60,140),(61,141),(62,142),(63,143),(65,144),(66,145),(67,146),(68,147),(69,148),(71,149),(72,150),(73,151),(74,152),(75,153),(77,154),(78,155),(79,156),(80,157),(81,158),(83,159),(84,160),(85,161),(87,162),(88,163),(89,164),(90,165),(91,166),(93,167),(94,168),(95,169),(96,170),(97,171),(99,172),(100,173),(101,174),(102,175),(103,176),(105,177),(106,178),(107,179),(108,180),(109,181),(111,182),(112,183),(113,184),(114,185),(115,186),(117,187),(118,188),(119,189),(120,190),(121,191),(123,192),(124,193),(125,194),(126,195),(127,196),(129,197),(130,198),(131,199),(132,200),(133,201),(135,202),(136,203),(137,204),(138,205),(139,206),(141,207),(142,208),(143,209),(144,210),(145,211),(147,212),(148,213),(149,214),(150,215),(151,216),(153,217),(154,218),(155,219),(156,220),(157,221),(159,222),(160,223),(161,224),(162,225),(163,226),(165,227),(166,228),(167,229),(168,230),(169,231),(171,232),(172,233),(173,234),(174,235),(175,236),(177,237),(178,238),(179,239),(180,240),(181,241),(183,242),(184,243),(185,244),(186,245),(187,246),(189,247),(190,248),(191,249),(192,250),(193,251),(195,252),(196,253),(197,254),(198,255),(199,256),(201,257),(202,258),(203,259),(204,260),(205,261),(207,262),(208,263),(209,264),(210,265),(211,266),(213,267),(214,268),(215,269),(216,270),(217,271),(219,272),(220,273),(221,274),(222,275),(223,276),(225,277),(226,278),(227,279),(228,280),(229,281),(231,282),(232,283),(233,284),(234,285),(235,286),(237,287),(238,288),(239,289),(240,290),(241,291),(243,292),(244,293),(245,294),(246,295),(247,296),(249,297),(250,298),(251,299),(252,300),(253,301),(255,302),(256,303),(257,304),(258,305),(259,306),(261,307),(262,308),(263,309),(264,310),(265,311),(267,312),(268,313),(269,314),(270,315),(271,316),(273,317),(274,318),(275,319),(276,320),(277,321),(279,322),(280,323),(281,324),(282,325),(283,326),(285,327),(286,328),(287,329),(288,330),(289,331),(291,332),(292,333),(293,334),(294,335),(295,336),(297,337),(298,338),(299,339),(300,340),(301,341),(303,342),(304,343),(305,344),(306,345),(307,346),(309,347),(310,348),(311,349),(312,350),(313,351),(315,352),(316,353),(317,354),(318,355),(319,356),(321,357),(322,358),(323,359),(324,360),(325,361),(327,362),(328,363),(329,364),(330,365),(331,366),(333,367),(334,368),(335,369),(336,370),(337,371),(339,372),(340,373),(341,374),(342,375),(343,376),(345,377),(346,378),(347,379),(348,380),(349,381),(351,382),(352,383),(353,384),(354,385),(355,386),(357,387),(359,388),(360,389),(361,390),(362,391),(363,392),(365,393),(366,394),(367,395),(368,396),(369,397),(371,398),(372,399),(373,400),(374,401),(375,402),(377,403),(378,404),(379,405),(380,406),(381,407),(383,408),(384,409),(385,410),(386,411),(387,412),(389,413),(390,414),(391,415),(392,416),(393,417),(395,418),(396,419),(397,420),(398,421),(399,422),(401,423),(402,424),(403,425),(404,426),(405,427),(407,428),(408,429),(409,430),(410,431),(411,432),(413,433),(414,434),(415,435),(416,436),(417,437),(419,438),(420,439),(421,440),(422,441),(423,442),(425,443),(426,444),(427,445),(428,446),(429,447),(431,448),(432,449),(433,450),(434,451),(435,452),(437,453),(438,454),(439,455),(440,456),(442,457),(443,458),(444,459),(445,460),(446,461),(448,462),(449,463),(450,464),(451,465),(452,466),(454,467),(455,468),(456,469),(457,470),(458,471),(460,472),(461,473),(462,474),(463,475),(464,476),(466,477),(467,478),(468,479),(469,480),(470,481),(472,482),(473,483),(474,484),(475,485),(476,486),(478,487),(479,488),(480,489),(481,490),(482,491),(484,492),(485,493),(486,494),(487,495),(488,496),(490,497),(491,498),(492,499),(493,500),(494,501),(496,502),(497,503),(498,504),(499,505),(500,506),(502,507),(503,508),(504,509),(505,510),(506,511),(508,512),(509,513),(510,514),(511,515),(512,516),(514,517),(515,518),(516,519),(517,520),(518,521),(520,522),(521,523),(522,524),(523,525),(524,526),(526,527),(527,528),(528,529),(529,530),(530,531),(532,532),(533,533),(534,534),(535,535),(536,536),(538,537),(539,538),(540,539),(541,540),(542,541),(544,542),(545,543),(546,544),(547,545),(548,546),(550,547),(551,548),(552,549),(554,550),(555,551),(556,552),(557,553),(558,554),(560,555),(561,556),(562,557),(563,558),(564,559),(566,560),(567,561),(568,562),(569,563),(570,564),(572,565),(573,566),(574,567),(575,568),(576,569),(578,570),(579,571),(580,572),(581,573),(582,574),(584,575),(585,576),(586,577),(587,578),(588,579),(590,580),(591,581),(592,582),(593,583),(594,584),(596,585),(597,586),(598,587),(599,588),(600,589),(602,590),(603,591),(604,592),(605,593),(606,594),(608,595),(609,596),(610,597),(611,598),(612,599),(614,600),(615,601),(616,602),(617,603),(618,604),(620,605),(621,606),(622,607),(623,608),(624,609),(626,610),(627,611),(628,612),(629,613),(630,614),(632,615),(633,616),(634,617),(635,618),(636,619),(638,620),(639,621),(640,622),(641,623),(642,624),(644,625),(645,626),(646,627),(647,628),(648,629),(650,630),(651,631),(652,632),(653,633),(654,634),(656,635),(657,636),(658,637),(659,638),(660,639),(662,640),(663,641),(664,642),(665,643),(666,644),(668,645),(669,646),(670,647),(671,648),(672,649),(674,650),(675,651),(676,652),(677,653),(678,654),(680,655),(681,656),(683,657),(684,658),(685,659),(686,660),(687,661),(689,662),(690,663),(691,664),(692,665),(693,666),(695,667),(696,668),(697,669),(698,670),(699,671),(701,672),(702,673),(703,674),(704,675),(705,676),(707,677),(708,678),(709,679),(710,680),(711,681),(713,682),(714,683),(715,684),(716,685),(717,686),(719,687),(720,688),(721,689),(722,690),(723,691),(725,692),(726,693),(727,694),(728,695),(729,696),(731,697),(732,698),(733,699),(734,700),(735,701),(737,702),(738,703),(739,704),(740,705),(741,706),(743,707),(744,708),(745,709),(746,710),(747,711),(749,712),(750,713),(751,714),(752,715),(753,716),(755,717),(756,718),(757,719),(758,720),(759,721),(761,722),(762,723),(763,724),(764,725),(765,726),(767,727),(768,728),(769,729),(770,730),(771,731),(773,732),(774,733),(775,734),(776,735),(777,736),(779,737),(780,738),(781,739),(782,740),(783,741),(785,742),(786,743),(788,744),(789,745),(790,746),(791,747),(792,748),(794,749),(795,750),(796,751),(797,752),(798,753),(800,754),(801,755),(802,756),(803,757),(804,758),(806,759),(807,760),(808,761),(809,762),(810,763),(812,764),(813,765),(814,766),(815,767),(816,768),(818,769),(819,770),(820,771),(821,772),(822,773),(824,774),(825,775),(826,776),(827,777),(828,778),(830,779),(831,780),(832,781),(833,782),(834,783),(836,784),(837,785),(838,786),(839,787),(840,788),(842,789),(843,790),(844,791),(845,792),(846,793),(848,794),(849,795),(850,796),(851,797),(852,798),(854,799),(855,800),(856,801),(857,802),(858,803),(860,804),(861,805),(862,806),(863,807),(864,808),(866,809),(867,810),(868,811),(869,812),(870,813),(872,814),(873,815),(874,816),(875,817),(876,818),(878,819),(879,820),(880,821),(881,822),(882,823),(884,824),(885,825),(886,826),(887,827),(888,828),(890,829),(891,830),(893,831),(894,832),(895,833),(896,834),(897,835),(899,836),(900,837),(901,838),(902,839),(903,840),(905,841),(906,842),(907,843),(908,844),(909,845),(911,846),(912,847),(913,848),(914,849),(915,850),(917,851),(918,852),(919,853),(920,854),(921,855),(923,856),(924,857),(925,858),(926,859),(927,860),(929,861),(930,862),(931,863),(932,864),(933,865),(935,866),(936,867),(937,868),(938,869),(939,870),(941,871),(942,872),(943,873),(944,874),(945,875),(947,876),(948,877),(949,878),(950,879),(951,880),(953,881),(954,882),(955,883),(956,884),(957,885),(959,886),(960,887),(961,888),(962,889),(963,890),(965,891),(966,892),(967,893),(968,894),(969,895),(971,896),(972,897),(973,898),(974,899),(975,900),(977,901),(978,902),(979,903),(980,904),(981,905),(983,906),(984,907),(985,908),(986,909),(987,910),(989,911),(990,912),(991,913),(992,914),(993,915),(995,916),(996,917),(997,918),(998,919),(999,920),(1001,921),(1002,922),(1003,923),(1004,924),(1005,925),(1007,926),(1008,927),(1009,928),(1010,929),(1011,930),(1013,931),(1014,932),(1015,933),(1016,934),(1017,935),(1019,936),(1020,937),(1021,938),(1022,939),(1023,940),(1025,941),(1026,942),(1027,943),(1028,944),(1029,945),(1031,946),(1032,947),(1033,948),(1034,949),(1035,950),(1037,951),(1038,952),(1039,953),(1042,954),(1043,955),(1044,956),(1045,957),(1046,958),(1048,959),(1049,960),(1050,961),(1051,962),(1052,963),(1054,964),(1055,965),(1056,966),(1057,967),(1058,968),(1060,969),(1061,970),(1062,971),(1063,972),(1064,973),(1066,974),(1067,975),(1068,976),(1069,977),(1070,978),(1072,979),(1073,980),(1074,981),(1075,982),(1076,983),(1078,984),(1079,985),(1080,986),(1081,987),(1082,988),(1084,989),(1085,990),(1086,991),(1087,992),(1088,993),(1090,994),(1091,995),(1092,996),(1093,997),(1094,998),(1096,999),(1097,1000),(1098,1001),(1099,1002),(1100,1003),(1102,1004),(1103,1005),(1105,1006),(1106,1007),(1107,1008),(1108,1009),(1109,1010),(1111,1011),(1112,1012),(1113,1013),(1114,1014),(1115,1015),(1117,1016),(1118,1017),(1119,1018),(1120,1019),(1121,1020),(1123,1021),(1124,1022),(1125,1023),(1126,1024),(1127,1025),(1129,1026),(1130,1027),(1131,1028),(1132,1029),(1133,1030),(1135,1031),(1136,1032),(1137,1033),(1138,1034),(1139,1035),(1141,1036),(1142,1037),(1143,1038),(1144,1039),(1145,1040),(1147,1041),(1148,1042),(1149,1043),(1150,1044),(1151,1045),(1153,1046),(1154,1047),(1155,1048),(1156,1049),(1157,1050),(1159,1051),(1160,1052),(1161,1053),(1162,1054),(1164,1055),(1165,1056),(1166,1057),(1167,1058),(1168,1059),(1170,1060),(1171,1061),(1172,1062),(1173,1063),(1174,1064),(1176,1065),(1177,1066),(1178,1067),(1179,1068),(1180,1069),(1182,1070),(1183,1071),(1184,1072),(1185,1073),(1186,1074),(1188,1075),(1189,1076),(1190,1077),(1191,1078),(1192,1079),(1194,1080),(1195,1081),(1196,1082),(1197,1083),(1198,1084),(1200,1085),(1201,1086),(1202,1087),(1203,1088),(1204,1089),(1206,1090),(1207,1091),(1208,1092),(1209,1093),(1210,1094),(1212,1095),(1213,1096),(1214,1097),(1215,1098),(1217,1099),(1218,1100),(1219,1101),(1220,1102),(1221,1103),(1223,1104),(1224,1105),(1225,1106),(1226,1107),(1227,1108),(1229,1109),(1231,1110),(1232,1111),(1233,1112),(1234,1113),(1235,1114),(1237,1115),(1238,1116),(1239,1117),(1240,1118),(1241,1119),(1243,1120),(1244,1121),(1245,1122),(1246,1123),(1247,1124),(1249,1125),(1250,1126),(1251,1127),(1279,1128),(1280,1129),(1281,1130),(1282,1131),(1283,1132),(1284,1133),(1285,1134),(1286,1135),(1287,1136),(1288,1137),(1291,1138),(1292,1139),(1293,1140),(1294,1141),(1295,1142),(1296,1143),(1297,1144),(1298,1145),(1299,1146),(1300,1147),(1301,1148),(1302,1149),(1303,1150),(1304,1151),(1305,1152),(1306,1153),(1307,1154),(1308,1155),(1311,1156),(1312,1157),(1313,1158),(1314,1159),(1315,1160),(1316,1161),(1317,1162),(1318,1163),(1319,1164),(1320,1165),(1323,1166),(1324,1167),(1325,1168),(1326,1169),(1327,1170),(1328,1171),(1329,1172),(1330,1173),(1331,1174),(1332,1175),(1335,1176),(1336,1177),(1337,1178),(1338,1179),(1339,1180),(1340,1181),(1341,1182),(1342,1183),(1343,1184),(1344,1185),(1346,1186),(1347,1187),(1348,1188),(1349,1189),(1350,1190),(1351,1191),(1352,1192),(1353,1193),(1354,1194),(1355,1195),(1358,1196),(1359,1197),(1360,1198),(1361,1199),(1362,1200),(1363,1201),(1364,1202),(1365,1203),(1366,1204),(1367,1205),(1370,1206),(1371,1207),(1372,1208),(1373,1209),(1374,1210),(1375,1211),(1376,1212),(1377,1213),(1378,1214),(1379,1215),(1382,1216),(1383,1217),(1384,1218),(1385,1219),(1386,1220),(1387,1221),(1388,1222),(1389,1223),(1390,1224),(1391,1225),(1394,1226),(1395,1227),(1396,1228),(1397,1229),(1398,1230),(1399,1231),(1400,1232),(1401,1233),(1402,1234),(1403,1235),(1406,1236),(1407,1237),(1408,1238),(1409,1239),(1410,1240),(1411,1241),(1412,1242),(1413,1243),(1414,1244),(1415,1245),(1418,1246),(1419,1247),(1420,1248),(1421,1249),(1422,1250),(1423,1251),(1424,1252),(1425,1253),(1426,1254),(1427,1255),(1429,1256),(1430,1257),(1431,1258),(1432,1259),(1433,1260),(1434,1261),(1435,1262),(1436,1263),(1437,1264),(1438,1265),(1440,1266),(1441,1267),(1442,1268),(1443,1269),(1444,1270),(1445,1271),(1446,1272),(1447,1273),(1448,1274),(1449,1275),(1451,1276),(1452,1277),(1453,1278),(1454,1279),(1455,1280),(1457,1281),(1458,1282),(1459,1283),(1460,1284),(1461,1285),(1462,1286),(1463,1287),(1464,1288),(1465,1289),(1466,1290),(1468,1291),(1469,1292),(1470,1293),(1471,1294),(1472,1295),(1473,1296),(1474,1297),(1475,1298),(1476,1299),(1477,1300),(1479,1301),(1480,1302),(1481,1303),(1483,1304),(1484,1305),(1486,1306),(1487,1307),(1488,1308),(1489,1309),(1491,1310),(1492,1311),(1493,1312),(1494,1313),(1495,1314),(1497,1315),(1498,1316),(1499,1317),(1500,1318),(1501,1319),(1503,1320),(1504,1321),(1505,1322),(1506,1323),(1507,1324),(1509,1325),(1510,1326),(1511,1327),(1512,1328),(1513,1329),(1515,1330),(1516,1331),(1517,1332),(1518,1333),(1519,1334),(1521,1335),(1522,1336),(1523,1337),(1524,1338),(1525,1339),(1527,1340),(1528,1341),(1529,1342),(1530,1343),(1531,1344),(1533,1345),(1534,1346),(1535,1347),(1536,1348),(1537,1349),(1539,1350),(1540,1351),(1541,1352),(1542,1353),(1543,1354),(1545,1355),(1546,1356),(1547,1357),(1548,1358),(1549,1359),(1551,1360),(1552,1361),(1553,1362),(1554,1363),(1555,1364),(1557,1365),(1558,1366),(1559,1367),(1560,1368),(1561,1369),(1563,1370),(1564,1371),(1565,1372),(1566,1373),(1567,1374),(1569,1375),(1570,1376),(1571,1377),(1572,1378),(1573,1379),(1575,1380),(1576,1381),(1577,1382),(1578,1383),(1579,1384),(1581,1385),(1582,1386),(1583,1387),(1584,1388),(1585,1389),(1587,1390),(1588,1391),(1589,1392),(1590,1393),(1591,1394),(1593,1395),(1594,1396),(1595,1397),(1596,1398),(1597,1399),(1599,1400),(1600,1401),(1601,1402),(1602,1403),(1603,1404),(1605,1405),(1606,1406),(1607,1407),(1608,1408),(1609,1409),(1611,1410),(1612,1411),(1613,1412),(1614,1413),(1615,1414),(1617,1415),(1619,1416),(1620,1417),(1621,1418),(1622,1419),(1623,1420),(1625,1421),(1626,1422),(1627,1423),(1628,1424),(1629,1425),(1631,1426),(1632,1427),(1633,1428),(1635,1429),(1636,1430),(1637,1431),(1638,1432),(1639,1433),(1641,1434),(1642,1435),(1643,1436),(1644,1437),(1645,1438),(1647,1439),(1648,1440),(1649,1441),(1650,1442),(1651,1443),(1653,1444),(1654,1445),(1655,1446),(1656,1447),(1657,1448),(1659,1449),(1660,1450),(1661,1451),(1662,1452),(1663,1453),(1665,1454),(1666,1455),(1667,1456),(1668,1457),(1669,1458),(1671,1459),(1672,1460),(1673,1461),(1674,1462),(1675,1463),(1677,1464),(1678,1465),(1679,1466),(1680,1467),(1681,1468),(1683,1469),(1684,1470),(1685,1471),(1686,1472),(1687,1473),(1689,1474),(1690,1475),(1691,1476),(1692,1477),(1693,1478),(1695,1479),(1696,1480),(1697,1481),(1698,1482),(1699,1483),(1701,1484),(1702,1485),(1703,1486),(1704,1487),(1705,1488),(1707,1489),(1708,1490),(1709,1491),(1710,1492),(1711,1493),(1713,1494),(1714,1495),(1715,1496),(1716,1497),(1717,1498),(1719,1499),(1720,1500),(1721,1501),(1722,1502),(1723,1503),(1725,1504),(1726,1505),(1727,1506),(1728,1507),(1729,1508),(1731,1509),(1732,1510),(1733,1511),(1734,1512),(1735,1513),(1737,1514),(1738,1515),(1739,1516),(1740,1517),(1741,1518),(1743,1519),(1744,1520),(1745,1521),(1746,1522),(1747,1523),(1749,1524),(1750,1525),(1751,1526),(1752,1527),(1753,1528),(1755,1529),(1756,1530),(1757,1531),(1758,1532),(1759,1533),(1761,1534),(1762,1535),(1763,1536),(1764,1537),(1765,1538),(1767,1539),(1768,1540),(1769,1541),(1770,1542),(1771,1543),(1773,1544),(1774,1545),(1775,1546),(1776,1547),(1777,1548),(1779,1549),(1780,1550),(1781,1551),(1782,1552),(1783,1553),(1785,1554),(1786,1555),(1787,1556),(1788,1557),(1789,1558),(1791,1559),(1792,1560),(1793,1561),(1794,1562),(1795,1563),(1797,1564),(1798,1565),(1799,1566),(1800,1567),(1801,1568),(1803,1569),(1804,1570),(1805,1571),(1806,1572),(1807,1573),(1809,1574),(1810,1575),(1811,1576),(1812,1577),(1813,1578),(1815,1579),(1816,1580),(1817,1581),(1818,1582),(1819,1583),(1821,1584),(1822,1585),(1823,1586),(1824,1587),(1825,1588),(1827,1589),(1828,1590),(1829,1591),(1830,1592),(1831,1593),(1833,1594),(1834,1595),(1835,1596),(1836,1597),(1837,1598),(1839,1599),(1840,1600),(1841,1601),(1842,1602),(1843,1603),(1845,1604),(1846,1605),(1847,1606),(1848,1607),(1849,1608),(1851,1609),(1852,1610),(1853,1611),(1854,1612),(1855,1613),(1857,1614),(1858,1615),(1859,1616),(1860,1617),(1861,1618),(1863,1619),(1864,1620),(1865,1621),(1866,1622),(1867,1623),(1869,1624),(1870,1625),(1871,1626),(1872,1627),(1873,1628),(1875,1629),(1876,1630),(1877,1631),(1878,1632),(1879,1633),(1881,1634),(1882,1635),(1883,1636),(1884,1637),(1885,1638),(1887,1639),(1888,1640),(1889,1641),(1890,1642),(1891,1643),(1893,1644),(1894,1645),(1895,1646),(1896,1647),(1897,1648),(1899,1649),(1900,1650),(1902,1651),(1903,1652),(1904,1653),(1905,1654),(1906,1655),(1908,1656),(1909,1657),(1910,1658),(1911,1659),(1912,1660),(1914,1661),(1915,1662),(1917,1663),(1918,1664),(1919,1665),(1920,1666),(1921,1667),(1923,1668),(1924,1669),(1925,1670),(1926,1671),(1927,1672),(1929,1673),(1930,1674),(1931,1675),(1932,1676),(1933,1677),(1935,1678),(1936,1679),(1937,1680),(1938,1681),(1939,1682),(1941,1683),(1942,1684),(1943,1685),(1944,1686),(1945,1687),(1947,1688),(1948,1689),(1949,1690),(1950,1691),(1951,1692),(1953,1693),(1954,1694),(1956,1695),(1957,1696),(1958,1697),(1959,1698),(1960,1699),(1962,1700),(1963,1701),(1964,1702),(1965,1703),(1966,1704),(1968,1705),(1969,1706),(1970,1707),(1971,1708),(1972,1709),(1974,1710),(1975,1711),(1976,1712),(1977,1713),(1978,1714),(1980,1715),(1981,1716),(1982,1717),(1983,1718),(1984,1719),(1986,1720),(1987,1721),(1988,1722),(1989,1723),(1990,1724),(1992,1725),(1993,1726),(1995,1727),(1996,1728),(1997,1729),(1998,1730),(1999,1731),(2001,1732),(2002,1733),(2003,1734),(2004,1735),(2005,1736),(2007,1737),(2008,1738),(2009,1739),(2011,1740),(2012,1741),(2013,1742),(2014,1743),(2015,1744),(2016,1745),(2017,1746),(2018,1747),(2019,1748),(2020,1749),(2022,1750),(2023,1751),(2024,1752),(2025,1753),(2026,1754),(2027,1755),(2028,1756),(2029,1757),(2030,1758),(2031,1759),(2033,1760),(2034,1761),(2035,1762),(2036,1763),(2037,1764),(2038,1765),(2039,1766),(2040,1767),(2041,1768),(2042,1769),(2044,1770),(2045,1771),(2046,1772),(2047,1773),(2048,1774),(2049,1775),(2050,1776),(2051,1777),(2052,1778),(2053,1779),(2055,1780),(2056,1781),(2057,1782),(2058,1783),(2059,1784),(2060,1785),(2061,1786),(2062,1787),(2063,1788),(2064,1789),(2066,1790),(2067,1791),(2068,1792),(2069,1793),(2070,1794),(2071,1795),(2072,1796),(2073,1797),(2074,1798),(2075,1799),(2077,1800),(2078,1801),(2079,1802),(2080,1803),(2081,1804),(2082,1805),(2083,1806),(2084,1807),(2085,1808),(2086,1809),(2088,1810),(2089,1811),(2090,1812),(2091,1813),(2092,1814),(2093,1815),(2094,1816),(2095,1817),(2096,1818),(2097,1819),(2099,1820),(2100,1821),(2101,1822),(2102,1823),(2103,1824),(2104,1825),(2105,1826),(2106,1827),(2107,1828),(2108,1829),(2110,1830),(2111,1831),(2112,1832),(2113,1833),(2114,1834),(2115,1835),(2116,1836),(2117,1837),(2118,1838),(2119,1839),(2121,1840),(2122,1841),(2123,1842),(2124,1843),(2125,1844),(2126,1845),(2127,1846),(2128,1847),(2129,1848),(2130,1849),(2131,1850),(2133,1851),(2134,1852),(2135,1853),(2136,1854),(2137,1855),(2138,1856),(2139,1857),(2141,1858),(2142,1859),(2143,1860),(2144,1861),(2145,1862),(2147,1863),(2148,1864),(2149,1865),(2150,1866),(2151,1867),(2153,1868),(2154,1869),(2155,1870),(2156,1871),(2157,1872),(2159,1873),(2160,1874),(2161,1875),(2162,1876),(2163,1877),(2165,1878),(2166,1879),(2167,1880),(2168,1881),(2169,1882),(2171,1883),(2172,1884),(2173,1885),(2174,1886),(2175,1887),(2177,1888),(2178,1889),(2179,1890),(2180,1891),(2181,1892),(2183,1893),(2184,1894),(2185,1895),(2186,1896),(2187,1897),(2189,1898),(2190,1899),(2191,1900),(2192,1901),(2193,1902),(2195,1903),(2197,1904),(2198,1905),(2199,1906),(2200,1907),(2201,1908),(2203,1909),(2204,1910),(2205,1911),(2206,1912),(2207,1913),(2209,1914),(2210,1915),(2211,1916),(2212,1917),(2213,1918),(2215,1919),(2216,1920),(2217,1921),(2218,1922),(2219,1923),(2221,1924),(2222,1925),(2223,1926),(2224,1927),(2225,1928),(2227,1929),(2228,1930),(2229,1931),(2230,1932),(2231,1933),(2233,1934),(2234,1935),(2235,1936),(2236,1937),(2237,1938),(2239,1939),(2240,1940),(2241,1941),(2242,1942),(2243,1943),(2245,1944),(2246,1945),(2247,1946),(2248,1947),(2249,1948),(2251,1949),(2252,1950),(2253,1951),(2254,1952),(2255,1953),(2257,1954),(2258,1955),(2259,1956),(2260,1957),(2261,1958),(2263,1959),(2264,1960),(2265,1961),(2266,1962),(2267,1963),(2269,1964),(2270,1965),(2271,1966),(2272,1967),(2273,1968),(2275,1969),(2276,1970),(2277,1971),(2278,1972),(2279,1973),(2281,1974),(2282,1975),(2283,1976),(2284,1977),(2285,1978),(2287,1979),(2288,1980),(2289,1981),(2290,1982),(2291,1983),(2293,1984),(2294,1985),(2295,1986),(2296,1987),(2297,1988),(2299,1989),(2300,1990),(2301,1991),(2302,1992),(2303,1993),(2305,1994),(2306,1995),(2307,1996),(2308,1997),(2309,1998),(2311,1999),(2312,2000),(2313,2001),(2314,2002),(2315,2003),(2317,2004),(2318,2005),(2319,2006),(2320,2007),(2321,2008),(2323,2009),(2324,2010),(2325,2011),(2326,2012),(2327,2013),(2329,2014),(2330,2015),(2331,2016),(2332,2017),(2333,2018),(2335,2019),(2336,2020),(2337,2021),(2338,2022),(2339,2023),(2341,2024),(2342,2025),(2343,2026),(2344,2027),(2345,2028),(2347,2029),(2348,2030),(2349,2031),(2350,2032),(2351,2033),(2353,2034),(2354,2035),(2355,2036),(2356,2037),(2357,2038),(2359,2039),(2360,2040),(2361,2041),(2362,2042),(2363,2043),(2365,2044),(2366,2045),(2367,2046),(2368,2047),(2369,2048),(2371,2049),(2372,2050),(2373,2051),(2374,2052),(2375,2053),(2377,2054),(2378,2055),(2379,2056),(2380,2057),(2381,2058),(2383,2059),(2384,2060),(2385,2061),(2386,2062),(2387,2063),(2389,2064),(2390,2065),(2391,2066),(2392,2067),(2393,2068),(2395,2069),(2396,2070),(2397,2071),(2398,2072),(2399,2073),(2401,2074),(2402,2075),(2403,2076),(2404,2077),(2405,2078),(2407,2079),(2408,2080),(2409,2081),(2410,2082),(2411,2083),(2413,2084),(2414,2085),(2415,2086),(2416,2087),(2417,2088),(2419,2089),(2420,2090),(2421,2091),(2422,2092),(2423,2093),(2425,2094),(2426,2095),(2427,2096),(2428,2097),(2429,2098),(2431,2099),(2432,2100),(2433,2101),(2434,2102),(2435,2103),(2437,2104),(2438,2105),(2439,2106),(2440,2107),(2441,2108),(2443,2109),(2444,2110),(2445,2111),(2446,2112),(2447,2113),(2449,2114),(2450,2115),(2451,2116),(2452,2117),(2453,2118),(2455,2119),(2456,2120),(2457,2121),(2458,2122),(2459,2123),(2461,2124),(2462,2125),(2463,2126),(2464,2127),(2465,2128),(2467,2129),(2468,2130),(2469,2131),(2470,2132),(2471,2133),(2473,2134),(2474,2135),(2475,2136),(2476,2137),(2477,2138),(2479,2139),(2481,2140),(2482,2141),(2484,2142),(2485,2143),(2487,2144),(2488,2145),(2489,2146),(2490,2147),(2491,2148),(2493,2149),(2494,2150),(2495,2151),(2496,2152),(2497,2153),(2499,2154),(2500,2155),(2501,2156),(2502,2157),(2503,2158),(2505,2159),(2506,2160),(2507,2161),(2508,2162),(2509,2163),(2511,2164),(2512,2165),(2513,2166),(2514,2167),(2515,2168),(2517,2169),(2518,2170),(2519,2171),(2520,2172),(2521,2173),(2523,2174),(2524,2175),(2525,2176),(2526,2177),(2527,2178),(2529,2179),(2530,2180),(2531,2181),(2532,2182),(2533,2183),(2535,2184),(2536,2185),(2537,2186),(2538,2187),(2539,2188),(2541,2189),(2542,2190),(2543,2191),(2544,2192),(2545,2193),(2547,2194),(2548,2195),(2549,2196),(2550,2197),(2551,2198),(2553,2199),(2554,2200),(2555,2201),(2556,2202),(2557,2203),(2559,2204),(2560,2205),(2561,2206),(2562,2207),(2563,2208),(2565,2209),(2566,2210),(2567,2211),(2568,2212),(2569,2213),(2571,2214),(2572,2215),(2573,2216),(2574,2217),(2575,2218),(2577,2219),(2578,2220),(2579,2221),(2580,2222),(2581,2223),(2583,2224),(2584,2225),(2585,2226),(2586,2227),(2587,2228),(2589,2229),(2590,2230),(2591,2231),(2592,2232),(2593,2233),(2595,2234),(2596,2235),(2597,2236),(2598,2237),(2599,2238),(2601,2239),(2602,2240),(2603,2241),(2604,2242),(2605,2243),(2607,2244),(2608,2245),(2609,2246),(2610,2247),(2611,2248),(2613,2249),(2614,2250),(2615,2251),(2616,2252),(2617,2253),(2619,2254),(2620,2255),(2621,2256),(2622,2257),(2623,2258),(2625,2259),(2626,2260),(2627,2261),(2628,2262),(2629,2263),(2631,2264),(2632,2265),(2633,2266),(2634,2267),(2635,2268),(2637,2269),(2638,2270),(2639,2271),(2640,2272),(2641,2273),(2643,2274),(2644,2275),(2645,2276),(2646,2277),(2647,2278),(2649,2279),(2650,2280),(2651,2281),(2652,2282),(2653,2283),(2655,2284),(2656,2285),(2657,2286),(2658,2287),(2659,2288),(2661,2289),(2662,2290),(2663,2291),(2664,2292),(2665,2293),(2667,2294),(2668,2295),(2669,2296),(2670,2297),(2671,2298),(2673,2299),(2674,2300),(2675,2301),(2676,2302),(2677,2303),(2679,2304),(2680,2305),(2681,2306),(2682,2307),(2683,2308),(2685,2309),(2686,2310),(2687,2311),(2688,2312),(2689,2313),(2691,2314),(2692,2315),(2693,2316),(2694,2317),(2695,2318),(2697,2319),(2698,2320),(2699,2321),(2700,2322),(2701,2323),(2703,2324);
/*!40000 ALTER TABLE `SENTIMENT_SCORE_REVIEW` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12  4:41:18