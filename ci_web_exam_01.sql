-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2018 at 07:35 PM
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
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'sanjeev', 'sanjeev');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2),
(17, 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3),
(18, 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1),
(19, 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4),
(20, 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4),
(22, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(23, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(24, 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will receive the focus', 'It determines if the access key swquence can be used', 1),
(25, 10, 'You application creates an instance of a form. What is the first event that will be triggered in the from?', 'Load', 'GotFocus', 'Instance', 'Initialize', 4),
(26, 10, 'Which of the following is Hungarian notation for a menu?', 'Menu', 'Men', 'mnu', 'MN', 3),
(27, 10, 'You are ready to run your program to see if it works.Which key on your keyboard will start the program?', 'F2', 'F3', 'F4', 'F5', 4),
(28, 10, 'Which of the following snippets of code will unload a form named frmFo0rm from memory?', 'Unload Form', 'Unload This', 'Unload Me', 'Unload', 3),
(29, 10, 'You want the text in text box named txtMyText to read My Text.In which property will you place this string?', 'Caption', 'Text', 'String', 'None of the above', 2),
(30, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0),
(31, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB'),
(2, 'Oracle'),
(3, 'Java'),
(4, 'PHP'),
(5, 'Computer Fundamental'),
(6, 'Networking'),
(7, 'mysql');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(11, 7, 'function', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S\'nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1);

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
(4, '001', 'CodeIgniter 2.0 Web Application Development', 150.00),
(5, '002', 'Facebook Graph Development', 250.00),
(6, '003', 'ExtJS: Rich Internet Application Development', 290.00),
(8, '0004', 'Social Network Application Development', 290.00),
(9, '005', 'Network development', 450.00),
(10, '006', 'development', 900.00),
(11, '007', 'Enterprise PHP Devlopment', 250.00);

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
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `first_name`, `last_name`, `email`, `password`, `password_confirmation`, `ip`, `reg_date`) VALUES
(1, 'boomgt', 'champ', 'goomhrt', 'noomgt@gmail.com', '123456789', '123456789', '127.0.0.1', '2018-12-28 17:01:27'),
(2, 'boomgthi', 'hoomgt', 'koomgrt', 'seo.boomgeet@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '127.0.0.1', '2018-12-28 17:07:36'),
(3, 'hoomgty', 'lopmhty', 'hoomgtuip', 'fefefefefe@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', '127.0.0.1', '2018-12-28 17:40:46'),
(4, 'gggggggg', 'nnnnnnn', 'kkkkkkk', 'vvvvv@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f', '127.0.0.1', '2018-12-28 18:15:15'),
(5, 'lopolooo', 'mkiuoom', 'poiujuuj', 'fefzzzz@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f', '127.0.0.1', '2018-12-28 18:18:55'),
(6, 'vwvve', 'vevev', 'veveve', 'noomfrr@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f', '127.0.0.1', '2018-12-28 18:22:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

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
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
