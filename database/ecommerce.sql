-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 07:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rc22196`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_logo`
--

CREATE TABLE `add_logo` (
  `id` int(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_logo`
--

INSERT INTO `add_logo` (`id`, `img`) VALUES
(2, 'log.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(60) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_email`, `admin_pass`, `role`) VALUES
(5, 'amar@gmail.com', '80537a945c7aaa788ccfcdf1b99b5d8f', 1),
(6, 'amar@gmail.com', '80537a945c7aaa788ccfcdf1b99b5d8f', 1),
(7, 'muammar@gmail.com', '80537a945c7aaa788ccfcdf1b99b5d8f', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_order_info`
-- (See below for the actual view)
--
CREATE TABLE `all_order_info` (
`order_id` int(255)
,`product_name` varchar(255)
,`pdt_quantity` int(11)
,`amount` int(11)
,`uses_coupon` varchar(35)
,`customer_name` varchar(60)
,`Shipping_mobile` varchar(20)
,`trans_id` varchar(25)
,`shiping_address` varchar(255)
,`order_status` int(3)
,`order_time` timestamp
,`order_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ctg_id` int(11) NOT NULL,
  `ctg_name` varchar(60) NOT NULL,
  `ctg_des` varchar(150) NOT NULL,
  `ctg_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ctg_id`, `ctg_name`, `ctg_des`, `ctg_status`) VALUES
(1, 'Apple', 'All kinds apple are available in this catagory ', 1),
(2, 'Banana', 'All kinds Banana are available in this category ', 1),
(3, 'Grape', 'Grape', 1),
(4, 'Orange', 'All kinds Mangos are available in this category ', 1),
(5, 'Dates', 'All kinds Deates are available in this catagory ', 1),
(6, 'Coconut', 'Here will display all Coconut', 1),
(7, 'Mango', 'Here will display all Mango', 1),
(9, 'Durian', 'durian d40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

CREATE TABLE `cupon` (
  `cupon_id` int(11) NOT NULL,
  `cupon_code` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`cupon_id`, `cupon_code`, `description`, `discount`, `status`) VALUES
(7, 'amar', 'amar', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_feedback`
--

INSERT INTO `customer_feedback` (`id`, `user_id`, `user_name`, `pdt_id`, `comment`, `comment_date`) VALUES
(5, 7, 'amar', 2, 'ccaca', '2024-04-21'),
(6, 7, 'amar', 2, 'cacacaca', '2024-04-21'),
(7, 8, 'amarr', 13, 'sedap\r\n', '2024-04-23'),
(8, 7, 'amar', 3, 'as', '2024-05-26'),
(9, 7, 'amar', 3, 'as', '2024-05-26'),
(10, 7, 'amar', 3, 'wewwww', '2024-05-26'),
(11, 7, 'amar', 3, 'wewwww', '2024-05-26'),
(12, 7, 'amar', 3, 'jjjjjjj', '2024-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `header_info`
--

CREATE TABLE `header_info` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_info`
--

INSERT INTO `header_info` (`id`, `email`, `phone`) VALUES
(10, 'orchardtous@gmail.com', '0172421462');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `pdt_quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `uses_coupon` varchar(35) NOT NULL,
  `order_status` int(3) NOT NULL,
  `trans_id` varchar(25) NOT NULL,
  `Shipping_mobile` varchar(20) NOT NULL,
  `shiping` varchar(255) NOT NULL,
  `order_time` timestamp NULL DEFAULT current_timestamp(),
  `order_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `user_id`, `product_name`, `pdt_quantity`, `amount`, `uses_coupon`, `order_status`, `trans_id`, `Shipping_mobile`, `shiping`, `order_time`, `order_date`) VALUES
(35, 7, 'Apple Golden Delicious (4 pcs)', 1, 12, 'amar', 2, '', '172421462', ' No.2, Jalan Selasih U12/27C Seksyen u12 ', '2024-05-25 20:21:59', '2024-05-26'),
(36, 7, 'Apple Golden Delicious (4 pcs)', 1, 12, 'amar', 2, '2322232323323', '0172421462', ' No.2, Jalan Selasih U12/27C Seksyen u12 ', '2024-05-28 08:04:39', '2024-05-28'),
(37, 7, 'Apple Fuji (3 pcs)', 1, 12, '', 1, '222', '172421462', ' No.2, Jalan Selasih U12/27C Seksyen u12 ', '2024-06-03 06:44:54', '2024-06-03'),
(38, 7, ' Apple Gala (8 pcs)', 1, 8, '', 0, '2222', '172421462', ' No.2, Jalan Selasih U12/27C Seksyen u12 ', '2024-06-04 08:00:55', '2024-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_price` int(255) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_ctg` int(200) NOT NULL,
  `pdt_img` varchar(250) NOT NULL,
  `product_stock` int(5) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_name`, `pdt_price`, `pdt_des`, `pdt_ctg`, `pdt_img`, `product_stock`, `pdt_status`) VALUES
(1, 'Apple Golden Delicious (4 pcs)', 12, 'Experience the delightful taste and exceptional quality of our Apple Golden Delicious (4 pcs) pack. Each apple in this selection is handpicked to ensure the finest quality, offering a perfect blend of sweetness. ', 1, 'apple1.jpg', 30, 1),
(2, ' Apple Gala (8 pcs)', 8, 'Discover the exquisite taste and premium quality of our Apple Gala (8 pcs) pack. Each Gala apple in this collection is carefully selected to ensure maximum freshness and flavor. Known for their beautiful red and yellow striped skin, Gala apples offer', 1, '2901459.jpg', 30, 1),
(3, 'Apple Fuji (3 pcs)', 12, 'The Fuji apples are round in shape, and have a shelf life that is longer than any other variety of apples, even without refrigeration; and with refrigeration, it can stay fresh up to one year.', 1, '2901460.jpg', 20, 1),
(4, ' Banana (1.5 - 1.9 kg)', 12, 'These bananas are handpicked at optimal ripeness to ensure the perfect balance of flavor and texture. Whether enjoyed as a standalone snack, to smoothies, or used in cooking', 2, '2901099.jpg', 15, 1),
(7, 'Black Grapes (500 g)', 20, 'With a perfect balance of sweetness and juiciness, these grapes are ideal for snacking, adding to fruit salads, or pairing with cheese for a delightful treat. ', 3, '2901051_19.jpg', 15, 1),
(8, 'Green Grape (500 g)', 9, 'Savor the crisp and juicy freshness of our Green Grapes. Each pack contains approximately 500 grams of these vibrant, green-hued gems, bursting with natural sweetness.', 3, 'graps_white.jpg', 13, 1),
(11, 'Coconut (1 pcs)', 5, 'Enjoy the tropical delight of our fresh Coconut. Each piece offers a versatile experience with its rich, creamy flesh and refreshing coconut water.', 6, 'tijana-drndarski-SJxDhVZR30I-unsplash.jpg', 11, 1),
(13, ' Navel Oranges (8 pcs)', 26, 'Experience the vibrant, juicy sweetness of our Navel Oranges. This pack includes 8 premium oranges, known for their bright orange skin and easy-to-peel nature.', 4, 'xiaolong-wong-nibgG33H0F8-unsplash.jpg', 15, 1),
(14, ' Cara Cara Oranges (3 pcs)', 11, 'Delight in the unique flavor of our Cara Cara Oranges. This pack includes 3 premium oranges, distinguished by their vibrant pinkish-red flesh and sweet, slightly tangy taste.', 4, 'mae-mu-U1iYwZ8Dx7k-unsplash.jpg', 15, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_info_ctg`
-- (See below for the actual view)
--
CREATE TABLE `product_info_ctg` (
`pdt_id` int(255)
,`pdt_name` varchar(200)
,`pdt_price` int(255)
,`pdt_des` varchar(250)
,`pdt_img` varchar(250)
,`product_stock` int(5)
,`pdt_status` tinyint(5)
,`ctg_id` int(11)
,`ctg_name` varchar(60)
);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `first_line` varchar(255) NOT NULL,
  `second_line` varchar(255) NOT NULL,
  `third_line` varchar(255) NOT NULL,
  `btn_left` varchar(25) NOT NULL,
  `btn_right` varchar(25) NOT NULL,
  `slider_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `first_line`, `second_line`, `third_line`, `btn_left`, `btn_right`, `slider_img`) VALUES
(1, 'Pomegranate', 'Fruits 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-01.jpg'),
(2, 'Pomegranate', 'Orange 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-02.jpg'),
(3, 'Pomegranate', 'Banana 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-01.jpg'),
(4, 'Pomegranate', 'Apple 100% Organic', 'A blend of freshly squeezed green apple & fruits', 'Shop now', 'View lookbook', 'green-slide-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_roles` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_address`, `user_roles`, `created_at`, `modified_at`) VALUES
(5, 'karim', ' karim', ' ', 'karim@gmail.com', '202cb962ac59075b964b07152d234b70', 1840239402, 'melaka', 5, '2021-09-14 05:03:25', '2021-09-14 05:03:25'),
(6, 'rahim', ' Rahim', ' ', 'rahim@gmail.com', '202cb962ac59075b964b07152d234b70', 1840239415, 'adwaod', 5, '2021-09-14 07:05:48', '2021-09-14 07:05:48'),
(7, 'amar', ' amar', ' afiq', 'mmr@gmail.com', '2284', 172421462, 'No.2, Jalan Selasih U12/27C Seksyen u12', 5, '2024-04-19 11:44:32', '2024-04-19 11:44:32'),
(8, 'amarr', ' muammar', ' shafiq', 'muammar@gmail.com', '1234', 2147483647, 'No.2, Jalan Selasih U12/27C Seksyen u12', 5, '2024-04-23 07:03:50', '2024-04-23 07:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `provider` varchar(35) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `all_order_info`
--
DROP TABLE IF EXISTS `all_order_info`;

CREATE ALGORITHM=UNDEFINED VIEW `all_order_info`  AS SELECT `order_details`.`order_id` AS `order_id`, `order_details`.`product_name` AS `product_name`, `order_details`.`pdt_quantity` AS `pdt_quantity`, `order_details`.`amount` AS `amount`, `order_details`.`uses_coupon` AS `uses_coupon`, `users`.`user_firstname` AS `customer_name`, `order_details`.`Shipping_mobile` AS `Shipping_mobile`, `order_details`.`trans_id` AS `trans_id`, `order_details`.`shiping` AS `shiping_address`, `order_details`.`order_status` AS `order_status`, `order_details`.`order_time` AS `order_time`, `order_details`.`order_date` AS `order_date` FROM (`order_details` join `users`) WHERE `users`.`user_id` = `order_details`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `product_info_ctg`
--
DROP TABLE IF EXISTS `product_info_ctg`;

CREATE ALGORITHM=UNDEFINED VIEW `product_info_ctg`  AS SELECT `products`.`pdt_id` AS `pdt_id`, `products`.`pdt_name` AS `pdt_name`, `products`.`pdt_price` AS `pdt_price`, `products`.`pdt_des` AS `pdt_des`, `products`.`pdt_img` AS `pdt_img`, `products`.`product_stock` AS `product_stock`, `products`.`pdt_status` AS `pdt_status`, `catagory`.`ctg_id` AS `ctg_id`, `catagory`.`ctg_name` AS `ctg_name` FROM (`products` join `catagory`) WHERE `products`.`pdt_ctg` = `catagory`.`ctg_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_logo`
--
ALTER TABLE `add_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`cupon_id`);

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_info`
--
ALTER TABLE `header_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_logo`
--
ALTER TABLE `add_logo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ctg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cupon`
--
ALTER TABLE `cupon`
  MODIFY `cupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `header_info`
--
ALTER TABLE `header_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
