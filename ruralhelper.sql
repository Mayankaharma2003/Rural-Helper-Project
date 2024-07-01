/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.0.37-community-nt : Database - ruralhelper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ruralhelper` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ruralhelper`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `userid` varchar(20) default NULL,
  `name` varchar(30) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert  into `adminlogin`(`userid`,`name`,`password`) values ('Ashu@8246','Ashutosh Singh Goud','12345'),('Prayas@123','Prayas Jain','1234');

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `name` varchar(50) default NULL,
  `contactno` varchar(13) default NULL,
  `subject` varchar(30) default NULL,
  `message` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contactus` */

insert  into `contactus`(`name`,`contactno`,`subject`,`message`) values ('Jay Kishan','9783216540','Agriculture Machinery','Humare paas machines nahi hai toh humare liye bhi kuch features hai kya ?');

/*Table structure for table `edustudent` */

DROP TABLE IF EXISTS `edustudent`;

CREATE TABLE `edustudent` (
  `sname` varchar(30) default NULL,
  `scontactno` varchar(13) default NULL,
  `state` varchar(20) default NULL,
  `district` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `edustudent` */

insert  into `edustudent`(`sname`,`scontactno`,`state`,`district`) values ('Prayas','741829630','Madhya Pradesh','Indore'),('Ashu','798454984','Madhya Pradesh','Indore'),('Akshat Singh Rathod','7418529630','Madhya Pradesh','Dewas'),('Ashu','879865213','Madhya Pradesh','Indore');

/*Table structure for table `eduteacher` */

DROP TABLE IF EXISTS `eduteacher`;

CREATE TABLE `eduteacher` (
  `email` varchar(50) default NULL,
  `tname` varchar(30) default NULL,
  `subjects` varchar(30) default NULL,
  `state` varchar(20) default NULL,
  `district` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `eduteacher` */

insert  into `eduteacher`(`email`,`tname`,`subjects`,`state`,`district`,`password`) values ('akshat123@gmail.com','Akshat Singh Rathod','All','Madhya Pradesh','Dewas','12345'),('jaikishan123@gmail.com','Jay Kishan','All','Madhya Pradesh','Dewas','1212'),('harshita123@gmail.com','Harshita Verma','All','Madhya Pradesh','Indore','1122');

/*Table structure for table `machineowner` */

DROP TABLE IF EXISTS `machineowner`;

CREATE TABLE `machineowner` (
  `tname` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `machinetype` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `district` varchar(30) default NULL,
  `password` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `machineowner` */

insert  into `machineowner`(`tname`,`email`,`machinetype`,`state`,`district`,`password`) values ('Ramesh Kumar','ramesh123@gmail.com','BoreWell Machine','Madhya Pradesh','Dewas','12120');

/*Table structure for table `machineuser` */

DROP TABLE IF EXISTS `machineuser`;

CREATE TABLE `machineuser` (
  `uname` varchar(30) default NULL,
  `ucontactno` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `district` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `machineuser` */

insert  into `machineuser`(`uname`,`ucontactno`,`state`,`district`) values ('Vijay Singh','852937410','Madhya Pradesh','Bhopal'),('Jai Kumar','875465132','Madhya Pradesh','indore'),('Ramesh Kumar','6549871230','Madhya Pradesh','Indore ');

/*Table structure for table `publichealth` */

DROP TABLE IF EXISTS `publichealth`;

CREATE TABLE `publichealth` (
  `State` varchar(50) default NULL,
  `District` varchar(50) default NULL,
  `Hosptals` varchar(50) default NULL,
  `HPhone` varchar(13) default NULL,
  `HAddress` varchar(100) default NULL,
  `Sanitaries` varchar(50) default NULL,
  `SanAddress` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `publichealth` */

insert  into `publichealth`(`State`,`District`,`Hosptals`,`HPhone`,`HAddress`,`Sanitaries`,`SanAddress`) values ('Andhra Pradesh','chittoor','chittoor government hospital','8725648912','638V+V88, Church St, Thotapalyam, Chittoor, Andhra Pradesh 517001','Chittoor Toilets','6482+RR4, KR Palli, Chittoor, Andhra Pradesh 517001'),('Andhra Pradesh','chittoor',NULL,NULL,NULL,'SBM toilets','Jail Khana St, Mittoor, Chittoor, Andhra Pradesh 517001'),('Andhra Pradesh','chittoor',NULL,NULL,NULL,'SBM toilets','Church St, Thotapalyam, Chittoor, Andhra Pradesh 517001'),('Andhra Pradesh','Guntur','government hospital','9517821463','7FR3+VHV, Grand Trunk Rd, Old Guntur, Guntur, Andhra Pradesh 522001','public toilets','7CVV+5VM, Sri Venkateswara Vignana Mandir Rd, Sambasiva Pet, Guntur, Andhra Pradesh 522001'),('Andhra Pradesh','Guntur','government general hospital','7236541983','7CXV+Q6M, Sambasiva Pet, Guntur, Andhra Pradesh 522001','SBM toilets','Opp. Yadala Vari Satram Kothapet Road, Vijaya Talkies Rd, Kothapeta, Guntur, Andhra Pradesh 522601'),('Andhra Pradesh','Guntur','New general government hospital','9346872516','8C2Q+P4C, 4th Ln, Brodipet, Guntur, Andhra Pradesh 522002','SBM toilets','Railway Station, Millennium Block Internal Rd, opp. Guntur, Sambasiva Pet, Guntur, Andhra Pradesh 52'),('Andhra Pradesh','Kurnool','government general health hospital',NULL,'Budhwarpet Rd, Budhawara Peta, Alluri Sitarama Raju Nagar, Kurnool, Andhra Pradesh 518002','public toilets','R25R+FM7, Sri Rama Nagar Main Rd, Sri Rama Nagar, Maddur Nagar, Kurnool, Andhra Pradesh 518002'),('Andhra Pradesh','Kurnool','New general government hospital',NULL,'R29Q+66J, Kurnool, Andhra Pradesh 518002','SBM toilets','R2PV+9GJ, Kotha Peta, Kurnool, Andhra Pradesh 518004'),('Andhra Pradesh','Kurnool','New general government hospital',NULL,'R29Q+66J, Kurnool, Andhra Pradesh 518002','SBM toilets','R2PV+9GJ, Kotha Peta, Kurnool, Andhra Pradesh 518004'),('Andhra Pradesh','Srikakulam','Srirampuram Govt Hospital',NULL,'Main Rd, Pedagantyada, Visakhapatnam, Andhra Pradesh 531127','Public toilets','GURUDWAR JUNCTION, NRI Hospital Rd, opp. IDBI Bank, TPT Colony, Balayya Sastri Layout, Seethammadara'),('Andhra Pradesh','Srikakulam','Srirampuram Govt Hospital',NULL,'Main Rd, Pedagantyada, Visakhapatnam, Andhra Pradesh 531127','Public toilets','GURUDWAR JUNCTION, NRI Hospital Rd, opp. IDBI Bank, TPT Colony, Balayya Sastri Layout, Seethammadara'),('Andhra Pradesh','Srikakulam','Srirampuram Govt Hospital',NULL,'Main Rd, Pedagantyada, Visakhapatnam, Andhra Pradesh 531127','Public toilets','GURUDWAR JUNCTION, NRI Hospital Rd, opp. IDBI Bank, TPT Colony, Balayya Sastri Layout, Seethammadara'),('Andhra Pradesh','Parvathipuram Manyam','Area hospital',NULL,'QCJG+MPJ, Parvathipuram, Andhra Pradesh 535501','SBM Toilet','RTC Bus Complex, Parvathipuram, Andhra Pradesh 535501'),('Andhra Pradesh','Parvathipuram Manyam','Area hospital',NULL,'QCJG+MPJ, Parvathipuram, Andhra Pradesh 535501','SBM Toilet','RTC Bus Complex, Parvathipuram, Andhra Pradesh 535501'),('Andhra Pradesh','Parvathipuram Manyam','Area hospital',NULL,'QCJG+MPJ, Parvathipuram, Andhra Pradesh 535501','SBM Toilet','RTC Bus Complex, Parvathipuram, Andhra Pradesh 535501'),('Andhra Pradesh','Visakhapatnam','Srirampuram Govt Hospital',NULL,'Main Rd, Pedagantyada, Visakhapatnam, Andhra Pradesh 531127','SBM Toilet','Waltair Apsrtc Depot Road, Lawsonsbay Colony Beach Road, Visakhapatnam, Visakhapatnam, Andhra Prades'),('Andhra Pradesh','Visakhapatnam','Srirampuram Govt Hospital',NULL,'Main Rd, Pedagantyada, Visakhapatnam, Andhra Pradesh 531127','SBM Toilet','Waltair Apsrtc Depot Road, Lawsonsbay Colony Beach Road, Visakhapatnam, Visakhapatnam, Andhra Prades'),('Andhra Pradesh','Visakhapatnam','Srirampuram Govt Hospital',NULL,'Main Rd, Pedagantyada, Visakhapatnam, Andhra Pradesh 531127','SBM Toilet','Waltair Apsrtc Depot Road, Lawsonsbay Colony Beach Road, Visakhapatnam, Visakhapatnam, Andhra Prades'),('Andhra Pradesh','Anakapalli','NTR Government Hospital,Anakapalle',NULL,'Poolbagh Rd, Anakapalle, Andhra Pradesh 531001','Public Toilets','M2X4+6V6, Laxmi Devi Peta, Anakapalle, Andhra Pradesh 531001'),('Andhra Pradesh','Anakapalli','NTR Government Hospital,Anakapalle',NULL,'Poolbagh Rd, Anakapalle, Andhra Pradesh 531001','Public Toilets','M2X4+6V6, Laxmi Devi Peta, Anakapalle, Andhra Pradesh 531001'),('Andhra Pradesh','Anakapalli','NTR Government Hospital,Anakapalle',NULL,'Poolbagh Rd, Anakapalle, Andhra Pradesh 531001','Public Toilets','M2X4+6V6, Laxmi Devi Peta, Anakapalle, Andhra Pradesh 531001'),('Andhra Pradesh','Kakinada','Government General Hospital',NULL,'Kakinada, Andhra Pradesh 533001','Public toilets','X69X+892, Dairy Farm Rd, Kannayya Kapu Nagar, Kakinada, Andhra Pradesh 533003'),('Andhra Pradesh','Kakinada','Government General Hospital',NULL,'Kakinada, Andhra Pradesh 533001','Public toilets','X69X+892, Dairy Farm Rd, Kannayya Kapu Nagar, Kakinada, Andhra Pradesh 533003'),('Andhra Pradesh','Kakinada','Government General Hospital',NULL,'Kakinada, Andhra Pradesh 533001','Public toilets','X69X+892, Dairy Farm Rd, Kannayya Kapu Nagar, Kakinada, Andhra Pradesh 533003'),('Andhra Pradesh','Eluru','District Hospital - Eluru',NULL,'P37V+HM7, Islampet, Eluru, Andhra Pradesh 534006','Public toilets tangellamudi','P4C5+6CV, Bada Mahalla, Lunani Nagar, Eluru, Andhra Pradesh 534005'),('Andhra Pradesh','Eluru','District Hospital - Eluru',NULL,'P37V+HM7, Islampet, Eluru, Andhra Pradesh 534006','Public toilets tangellamudi','P4C5+6CV, Bada Mahalla, Lunani Nagar, Eluru, Andhra Pradesh 534005'),('Andhra Pradesh','Eluru','District Hospital - Eluru',NULL,'P37V+HM7, Islampet, Eluru, Andhra Pradesh 534006','Public toilets tangellamudi','P4C5+6CV, Bada Mahalla, Lunani Nagar, Eluru, Andhra Pradesh 534005'),('Andhra Pradesh','Krishna','Govt. Hosptial',NULL,'7429+8XJ, Kappaladoddi, Andhra Pradesh 521149','SBM Toilet','High School Rd, Naidupet, Nehru Nagar, Krishanlanka, Vijayawada, Andhra Pradesh 520013'),('Andhra Pradesh','Krishna','Govt. Hosptial',NULL,'7429+8XJ, Kappaladoddi, Andhra Pradesh 521149','SBM Toilet','High School Rd, Naidupet, Nehru Nagar, Krishanlanka, Vijayawada, Andhra Pradesh 520013'),('Andhra Pradesh','Krishna','Govt. Hosptial',NULL,'7429+8XJ, Kappaladoddi, Andhra Pradesh 521149','SBM Toilet','High School Rd, Naidupet, Nehru Nagar, Krishanlanka, Vijayawada, Andhra Pradesh 520013'),('Andhra Pradesh','Palnadu','Government Area Hospital',NULL,'62PX+9CP, Palnadu Rd, Ameensaheb Palem, Arundelpet, Narasaraopeta, Andhra Pradesh 522601','Public Toilets','GM8C+92M, Gunadala, Vijayawada, Andhra Pradesh 520008'),('Andhra Pradesh','Palnadu','Government Area Hospital',NULL,'62PX+9CP, Palnadu Rd, Ameensaheb Palem, Arundelpet, Narasaraopeta, Andhra Pradesh 522601','Public Toilets','GM8C+92M, Gunadala, Vijayawada, Andhra Pradesh 520008'),('Andhra Pradesh','Palnadu','Government Area Hospital',NULL,'62PX+9CP, Palnadu Rd, Ameensaheb Palem, Arundelpet, Narasaraopeta, Andhra Pradesh 522601','Public Toilets','GM8C+92M, Gunadala, Vijayawada, Andhra Pradesh 520008'),('Andhra Pradesh','Bapatla','Srujana hospital',NULL,'Unnamed Road, 13th Ward, Satyannarayana Puram, Bapatla, Andhra Pradesh 522101','SBM Toilet','Bus Stand, Near, Satyannarayana Puram, Bapatla, Andhra Pradesh 522101'),('Andhra Pradesh','Bapatla','Srujana hospital',NULL,'Unnamed Road, 13th Ward, Satyannarayana Puram, Bapatla, Andhra Pradesh 522101','SBM Toilet','Bus Stand, Near, Satyannarayana Puram, Bapatla, Andhra Pradesh 522101'),('Andhra Pradesh','Bapatla','Srujana hospital',NULL,'Unnamed Road, 13th Ward, Satyannarayana Puram, Bapatla, Andhra Pradesh 522101','SBM Toilet','Bus Stand, Near, Satyannarayana Puram, Bapatla, Andhra Pradesh 522101'),('Andhra Pradesh','Prakasham','Govt Hospital Of Mokshagundam',NULL,'F36C+R3H, Andhra Pradesh 523334','Public Toilet','F3X4+8H6, Santhapet, Ongole, Andhra Pradesh 523001'),('Andhra Pradesh','Prakasham','Govt Hospital Of Mokshagundam',NULL,'F36C+R3H, Andhra Pradesh 523334','Public Toilet','F3X4+8H6, Santhapet, Ongole, Andhra Pradesh 523001'),('Andhra Pradesh','Prakasham','Govt Hospital Of Mokshagundam',NULL,'F36C+R3H, Andhra Pradesh 523334','Public Toilet','F3X4+8H6, Santhapet, Ongole, Andhra Pradesh 523001'),('Andhra Pradesh','YSR','Government General Hospital Kadapa',NULL,'1/2579-1, Nvr Towers, Besides, Rajiv Park Rd, A.P.H.B Colony, Kadapa, Andhra Pradesh 516001','Public Toilets Kadapa','Room No. 1, Municipal Balaji Complex, Madras Rd, Kadapa, Andhra Pradesh 516001'),('Andhra Pradesh','YSR','Government General Hospital Kadapa',NULL,'1/2579-1, Nvr Towers, Besides, Rajiv Park Rd, A.P.H.B Colony, Kadapa, Andhra Pradesh 516001','Public Toilets Kadapa','Room No. 1, Municipal Balaji Complex, Madras Rd, Kadapa, Andhra Pradesh 516001'),('Andhra Pradesh','YSR','Government General Hospital Kadapa',NULL,'1/2579-1, Nvr Towers, Besides, Rajiv Park Rd, A.P.H.B Colony, Kadapa, Andhra Pradesh 516001','Public Toilets Kadapa','Room No. 1, Municipal Balaji Complex, Madras Rd, Kadapa, Andhra Pradesh 516001'),('Andhra Pradesh','Tirupati','Govt. Maternity Hospital',NULL,'JCQ5+W6M, Tirupati - Pakala Line, Sri Padmavati Mahila Visvavidyalayam, Tirupati, Andhra Pradesh 517','Public toilets','FR88+GPJ, Hussain Miah Colony, Ravindra Nagar, Kadapa, Andhra Pradesh 516001'),('Andhra Pradesh','Tirupati','Govt. Maternity Hospital',NULL,'JCQ5+W6M, Tirupati - Pakala Line, Sri Padmavati Mahila Visvavidyalayam, Tirupati, Andhra Pradesh 517','Public toilets','FR88+GPJ, Hussain Miah Colony, Ravindra Nagar, Kadapa, Andhra Pradesh 516001'),('Andhra Pradesh','Tirupati','Govt. Maternity Hospital',NULL,'JCQ5+W6M, Tirupati - Pakala Line, Sri Padmavati Mahila Visvavidyalayam, Tirupati, Andhra Pradesh 517','Public toilets','FR88+GPJ, Hussain Miah Colony, Ravindra Nagar, Kadapa, Andhra Pradesh 516001'),('Arunachal Pradesh','ANJAW','District Hospital',NULL,'3GJ5+WCJ, Swami Camp, Dist, Anjaw, Hayuliang, Arunachal Pradesh',NULL,NULL),('Arunachal Pradesh','ANJAW','Community Health Centre, Hawai',NULL,'VQQX+2MX, Hawai, Arunachal Pradesh 792104',NULL,NULL),('Arunachal Pradesh','ANJAW','Community Health Centre, Hawai',NULL,'VQQX+2MX, Hawai, Arunachal Pradesh 792104',NULL,NULL),('Arunachal Pradesh','CHANGLANG','District Hospital',NULL,'4PQQ+PGF, Town Rd, Changlang, Arunachal Pradesh 792120','SBM Toilet','field colony, 26.885192,95.321225, Khonsa - Longding Rd, Arunachal Pradesh 792131'),('Arunachal Pradesh','CHANGLANG','District Hospital',NULL,'4PQQ+PGF, Town Rd, Changlang, Arunachal Pradesh 792120','SBM Toilet','field colony, 26.885192,95.321225, Khonsa - Longding Rd, Arunachal Pradesh 792131'),('Arunachal Pradesh','CHANGLANG','District Hospital',NULL,'4PQQ+PGF, Town Rd, Changlang, Arunachal Pradesh 792120','SBM Toilet','field colony, 26.885192,95.321225, Khonsa - Longding Rd, Arunachal Pradesh 792131'),('Arunachal Pradesh','dibang valley','Government Hospital Loiliang',NULL,'X5JF+XW4, Tezu Lohitpur Rd, Arunachal Pradesh 792001','Public Toilet','4RPR+QXW, Mekba, Arunachal Pradesh 792110'),('Arunachal Pradesh','dibang valley','Government Hospital Loiliang',NULL,'X5JF+XW4, Tezu Lohitpur Rd, Arunachal Pradesh 792001','Public Toilet','4RPR+QXW, Mekba, Arunachal Pradesh 792110'),('Arunachal Pradesh','dibang valley','Government Hospital Loiliang',NULL,'X5JF+XW4, Tezu Lohitpur Rd, Arunachal Pradesh 792001','Public Toilet','4RPR+QXW, Mekba, Arunachal Pradesh 792110'),('Arunachal Pradesh','Kamle','District Hospital',NULL,'Kara Dadi, Palin, Arunachal Pradesh 791118',NULL,NULL),('Arunachal Pradesh','Kamle','District Hospital',NULL,'Kara Dadi, Palin, Arunachal Pradesh 791118',NULL,NULL),('Arunachal Pradesh','Kamle','District Hospital',NULL,'Kara Dadi, Palin, Arunachal Pradesh 791118',NULL,NULL),('Arunachal Pradesh','Lohit district','ITBP Critical Care Hospital',NULL,'2643+F7M, Lohitpur, Arunachal Pradesh 792001',NULL,NULL),('Arunachal Pradesh','Lohit district','ITBP Critical Care Hospital',NULL,'2643+F7M, Lohitpur, Arunachal Pradesh 792001',NULL,NULL),('Arunachal Pradesh','Lohit district','ITBP Critical Care Hospital',NULL,'2643+F7M, Lohitpur, Arunachal Pradesh 792001',NULL,NULL),('Assam','Guwahati','Government Hospital',NULL,'4RJQ+WPH, Batahguli, Guwahati, Assam 781037','SBM Toilet','Mahapurush Srimanta Sankardev Path, GMC Ward Number 44, Dispur, Nayanpur, Guwahati, Assam 781006'),('Assam','Guwahati','Government Hospital',NULL,'4RJQ+WPH, Batahguli, Guwahati, Assam 781037','SBM Toilet','Mahapurush Srimanta Sankardev Path, GMC Ward Number 44, Dispur, Nayanpur, Guwahati, Assam 781006'),('Assam','Guwahati','Government Hospital',NULL,'4RJQ+WPH, Batahguli, Guwahati, Assam 781037','SBM Toilet','Mahapurush Srimanta Sankardev Path, GMC Ward Number 44, Dispur, Nayanpur, Guwahati, Assam 781006'),('Assam','Dibrugarh','Dibrugarh State Hospital',NULL,'FWQ6+2XR, Dibrugarh, Assam 786001','Dibrugarh Public Toilet','FWP5+J52, Assam Trunk Rd, Dibrugarh, Assam 786001'),('Assam','Dibrugarh','Dibrugarh State Hospital',NULL,'FWQ6+2XR, Dibrugarh, Assam 786001','Dibrugarh Public Toilet','FWP5+J52, Assam Trunk Rd, Dibrugarh, Assam 786001'),('Assam','Dibrugarh','Dibrugarh State Hospital',NULL,'FWQ6+2XR, Dibrugarh, Assam 786001','Dibrugarh Public Toilet','FWP5+J52, Assam Trunk Rd, Dibrugarh, Assam 786001'),('Assam','Lakhimpur','Old Civil Hospital',NULL,'64V4+4FW, North Lakhimpur, Assam 787001','SBM Toilet','commerce college, Thana Rd, North Lakhimpur, Assam 787001'),('Assam','Lakhimpur','Old Civil Hospital',NULL,'64V4+4FW, North Lakhimpur, Assam 787001','SBM Toilet','commerce college, Thana Rd, North Lakhimpur, Assam 787001'),('Assam','Lakhimpur','Old Civil Hospital',NULL,'64V4+4FW, North Lakhimpur, Assam 787001','SBM Toilet','commerce college, Thana Rd, North Lakhimpur, Assam 787001'),('Assam','Karimganj','Karimganj Civil Hospital',NULL,'V996+5XQ, Hospital Rd, Karimganj, Assam 788710','SBM Toilet','V995+P5M, Karimganj, Assam 788710'),('Assam','Karimganj','Karimganj Civil Hospital',NULL,'V996+5XQ, Hospital Rd, Karimganj, Assam 788710','SBM Toilet','V995+P5M, Karimganj, Assam 788710'),('Assam','Karimganj','Karimganj Civil Hospital',NULL,'V996+5XQ, Hospital Rd, Karimganj, Assam 788710','SBM Toilet','V995+P5M, Karimganj, Assam 788710'),('Assam','Dhubri','Dhubri Medical College and Hospital',NULL,'Jhagrarpar, Dhubri, Assam 783324','Public Toilet','2XCV+9R9, Ward No. 1, Boro Bazar, Dhubri, Assam 783301'),('Assam','Dhubri','Dhubri Medical College and Hospital',NULL,'Jhagrarpar, Dhubri, Assam 783324','Public Toilet','2XCV+9R9, Ward No. 1, Boro Bazar, Dhubri, Assam 783301'),('Assam','Dhubri','Dhubri Medical College and Hospital',NULL,'Jhagrarpar, Dhubri, Assam 783324','Public Toilet','2XCV+9R9, Ward No. 1, Boro Bazar, Dhubri, Assam 783301'),('Assam','Darrang','Sipajhar Govt Hospital',NULL,'CW23+833, Nayak Para, Assam 784145','Public Toilet','GX5C+3J3, Mathanga Village NRP Rd, Sareng Chuburi, Assam 784529'),('Assam','Darrang','Sipajhar Govt Hospital',NULL,'CW23+833, Nayak Para, Assam 784145','Public Toilet','GX5C+3J3, Mathanga Village NRP Rd, Sareng Chuburi, Assam 784529'),('Assam','Darrang','Sipajhar Govt Hospital',NULL,'CW23+833, Nayak Para, Assam 784145','Public Toilet','GX5C+3J3, Mathanga Village NRP Rd, Sareng Chuburi, Assam 784529'),('Assam','Jorhat','Government Hospital',NULL,'Q666+7F6, Assam Trunk Rd, Chowk Bazar, New Colony, Jorhat, Assam 785001','SBM Toilet','DC Office, Astc, Malow Ali, Jorhat, Assam 785001'),('Assam','Jorhat','Government Hospital',NULL,'Q666+7F6, Assam Trunk Rd, Chowk Bazar, New Colony, Jorhat, Assam 785001','SBM Toilet','DC Office, Astc, Malow Ali, Jorhat, Assam 785001'),('Assam','Jorhat','Government Hospital',NULL,'Q666+7F6, Assam Trunk Rd, Chowk Bazar, New Colony, Jorhat, Assam 785001','SBM Toilet','DC Office, Astc, Malow Ali, Jorhat, Assam 785001'),('Assam','Nagaon','Nagaon Bhogeswari Phukanani Civil Hospital',NULL,'bp civil hospital, Haibargaon, Daccapatty, Nagaon, Assam 782001','Sulabh Toilet Complex','8MXM+79W, Haibargaon, Nagaon, Assam 782001'),('Assam','Nagaon','Hatichung PHC',NULL,'8JC2+X93, Brahmingaon Rd, Samua Gaon, Assam 782142','Public Toilet','8J2F+9G4, Tukulai Bebejia, Assam 782142'),('Assam','Nagaon','Buragohin Than PHC',NULL,'6MX7+GH5, Dewrigaon, Nagaon Nonoi Rd, Assam 782144','SBM Toilet','Morikolong, Doboka - Howraghat Rd, Nagaon, Assam 782001'),('Assam','Nalbari','SMK Civil Hospital, Nalbari',NULL,'CCXP+3JJ, Nalbari, Assam 781335','Public Toilet Pay & Use','CCWQ+RCH, Nalbari, Assam 781335'),('Assam','Nalbari','Primary Health Centre',NULL,'CCCQ+7XC, Nalbari College Rd, Nalbari, Assam 781334','Public Toilet','FG3H+8PC, Niz-Barigog, Assam 781369'),('Assam','Nalbari','Primary Health Centre',NULL,'CCCQ+7XC, Nalbari College Rd, Nalbari, Assam 781334','Public Toilet','FG3H+8PC, Niz-Barigog, Assam 781369'),('Assam','kokrajhar','Rupnath Brahma Civil Hospital, Kokrajhar',NULL,'C72F+MPV, Bagansali, Tengapara, Kokrajhar, Assam 783370','Public toilet','C78G+XWM, SH 14, Kokrajhar, Assam 783370'),('Assam','kokrajhar','Rupnath Brahma Civil Hospital, Kokrajhar',NULL,'C72F+MPV, Bagansali, Tengapara, Kokrajhar, Assam 783370','Public toilet','C78G+XWM, SH 14, Kokrajhar, Assam 783370'),('Assam','kokrajhar','Rupnath Brahma Civil Hospital, Kokrajhar',NULL,'C72F+MPV, Bagansali, Tengapara, Kokrajhar, Assam 783370','Public toilet','C78G+XWM, SH 14, Kokrajhar, Assam 783370'),('Assam','Hailakandi','Hailakandi Civil Hospital',NULL,'MHC7+P85, NH 154, Bashdahar, Hailakandi, Assam 788151','SBM Toilet','FHR4+5PF, Apin Grant, Assam 788161'),('Assam','Hailakandi','Hailakandi Civil Hospital',NULL,'MHC7+P85, NH 154, Bashdahar, Hailakandi, Assam 788151','SBM Toilet','FHR4+5PF, Apin Grant, Assam 788161'),('Assam','Hailakandi','Hailakandi Civil Hospital',NULL,'MHC7+P85, NH 154, Bashdahar, Hailakandi, Assam 788151','SBM Toilet','FHR4+5PF, Apin Grant, Assam 788161'),('Assam','Dima Hasao','Civil hospital ( CHC _30 beded )',NULL,'74XP+5HW, Maibang Nurses Colony, Maibang, Assam 788831','Umrongso public toilet','GP6P+QVX, Umrangso, Assam 788931'),('Assam','Dima Hasao','Civil hospital ( CHC _30 beded )',NULL,'74XP+5HW, Maibang Nurses Colony, Maibang, Assam 788831','Umrongso public toilet','GP6P+QVX, Umrangso, Assam 788931'),('Assam','Dima Hasao','Civil hospital ( CHC _30 beded )',NULL,'74XP+5HW, Maibang Nurses Colony, Maibang, Assam 788831','Umrongso public toilet','GP6P+QVX, Umrangso, Assam 788931'),('Bihar','Patna','District Health Society, Patna',NULL,'H4W8+8X4, Hospital Campus, Gardanibagh, Patna, Bihar 800001','Sulabh Shauchalaya & Bath Complex','J48V+3WG, South Gandhi Maidan, Salimpur Ahra, Dujra Diara, Patna, Bihar 800001'),('Bihar','Patna','District Health Society, Patna',NULL,'H4W8+8X4, Hospital Campus, Gardanibagh, Patna, Bihar 800001','Sulabh Shauchalaya & Bath Complex','J48V+3WG, South Gandhi Maidan, Salimpur Ahra, Dujra Diara, Patna, Bihar 800001'),('Bihar','Patna','District Health Society, Patna',NULL,'H4W8+8X4, Hospital Campus, Gardanibagh, Patna, Bihar 800001','Sulabh Shauchalaya & Bath Complex','J48V+3WG, South Gandhi Maidan, Salimpur Ahra, Dujra Diara, Patna, Bihar 800001'),('Bihar','Begusarai','Government Hospital,Kapasiya ,Begusarai, Bihar',NULL,'C4F7+52Q, Kapasiya, Begusarai, Bihar 851101','Public Toilet','C49P+FHM, Begusarai, Vishnupur, Sarvodaya Nagar, Begusarai, Bihar 851101'),('Bihar','Begusarai','Government Hospital,Kapasiya ,Begusarai, Bihar',NULL,'C4F7+52Q, Kapasiya, Begusarai, Bihar 851101','Public Toilet','C49P+FHM, Begusarai, Vishnupur, Sarvodaya Nagar, Begusarai, Bihar 851101'),('Bihar','Begusarai','Government Hospital,Kapasiya ,Begusarai, Bihar',NULL,'C4F7+52Q, Kapasiya, Begusarai, Bihar 851101','Public Toilet','C49P+FHM, Begusarai, Vishnupur, Sarvodaya Nagar, Begusarai, Bihar 851101'),(NULL,'Gaya','CT SCAN CENTRE ADD ANNEX JAI PRAKASH NARAYAN HOSPI',NULL,'Jai Prakash Narayan Hospital, Gautam Buddha Rd, near OPD, Murarpur, Gaya, Bihar 823001',NULL,NULL),(NULL,'Gaya','CT SCAN CENTRE ADD ANNEX JAI PRAKASH NARAYAN HOSPI',NULL,'Jai Prakash Narayan Hospital, Gautam Buddha Rd, near OPD, Murarpur, Gaya, Bihar 823001',NULL,NULL),(NULL,'Gaya','CT SCAN CENTRE ADD ANNEX JAI PRAKASH NARAYAN HOSPI',NULL,'Jai Prakash Narayan Hospital, Gautam Buddha Rd, near OPD, Murarpur, Gaya, Bihar 823001',NULL,NULL),('Bihar','Vaishali','Government Hospital',NULL,'Arazi Nainha, Vaishali, SH-49, Bihar State Highway Road, Vaishali, Vaishali, Bihar 844102','SBM Toilet','Gandhi Chowk, Ramdayalu Nagar - Hajipur Rd, Hajipur, Bihar 844101'),('Bihar','Vaishali','Sadar Hospital',NULL,'P64C+MW2, Vaishali, Bihar 844102','SBM Toilet','Konahara Ghat Rd, Ward 10, Hajipur, Bihar 844101'),('Bihar','Vaishali','Sadar Hospital',NULL,'P64C+MW2, Vaishali, Bihar 844102','SBM Toilet','Konahara Ghat Rd, Ward 10, Hajipur, Bihar 844101'),('Bihar','Munger','District Hospital Munger',NULL,'9FMC+252, Lal Darwaza Main Rd, Shankarpur, Munger, Bihar 811201','SBM Toilet','Jamalpur-Munger Rd, Near Tractor Stand, Shah Family, Dilawer Pur, Munger, Bihar 811201'),('Bihar','Munger','District Hospital Munger',NULL,'9FMC+252, Lal Darwaza Main Rd, Shankarpur, Munger, Bihar 811201','SBM Toilet','Jamalpur-Munger Rd, Near Tractor Stand, Shah Family, Dilawer Pur, Munger, Bihar 811201'),('Bihar','Munger','District Hospital Munger',NULL,'9FMC+252, Lal Darwaza Main Rd, Shankarpur, Munger, Bihar 811201','SBM Toilet','Jamalpur-Munger Rd, Near Tractor Stand, Shah Family, Dilawer Pur, Munger, Bihar 811201'),('Bihar','Aurangabad','Sadar Hospital Aurangabad',NULL,'Q92G+W4C, Old GT Rd, near vegetable Market, Aurangabad, Bihar 824101','Public Toilet','Q92G+JC7, Old GT Rd, Aurangabad, Bihar 824101'),('Bihar','Aurangabad','Sadar Hospital Aurangabad',NULL,'Q92G+W4C, Old GT Rd, near vegetable Market, Aurangabad, Bihar 824101','Public Toilet','Q92G+JC7, Old GT Rd, Aurangabad, Bihar 824101'),('Bihar','Aurangabad','Sadar Hospital Aurangabad',NULL,'Q92G+W4C, Old GT Rd, near vegetable Market, Aurangabad, Bihar 824101','Public Toilet','Q92G+JC7, Old GT Rd, Aurangabad, Bihar 824101'),('Bihar','Rohtas','Sadar Hospital Sasaram',NULL,'Sukha Rauza Rd, Laxkariganj, Sasaram, Bihar 821115','Public toilet town thana gola bazar','Bazar, Town thana Gola, Sasaram, Bihar'),('Bihar','Rohtas','Government Primary Hospital',NULL,'Gorari, Rohtas, SH-15, Nasiganj Dehri Sone oad, Rohtas, Rohtas, Bihar 802212','Public toilet','Gandhi chauk, Grand Trunk Rd, Dilia, Sasaram, Bihar 821115'),('Bihar','Rohtas','Government Primary Hospital',NULL,'Gorari, Rohtas, SH-15, Nasiganj Dehri Sone oad, Rohtas, Rohtas, Bihar 802212','Public toilet','Gandhi chauk, Grand Trunk Rd, Dilia, Sasaram, Bihar 821115'),('Bihar','Bhojpur','Government Hospital',NULL,'Unnamed Road, Krishnagarh, Bihar 802313','SBM Toilet','Old Police Line Road, near Muktar Khana, Santoshi Nagar, Old Police Line, Arrah, Bihar 802301'),('Bihar','Bhojpur','Government Hospital',NULL,'Unnamed Road, Krishnagarh, Bihar 802313','SBM Toilet','Old Police Line Road, near Muktar Khana, Santoshi Nagar, Old Police Line, Arrah, Bihar 802301'),('Bihar','Bhojpur','Government Hospital',NULL,'Unnamed Road, Krishnagarh, Bihar 802313','SBM Toilet','Old Police Line Road, near Muktar Khana, Santoshi Nagar, Old Police Line, Arrah, Bihar 802301'),('Bihar','Nawada','District Hospital, Nawada',NULL,'VGPW+W8C, Sikandara, Lakhisarai Rd, Nawada, Bihar 805110','SBM Toilet','Near, Kachahari Rd, Nawada, Bihar 805110'),('Bihar','Nawada','District Hospital, Nawada',NULL,'VGPW+W8C, Sikandara, Lakhisarai Rd, Nawada, Bihar 805110','SBM Toilet','Near, Kachahari Rd, Nawada, Bihar 805110'),('Bihar','Nawada','District Hospital, Nawada',NULL,'VGPW+W8C, Sikandara, Lakhisarai Rd, Nawada, Bihar 805110','SBM Toilet','Near, Kachahari Rd, Nawada, Bihar 805110'),('Bihar','Jamui','Sadar Hospital Jamui',NULL,'W6FF+6CF, NH333, Jamui, Bihar 811307','Public Toilet','W6CF+69J, Jamui, Bihar 811307'),('Bihar','Jamui','Sadar Hospital Jamui',NULL,'W6FF+6CF, NH333, Jamui, Bihar 811307','Public Toilet','W6CF+69J, Jamui, Bihar 811307'),('Bihar','Jamui','Sadar Hospital Jamui',NULL,'W6FF+6CF, NH333, Jamui, Bihar 811307','Public Toilet','W6CF+69J, Jamui, Bihar 811307'),('Bihar','Gopalganj','District Health Society, Gopalganj',NULL,'FC6R+2P8, Sadar Hospital Campus, Gopalganj, Ward No. 15','Public Toilet','FC8R+MPJ, Police Line, Gopalganj, Bihar 841428'),('Bihar','Gopalganj','District Health Society, Gopalganj',NULL,'FC6R+2P8, Sadar Hospital Campus, Gopalganj, Ward No. 15','Public Toilet','FC8R+MPJ, Police Line, Gopalganj, Bihar 841428'),('Bihar','Gopalganj','District Health Society, Gopalganj',NULL,'FC6R+2P8, Sadar Hospital Campus, Gopalganj, Ward No. 15','Public Toilet','FC8R+MPJ, Police Line, Gopalganj, Bihar 841428'),('Bihar','Darbhanga','SADAR Hospital',NULL,'5W88+RV3, Gangwara, Darbhanga, Bihar 846009','SBM Toilet','IGNOU Rd, near Lalbag NCC Office, Kathalbari, Darbhanga, Bihar 846004'),('Bihar','Darbhanga','SADAR Hospital',NULL,'5W88+RV3, Gangwara, Darbhanga, Bihar 846009','SBM Toilet','IGNOU Rd, near Lalbag NCC Office, Kathalbari, Darbhanga, Bihar 846004'),('Bihar','Darbhanga','SADAR Hospital',NULL,'5W88+RV3, Gangwara, Darbhanga, Bihar 846009','SBM Toilet','IGNOU Rd, near Lalbag NCC Office, Kathalbari, Darbhanga, Bihar 846004'),('Bihar','Bhagalpur','Government Hospital',NULL,'6XH6+G9P, Bhagalpur, Habibpur, Bihar 812002','Public Toilet at Lajpat Park','7X3J+H4P, Adampur, Bhagalpur, Bihar 812001'),('Bihar','Bhagalpur','Government Hospital',NULL,'6XH6+G9P, Bhagalpur, Habibpur, Bihar 812002','Public Toilet at Lajpat Park','7X3J+H4P, Adampur, Bhagalpur, Bihar 812001'),('Bihar','Bhagalpur','Mayaganj Hospital',NULL,'Medical Campus, Mayaganj, Bhagalpur, Bihar 812001','Public Toilet by Municipal Corporation Bhagalpur','Tilka Manjhi Chowk, Tilkamanjhi - Champanagar Rd, Khanjarpur, Bhagalpur, Bihar 812002'),('chattisgarh ','Bastar','Maharani Hospital',NULL,'Nayapara ??????? Kondagaon Chhattisgarh 494001 Republic of',NULL,NULL),(NULL,'Bastar','Redcross Society Bastar',NULL,'Maharani Hospital, Zila, campus, Naya Para, Chhattisgarh 494001',NULL,NULL),(NULL,'Bastar','Redcross Society Bastar',NULL,'Maharani Hospital, Zila, campus, Naya Para, Chhattisgarh 494001',NULL,NULL);

/*Table structure for table `transowner` */

DROP TABLE IF EXISTS `transowner`;

CREATE TABLE `transowner` (
  `email` varchar(35) default NULL,
  `tname` varchar(50) default NULL,
  `vehicletype` varchar(30) default NULL,
  `state` varchar(20) default NULL,
  `district` varchar(30) default NULL,
  `password` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transowner` */

