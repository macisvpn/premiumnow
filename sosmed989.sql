-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2018 at 03:24 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mineecum_cb`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance_history`
--

CREATE TABLE `balance_history` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `action` enum('Add Balance','Cut Balance','Refunded Balance') COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `msg` text COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `balance_history`
--

INSERT INTO `balance_history` (`id`, `username`, `action`, `quantity`, `msg`, `date`, `time`) VALUES
(1, 'Chandra989', 'Cut Balance', 200, 'Saldo dipotong untuk pembelian 200 Instagram like new update OID : 6933902', '2018-03-27', '09:02:06'),
(2, 'Chandra989', 'Cut Balance', 0, 'Saldo dipotong untuk pembelian 100 ðŸ’ŒInstagram Likes VIP 1 OID : 0230048', '2018-03-27', '11:26:01'),
(3, 'Chandra989', 'Cut Balance', 0, 'Saldo dipotong untuk pembelian 200 ðŸ’ŒInstagram Likes VIP 1 OID : 2336864', '2018-03-27', '11:33:18'),
(4, 'Chandra989', 'Cut Balance', 0, 'Saldo dipotong untuk pembelian 100 ðŸ’ŒInstagram Likes VIP 1 OID : 9837039', '2018-03-27', '11:45:05'),
(5, 'Chandra989', 'Cut Balance', 0, 'Saldo dipotong untuk pembelian 100 ðŸ’ŒInstagram Likes VIP 1 OID : 8407953', '2018-03-27', '12:11:39'),
(6, 'Chandra989', 'Refunded Balance', 0, 'Saldo Dikembalikan Untuk Pembelian, OrderID : 1559191', '2018-03-27', '123123'),

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `method` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `pengirim` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `balance` int(10) NOT NULL,
  `status` enum('Pending','Success','Error') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `code`, `user`, `method`, `note`, `pengirim`, `quantity`, `balance`, `status`, `date`) VALUES
