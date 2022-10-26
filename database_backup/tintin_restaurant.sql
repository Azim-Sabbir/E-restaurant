-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2019 at 02:19 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintin_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(33) NOT NULL,
  `category` varchar(222) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `charge_amount` varchar(20) NOT NULL,
  `vat_charge` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `company_name`, `charge_amount`, `vat_charge`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Lunu', '0', '13', 'aaaa', '1234', 'BD', 'msgs', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `group_list`
--

CREATE TABLE `group_list` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_list`
--

INSERT INTO `group_list` (`id`, `group_name`, `status`) VALUES
(3, 'AAAA', 'Active'),
(4, 'BBBB', 'Active'),
(10, 'CCCC', 'Active'),
(11, 'DDDD', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(11) NOT NULL,
  `date_time` varchar(10) NOT NULL,
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
  `store_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(15) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `rate` varchar(15) NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_list`
--

CREATE TABLE `products_list` (
  `id` int(20) NOT NULL,
  `product_name` varchar(222) NOT NULL,
  `price` int(222) NOT NULL,
  `description` varchar(222) NOT NULL,
  `category` varchar(122) NOT NULL,
  `store` varchar(222) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(16, '&lt;h2&gt;RRRR&lt;/h2&gt;', 78, '&lt;h3&gt;SSS&lt;/h3&gt;', 'asd', 'AAAAAtestw', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `stores_list`
--

CREATE TABLE `stores_list` (
  `id` int(11) NOT NULL,
  `store_name` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores_list`
--

INSERT INTO `stores_list` (`id`, `store_name`, `status`) VALUES
(1, 'AAAAAtestw', 'active'),
(2, 'BBBa', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `table_list`
--

CREATE TABLE `table_list` (
  `id` int(11) NOT NULL,
  `table_name` varchar(111) NOT NULL,
  `capacity` int(111) NOT NULL,
  `status` text NOT NULL,
  `store` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(18, 'category_list', 54, 'Active', 'AAAAAtestw');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` int(22) NOT NULL,
  `group_name` text NOT NULL,
  `store` varchar(222) NOT NULL,
  `user_name` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `pass` varchar(222) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `phone` varchar(111) NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `group_name`, `store`, `user_name`, `email`, `pass`, `first_name`, `last_name`, `phone`, `gender`) VALUES
(24, 'members', 'AAAAAtestw', 'Shawon', 'tanvir@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Won', '0147852', 'male'),
(25, 'staff', 'AAAAAtestw', 'Shawon', 'mynameisshawon325@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SHa', 'Won', '0147852', 'male'),
(26, 'staff', 'AAAAAtestw', 'Shawon', 'mynameisshawon325@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SHa', 'Won', '0147852', 'male'),
(27, 'staff', 'AAAAAtestw', 'Shawon', 'mynameisshawon325@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Won', '0147852', 'male'),
(28, 'members', 'AAAAAtestw', 'Shawon', 'mynameisshawon325@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'SHa', 'Won', '01478520', 'male'),
(29, 'staff', 'AAAAAtestw', 'Shawon', 'dsdfsd', '25d55ad283aa400af464c76d713c07ad', 'akh', 'Bir', '01478520', 'male'),
(30, 'staff', 'AAAAAtestw', 'Shakib', 'shakib@gamil.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Kib', '01828667369', 'male'),
(31, 'staff', 'AAAAAtestw', 'Shawon', 'mynameisshawon325@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'SHa', 'Won', '01828667369', 'male'),
(32, 'staff', 'Select Store', 'Shawon', 'shakib@gamil.com', '95d47be0d380a7cd3bb5bbe78e8bed49', 'SHa', 'Bir', '12478', 'male');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4864;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_list`
--
ALTER TABLE `group_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_list`
--
ALTER TABLE `products_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stores_list`
--
ALTER TABLE `stores_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_list`
--
ALTER TABLE `table_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