insert  into `transowner`(`email`,`tname`,`vehicletype`,`state`,`district`,`password`) values ('ramesh123@gmail.com','Ramesh Kumar','Tractor','Madhya Pradesh','Dewas','12123'),('ramesh123@gmail.com','Ramesh Kumar','Tractor','Madhya Pradesh','indore','12123'),('ramesh123@gmail.com','Akshat Singh Rathod','Tractor','Madhya Pradesh','Indore ','12123'),('annu321@gmail.com','Annu Malakar','Loading vehicle','Madhya Pradesh','indore','1452'),('ramesh123@gmail.com','nishita verma','Tractor','Madhya Pradesh','Dewas','123');

/*Table structure for table `transuser` */

DROP TABLE IF EXISTS `transuser`;

CREATE TABLE `transuser` (
  `uname` varchar(30) default NULL,
  `ucontactno` varchar(13) default NULL,
  `state` varchar(30) default NULL,
  `district` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transuser` */

insert  into `transuser`(`uname`,`ucontactno`,`state`,`district`) values ('prayas','7185296300','Madhya Pradesh','indore'),('Jagjeet Singh','7896543210','Madhya Pradesh','dewas '),('Akshat Singh Rathod','6549871230','Madhya Pradesh','Indore'),('Ramesh Kumar','6549871230','Madhya Pradesh','indore'),('Jay Kishan','6549871230','Madhya Pradesh','nahi pata'),('nishita verma','7941986542','Madhya Pradesh','Indore '),('nishita verma','9876562131','Madhya Pradesh','Indore '),('nishita verma','741852963','Madhya Pradesh','indore'),('Ashu','987946521321','Madhya Pradesh','Dewas');

/*Table structure for table `waterowner` */

DROP TABLE IF EXISTS `waterowner`;

CREATE TABLE `waterowner` (
  `uniqueid` varchar(20) default NULL,
  `wname` varchar(30) default NULL,
  `wcontactno` varchar(13) default NULL,
  `state` varchar(20) default NULL,
  `district` varchar(20) default NULL,
  `village` varchar(20) default NULL,
  `charges` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `waterowner` */

insert  into `waterowner`(`uniqueid`,`wname`,`wcontactno`,`state`,`district`,`village`,`charges`) values ('Suresh@123','Suresh Kumar','7896541230','Madhya Pradesh','Dewas','Sonkatch','500rs Per tanker');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
