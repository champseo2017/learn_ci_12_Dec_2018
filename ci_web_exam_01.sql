-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2019 at 11:57 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_web_exam_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `id` int(4) NOT NULL,
  `no_number` varchar(100) NOT NULL,
  `question` varchar(100) DEFAULT NULL,
  `choice1` varchar(100) DEFAULT NULL,
  `choice2` varchar(100) DEFAULT NULL,
  `choice3` varchar(100) DEFAULT NULL,
  `choice4` varchar(100) DEFAULT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`id`, `no_number`, `question`, `choice1`, `choice2`, `choice3`, `choice4`, `answer`) VALUES
(1, '1', 'ซอฟต์แวร์ คือ', 'ก.โปรแกรมชุดของคำสั่งที่ควบคุมการทำงานของคอมพิวเตอร์', 'ข.อุปกรณ์เทคโนโลยีระดับสูง', 'ค.โปรแกรมแก้ปัญหาทุกอย่างของมนุษย์', 'ง.อุปกรณ์ที่ทำหน้าเสมือนสมองกล', 'ก'),
(2, '2', 'ซอฟต์แวร์ คือ', 'ก.โปรแกรมชุดของคำสั่งที่ควบคุมการทำงานของคอมพิวเตอร์', 'ข.อุปกรณ์เทคโนโลยีระดับสูง', 'ค.โปรแกรมแก้ปัญหาทุกอย่างของมนุษย์', 'ง.อุปกรณ์ที่ทำหน้าเสมือนสมองกล', 'ข'),
(3, '3', 'ซอฟต์แวร์ คือ', 'ก.โปรแกรมชุดของคำสั่งที่ควบคุมการทำงานของคอมพิวเตอร์', 'ข.อุปกรณ์เทคโนโลยีระดับสูง', 'ค.โปรแกรมแก้ปัญหาทุกอย่างของมนุษย์', 'ง.อุปกรณ์ที่ทำหน้าเสมือนสมองกล', 'ง'),
(4, '4', 'ซอฟต์แวร์ คือ', 'ก.โปรแกรมชุดของคำสั่งที่ควบคุมการทำงานของคอมพิวเตอร์', 'ข.อุปกรณ์เทคโนโลยีระดับสูง', 'ค.โปรแกรมแก้ปัญหาทุกอย่างของมนุษย์', 'ง.อุปกรณ์ที่ทำหน้าเสมือนสมองกล', 'ก'),
(5, '5', 'ซอฟต์แวร์ คือ', 'ก.โปรแกรมชุดของคำสั่งที่ควบคุมการทำงานของคอมพิวเตอร์', 'ข.อุปกรณ์เทคโนโลยีระดับสูง', 'ค.โปรแกรมแก้ปัญหาทุกอย่างของมนุษย์', 'ง.อุปกรณ์ที่ทำหน้าเสมือนสมองกล', 'ข');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(6) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_image_1` varchar(255) DEFAULT NULL,
  `product_image_2` varchar(255) NOT NULL,
  `product_image_3` varchar(255) NOT NULL,
  `product_image_4` varchar(255) NOT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_type` int(2) DEFAULT NULL,
  `product_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image_1`, `product_image_2`, `product_image_3`, `product_image_4`, `product_price`, `product_type`, `product_time`) VALUES
(1, 'Shout', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 100, 1, '2019-01-03 04:12:04'),
(2, 'memory', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 50, 1, '2019-01-03 04:12:50'),
(3, 'shoe', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 30, 1, '2019-01-03 04:13:08'),
(4, 'pendrive', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 1, '2019-01-03 04:13:22'),
(5, 'pendrive2', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 2, '2019-01-03 04:13:22'),
(6, 'pendrive2', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 2, '2019-01-03 04:13:22'),
(7, 'pendrive2', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 2, '2019-01-03 04:13:22'),
(8, 'pendrive2', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 2, '2019-01-03 04:13:22'),
(9, 'pendrive3', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 3, '2019-01-03 10:54:55'),
(10, 'pendrive3', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 3, '2019-01-03 10:54:59'),
(11, 'pendrive3', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 3, '2019-01-03 10:55:03'),
(12, 'pendrive3', 'assets/uploads/products/p-1.jpg', 'assets/uploads/products/p-2.jpg', 'assets/uploads/products/p-3.jpg', 'assets/uploads/products/p-4.jpg', 150, 3, '2019-01-03 10:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(4) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `price`) VALUES
(12, '001', 'book01', 130.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('Admin','Editor','Author') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123456', 'Admin'),
(2, 'editor', '123456', 'Editor'),
(3, 'author', '123456', 'Author');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `password_confirmation` varchar(100) DEFAULT NULL,
  `ip` varchar(255) NOT NULL,
  `is_new_customer` varchar(100) NOT NULL,
  `email_create` varchar(100) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `first_name`, `last_name`, `email`, `password`, `password_confirmation`, `ip`, `is_new_customer`, `email_create`, `reg_date`) VALUES
(8, 'boomgt123', 'champ', 'champboomgt', 'noomgt123@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '127.0.0.1', '1', '1', '2019-01-02 07:43:23'),
(9, 'noomgt', 'boomgt', 'champ', 'champ@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '127.0.0.1', '1', '1', '2019-01-02 08:42:49'),
(10, 'fewfewfffff', 'fffffffffff', 'fewfwefwefwef', 'dd@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '127.0.0.1', '1', '1', '2019-01-02 10:20:36'),
(11, 'fwefwefwef', 'fewfwe', 'fwefwef', 'ddd@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '127.0.0.1', '1', '1', '2019-01-02 10:44:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
