/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.34 : Database - charms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `auditid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `sample` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `audit` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `empNo` varchar(10) NOT NULL DEFAULT 'NONE',
  `lname` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `mname` varchar(80) NOT NULL,
  `ename` varbinary(100) DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`eid`,`empNo`,`lname`,`fname`,`mname`,`ename`,`designation`) values (12,'','ANCHETA-DIEGO','CHERRIE MELANIE','','','Director IV'),(13,'','CASIPIT','MA. GERALDINE','F','','Supervising Education Program Specialist'),(14,'','BUENIO','NYMPHA','N','','Chief Administrative Officer'),(15,'','ADQUILEN','EVELYN','C','','Administrative Officer III'),(16,'','AGCAOILI','REYNALDO','D','','Education Supervisor II'),(17,'','AGLUGUB','RODOLFO','E','','Education Supervisor II'),(18,'','ANCHETA','ARNOLD','V','','Education Supervisor II'),(19,'','BOSE','DANILO','B','','Education Supervisor II'),(20,'','CABANBAN','CHRISTIANNE LYNNETTE','G','','Education Supervisor II'),(21,'','CANTOR','MARK ANTHONY','L','','Administrative Aide VI'),(22,'','CHAN','CATHERINE','C','','Education Supervisor II'),(23,'','DOLORES','ANGELICA','Q','','Education Supervisor II'),(24,'','DULUEÃ‘A','PERFECTO','A','','Administrative Aide VI'),(25,'','FERRER','ANGELA','F','','Education Program Specialist II'),(26,'','GALERA JR.','ROGELIO','T','','Education Supervisor II'),(27,'','INIGO','KRIZZANE','C','','Administrative Assistant III'),(28,'','MENDOZA','MARVIN','I','','Administrative Aide IV'),(29,'','MINA','MYRELLE FAITH','D','','Education Supervisor II'),(30,'','MOLINA','FLORANTE','F','','Administrative Aide III'),(31,'','MONTEMAYOR','DIANNE JOYCE','B','','Administrative Officer III'),(32,'','OLI','CORNELIO','T','','Administrative Aide III'),(33,'','QUEZON','MAYROSE','L','','Education Supervisor II'),(34,'','NARCEDA','ARGIELYN','','','Job Order'),(35,'','PASCUA','CHARLES VINCENT','','','Job Order'),(36,'','TACTACAN','CIELITO','','','Job Order'),(37,'','VALENCIA','NASTASHA','A','','Job Order'),(38,'','YAMSON','VIC','','','Guard'),(39,'','OLPINDO','AUDIE','','','Guard'),(40,'','ESCAÃ‘O','MELODY','G','','Job Order'),(41,'','ANCHETA','MELQUIDES','','','PTS III'),(42,'','JONARD\r\n','GAVO\r\n','','','OJT'),(43,'','FRANCIA\r\n','POLIDO\r\n','','','OJT'),(44,'','CASEM','ELVIN','E','','PTS III');

/*Table structure for table `equipments` */

DROP TABLE IF EXISTS `equipments`;

CREATE TABLE `equipments` (
  `equipNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `propertyNo` varchar(100) NOT NULL,
  `article` varchar(100) DEFAULT NULL,
  `particulars` text NOT NULL,
  `dateacquired` date NOT NULL DEFAULT '0000-00-00',
  `totalcost` double(10,2) NOT NULL DEFAULT '0.00',
  `eid` int(11) DEFAULT '0',
  `issuedto` varchar(500) DEFAULT NULL,
  `enduser` varchar(500) DEFAULT NULL,
  `classification` varchar(200) DEFAULT NULL,
  `accountcode` varchar(100) DEFAULT NULL,
  `service` varchar(100) DEFAULT NULL,
  `whereabout` text,
  `remarks` text,
  `inventorytag` varchar(100) DEFAULT NULL,
  `supplierID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`equipNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments` */

/*Table structure for table `equipments_details` */

DROP TABLE IF EXISTS `equipments_details`;

CREATE TABLE `equipments_details` (
  `equipdetailsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `equipNo` bigint(20) NOT NULL,
  `processor` varchar(200) NOT NULL DEFAULT 'NONE',
  `ram` varchar(100) NOT NULL DEFAULT 'NONE',
  `hd` varchar(100) NOT NULL DEFAULT 'NONE',
  `operatingsystem` varchar(100) NOT NULL DEFAULT 'NONE',
  `brand` varchar(200) NOT NULL DEFAULT 'NONE',
  `color` varchar(100) NOT NULL DEFAULT 'NONE',
  `others` text NOT NULL,
  `equipsn` varchar(500) DEFAULT NULL,
  `processorsn` varchar(500) DEFAULT NULL,
  `monitorsn` varchar(500) DEFAULT NULL,
  `keyboardsn` varchar(500) DEFAULT NULL,
  `mousesn` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`equipdetailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments_details` */

