-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 09:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java6`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(500) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`user_name`, `email`, `full_name`, `password`, `photo`) VALUES
('admin', 'huuthong251099@gmail.com', 'Thong_Boss', 'admin123', NULL),
('user1', 'user1@gmail.com', 'staff_01', 'user123', NULL),
('user2', 'user02@gmail.com', 'customer_01', 'user123', NULL),
('user3', 'user03@gmail.com', 'customer_02', 'user123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`id`, `user_name`, `role_id`) VALUES
(1, 'admin', 2),
(2, 'user1', 1),
(3, 'user1', 3),
(4, 'user2', 3),
(5, 'user3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Casio'),
(2, 'Orient'),
(5, 'Citizen'),
(6, 'Seiko'),
(9, 'Ogival');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `available` varchar(100) CHARACTER SET utf8 NOT NULL,
  `create_date` date NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `available`, `create_date`, `image`, `name`, `price`, `category_id`) VALUES
(1, 'stocking', '2022-11-08', 'https://cdn.watchstore.vn/uploads/images/CASIO-MTP-1374L-1AVDF-1.jpg', 'MTP-1374L-1AVDF - Đồng Hồ Nam', 24, 1),
(2, 'stocking', '2022-11-08', 'https://cdn.watchstore.vn/uploads/images/dong-ho-casio-mtp-1375l-7a_1-ims.jpg', 'MTP-1375L-7AVDF', 24, 1),
(3, 'stocking', '2022-11-07', 'https://cdn.watchstore.vn/uploads/images/Casio-BA-110-7A1-1-1627467551980.jpg', 'Baby-G BA-110-7A1DR', 42, 1),
(4, 'stocking', '2022-11-07', 'https://cdn.watchstore.vn/uploads/images/LTP-V300L-4A-1-1637553430276.jpg', 'LTP-V300L-4AUDF - Đồng Hồ Nữ', 33, 1),
(5, 'stocking', '2022-11-08', 'https://xwatch.vn/images/products/2022/10/07/large/orient-sun-moon-gen3-ra-ak0009t10b_1665114027.jpg', 'RA-AK0009T10B', 512, 2),
(6, 'stocking', '2022-11-07', 'https://xwatch.vn/images/products/2022/08/12/large/dong-ho-orient-re-av0113s00b_1660292677.jpg', 'RE-AV0113S00B', 1001, 2),
(7, 'stocking', '2022-11-07', 'https://donghoduyanh.com/images/products/2020/04/12/large/dong-ho-citizen-ny0099-81x_1586669893.jpg.webp', 'PROMASTER NY0099-81X', 313, 5),
(8, 'stocking', '2022-11-07', 'https://donghoduyanh.com/images/products/2020/04/12/large/dong-ho-citizen-ny0091-83e_1586670717.jpg.webp', 'PROMASTER NY0091-83E', 415, 5),
(9, 'stocking', '2022-11-08', 'https://citizenwatch.vn/c7/uploads/product/faf147bf11f698b4f5e74fa46ab8a786.png', 'NH8396-82E', 562, 6),
(10, 'stocking', '2022-11-08', 'https://citizenwatch.vn/c7/uploads/product/dfda6d4a0b0f0be6d97c08a99ea8eb5a.png', 'NH8390-89A', 724, 6),
(11, 'stocking', '2022-11-07', 'https://xwatch.vn/images/products/2022/08/10/large/dong-ho-ogival-og35865agr-gl_1660100459.jpg', 'OG358.65AGR-GL', 635, 9),
(12, 'stocking', '2022-11-08', 'https://xwatch.vn/images/products/2021/06/03/large/ogival-og35861ags-gl_1622714397.jpg', 'OG358.61AGS-GL', 953, 9);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'staff'),
(2, 'director'),
(3, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9w3wowbf6qhtt4hwxqlivgy7n` (`user_name`),
  ADD KEY `FK7kj74d912rytfp5su91jfv0tg` (`role_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKpnxq8agsk6iiij13h02nw9lhl` (`user_name`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FK7kj74d912rytfp5su91jfv0tg` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `FK9w3wowbf6qhtt4hwxqlivgy7n` FOREIGN KEY (`user_name`) REFERENCES `accounts` (`user_name`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKpnxq8agsk6iiij13h02nw9lhl` FOREIGN KEY (`user_name`) REFERENCES `accounts` (`user_name`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
