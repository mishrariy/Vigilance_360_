/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.0.27-community-nt : Database - dashboard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dashboard` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dashboard`;

/*Table structure for table `detection_table` */

DROP TABLE IF EXISTS `detection_table`;

CREATE TABLE `detection_table` (
  `detection_id` int(11) NOT NULL auto_increment,
  `input_video_path` varchar(255) default NULL,
  `output_video_path` varchar(255) default NULL,
  `camera_location` varchar(100) default NULL,
  `detection_source` varchar(100) default NULL,
  `detection_starting_time` int(11) default NULL,
  `total_detected_person` int(11) default NULL,
  `detection_statistics` text,
  `occupancy_anomaly` text,
  `weapon_detected` tinyint(1) default NULL,
  `detection_completion_time` int(11) default NULL,
  `graph_path` varchar(255) default NULL,
  `created_on` int(11) default NULL,
  `modified_on` int(11) default NULL,
  `created_by` int(11) default NULL,
  `modified_by` int(11) default NULL,
  PRIMARY KEY  (`detection_id`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`),
  CONSTRAINT `detection_table_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `login_table` (`login_id`),
  CONSTRAINT `detection_table_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `login_table` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detection_table` */

/*Table structure for table `login_table` */

DROP TABLE IF EXISTS `login_table`;

CREATE TABLE `login_table` (
  `login_id` int(11) NOT NULL auto_increment,
  `login_username` varchar(100) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `created_on` int(11) default NULL,
  `modified_on` int(11) default NULL,
  PRIMARY KEY  (`login_id`),
  UNIQUE KEY `login_username` (`login_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_table` */

insert  into `login_table`(`login_id`,`login_username`,`login_password`,`created_on`,`modified_on`) values (1,'admin','$2b$12$0Hq33BcO7EVNh6ExvtRElOR2Y.myQx9C6dc7agu2WYV8SSlxOZusq',1713800919,1713800919);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
