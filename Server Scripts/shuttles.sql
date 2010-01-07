/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2010 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

use swganh;

--
-- Definition of table `shuttles`
--

DROP TABLE IF EXISTS `shuttles`;
CREATE TABLE `shuttles` (
  `id` bigint(20) unsigned NOT NULL default '0',
  `parentId` bigint(20) unsigned NOT NULL default '0',
  `shuttle_type` int(11) unsigned NOT NULL default '0',
  `firstName` char(255) default NULL,
  `lastName` char(255) default NULL,
  `oX` float NOT NULL default '0',
  `oY` float NOT NULL default '0',
  `oZ` float NOT NULL default '0',
  `oW` float NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float default '0',
  `planet_id` int(2) NOT NULL default '0',
  `awayTime` int(10) unsigned NOT NULL default '3000000',
  `inPortTime` int(10) unsigned NOT NULL default '300000',
  `collectorId` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_shuttles_planet_planet` (`planet_id`),
  KEY `FK_shuttles_type_type` (`shuttle_type`),
  CONSTRAINT `shuttles_ibfk_1` FOREIGN KEY (`planet_id`) REFERENCES `planet` (`planet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shuttles_ibfk_2` FOREIGN KEY (`shuttle_type`) REFERENCES `shuttle_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shuttles`
--

/*!40000 ALTER TABLE `shuttles` DISABLE KEYS */;
INSERT INTO `shuttles` (`id`,`parentId`,`shuttle_type`,`firstName`,`lastName`,`oX`,`oY`,`oZ`,`oW`,`x`,`y`,`z`,`planet_id`,`awayTime`,`inPortTime`,`collectorId`) VALUES
 (47781511168,0,3,NULL,NULL,0,-0.65,0,0.76,-1370.88,12,-3575.37,8,60000,275000,4563402756),
 (47781511170,0,1,NULL,NULL,0,1,0,-0.05,-1078.06,12.6,-3560.76,8,60000,275000,4563402757),
 (47781511172,0,1,NULL,NULL,0,0.71,0,0.71,42.53,52.6,-5318.92,8,60000,275000,4563402761),
 (47781511174,0,1,NULL,NULL,0,0.96,0,-0.28,3436.23,5.6,-4654.72,8,60000,275000,4563402755),
 (47781511176,0,3,NULL,NULL,0,0.7,0,0.71,3613.96,5,-4802.9,8,60000,275000,4563402754),
 (47781511178,0,3,NULL,NULL,0,0.95,0,-0.3,1239.67,7,3066.98,8,60000,275000,4563402762),
 (47781511180,0,1,NULL,NULL,0,0.71,0,0.71,1725.88,7.6,3204.61,8,60000,275000,4563402764),
 (47781511182,0,1,NULL,NULL,0,0.71,0,0.7,1390.66,7.6,3487.06,8,60000,275000,4563402763),
 (47781511184,0,1,NULL,NULL,0,0.78,0,-0.63,-2794.34,5.6,2164.5,8,60000,275000,4563402760),
 (47781511186,0,1,NULL,NULL,0,-0.12,0,0.99,-3130.27,5.6,2167.17,8,60000,275000,4563402759),
 (47781511188,0,1,NULL,NULL,0,0.79,0,-0.6,-2887.12,5.6,1915.37,8,60000,275000,4563402758),
 (47781511190,0,3,NULL,NULL,0,0.88,0,0.48,-2833.97,5,2080.9,8,60000,275000,4563402810),
 (47781511192,0,3,NULL,NULL,0,0.71,0,0.71,458.59,16.9,5494.2,4,60000,275000,4563402781),
 (47781511194,0,3,NULL,NULL,0,0.36,0,0.93,-636.36,10.09,2480.01,1,60000,275000,4563402791),
 (47781511196,0,3,NULL,NULL,0,0.71,0,0.71,-4229,10.09,-2368,1,60000,275000,4563402790),
 (47781511198,0,3,NULL,NULL,0,0.71,0,-0.71,1590,11.09,-6398,1,60000,275000,4563402789),
 (47781511200,0,3,NULL,NULL,0,0.87,0,0.49,592.31,13.13,3087.28,2,60000,275000,4563402776),
 (47781511202,0,3,NULL,NULL,0,0.9,0,0.43,-75.99,25.09,-1586,2,60000,275000,4563402777),
 (47781511204,0,3,NULL,NULL,0,0.71,0,0.71,-287.58,42.09,4878.54,9,60000,275000,4563402779),
 (47781511206,0,3,NULL,NULL,0,1,0,0,-6939.43,80.09,-5706.18,9,60000,275000,4563402778),
 (47781511208,0,3,NULL,NULL,0,0.71,0,0.71,4032.56,44.09,-6234.47,9,60000,275000,4563402780),
 (47781511212,1692104,4,NULL,NULL,0,0,0,1,-12,8,0,5,60000,85000,4563402753),
 (47781511214,1692104,4,NULL,NULL,0,0,0,1,12,8,29.3,5,60000,85000,0),
 (47781511216,0,3,NULL,NULL,0,0.92,0,0.4,-977.63,80.09,1554.06,3,60000,275000,4563402788),
 (47781511218,0,3,NULL,NULL,0,0.71,0,-0.71,3222,31.09,-3482,3,60000,275000,4563402787),
 (47781511220,0,3,NULL,NULL,0,0.71,0,0.71,3671.56,103.09,-6421.2,6,60000,275000,4563402786),
 (47781511222,0,3,NULL,NULL,0,-0.38,0,0.92,-5367.64,80,-2162.91,6,60000,275000,4563402782),
 (47781511224,0,1,NULL,NULL,0,0.92,0,0.38,-5243.5,81.3,-2145.7,6,60000,275000,4563402783),
 (47781511226,0,3,NULL,NULL,0,0,0,1,5363.1,80,5753.1,6,60000,275000,4563402784),
 (47781511228,0,1,NULL,NULL,0,0.71,0,0.71,5210.6,80.6,5810.3,6,60000,275000,4563402785),
 (47781511230,0,3,NULL,NULL,0,-0.47,0,0.88,4732.73,4.17,-4651.1,5,60000,275000,4563402774),
 (47781511232,0,3,NULL,NULL,0,0.72,0,-0.7,1357.27,13,2770.19,5,60000,275000,4563402769),
 (47781511234,0,3,NULL,NULL,0,0.76,0,0.65,5290.02,-192,6663.44,5,60000,275000,4563402811),
 (47781511236,0,1,NULL,NULL,0,0.91,0,0.42,-4993.42,6.6,4094.17,5,60000,275000,4563402765),
 (47781511238,0,1,NULL,NULL,0,0.71,0,-0.71,-5406.02,6.6,4302.33,5,60000,275000,4563402766),
 (47781511240,0,1,NULL,NULL,0,0,0,1,-5876.11,6.6,4167.16,5,60000,275000,4563402767),
 (47781511242,0,1,NULL,NULL,0,1,0,0,-5474.42,-149.4,-16.84,5,60000,275000,4563402773),
 (47781511244,0,1,NULL,NULL,0,1,0,0,5351.96,327.63,-1575.78,5,60000,275000,4563402772),
 (47781511246,0,1,'',NULL,0,1,0,0,4981.94,4.35,-4887.7,5,60000,275000,4563402775),
 (47781511248,0,1,NULL,NULL,0,0.71,0,0.7,1562.94,25.6,2857.98,5,60000,275000,4563402770),
 (47781511250,0,1,NULL,NULL,0,1,0,0,2041,19.6,2530.68,5,60000,275000,4563402771),
 (47781511252,0,1,'',NULL,0,0.92,0,-0.39,5140.85,-191.4,6605.7,5,60000,275000,4563402768),
 (47781511254,0,3,NULL,NULL,0,0.71,0,-0.71,249.95,6,-2929.41,7,60000,275000,4563402794),
 (47781511256,0,3,NULL,NULL,0,1,0,0,-2211.76,27.09,2301.51,7,60000,275000,4563402796),
 (47781511258,0,3,NULL,NULL,0,0.17,0,0.99,4479.64,2,5359.83,7,60000,275000,4563402792),
 (47781511260,0,1,NULL,NULL,0,0.71,0,-0.71,704.3,6.6,-3061.42,7,60000,275000,4563402795),
 (47781511262,0,1,NULL,NULL,0,0,0,1,4314.53,10.5,5426.24,7,60000,275000,4563402793),
 (47781511264,0,3,NULL,NULL,0,0.76,0,0.65,-56.55,28,-4735.78,0,60000,275000,4563402797),
 (47781511266,0,3,NULL,NULL,0,0.38,0,0.92,-4977.36,21,-2234.79,0,60000,275000,4563402800),
 (47781511268,0,3,NULL,NULL,0,0,0,1,-3134.14,31,2889.11,0,60000,275000,4563402806),
 (47781511270,0,3,NULL,NULL,0,0.24,0,0.97,3376.34,308,5599.78,0,60000,275000,4563402808),
 (47781511272,0,1,NULL,NULL,0,0.71,0,0.71,-334.77,28.6,-4621.23,0,60000,275000,4563402799),
 (47781511274,0,1,NULL,NULL,0,0.71,0,0.71,-30.67,28.6,-4389.78,0,60000,275000,4563402798),
 (47781511276,0,1,NULL,NULL,0,0,0,1,6624,330.6,-5926.28,0,60000,275000,4563402804),
 (47781511278,0,1,NULL,NULL,0,0.99,0,-0.1,6951,330.6,-5533.98,0,60000,275000,4563402805),
 (47781511280,0,1,NULL,NULL,0,0.71,0,0.71,-5556.95,16.49,-6039.97,0,60000,275000,4563402803),
 (47781511282,0,1,NULL,NULL,0,0.73,0,0.68,-5008.94,21.6,-2366.68,0,60000,275000,4563402802),
 (47781511284,0,1,NULL,NULL,0,0,0,1,-5620.64,21.6,-2795.74,0,60000,275000,4563402801),
 (47781511286,0,1,NULL,NULL,0,0.71,0,0.71,-3780.27,86.6,3254.22,0,60000,275000,4563402807),
 (47781511288,0,1,NULL,NULL,0,0,0,1,3065.5,280.6,4988.01,0,60000,275000,4563402809),
 (47781511290,2203318222972,4,NULL,NULL,0,1,0,0,36.7,-3.5,-264.7,41,60000,275000,0),
 (47781511292,0,1,NULL,NULL,0,0,0,1,101.8,45.6,3915,42,60000,275000,4563402812),
 (47781511294,0,3,NULL,NULL,0,1,0,0,296.9,45,3743.8,42,60000,275000,4563402813),
 (47781511296,0,1,NULL,NULL,0,0.71,0,-0.71,3146.7,40.6,-3864.7,42,60000,275000,4563402814);
/*!40000 ALTER TABLE `shuttles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;