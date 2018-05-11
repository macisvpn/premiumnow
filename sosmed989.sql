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
 
 
 ++++$$$
 
 Maniac -10', 'wainord', 1000, 1000, 0, 6, 'Error', '2018-04-06', 'IRVANKEDE', 'API', 1),
(2440, '8347925', '140872', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'wainord', 1000, 0, 5859, 6, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2441, '2496826', '141135', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/BhO_n5ZAAYY/', 200, 0, 3, 0.25, 'Success', '2018-04-06', 'IRVANKEDE', 'WEB', 0),
(2442, '2991178', '141164', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://instagram.com/p/BhL6Xp4FEmd/', 500, 0, 138, 0.5, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2443, '5274674', '141167', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://instagram.com/p/Bg8k9YUlmtk/', 500, 0, 148, 0.5, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2444, '2775947', '141172', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://instagram.com/p/BgupcKDh3L4/', 500, 0, 182, 0.5, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2445, '4137818', '141174', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://instagram.com/p/BgVg0QcFnMJ/', 500, 0, 210, 0.5, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2446, '0070632', '141184', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/BhPA0l1g5mm/', 500, 0, 8, 0.625, 'Success', '2018-04-06', 'IRVANKEDE', 'WEB', 0),
(2447, '4105102', '141202', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'el_hotfm', 1000, 0, 32799, 8, 'Success', '2018-04-06', 'IRVANKEDE', 'WEB', 0),
(2448, '9943035', '141227', 'skywalkzz', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/Be4zsQeB0uF/', 1000, 0, 417, 0.75, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2449, '4129595', '141255', 'skywalkzz', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/BhPDf-JAorB/', 1000, 0, 3, 0.75, 'Success', '2018-04-06', 'IRVANKEDE', 'API', 0),
(2450, '4111422', '141261', 'skywalkzz', 'ðŸ†” Instagram Like Indonesia (+Bonus)', 'https://www.instagram.com/p/BhPDf-JAorB/', 500, 0, 0, 1.5, 'Error', '2018-04-06', 'IRVANKEDE', 'API', 1),
(2451, '2089637', '141264', 'skywalkzz', 'ðŸ†” Instagram Like Indonesia (+Bonus)', 'https://www.instagram.com/p/BhPDf-JAorB/', 500, 0, 0, 1.5, 'Error', '2018-04-06', 'IRVANKEDE', 'API', 1),
(2452, '7608221', '141532', 'Aben_moon', 'ðŸ’ŒInstagram Likes VIP 3', 'https://instagram.com/p/BhMcQ6_lYvu/', 200, 0, 48, 0.25, 'Success', '2018-04-07', 'IRVANKEDE', 'API', 0),
(2453, '2210737', '141700', 'Chandra989', 'ðŸ’ŒInstagram Likes S3', 'https://www.instagram.com/p/BhPBNpdAeJ3/', 500, 0, 33, 1.5, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2454, '5514416', '141846', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -14', 'shaadey.gadget', 2000, 0, 2511, 16, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2455, '6290298', '141848', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'faizrazak_', 1000, 0, 101987, 8, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2456, '6759199', '141850', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'el_hotfm', 1500, 1500, 0, 9, 'Error', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2457, '4376270', '141927', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'el_hotfm', 1000, 913, 35826, 6, 'Partial', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2458, '0237337', '141929', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'el_hotfm', 1500, 1500, 0, 9, 'Error', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2459, '7320718', '141930', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'shaadey.gadget', 1500, 1500, 2690, 9, 'Partial', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2460, '5474951', '141932', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'muhammadakram', 1500, 632, 853, 9, 'Partial', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2461, '7160514', '141933', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'muhammadakram', 1500, 1500, 0, 9, 'Error', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2462, '8798984', '142203', 'Chandra989123', 'ðŸ’ŒInstagram Likes VIP 3', 'Tedt', 200, 0, 0, 0.25, 'Partial', '2018-04-07', 'IRVANKEDE', 'API', 1),
(2463, '7376496', '142435', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://instagram.com/p/BhP8jsKDlXY/', 7000, 7000, 0, 8.75, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2464, '1931328', '142436', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 1', 'https://instagram.com/p/BhP8jsKDlXY/', 5000, 5000, 0, 3.75, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2465, '5321262', '142438', 'Chandra989', 'ðŸ’ŒInstagram Like VIP 2', 'https://instagram.com/p/BhP8jsKDlXY/', 7000, 7000, 0, 7, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2466, '7829454', '142439', 'Chandra989', 'ðŸ’ŒInstagram Likes S1', 'https://instagram.com/p/BhP8jsKDlXY/', 1000, 1000, 0, 1, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2467, '7674586', '142695', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 1', 'Test Order', 1000, 0, 0, 0.75, 'Error', '2018-04-07', 'IRVANKEDE', 'API', 1),
(2468, '2005448', '142847', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 1', 'Test Order 123', 1000, 0, 0, 0.75, 'Error', '2018-04-07', 'IRVANKEDE', 'API', 1),
(2469, '0979547', '142853', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'Test Order 1233', 1000, 500, 0, 1.25, 'Partial', '2018-04-07', 'IRVANKEDE', 'API', 1),
(2470, '4386953', '143072', 'pokchek', 'ðŸ†•ðŸ’Œ Instagram Like Termurah (RM 0.50 / 1k Like)', 'https://www.instagram.com/p/BhN5K8DBz6i/', 2000, 0, 0, 1, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2471, '3364298', '143463', 'Deku', 'ðŸŒ Instagram Follower Server Maniac -13 (Cheap)', 'khai._10', 2000, 0, 5189, 10, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2472, '2224616', '144093', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -10', 'faizhaq_', 1000, 500, 200, 6, 'Partial', '2018-04-07', 'IRVANKEDE', 'WEB', 1),
(2473, '8462218', '144097', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -15 ', 'faizhaq_', 1000, 0, 2730, 6, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2474, '3624447', '144722', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://www.instagram.com/p/BhPNvjIA67I/', 500, 0, 0, 0.5, 'Success', '2018-04-07', 'IRVANKEDE', 'API', 0),
(2475, '4481173', '144724', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://www.instagram.com/p/BhQzLeSguBE/', 500, 0, 0, 0.5, 'Success', '2018-04-07', 'IRVANKEDE', 'API', 0),
(2476, '9443748', '144845', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -15 ', 'faizhaq_', 1000, 1000, 0, 6, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2477, '2978126', '144848', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -10', 'faizhaq_', 1000, 1000, 0, 6, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2478, '3392547', '144957', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -15 ', 'mxhdnxrimxn', 1000, 1000, 0, 6, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2479, '6211295', '144960', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -10', 'mxhdnxrimxn', 1000, 1000, 0, 6, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2480, '9611794', '145079', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/Bbv2wIRBWpQ/', 200, 200, 0, 0.25, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2481, '1756083', '145183', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -10', 'mxhdnxrimxn', 500, 500, 0, 3, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2482, '2413920', '145188', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -10', 'faizhaq_', 500, 500, 0, 3, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2483, '9171788', '145884', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -10', 'Kingrojak', 1500, 1500, 0, 9, 'Processing', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2484, '7216659', '145974', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/Bc6X9gIBiVN/', 200, 200, 0, 0.25, 'Success', '2018-04-07', 'IRVANKEDE', 'WEB', 0),
(2485, '8161163', '146058', 'Aben_moon', 'ðŸ’ŒInstagram Like VIP 2', 'https://www.instagram.com/p/BhRca3IA2zU/', 500, 0, 11, 0.5, 'Success', '2018-04-08', 'IRVANKEDE', 'API', 0),
(2486, '1511503', '146182', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/Bc6X9gIBiVN/', 200, 0, 11597, 0.25, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2487, '9412841', '146292', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/Bbv2wIRBWpQ/', 200, 0, 10700, 0.25, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2488, '1487761', '146310', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/BhJIzWuhFjU/', 250, 0, 2001, 0.3125, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2489, '2568362', '147126', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'miss_sarahalim', 2000, 0, 759, 16, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2490, '3384570', '147195', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'lelahalim15', 2000, 0, 758, 16, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2491, '3605706', '147199', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'el_hotfm', 3000, 0, 34281, 24, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2492, '2620090', '147948', 'labuci93', 'Instagram Follower Vip 3', '_cico43', 500, 0, 310, 3, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2493, '5374471', '147962', 'labuci93', 'ðŸ”¯FOLLOWER NEW SERVER VIP-1 (FAST SERVER)', '_cico43', 200, 258, 790, 1, 'Processing', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2494, '3073497', '147978', 'Aben_moon', 'ðŸ’ŒInstagram Likes VIP 3', 'https://www.instagram.com/p/Bbv2wIRBWpQ/', 200, 0, 10899, 0.25, 'Success', '2018-04-08', 'IRVANKEDE', 'API', 0),
(2495, '1951590', '148084', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'wainord', 1000, 1000, 0, 6, 'Processing', '2018-04-08', 'IRVANKEDE', 'API', 0),
(2496, '0935866', '148089', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -10', 'wainord', 1000, 1000, 0, 6, 'Processing', '2018-04-08', 'IRVANKEDE', 'API', 0),
(2497, '0454462', '148108', 'labuci93', 'ðŸ†•ðŸ’Œ Instagram Like Termurah (RM 0.50 / 1k Like)', 'https://www.instagram.com/p/BhGadv7g4S7/', 1000, 0, 60, 0.5, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2498, '0837738', '148182', 'labuci93', 'Instagram Follower Vip 3', 'raby73', 200, 0, 134, 1.2, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2499, '6418490', '148211', 'labuci93', 'ðŸ”¯FOLLOWER NEW SERVER VIP-1 (FAST SERVER)', 'syahid_1903', 200, 198, 1116, 1, 'Processing', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2500, '9825632', '148239', 'labuci93', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/BhA0927Fyvv/', 1000, 0, 54, 0.75, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2501, '6084654', '148281', 'labuci93', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/BajkPgRDfEA/', 1000, 0, 87, 0.75, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2502, '7348829', '148287', 'labuci93', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/BhTPIMQFFQQ/', 1000, 0, 2, 0.75, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2503, '3754088', '148365', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -2', 'Kingrojak', 1000, 0, 8178, 8, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2504, '7132654', '148421', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'el_hotfm', 1000, 0, 36753, 8, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2505, '3717564', '148428', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'nashrashah', 1000, 0, 15044, 8, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2506, '8980102', '148438', 'Aben_moon', 'ðŸŒ Instagram Follower Server Maniac -2', 'sharhimkhan', 2000, 0, 8759, 16, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2507, '6356838', '148916', 'labuci93', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/BhTghVxljWQ/', 1000, 0, 28, 0.75, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2508, '9102060', '149318', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -2', 'muhammadakramabdullah', 1500, 0, 7637, 12, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2509, '9489156', '149327', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -11 (Fast Service', 'muhammadakramabdullah', 1000, 0, 7637, 8, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2510, '9947727', '149496', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -11 (Fast Service', 'Anwar5177', 5000, 0, 10766, 40, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2511, '5606984', '149499', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -2', 'Anwar5177', 5000, 0, 10766, 40, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2512, '4611217', '149717', 'Chandra989', 'ðŸ’ŒInstagram Likes VIP 1', 'https://www.instagram.com/p/BhTrGKsB0u9/', 1000, 0, 37, 0.75, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2513, '9210905', '149718', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -2', 'Anwar5177', 3000, 1259, 17538, 24, 'Partial', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2514, '4047084', '149807', 'Chandra989', 'ðŸŒ Instagram Follower Server Maniac -2', 'Anwar5177', 1500, 553, 19167, 12, 'Partial', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2515, '8722597', '150023', 'Idhamsya', 'ðŸ”¯FOLLOWER NEW SERVER VIP-1 (FAST SERVER)', 'idhamsya_', 5000, 4999, 625, 25, 'Processing', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2516, '5441520', '150071', 'skywalkzz', 'ðŸ’ŒInstagram Likes S1', 'https://instagram.com/p/BhT5r7flzqf/', 1000, 0, 1, 1, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2517, '4990179', '150075', 'skywalkzz', 'ðŸ’ŒInstagram Likes S1', 'https://instagram.com/p/BhT5r7flzqf/', 1000, 0, 1044, 1, 'Success', '2018-04-08', 'IRVANKEDE', 'WEB', 0),
(2518, '3279010', '150114', 'Idhamsya', 'ðŸ†•ðŸ’Œ Instagram Like Termurah (RM 0.50 / 1k Like)', 'https://www.instagram.com/p/BgZ6JzBBqx6/', 1000, 1000, 0, 0.5, 'Error', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2519, '8968044', '150121', 'Idhamsya', 'ðŸ†•ðŸ’Œ Instagram Like Termurah (RM 0.50 / 1k Like)', 'https://www.instagram.com/p/BgFyQk8BRCZ/', 1000, 1000, 0, 0.5, 'Error', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2520, '1241080', '150125', 'Idhamsya', 'ðŸ†•ðŸ’Œ Instagram Like Termurah (RM 0.50 / 1k Like)', 'https://www.instagram.com/p/Bcuf9CAlFKv/', 1000, 1000, 0, 0.5, 'Error', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2521, '3806701', '150134', 'Idhamsya', 'ðŸ†•ðŸ’Œ Instagram Like Termurah (RM 0.50 / 1k Like)', 'https://www.instagram.com/p/BV09pRCFs5c/', 1000, 1000, 0, 0.5, 'Error', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2522, '9774353', '150671', 'Aben_moon', 'ðŸ†•â„¹New Instagram Views Vip 2', 'https://www.instagram.com/p/BhTGvw_nuNZ/', 2000, 2000, 0, 2, 'Error', '2018-04-08', 'IRVANKEDE', 'WEB', 1),
(2523, '5983366', '5983366', 'Aben_moon', 'Instagram Likes VIP 3', 'Test', 200, 0, 0, 0.25, 'Error', '2018-04-08', 'SOSMED989', 'WEB', 1),
(2524, '5101748', '5101748', 'Aben_moon', 'Instagram Likes VIP 3', '123', 200, 0, 0, 0.25, 'Error', '2018-04-08', 'SOSMED989', 'WEB', 1),
(2525, '8755738', '8755738', 'Aben_moon', 'Instagram Likes VIP 3', 'Adas', 200, 0, 0, 0.25, 'Error', '2018-04-08', 'SOSMED989', 'WEB', 1),
(2526, '1503867', '1503867', 'Aben_moon', 'Instagram Likes VIP 1', 'Hahah', 1000, 0, 0, 1.75, 'Error', '2018-04-08', 'SOSMED989', 'WEB', 1),
(2527, '5683649', '0727591', 'Aben_moon', 'Instagram Likes VIP 3', 'mr_madnaga17', 200, 200, 0, 0.25, 'Partial', '2018-04-09', 'SOSMED989', 'WEB', 1),
(2528, '4314489', '1100451', 'syamimie93', 'Instagram Follower Server Maniac -2', 'syema_ma_', 1000, 0, 2620, 9, 'Success', '2018-04-09', 'SOSMED989', 'WEB', 0),
(2529, '0541478', '5103465', 'syamimie93', 'Instagram Follower Server Maniac -2', 'wainord', 1000, 0, 6577, 9, 'Success', '2018-04-09', 'SOSMED989', 'WEB', 0),
(2530, '5980231', '9070055', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bg5SuVkAvom/', 1000, 0, 16, 1, 'Success', '2018-04-09', 'SOSMED989', 'WEB', 0),
(2531, '1623802', '7561870', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhA7O6XATVR/', 1000, 0, 58, 1, 'Success', '2018-04-09', 'SOSMED989', 'WEB', 0),
(2532, '4211946', '7272085', 'syamimie93', 'Instagram Follower Server Maniac -2', 'wainord', 1000, 0, 0, 9, '', '2018-04-09', 'SOSMED989', 'WEB', 0),
(2533, '9837237', '6409001', 'crxdd99', 'Instagram Followers Malaisya / Indonesia[INSTANT]', '_crxdd', 500, 0, 0, 11, 'Error', '2018-04-11', 'SOSMED989', 'WEB', 1),
(2534, '4681955', '2343361', 'cinakkabr', 'ðŸ”–Facebook Post Like S3', 'https://www.facebook.com/groups/904450069643623/permalink/1655428791212410/?sale_post_id=1655428791212410', 1000, 1000, 0, 7, 'Error', '2018-04-11', 'SOSMED989', 'WEB', 1),
(2535, '7145826', '6334282', 'awgmdfs_', 'Instagram Likes VIP 3', 'https://www.instagram.com/p/BhXCgYMAtPJ/', 1000, 0, 68, 3, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2536, '8992876', '3663849', 'awgmdfs_', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bha4xlxgzbj/', 1000, 0, 4, 1, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2537, '4408382', '3014707', 'crxdd99', 'Instagram Follower Server Maniac -15 ', '_crxdd', 2000, 0, 241, 14, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2538, '8129173', '9853893', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhJQ6e3AtW_/', 1000, 0, 34, 1, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2539, '2711976', '9253841', 'anmnazy', 'ðŸ†•â„¹New Instagram Views Vip 2', 'https://www.instagram.com/p/Bg2V7fTgrXs/', 1000, 0, 221, 1, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2540, '8434892', '1627923', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhT6qYVgCgI/', 1000, 0, 28, 1, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2541, '8564086', '1764374', 'khairulradzi', 'Instagram Follower Server Maniac -15 ', 'arol_radzi7889', 500, 0, 919, 3.5, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2542, '5800024', '8851697', 'awgmdfs_', 'Instagram Likes VIP 3', 'https://www.instagram.com/p/BhbaFwoAS4O/', 256, 0, 6, 0.768, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2543, '9061714', '3325554', 'anmnazy', 'Instagram Follower Server Maniac -15 ', 'servismeletop', 1000, 986, 5427, 7, 'Error', '2018-04-11', 'SOSMED989', 'WEB', 1),
(2544, '1985439', '2303342', 'zuirman', 'Instagram Follower Server Maniac -15 ', 'mohdzuirman', 1000, 0, 213, 7, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2545, '5386718', '3298054', 'anmnazy', 'Instagram Follower Server Maniac -15 ', 'servismeletop', 1000, 758, 5443, 7, 'Partial', '2018-04-11', 'SOSMED989', 'WEB', 1),
(2546, '0856050', '0273815', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhbetFChE-t/', 1000, 0, 34, 1, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2547, '2185894', '4446060', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhYveWuh7bS/', 1000, 0, 23, 1, 'Success', '2018-04-11', 'SOSMED989', 'WEB', 0),
(2548, '2908559', '1005873', 'dannysoprano', 'Instagram Follower Server Maniac -2', 'mrhoney_alfallah', 1000, 664, 79, 9, 'Partial', '2018-04-11', 'SOSMED989', 'WEB', 1),
(2549, '6942900', '0900217', 'azri4lyfe', 'Instagram Follower Server Maniac -10', 'dsayang_', 500, 500, 0, 3.5, 'Error', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2550, '1847730', '1920964', 'dannysoprano', 'Instagram Follower Server Maniac -10', 'mrhoney_alfallah', 500, 500, 0, 3.5, 'Error', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2551, '7747956', '4288439', 'Acap2018', 'Instagram Likes VIP 3', 'https://instagram.com/p/BhaltIJlzfi/', 250, 0, 55, 0.75, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2552, '7785891', '4889498', 'asniranasrah', 'ðŸ’ŒFacebook Page Like R3', 'https://www.facebook.com/noisymoment/', 1000, 1000, 1627, 15, 'Error', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2553, '2051905', '1172968', 'asniranasrah', 'ðŸ’ŒInstagram Likes S1', 'https://instagram.com/p/BhX2ZWNF7an/', 1000, 0, 34, 2, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2554, '7001476', '5924866', 'cinakkabr', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhY8QrXHrA4/', 1000, 0, 13, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2555, '6984744', '7846192', 'cinakkabr', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bg_Ku_ZAvHE/', 1000, 0, 11, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2556, '9458078', '3448562', 'zuirman', 'Instagram Follower Server Maniac -2', 'zuirmanaras', 300, 0, 1826, 2.7, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2557, '9204535', '9026650', 'asniranasrah', 'Instagram Follower Server Maniac -10', 'a_z_u_r_a_h_', 1000, 0, 410, 7, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2558, '0945341', '8390089', 'cinakkabr', 'Instagram Follower Server Maniac -15 ', 'Markaz.sneakers2', 4000, 3539, 2414, 28, 'Partial', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2559, '0039887', '7214973', 'asniranasrah', 'Instagram Likes VIP 1', 'https://instagram.com/p/Be1lj5XlNJd/', 1000, 0, 71, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2560, '1363763', '3049069', 'asniranasrah', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhdpZ7cHOGS/', 1000, 0, 2, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2561, '0127316', '3505227', 'anmnazy', 'Instagram Likes VIP 1', 'https://instagram.com/p/BhWWXxvB85R/', 1000, 0, 343, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2562, '9964084', '0809583', 'anmnazy', 'Instagram Follower Server Maniac -15 ', '_dekkwann', 1000, 0, 519, 7, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2563, '1176899', '3098769', 'anmnazy', 'ðŸ†•â„¹New Instagram Views Vip 2', 'https://www.instagram.com/p/BhMWAbzn9IO/', 1000, 0, 65, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2564, '8242853', '0020289', 'anmnazy', 'Instagram Likes VIP 1', 'https://instagram.com/p/BhWtoI9jSSB/', 1000, 0, 39, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2565, '4866785', '9051852', 'dexterlex122@gmail.com', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bhd7qRWgqfG/', 1000, 0, 2, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2566, '7496870', '2788412', 'dexterlex122@gmail.com', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bhd84IXgd7h/', 1000, 0, 2, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2567, '0898609', '6480132', 'ainaibrahim', 'Instagram Follower Server Maniac -10', 'https://www.instagram.com/chubby.taste/', 500, 0, 18, 3.5, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2568, '7520069', '2501469', 'anmnazy', 'Instagram Likes VIP 1', 'https://instagram.com/p/Bhd9qPMB0eW/', 1000, 0, 131, 1, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2569, '6354252', '7910450', 'izateirzat', 'Instagram Follower Server Maniac -15 ', 'ig.shop.murah_', 1000, 911, 0, 7, 'Partial', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2570, '5608863', '4404445', 'anmnazy', 'Instagram Follower Server Maniac -15 ', 'aboutheefit', 1000, 0, 1, 7, 'Success', '2018-04-12', 'SOSMED989', 'WEB', 0),
(2571, '1622598', '1960819', 'ainaibrahim', 'Instagram Likes VIP 1', 'https://www.instagram.com/marl1a_wtflmao/', 1000, 1000, 0, 1, 'Partial', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2572, '8734331', '7948326', 'khairulradzi', 'Instagram Follower Server Maniac -10', 'neomarfil_sibu', 1000, 562, 3841, 7, 'Partial', '2018-04-12', 'SOSMED989', 'WEB', 1),
(2573, '3789268', '4446105', 'awgmdfs_', 'Instagram Like (Minimum 100 like)', 'https://www.instagram.com/p/BhenFacFcq2/', 1500, 0, 7, 1.5, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2574, '0935074', '7838491', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/marl1a_wtflmao/', 1000, 1000, 0, 2, 'Partial', '2018-04-13', 'SOSMED989', 'WEB', 1),
(2575, '1522660', '2648703', 'asniranasrah', 'ðŸ”–Facebook Post Like S3', 'https://www.facebook.com/noisymoment/posts/1535814233173386', 1000, 0, 1034, 7, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2576, '2410903', '6704480', 'danicukcamm_', 'Instagram Follower Server Maniac -15 ', 'danicukcamm_', 1000, 977, 1539, 7, 'Partial', '2018-04-13', 'SOSMED989', 'WEB', 1),
(2577, '2434458', '8443453', 'asyiboutique', 'Instagram Follower Server Maniac -15 ', 'asyiboutique_gallery', 2000, 1745, 817, 14, 'Partial', '2018-04-13', 'SOSMED989', 'WEB', 1),
(2578, '8409188', '5567184', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/p/Bg8PPvsHsTO/', 500, 0, 16, 1, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2579, '6244177', '7636211', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/p/Bg8PNsCH2H4/', 500, 0, 16, 1, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2580, '3068105', '5511187', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/p/Bg8O5l5H2ge/', 500, 0, 18, 1, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2581, '3416628', '2861992', 'ainaibrahim', 'Instagram Follower Server Maniac -2', 'https://www.instagram.com/megavrshniii/', 1000, 1000, 0, 9, 'Error', '2018-04-13', 'SOSMED989', 'WEB', 1),
(2582, '7679493', '0487518', 'iamqfeya_', 'Instagram Follower Server Maniac -15 ', 'igfollower_pahang', 1000, 931, 331, 7, 'Partial', '2018-04-13', 'SOSMED989', 'WEB', 1),
(2583, '3330170', '7521976', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/p/BggHuIpHxn2/', 500, 0, 57, 1, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2584, '2208991', '2775426', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/p/BgGZA4gH6yD/', 500, 0, 55, 1, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2585, '3392401', '3776821', 'anmnazy', 'Instagram Follower Server Maniac -2', '_wannsempoy', 1000, 1000, 0, 9, 'Error', '2018-04-13', 'SOSMED989', 'WEB', 1),
(2586, '8994789', '1565988', 'ainaibrahim', 'Instagram Like VIP 2', 'https://www.instagram.com/p/BfGmEoCnwAu/', 500, 0, 53, 1, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2587, '2109367', '1249297', 'anmnazy', 'Instagram Likes VIP 1', 'https://instagram.com/p/BhgbUzDBgNP/', 2000, 0, 572, 2, 'Success', '2018-04-13', 'SOSMED989', 'WEB', 0),
(2588, '0523853', '7892170', 'anmnazy', 'Instagram Follower Server Maniac -2', 'alynnnn.__', 1000, 0, 207, 9, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2589, '6856611', '8043315', 'anmnazy', 'Instagram Follower Server Maniac -2', '_wannsempoy', 1000, 0, 618, 9, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2590, '7732744', '3649900', 'ainaibrahim', 'Instagram Follower Server Maniac -2', 'https://www.instagram.com/megavrshniii/', 1000, 0, 549, 9, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2591, '1226774', '6007001', 'anmnazy', 'Instagram Follower Server Maniac -2', 'abthefit', 1000, 0, 1, 9, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2592, '5515570', '2788438', 'anmnazy', 'Instagram Follower Server Maniac -2', 'servismeletop', 1000, 0, 6119, 9, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2593, '2518687', '0399431', 'anmnazy', 'Instagram Follower Server Maniac -2', 'servismeletop', 2000, 0, 7519, 18, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2594, '2908320', '8109386', 'iamqfeya_', 'Instagram Follower Server Maniac -14', 'iamqfeya_', 500, 0, 13727, 4.5, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2595, '1969515', '8338699', 'anmnazy', 'Instagram Follower Server Maniac -2', 'servismeletop', 1000, 0, 9757, 9, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2596, '6443707', '0767755', 'Dniel.md', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BgbLvpsBBNV/', 1000, 0, 52, 1, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2597, '6678321', '3036457', 'Dniel.md', 'Instagram Follower Server Maniac -15 ', 'https://www.instagram.com/dniel.md', 500, 491, 468, 3.5, 'Partial', '2018-04-14', 'SOSMED989', 'WEB', 1),
(2598, '8911126', '5409514', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhjOAyth1n2/', 1000, 0, 56, 1, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2599, '2112188', '8633495', 'anmnazy', 'ðŸ†•â„¹New Instagram Views Vip 2', 'https://www.instagram.com/p/BheG14OhYA-/', 1000, 0, 435, 1, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2600, '1077799', '0148565', 'khairulradzi', ' Instagram Follower Server Maniac -4', 'arol_radzi7889', 200, 0, 1510, 2.6, 'Success', '2018-04-14', 'SOSMED989', 'WEB', 0),
(2601, '5676755', '2412511', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhiNLhNg6e4/', 1000, 0, 47, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2602, '8709352', '0494357', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhiNLhNg6e4/', 1000, 1000, 0, 1, 'Partial', '2018-04-15', 'SOSMED989', 'WEB', 1),
(2603, '4811762', '0923771', 'anmnazy', 'Instagram Follower Server Maniac -14', 'aienohlala', 1000, 0, 8368, 9, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2604, '1737524', '2763217', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhljBFGhUnR/', 1000, 0, 25, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2605, '2106287', '9749120', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhlX0vsBbm-/', 1000, 0, 41, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2606, '7744445', '1682296', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhOq9TdFltB/', 1000, 0, 94, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2607, '0257108', '3331581', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhEpT1ylP7p/', 1000, 0, 162, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2608, '2325694', '0953442', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhEVl6wlK_H/', 1000, 0, 184, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2609, '8437403', '6929081', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bg-6nNjFtmY/', 1000, 0, 180, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2610, '8382905', '2783830', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bf4sJreluxe/', 1000, 0, 124, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2611, '8535155', '2006370', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BemffzZFPre/', 1000, 0, 122, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2612, '2948386', '1621726', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BefXQhIFuSx/', 1000, 0, 148, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2613, '2640713', '8446745', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BeemkzwFSor/', 1000, 0, 173, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2614, '8502890', '4177617', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BeGAuM5Flb9/', 1000, 0, 160, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2615, '7024508', '9593536', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BeK9xpblE37/', 1000, 0, 260, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2616, '8802054', '2966243', 'anmnazy', 'Instagram Follower Server Maniac -14', 'nh.gadgetlegacy', 1000, 0, 403, 9, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2617, '0256911', '8520353', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BbjWaQlFC_e/', 1000, 0, 162, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2618, '4065352', '6099899', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BbesrtZFO7M/', 1000, 0, 149, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2619, '4690677', '8502426', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BbeXox_F95w/', 1000, 0, 143, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2620, '4218505', '3787196', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BbQs9YeFFRo/', 1000, 0, 213, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2621, '4122840', '2305981', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BbLhtbNFrU9/', 1000, 0, 250, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2622, '7804849', '7098817', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bba6_RtFOre/', 1000, 0, 169, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2623, '0084809', '3807364', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/Bhljet4BNhX/', 1000, 0, 280, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2624, '1116173', '0507938', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhisvTmhcJ_/', 1000, 0, 32, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2625, '6819438', '4113370', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhiuQk0BF7v/', 1000, 0, 83, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2626, '1471284', '9620730', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhjcKS7hC7h/', 1000, 0, 45, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2627, '8353634', '6884080', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhlCChEBNZc/', 1000, 0, 51, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2628, '4893389', '0864026', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhlY-9KhOeO/', 1000, 0, 26, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2629, '9681548', '8353010', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BZ6bOcvFi7W/', 1000, 0, 135, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2630, '3364268', '0363684', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BZni8MSlWXz/', 1000, 0, 169, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2631, '4076322', '3634410', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BZVeCdsF_wa/', 1000, 0, 159, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2632, '9122925', '9227538', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BZG5IlKFbkC/', 1000, 0, 148, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2633, '3529409', '3417844', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BYZ1rEllGM2/', 1000, 0, 116, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2634, '1607463', '9874955', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhSy7jxFu-e/', 1000, 0, 101, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2635, '6264808', '2022662', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhQrUE0F8JZ/', 1000, 0, 143, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2636, '8004832', '8599174', 'iamqfeya_', 'Instagram Like VIP 2', 'https://www.instagram.com/p/BhJMwd4jzdT/?taken-by=aaajelin.co', 1000, 0, 534, 2, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2637, '2005353', '9887284', 'anmnazy', 'Instagram Follower Server Maniac -2', 'nh.gadgetlegacy', 2000, 1525, 1503, 18, 'Partial', '2018-04-15', 'SOSMED989', 'WEB', 1),
(2638, '3985581', '8422675', 'Nursuhaidah98', 'Instagram Follower Server Maniac -14', 'Nursuhaidah98', 1000, 0, 8, 9, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2639, '0127193', '0475846', 'khairulradzi', 'Instagram Follower Server Maniac -1', 'arol_radzi7889', 500, 0, 1699, 4, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2640, '4939404', '8223578', 'anmnazy', 'Youtube Likes (Super Fast)', 'https://youtu.be/Bf1yDoMGx7k', 500, 0, 18, 12.5, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2641, '4287302', '6718486', 'anmnazy', 'Instagram Follower Server Maniac -14', 'nh.gadgetlegacy', 1000, 0, 1951, 9, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2642, '8529768', '3208536', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhQhsXEBGza/', 1000, 0, 48, 1, 'Success', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2643, '4892399', '3133585', 'anmnazy', 'Instagram Follower Server Maniac -14', 'nh.gadgetlegacy', 2000, 0, 0, 18, '', '2018-04-15', 'SOSMED989', 'WEB', 0),
(2644, '3470457', '4699587', 'Nursuhaidah98', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhY56R1FNFyGKHtSyQmVhVD64qUli0HwqgJU7I0/', 1000, 0, 70, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0);
INSERT INTO `orders` (`id`, `oid`, `poid`, `user`, `service`, `link`, `quantity`, `remains`, `start_count`, `price`, `status`, `date`, `provider`, `place_from`, `refund`) VALUES
(2645, '8278141', '4465046', 'anmnazy', 'Instagram Follower Server Maniac -14', 'servismeletop', 1000, 1000, 9889, 9, 'Error', '2018-04-16', 'SOSMED989', 'WEB', 1),
(2646, '9309821', '1413754', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BhktH5UAmgx/', 1000, 0, 26, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2647, '7550751', '7858371', 'Dniel.md', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BgaFbEjneE9/', 1000, 0, 81, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2648, '5979611', '4507444', 'anmnazy', 'Instagram Follower Server Maniac -14', 'nh.globallegacy', 1000, 975, 5095, 9, 'Partial', '2018-04-16', 'SOSMED989', 'WEB', 1),
(2649, '8507961', '9259262', 'anmnazy', 'Instagram Follower Server Maniac -15 ', 'masakan_cina_muslim', 1000, 991, 5595, 7, 'Partial', '2018-04-16', 'SOSMED989', 'WEB', 1),
(2650, '4855820', '4069952', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BfivrL-D73h/', 1000, 0, 122, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2651, '3224893', '5233626', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BZ3BlviDQ53/', 1000, 0, 103, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2652, '2104269', '4328139', 'anmnazy', 'Instagram Likes VIP 1', 'https://www.instagram.com/p/BZ3UaTGj0se/', 1000, 0, 96, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2653, '6236877', '6801717', 'anmnazy', 'Instagram Follower Server Maniac -14', 'booster.serum_byxyra', 1000, 1000, 23, 9, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2654, '2006944', '4568272', 'anmnazy', 'Instagram Likes VIP 1', 'https://instagram.com/p/Bhndzo8hNRM/', 1000, 0, 345, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2655, '2618630', '4865351', 'anmnazy', 'Instagram Follower Server Maniac -14', 'ermazerda_jay', 1000, 1000, 923, 9, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2656, '3385442', '6795607', 'Aben_moon', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'chandra123989', 100, 100, 0, 0.1, 'Error', '2018-04-16', 'SOSMED989', 'WEB', 1),
(2657, '2780832', '1053071', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bgn1tbSDBLc/', 1000, 0, 37, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2658, '5182132', '6251301', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/BhofE9Wnd88/', 1000, 0, 7, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2659, '4412908', '5227463', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/BexB3rcDyqa/', 1000, 0, 86, 1, 'Success', '2018-04-16', 'SOSMED989', 'WEB', 0),
(2660, '5050313', '0552209', 'anmnazy', '☆ Instagram Follower Server Maniac -15 ', 'servismeletop', 1000, 1000, 9914, 6, 'Success', '2018-04-17', 'SOSMED989', 'WEB', 0),
(2661, '1782614', '9754979', 'anmnazy', '☆ Instagram Follower Server Maniac -15 ', 'ermazerda_jay', 500, 500, 1630, 3, 'Success', '2018-04-17', 'SOSMED989', 'WEB', 0),
(2662, '8323060', '3740223', 'irwandgr8', 'Facebook Page Likes [10K] [Refill 15 Days] ', 'https://www.facebook.com/mirsyahtravel/', 1000, 1000, 237, 6, 'Error', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2663, '2409565', '7437183', 'irwandgr8', '☆ Instagram Follower SOSMED989-1 ☆', 'mirsyahtravel', 1000, 994, 2939, 5, 'Partial', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2664, '2704068', '0347532', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'syuraabeautyy', 200, 0, 0, 1.2, 'Error', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2665, '3237409', '0748080', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'syuraabeautyy', 200, 0, 0, 1.2, 'Error', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2666, '7887129', '6444060', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'syuraabeautyy', 200, 0, 0, 1.2, 'Error', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2667, '4518650', '4986173', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'syuraabeautyyy', 200, 197, 3578, 1.2, 'Partial', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2668, '2281114', '8256080', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'syuraabeautyyy', 500, 0, 3127, 3, 'Success', '2018-04-17', 'SOSMED989', 'WEB', 0),
(2669, '4448947', '7798749', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'Nursuhaidah98', 300, 60, 448, 1.8, 'Partial', '2018-04-17', 'SOSMED989', 'WEB', 1),
(2670, '4327080', '2765904', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/BhoAuPgB_7l/', 1000, 0, 32, 1, 'Success', '2018-04-17', 'SOSMED989', 'WEB', 0),
(2671, '2856907', '5510515', 'anmnazy', '● Instagram Follower No Drop -5', 'lagosgos', 500, 0, 852, 6, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2672, '1979463', '3580920', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bg3hYhDHfbL/', 10000, 0, 2221, 10, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2673, '7010101', '1872548', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhjsRHVFnM3/', 500, 0, 15, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2674, '5388078', '0003981', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhjsRHVFnM3/', 500, 0, 515, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2675, '1568667', '5731252', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhjsOADlQRM/', 500, 0, 13, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2676, '0562829', '5281767', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhjsVbpFD_F/', 500, 0, 20, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2677, '5738572', '4338958', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shakira.zain.nikchehr', 1000, 900, 299, 8, 'Partial', '2018-04-18', 'SOSMED989', 'WEB', 1),
(2678, '4486221', '3865937', 'cinakkabr', '● Instagram Follower No Drop -1 ', 'Markaz.sneakers2', 3500, 1639, 2703, 28, 'Error', '2018-04-18', 'SOSMED989', 'WEB', 1),
(2679, '1320926', '9197185', 'Dniel.md', '●Instagram Likes S1', 'https://www.instagram.com/p/BhiYDGigIKn/', 500, 0, 43, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2680, '5278763', '7732545', 'Dniel.md', '●Instagram Likes S1', 'https://www.instagram.com/p/Bhq_Q3fgBcY/', 500, 0, 44, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2681, '9462075', '0281124', 'Dniel.md', '●Instagram Likes S1', 'https://www.instagram.com/p/BhtOMX9gcS_/', 500, 0, 10, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2682, '5997841', '5938558', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BcUlv_HAHRU/', 500, 0, 59, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2683, '5094445', '1926395', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BdNdMQagH94/', 500, 0, 54, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2684, '7188997', '4144163', 'ainaibrahim', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bf3XguaADJk/', 500, 0, 67, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2685, '5667246', '9057957', 'Dniel.md', '● Instagram Follower No Drop -1 ', 'Storejam.md', 600, 0, 111, 4.8, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2686, '7291906', '5678467', 'Nursuhaidah98', 'Instagram follower (Turkish)', 'Nursuhaidah98', 500, 450, 688, 3, 'Partial', '2018-04-18', 'SOSMED989', 'WEB', 1),
(2687, '9449380', '4671351', 'anmnazy', '●Instagram Likes VIP 1', 'https://instagram.com/p/BhtS_2NBSZw/', 1000, 0, 614, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2688, '5043951', '3303923', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bht08_7B4QU/', 1000, 0, 38, 1, 'Success', '2018-04-18', 'SOSMED989', 'WEB', 0),
(2689, '1760722', '0967562', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'ezzymukbang', 1000, 1000, 0, 9, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2690, '0472226', '8959353', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'nh.globallegacy', 1000, 1000, 4854, 9, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2691, '2946737', '7259859', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'rslniy_rsl', 1000, 1000, 402, 9, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2692, '5180597', '5592237', 'dexterlex122@gmail.com', 'Instagram Auto Like 10k', 'https://www.instagram.com/p/BhufdzFgjdb/', 100, 100, 0, 0.3, 'Error', '2018-04-19', 'SOSMED989', 'WEB', 1),
(2693, '1888694', '0329947', 'dexterlex122@gmail.com', 'Instagram Auto Like 10k', 'https://www.instagram.com/p/BhufdzFgjdb/', 100, 100, 5, 0.3, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2694, '8254780', '0750370', 'dexterlex122@gmail.com', 'Instagram Auto Like 10k', 'https://www.instagram.com/p/BhufdzFgjdb/', 100, 100, 0, 0.3, 'Error', '2018-04-19', 'SOSMED989', 'WEB', 1),
(2695, '3884598', '8246868', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'lagosgos', 1000, 1000, 855, 9, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2696, '4908441', '0390829', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'masakan_cina_muslim', 1000, 0, 0, 9, '', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2697, '7573311', '2930099', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'nh.globallegacy', 1000, 1000, 5977, 9, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2698, '8195264', '1361634', 'cinakkabr', 'Facebook Post Likes [20K]', 'https://m.facebook.com/story.php?story_fbid=1637845419601900&substory_index=0&id=1060364864016628', 1000, 0, 0, 7, '', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2699, '5943682', '0389866', 'asniranasrah', '☆ Instagram Follower Server Maniac -10', 'catbulus', 1000, 1000, 50, 7, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2700, '4707611', '8098369', 'asniranasrah', '☆ Instagram Follower Server Maniac -10', 'catbulus', 1000, 940, 1115, 7, 'Partial', '2018-04-19', 'SOSMED989', 'WEB', 1),
(2701, '0325231', '2143963', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'safiaa_beauty_tools', 1000, 365, 448, 9, 'Partial', '2018-04-19', 'SOSMED989', 'WEB', 1),
(2702, '3929462', '7004832', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'lagosgos', 1000, 0, 1908, 9, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2703, '7945762', '1113310', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'nh.globallegacy', 1000, 0, 0, 9, '', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2704, '9246373', '3396706', 'irwandgr8', ' Instagram Like Indonesia (Fast Service)', 'https://www.instagram.com/p/Bht95p6HwLa/', 500, 0, 30, 1.5, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2705, '0624486', '6856067', 'irwandgr8', ' Instagram Like Indonesia (Fast Service)', 'https://www.instagram.com/p/BhvJg7QHPOy/', 1000, 0, 33, 3, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2706, '7826338', '1480044', 'irwandgr8', ' Instagram Like Indonesia (Fast Service)', 'https://www.instagram.com/p/Bhv6ps0HEaY/', 650, 0, 20, 1.95, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2707, '7703442', '9802618', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/BhwCkXrhBiY/', 5000, 0, 301, 5, 'Success', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2708, '3789720', '6790501', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'safiaa_beauty_tools', 550, 0, 0, 4.95, '', '2018-04-19', 'SOSMED989', 'WEB', 0),
(2709, '3474533', '5952574', 'anmnazy', '☆ Instagram Follower Server Maniac -2', 'heyris__camry', 1000, 0, 0, 9, '', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2710, '3738472', '4163664', 'dexterlex122@gmail.com', 'Instagram Like Hot Termurah', 'https://www.instagram.com/p/Bhv8Z6sATvj/', 199, 0, 0, 0.199, '', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2711, '0236290', '', 'Aben_moon', '●Instagram Likes VIP 3', 'https://www.instagram.com/p/Bc6X9gIBiVN/', 100, 0, 0, 0.3, '', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2712, '7935269', '5075363', 'Aben_moon', '●Instagram Likes VIP 3', 'chandra_989', 210, 210, 0, 0.63, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2713, '5799279', '6313585', 'anmnazy', '● Instagram Follower No Drop -1 ', 'servismeletop', 1000, 0, 10630, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2714, '2381669', '7619261', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 1000, 0, 2954, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2715, '1526963', '9797965', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shakira.zain.nikchehr', 1000, 0, 297, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2716, '6806994', '9671293', 'anmnazy', '● Instagram Follower No Drop -1 ', 'ryanaziz5797', 1000, 0, 95, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2717, '2501178', '6436026', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 1000, 176, 4065, 8, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2718, '7779377', '6506433', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 1000, 0, 6769, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2719, '1760788', '3926889', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 1000, 0, 5558, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2720, '5344413', '2012001', 'Deeno', '● Instagram Follower No Drop -1 ', 'sidewaystudio728', 1250, 0, 2140, 10, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2721, '0002651', '8913390', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bhx69N-ny7g/', 1000, 0, 108, 1, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2722, '1889791', '1943613', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 1000, 0, 2384, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2723, '4848693', '9313776', 'cinakkabr', '● Instagram Follower No Drop -1 ', 'Markaz.sneakers2', 3500, 2591, 4354, 28, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2724, '2581966', '1112938', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 1000, 0, 8910, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2725, '3592686', '2718877', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 1000, 286, 4269, 8, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2726, '4177125', '9069569', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 1000, 223, 7370, 8, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2727, '9016713', '2408938', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 1000, 0, 6510, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2728, '0858367', '2960606', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 1000, 0, 3339, 8, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2729, '3730370', '1534154', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bg3hYhDHfbL/', 5000, 0, 12733, 5, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2730, '6378316', '5278228', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bhx69N-ny7g/', 4000, 0, 1541, 4, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2731, '5664922', '5615271', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 1000, 945, 7997, 8, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2732, '5529950', '1940255', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 1000, 146, 4331, 8, 'Partial', '2018-04-20', 'SOSMED989', 'WEB', 1),
(2733, '6301339', '3022586', 'pnrlsxx', 'Instagram Like Hot Termurah', 'https://instagram.com/p/BhyzlvFAPus/', 200, 0, 220, 0.2, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2734, '4201045', '0577146', 'pnrlsxx', '●Instagram Likes VIP 1', 'https://instagram.com/p/BhyzrupgGNh/', 1000, 0, 268, 1, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2735, '0142579', '5524260', 'pnrlsxx', '●Instagram Likes VIP 3', 'https://instagram.com/p/BhyzlvFAPus/', 500, 0, 550, 1.5, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2736, '4123188', '4866528', 'pnrlsxx', '● Instagram Follower No Drop -1 ', 'pnrlsxx', 500, 0, 5502, 4, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2737, '9316258', '9717601', 'Acap2018', '●Instagram Likes VIP 3', 'https://instagram.com/p/Bhy2NCxgvcE/', 200, 0, 45, 0.6, 'Success', '2018-04-20', 'SOSMED989', 'WEB', 0),
(2738, '9402219', '0266583', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bhy0HQvBrgd/', 1000, 0, 86, 1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2739, '1623450', '8301496', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/BhyiEHBh7zf/', 1000, 0, 497, 1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2740, '0070748', '9854124', 'dexterlex122@gmail.com', 'Instagram Like Hot Termurah', 'https://www.instagram.com/p/Bhykz2yAOEL/', 199, 0, 27, 0.199, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2741, '5655549', '0419210', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bhx69N-ny7g/', 5000, 0, 5646, 5, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2742, '9150011', '4369659', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh0X-qDBhlN/', 1000, 0, 47, 1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2743, '2810798', '1145858', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 1000, 580, 2254, 8, 'Error', '2018-04-21', 'SOSMED989', 'WEB', 1),
(2744, '4156571', '4629597', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 1000, 91, 7855, 8, 'Partial', '2018-04-21', 'SOSMED989', 'WEB', 1),
(2745, '3835951', '5471848', 'cinakkabr', 'Facebook Post Likes [1K] [EMOTICONS] [WOW]', 'https://m.facebook.com/story.php?story_fbid=1639694052750370&id=1060364864016628', 150, 0, 8, 0.75, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2746, '6011576', '3805368', 'irwandgr8', '● Instagram Follower No Drop -1 ', 'mirsyahtravel', 1000, 725, 2931, 8, 'Partial', '2018-04-21', 'SOSMED989', 'WEB', 1),
(2747, '1084337', '8697913', 'the_shafa', 'Instagram Like Hot Termurah', 'https://instagram.com/p/Bh0nBzVhK2P/', 100, 0, 151, 0.1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2748, '0195079', '0513114', 'the_shafa', 'Instagram Like Hot Termurah', 'https://instagram.com/p/Bh0nBzVhK2P/', 100, 0, 265, 0.1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2749, '8912767', '4888408', 'the_shafa', '●Instagram Likes S1', 'https://instagram.com/p/Bh0nBzVhK2P/', 200, 0, 375, 0.4, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2750, '1052266', '3548175', 'the_shafa', '● Instagram Follower No Drop -1 ', 'the_shafa', 1000, 108, 13216, 8, 'Partial', '2018-04-21', 'SOSMED989', 'WEB', 1),
(2751, '0858847', '0157558', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh0shPmAWX3/', 1000, 0, 32, 1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2752, '6774634', '5546486', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bhl3hKxgaQc/', 1000, 0, 81, 1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2753, '7676454', '2261264', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh0Lix5HKwz/', 5000, 0, 494, 5, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2754, '4265242', '9139581', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 15998, 8, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2755, '6219672', '8877982', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh1Vzu5hcoh/', 1000, 0, 46, 1, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2756, '8240854', '1557341', 'danicukcamm_', '● Instagram Follower No Drop -1 ', 'danicukcamm_', 1000, 0, 1657, 8, 'Success', '2018-04-21', 'SOSMED989', 'WEB', 0),
(2757, '0019943', '1665620', 'danicukcamm_', '●Instagram Likes VIP 1', 'danicukcamm_', 1000, 1000, 0, 1, 'Partial', '2018-04-21', 'SOSMED989', 'WEB', 1),
(2758, '9265942', '9057066', 'danicukcamm_', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh1yQUuAWQa/https://www.instagram.com/p/Bhf4WlKA1Ow/https://www.instagram.com/p/Bg31kDXg-7b/https://www.instagram.com/p/Bgq0uAsgDeP/', 1000, 0, 5, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2759, '6691797', '9312086', 'danicukcamm_', '●Instagram Likes VIP 3', 'https://www.instagram.com/p/Bgq0uAsgDeP/', 667, 0, 174, 2.001, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2760, '6688436', '8014863', 'danicukcamm_', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bg31kDXg-7b/', 1000, 0, 137, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2761, '3663774', '1712704', 'danicukcamm_', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bhf4WlKA1Ow/', 1000, 0, 146, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2762, '3490266', '4064023', 'danicukcamm_', '● Instagram Follower No Drop -1 ', 'aincukcamm_', 125, 125, 12, 1, 'Error', '2018-04-22', 'SOSMED989', 'WEB', 1),
(2763, '6040425', '5498553', 'awgmdfs_', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh2hNQKFjKU/', 1000, 0, 3, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2764, '9306256', '7170838', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 16315, 8, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2765, '8675344', '6619693', 'anmnazy', '● Instagram Follower No Drop -1 ', 'servismeletop', 500, 0, 11681, 4, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2766, '5570520', '6654836', 'the_shafa', ' Instagram Like Indonesia (Fast Service)', 'https://instagram.com/p/Bh3Ac67BnFW/', 200, 0, 6, 0.6, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2767, '1830914', '1239919', 'anmnazy', '● Instagram Follower No Drop -1 ', 'mzau_store', 1000, 0, 55, 8, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2768, '3691482', '3589951', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh2--n6hO9E/', 1000, 0, 41, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2769, '5837223', '4220990', 'Izzatti', '● Instagram Follower No Drop -2', 'Izzatizz04', 1000, 0, 385, 10, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2770, '9038025', '0866785', 'irwandgr8', ' Instagram Like Indonesia (Fast Service)', 'https://www.instagram.com/p/Bh3ZmhQgJgR/', 650, 0, 29, 1.95, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2771, '7188613', '9180053', 'irwandgr8', ' Instagram Like Indonesia (Fast Service)', 'https://www.instagram.com/p/Bh3ehhQg2pX/', 650, 0, 29, 1.95, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2772, '4233617', '2936915', 'irwandgr8', ' Instagram Like Indonesia (Fast Service)', 'https://www.instagram.com/p/Bh3pyAsgOcj/', 650, 0, 8, 1.95, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2773, '0636308', '7315411', 'awgmdfs_', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh3pzlFFo0h/', 1000, 0, 30, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2774, '1359964', '4505663', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh3V0thBqQR/', 1000, 0, 56, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2775, '9032370', '6403716', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh3wAHoBCzl/', 1000, 0, 142, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2776, '3933723', '4367078', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh3wAHoBCzl/', 1000, 0, 1218, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2777, '7614664', '2740354', 'the_shafa', ' Instagram Like Indonesia (Fast Service)', 'https://instagram.com/p/Bh4AKrXBLIN/', 250, 0, 13, 0.75, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2778, '3280775', '8496200', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 2656, 4, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2779, '9038293', '5637737', 'anmnazy', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh3ohUVhusM/', 1000, 0, 478, 1, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2780, '3982706', '3331561', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 3643, 4, 'Success', '2018-04-22', 'SOSMED989', 'WEB', 0),
(2781, '5210939', '9810661', 'anmnazy', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh4QjioBS_X/', 1000, 0, 48, 1, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2782, '4673128', '3686024', 'the_shafa', ' Instagram Like Indonesia (Fast Service)', 'https://instagram.com/p/Bh4AKrXBLIN/', 200, 0, 452, 0.6, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2783, '7196196', '2078754', 'the_shafa', ' Instagram Like Indonesia (Fast Service)', 'https://instagram.com/p/Bh3Ac67BnFW/', 200, 0, 541, 0.6, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2784, '9255115', '1735301', 'awgmdfs_', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/Bh4tYHqloI7/', 1000, 0, 1, 1, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2785, '5515869', '1956173', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 4104, 4, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2786, '6133222', '8220115', 'dexterlex122@gmail.com', 'Instagram Like Hot Termurah', 'https://www.instagram.com/p/Bh4DljPgzZ4/', 100, 0, 20, 0.1, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2787, '6554268', '0663172', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh3wAHoBCzl/', 3000, 0, 2387, 3, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2788, '4006292', '7133664', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 4845, 4, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2789, '9788370', '4150454', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 17354, 8, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2790, '7654386', '2134790', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 9154, 4, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2791, '7727166', '6337942', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh3wAHoBCzl/', 1000, 0, 5398, 1, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2792, '1509486', '5555573', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 500, 0, 7731, 4, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2793, '9939730', '0683674', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 19287, 8, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2794, '2126466', '9325501', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 500, 0, 4596, 4, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2795, '5427434', '6093827', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh5YkjzhZ8Q/', 2000, -2, 246, 2, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2796, '1444385', '6161552', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 500, 104, 3840, 4.5, 'Partial', '2018-04-23', 'SOSMED989', 'WEB', 1),
(2797, '1104203', '0114284', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 550, 236, 5533, 4.95, 'Partial', '2018-04-23', 'SOSMED989', 'WEB', 1),
(2798, '5765480', '2704743', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 550, 57, 10144, 4.95, 'Partial', '2018-04-23', 'SOSMED989', 'WEB', 1),
(2799, '6486312', '5961689', 'anmnazy', 'Youtube Views [10M] [AUTO Refill 30days]', 'https://youtu.be/Bf1yDoMGx7k', 1000, -679, 161, 8, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2800, '2035708', '3775420', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 22835, 4.5, 'Success', '2018-04-23', 'SOSMED989', 'WEB', 0),
(2801, '6496240', '5754323', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 23422, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2802, '0423489', '3814880', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 23999, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2803, '2343087', '8641521', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BhoekB5HSl8/', 1000, 0, 31, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2804, '1807048', '3423343', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 500, 568, 19555, 4.5, 'Partial', '2018-04-24', 'SOSMED989', 'WEB', 1),
(2805, '6511408', '5678583', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 24518, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2806, '1729008', '8728904', 'anmnazy', '● Instagram Follower No Drop -1 ', 'mzau_store', 500, 0, 365, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2807, '2345708', '9025641', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh5uvNCAcXC/', 1000, 0, 1017, 1, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2808, '4306005', '0112746', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 500, 0, 6322, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2809, '7554311', '1828755', 'Lilysandra88', '● Instagram Follower No Drop -1 ', 'Lilysandra88', 100, 0, 3505, 0.9, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2810, '1893489', '9824637', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 500, 0, 5151, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2811, '9526969', '6872908', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhRsqa9HCqF/', 1000, 0, 4, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2812, '8545220', '2242035', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bg1aKYsnRcN/', 1000, 0, 1, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2813, '0528894', '7489058', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhB7ZMJHvFQ/', 1000, 0, 1, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2814, '2317934', '2100723', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bg4rvtUHFma/', 1000, 0, 1, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2815, '6545038', '6693734', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bg2GPJgn_xx/', 1000, 0, 1, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2816, '7344708', '0575555', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 500, 0, 7579, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2817, '6399265', '2356082', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhoMk_rHsM5/', 1000, 0, 31, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2818, '9483455', '2150717', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/BhoMITbnJP7/', 1000, 0, 33, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2819, '5422247', '6990549', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bhn8wgWHl7q/', 1000, 0, 30, 2, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2820, '8122796', '9602463', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 25007, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2821, '2991766', '0587757', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 500, 0, 6938, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2822, '6140859', '7688232', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 500, 0, 8431, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2823, '1392940', '4403888', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 5462, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2824, '9197734', '2887699', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 10264, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2825, '6048412', '4552096', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 24989, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2826, '4946047', '5145943', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 10863, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2827, '9020958', '0667855', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 19442, 9, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2828, '0265794', '2985386', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 500, 0, 8882, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2829, '9893614', '6374035', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 25734, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2830, '2892506', '9448937', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 500, 0, 5623, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2831, '3647237', '4646041', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 500, 0, 4598, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2832, '3483013', '0057193', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh9Al5YH5qX/', 1000, 0, 605, 1, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2833, '7410781', '0162386', 'iamqfeya_', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'iamqfeya_', 3000, 3000, 0, 3, 'Error', '2018-04-24', 'SOSMED989', 'WEB', 1),
(2834, '8479715', '1934600', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 500, 0, 9156, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2835, '4852296', '4458233', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 500, 0, 5251, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2836, '3577115', '9522299', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 500, 0, 8031, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2837, '7081040', '4124931', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 11476, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2838, '1990283', '2433440', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 500, 0, 6573, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2839, '0555461', '0431937', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 500, 0, 2004, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2840, '4671195', '8322194', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh9Al5YH5qX/', 1000, 0, 1849, 1, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2841, '6564691', '6590825', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 5829, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2842, '5400464', '4182263', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 26235, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2843, '4889729', '7230831', 'anmnazy', '● Instagram Follower No Drop -1 ', 'sm.gadjet', 500, 0, 3607, 4.5, 'Success', '2018-04-24', 'SOSMED989', 'WEB', 0),
(2844, '4508324', '2042159', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 500, 0, 9546, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2845, '1749481', '7599126', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 26736, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2846, '4602180', '0013913', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lagosgos', 500, 0, 5708, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2847, '9761164', '4776021', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 500, 0, 8551, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2848, '3120121', '7793109', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnstondotcom', 500, 0, 7031, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2849, '1945768', '8065717', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 12086, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2850, '9146943', '1139412', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 500, 0, 2662, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2851, '4784504', '1363282', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 6209, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2852, '2639681', '3866488', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 28305, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2853, '4159000', '7899982', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 13198, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2854, '4583287', '4559625', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 7531, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2855, '5903870', '6392441', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 500, 0, 10578, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2856, '8518495', '2745507', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 500, 0, 9976, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2857, '1617943', '7143089', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 500, 0, 5404, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2858, '0797042', '5793294', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh9Al5YH5qX/', 5000, 0, 3441, 5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2859, '2310395', '9404780', 'iamqfeya_', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh9IlaHArp_/?taken-by=iamqfeya_', 3000, 0, 494, 3, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2860, '2825649', '6152091', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bh-Xc7BDV1y/', 1000, 0, 7, 2, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2861, '3695598', '7079491', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bh-YO71Hh6U/', 1000, 0, 23, 2, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2862, '3281275', '2972927', 'anmnazy', '● Instagram Follower No Drop -1 ', 'servismeletop', 500, 0, 11997, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2863, '9119908', '5318833', 'cinakkabr', 'Facebook Post Likes [20K]', 'https://m.facebook.com/story.php?story_fbid=1643464909039951&id=1060364864016628', 1000, 1000, 0, 7, 'Error', '2018-04-25', 'SOSMED989', 'WEB', 1),
(2864, '0957041', '0052327', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 500, 0, 3156, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2865, '8737393', '5878741', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 12514, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2866, '4601379', '9955327', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 27143, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2867, '4790983', '0375774', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 100, 0, 10065, 0.9, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2868, '2007359', '6621669', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 500, 0, 8972, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2869, '7910891', '4921713', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 295, 27650, 4.5, 'Partial', '2018-04-25', 'SOSMED989', 'WEB', 1),
(2870, '4681370', '0377160', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 500, 0, 12925, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2871, '1648077', '0199881', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 500, 0, 9486, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2872, '4330651', '8758573', 'iamqfeya_', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh-4AWTAn-T/?taken-by=iamqfeya_', 1000, 0, 289, 1, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2873, '5474022', '7365251', 'iamqfeya_', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bh_Ow71AyNg/?taken-by=iamqfeya_', 2000, 0, 606, 2, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2874, '3137433', '3096815', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://instagram.com/p/Bh5vhtcHhAM/', 1000, 0, 150, 1, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2875, '5027178', '9447034', 'anmnazy', 'Instagram Views[EXCLUSIVE] 50sen / 1k', 'https://www.instagram.com/p/Bhl3e20n9Cn/', 1000, 0, 222, 1, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2876, '0711751', '8675118', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 6941, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2877, '4851399', '7102359', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 20135, 9, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2878, '2423888', '9496103', 'anmnazy', '● Instagram Follower No Drop -1 ', 'nh.globallegacy', 100, 0, 10015, 0.9, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2879, '2564948', '5491687', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 100, 0, 13077, 0.9, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2880, '7021830', '2800067', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 27759, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2881, '9169642', '3580592', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 110, 0, 9652, 0.99, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2882, '9286122', '0575461', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 3612, 4.95, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2883, '6538397', '6599614', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/Bh_i73phpzC/', 2000, 0, 173, 2, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2884, '5649791', '6393327', 'Naabkz_', '● Instagram Follower No Drop -1 ', 'alyfa00_', 1000, 1000, 0, 9, 'Partial', '2018-04-25', 'SOSMED989', 'WEB', 1),
(2885, '6053006', '4552828', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 28782, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2886, '6636889', '7931263', 'anmnazy', '●Instagram Likes VIP 2', 'https://instagram.com/p/Bh_iVHkBCFe/', 1000, 60, 175, 2, 'Partial', '2018-04-25', 'SOSMED989', 'WEB', 1),
(2887, '7908808', '5309690', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 5789, 4.95, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2888, '3806223', '1489440', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 500, 0, 30133, 4.5, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2889, '9386765', '8678777', 'anmnazy', '●Instagram Likes S1', 'https://instagram.com/p/Bh_iVHkBCFe/', 1000, 0, 1186, 2, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2890, '9567214', '7172734', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 550, 0, 10421, 4.95, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2891, '1089166', '2274540', 'anmnazy', '● Instagram Follower No Drop -1 ', 'normariajohnston_mua', 110, 0, 13700, 0.99, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2892, '5379943', '4610473', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 550, 0, 30597, 4.95, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2893, '0162673', '6332697', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 550, 0, 7814, 4.95, 'Success', '2018-04-25', 'SOSMED989', 'WEB', 0),
(2894, '2545105', '1729150', 'anmnazy', '● Instagram Follower No Drop -1 ', 'heyris__camry', 550, 0, 11227, 4.95, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2895, '9514978', '8179115', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 550, 0, 31210, 4.95, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2896, '4925502', '5509779', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 550, 0, 8490, 4.95, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2897, '4444484', '0886372', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 6567, 4.95, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2898, '6579603', '1936764', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 550, 0, 31515, 4.95, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2899, '4893579', '0054544', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 7076, 4.95, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2900, '1056059', '7670085', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 9133, 4.5, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2901, '7205110', '2740726', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 110, 0, 31515, 0.99, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2902, '8747315', '2156809', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 110, 0, 9313, 0.99, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2903, '6703531', '2585155', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 111, 0, 7076, 0.999, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2904, '8209623', '7149545', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 555, 287, 32301, 4.995, 'Partial', '2018-04-26', 'SOSMED989', 'WEB', 1),
(2905, '1497455', '0650534', 'cinakkabr', 'Facebook Post Likes [20K]', 'https://www.facebook.com/AmanisDelight/', 2000, 2000, 0, 14, 'Processing', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2906, '7683894', '4502307', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 20998, 9, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2907, '8991177', '4327927', 'Naabkz_', '● Instagram Follower No Drop -1 ', 'alyfa00_', 1000, 0, 1092, 9, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2908, '1461922', '9689317', 'Naabkz_', '● Instagram Follower No Drop -1 ', 'alyfa00_', 111, 0, 1097, 0.999, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2909, '7182582', '6254843', 'pnrlsxx', '● Instagram Follower No Drop -1 ', 'pnrlsxx_', 1000, 1000, 0, 9, 'Partial', '2018-04-26', 'SOSMED989', 'WEB', 1),
(2910, '2902960', '3334866', 'pnrlsxx', '● Instagram Follower No Drop -1 ', 'pnrlsxx_', 1500, 1500, 0, 13.5, 'Partial', '2018-04-26', 'SOSMED989', 'WEB', 1),
(2911, '9186829', '7530697', 'pnrlsxx', '80 Auto Likes + Views - 7 Days ', 'https://instagram.com/p/Bh8FNiAAY1S/', 1000, 1, 0, 10, 'Processing', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2912, '8444126', '3681905', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 555, 0, 3730, 4.995, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2913, '5543667', '5326554', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 111, 0, 32138, 0.999, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2914, '2811865', '8221244', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 111, 0, 32547, 0.999, 'Success', '2018-04-26', 'SOSMED989', 'WEB', 0),
(2915, '1386345', '7128982', 'dexterlex122@gmail.com', 'Instagram Like Hot Termurah', 'https://www.instagram.com/p/BiAwuoNAmKz/', 100, 68, 31, 0.1, 'Partial', '2018-04-26', 'SOSMED989', 'WEB', 1),
(2916, '8131331', '8091777', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 555, 0, 9397, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2917, '9330706', '3734770', 'anmnazy', '● Instagram Follower No Drop -1 ', 'lokmanadam', 555, 0, 32698, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2918, '1561010', '9424791', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 555, 0, 4234, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2919, '7166113', '0346149', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 555, 0, 7415, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2920, '2308956', '8124810', 'anmnazy', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bh0TruuBj24/', 1000, 1000, 0, 2, 'Partial', '2018-04-27', 'SOSMED989', 'WEB', 1),
(2921, '3421333', '8721012', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 555, 0, 7211, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2922, '9059588', '3097836', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 555, 0, 10196, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2923, '5216134', '2459239', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 555, 0, 8219, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2924, '4271112', '4506557', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 555, 0, 5128, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2925, '5833075', '8111258', 'awgmdfs_', '●Instagram Likes VIP 1', 'https://instagram.com/p/BiDZi6Pl5KN/', 2000, 0, 27, 2, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2926, '3735749', '3348271', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 555, 0, 7654, 4.995, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2927, '0310655', '2475238', 'iamqfeya_', '●Instagram Likes VIP 2', 'https://www.instagram.com/p/Bbvm65aD7x0/?taken-by=syahrul.ikhwan.3139', 999, 0, 228, 1.998, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2928, '0184359', '8752657', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 111, 0, 8429, 0.999, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2929, '8815725', '0351940', 'irwandgr8', '● Instagram Follower No Drop -1 ', 'mirsyahtravel', 222, 0, 3143, 1.998, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2930, '3172730', '9736686', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 111, 0, 8135, 0.999, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2931, '9042295', '8738407', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 111, 0, 10065, 0.999, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2932, '2761572', '7448831', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 111, 0, 8013, 0.999, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2933, '4057370', '0659513', 'dexterlex122@gmail.com', '●Instagram Likes VIP 3', 'https://www.instagram.com/p/BiAwuoNAmKz/', 100, 0, 67, 0.3, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2934, '4535917', '9243110', 'dexterlex122@gmail.com', '●Instagram Likes VIP 3', 'https://www.instagram.com/p/BiCAxdTgJ1z/', 100, 0, 35, 0.3, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2935, '1668122', '1803298', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 500, 0, 8132, 4.5, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2936, '3733968', '4853403', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 500, 0, 8453, 4.5, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2937, '8884240', '9376992', 'Syamerakhq', '● Instagram Follower No Drop -1 ', 'Syamerakhq', 1000, 1000, 0, 9, 'Partial', '2018-04-27', 'SOSMED989', 'WEB', 1),
(2938, '7834838', '2857464', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 10333, 4.5, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2939, '2365827', '6336359', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 500, 0, 8632, 4.5, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0);
INSERT INTO `orders` (`id`, `oid`, `poid`, `user`, `service`, `link`, `quantity`, `remains`, `start_count`, `price`, `status`, `date`, `provider`, `place_from`, `refund`) VALUES
(2940, '7441605', '2484878', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 500, 0, 8636, 4.5, 'Success', '2018-04-27', 'SOSMED989', 'WEB', 0),
(2941, '2323438', '2154003', 'Lilysandra88', '● Instagram Follower No Drop -1 ', 'Lilysandra88', 300, 0, 3621, 2.7, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2942, '0810000', '0815455', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 500, 0, 10916, 4.5, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2943, '7547369', '2649472', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 550, 0, 9535, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2944, '6406453', '7799464', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 9685, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2945, '1180571', '9705322', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 500, 0, 5234, 4.5, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2946, '7174214', '9213297', 'Syahiran97', '● Instagram Follower No Drop -1 ', 'syahryan.n', 1000, 0, 21930, 9, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2947, '5362829', '7512086', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 500, 0, 10244, 4.5, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2948, '0489603', '9671969', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 550, 0, 11497, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2949, '3818659', '1093917', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 10065, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2950, '4727838', '4456440', 'Syahiran97', '●Instagram Likes VIP 1', 'https://instagram.com/p/BiEIHigBC2H/', 2000, 0, 524, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2951, '2539742', '8874855', 'awgmdfs_', '●Instagram Likes VIP 1', 'https://www.instagram.com/p/BiD11Sxl5Yr/', 2000, 0, 57, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2952, '1921152', '6798274', 'iamqfeya_', '● Instagram Follower No Drop -1 ', 'https://www.instagram.com/syahrulikmal9724/', 550, 0, 888, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2953, '0038391', '7979428', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BiGLKZ2gKqN/', 1000, 0, 122, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2954, '8483454', '5831282', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BhVwfg6gj7Z/', 1000, 0, 142, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2955, '9729833', '0346361', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BhEAv56FJTU/', 1000, 0, 124, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2956, '5025715', '8466329', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BiGRz0gnYoR/', 1000, 0, 66, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2957, '5831636', '1263168', 'anmnazy', '● Instagram Follower No Drop -1 ', 'strawberry_nbhh', 550, 0, 11888, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2958, '5831544', '5358400', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 10411, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2959, '6187831', '3264499', 'anmnazy', '● Instagram Follower No Drop -1 ', 'annallysa_touch', 550, 0, 10559, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2960, '7966466', '1263002', 'anmnazy', '● Instagram Follower No Drop -1 ', 'izs_zainal', 550, 0, 1080, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2961, '5689008', '7139907', 'cinakkabr', 'Facebook Post Likes [1K] [EMOTICONS] [WOW]', 'https://m.facebook.com/story.php?story_fbid=10213476657765719&id=1079152840', 1000, 0, 2, 5, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2962, '8398614', '2610193', 'cinakkabr', 'Facebook Post Likes [1K] [EMOTICONS] [LOVE]', 'https://m.facebook.com/story.php?story_fbid=1643464909039951&id=1060364864016628', 1000, 0, 1, 5, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2963, '4166892', '9610812', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 550, 0, 5697, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2964, '5853925', '1625209', 'iamqfeya_', '● Instagram Follower No Drop -1 ', 'https://www.instagram.com/syahrul.ikhwan.3139/', 770, 0, 2327, 6.93, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2965, '5727726', '2509617', 'cinakkabr', 'Facebook Post Likes [20K]', 'https://m.facebook.com/story.php?story_fbid=10213476657765719&id=1079152840', 1000, 1000, 0, 7, 'Processing', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2966, '2835957', '7335517', 'Syamerakhq', '● Instagram Follower No Drop -1 ', 'followersmurahmy_', 6000, 2813, 15, 54, 'Processing', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2967, '8501918', '4978900', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BiFDr-aDMeq/', 1000, 0, 22, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2968, '1621323', '4109648', 'anmnazy', '●Instagram Likes S1', 'https://www.instagram.com/p/BiFFdDvDatb/', 1000, 0, 17, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2969, '4984200', '7517421', 'anmnazy', '●Instagram Likes S1', 'https://instagram.com/p/BiHCgNohvd9/', 1000, 0, 165, 2, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2970, '8574762', '2716257', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 10958, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2971, '9401681', '2678730', 'anmnazy', '● Instagram Follower No Drop -1 ', 'izs_zainal', 550, 0, 1640, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2972, '8841836', '4191078', 'anmnazy', '● Instagram Follower No Drop -1 ', 'syxhmin.co', 550, 0, 752, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2973, '5751650', '6352939', 'anmnazy', '● Instagram Follower No Drop -1 ', 'servismeletop', 550, 550, 12290, 4.95, 'Partial', '2018-04-28', 'SOSMED989', 'WEB', 1),
(2974, '1843133', '0067568', 'anmnazy', '● Instagram Follower No Drop -1 ', 'servismeletop', 550, 0, 12252, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2975, '8601235', '9710274', 'anmnazy', '● Instagram Follower No Drop -1 ', 'syxhmin.co', 550, 0, 2389, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2976, '7506584', '9417717', 'anmnazy', '● Instagram Follower No Drop -1 ', '_amsignature_', 550, 0, 12375, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2977, '2262491', '0883767', 'anmnazy', '● Instagram Follower No Drop -1 ', 'izs_zainal', 550, 0, 2932, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2978, '8947741', '4719106', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 550, 0, 6151, 4.95, 'Success', '2018-04-28', 'SOSMED989', 'WEB', 0),
(2979, '8855745', '6278056', 'awgmdfs_', '●Instagram Likes S1', 'https://www.instagram.com/p/BiH1-83lSEv/', 950, 0, 19, 1.9, 'Success', '2018-04-29', 'SOSMED989', 'WEB', 0),
(2980, '9983546', '9736494', 'anmnazy', '● Instagram Follower No Drop -1 ', 'izs_zainal', 550, 0, 3925, 4.95, 'Success', '2018-04-29', 'SOSMED989', 'WEB', 0),
(2981, '4463896', '9425858', 'anmnazy', '● Instagram Follower No Drop -1 ', 'syxhmin.co', 550, 0, 3610, 4.95, 'Success', '2018-04-29', 'SOSMED989', 'WEB', 0),
(2982, '1072731', '6242901', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 550, 550, 7529, 4.95, 'Partial', '2018-04-29', 'SOSMED989', 'WEB', 1),
(2983, '5675769', '1355384', 'anmnazy', '● Instagram Follower No Drop -1 ', 'shazleen.shariff', 550, 0, 7559, 4.95, 'Success', '2018-04-29', 'SOSMED989', 'WEB', 0),
(2984, '4812097', '9039259', 'anmnazy', '● Instagram Follower No Drop -1 ', 'syxhmin.co', 550, 0, 4147, 4.95, 'Success', '2018-04-29', 'SOSMED989', 'WEB', 0);

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
(2, 'SOSMED989', 'https://sosmed989.net/api.php', 'ydmXoDbwzFnmTSB6OFkO');

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
