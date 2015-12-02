-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2015 at 11:16 AM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.23-1+deb.sury.org~trusty+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `guestbook_gt`
--

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE IF NOT EXISTS `guests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institusi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hadir` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `nama`, `institusi`, `hadir`, `created_at`, `updated_at`) VALUES
(1, 'Joaquin Sawayn', 'Cynthiafurt', 0, '2015-12-01 19:41:06', '2015-12-01 20:39:59'),
(2, 'Cleo Haley DVM', 'South Jessikachester', 0, '2015-12-01 19:41:07', '2015-12-01 20:40:03'),
(3, 'Dr. Bradford Hilll', 'North Fordfort', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(4, 'Evalyn Tillman', 'Devanfurt', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(5, 'Vesta Bayer Sr.', 'Marleyburgh', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(6, 'Mrs. Reyna Labadie', 'Port Mariellehaven', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(7, 'Mrs. Ella Hettinger III', 'Wisozkview', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(8, 'Emelia Weimann PhD', 'Freemanhaven', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(9, 'Adeline Pouros', 'Rogelioport', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(10, 'Sammy Jaskolski', 'Rogelioland', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(11, 'Trycia Kris', 'South Reannashire', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(12, 'Dr. Elsie Bashirian I', 'Gorczanyland', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(13, 'Noemi Torp', 'Desireetown', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(14, 'Frankie Jacobson', 'South Athena', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(15, 'Loren Moore', 'Lednerton', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(16, 'Adolphus Koelpin', 'West Amandaside', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(17, 'Lilian Walsh Sr.', 'New Kevenland', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(18, 'Drake Hintz', 'New Anna', 0, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(19, 'Vita Lemke III', 'Nikolausport', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(20, 'Ericka Morissette', 'Kiarafurt', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(21, 'Vella Ernser', 'West Rossieburgh', 1, '2015-12-01 19:41:07', '2015-12-01 19:41:07'),
(22, 'Tiara Cronin', 'Port Damion', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(23, 'May Hartmann', 'North Genovevahaven', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(24, 'Myrl Denesik', 'North Fritzmouth', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(25, 'Fern Willms I', 'Lake Everardo', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(26, 'Baby Rohan', 'Harrisberg', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(27, 'Arvid Reynolds', 'South Glennachester', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(28, 'Dr. Mazie Flatley I', 'West Lilyanmouth', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(29, 'Mr. Chris Bayer I', 'Lake Maggie', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(30, 'Prof. Westley Schuster', 'Janickfort', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(31, 'Adolf Kutch', 'Williamsonfort', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(32, 'Ronny Bechtelar IV', 'New Modestoborough', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(33, 'Miss Alexandra Sawayn PhD', 'Port Emmie', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(34, 'Cora Gaylord', 'Julianaborough', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(35, 'Prof. Ambrose Macejkovic DDS', 'North Deonside', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(36, 'Aurelio Bayer', 'VonRuedentown', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(37, 'August Abernathy', 'Lake Anissa', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(38, 'Prof. Cletus McGlynn', 'West Osbaldochester', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(39, 'Prof. Lorna Schimmel MD', 'Herminioburgh', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(40, 'Gina Mosciski DVM', 'Ortizhaven', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(41, 'Kali Mills', 'Roobshire', 0, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(42, 'Therese Deckow', 'Marquardtchester', 1, '2015-12-01 19:41:08', '2015-12-01 19:41:08'),
(43, 'Prof. Frederik Schulist II', 'South Ralphland', 1, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(44, 'Miss Dannie Blick V', 'Bulahstad', 1, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(45, 'Mr. Casimer Bradtke III', 'Marisolside', 0, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(46, 'Darius Champlin', 'South Lailaside', 0, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(47, 'Thea Erdman', 'Maximebury', 1, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(48, 'Dr. Garfield Borer Sr.', 'West Candida', 1, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(49, 'Milton Hane', 'Sanfordfort', 1, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(50, 'Florine Pouros', 'Uriahfort', 0, '2015-12-01 19:41:09', '2015-12-01 19:41:09'),
(51, 'Hello ', 'World', 0, '2015-12-01 20:59:03', '2015-12-01 20:59:03'),
(52, 'Abdillah', 'Pondok', 0, '2015-12-01 21:07:06', '2015-12-01 21:07:06'),
(53, 'Testing', 'Pondok', 0, '2015-12-01 21:09:14', '2015-12-01 21:09:14'),
(54, 'Guha', 'ponodok', 0, '2015-12-01 21:10:58', '2015-12-01 21:11:03'),
(55, 'Guhagg', 'ponodoks', 0, '2015-12-01 21:13:46', '2015-12-01 21:13:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
