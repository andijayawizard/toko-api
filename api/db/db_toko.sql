-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_toko.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(256) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_created` datetime NOT NULL,
  `cat_modified` datetime NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table db_toko.categories: ~13 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`cat_id`, `cat_name`, `cat_description`, `cat_created`, `cat_modified`) VALUES
	(1, 'jas', 'pakaian pria', '2018-08-01 01:02:03', '2022-09-06 13:27:30'),
	(2, 'Elektronik dan gadget', 'HP, Tablet, Laptop, dll.', '2018-08-01 01:02:03', '2022-09-06 10:43:55'),
	(3, 'Buku bacaan', 'Kategori Buku Komputer', '2018-08-01 01:02:03', '2022-09-06 11:15:25'),
	(4, 'Film', 'Kategori film.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(5, 'Buku Sejarah', 'sejarah hitler dan nazi', '2018-08-01 01:02:03', '2022-02-18 10:39:46'),
	(6, 'Olahraga', 'Kategori Olahraga.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(7, 'gadget', 'hp, mp3 player', '2018-08-01 01:02:03', '2022-02-18 10:39:00'),
	(8, 'buah\'an buah"an', 'mangga, apel', '2021-01-19 11:19:50', '2021-01-19 11:31:17'),
	(9, 'aksesoris pria/wanita', 'gelang, kalung', '2021-01-19 11:20:41', '2021-01-19 11:26:55'),
	(11, 'peralatan dapur', 'panci dan wajan', '2022-02-18 10:20:28', '2022-02-18 10:38:18'),
	(14, 'kacang', 'makanan ringan', '2022-09-06 11:27:47', '2022-09-06 11:27:47'),
	(15, 'kacang polong', 'makanan ringan', '2022-09-06 12:48:46', '2022-09-06 13:26:36'),
	(16, 'jambu', 'jambu batu', '2022-09-06 14:09:11', '2022-09-06 14:09:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table db_toko.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(256) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_created` datetime NOT NULL,
  `cat_modified` datetime NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table db_toko.kategori: ~12 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
REPLACE INTO `kategori` (`cat_id`, `cat_name`, `cat_description`, `cat_created`, `cat_modified`) VALUES
	(1, 'pakaian anak', 'anak-anak dan balita', '2018-08-01 01:02:03', '2021-01-19 11:26:01'),
	(2, 'elektronik & gadget', 'hp, tv, rice cooker', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(3, 'Buku Komputer', 'Kategori Buku Komputer', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(4, 'Film', 'Kategori film.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(5, 'Buku Sejarah', 'sejarah hitler dan nazi', '2018-08-01 01:02:03', '2022-02-18 10:39:46'),
	(6, 'Olahraga', 'Kategori Olahraga.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(7, 'gadget', 'hp, mp3 player', '2018-08-01 01:02:03', '2022-02-18 10:39:00'),
	(9, 'aksesoris pria/wanita', 'gelang, kalung', '2021-01-19 11:20:41', '2021-01-19 11:26:55'),
	(11, 'peralatan dapur', 'panci dan wajan', '2022-02-18 10:20:28', '2022-02-18 10:38:18'),
	(12, 'peralatan kebun', 'gunting rumput', '2022-02-18 10:35:47', '2022-02-18 10:38:45'),
	(15, 'tahu gejrot', 'makanan tradisional', '2022-09-06 12:14:01', '2022-09-06 12:14:01'),
	(16, 'gehu (toge di jero tahu)', 'makanan tradisional', '2022-09-06 12:48:45', '2022-09-06 12:48:45');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table db_toko.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `IdProduk` int(11) NOT NULL AUTO_INCREMENT,
  `KodeProduk` varchar(25) DEFAULT NULL,
  `NamaProduk` varchar(255) DEFAULT NULL,
  `HargaJual` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProduk`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table db_toko.produk: ~12 rows (approximately)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
REPLACE INTO `produk` (`IdProduk`, `KodeProduk`, `NamaProduk`, `HargaJual`, `Stok`) VALUES
	(1, '8999999273361', 'walls conello hazelnut mocacino', 5500, 50),
	(2, '8999999273378', 'CONERLLO CHOCOLUV 135', 25000, 100),
	(3, '8999999275556', 'WALLS NINJA JELLY', 25000, 100),
	(4, '8999999275563', 'NINJA EAGLE SURP', 25000, 100),
	(5, '8999999275570', 'RAINBOW PEAK', 25000, 100),
	(6, '8999999275587', 'PADDLE POP CHOKO KICK', 25000, 100),
	(7, 'conello', 'es krim conello', 5500, 500),
	(11, 'jambu', 'jambu air', 2000, 200),
	(12, 'buah-buahan', 'jambu batu', 1000, 100),
	(13, 'apel', 'apel malang', 500, 50),
	(14, 'makanan instan', 'mi instan', 2000, 200),
	(15, '002', 'snack ciki makanan anak2', 1000, 150);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
