-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2022 at 04:00 PM
-- Server version: 8.0.31-0ubuntu2
-- PHP Version: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurent`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int NOT NULL,
  `category` varchar(222) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`, `status`) VALUES
(4864, 'Sea Food', 'Active'),
(4865, 'Drinks', 'Active'),
(4866, 'fast food', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `charge_amount` varchar(20) NOT NULL,
  `vat_charge` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `company_name`, `charge_amount`, `vat_charge`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'E-restaurant', '0', '13', 'Gulshan', '1234', 'BD', 'msgs', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `group_list`
--

CREATE TABLE `group_list` (
  `group_id` int NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `group_list`
--

INSERT INTO `group_list` (`group_id`, `group_name`, `status`) VALUES
(12, 'chef', 'Active'),
(13, 'Boy', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `bill_no` varchar(1000) NOT NULL,
  `date_time` varchar(10000) NOT NULL,
  `gross_amount` varchar(15) NOT NULL,
  `service_charge_rate` varchar(12) NOT NULL,
  `service_charge_amount` varchar(15) NOT NULL,
  `vat_charge_rate` varchar(10) NOT NULL,
  `vat_charge_amount` varchar(10) NOT NULL,
  `discount` varchar(15) NOT NULL,
  `net_amount` varchar(15) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `table_id` varchar(15) NOT NULL,
  `paid_status` varchar(10) NOT NULL,
  `store_id` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(1, '56465', '10-05-202', '200', '12', '100', '255', '20', '20', '5000', '1', '1', 'paid', '1'),
(2, '56465', '10-05-202', '200', '12', '100', '255', '20', '20', '5000', '1', '1', '', '1'),
(3, 'TIN77355', '2022-11-24-02-08', '108540', '10', '10854', '13', '14110', '0', '122650', '36', '19', 'paid', '1'),
(4, 'TINTIN811273', '2022-11-24-02-30', '480', '0', '0', '13', '62', '', '542', '36', '19', 'paid', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `bill_no` varchar(15) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `rate` varchar(15) NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `bill_no`, `product_id`, `qty`, `rate`, `amount`) VALUES
(1, 'TINTIN811273', '7', '7', '7', '7');

-- --------------------------------------------------------

--
-- Table structure for table `products_list`
--

CREATE TABLE `products_list` (
  `id` int NOT NULL,
  `product_name` varchar(222) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(222) NOT NULL,
  `category` varchar(122) NOT NULL,
  `store` varchar(222) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products_list`
--

INSERT INTO `products_list` (`id`, `product_name`, `price`, `description`, `category`, `store`, `status`) VALUES
(3, 'Capachino', 80, 'Capechino', 'asd', 'Sadias Kitchen', 'Inactive'),
(4, 'Burger ', 180, 'Grill Burger', 'asd', 'Sadias Kitchen', 'Active'),
(5, 'Pasta', 110, 'Creamy Pasta', 'Test', 'Habib Store', 'Active'),
(6, 'Pizza', 680, 'Family Pizza', 'Test', 'The Gallery', 'Inactive'),
(7, 'Nachos', 120, 'Juicy', 'Test', 'The Gallery', 'Active'),
(8, 'Korean Salad', 145, 'Creamy salad', 'asd', 'Sadias Kitchen', 'Active'),
(10, 'dsfsf', 200, '54jfhfhdg', 'asd', 'Habib Store', 'Active'),
(11, 'dsfsf', 454, 'rgfdgfkjhjkdf', 'asd', 'AAAAAtestw', 'Active'),
(15, 'dsfsf', 4, 'hgfghd', 'asd', 'AAAAAtestw', 'Active'),
(16, 'test', 100, 'test', 'fast food', 'Sadias Kitchen', 'Active'),
(17, 'Lemon Juice', 1500, 'lebu diye ar cini diye banano hoy', 'Drinks', '', 'Active'),
(18, 'fide rice', 450, 'chiken sobji or rice', 'fast food', 'mirpur', 'Active'),
(19, 'Hu Wiley', 40, 'Lorem sed enim do au', 'Drinks', 'dhanmondi', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `stores_list`
--

CREATE TABLE `stores_list` (
  `id` int NOT NULL,
  `store_name` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stores_list`
--

INSERT INTO `stores_list` (`id`, `store_name`, `status`) VALUES
(1, 'mirpur', 'active'),
(2, 'dhanmondi', 'active'),
(3, 'test', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `table_list`
--

CREATE TABLE `table_list` (
  `id` int NOT NULL,
  `table_name` varchar(111) NOT NULL,
  `capacity` int NOT NULL,
  `status` text NOT NULL,
  `store` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `table_list`
--

INSERT INTO `table_list` (`id`, `table_name`, `capacity`, `status`, `store`) VALUES
(1, 'left1', 8, 'Active', 'xyz'),
(2, 'left2', 6, 'Inactive', 'asd'),
(3, 'right1', 10, 'Inactive', 'fgh'),
(4, 'asfa', 33, 'Active', 'reree'),
(5, 'dfsdf', 9, 'Inactive', 'ass'),
(6, 'dfsdf', 9, 'Inactive', 'ass'),
(7, 'dfsdf', 9, 'Inactive', 'ass'),
(8, 'dfsdf', 9, 'Inactive', 'ass'),
(9, 'dfsdf', 9, 'Inactive', 'ass'),
(10, 'dfsdf', 9, 'Inactive', 'ass'),
(11, 'dfsdf', 9, 'Inactive', 'ass'),
(12, 'medicine_list', 11, 'Inactive', 'adsa'),
(13, 'medicine_list', 11, 'Inactive', 'adsa'),
(15, 'medicine_list', 11, 'Inactive', 'adsa'),
(16, 'medicine_list', 11, 'Inactive', 'adsa'),
(17, 'fasd', 7, 'Inactive', 'aaa'),
(18, 'category_list', 54, 'Active', 'AAAAAtestw'),
(19, 'window side', 5, 'Active', 'mirpur');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` int NOT NULL,
  `user_name` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `pass` varchar(222) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `phone` varchar(111) NOT NULL,
  `gender` text NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  `store_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `user_name`, `email`, `pass`, `first_name`, `last_name`, `phone`, `gender`, `group_name`, `store_name`) VALUES
(24, 'Shawon', 'tanvir@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Won', '0147852', 'male', NULL, NULL),
(25, 'Shawon', 'mynameisshawon325@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SHa', 'Won', '0147852', 'male', NULL, NULL),
(26, 'Shawon', 'mynameisshawon325@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SHa', 'Won', '0147852', 'male', NULL, NULL),
(27, 'Shawon', 'mynameisshawon325@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Won', '0147852', 'male', NULL, NULL),
(28, 'Shawon', 'mynameisshawon325@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SHa', 'Won', '01478520', 'male', NULL, NULL),
(29, 'Shawon', 'dsdfsd', '25d55ad283aa400af464c76d713c07ad', 'akh', 'Bir', '01478520', 'male', NULL, NULL),
(30, 'Shakib', 'shakib@gamil.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Kib', '01828667369', 'male', NULL, NULL),
(31, 'Shawon', 'mynameisshawon325@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Won', '01828667369', 'male', NULL, NULL),
(32, 'Shawon', 'shakib@gamil.com', '95d47be0d380a7cd3bb5bbe78e8bed49', 'SHa', 'Bir', '12478', 'male', NULL, NULL),
(34, 'diculoz', 'byqozip@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Conan', 'Meyer', '+1 (556) 676-7117', 'male', NULL, NULL),
(35, 'sabbir044', 'sabbir@gmail.com', '63a9f0ea7bb98050796b649e85481845', 'Nurul Azim', 'Sabbir', '918833', 'male', NULL, NULL),
(36, 'partha_dipta', 'partha@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'partha', 'dipta', '01555', 'male', NULL, 'test'),
(104, 'arafat_monir', 'arafatmonir@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'monir', 'monirujjaman', 'arafat', 'male', '1', NULL),
(105, 'mepaniziko', 'funo@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Ainsley', 'Torres', '+1 (304) 123-3443', 'male', '1', NULL),
(106, 'user_name', 'email', 'pass', 'first_name', 'last_name', 'phone', 'gender', 'test', 'store'),
(107, 'hugaz', 'hamyzar@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Talon', 'Mays', '+1 (832) 433-9459', 'male', 'Select Store', 'dhanmondi'),
(108, 'linuv', 'zejifow@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Angelica', 'Mckinney', '+1 (949) 731-4148', 'female', 'Select Store', 'mirpur'),
(109, 'xagycec', 'nakemuvy@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Deacon', 'Lyons', '+1 (678) 788-9989', 'male', 'Boy', 'test'),
(110, 'qibyqocu', 'fofo@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Yoshio', 'Sanford', '+1 (598) 818-8579', 'female', 'Boy', 'dhanmondi'),
(111, 'hotenuh', 'kijyce@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Lucas', 'Brown', '+1 (119) 523-5011', 'male', 'Boy', 'mirpur'),
(112, 'xusihatyz', 'bypuxem@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Scarlett', 'Burks', '+1 (876) 901-6098', 'male', 'chef', 'dhanmondi'),
(113, 'pahub', 'pabecow@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Hector', 'Young', '+1 (336) 903-8268', 'male', '', ''),
(114, 'nojixij', 'rahes@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Kendall', 'Mueller', '+1 (892) 236-9077', 'male', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_list`
--
ALTER TABLE `group_list`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_list`
--
ALTER TABLE `products_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores_list`
--
ALTER TABLE `stores_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_list`
--
ALTER TABLE `table_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4867;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_list`
--
ALTER TABLE `group_list`
  MODIFY `group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_list`
--
ALTER TABLE `products_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stores_list`
--
ALTER TABLE `stores_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_list`
--
ALTER TABLE `table_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
