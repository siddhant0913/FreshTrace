# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     23ci1604_agrifoodsupplychain
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2024-03-14 11:04:47
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for 23ci1604_agrifoodsupplychain
CREATE DATABASE IF NOT EXISTS `23ci1604_agrifoodsupplychain` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `23ci1604_agrifoodsupplychain`;


# Dumping structure for table 23ci1604_agrifoodsupplychain.blockchain_transaction
CREATE TABLE IF NOT EXISTS `blockchain_transaction` (
  `T_id` int(10) NOT NULL AUTO_INCREMENT,
  `Plain_Data` longtext,
  `Sha_values` longtext,
  PRIMARY KEY (`T_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.blockchain_transaction: 20 rows
/*!40000 ALTER TABLE `blockchain_transaction` DISABLE KEYS */;
INSERT INTO `blockchain_transaction` (`T_id`, `Plain_Data`, `Sha_values`) VALUES (3, 'Distributors#apple#7#120#2#240#jj@gmail.com#ravi@gmail.com', 'c38887f2bb9825c1e9187f589a2037db60d167d7f35827d89f48d62169c03232'), (4, 'NGO#apple#4#100#2#200#ngo@gmail.com#jj@gmail.com', 'd904fd0551e5e45e5afbf23aad73bb226118de27421c0aa69c46cc91f3c8746b'), (5, 'Distributors#Mango#150#75#40#3000#jj@gmail.com#dinesh@gmail.com', '69192185d5e708adec80f89866a1055922ea7f4a057971f2bc0c17a24e4a84bf'), (6, 'Distributors#Mango#110#75#10#750#jj@gmail.com#dinesh@gmail.com', '00000e4df11d24e3370c0b1d648a609dc8afed4ea74c217a4b74a87c216c37e8'), (7, 'NGO#Grapes#440#60#40#2400#ngo@gmail.com#jj@gmail.com', '59b9080ac255deb40061c0b58b386db615b9c7d34c80e08ee8b8df7a2855e867'), (8, 'NGO#Grapes#400#60#10#600#ngo@gmail.com#jj@gmail.com', '0000043e00ead206b6ec039008a23eb0ec4c319fbe8fcd8e14badf94b4cca8ea'), (9, 'Distributors#Mango#100#75#2#150#jj@gmail.com#dinesh@gmail.com', NULL), (10, 'Distributors#Mango#100#75#2#150#jj@gmail.com#dinesh@gmail.com', NULL), (11, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (12, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (13, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (14, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (15, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (16, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (17, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (18, 'Distributors#Mango#98#75#3#225#jj@gmail.com#dinesh@gmail.com', NULL), (19, 'Distributors#Mango#95#75#5#375#jj@gmail.com#dinesh@gmail.com', NULL), (20, 'Distributors#Mango#95#75#5#375#jj@gmail.com#dinesh@gmail.com', NULL), (21, 'Distributors#Mango#88#75#2#150#ngo@gmail.com#null#1234567890123456#2024-03-13#123', '00000269d2af9f77f4b896ad0c8bb901d981a1790d8860dbd721938727bede0b'), (22, 'NGO#Mango#86#75#2#150#ngo@gmail.com#null#1234567890123456#2024-03-15#123', '0000092261b1ee8dd14efdd1fb0d9e37a97314532f8df533280268fadae24d6c');
/*!40000 ALTER TABLE `blockchain_transaction` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.farmerregistration
CREATE TABLE IF NOT EXISTS `farmerregistration` (
  `Fname` text,
  `Faddress` text,
  `FGender` text,
  `Femail` text,
  `Fmobno` text,
  `Fpassword` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.farmerregistration: 2 rows
/*!40000 ALTER TABLE `farmerregistration` DISABLE KEYS */;
INSERT INTO `farmerregistration` (`Fname`, `Faddress`, `FGender`, `Femail`, `Fmobno`, `Fpassword`) VALUES ('jitu', 'Pune', 'Male', 'ravi@gmail.com', '8888888888', '123456'), ('dinesh', 'pune', 'Male', 'dinesh@gmail.com', '8888888888', '123456');
/*!40000 ALTER TABLE `farmerregistration` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.ngoregistration
CREATE TABLE IF NOT EXISTS `ngoregistration` (
  `Uname` text,
  `Uaddress` text,
  `UGender` text,
  `Uemail` text,
  `Umobno` text,
  `Upassword` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.ngoregistration: 1 rows
/*!40000 ALTER TABLE `ngoregistration` DISABLE KEYS */;
INSERT INTO `ngoregistration` (`Uname`, `Uaddress`, `UGender`, `Uemail`, `Umobno`, `Upassword`) VALUES ('ngo', 'Pune', 'Male', 'ngo@gmail.com', '8888888888', '123456');
/*!40000 ALTER TABLE `ngoregistration` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.ngotblscore
CREATE TABLE IF NOT EXISTS `ngotblscore` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `From_City` text,
  `To_City` text,
  `Product_Name` text,
  `Km_Location` text,
  `F_ID` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.ngotblscore: 1 rows
/*!40000 ALTER TABLE `ngotblscore` DISABLE KEYS */;
INSERT INTO `ngotblscore` (`id`, `From_City`, `To_City`, `Product_Name`, `Km_Location`, `F_ID`) VALUES (1, 'Hadapsar', 'Aundh', 'Mango', '14.14', '3');
/*!40000 ALTER TABLE `ngotblscore` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.product_info
CREATE TABLE IF NOT EXISTS `product_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `qty` text,
  `product_description` text,
  `product_price` text,
  `Location_Food` text,
  `exp_date` text,
  `farmeremail` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.product_info: 2 rows
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` (`id`, `name`, `qty`, `product_description`, `product_price`, `Location_Food`, `exp_date`, `farmeremail`) VALUES (1, 'apple', '5', 'best', '120', 'Ambegaon', '2022-01-10', 'ravi@gmail.com'), (2, 'Mango', '82', 'best', '75', 'Aundh', '2022-06-30', 'dinesh@gmail.com');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.tblmaster
CREATE TABLE IF NOT EXISTS `tblmaster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `From_City` text,
  `Latitude` text,
  `Longitude` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.tblmaster: 51 rows
/*!40000 ALTER TABLE `tblmaster` DISABLE KEYS */;
INSERT INTO `tblmaster` (`id`, `From_City`, `Latitude`, `Longitude`) VALUES (1, 'Ambegaon', '18.4458', '73.8507'), (2, 'Aundh', '18.5602', '73.8031'), (3, 'Baner', '18.5590', '73.7868'), (4, 'Bavdhan-Khurd', '18.5135', '73.7699'), (5, 'Balewadi', '18.5789', '73.7707'), (6, 'Shivaji-Nagar', '18.5314', '73.8446'), (7, 'Bibvewadi', '18.4690', '73.8641'), (8, 'Bhugaon', '18.5011', '73.7508'), (9, 'Dhankawadi', '18.4655', '73.8547'), (10, 'Dhayari', '18.4471', '73.8102'), (11, 'Fursungi', '18.4727', '73.9785'), (12, 'Ghorpadi', '18.5236', '73.9063'), (13, 'Hadapsar', '18.5089', '73.9259'), (14, 'Katraj', '18.4529', '73.8652'), (15, 'Kharadi', '18.5538', '73.9477'), (16, 'Kondhwa', '18.4695', '73.8890'), (17, 'Parvati', '18.4923', '73.8547'), (18, 'Pirangut', '18.5130', '73.6779'), (19, 'Undri', '18.4567', '73.9095'), (20, 'Vishrantwadi', '18.5726', '73.8782'), (21, 'Vadgaon-Khurd', '18.4608', '73.8081'), (22, 'Vadgaon-Budruk', '18.4660', '73.8246'), (23, 'Vadgaon-Sheri', '18.5513', '73.9210'), (24, 'Wagholi', '18.5808', '73.9787'), (25, 'Warje', '18.4865', '73.7968'), (26, 'Yerwada', '18.5529', '73.8797'), (27, 'Shivane', '18.4662', '73.7822'), (28, 'Akurdi', '18.6505', '73.7786'), (29, 'Bhosari', '18.6321', '73.8468'), (30, 'Chakan', '18.7632', '73.8613'), (31, 'Charholi-Budruk', '18.6537', '73.9077'), (32, 'Chikhli', '18.6825', '73.8196'), (33, 'Chinchwad', '18.6298', '73.7997'), (34, 'Dapodi', '18.5853', '73.8334'), (35, 'Dehu-Road', '18.6860', '73.7477'), (36, 'Dighi', '18.6149', '73.8730'), (37, 'Hinjawadi', '18.5913', '73.7389'), (38, 'Kasarwadi', '18.6061', '73.8228'), (39, 'Moshi', '18.6794', '73.8492'), (40, 'Fugewadi', '18.5870', '73.8346'), (41, 'Pimple-Gurav', '18.5866', '73.8134'), (42, 'Pimple-Nilakh', '18.5790', '73.7860'), (43, 'Pimple-Saudagar', '18.5987', '73.7978'), (44, 'Pimpri', '18.6298', '73.7997'), (45, 'Ravet', '18.6606', '73.7322'), (46, 'Rahatani', '18.6047', '73.7871'), (47, 'Talawade', '18.6866', '73.7893'), (48, 'Tathawade', '18.6276', '73.7455'), (49, 'Thergaon', '18.6143', '73.7751'), (50, 'Wakad', '18.6011', '73.7641'), (51, 'Talegaon', '18.7376', '73.6747');
/*!40000 ALTER TABLE `tblmaster` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.tblngopurchase
CREATE TABLE IF NOT EXISTS `tblngopurchase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `Quantity` text,
  `Price` text,
  `UserQuantity` text,
  `Totalamount` text,
  `Email_Id` text,
  `User_Email_ID` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.tblngopurchase: 9 rows
/*!40000 ALTER TABLE `tblngopurchase` DISABLE KEYS */;
INSERT INTO `tblngopurchase` (`id`, `ProductName`, `Quantity`, `Price`, `UserQuantity`, `Totalamount`, `Email_Id`, `User_Email_ID`) VALUES (3, 'apple', '7', '120', '1', '120', 'ngo@gmail.com', NULL), (4, 'apple', '6', '100', '2', '200', 'ngo@gmail.com', NULL), (5, 'apple', '4', '100', '2', '200', 'ngo@gmail.com', 'jj@gmail.com'), (6, 'Grapes', '440', '60', '40', '2400', 'ngo@gmail.com', 'jj@gmail.com'), (7, 'Grapes', '400', '60', '10', '600', 'ngo@gmail.com', 'jj@gmail.com'), (8, 'Mango', '88', '75', '2', '150', 'ngo@gmail.com', 'jj@gmail.com'), (9, 'Mango', '88', '75', '2', '150', 'ngo@gmail.com', 'jj@gmail.com'), (10, 'Mango', '88', '75', '2', '150', 'ngo@gmail.com', 'jj@gmail.com'), (11, 'Mango', '86', '75', '2', '150', 'ngo@gmail.com', 'jj@gmail.com');
/*!40000 ALTER TABLE `tblngopurchase` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.tblpurchase
CREATE TABLE IF NOT EXISTS `tblpurchase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` text,
  `Quantity` text,
  `Price` text,
  `UserQuantity` text,
  `Totalamount` text,
  `Email_Id` text,
  `Farmer_Email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.tblpurchase: 21 rows
/*!40000 ALTER TABLE `tblpurchase` DISABLE KEYS */;
INSERT INTO `tblpurchase` (`id`, `ProductName`, `Quantity`, `Price`, `UserQuantity`, `Totalamount`, `Email_Id`, `Farmer_Email`) VALUES (1, 'apple', '12', '120', '5', '600', 'jj@gmail.com', NULL), (3, 'apple', '7', '120', '2', '240', 'jj@gmail.com', 'ravi@gmail.com'), (4, 'Mango', '150', '75', '40', '3000', 'jj@gmail.com', 'dinesh@gmail.com'), (5, 'Mango', '110', '75', '10', '750', 'jj@gmail.com', 'dinesh@gmail.com'), (6, 'Mango', '100', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com'), (7, 'Mango', '100', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com'), (8, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (9, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (10, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (11, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (12, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (13, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (14, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (15, 'Mango', '98', '75', '3', '225', 'jj@gmail.com', 'dinesh@gmail.com'), (16, 'Mango', '95', '75', '5', '375', 'jj@gmail.com', 'dinesh@gmail.com'), (17, 'Mango', '95', '75', '5', '375', 'jj@gmail.com', 'dinesh@gmail.com'), (18, 'Mango', '90', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com'), (19, 'Mango', '90', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com'), (20, 'Mango', '88', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com'), (21, 'Mango', '86', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com'), (22, 'Mango', '84', '75', '2', '150', 'jj@gmail.com', 'dinesh@gmail.com');
/*!40000 ALTER TABLE `tblpurchase` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.tblscore
CREATE TABLE IF NOT EXISTS `tblscore` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `From_City` text,
  `To_City` text,
  `Product_Name` text,
  `Km_Location` text,
  `F_ID` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.tblscore: 1 rows
/*!40000 ALTER TABLE `tblscore` DISABLE KEYS */;
INSERT INTO `tblscore` (`id`, `From_City`, `To_City`, `Product_Name`, `Km_Location`, `F_ID`) VALUES (1, 'Fursungi', 'Aundh', 'Mango', '20.88', '2');
/*!40000 ALTER TABLE `tblscore` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.userregistration
CREATE TABLE IF NOT EXISTS `userregistration` (
  `Uname` text,
  `Uaddress` text,
  `UGender` text,
  `Uemail` text,
  `Umobno` text,
  `Upassword` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.userregistration: 1 rows
/*!40000 ALTER TABLE `userregistration` DISABLE KEYS */;
INSERT INTO `userregistration` (`Uname`, `Uaddress`, `UGender`, `Uemail`, `Umobno`, `Upassword`) VALUES ('jitu', 'pune', 'Male', 'jj@gmail.com', '8888888888', '123456');
/*!40000 ALTER TABLE `userregistration` ENABLE KEYS */;


# Dumping structure for table 23ci1604_agrifoodsupplychain.user_product_info
CREATE TABLE IF NOT EXISTS `user_product_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `qty` text,
  `product_description` text,
  `product_price` text,
  `Location_Food` text,
  `exp_date` text,
  `usereremail` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

# Dumping data for table 23ci1604_agrifoodsupplychain.user_product_info: 3 rows
/*!40000 ALTER TABLE `user_product_info` DISABLE KEYS */;
INSERT INTO `user_product_info` (`id`, `name`, `qty`, `product_description`, `product_price`, `Location_Food`, `exp_date`, `usereremail`) VALUES (1, 'apple', '2', 'good', '100', 'Ambegaon', '2022-01-11', 'jj@gmail.com'), (2, 'Grapes', '390', 'best', '60', 'Baner', '2022-05-31', 'jj@gmail.com'), (3, 'Mango', '100', 'best', '75', 'Aundh', '2022-06-30', 'jj@gmail.com');
/*!40000 ALTER TABLE `user_product_info` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
