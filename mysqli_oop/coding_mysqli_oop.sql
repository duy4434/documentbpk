-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 03:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding_mysqli_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'QR Payment Api Master Class', 'สอนสร้างระบบ ชำระเงินออนไลน์อัตโนมัติผ่าน QR Code ระบบชำระเงินออนไลน์อัตโนมัติ เพื่อเอาไปต่อยอดกับธุรกิจของตัวเอง หรืองานของลูกค้าก็ทำได้', 7500, 1, '2022-10-28 21:05:11', '2022-10-29 20:05:04'),
(2, 'สอนทำระบบ Login Admin ระบบจัดการหลังบ้าน', 'สอนเขียนโค้ด้วย jQuery Ajax + PHP REST API สำหรับทำระบบ Login แบบใช้งานจริง!\r\n\r\n', 999, 1, '2022-10-28 21:05:28', '2022-10-28 21:05:28'),
(3, 'Basic REST API PHP + Vuejs', 'สอนเขียนเว็บไซต์ในรูปแบบของ REST API โดยใช้ PHP PDO ในส่วนของการติดต่อฐานข้อมูล และใช้ Vuejs เป็นส่วนสำหรับการแสดงผล เหมาะสำหรับผู้เริ่มต้น\r\n\r\n', 999, 1, '2022-10-28 21:05:43', '2022-10-28 21:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
