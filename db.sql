/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.51-38.1-log : Database - eshopping-portal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eshopping-portal` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eshopping-portal`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`CID`,`CategoryName`) values (1,'Food'),(2,'Brand'),(3,'Clothing'),(4,'Shoes'),(5,'Hat'),(6,'Stationary'),(7,'Fruit'),(8,'Gift'),(9,'Accessories'),(10,'Camera'),(11,'Computer'),(12,'Phone');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(30) DEFAULT NULL,
  `CustomerMobile` varchar(10) DEFAULT NULL,
  `LastActive` date DEFAULT NULL,
  `BillAmount` double DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `customers` */

insert  into `customers`(`CID`,`CustomerName`,`CustomerMobile`,`LastActive`,`BillAmount`,`BillDate`) values (1,'mohit','7007502987',NULL,999,'2019-04-22'),(2,'shweta','123',NULL,60000,'2019-05-07'),(3,'shwet singh','3456',NULL,50000,'2019-05-14'),(4,'shw singh','65432',NULL,60000,'2019-05-15'),(5,'Ram','6789355666',NULL,50000,'2020-02-19');

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `FID` int(11) NOT NULL AUTO_INCREMENT,
  `Feedback` varchar(2000) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `feedbacks` */

insert  into `feedbacks`(`FID`,`Feedback`,`Name`,`Mobile`,`Email`,`CreatedOn`) values (1,'asdasdasdasdasd','hello',NULL,'hello@gmail.com','2018-03-26 22:44:26'),(2,'asd asd asd asd ','hello',NULL,'mohit.xxx@gmail.com','2018-03-26 22:55:27'),(3,'asdawerf rf rfr fasef','new',NULL,'admin@gmail.com','2019-03-31 16:23:00'),(4,'Hh','Shivansh',NULL,'shivanshgmail@com','2019-04-04 13:29:32'),(5,'Husbavskhv','Shreya',NULL,'fantasy.shreya@gmailcom','2019-05-07 08:26:30'),(6,'ggv h','sss',NULL,'sss@gmaicom','2019-05-07 08:29:16'),(7,'ggv h','sss',NULL,'sss@gmaicom','2019-05-07 08:29:32'),(8,'sgjjhfkjgjhkkhkjnk','sakhi',NULL,'ad@gmail.com','2019-05-07 08:35:36'),(9,'lkjhh','yuiijj',NULL,'sgjk@gmailcom','2019-05-07 08:36:03'),(10,'wheguifyuhjv,u','sa099',NULL,'asa@gmail.com','2019-05-07 16:29:30'),(11,'wheguifyuhjv,u','sa099',NULL,'asa@gmail.com','2019-05-07 16:29:30'),(12,'login nhi ho rhaa hai','arohi',NULL,'arohi@gmail.com','2019-10-17 01:10:41'),(13,'asd asdaf asdf adsf adf sdf ','new feedback',NULL,'user@user.com','2020-02-21 01:18:22');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `OID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderNumber` int(11) DEFAULT '0',
  `PID` int(11) DEFAULT NULL,
  `UID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalCost` bigint(20) DEFAULT NULL,
  `PurchasingDate` date DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`OID`,`OrderNumber`,`PID`,`UID`,`Quantity`,`TotalCost`,`PurchasingDate`) values (30,1,1,1,3,1500,'2018-03-11'),(31,1,2,1,10,3000,'2018-03-11'),(32,1,5,1,8,6312,'2018-03-11'),(33,2,5,1,2,1578,'2018-03-11'),(34,2,6,1,6,2400,'2018-03-11'),(35,2,7,1,2,600,'2018-03-11'),(36,3,1,2,2,1000,'2018-03-11'),(37,3,3,2,4,8000,'2018-03-11'),(38,3,5,2,1,789,'2018-03-11'),(39,3,6,2,3,1200,'2018-03-11'),(40,3,12,2,3,9000,'2018-03-11'),(41,4,1,1,2,1000,'2018-03-27'),(42,4,2,1,3,900,'2018-03-27'),(43,4,3,1,4,8000,'2018-03-27'),(44,5,8,1,1,0,'2018-03-27'),(45,6,9,1,2,200,'2018-03-27'),(46,7,3,1,1,2000,'2018-03-27'),(47,7,9,1,1,100,'2018-03-27'),(48,8,7,1,1,300,'2018-03-29'),(49,9,2,1,2,3998,'2018-04-19'),(50,10,7,2,1,71000,'2018-04-19'),(51,11,2,6,1,1999,'2018-04-22'),(52,12,12,8,1,399,'2018-04-23'),(53,13,12,8,1,399,'2018-04-24'),(54,14,6,9,1,31000,'2018-04-24'),(55,15,6,9,1,31000,'2018-04-24'),(56,16,5,8,1,699,'2018-04-24'),(57,17,7,10,1,71000,'2018-04-24'),(58,18,8,10,1,45000,'2018-04-24'),(59,19,6,10,1,31000,'2018-04-24'),(60,19,7,10,1,71000,'2018-04-24'),(61,20,4,8,1,21000,'2018-04-25'),(62,21,4,8,1,21000,'2018-04-25'),(63,22,8,8,1,45000,'2018-04-25'),(64,23,3,11,1,1999,'2018-04-25'),(65,23,2,11,1,15000,'2018-04-25'),(66,23,9,11,1,56000,'2018-04-25'),(67,24,3,11,1,15000,'2018-04-25'),(68,25,3,12,1,15000,'2018-04-25'),(69,26,2,15,1,1999,'2018-04-26'),(70,27,2,18,1,1999,'2018-05-07'),(71,28,7,18,1,71000,'2018-05-08'),(72,29,3,18,1,15000,'2018-05-08'),(73,30,2,18,1,1999,'2018-05-08'),(74,31,8,18,2,90000,'2018-05-09'),(75,32,11,19,1,7400,'2018-05-28');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(30) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Cost` int(11) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'Pending',
  `UID` int(11) DEFAULT '1',
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`PID`,`ProductName`,`Type`,`Cost`,`Description`,`Brand`,`Status`,`UID`) values (1,'Product','Brand',999,'awesom product','brand','Pending',1),(2,'Woofer 5.1','Accessories',1999,'Intex New Series of Pc Speakers','Intex','Pending',1),(3,'DSLR Camera','Camera',15000,'Canon launched new Shades of Colors','Canon','Pending',1),(4,'Smart Phone','Accessories',21000,'Samsung New Smart Phone in Market','Samsung','Pending',1),(6,'Laptop','Accessories',31000,'New Laptop Launched by HP','HP','Pending',1),(7,'Laptop','Computer',71000,'Fully Featured new Gadget for dedicated People','Apple','Pending',1),(8,'Dell Notebook Laptop win10','Computer',45000,'New product in market ','Dell','Pending',1),(9,'Lenovo Notebook Laptop win10','Clothing',56000,'Lenovo Notebook Laptop win10','Lenovo ','Pending',1),(10,'Samsung Smart Phone','Phone',15000,'Samsung New Smart Phone full Feratured  3GB RAM, 16GB Memory','Samsung ','Pending',1),(18,'new ppp','Sports',123,'desc','','Pending',24),(19,'Mobile','Electronics',50000,'Nice Gadget ','','Pending',24),(21,'TV','Electronics',10000,'Full HD TV ','','Pending',24),(22,'Glass','Grocery',200,'Nice Designs Royal','','Pending',26),(24,'Wine Glass','Grocery',300,'New Thing','','Pending',26);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  `UserType` varchar(10) DEFAULT 'User',
  `Mobile` varchar(15) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`UID`,`Name`,`Email`,`PWD`,`UserType`,`Mobile`,`Address`) values (1,'Mohit','admin@gmail.com','aa','Admin','7599339273','f-61 samar Vihar Colony'),(2,'rahul','rkrathore2097@gmail.com','12345','User','7007266080','abcd'),(3,'ghj','gh@gmail.com','ghf','User','gh','gfhj'),(4,'fghj','ghj@gmail.com','gfhj','User','ghj','gfhj'),(5,'Pragya ','pragya2416@gmail.com','pragya','User','9169133840','Gayatri nagar'),(6,'suraj','suraj@gmail.com','12345','User','9628820374','abc'),(7,'Chhaya Rawat','chhayarawat001@gmail.com','9005795317','User','9005795317','indira nagar'),(8,'Deepak','deepak@gmail.com','0000','User','9628820374','LKO'),(9,'peeyush','mmm@gmail.com','12345','User','7906341275','jjjjj'),(10,'raj','raj@gmail.com','12345','User','7271085662','sac'),(11,'adfc','abc@gmail.com','000','User','9622887421','14lko'),(12,'sandeep','sandy2342357@gmail.com','1234','User','7607688434','abcd'),(13,'hhctykhg','ad@gmail.com','00000','User','6458565198','hgvyh'),(14,'raj','rajeevranjan8400@gmail.com','123456','User','8869526720','rahimnagr'),(15,'Suraj','zzz@gmail.com','1111','User','9741265315','jhfuy'),(16,'SAMRAT','LAVVI52@GMAIL.COM','123456','User','7080480048','LUCKNOW'),(17,'rajveer','raj@gmail.com','rajveer','User','8869526720','529/127 '),(18,'deepak','aaa@gmail.com','0011','User','9653054355','d'),(19,'aman','aman@gmail.com','54321','User','8858991159','xzcdvdg'),(20,'BHAVIN','vermabhavin@gmail.com','qwerty','User','9044366710','Lucknow'),(21,'suraj','suraj009@gmail.com','54321','User','9628820374','sdfs'),(24,'new','new@gmail.com','aa','User','1231231231','asd'),(25,'Ankit','ankit@gmail.com','aa','User','9451712232','Rajaji Puram'),(26,'Shweta','shweta@gamil.com','aa','User','9598963792','Home Location Lucknow'),(27,'deep','gfdgf@gmil.com','shwe','User','9888878978','cfgfhjvfkjh'),(28,'gif','shwe@gmil.com','shw','User','65465676587','l-678'),(29,'shubh','shweta@gmail.com','shweta','User','8787041965','wertyudfghghhh'),(30,'ss','ss','ss','User','ss','ss'),(31,'s','s','s','User','s','s'),(32,'ffhgjhk','shwe@g','123','User','9454346467','l-13'),(33,'123434656','ss@g','111','User','6234567890','fsdgfh'),(34,'sh12','sh@g','11','User','9453386476','fgfhgh'),(35,'ss12','sss@g','11','User','6789451233','fetdy'),(36,'shweta singh','ss1@gmail.in','11','User','9999999999','erwtr'),(37,'Saloni','ss2@gmail.com','9651589880','User','9965236789','Abcds'),(38,'Shubham Pandey','shubhampandeysp472@gmail.com','shubham1234','User','7905798752','Simt college ,dewa road ,aptron chairman'),(39,'Jyoti Kushwaha','jyotikushwaha4458@gmail.com','jyoti4458@','User','9453422894','Allahabad');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
