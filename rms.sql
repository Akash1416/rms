-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 09:22 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'Hi', 'Hello, Welcome to Aasvi Restaurant!');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_table`
--

CREATE TABLE `order_item_table` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(4) NOT NULL,
  `product_rate` decimal(12,2) NOT NULL,
  `product_amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `order_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order_table` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_gross_amount` decimal(12,2) NOT NULL,
  `order_tax_amount` decimal(12,2) NOT NULL,
  `order_net_amount` decimal(12,2) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `order_waiter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_cashier` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_status` enum('In Process','Completed') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tax_table`
--

CREATE TABLE `order_tax_table` (
  `order_tax_table_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_tax_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `order_tax_percentage` decimal(4,2) NOT NULL,
  `order_tax_amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category_table`
--

CREATE TABLE `product_category_table` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `category_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category_table`
--

INSERT INTO `product_category_table` (`category_id`, `category_name`, `category_status`) VALUES
(1, 'Vegetarian', 'Enable'),
(2, 'Non-vegetarian', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `product_id` int(11) NOT NULL,
  `category_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`product_id`, `category_name`, `product_name`, `product_price`, `product_status`) VALUES
(1, 'Non-Vegetarian', 'Butter Chicken', '250.00', 'Enable'),
(2, 'Non-Vegetarian', 'Butter Chicken', '450.00', 'Enable'),
(3, 'Vegetarian', 'Paneer Butter Masala', '200.00', 'Enable'),
(4, 'Vegetarian', 'Paneer Butter Masala', '350.00', 'Enable'),
(5, 'Non-Vegetarian', 'Chicken Biryani', '300.00', 'Enable'),
(6, 'Non-Vegetarian', 'Chicken Biryani', '550.00', 'Enable'),
(7, 'Vegetarian', 'Vegetable Biryani', '150.00', 'Enable'),
(8, 'Vegetarian', 'Vegetable Biryani', '250.00', 'Enable'),
(9, 'Vegetarian', 'Palak Paneer', '180.00', 'Enable'),
(10, 'Vegetarian', 'Palak Paneer', '320.00', 'Enable'),
(11, 'Non-Vegetarian', 'Rogan Josh', '350.00', 'Enable'),
(12, 'Non-Vegetarian', 'Rogan Josh', '600.00', 'Enable'),
(13, 'Vegetarian', 'Chole Bhature', '120.00', 'Enable'),
(14, 'Vegetarian', 'Chole Bhature', '220.00', 'Enable'),
(15, 'Vegetarian', 'Aloo Paratha', '80.00', 'Enable'),
(16, 'Vegetarian', 'Aloo Paratha', '150.00', 'Enable'),
(17, 'Non-Vegetarian', 'Fish Curry', '280.00', 'Enable'),
(18, 'Non-Vegetarian', 'Fish Curry', '500.00', 'Enable'),
(19, 'Non-Vegetarian', 'Mutton Curry', '350.00', 'Enable'),
(20, 'Non-Vegetarian', 'Mutton Curry', '650.00', 'Enable'),
(21, 'Vegetarian', 'Samosa', '40.00', 'Enable'),
(22, 'Vegetarian', 'Samosa', '70.00', 'Enable'),
(23, 'Vegetarian', 'Dal Tadka', '100.00', 'Enable'),
(24, 'Vegetarian', 'Dal Tadka', '180.00', 'Enable'),
(25, 'Vegetarian', 'Malai Kofta', '220.00', 'Enable'),
(26, 'Vegetarian', 'Malai Kofta', '400.00', 'Enable'),
(27, 'Non-Vegetarian', 'Tandoori Chicken', '300.00', 'Enable'),
(28, 'Non-Vegetarian', 'Tandoori Chicken', '550.00', 'Enable'),
(29, 'Vegetarian', 'Bhindi Masala', '120.00', 'Enable'),
(30, 'Vegetarian', 'Bhindi Masala', '200.00', 'Enable'),
(31, 'Non-Vegetarian', 'Lamb Korma', '400.00', 'Enable'),
(32, 'Non-Vegetarian', 'Lamb Korma', '700.00', 'Enable'),
(33, 'Vegetarian', 'Paneer Tikka', '150.00', 'Enable'),
(34, 'Vegetarian', 'Paneer Tikka', '280.00', 'Enable'),
(35, 'Vegetarian', 'Masala Dosa', '80.00', 'Enable'),
(36, 'Vegetarian', 'Masala Dosa', '150.00', 'Enable'),
(37, 'Vegetarian', 'Pav Bhaji', '100.00', 'Enable'),
(38, 'Vegetarian', 'Pav Bhaji', '180.00', 'Enable'),
(39, 'Vegetarian', 'Kadhai Paneer', '180.00', 'Enable'),
(40, 'Vegetarian', 'Kadhai Paneer', '350.00', 'Enable'),
(41, 'Non-Vegetarian', 'Chicken Tikka Masala', '300.00', 'Enable'),
(42, 'Non-Vegetarian', 'Chicken Tikka Masala', '550.00', 'Enable'),
(43, 'Vegetarian', 'Aloo Gobi', '120.00', 'Enable'),
(44, 'Vegetarian', 'Aloo Gobi', '220.00', 'Enable'),
(45, 'Non-Vegetarian', 'Lamb Vindaloo', '400.00', 'Enable'),
(46, 'Non-Vegetarian', 'Lamb Vindaloo', '700.00', 'Enable'),
(47, 'Vegetarian', 'Gulab Jamun', '60.00', 'Enable'),
(48, 'Vegetarian', 'Gulab Jamun', '100.00', 'Enable'),
(49, 'Non-Vegetarian', 'Prawn Curry', '300.00', 'Enable'),
(50, 'Non-Vegetarian', 'Prawn Curry', '550.00', 'Enable'),
(51, 'Vegetarian', 'Raita', '40.00', 'Enable'),
(52, 'Vegetarian', 'Raita', '70.00', 'Enable'),
(53, 'Vegetarian', 'Paneer Bhurji', '150.00', 'Enable'),
(54, 'Vegetarian', 'Paneer Bhurji', '280.00', 'Enable'),
(55, 'Non-Vegetarian', 'Mutton Biryani', '350.00', 'Enable'),
(56, 'Non-Vegetarian', 'Mutton Biryani', '600.00', 'Enable'),
(57, 'Vegetarian', 'Rajma Chawal', '150.00', 'Enable'),
(58, 'Vegetarian', 'Rajma Chawal', '250.00', 'Enable'),
(59, 'Non-Vegetarian', 'Fish Fry', '250.00', 'Enable'),
(60, 'Non-Vegetarian', 'Fish Fry', '450.00', 'Enable'),
(61, 'Non-Vegetarian', 'Chicken 65', '200.00', 'Enable'),
(62, 'Non-Vegetarian', 'Chicken 65', '350.00', 'Enable'),
(63, 'Vegetarian', 'Paneer Pakora', '100.00', 'Enable'),
(64, 'Vegetarian', 'Paneer Pakora', '180.00', 'Enable'),
(65, 'Vegetarian', 'Vegetable Pakora', '80.00', 'Enable'),
(66, 'Vegetarian', 'Vegetable Pakora', '150.00', 'Enable'),
(67, 'Non-Vegetarian', 'Keema Naan', '150.00', 'Enable'),
(68, 'Non-Vegetarian', 'Keema Naan', '250.00', 'Enable'),
(69, 'Vegetarian', 'Pesarattu', '70.00', 'Enable'),
(70, 'Vegetarian', 'Pesarattu', '130.00', 'Enable'),
(71, 'Vegetarian', 'Idli', '40.00', 'Enable'),
(72, 'Vegetarian', 'Idli', '70.00', 'Enable'),
(73, 'Vegetarian', 'Vada', '50.00', 'Enable'),
(74, 'Vegetarian', 'Vada', '90.00', 'Enable'),
(75, 'Vegetarian', 'Dhokla', '60.00', 'Enable'),
(76, 'Vegetarian', 'Dhokla', '100.00', 'Enable'),
(77, 'Vegetarian', 'Shrikhand', '80.00', 'Enable'),
(78, 'Vegetarian', 'Shrikhand', '150.00', 'Enable'),
(79, 'Non-Vegetarian', 'Chicken Kebab', '200.00', 'Enable'),
(80, 'Non-Vegetarian', 'Chicken Kebab', '350.00', 'Enable'),
(81, 'Non-Vegetarian', 'Mutton Kebab', '250.00', 'Enable'),
(82, 'Non-Vegetarian', 'Mutton Kebab', '450.00', 'Enable'),
(83, 'Vegetarian', 'Paneer Kebab', '180.00', 'Enable'),
(84, 'Vegetarian', 'Paneer Kebab', '320.00', 'Enable'),
(85, 'Vegetarian', 'Hara Bhara Kebab', '120.00', 'Enable'),
(86, 'Vegetarian', 'Hara Bhara Kebab', '200.00', 'Enable'),
(87, 'Vegetarian', 'Chana Masala', '100.00', 'Enable'),
(88, 'Vegetarian', 'Chana Masala', '180.00', 'Enable'),
(89, 'Vegetarian', 'Baingan Bharta', '150.00', 'Enable'),
(90, 'Vegetarian', 'Baingan Bharta', '250.00', 'Enable'),
(91, 'Non-Vegetarian', 'Egg Curry', '120.00', 'Enable'),
(92, 'Non-Vegetarian', 'Egg Curry', '220.00', 'Enable'),
(93, 'Vegetarian', 'Veg Manchurian', '120.00', 'Enable'),
(94, 'Vegetarian', 'Veg Manchurian', '200.00', 'Enable'),
(95, 'Non-Vegetarian', 'Chicken Manchurian', '150.00', 'Enable'),
(96, 'Non-Vegetarian', 'Chicken Manchurian', '280.00', 'Enable'),
(97, 'Vegetarian', 'Gobi Manchurian', '100.00', 'Enable'),
(98, 'Vegetarian', 'Gobi Manchurian', '180.00', 'Enable'),
(99, 'Vegetarian', 'Hakka Noodles', '120.00', 'Enable'),
(100, 'Vegetarian', 'Hakka Noodles', '200.00', 'Enable'),
(101, 'Vegetarian', 'Schezwan Fried Rice', '120.00', 'Enable'),
(102, 'Vegetarian', 'Schezwan Fried Rice', '200.00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_table`
--

CREATE TABLE `restaurant_table` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_tag_line` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_address` text COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_timezone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `restaurant_logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurant_table`
--

INSERT INTO `restaurant_table` (`restaurant_id`, `restaurant_name`, `restaurant_tag_line`, `restaurant_address`, `restaurant_contact_no`, `restaurant_email`, `restaurant_currency`, `restaurant_timezone`, `restaurant_logo`) VALUES
(1, 'Aasvi', 'Babli', 'Airoli, Navi Mumbai -400708', '7039100131', 'aasvi123@@gmail.com', 'INR', 'Asia/Kolkata', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_data`
--

CREATE TABLE `table_data` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `table_capacity` int(3) NOT NULL,
  `table_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_data`
--

INSERT INTO `table_data` (`table_id`, `table_name`, `table_capacity`, `table_status`) VALUES
(1, '10', 2, 'Enable'),
(2, '9', 4, 'Enable'),
(3, '8', 6, 'Enable'),
(4, '7', 3, 'Enable'),
(5, '6', 1, 'Enable'),
(6, '5', 5, 'Enable'),
(7, '4', 2, 'Enable'),
(8, '3', 3, 'Enable'),
(9, '2', 8, 'Enable'),
(10, '1', 12, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `tax_table`
--

CREATE TABLE `tax_table` (
  `tax_id` int(11) NOT NULL,
  `tax_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tax_percentage` decimal(4,2) NOT NULL,
  `tax_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_table`
--

INSERT INTO `tax_table` (`tax_id`, `tax_name`, `tax_percentage`, `tax_status`) VALUES
(1, 'SGST', '9.00', 'Enable'),
(2, 'CGST', '9.00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('Master','Waiter','Cashier') COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `user_contact_no`, `user_email`, `user_password`, `user_profile`, `user_type`, `user_status`, `user_created_on`) VALUES
(1, '', '', 'aasvi123@gmail.com', '12345', 'images/1717742644.png', 'Master', 'Enable', '2024-06-07 08:44:04'),
(2, 'waiter', '1234567892', 'waiter123@gmail.com', '123456', '', 'Waiter', 'Enable', '2024-06-10 16:47:39'),
(3, 'cashier', '4569871234', 'cashier123@gmail.com', '123456', '', 'Cashier', 'Enable', '2024-06-10 16:48:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item_table`
--
ALTER TABLE `order_item_table`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_tax_table`
--
ALTER TABLE `order_tax_table`
  ADD PRIMARY KEY (`order_tax_table_id`);

--
-- Indexes for table `product_category_table`
--
ALTER TABLE `product_category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `table_data`
--
ALTER TABLE `table_data`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `tax_table`
--
ALTER TABLE `tax_table`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_item_table`
--
ALTER TABLE `order_item_table`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_tax_table`
--
ALTER TABLE `order_tax_table`
  MODIFY `order_tax_table_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_data`
--
ALTER TABLE `table_data`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tax_table`
--
ALTER TABLE `tax_table`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