(1, '227375678182106', 'Chandra989', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 2147483647, 2147483647, 'Pending', '2018-03-30'),
(2, '239706783932809', 'Demo', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 100000, 110000, 'Pending', '2018-03-31'),
(3, '301377714189896', 'Demo', 'TOPUP DIGI', '<b>00102979085</b><br>Transfer Credit', '', 10000000, 0, 'Pending', '2018-03-31'),
(4, '500275960844561', 'Demo', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 100000, 110000, 'Pending', '2018-03-31'),
(5, '607199583085025', 'mierulboyka', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 13, 14, 'Pending', '2018-04-04'),
(6, '280802397203352', 'mierulboyka', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-04'),
(7, '853999945165522', 'haariiis__', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-04'),
(8, '790485751188132', 'haariiis__', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-04'),
(9, '799707788963070', 'haariiis__', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 15, 17, 'Pending', '2018-04-04'),
(10, '470967256366128', 'Haziqhussin', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 7, 0, 'Pending', '2018-04-06'),
(11, '332802341552650', 'Haziqhussin', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 7, 8, 'Pending', '2018-04-06'),
(12, '613171572739255', 'Pijie', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 2000, 0, 'Pending', '2018-04-08'),
(13, '297269876025814', 'labuci93', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 10, 0, 'Pending', '2018-04-08'),
(14, '998536669780971', 'labuci93', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-08'),
(15, '794254854223706', 'labuci93', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 6, 7, 'Pending', '2018-04-08'),
(16, '853619008287118', 'Idhamsya', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 50, 0, 'Pending', '2018-04-08'),
(17, '069286073469635', 'dannysoprano', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-11'),
(18, '919352519913402', 'dannysoprano', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-11'),
(19, '045670209453721', 'dexterlex122@gmail.com', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 100, 0, 'Pending', '2018-04-12'),
(20, '587136174483126', 'Nursuhaidah98', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 10, 0, 'Pending', '2018-04-14'),
(21, '451446978860350', 'Nursuhaidah98', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 30, 33, 'Pending', '2018-04-14'),
(22, '879578087815480', 'Nursuhaidah98', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 30, 0, 'Pending', '2018-04-14'),
(23, '876845558192148', 'Nursuhaidah98', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 30, 0, 'Pending', '2018-04-14'),
(24, '506919205756989', 'Izzatti', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 20, 22, 'Pending', '2018-04-22'),
(25, '129690196117993', 'awgmdfs_', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 5, 0, 'Pending', '2018-04-22'),
(26, '152442735336978', 'awgmdfs_', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 5, 6, 'Pending', '2018-04-22'),
(27, '838795224640907', 'Izzatti', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 10, 0, 'Pending', '2018-04-22'),
(28, '687853369847900', 'Izzatti', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 10, 11, 'Pending', '2018-04-22'),
(29, '884975739545686', 'Izzatti', 'TOPUP DIGI', '<b>0178393249</b><br>Transfer Credit', '', 19, 0, 'Pending', '2018-04-22'),
(30, '525265161036684', 'pnrlsxx', 'MAYBANK', '110050129584<br>Chandra Cipto</br>', '', 50, 55, 'Pending', '2018-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_method`
--

CREATE TABLE `deposit_method` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `rate` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `deposit_method`
--

INSERT INTO `deposit_method` (`id`, `name`, `rate`, `note`) VALUES
(1, 'MAYBANK', '1.1', '110050129584<br>Chandra Cipto</br>'),
(2, 'TOPUP DIGI', '', '<b>0178393249</b><br>Transfer Credit');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `content` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `date`, `content`) VALUES
(2, '2018-04-01', 'Server Follower Maniac 1 , 2 , 15 , berdesup laju'),
(4, '2018-04-04', 'Instagram Follower Boleh Guna Maniac -15 (fast)');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `remains` int(10) NOT NULL,
  `start_count` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `oid`, `poid`, `user`, `service`, `link`, `quantity`, `remains`, `start_count`, `price`, `status`, `date`, `provider`, `place_from`, `refund`) VALUES
(2, '9174289', '9LDMUKP4ID', 'Developers', 'â‡ Instagram Followers MP 1', 'ninink_windy', 1000, 0, 1308, 8700, 'Success', '2017-12-01', 'IRVANKEDE', 'WEB', 0),
(3, '1495013', 'WKLRCLB5AN', 'Developers', 'â‡ Instagram Likes MP 1', 'https://www.instagram.com/p/Bbk90yRDnPLd7W6qntFIIBu2sPPRIuA4zosAWc0/', 500, 0, 0, 250, 'Success', '2017-12-02', 'IRVANKEDE', 'WEB', 0),
(4, '7568648', '7WYUMCSC3F', 'Kuuhaku', 'Instagram Followers Indonesia KP Aktif [BONUS++] ', 'wandawulandari27', 1000, 0, 0, 40000, 'Success', '2017-12-05', 'IRVANKEDE', 'WEB', 0),
(6, '0765240', 'MOZG6KTJFT', '12am', 'Instagram Likes KP 1', 'https://www.instagram.com/p/BcUVSJMB5X-/', 1000, 0, 0, 2000, 'Success', '2017-12-05', 'IRVANKEDE', 'WEB', 0),
(7, '8393477', 'HLAWTDZA9M', '12am', 'Instagram Views KP 1', 'https://www.instagram.com/p/BcT99OXhnGE/', 1000, 0, 18, 2000, 'Success', '2017-12-05', 'IRVANKEDE', 'WEB', 0),
(9, '7829548', 'GK3OXPIHMY', 'Kuuhaku', 'Instagram Followers Indonesia KP Aktif [BONUS++] ', 'ikhsanae27', 1000, 0, 0, 40000, 'Success', '2017-12-05', 'IRVANKEDE', 'WEB', 0),
(11, '5248764', 'DMU04VJH5Z', '12am', 'Instagram Likes KP 1', 'https://www.instagram.com/p/BcYS60NB3xp/', 1000, 0, 0, 2000, 'Success', '2017-12-07', 'IRVANKEDE', 'WEB', 0),
(12, '0956445', 'V5PVD3YHZ2', 'sanclovin', 'Instagram Followers Indonesia KP Aktif [BONUS++] ', 'wisang.sanj', 200, 0, 0, 8000, 'Success', '2017-12-08', 'IRVANKEDE', 'WEB', 0),
(15, '9664639', 'OL7YJZU5UE', 'sanclovin', 'Instagram Followers Indonesia KP Aktif [BONUS++] ', 'choiridhahida01', 200, 0, 0, 8000, 'Success', '2017-12-08', 'IRVANKEDE', 'WEB', 0),
(17, '2358111', '1F5S6ERONM', 'sanclovin', 'Instagram Followers KP 10 [NON DROP] - [60 DAYS REFILL]', 'vaskan.id', 200, 0, 0, 8000, 'Success', '2017-12-08', 'IRVANKEDE', 'WEB', 0),
(24, '4650785', '2TDAOGSESU', 'sanclovin', 'Youtube Subscribers [ New & Best Server ]', 'https://www.youtube.com/channel/UCm6qczt3_PnVlq87zX7E-Cg?view_as=subscriber', 100, 0, 0, 15700, 'Success', '2017-12-10', 'IRVANKEDE', 'WEB', 0),
(25, '0899081', 'CVKKBW1CAL', 'ubrut420', 'Instagram Followers KP 1', 'ubrut_420', 200, 0, 0, 1700, 'Success', '2017-12-11', 'IRVANKEDE', 'WEB', 0),
(26, '2564297', 'W8GETHG96D', 'ubrut420', 'Instagram Likes KP 1', 'https://www.instagram.com/p/BcWlLn-ho98/', 1000, 0, 0, 2000, 'Success', '2017-12-11', 'IRVANKEDE', 'WEB', 0),
(27, '9141664', 'Y5KNK3JIZG', 'Kuuhaku', 'Instagram Followers KP 1', 'ninink_windy', 200, 0, 0, 1700, 'Success', '2017-12-11', 'IRVANKEDE', 'WEB', 0),
(33, '4722201', 'VEUT67FRGI', 'ubrut420', 'Instagram Likes KP 1', 'https://www.instagram.com/p/BXUD5M9ls-t/', 250, 0, 0, 500, 'Success', '2017-12-12', 'IRVANKEDE', 'WEB', 0),
(34, '0938341', 'NZL7OIBUXP', 'ubrut420', 'Instagram Followers KP 1', 'ajiskul_', 500, 0, 0, 4250, 'Success', '2017-12-12', 'IRVANKEDE', 'WEB', 0),
(35, '2044865', '4DOSBJHO5L', 'ubrut420', 'Instagram Likes KP 1', 'https://www.instagram.com/p/Bb9MxNdAcoG/', 400, 0, 0, 800, 'Success', '2017-12-12', 'IRVANKEDE', 'WEB', 0),

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`) VALUES
(1, 'MANUAL', '', ''),
(2, 'SOSMED989', 'https://sosmed-online.me/api.php', 'ydmXoDbwzFnmTSB6OFkO');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` int(10) NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `sid`, `category`, `service`, `note`, `min`, `max`, `price`, `status`, `pid`, `provider`) VALUES
(50, 50, 'IGN', 'Instagram Followers Indonesia PASIF', 'REAL INDO PASIF', 300, 5000, 17, 'Active', 50, 'SOSMED989'),
(245, 127, 'IGN', 'Instagram Followers Malaisya / Indonesia[INSTANT]', 'REAL INDO', 100, 10000, 23, 'Active', 127, 'SOSMED989'),
(410, 361, 'IG', '☆ Instagram Follower Server Maniac -1', 'Username Only , Instant Proses', 100, 5000, 7, 'Active', 361, 'SOSMED989'),
(411, 362, 'IG', '☆ Instagram Follower Server Maniac -2', 'Username Only', 100, 7000, 9, 'Active', 362, 'SOSMED989'),
(412, 372, 'IG', '☆ Instagram Follower Server Maniac -3', 'Username Only', 100, 60000, 8, 'Active', 372, 'SOSMED989'),
(413, 373, 'IG', '☆ Instagram Follower Server Maniac -4', 'Username Only', 100, 7000, 13, 'Active', 373, 'SOSMED989'),
(414, 374, 'IG', '☆ Instagram Follower Server Maniac -5', 'Username Only', 100, 2500, 14, 'Active', 374, 'SOSMED989'),
(415, 375, 'IG', '☆ Instagram Follower Server Maniac -6', 'Username Only', 100, 1000, 15, 'Active', 375, 'SOSMED989'),
(416, 376, 'IG', '☆ Instagram Follower Server Maniac -7', 'Username Only (15 days refill)', 1000, 10000, 16, 'Active', 376, 'SOSMED989'),
(417, 377, 'IG', '☆ Instagram Follower Server Maniac -8', 'Username Only , Auto Refill 30 days', 100, 25000, 18, 'Active', 377, 'SOSMED989'),
(418, 378, 'IG', '☆ Instagram Follower Server Maniac -9 (NONDROP)', 'Username Only , Auto Refill 30 days', 100, 10000, 17, 'Active', 378, 'SOSMED989'),
(419, 379, 'IG', '☆ Instagram Follower Server Maniac -10', 'Username Only', 100, 1500, 7, 'Active', 379, 'SOSMED989'),
(423, 9, 'IL', '●Instagram Likes VIP 1', 'Link post Instagram', 2000, 5000, 1, 'Active', 9, 'SOSMED989'),
(424, 10, 'IL', '●Instagram Likes VIP 2', 'Link post Instagram', 500, 7000, 2, 'Active', 10, 'SOSMED989'),
(425, 11, 'IL', '●Instagram Likes VIP 3', 'Link post Instagram', 100, 7000, 3, 'Active', 11, 'SOSMED989'),
(426, 30, 'ILN', ' Instagram Like Indonesia (Fast Service)', 'Link post Instagram', 100, 2000, 3, 'Active', 30, 'SOSMED989'),
(427, 63, 'IL', '●Instagram Likes S2', 'Link post Instagram', 100, 5000, 3, 'Active', 9, 'SOSMED989'),
(428, 54, 'IL', '●Instagram Likes S1', 'Link post Instagram', 200, 5000, 2, 'Active', 54, 'SOSMED989'),
(429, 64, 'IL', '●Instagram Likes S3', 'Link post Instagram', 100, 9000, 4, 'Active', 64, 'SOSMED989'),
(430, 387, 'IGN', 'Instagram Follower Indonesia (Fast)', 'Username Only , Instant Proses', 100, 5000, 25, 'Active', 387, 'SOSMED989'),
(431, 388, 'IGN', 'Instagram Follower Indonesia (Semarang)', 'Username Only', 100, 1000, 22, 'Active', 388, 'SOSMED989'),
(432, 389, 'IGN', 'Instagram Follower Indonesia (Magelang)', 'Username Only , No refill (Instant)', 100, 1000, 20, 'Active', 389, 'SOSMED989'),
(433, 390, 'IGN', 'Instagram Follower Indonesia (Sukabumi)', 'Username Only , No refill (Instant)', 100, 1000, 20, 'Active', 390, 'SOSMED989'),
(434, 391, 'IGN', 'Instagram Follower Indonesia (Bandung)', 'Username Only', 100, 5000, 25, 'Active', 391, 'SOSMED989'),
(435, 392, 'IGN', 'Instagram Follower Indonesia (Bekasi)', 'Username Only', 100, 1000, 20, 'Active', 392, 'SOSMED989'),
(436, 393, 'IGN', 'Instagram Follower Indonesia (Bali)', 'Username Only', 100, 1000, 25, 'Active', 393, 'SOSMED989'),
(437, 394, 'IGN', 'Instagram Follower Indonesia (Jakarta)', 'Username Only', 100, 1000, 25, 'Active', 394, 'SOSMED989'),
(438, 395, 'IGN', ' Instagram Follower Indonesia (Cirebon)', 'Username Only', 100, 1000, 22, 'Active', 395, 'SOSMED989'),
(439, 396, 'IGN', 'Instagram Follower Indonesia (Lampung)', 'Username Only', 100, 1000, 23, 'Active', 396, 'SOSMED989'),
(440, 397, 'IGN', 'Instagram Follower Indonesia (Palembang)', 'Username Only', 100, 1000, 25, 'Active', 397, 'SOSMED989'),
(441, 398, 'IGN', 'Instagram Follower Indonesia (Aceh)', 'Username Only', 100, 1000, 25, 'Active', 398, 'SOSMED989'),
(442, 399, 'IGN', 'Instagram Follower Indonesia (Surabaya)', 'Username Only', 100, 1000, 25, 'Active', 399, 'SOSMED989'),
(443, 400, 'IGN', 'Instagram Follower Indonesia (Bogor)', 'Username Only , No refill (Instant)', 100, 1000, 25, 'Active', 400, 'SOSMED989'),
(444, 401, 'IGN', 'Instagram Follower Indonesia (Cimahi)', 'Username Only', 100, 999, 25, 'Active', 401, 'SOSMED989'),
(445, 402, 'IGN', 'Instagram Follower Indonesia (Tangerang)', 'Username Only', 100, 1000, 25, 'Active', 402, 'SOSMED989'),
(446, 403, 'IGN', 'Instagram Follower Indonesia (Purbalingga)', 'Username Only', 100, 1000, 25, 'Active', 403, 'SOSMED989'),
(447, 404, 'IGN', 'Instagram Follower Indonesia (Sulawesi)', 'Username Only', 100, 1000, 25, 'Active', 404, 'SOSMED989'),
(448, 405, 'IGN', 'Instagram Follower Indonesia (kalimantan)', 'Username Only', 100, 1000, 25, 'Active', 405, 'SOSMED989'),
(449, 406, 'IGN', ' Instagram Follower Indonesia (Makassar)', 'Username Only', 100, 1000, 25, 'Active', 406, 'SOSMED989'),
(450, 407, 'IGN', 'Instagram Follower Indonesia (Solo)', 'Username Only', 100, 1000, 23, 'Active', 407, 'SOSMED989'),
(451, 408, 'IGN', ' Instagram Follower Indonesia (Cheap)', 'Username Only', 300, 3000, 15, 'Active', 408, 'SOSMED989'),
(464, 359, 'IL', ' Instagram Like Termurah ', 'Link post Instagram', 1000, 2000, 1, 'Active', 359, 'SOSMED989'),
(465, 411, 'IG', '☆ Instagram Follower Server Maniac -11 (Fast Service', 'Username Only', 500, 50000, 9, 'Active', 411, 'SOSMED989'),
(466, 412, 'IG', '☆ Instagram Follower Server Maniac -12', 'Username Only (0-6 Hours Start)', 200, 50000, 7, 'Active', 412, 'SOSMED989'),
(467, 413, 'IG', '☆ Instagram Follower Server Maniac -13 (Cheap)', 'Username Only (0-6 Hours Start)', 500, 10000, 6, 'Active', 413, 'SOSMED989'),
(468, 414, 'IG', '☆ Instagram Follower Server Maniac -14', 'Username Only , No refill (Instant)', 200, 2000, 9, 'Active', 414, 'SOSMED989'),
(470, 417, 'IG', '☆ Instagram Follower Server Maniac -15 ', 'Username Only', 500, 4000, 6, 'Active', 417, 'SOSMED989'),
(485, 500, 'IG', '☆ Instagram Follower SOSMED989-1 ☆', 'Username Only , No refill (Instant)', 100, 10000, 5, 'Active', 500, 'SOSMED989'),
(486, 501, 'IG', '☆ Instagram Follower SOSMED989-2 ☆', 'Username Only , No refill (Instant)', 100, 15000, 5, 'Active', 501, 'SOSMED989'),
(487, 503, 'IG', '☆ Instagram Follower SOSMED989-3 ☆', 'Username Only , No refill (Instant)', 100, 45000, 6, 'Active', 503, 'SOSMED989'),
(488, 504, 'IG', '☆ Instagram Follower SOSMED989-4 ☆', 'Username Only , No refill (10%Drop)', 100, 5000, 6, 'Active', 14, 'SOSMED989'),
(489, 505, 'IG', ' ☆ Instagram Follower SOSMED989 -5 ☆', 'Username Only , No refill (Super Fast)', 500, 5000, 7, 'Active', 515, 'SOSMED989'),
(490, 506, 'IG', '☆ Instagram Follower SOSMED989-6 ☆', 'Username Only , Fast Server (10% drop)', 500, 10000, 7, 'Active', 575, 'SOSMED989'),
(491, 507, 'IG', '☆ Instagram Follower SOSMED989-7 ☆ SUPER FAST ', 'Username Only , No refill (Instant)', 100, 70000, 10, 'Active', 507, 'SOSMED989'),
(492, 508, 'IS', '● Instagram Follower No Drop -1 ', 'Auto Refill (30 Days Maximum)  12-24 Hours Start!  500 - 1K/Day', 100, 15000, 9, 'Active', 508, 'SOSMED989'),
(493, 509, 'IS', '● Instagram Follower No Drop -2', 'Auto Refill (25 Days Maximum)  One Day Finish!  <br>Max Per Order 3000  Non Drop  High Quality! <br> 0-1 Hour Start, usually Instant! ', 100, 8000, 10, 'Active', 509, 'SOSMED989'),
(494, 510, 'IS', '● Instagram Follower No Drop -3', 'HQ  Refill (30 Days Maximum)  0-12 Hours Start!  500 - 1K/Day ', 100, 7000, 8, 'Active', 510, 'SOSMED989'),
(495, 511, 'IS', '● Instagram Follower No Drop -4', 'Real  Refill (30 Days Maximum)  0-3 Hours Start! ', 100, 10000, 10, 'Active', 511, 'SOSMED989'),
(496, 512, 'IS', '● Instagram Follower No Drop -5', 'HQ  Refill (30 Days Maximum)  0-12 Hours Start! ', 100, 10000, 12, 'Active', 512, 'SOSMED989'),
(497, 513, 'IS', '● Instagram Follower No Drop -6', 'Best Service  Auto Refill (30 Days Maximum)  0-6 Hours Start!  5-10K/Day ', 100, 50000, 16, 'Active', 513, 'SOSMED989'),
(503, 366, 'IG', 'Instagram follower (Brazil) Refill 20 days', 'Username Only  No Refill / No Refund  0-1 Hour Start!  Instant Delivery ', 200, 9000, 28, 'Active', 366, 'SOSMED989'),
(505, 47, 'IG', 'Instagram follower (Turkish)', 'Username Only', 100, 10000, 6, 'Active', 47, 'SOSMED989'),
(506, 519, 'IV', 'Instagram Views [30K] [REAL] ', 'Real Views! ', 100, 10000, 1, 'Active', 519, 'SOSMED989'),
(507, 441, 'IV', 'Instagram Views [800K] [REAL] Fast', 'Real Views! ', 200, 800000, 3, 'Active', 441, 'SOSMED989'),
(508, 447, 'IA', 'Instagram Like Hot Termurah', 'Link post Instagram', 100, 2500, 1, 'Active', 447, 'SOSMED989'),
(509, 177, 'IA', 'Instagram Auto Likes + Impressions [30K] ', 'New Posts = For How Many \"Future\" Posts You Want The Auto Like To Run  Min = Minimum Quantity Of Likes And Impressions You Want The Post To Have  Max = Maximum Quantity Of Likes And Impressions You Want The Post To Have ', 100, 30000, 5, 'Active', 177, 'SOSMED989'),
(510, 490, 'IA', 'Instagram Auto Views 800k', 'New Posts = For How Many \"Future\" Posts You Want The Auto Like To Run', 100, 800000, 3, 'Active', 490, 'SOSMED989'),
(511, 529, 'IA', 'Instagram Auto Views + Impressions [900K] ', 'New Post', 100, 800000, 4, 'Active', 529, 'SOSMED989'),
(512, 570, 'IGS', 'Instagram Story Views [30K] ', 'Username Only  0-1 Hour Start!  Ultra Fast! ', 100, 30000, 4, 'Active', 570, 'SOSMED989'),
(513, 546, 'IGS', 'Instagram Story Views [50K] ', 'Username Only', 500, 50000, 5, 'Active', 546, 'SOSMED989'),
(514, 576, 'IGS', 'Instagram Impressions [5K]', 'No Refill No Refund', 500, 5000, 5, 'Active', 576, 'SOSMED989'),
(515, 448, 'IGS', 'Instagram Saves [15K] ', 'No Refill No Refund', 100, 15000, 2, 'Active', 448, 'SOSMED989'),
(516, 461, 'IGS', 'Instagram Story Poll Votes ', 'IG Poll Votes  Link Example for Option 1: USERNAME?vote=1 <br>  Link Example for Option 2: USERNAME?vote=2  0-1 Hour Start! ', 50, 10000, 80, 'Active', 461, 'SOSMED989'),
(517, 555, 'IC', 'Instagram Comments [50K] [RANDOM] ', 'No Refill / No Refund <br>  Random Comments ', 50, 50000, 15, 'Active', 555, 'SOSMED989'),
(518, 554, 'IC', 'Instagram Comments [50K] [CUSTOM]', 'Put Each Comment On A Line <br> Comments Including Mentions (\"@\") Are Not Accepted ', 50, 50000, 13, 'Active', 554, 'SOSMED989'),
(519, 169, 'IV', 'Instagram Live Video Likes [10K] ', 'Username Only  No Refill / No Refund  Likes On Live Video ', 200, 10000, 4, 'Active', 169, 'SOSMED989'),
(520, 552, 'FB', 'Facebook Page Likes [10K] [Refill 15 Days] ', 'Link Page Fb , Real Human', 200, 10000, 6, 'Active', 552, 'SOSMED989'),
(521, 91, 'GL', 'Facebook Page Likes [50K] [Refill 60] ', 'Real  Life Time Non Drop Guaranteed ', 100, 50000, 8, 'Active', 91, 'SOSMED989'),
(522, 83, 'FB', 'Facebook Page Likes [17K] [Refill 30days ]', 'Link Page Fb , Real Human', 10, 17000, 9, 'Active', 83, 'SOSMED989'),
(523, 43, 'FB', 'Facebook Page Likes [150K] [Refill 30days]', 'Link Page Fb , Real Human', 100, 150000, 10, 'Active', 43, 'SOSMED989'),
(524, 551, 'FB', 'Facebook Page Likes [50K] [INSTANT] Life Time Guaranted', 'Link Page Fb , Real Human', 100, 50000, 15, 'Active', 551, 'SOSMED989'),
(525, 476, 'FB', 'Facebook Page Likes [Life Time Warranty]', 'Link Page Fb , Real Human', 100, 999999, 12, 'Active', 479, 'SOSMED989'),
(526, 556, 'IV', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'Real Views! ', 100, 100000, 1, 'Active', 556, 'SOSMED989'),
(527, 492, 'IV', 'Instagram Views 700k [Real]', 'Instant start', 100, 700000, 2, 'Active', 492, 'SOSMED989'),
(528, 2, 'IV', 'Instagram Views [999K] [REAL] ', 'Real Instant', 100, 999999, 5, 'Active', 2, 'SOSMED989'),
(529, 367, 'IAL', '80 Auto Likes + Views - 7 Days ', 'Username Only  <br>Takes Up To 12 Hours To Enter The System  Instantly Get Likes To All Your Future Post For 7 Days ', 1000, 1000, 10, 'Active', 367, 'SOSMED989'),
(530, 368, 'IAL', '150 Auto Likes + Views - 7 Days ', 'Username Only <br> Takes Up To 12 Hours To Enter The System <br> Instantly Get Likes To All Your Future Post For 7 Days', 1000, 1000, 20, 'Active', 368, 'SOSMED989'),
(531, 369, 'IAL', '300 Auto Likes + Views - 7 Days ', 'Username Only <br> Takes Up To 12 Hours To Enter The System <br> Instantly Get Likes To All Your Future Post For 7 Days', 1000, 1000, 30, 'Active', 369, 'SOSMED989'),
(532, 370, 'IAL', '600 Auto Likes + Views - 7 Days ', 'Username Only <br> Takes Up To 12 Hours To Enter The System <br> Instantly Get Likes To All Your Future Post For 7 Days', 1000, 1000, 50, 'Active', 370, 'SOSMED989'),
(533, 573, 'FBC', 'Facebook Post Likes [10K] ', 'Put Link Of Facebook Profile/Page Post ', 100, 10000, 6, 'Active', 573, 'SOSMED989'),
(534, 256, 'FBC', 'Facebook Post Likes [15K]', 'Put Link Of Facebook Profile/Page Post ', 100, 10000, 6, 'Active', 256, 'SOSMED989'),
(535, 574, 'FBC', 'Facebook Post Likes [20K]', 'Put Link Of Facebook Profile/Page Post ', 100, 20000, 7, 'Active', 574, 'SOSMED989'),
(536, 150, 'FBC', 'Facebook Post Likes [1K] [EMOTICONS] [LOVE]', 'Put Link Of Facebook Profile/Page Post ', 100, 1000, 5, 'Active', 150, 'SOSMED989'),
(537, 151, 'FBC', 'Facebook Post Likes [1K] [EMOTICONS] [HAHA]', 'Put Link Of Facebook Profile/Page Post ', 100, 1000, 5, 'Active', 151, 'SOSMED989'),
(538, 152, 'FBC', 'Facebook Post Likes [1K] [EMOTICONS] [WOW]', 'Put Link Of Facebook Profile/Page Post ', 100, 1000, 5, 'Active', 152, 'SOSMED989'),
(539, 153, 'FBC', 'Facebook Post Likes [1K] [EMOTICONS] [SAD]', 'Put Link Of Facebook Profile/Page Post ', 100, 1000, 5, 'Active', 153, 'SOSMED989'),
(540, 264, 'FBC', 'Facebook Post Likes [1K] [EMOTICONS] [ANGRY]', 'Put Link Of Facebook Profile/Page Post ', 100, 1000, 5, 'Active', 264, 'SOSMED989'),
(541, 220, 'FBW', 'Facebook Website Likes [10K] [Refill 30days] ????', 'Real , Refill 30 Days', 100, 10000, 10, 'Active', 220, 'SOSMED989'),
(542, 580, 'FBW', 'Facebook Video Views [10M]', 'Real Instant (Link Video FB)', 100, 1000000, 580, 'Active', 6, 'SOSMED989'),
(543, 563, 'YTV', 'Youtube Views [1M] [R60]', 'Link Video Youtube', 1000, 100000000, 5, 'Active', 563, 'SOSMED989'),
(544, 562, 'YTV', 'Youtube Views [1M] [Refill 60 days] ', '60-90 second Watching Per View', 1000, 10000000, 6, 'Active', 562, 'SOSMED989'),
(545, 489, 'YTV', 'Youtube Views [500K] [AUTO Refill 10 days]', 'Random Time Watching', 2000, 500000, 7, 'Active', 489, 'SOSMED989'),
(546, 516, 'YTV', 'Youtube Views [10M] [AUTO Refill 30days]', 'Auto Refill Every 24 Hours  Refill (30 Days Maximum) <br>30-60 second time watching ', 1000, 1000000, 8, 'Active', 516, 'SOSMED989'),
(547, 119, 'YT', 'Youtube Likes [5K] [R60] ', 'Put Link Of Video  Video must be more than 1 minute or order will not start ', 100, 5000, 10, 'Active', 119, 'SOSMED989'),
(548, 120, 'YT', 'Youtube DisLikes [5K] [R60] ', 'Put Link Of Video  Video must be more than 1 minute or order will not start ', 100, 5000, 10, 'Active', 120, 'SOSMED989'),
(549, 487, 'YT', 'Youtube Subscribers [500K] Life Time Warranty', 'Real , 0-12 hour start', 100, 500000, 130, 'Active', 487, 'SOSMED989'),
(550, 543, 'YT', 'Youtube Subscribers [2K] [EXCLUSIVE] [NEVER DROP] ', 'Real 100% (put link channel)', 100, 2000, 290, 'Active', 543, 'SOSMED989'),
(551, 122, 'YT', 'Youtube Comment Likes [UPVOTES] [100K] [REAL] [R30] ', 'Put Link Of Comment (Not Video) ', 100, 1000000, 25, 'Active', 122, 'SOSMED989'),
(552, 124, 'YT', 'Youtube Comment DisLikes [DOWNVOTES] [100K] [REAL] [R30] ', 'Put Link Of Comment (Not Video) ', 100, 100000, 25, 'Active', 124, 'SOSMED989'),
(553, 123, 'YT', 'Youtube Shares [150K] [R∞]', 'Put link video', 500, 1500000, 11, 'Active', 123, 'SOSMED989'),
(554, 363, 'TG', 'Telegram Channel Member (Public Channel)', 'Link Channel', 100, 25000, 35, 'Active', 363, 'SOSMED989'),
(555, 364, 'TG', 'Telegram Post Views [10K] [Last 5 Post] ', 'Link post Telegram', 100, 10000, 30, 'Active', 364, 'SOSMED989'),
(556, 451, 'IG', 'Instagram Follower Private (Instant)', 'Username Only', 200, 6000, 7, 'Active', 445, 'SOSMED989'),
(557, 459, 'IG', 'Instagram Follower Private 2 (Instant)', 'Username Only', 200, 4500, 9, 'Active', 459, 'SOSMED989'),
(558, 460, 'IG', 'Instagram Follower Private 1 (Instant)', 'Username Only', 100, 4500, 6, 'Active', 460, 'SOSMED989');

-- --------------------------------------------------------

--
-- Table structure for table `service_cat`
--

CREATE TABLE `service_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `service_cat`
--

INSERT INTO `service_cat` (`id`, `name`, `code`) VALUES
(1, '☆Instagram Followers (Not Warranty)', 'IG'),
(2, '☆Instagram Likes Worldwide', 'IL'),
(3, '☆Instagram Views / Video Live', 'IV'),
(4, '☆Instagram Comments', 'IC'),
(5, '●Twitter', 'TW'),
(6, '●Facebook page Likes', 'FB'),
(7, '●Youtube Like / Subscribe / Comment', 'YT'),
(8, '♧SoundCloud', 'SC'),
(9, '♧Spotify', 'SP'),
(10, '♧Vine', 'VN'),
(11, '♧Musical.ly', 'MY'),
(12, '●Telegram', 'TG'),
(13, '☆Instagram Follower Indonesia ', 'IGN'),
(14, '♧Pinterest', 'PT'),
(15, '■Google', 'GL'),
(16, '☆Instagram Auto Like/View/Comments/Impression', 'IA'),
(17, '☆Instagram Follower (Warranty)', 'IS'),
(18, '☆Instagram Auto Like ', 'IAL'),
(19, '☆ Instagram Like Indonesia', 'ILN'),
(20, '☆Instagram Mention', 'IGM'),
(21, '☆Instagram Story/Impression/Saves', 'IGS'),
(22, '●Facebook Post Likes/Comments/Share', 'FBC'),
(23, '●Facebook Website Likes', 'FBW'),
(24, '●Youtube Views/Live streaming/Dailymotion', 'YTV'),
(25, '●Website Traffic1', 'WBT');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `level` enum('Admin','Reseller') COLLATE utf8_swedish_ci NOT NULL,
  `pict` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `contact`, `level`, `pict`) VALUES
(8, 'Erick', '<a href=\"http://t.me/chandra989\">TELEGRAM</a> \r\n<br><a href=\"https://wasap.my/+601151653034\">WHATSAP', 'Admin', 'http://sosmed989.club/mobilelegends.png');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `status` enum('Pending','Responded','Closed','Waiting') COLLATE utf8_swedish_ci NOT NULL,
  `seen_user` int(1) NOT NULL DEFAULT '1',
  `seen_admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_message`
--

CREATE TABLE `tickets_message` (
  `id` int(10) NOT NULL,
  `ticket_id` int(10) NOT NULL,
  `sender` enum('Member','Admin') COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_balance`
--

CREATE TABLE `transfer_balance` (
  `id` int(10) NOT NULL,
  `sender` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `transfer_balance`
--

INSERT INTO `transfer_balance` (`id`, `sender`, `receiver`, `quantity`, `date`) VALUES
(1, 'Chandra989', 'Deku', 5, '2018-03-30'),
(2, 'Chandra989', 'Deku', 20, '2018-03-30'),
(3, 'Chandra989', 'Deku', 2, '2018-03-30'),
(4, 'Chandra989', 'Deku', 5, '2018-03-30'),
(5, 'Chandra989', 'aben_moon', 65, '2018-03-31'),
(6, 'Chandra989', 'Skywalkzz', 45, '2018-03-31'),
(7, 'Chandra989', 'aben_moon', 130, '2018-04-01'),
(8, 'Chandra989', 'aben_moon', 4, '2018-04-01'),
(9, 'Chandra989', 'aben_moon', 4, '2018-04-01'),
(10, 'Chandra989', 'aben_moon', 13, '2018-04-01'),
(11, 'Chandra989', 'aben_moon', 14, '2018-04-01'),
(12, 'Chandra989', 'pokchek', 3, '2018-04-01'),
(13, 'Chandra989', 'aben_moon', 8, '2018-04-01'),
(14, 'Chandra989', 'Deku', 3, '2018-04-01'),
(15, 'Chandra989', 'aben_moon', 195, '2018-04-02'),
(16, 'Chandra989', 'aben_moon', 65, '2018-04-03'),
(17, 'Chandra989', 'aben_moon', 105, '2018-04-03'),
(18, 'Chandra989', 'aben_moon', 130, '2018-04-04'),
(19, 'Chandra989', 'mierulboyka', 10, '2018-04-04'),
(20, 'Chandra989', 'haariiis__', 10, '2018-04-04'),
(21, 'Chandra989', 'haariiis__', 15, '2018-04-04'),
(22, 'Chandra989', 'skywalkzz', 75, '2018-04-04'),
(23, 'Chandra989', 'aben_moon', 195, '2018-04-04'),
(24, 'Chandra989', 'Deku', 33, '2018-04-04'),
(25, 'Chandra989', 'aben_moon', 65, '2018-04-04'),
(26, 'Chandra989', 'aben_moon', 70, '2018-04-05'),
(27, 'Chandra989', 'aben_moon', 65, '2018-04-05'),
(28, 'Chandra989', 'aben_moon', 40, '2018-04-05'),
(29, 'Chandra989', 'aben_moon', 78, '2018-04-06'),
(30, 'Chandra989', 'skywalkzz', 30, '2018-04-06'),
(31, 'Chandra989', 'aben_moon', 65, '2018-04-06'),
(32, 'Chandra989', 'Chandra989123', 1, '2018-04-07'),
(33, 'Chandra989', 'labuci93', 10, '2018-04-08'),
(34, 'Chandra989', 'aben_moon', 65, '2018-04-08'),
(35, 'Chandra989', 'Idhamsya', 50, '2018-04-08'),
(36, 'Aben_moon', 'cinakkabr', 11, '2018-04-09'),
(37, 'Aben_moon', 'irwandgr8', 75, '2018-04-09'),
(38, 'Aben_moon', 'syamimie93 ', 26, '2018-04-09'),
(39, 'Aben_moon', 'anmnazy', 45, '2018-04-09'),
(40, 'Aben_moon', 'crxdd99', 10, '2018-04-11'),
(41, 'Aben_moon', 'asniranasrah', 50, '2018-04-11'),
(42, 'Aben_moon', 'awgmdfs_', 5, '2018-04-11'),
(43, 'Aben_moon', 'khairulradzi', 5, '2018-04-11'),
(44, 'Aben_moon', 'dannysoprano', 10, '2018-04-11'),
(45, 'Aben_moon', 'zuirman', 10, '2018-04-11'),
(46, 'Aben_moon', 'ainaibrahim', 10, '2018-04-11'),
(47, 'Aben_moon', 'Acap2018', 15, '2018-04-11'),
(48, 'Aben_moon', 'cinakkabr', 25, '2018-04-12'),
(49, 'Aben_moon', 'asniranasrah', 40, '2018-04-12'),
(50, 'Aben_moon', 'izateirzat', 10, '2018-04-12'),
(51, 'Aben_moon', 'khairulradzi', 5, '2018-04-12'),
(52, 'Aben_moon', 'bulukun', 200, '2018-04-12'),
(53, 'Aben_moon', 'danicukcamm_', 10, '2018-04-12'),
(54, 'Aben_moon', 'ainaibrahim', 10, '2018-04-12'),
(55, 'Aben_moon', 'Asyiboutique', 15, '2018-04-13'),
(56, 'Aben_moon', 'iamqfeya_', 20, '2018-04-13'),
(57, 'Aben_moon', 'Deeno', 10, '2018-04-13'),
(58, 'Aben_moon', 'anmnazy', 60, '2018-04-14'),
(59, 'Aben_moon', 'Nursuhaidah98', 10, '2018-04-14'),
(60, 'Aben_moon', 'Dniel.md', 10, '2018-04-14'),
(61, 'Aben_moon', 'anmnazy', 350, '2018-04-15'),
(62, 'Aben_moon', 'iamqfeya_', 10, '2018-04-15'),
(63, 'Aben_moon', 'Nursuhaidah98', 10, '2018-04-17'),
(64, 'Aben_moon', 'ainaibrahim', 10, '2018-04-18'),
(65, 'Aben_moon', 'Syahiran97', 10, '2018-04-19'),
(66, 'Aben_moon', 'anmnazy', 150, '2018-04-20'),
(67, 'Aben_moon', 'Syahiran97', 50, '2018-04-20'),
(68, 'Aben_moon', 'pnrlsxx', 10, '2018-04-20'),
(69, 'Aben_moon', 'the_shafa', 30, '2018-04-21'),
(70, 'Aben_moon', 'Izzatti', 10, '2018-04-22'),
(71, 'Aben_moon', 'cinakkabr', 20, '2018-04-22'),
(72, 'Aben_moon', 'Syahiran97', 10, '2018-04-23'),
(73, 'Aben_moon', 'anmnazy', 250, '2018-04-24'),
(74, 'Aben_moon', 'Lilysandra88', 10, '2018-04-24'),
(75, 'Aben_moon', 'Syahiran97', 10, '2018-04-25'),
(76, 'Aben_moon', 'anmnazy', 130, '2018-04-25'),
(77, 'Aben_moon', 'Naabkz_', 10, '2018-04-25'),
(78, 'Aben_moon', 'Syahiran97', 10, '2018-04-26'),
(79, 'Aben_moon', 'pnrlsxx', 50, '2018-04-26'),
(80, 'Aben_moon', 'awgmdfs_', 10, '2018-04-27'),
(81, 'Aben_moon', 'Syahiran97', 10, '2018-04-27'),
(82, 'Aben_moon', 'Deeno', 60, '2018-04-27'),
(83, 'Aben_moon', 'syamerakhq', 10, '2018-04-27'),
(84, 'Aben_moon', 'anmnazy', 130, '2018-04-28'),
(85, 'Aben_moon', 'syamerakhq', 50, '2018-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `balance` double NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `registered` date NOT NULL,
  `status` enum('Active','Suspended') COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `verif_code` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `balance`, `level`, `registered`, `status`, `email`, `api_key`, `uplink`, `verif_code`) VALUES
(1, 'Aben_moon', 'Admin123', 97828.7, 'Developers', '2018-04-01', 'Active', '', '', 'server', ''),
(250, 'syamimie93', 'syamimie93', 4, 'Member', '2018-04-09', 'Active', '', 'L7UpvomoFH9w0rkkUUeo', 'Aben_moon', ''),
(251, 'irwandgr8', 'i1818284', 63.47199999999999, 'Member', '2018-04-09', 'Active', '', 'ncCdsbt5jIqNGA8ciSvq', 'Aben_moon', ''),
(252, 'cinakkabr', 'sa230116', 9.750999999999998, 'Member', '2018-04-09', 'Active', '', 'M0dfa4b9wbRZ0Rk6aYlh', 'Aben_moon', ''),
(253, 'anmnazy', '12345678', 42.74700000000006, 'Member', '2018-04-09', 'Active', '', 'FU8M9a7HSZQb8lPXG0d4', 'Aben_moon', ''),
(254, 'crxdd99', 'brody231199', 1, 'Member', '2018-04-11', 'Active', '', '0viIymlIgtEgkRqDiHXC', 'Aben_moon', ''),
(255, 'asniranasrah', '020461MAma', 69.58, 'Member', '2018-04-11', 'Active', '', '8WzrSgP5rPGMF8fLyBaf', 'Aben_moon', ''),
(256, 'awgmdfs_', 'yahama55', 4.831999999999999, 'Member', '2018-04-11', 'Active', '', 'bd4wbkojKvkV97FYrtJQ', 'Aben_moon', ''),
(257, 'khairulradzi', 'qam137889', 1.8340000000000014, 'Member', '2018-04-11', 'Active', '', 'Gf024KpL1Llx8b0aqwR2', 'Aben_moon', ''),
(258, 'Admin', '123123', 0, 'Member', '2018-04-11', 'Suspended', 'erickchandra1087@gmail.com', 'D8wEuU2fZHSWK9LoCuQt', 'free_register', '8279381665'),
(259, 'Admin123', '123123', 0, 'Member', '2018-04-11', 'Suspended', 'erickchandra1087@gmail.com', '43yx6Y4Opknv0F1B0e2x', 'free_register', '2422073068'),
(260, 'aben_moon123', '123123', 0, 'Member', '2018-04-11', 'Active', 'erickchandra1087@gmail.com', 'j4TkUmMgv7eA1fa1tscH', 'free_register', '6742580905'),
(261, 'azri4lyfe', 'azri0785', 5, 'Member', '2018-04-11', 'Active', '', '3P8g0Gw0Yhep3iDX9BR1', 'Aben_moon', ''),
(262, 'dboyz', 'Instagram123', 0, 'Member', '2018-04-11', 'Active', 'dboyzrc@gmail.com', 'GJCJ5kEQYbBVSBBoMHH7', 'free_register', '1847985481'),
(263, 'dexterlex122@gmail.com', 'XEL_RETXED', 1.5700000000000003, 'Member', '2018-04-11', 'Active', '', 'CBXRVg9yrrW8mR9IXiqg', 'Aben_moon', ''),
(264, 'dannysoprano', 'Instagram123', 6.976, 'Member', '2018-04-11', 'Active', 'dannysoprano77777@gmail.com', 'SDYpcBGEa6ODZkGepawA', 'free_register', '0007603638'),
(265, 'zuirman', 'zui123', 0.2999999999999998, 'Member', '2018-04-11', 'Active', 'juuaras92@gmail.com', '1XohT0MGL4t5K5e5apb3', 'free_register', '6988951161'),
(266, 'ainaibrahim', 'aina2004', 4.5, 'Member', '2018-04-11', 'Active', 'aina55380@gmail.com', 'GvLIZDilKdNeC4fi2TJi', 'free_register', '2646590693'),
(267, 'Acap2018', 'Murniacap', 13.65, 'Member', '2018-04-11', 'Active', 'acapsenget66@gmail.com', 'onvB41rc2XjkIYewpv0u', 'free_register', '8689137155'),
(268, 'Dniel.md', 'danielrosman', 0.13699999999999957, 'Member', '2018-04-12', 'Active', 'm..drosman@yes.my', 'xAie8QHbKK8WIXo7GhRR', 'free_register', '3178747697'),
(269, 'izateirzat', 'izateirzat23', 9.376999999999999, 'Member', '2018-04-12', 'Active', 'izateirzat123@gmail.com', 'FHxYhDyoWK3f5umSi1tw', 'free_register', '3828728677'),
(270, 'bulukun', 'Bulukun', 205, 'Member', '2018-04-12', 'Active', '', '7gdMjarqbJRt6EdPipuX', 'Aben_moon', ''),
(271, 'danicukcamm_', 'danicukcamm_', 1.8380000000000005, 'Member', '2018-04-12', 'Active', '', '5LiUbstfqUsHN5vsMcpZ', 'Aben_moon', ''),
(272, 'asyiboutique', 'nurul2010', 13.215, 'Member', '2018-04-13', 'Active', 'nurulasyiqin199@gmail.com', 'ks5Hmt8LFOu0scocHjjJ', 'free_register', '2907367448'),
(273, 'iamqfeya_', 'Hafizah97', 3.1389999999999993, 'Member', '2018-04-13', 'Active', 'hafierospea112@gmail.com', 'IwEThvzYdzV7vmdX5CYL', 'free_register', '5745196361'),
(274, 'Deeno', 'fucker94', 60, 'Member', '2018-04-13', 'Active', 'dinzrickee@gmail.com', 'yjkEjoqBYB0xvRKQqHc5', 'free_register', '7166979670'),
(275, 'Nursuhaidah98', '981012', 5.242, 'Member', '2018-04-14', 'Active', 'nrsuhaidah6@gmail.com', 'jYRS9r1ywWiZPhEe6xdd', 'free_register', '7298181067'),
(276, 'Atikajd', 'aj97488138', 0, 'Member', '2018-04-19', 'Active', 'nurulatikaj@gmail.com', 'l0ryJfkUUoYhquHOuPUM', 'free_register', '5502532217'),
(277, 'Syahiran97', 'Iran5167', 0.6120000000000001, 'Member', '2018-04-19', 'Active', 'syahiran970605@icloud.com', 'PQYr6uGrAUp8qEDs3q6v', 'free_register', '6901324858'),
(278, 'pnrlsxx', 'puteri16', 43.3, 'Member', '2018-04-20', 'Active', 'wingchuen63@gmail.com', 'gqByqCwAAQPeuh6vIdJu', 'free_register', '6579899495'),
(279, 'the_shafa', '971002136270', 24.713999999999995, 'Member', '2018-04-21', 'Active', '', '2V40NarnBDLyknoJCO8t', 'Aben_moon', ''),
(280, 'Lilysandra88', 'Fazlee1988', 6.3999999999999995, 'Member', '2018-04-22', 'Active', 'lily.mama51@yahoo.com', 'wUdfqPXKhrAjy3f2Ab3f', 'free_register', '9354343517'),
(281, 'Izzatti', 'ibrahim', 0, 'Member', '2018-04-22', 'Active', 'anakmetalx7@gmail.com', 'Z0mOXQ3fMzbWttRWWGwh', 'free_register', '7863740911'),
(282, 'Naabkz_', 'Kamarul96', 0.0010000000000000009, 'Member', '2018-04-25', 'Active', 'yayafefa04@gmail.com', 'NxmkxayCk9g0ZjZ5utOk', 'free_register', '6825670441'),
(283, 'injung', 'injung946', 0, 'Member', '2018-04-27', 'Active', 'injungmatt@gmail.com', 'OkADd5O2KyxtCuri6Az3', 'free_register', '7409991453'),
(284, 'Syamerakhq', 'merakk', 6, 'Member', '2018-04-27', 'Active', 'syamerakhq@gmail.com', 'Oev9MDFT9gQX0gFc2j4A', 'free_register', '0101610262');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance_history`
--
ALTER TABLE `balance_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_method`
--
ALTER TABLE `deposit_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_cat`
--
ALTER TABLE `service_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_message`
--
ALTER TABLE `tickets_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_balance`
--
ALTER TABLE `transfer_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance_history`
--
ALTER TABLE `balance_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=843;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `deposit_method`
--
ALTER TABLE `deposit_method`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2985;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT for table `service_cat`
--
ALTER TABLE `service_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets_message`
--
ALTER TABLE `tickets_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_balance`
--
ALTER TABLE `transfer_balance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