/*Table structure for table `equipments_items` */

DROP TABLE IF EXISTS `equipments_items`;

CREATE TABLE `equipments_items` (
  `equipNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `equipName` varchar(200) NOT NULL,
  `tagno` varchar(200) DEFAULT 'NONE',
  `propertyno` varchar(200) DEFAULT 'NONE',
  `serialno` varchar(200) DEFAULT 'NONE',
  `unitcost` double(10,2) NOT NULL DEFAULT '0.00',
  `dateacquired` date DEFAULT '2016-01-01',
  `supplierID` int(11) DEFAULT '0',
  `color` varchar(100) DEFAULT 'NONE',
  `category` varchar(100) DEFAULT 'NONE',
  PRIMARY KEY (`equipNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `equipments_items` */

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL AUTO_INCREMENT,
  `itemNo` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datereceived` date DEFAULT NULL,
  `drno` varchar(300) DEFAULT NULL,
  `aprno` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `inventory` */

insert  into `inventory`(`inventoryid`,`itemNo`,`unit`,`qty`,`status`,`time_stamp`,`datereceived`,`drno`,`aprno`) values (1,137,'REAM',1,0,'2017-02-06 08:53:46','2017-02-06','212','123132');

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `itemNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'Office Supply',
  `unit` varchar(20) NOT NULL DEFAULT 'PC',
  `unitCost` double(10,2) NOT NULL DEFAULT '0.00',
  `inventory_qty` int(11) DEFAULT '0',
  `supplierID` int(11) DEFAULT '0',
  `brand` varchar(200) DEFAULT 'NONE',
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

/*Data for the table `items` */

insert  into `items`(`itemNo`,`description`,`category`,`unit`,`unitCost`,`inventory_qty`,`supplierID`,`brand`) values (1,'Alcohol','Office Supply','PC',0.00,0,0,'CLEENE'),(2,'Tissue','Office Supply','PC',0.00,0,0,'ECO HYGIENE'),(3,'Glue','Office Supply','PC',0.00,0,0,'STICK-EE'),(4,'Double Clip 2 inch','Office Supply','PC',0.00,0,0,'PRINCE'),(5,'Jumbo clip','Office Supply','PC',0.00,0,0,'PRINCE'),(6,'Paper clip','Office Supply','BOX',0.00,0,0,'PRINCE'),(7,'Ruler 12 inch','Office Supply','PC',0.00,0,0,'CRYSTAL'),(8,'Ruler 17 inch','Office Supply','PC',0.00,0,0,'PRINCE'),(9,'Binder clips 1 inch','Office Supply','PC',0.00,0,0,'JOY'),(10,'Binder clips 3/4 inch','Office Supply','PC',0.00,0,0,'JOY'),(11,'Staple Remover','Office Supply','BOX',0.00,0,0,'JIVLI'),(12,'Tape dispenser','Office Supply','BOX',0.00,0,0,'PRINCE'),(13,'Safety paper fastener','Office Supply','BOX',0.00,0,0,'APPLE'),(14,'Stamp pad','Office Supply','PC',0.00,0,0,'MPC CLASSIQUE/JOY'),(15,'Stamp pad ink','Office Supply','PC',0.00,0,0,'PADMATE'),(16,'Typewriter Ribbon','Office Supply','PC',0.00,0,0,'NONE'),(17,'Tape packaging','Office Supply','PC',0.00,0,0,'CROCO TAPE'),(18,'Tape Masking','Office Supply','PC',0.00,0,0,'CROCO TAPE'),(19,'Scotch tape','Office Supply','PC',0.00,0,0,'CROCO TAPE'),(20,'Stencil Paper','Office Supply','BOX',0.00,0,0,'PRINCE'),(21,'Log book (300)','Office Supply','PC',0.00,0,0,'MULTI-ZERO'),(22,'Log book (500)','Office Supply','PC',0.00,0,0,'NONE'),(23,'Puncher','Office Supply','BOX',0.00,0,0,'PRINCE'),(24,'Correction Tape','Office Supply','Pc',0.00,0,0,'JOY'),(25,'Fax film','Office Supply','BOX',0.00,0,0,'KODAK GOLD'),(26,'Cartolina (assorted)','Office Supply','PC',0.00,0,0,'NONE'),(27,'Cartolina (White)','Office Supply','PC',0.00,0,0,'NONE'),(28,'Adjustable Punch','Office Supply','BOX',0.00,0,0,'KW-TRIO'),(29,'Staple ','Office Supply','PC',0.00,0,0,'ARROW'),(30,'Sharpener','Office Supply','PC',0.00,0,0,'ACURA5'),(31,'Scissors','Office Supply','PC',0.00,0,0,'AMSPEE'),(32,'Staple Wire 1/2 x 12mm','Office Supply','Box',0.00,0,0,'ARROW'),(33,'Long Bond Paper (Double A)','Office Supply','REAM',0.00,0,0,'DOUBLE A/LAMCO PAPER'),(34,'Photo Paper','Office Supply','REAM',0.00,0,0,'ACACIA/BERKELEY'),(35,'Parchment Paper','Office Supply','REAM',0.00,0,0,'EMERSON/BESTBUY'),(36,'Sticker Paper (3x4)','Office Supply','PC',0.00,0,0,'POST IT'),(37,'Sticker Paper (3x3)','Office Supply','PC',0.00,0,0,'HBW OFFICE'),(38,'Sticker Paper (8x11)','Office Supply','PC',0.00,0,0,'STRATAKOLOUR/JOLLY'),(39,'Specialty Paper','Office Supply','PC',0.00,0,0,'SQI/SUN'),(40,'Notebooks','Office Supply','PC',0.00,0,0,'DYNAMIC'),(41,'Columnar Books','Office Supply','PC',0.00,0,0,'VECO PRODUCT'),(42,'Board Paper','Office Supply','PC',0.00,0,0,'VECO'),(43,'Carbon Paper','Office Supply','PC',0.00,0,0,'COSH/CLUB'),(44,'Long Folder (Orange)','Office Supply','PC',0.00,0,0,'ADVANCE'),(45,'Long Folder (Blue)','Office Supply','PC',0.00,0,0,'ADVANCE'),(46,'Long Folder (Black)','Office Supply','PC',0.00,0,0,'ADVANCE'),(47,'Long Folder (Yellow)','Office Supply','PC',0.00,0,0,'ADVANCE'),(48,'Long Folder (Dark Blue)','Office Supply','PC',0.00,0,0,'ADVANCE'),(49,'Long Folder (Red)','Office Supply','PC',0.00,0,0,'ADVANCE'),(50,'Long Folder (Violet)','Office Supply','PC',0.00,0,0,'ADVANCE'),(51,'Short Folder (Dark Blue)','Office Supply','PC',0.00,0,0,'ADVANCE'),(52,'Short Folder (Orange)','Office Supply','PC',0.00,0,0,'ADVANCE'),(53,'Short Folder (Red)','Office Supply','PC',0.00,0,0,'ADVANCE'),(54,'Short Folder (Pink)','Office Supply','PC',0.00,0,0,'ADVANCE'),(55,'Short Folder (Green)','Office Supply','PC',0.00,0,0,'ADVANCE'),(56,'Short Folder (Violet)','Office Supply','PC',0.00,0,0,'ADVANCE'),(57,'Plastic Folder','Office Supply','PC',0.00,0,0,'EXPRESSIONS'),(58,'Clear Folder','Office Supply','PC',0.00,0,0,'NONE'),(59,'Pencil','Office Supply','BOX',0.00,0,0,'CHALLENGE'),(60,'Highlighter ','Office Supply','PC',0.00,0,0,'MARVY UCHIDA'),(61,'Permanent Marker (Red)','Office Supply','PC',0.00,0,0,'PILOT'),(62,'Permanent Marker (Black)','Office Supply','PC',0.00,0,0,'PILOT'),(63,'White Board Marker ','Office Supply','PC',0.00,0,0,'MONAMI'),(64,'Crayons','Office Supply','BOX',0.00,0,0,'AMSPEC'),(65,'Coloring Pen','Office Supply','PC',0.00,0,0,'LION CITY'),(66,'Ballpen (Blue)','Office Supply','PC',0.00,0,0,'PILOT'),(67,'Ballpen (Green)','Office Supply','PC',0.00,0,0,'PILOT'),(68,'Ballpen (Red)','Office Supply','PC',0.00,0,0,'PILOT'),(69,'Ballpen (Nataraj)','Office Supply','BOX',0.00,0,0,'NATARAJ'),(70,'Sign Pen (Blue)','Office Supply','PC',0.00,0,0,'PILOT/UNI-BALL/PENTEL'),(71,'Sign Pen (Black)','Office Supply','PC',0.00,0,0,'PENTEL/UNI0BALL'),(72,'Sign Pen (Red)','Office Supply','PC',0.00,0,0,'PENTEL'),(73,'Clear Book (Black)','Office Supply','PC',0.00,0,0,'BINDEMAX'),(74,'Clear Book (White)','Office Supply','PC',0.00,0,0,'BINDEMAX'),(75,'Clear Book (Green)','Office Supply','PC',0.00,0,0,'BINDEMAX'),(76,'Clear Book (Dark Green)','Office Supply','PC',0.00,0,0,'BINDEMAX'),(77,'Clear Book (Brown)','Office Supply','PC',0.00,0,0,'BINDEMAX'),(78,'View Binders','Office Supply','PC',0.00,0,0,'COMICS'),(79,'Transparent Zip Bag','Office Supply','PC',0.00,0,0,'DELI'),(80,'Long Envelope','Office Supply','PC',0.00,0,0,'NONE'),(81,'Short Envelope','Office Supply','PC',0.00,0,0,'NONE'),(82,'CD Case','Office Supply','BOX',0.00,0,0,'FILMAXEL/IMATION'),(83,'CD-R 700MB','Office Supply','PC',0.00,0,0,'SONY'),(84,'Printer Ribbon','Office Supply','BOX',0.00,0,0,'FUJITSU'),(85,'AVR','Office Supply','PC',0.00,0,0,'NONE'),(86,'Toner Kit (TK 354)','Office Supply','PC',0.00,0,0,'KYOCERA'),(87,'Toner (PNG 08 Toner)','Office Supply','PC',0.00,0,0,'CANON'),(88,'Ribbon Cartridge','Office Supply','PC',0.00,0,0,'EPSON'),(89,'Keyboard (4Tech)','Office Supply','PC',0.00,0,0,'A4TECH'),(90,'Trident','Office Supply','PC',0.00,0,0,'NONE'),(91,'APC (Battery Backup)','Office Supply','PC',0.00,0,0,'APC'),(92,'HP Deskjet 1000','Office Supply','PC',0.00,0,0,'HP'),(93,'Mouse Pad','Office Supply','PC',0.00,0,0,'MICROSOFT'),(94,'CD Sleeve','Office Supply','PC',0.00,0,0,'CHENSIN'),(95,'Canon 40','Office Supply','PC',0.00,0,0,'PIXMA CANON'),(96,'Canon 811','Office Supply','PC',0.00,0,0,'PIXMA CANON'),(97,'Canon 88','Office Supply','PC',0.00,0,0,'PIXMA CANON'),(98,'Canon 98','Office Supply','PC',0.00,0,0,'PIXMA CANON'),(99,'Media Pointer','Office Supply','PC',0.00,0,0,'GENIUS'),(100,'Integrative Presenter','Office Supply','PC',0.00,0,0,'ACER'),(101,'Envelope Pay Kraft','Office Supply','PC',0.00,0,0,'POINTER'),(102,'Printer Ink (T6641 Black)','Office Supply','PC',0.00,0,0,'EPSON'),(103,'Printer Ink (T6642 Cyan)','Office Supply','PC',0.00,0,0,'EPSON'),(104,'Printer Ink (T6643 Magenta)','Office Supply','PC',0.00,0,0,'EPSON'),(105,'Printer Ink (T6644 Yellow)','Office Supply','PC',0.00,0,0,'EPSON'),(106,'Diskettes','Office Supply','PC',0.00,0,0,'EMTEK/IMATION'),(107,'Mailing Long Window Envelope','Office Supply','BOX',0.00,0,0,'PAPERFOX'),(108,'Kliche','Office Supply','PC',0.00,0,0,'NON'),(109,'Photo Frames (Blue)','Office Supply','PC',0.00,0,0,'CRAFTIDEAS'),(110,'Photo Frames (Red)','Office Supply','PC',0.00,0,0,'CRAFTIDEAS'),(111,'Name Badge','Office Supply','BOX',0.00,0,0,'NONE'),(112,'Speaker (BXRB21)','Office Supply','BOX',0.00,0,0,'ALTEC'),(113,'Photo Album','Office Supply','PC',0.00,0,0,'K EVERYDAY'),(114,'Paper Weight','Office Supply','PC',0.00,0,0,'NONE'),(115,'Fire Extinguisher','Office Supply','PC',0.00,0,0,'SHUTTER - NEROMU ENTERPRISES COMPANY'),(116,'Glue Gun','Office Supply','PC',0.00,0,0,'NONE'),(117,'Poly Ribbon','Office Supply','PC',0.00,0,0,'WENDY'),(118,'Pail','Office Supply','PC',0.00,0,0,'HI-TOP'),(119,'MegaPhone (XV-`11 S/R)','Office Supply','PC',0.00,0,0,'MAX TECH'),(120,'Coffee Maker','Office Supply','PC',0.00,0,0,'DOWELL'),(121,'Duplicating Ink','Office Supply','PC',0.00,0,0,'NONE'),(122,'Liquid Wax','Office Supply','PC',0.00,0,0,'JOHNSON'),(123,'Mr. Muscle','Office Supply','PC',0.00,0,0,'NONE'),(124,'Air Freshener','Office Supply','PC',0.00,0,0,'NONE'),(125,'Dust Mask','Office Supply','PC',0.00,0,0,'GREENE USA'),(126,'Brush','Office Supply','PC',0.00,0,0,'HOUSEWELL'),(127,'Crosscut Saw','Office Supply','PC',0.00,0,0,'STANLEY'),(128,'Certification','Office Supply','PC',0.00,0,0,'NONE'),(129,'Printer (Epson)','Office Supply','PC',0.00,0,0,'EPSON/CANON'),(130,'Handle Bag','Office Supply','PC',0.00,0,0,'NONE'),(131,'Toilet Brush','Office Supply','PC',0.00,0,0,'CSI'),(132,'Wall Clock','Office Supply','PC',0.00,0,0,'QUARTZ'),(133,'Trash Can','Office Supply','PC',0.00,0,0,'NONE'),(134,'Map Handle','Office Supply','PC',0.00,0,0,'PENGUIN'),(135,'Map Head','Office Supply','PC',0.00,0,0,'PENGUIN'),(136,'Deeper','Office Supply','PC',0.00,0,0,'COSTSAVERS'),(137,'A4 Bond Paper','Office Supply','REAM',0.00,0,0,'ADVANCE/CLEARCOPY'),(138,'CORRECTION FLUID\r\n','Office Supply','PC',0.00,0,0,'NONE'),(139,'Mouse (Optical)\r\n','Office Supply\r\n','PC',0.00,0,0,'GENIUS'),(140,'Flash Drive\r\n','Office Supply\r\n','PC',0.00,0,0,'KINGSTON'),(141,'Rubber Band\r\n','Office Supply\r\n','PC',0.00,0,0,'POINTER'),(142,'Maxell Alkaline Battery (AAA)\r\n','Office Supply\r\n','PC',0.00,0,0,'MAXELL'),(143,'Maxell Alkaline Battery (AA)\r\n','Office Supply\r\n','PC',0.00,0,0,'MAXELL'),(144,'HDD\r\n','Office Supply\r\n','PC',0.00,0,0,'NONE'),(145,'Yellow Paper\r\n','Office Supply\r\n','REAM',0.00,0,0,'NONE'),(146,'Short Bond Paper\r\n','Office Supply\r\n','REAM',0.00,0,0,'ADVANCE'),(147,'Gloves\r\n','Office Supply\r\n','PC',0.00,0,0,'NONE'),(148,'Cutter\r\n','Office Supply\r\n','PC',0.00,0,0,'POINTER'),(149,'Calculator\r\n','Office Supply\r\n','PC',0.00,0,0,'CANON'),(150,'File Rack\r\n','Office Supply\r\n','PC',0.00,0,0,'NONE'),(151,'Ring Border\r\n','Office Supply\r\n','PC',0.00,0,0,'NONE'),(152,'Colored Paper\r\n','Office Supply\r\n','REAM',0.00,0,0,'SQI/SUN'),(153,'Storage Box','Office Supply','PC',0.00,0,0,'NONE'),(154,'Post It','Office Supply','PC',0.00,0,0,'POST IT'),(155,'Push Pins','Office Supply','PC',0.00,0,0,'NONE'),(156,'Eraser','Office Supply','PC',0.00,0,0,'');

/*Table structure for table `items_buom` */

DROP TABLE IF EXISTS `items_buom`;

CREATE TABLE `items_buom` (
  `item_buom_id` int(11) NOT NULL AUTO_INCREMENT,
  `itemNo` int(11) DEFAULT NULL,
  `base_qty` int(11) DEFAULT NULL,
  `base_unit` varchar(50) DEFAULT NULL,
  `equiv_qty` int(11) DEFAULT NULL,
  `equiv_unit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item_buom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `items_buom` */

insert  into `items_buom`(`item_buom_id`,`itemNo`,`base_qty`,`base_unit`,`equiv_qty`,`equiv_unit`) values (1,39,10,'PC',1,'PACK'),(3,39,100,'PC',1,'BOX'),(4,70,12,'PC',1,'BOX'),(5,71,12,'PC',1,'BOX'),(6,72,12,'PC',1,'BOX'),(10,10,12,'PC',1,'BOX'),(11,5,100,'PC',1,'BOX'),(12,83,50,'PC',1,'REAM'),(13,94,100,'PC',1,'REAM'),(14,106,10,'PC',1,'BOX'),(15,9,12,'PC',1,'BOX'),(16,0,0,'',0,'BOX'),(17,2,12,'PC',1,'BOX');

/*Table structure for table `items_buom_list` */

DROP TABLE IF EXISTS `items_buom_list`;

CREATE TABLE `items_buom_list` (
  `uomid` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) DEFAULT NULL,
  `unit_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uomid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `items_buom_list` */

insert  into `items_buom_list`(`uomid`,`unit_name`,`unit_description`) values (1,'BOX','Box'),(2,'REAM','Ream'),(3,'PC','Piece'),(4,'BOTTLE','Bottle'),(5,'PACK','Pack');

/*Table structure for table `requisition_details` */

DROP TABLE IF EXISTS `requisition_details`;

CREATE TABLE `requisition_details` (
  `reqid` bigint(20) NOT NULL AUTO_INCREMENT,
  `requisition_no` varchar(100) DEFAULT NULL,
  `requisition_date` date DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `logtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `requisition_status` varchar(100) NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `requisition_details` */

insert  into `requisition_details`(`reqid`,`requisition_no`,`requisition_date`,`eid`,`userID`,`logtime`,`requisition_status`) values (2,'RIS2017-00001','0000-00-00',34,1,'2017-02-06 08:49:42','NONE');

/*Table structure for table `requisition_items` */

DROP TABLE IF EXISTS `requisition_items`;

CREATE TABLE `requisition_items` (
  `reqitemsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `requisition_no` varchar(100) DEFAULT NULL,
  `itemno` bigint(20) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `update_status` int(11) DEFAULT '0',
  PRIMARY KEY (`reqitemsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `requisition_items` */

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplierID` bigint(20) NOT NULL AUTO_INCREMENT,
  `supName` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL DEFAULT 'NONE',
  `contactNo` varchar(30) NOT NULL DEFAULT 'NONE',
  `TIN` varchar(20) NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `suppliers` */

insert  into `suppliers`(`supplierID`,`supName`,`address`,`contactNo`,`TIN`) values (1,'Morning Star General Merchandise','Governor Ortigas, San Fernando, 2500 La Union, Philippine','+63 72 242 5115','NONE'),(2,'National Bookstore','Manna Mall, Pagdaraoan Biday Road, San Fernando, La Union','NONE','NONE'),(3,'PC 4 Me','San Fernando City La Union','NONE','NONE'),(4,'SKM','Sevilla San Fernando City, La Union','','NONE'),(5,'Insystech (Aquino Square)','Aquino Square, City of San Fernando La Union','','NONE');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `userType` varchar(10) NOT NULL DEFAULT 'staff',
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`userID`,`userName`,`password`,`userType`,`status`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin','1'),(5,'lynnette','5f4dcc3b5aa765d61d8327deb882cf99','admin','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
