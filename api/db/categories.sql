-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31-0ubuntu0.18.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_toko.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) DEFAULT NULL,
  `cat_description` text,
  `cat_created` datetime DEFAULT NULL,
  `cat_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table db_toko.categories: ~9 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_description`, `cat_created`, `cat_modified`) VALUES
	(1, 'Pakaian anak2', 'Kategori pakaian, baju dll', '2018-08-01 01:02:03', '2021-01-19 11:26:01'),
	(2, 'Elektronik', 'HP, Tablet, Laptop, dll.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(3, 'Buku Komputer', 'Kategori Buku Komputer', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(4, 'Film', 'Kategori film.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(5, 'Buku Sejarah', 'Kategori Buku Sejarah', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(6, 'Olahraga', 'Kategori Olahraga.', '2018-08-01 01:02:03', '2018-08-01 02:02:03'),
	(7, 'gadget', 'hp', NULL, NULL),
	(8, 'buah\'an buah"an', 'mangga, apel', '2021-01-19 11:19:50', '2021-01-19 11:31:17'),
	(9, 'aksesoris pria/wanita', 'gelang, kalung', '2021-01-19 11:20:41', '2021-01-19 11:26:55');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
