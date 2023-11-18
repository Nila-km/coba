-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_kasir
--

CREATE DATABASE IF NOT EXISTS db_kasir;
USE db_kasir;

--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Definition of table `inv`
--

DROP TABLE IF EXISTS `inv`;
CREATE TABLE `inv` (
  `invid` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `tgl_inv` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`invid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv`
--

/*!40000 ALTER TABLE `inv` DISABLE KEYS */;
INSERT INTO `inv` (`invid`,`invoice`,`tgl_inv`,`pembayaran`,`kembalian`,`status`) VALUES 
 (46,'AD20223101301','2023-02-20 10:21:45',350000,7500,'selesai');
/*!40000 ALTER TABLE `inv` ENABLE KEYS */;


--
-- Definition of table `laporan`
--

DROP TABLE IF EXISTS `laporan`;
CREATE TABLE `laporan` (
  `idlaporan` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`idlaporan`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

/*!40000 ALTER TABLE `laporan` DISABLE KEYS */;
INSERT INTO `laporan` (`idlaporan`,`invoice`,`kode_produk`,`nama_produk`,`harga`,`harga_modal`,`qty`,`subtotal`) VALUES 
 (46,'AD20223101301','A006','Kapal Api',12500,12000,2,25000),
 (47,'AD20223101301','C007','Zink Shampoo @renteng',5000,4500,2,10000),
 (48,'AD20223101301','J057','Sedotan Pop Es',9000,8500,3,27000),
 (49,'AD20223101301','A013','Larutan Kaleng @5biji',27500,5500,1,27500),
 (50,'AD20223101301','G027','Yupi Bintang',11000,10500,3,33000),
 (51,'AD20223101301','E001','Sedaap Korea @5biji',15000,14500,2,30000),
 (52,'AD20223101301','A003','Good Day Freeze',19000,18500,2,38000),
 (53,'AD20223101301','A014','Larutan Botol Kecil @4biji',18500,4500,1,18500),
 (54,'AD20223101301','H009','Malkist Coklat',9000,8500,2,18000),
 (55,'AD20223101301','E011','Sakura @5biji',9000,8500,2,18000),
 (56,'AD20223101301','A011','Susu Coklat Frisian Flag',8000,7500,2,16000),
 (57,'AD20223101301','C011','Lifebuoy Shampoo @renteng',5000,4500,2,10000),
 (58,'AD20223101301','I001','Krupuk Sosis',8000,7500,2,16000),
 (59,'AD20223101301','A016','Arinda @1000',18500,17500,3,55500);
/*!40000 ALTER TABLE `laporan` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `toko` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`userid`,`username`,`password`,`toko`,`alamat`,`telepon`,`logo`) VALUES 
 (1,'admin','$2y$10$wW4ayhsYANl398hWQuk3x.bmYszNINGH25KrV6xm0SADEXEe/JEHi','CV. MANDIRI MAYA JAYA','Desa Kalianyar Rt/Rw : 005/003 Kecamatan Krangkeng Kabupaten Indramayu, 45284','087729611727','LOGO2.png');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `produk`
--

DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idproduk`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`idproduk`,`kode_produk`,`nama_produk`,`harga_modal`,`harga_jual`,`tgl_input`) VALUES 
 (5,'A001','Minuman',9000,10000,'2023-02-06 14:34:32'),
 (6,'A002','Good Day',11000,11500,'2023-02-06 11:44:12'),
 (7,'A003','Good Day Freeze',18500,19000,'2023-02-06 11:43:16'),
 (8,'A004','Luwak White Coffee',11000,11500,'2023-02-06 11:44:56'),
 (9,'A005','ABC Susu',11000,11500,'2023-02-06 11:45:59'),
 (10,'A006','Kapal Api',12000,12500,'2023-02-06 11:47:05'),
 (11,'A007','Indocafe Coffemix',12000,12500,'2023-02-06 11:47:47'),
 (12,'A008','Teh Tarik',18500,19000,'2023-02-06 11:48:39'),
 (13,'A009','Pop Es',10000,10500,'2023-02-06 11:49:52'),
 (14,'A010','Nutrisari',10500,11000,'2023-02-06 11:50:52'),
 (15,'A011','Susu Coklat Frisian Flag',7500,8000,'2023-02-06 11:52:23'),
 (16,'A012','Susu Putih Frisian Flag',7500,8000,'2023-02-06 11:52:53'),
 (17,'A013','Larutan Kaleng @5biji',5500,27500,'2023-02-06 11:54:28'),
 (18,'A014','Larutan Botol Kecil @4biji',4500,18500,'2023-02-06 11:56:50'),
 (19,'A015','Larutan Botol Besar @4biji',6250,27500,'2023-02-06 11:58:00'),
 (20,'A016','Arinda @1000',17500,18500,'2023-02-06 11:59:07'),
 (21,'A017','Shopia Aqua Gelas',13200,14000,'2023-02-06 12:04:05'),
 (22,'A018','Aziza Aqua Gelas',13200,14000,'2023-02-06 12:04:39'),
 (23,'A019','Ted Aqua Botol',23500,25000,'2023-02-06 12:03:32'),
 (24,'A020','AQUA Aqua Botol',23500,25000,'2023-02-06 12:02:59'),
 (25,'A021','Ale-Ale',18000,18500,'2023-02-06 14:26:19'),
 (26,'A022','Power F',18000,18500,'2023-02-06 14:27:09'),
 (27,'B001','Soklin Liquid @renteng',4500,5000,'2023-02-06 12:08:03'),
 (28,'B002','Soklin Smart Kemasan Tanggung',21500,22000,'2023-02-06 12:09:08'),
 (29,'B003','Daia @renteng',4500,5000,'2023-02-06 12:10:06'),
 (30,'B004','Daia Kemasan Kecil',4500,5000,'2023-02-06 12:10:50'),
 (31,'B005','Daia Kemasan Tanggung',7500,8000,'2023-02-06 12:11:51'),
 (32,'B006','Daia Kemasan Besar',17500,18000,'2023-02-06 12:12:47'),
 (33,'B007','Rinso Bubuk @renteng',4500,5000,'2023-02-06 12:13:58'),
 (34,'B008','Rinso Cair @renteng',4500,5000,'2023-02-06 12:14:55'),
 (35,'B009','Ekonomi Colet @renteng',4500,5000,'2023-02-06 12:15:46'),
 (36,'B010','Ekonomi Colet @kemasan',4500,5000,'2023-02-06 12:16:31'),
 (37,'B011','Ekonomi Cuci Piring',1800,2000,'2023-02-06 12:18:12'),
 (38,'B012','Gentle Gen',17000,18000,'2023-02-06 12:19:10'),
 (39,'C001','Clear Shampoo @renteng',9500,10000,'2023-02-06 12:23:03'),
 (40,'C002','Clear Shampoo @botol',9500,10000,'2023-02-06 12:23:53'),
 (41,'C003','Sunsilk Shampoo @botol',9500,10000,'2023-02-06 12:24:28'),
 (42,'C004','Sunsilk Shampoo @renteng',9500,10000,'2023-02-06 12:25:03'),
 (43,'C005','Pantene Shampoo @renteng',9500,10000,'2023-02-06 12:26:23'),
 (44,'C006','Pantene Shampoo @botol',18500,19000,'2023-02-06 12:27:16'),
 (45,'C007','Zink Shampoo @renteng',4500,5000,'2023-02-06 12:28:20'),
 (46,'C008','Zink Shampoo @botol',15500,16000,'2023-02-06 12:29:09'),
 (47,'C009','Dove Shampoo @renteng',9500,10000,'2023-02-06 12:30:26'),
 (48,'C010','Head n Sholders Shampoo @renteng',9500,10000,'2023-02-06 12:31:20'),
 (49,'C011','Lifebuoy Shampoo @renteng',4500,5000,'2023-02-06 12:32:07'),
 (50,'D001','Molto Pewangi @renteng',4500,5000,'2023-02-06 12:32:59'),
 (51,'D002','Downy Pewangi @renteng',4500,5000,'2023-02-06 12:33:33'),
 (52,'D003','Royale Pewangi @renteng',4500,5000,'2023-02-06 12:34:15'),
 (53,'D004','Soffel @renteng',4500,5000,'2023-02-06 12:34:55'),
 (54,'D005','Soffel Bengkoang @renteng',9500,10000,'2023-02-06 12:35:36'),
 (55,'D006','Autan @renteng',4500,5000,'2023-02-06 12:36:22'),
 (56,'D007','Rapika @kemasan',4500,5000,'2023-02-06 12:37:02'),
 (57,'D008','Soklin Lantai @renteng',4500,5000,'2023-02-06 12:38:11'),
 (58,'D009','Soklin Lantai @botol',9500,10000,'2023-02-06 12:38:56'),
 (59,'D010','Vixal @kecil',4500,6000,'2023-02-06 12:39:49'),
 (60,'D011','Vixal @besar',9500,12000,'2023-02-06 12:40:44'),
 (61,'D012','Cleantexs',12000,15000,'2023-02-06 12:41:33'),
 (62,'D013','Wipol @renteng',4500,10000,'2023-02-06 12:42:34'),
 (63,'E001','Sedaap Korea @5biji',14500,15000,'2023-02-06 12:44:26'),
 (64,'E002','Sedaap Goreng @5biji',14000,14500,'2023-02-06 12:45:23'),
 (65,'E003','Sedaap Rebus Ayam Bawang @5biji',13500,14000,'2023-02-06 12:46:53'),
 (66,'E004','Sedaap Rebus Soto @5biji',13500,14000,'2023-02-06 12:47:24'),
 (67,'E005','Indomie Rebus Ayam @5biji',14500,15000,'2023-02-06 12:48:14'),
 (68,'E006','Indomie Goreng @5biji',14500,15000,'2023-02-06 12:49:03'),
 (69,'E007','Indomie Aceh @5biji',14500,15000,'2023-02-06 12:49:36'),
 (70,'E008','Indomie Geprek @5biji',14500,15000,'2023-02-06 12:50:11'),
 (71,'E009','Indomie Rendang @5biji',14500,15000,'2023-02-06 12:50:48'),
 (72,'E010','Indomie Campur @5biji',14500,15000,'2023-02-06 12:51:25'),
 (73,'E011','Sakura @5biji',8500,9000,'2023-02-06 12:52:07'),
 (74,'E012','Pop Mie @kecil',3000,3500,'2023-02-06 12:53:22'),
 (75,'E013','Pop Mie @besar',4500,5000,'2023-02-06 12:54:33'),
 (76,'E014','Mie Gelas',12500,13000,'2023-02-06 12:56:05'),
 (77,'E015','Mie Gelas Sarimi',10000,10500,'2023-02-06 12:56:45'),
 (78,'E016','Kenduri',11500,12000,'2023-02-06 12:57:53'),
 (79,'E017','Bulan',11500,12000,'2023-02-06 12:58:27'),
 (80,'F001','Miko Snack',4000,4500,'2023-02-06 13:00:04'),
 (81,'F002','Top Ten Snack',4000,4500,'2023-02-06 13:00:44'),
 (82,'F003','Kentang Snack @1000',8500,9000,'2023-02-06 13:01:54'),
 (83,'F004','Kentang Snack @2000',17500,18000,'2023-02-06 13:03:04'),
 (84,'F005','Garuda Crunchy Snack',17500,18000,'2023-02-06 13:04:55'),
 (85,'F006','Golden Buzzer Snack',17500,18000,'2023-02-06 13:05:49'),
 (86,'F007','Chitato Lite Snack',17500,18000,'2023-02-06 13:06:33'),
 (87,'F008','Chitato Snack',17500,18000,'2023-02-06 13:07:03'),
 (88,'F009','Potabee Snack',17500,18000,'2023-02-06 13:07:51'),
 (89,'F010','Japota Snack',17500,18000,'2023-02-06 13:08:25'),
 (90,'F011','Boncabe Snack',17500,18000,'2023-02-06 13:09:11'),
 (91,'F012','Taro Snack',8500,9000,'2023-02-06 13:10:02'),
 (92,'F013','Gopek Snack',8500,9000,'2023-02-06 13:10:43'),
 (93,'F014','Zet Snack',8500,9000,'2023-02-06 13:11:16'),
 (94,'G001','Cucu',21500,22000,'2023-02-06 13:12:27'),
 (95,'G002','Choki-choki',17500,18000,'2023-02-06 13:13:12'),
 (96,'G003','Chocolatos @500',10000,10500,'2023-02-06 13:14:33'),
 (97,'G004','Gery Salut @500',10000,10500,'2023-02-06 13:15:18'),
 (98,'G005','Slai Olai',10000,10500,'2023-02-06 13:16:05'),
 (99,'G006','Beautylip',10000,10500,'2023-02-06 13:16:39'),
 (100,'G007','Nabati Ahh',8500,9000,'2023-02-06 13:17:42'),
 (101,'G008','Nabati Sipp',8500,9000,'2023-02-06 13:18:26'),
 (102,'G009','Nabati',8500,9000,'2023-02-06 13:19:05'),
 (103,'G010','Duosus @5biji',8500,9000,'2023-02-06 13:19:53'),
 (104,'G011','Monde @5biji',11000,11500,'2023-02-06 13:21:09'),
 (105,'G012','Big Rolls',17500,18000,'2023-02-06 13:22:13'),
 (106,'G013','Nextar',17500,18000,'2023-02-06 13:23:05'),
 (107,'G014','Arden',17500,18000,'2023-02-06 13:23:53'),
 (108,'G015','Cloud',20500,21000,'2023-02-06 13:24:53'),
 (109,'G016','Kalpa',21500,22000,'2023-02-06 13:26:06'),
 (110,'G017','Sari Gandum',21500,22000,'2023-02-06 13:27:10'),
 (111,'G018','Kopiko Box',21500,22000,'2023-02-06 13:27:37'),
 (112,'G019','Dilan Botol',21500,22000,'2023-02-06 13:28:19'),
 (113,'G020','Dilan Box',21500,22000,'2023-02-06 13:28:52'),
 (114,'G021','Jelly Gummy Bean',13000,13500,'2023-02-06 13:29:50'),
 (115,'G022','Berry Sweet',13000,13500,'2023-02-06 13:30:26'),
 (116,'G023','Beng-beng',28500,29000,'2023-02-06 13:31:34'),
 (117,'G024','Sosis Botol',18500,19000,'2023-02-06 13:32:22'),
 (118,'G025','Yupi Pizza Time',21500,22000,'2023-02-06 13:33:32'),
 (119,'G026','Yupi Burger',11500,12000,'2023-02-06 13:34:17'),
 (120,'G027','Yupi Bintang',10500,11000,'2023-02-06 13:35:20'),
 (121,'G028','Yupi Biasa',10500,11000,'2023-02-06 13:36:09'),
 (122,'G029','Yupi Beruang',10500,11000,'2023-02-06 13:37:02'),
 (123,'G030','Yupi Berribonz',10500,11000,'2023-02-06 13:37:41'),
 (124,'G031','Yupi Es Krim',10500,11000,'2023-02-06 13:38:16'),
 (125,'G032','Yupi Love Box',10500,11000,'2023-02-06 13:38:59'),
 (126,'G033','Yupi Biru Box',10500,11000,'2023-02-06 13:39:39'),
 (127,'G034','Yupi Kuning Box',10500,11000,'2023-02-06 13:40:20'),
 (128,'H001','Roti Aoka @5biji',9500,10000,'2023-02-06 13:49:36'),
 (129,'H002','Roti Coy @5biji',9500,10000,'2023-02-06 13:50:17'),
 (130,'H003','Roti Pia',8000,8500,'2023-02-06 13:51:15'),
 (131,'H004','Marshmallow Snackit',8500,9000,'2023-02-06 13:52:18'),
 (132,'H005','Marshmallow Love',8500,9000,'2023-02-06 13:52:50'),
 (133,'H006','Marshmallow Doraemon',8500,9000,'2023-02-06 13:55:28'),
 (134,'H007','Hello Panda',8500,9000,'2023-02-06 13:54:28'),
 (135,'H008','Biskuit Regal',8500,9000,'2023-02-06 13:56:36'),
 (136,'H009','Malkist Coklat',8500,9000,'2023-02-06 13:57:07'),
 (137,'H010','Malkist Abon',8500,9000,'2023-02-06 13:57:44'),
 (138,'H011','Gery Salut',8500,9000,'2023-02-06 13:58:35'),
 (139,'H012','Gery Salut Malkist',8500,9000,'2023-02-06 13:59:23'),
 (140,'H013','Go Potato',8500,9000,'2023-02-06 14:00:02'),
 (141,'H014','Goriorio',8500,9000,'2023-02-06 14:00:41'),
 (142,'H015','You You Stick',8500,9000,'2023-02-06 14:01:32'),
 (143,'H016','Youka Roll',8500,9000,'2023-02-06 14:02:04'),
 (144,'H017','Kacang Koro',8500,9000,'2023-02-06 14:02:56'),
 (145,'H018','Tic Tac',8500,9000,'2023-02-06 14:03:33'),
 (146,'H019','Kuaci',8500,9000,'2023-02-06 14:04:12'),
 (147,'H020','Wafello @1000',8500,9000,'2023-02-06 14:04:54'),
 (148,'H021','Wafello @2000',8500,9000,'2023-02-06 14:07:28'),
 (149,'H022','Time Break @1000',8500,9000,'2023-02-06 14:09:14'),
 (150,'H023','Time Break @2000',17500,18000,'2023-02-06 14:10:37'),
 (151,'H024','Chocolatos @5biji',8500,9000,'2023-02-06 14:11:30'),
 (152,'H025','Nabati @5biji',8500,9000,'2023-02-06 14:12:08'),
 (153,'H026','Potakerz @1000',8000,8500,'2023-02-06 14:13:24'),
 (154,'H027','Potakerz @2000',16500,17000,'2023-02-06 14:14:21'),
 (155,'H028','Garuda Atom',17500,18000,'2023-02-06 14:15:11'),
 (156,'H029','Gery',17500,18000,'2023-02-06 14:16:05'),
 (157,'H030','Baby Shark',17500,18000,'2023-02-06 14:16:59'),
 (158,'H031','Enaak @1pack',17500,18000,'2023-02-06 14:17:57'),
 (159,'H032','Enaak @1renteng',8500,9000,'2023-02-06 14:18:46'),
 (160,'H033','Padimas',4000,4500,'2023-02-06 14:19:40'),
 (161,'H034','Big Jelly Stick',4000,4500,'2023-02-06 14:20:34'),
 (162,'H035','Kopiko',8000,8500,'2023-02-06 14:21:53'),
 (163,'H036','Biskuit Roma @4biji',33500,34000,'2023-02-06 14:23:05'),
 (164,'H037','Kis',6500,7000,'2023-02-06 14:23:59'),
 (165,'H038','Tamarin',7500,8000,'2023-02-06 14:24:45'),
 (166,'I001','Krupuk Sosis',7500,8000,'2023-02-06 14:28:16'),
 (167,'I002','Krupuk Seblak',7500,8000,'2023-02-06 14:29:13'),
 (168,'I003','Krupuk Makroni',7500,8000,'2023-02-06 14:29:50'),
 (169,'I004','Krupuk Baso',7500,8000,'2023-02-06 14:30:38'),
 (170,'I005','Krupuk Rasa',7500,8000,'2023-02-06 14:31:50'),
 (171,'I006','Kripik Boled',17500,18000,'2023-02-06 14:33:46'),
 (172,'J001','Boncabe Level 15 @renteng',9500,10000,'2023-02-06 14:36:24'),
 (173,'J002','Boncabe Level 30 @renteng',9500,10000,'2023-02-06 14:37:07'),
 (174,'J003','Kecap Bango @renteng',9500,10000,'2023-02-06 14:37:56'),
 (175,'J004','Kecap Bango Kemasan @kecil',9500,10000,'2023-02-06 14:38:37'),
 (176,'J005','Kecap Bango Kemasan @besar',20500,21000,'2023-02-06 14:39:19'),
 (177,'J006','Kecap Sedaap Kemasan @besar',20500,21000,'2023-02-06 14:40:02'),
 (178,'J007','Kecap Sedaap Kemasan @kecil',9500,10000,'2023-02-06 14:40:44'),
 (179,'J008','Kecap Sedaap @renteng',9500,10000,'2023-02-06 14:41:30'),
 (180,'J009','Kecap ABC @renteng',4500,5000,'2023-02-06 14:42:10'),
 (181,'J010','Masako @renteng',4500,5000,'2023-02-06 14:42:55'),
 (182,'J011','Masako Kemasan @250 g',8500,9000,'2023-02-06 14:43:55'),
 (183,'J012','Royco Kemasan @250 g',8500,9000,'2023-02-06 14:44:37'),
 (184,'J013','Royco @renteng',4500,5000,'2023-02-06 14:46:50'),
 (185,'J014','Antaka',5000,5500,'2023-02-06 14:47:27'),
 (186,'J015','Rumpun Tawon',5000,5500,'2023-02-06 14:48:03'),
 (187,'J016','Saos SB',3500,4000,'2023-02-06 14:48:50'),
 (188,'J017','Garam',2000,2500,'2023-02-06 14:49:40'),
 (189,'J018','Micin Bio 14g @5',8500,9000,'2023-02-06 15:00:14'),
 (190,'J019','Micin Bio 7g @9bungkus',2500,3000,'2023-02-06 14:54:36'),
 (191,'J020','Micin Bio 17g',1500,2000,'2023-02-06 14:56:45'),
 (192,'J021','Micin Bio 40g',2500,3000,'2023-02-06 14:57:34'),
 (193,'J022','Micin Bio 80g',4500,5000,'2023-02-06 15:01:03'),
 (194,'J023','Micin Bio 200g',10500,11000,'2023-02-06 15:02:00'),
 (195,'J024','Teh Upet',7500,8000,'2023-02-06 15:03:01'),
 (196,'J025','Teh Poci',6500,7000,'2023-02-06 15:04:07'),
 (197,'J026','Teh Lucu',3500,4000,'2023-02-06 15:05:01'),
 (198,'J027','Teh Celup Box',8500,9000,'2023-02-06 15:06:00'),
 (199,'J028','Teh Sariwangi Original Box',8500,9000,'2023-02-06 15:06:40'),
 (200,'J029','Teh Sariwangi Melati Box',8500,9000,'2023-02-06 15:07:51'),
 (201,'J030','Buryam',8500,9000,'2023-02-06 15:08:34'),
 (202,'J031','Gula Pasir 1/4',3500,4000,'2023-02-06 15:09:45'),
 (203,'J032','Gula Pasir 1/2',6500,7000,'2023-02-06 15:10:47'),
 (204,'J033','Gula Pasir 1kg',14000,14500,'2023-02-06 15:11:44'),
 (205,'J034','Gula Batu Bintang 1/4',3500,4000,'2023-02-06 15:13:00'),
 (206,'J035','Gula Batu Bintang 1/2',7000,7500,'2023-02-06 15:14:14'),
 (207,'J036','Gula Batu Bintang 1kg',14000,14500,'2023-02-06 15:17:17'),
 (208,'J037','Gula Batu Tawon 1/4',4000,4500,'2023-02-06 15:16:24'),
 (209,'J038','Gula Batu Tawon 1/2',7500,8000,'2023-02-06 15:18:29'),
 (210,'J039','Gula Batu Tawon 1kg',15500,16000,'2023-02-06 15:19:14'),
 (211,'J040','Minyak 1/4',3500,4000,'2023-02-06 15:22:20'),
 (212,'J041','Minyak 1/2',7500,8000,'2023-02-06 15:21:50'),
 (213,'J042','Minyak 1kg',15000,15500,'2023-02-06 15:23:17'),
 (214,'J043','Minyak Kemasan',14000,14500,'2023-02-06 15:24:10'),
 (215,'J044','Aci Terigu 1/4',2000,2500,'2023-02-06 15:25:09'),
 (216,'J045','Aci Terigu 1/2',4500,5000,'2023-02-06 15:25:47'),
 (217,'J046','Aci Terigu 1kg',9500,10000,'2023-02-06 15:26:22'),
 (218,'J047','Aci Campu 1/4',2000,2500,'2023-02-06 15:27:34'),
 (219,'J048','Aci Campu 1/2',4500,5000,'2023-02-06 15:28:26'),
 (220,'J049','Aci Campu 1kg',9500,10000,'2023-02-06 15:29:27'),
 (221,'J050','Panir 1/4',4000,4500,'2023-02-06 15:30:38'),
 (222,'J051','Panir 1/2',8500,9000,'2023-02-06 15:31:35'),
 (223,'J052','Panir 1kg',16500,17000,'2023-02-06 15:32:36'),
 (224,'J053','Kertas Nasi @kecil',22500,23000,'2023-02-06 15:33:49'),
 (225,'J054','Kertas Nasi @besar',25500,26000,'2023-02-06 15:34:43'),
 (226,'J055','Sedotan Kancil',7000,7500,'2023-02-06 15:35:41'),
 (227,'J056','Sedotan Biasa',4500,5000,'2023-02-06 15:36:18'),
 (228,'J057','Sedotan Pop Es',8500,9000,'2023-02-06 15:37:30'),
 (229,'J058','Ladaku',4500,5000,'2023-02-06 15:38:20'),
 (230,'J059','Sterofom kecil @10biji',2500,3000,'2023-02-06 15:40:55'),
 (231,'J060','Sterofom besar @10biji',3000,3500,'2023-02-06 15:42:45'),
 (232,'J061','Tutup Pop Es',5500,6000,'2023-02-06 15:43:42'),
 (233,'J062','Cup S10',9000,9500,'2023-02-06 15:44:52'),
 (234,'J063','Cup S12',9000,9500,'2023-02-06 15:45:44'),
 (235,'J064','Cup S14',9000,9500,'2023-02-06 15:46:15'),
 (236,'J065','Cup S16',9000,9500,'2023-02-06 15:46:55'),
 (237,'J066','Coklat Java',11500,12000,'2023-02-06 15:49:20'),
 (238,'J067','Keju Wechesee',12500,13000,'2023-02-06 15:50:32'),
 (239,'J068','Karet Merah',2500,3000,'2023-02-06 15:51:53'),
 (240,'J069','Plastik Bawang S10x25',8500,9000,'2023-02-06 15:53:19'),
 (241,'J070','Plastik Bawang S11x25',8500,9000,'2023-02-06 15:53:56'),
 (242,'J071','Plastik Bawang S12x25',8500,9000,'2023-02-06 15:54:37'),
 (243,'J072','Plastik Bawang S13x25',8500,9000,'2023-02-06 15:55:50'),
 (244,'J073','Plastik Bawang S14x25',8500,9000,'2023-02-06 15:56:14'),
 (245,'J074','Plastik Bawang S15x25',8500,9000,'2023-02-06 15:57:04'),
 (246,'J075','Plastik Bawang S16x25',8500,9000,'2023-02-06 15:58:45'),
 (247,'J076','Plastik Miki S10x25',8500,9000,'2023-02-06 15:59:40'),
 (248,'J077','Plastik Miki S11x25',8500,9000,'2023-02-06 16:00:25'),
 (249,'J078','Plastik Miki S12x25',8500,9000,'2023-02-06 16:01:02'),
 (250,'J079','Plastik Miki S13x25',8500,9000,'2023-02-06 16:01:40'),
 (251,'J080','Plastik Miki S14x25',8500,9000,'2023-02-06 16:02:25'),
 (252,'J081','Plastik Miki S15x25',8500,9000,'2023-02-06 16:03:23'),
 (253,'J082','Plastik Miki S16x25',8500,9000,'2023-02-06 16:07:37'),
 (254,'J083','Plastik Jataka S10x25',8500,9000,'2023-02-06 16:10:07'),
 (255,'J084','Plastik Jataka S11x25',8500,9000,'2023-02-06 16:10:56'),
 (256,'J085','Plastik Jataka S12x25',8500,9000,'2023-02-06 16:11:29'),
 (257,'J086','Plastik Jataka S13x25',8500,9000,'2023-02-06 16:12:05'),
 (258,'J087','Plastik Jataka S14x25',8500,9000,'2023-02-06 16:12:43'),
 (259,'J088','Plastik Jataka S15x25',8500,9000,'2023-02-06 16:13:18'),
 (260,'J089','Plastik Jataka S16x25',8500,9000,'2023-02-06 16:13:53'),
 (261,'J090','Plastik Kantong @kecil',3500,4000,'2023-02-06 16:14:50'),
 (262,'J091','Plastik Kantong @tanggung',5500,6000,'2023-02-06 16:17:16'),
 (263,'J092','Plastik Kantong @besar',7500,8000,'2023-02-06 16:18:14');
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
