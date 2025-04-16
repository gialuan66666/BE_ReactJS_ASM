-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2025 at 05:21 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm_reactjs_clothing_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `recipient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `recipient_name`, `phone`, `address`, `note`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'caominh', '0707734958', 'Cần Thơ', 'abc', '2025-04-08 19:48:59', '2025-04-08 19:49:03'),
(2, 1, 'abc', '0707734958', 'abc', 'abc', '2025-04-08 19:48:30', '2025-04-08 19:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `createdAt`, `updatedAt`) VALUES
(1, 'nike', 'nike.jpg', '2025-04-07 12:50:27', '2025-04-07 12:50:27'),
(2, '', '/images/1744139826454-aothun.webp', '2025-04-08 19:17:06', '2025-04-08 19:17:06'),
(3, '123', '/images/1744140274000-Athleisure.webp', '2025-04-08 19:24:34', '2025-04-08 19:24:34'),
(4, 'Realme', '/images/1744140352444-FuturisticTechwear.webp', '2025-04-08 19:25:52', '2025-04-08 19:25:52'),
(5, 'Adidas', NULL, '2025-04-08 19:28:30', '2025-04-08 19:28:30'),
(6, 'Nike', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(7, 'Adidas', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(8, 'Bitis', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(9, 'Vans', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(10, 'Converse', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(11, 'Jordan', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(12, 'Puma', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(13, 'Asics', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(14, 'Reebok', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29'),
(15, 'MLB', NULL, '2025-04-15 04:32:29', '2025-04-15 04:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `variant_id`, `quantity`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'giày đá bóng ', '2025-04-07 12:50:07', '2025-04-07 12:50:07'),
(2, 'giày chạy bộ ', '2025-04-08 18:05:01', '2025-04-08 18:05:01'),
(3, 'giày chạy bộ 2', '2025-04-08 18:57:41', '2025-04-08 18:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int NOT NULL,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color_name`, `color_code`, `createdAt`, `updatedAt`) VALUES
(1, 'đỏ', '#0000', '2025-04-07 12:52:12', '2025-04-08 15:39:36'),
(2, 'Cam', '#FFA500', '2025-04-08 17:19:49', '2025-04-08 17:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','shipped','delivered','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `order_date`, `status`, `note`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2025-04-07 12:53:31', 'pending', 'abc', '2025-04-07 12:53:31', '2025-04-07 12:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `variant_id`, `quantity`, `price`, `createdAt`) VALUES
(1, 1, 1, 1, 1000000.00, '2025-04-07 12:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('COD','Momo') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('pending','completed','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `stock` int DEFAULT '0',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visibility` enum('visible','hidden') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'visible',
  `featured` enum('normal','featured') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'normal',
  `price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `target_group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `category_id`, `brand_id`, `stock`, `createdAt`, `updatedAt`, `visibility`, `featured`, `price`, `sale_price`, `target_group_id`) VALUES
(1, 'giày đá bóng nike', 'abc', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 2, 1, 0, '2025-04-07 12:51:22', '2025-04-15 20:54:11', 'visible', 'featured', 1000000.00, NULL, 1),
(2, 'giày đá bóng nike2', 'abc2', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 1, 0, '2025-04-08 17:08:27', '2025-04-15 04:27:18', 'visible', 'featured', 1200000.00, 120000.00, 2),
(3, 'giày đá bóng nike3', 'abc2', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 3, 1, 0, '2025-04-08 18:57:56', '2025-04-15 04:27:39', 'visible', 'featured', 1200000.00, 120000.00, 3),
(4, 'giày đá bóng nike3', 'abc2', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 1, 0, '2025-04-08 19:09:09', '2025-04-15 04:27:26', 'visible', 'featured', 1200000.00, 120000.00, 1),
(17, 'Giày Nike Air Zoom 1', 'Giày thể thao nam', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 1, 3, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'featured', 1500000.00, 1350000.00, 1),
(18, 'Giày Adidas Ultraboost', 'Giày chạy bộ nữ', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 2, 2, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'normal', 1800000.00, 1600000.00, 2),
(19, 'Giày Bitis Hunter', 'Giày thời trang học sinh', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 3, 2, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'featured', 800000.00, 700000.00, 3),
(20, 'Giày Vans Old Skool', 'Giày thời trang đường phố', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 4, 1, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'normal', 1100000.00, 990000.00, 1),
(21, 'Giày Converse Classic', 'Giày đơn giản cá tính', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 4, 3, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'normal', 950000.00, 850000.00, 1),
(22, 'Giày Jordan 1 Low', 'Giày thể thao thời trang', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 1, 3, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'featured', 2400000.00, 2200000.00, 2),
(23, 'Giày Puma RS-X', 'Giày thể thao trẻ em', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 5, 1, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'normal', 1200000.00, 1100000.00, 3),
(24, 'Giày Asics Gel Kayano', 'Giày chạy cao cấp nam', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 6, 3, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'featured', 2100000.00, 2000000.00, 1),
(25, 'Giày Reebok Classic', 'Giày retro unisex', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 7, 1, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'normal', 1150000.00, 1000000.00, 1),
(26, 'Giày New Balance 574', 'Phong cách basic', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 1, 8, 2, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'featured', 1300000.00, 1200000.00, 2),
(27, 'Giày Crocs Classic', 'Giày tiện dụng mọi lứa tuổi', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 2, 9, 2, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'normal', 700000.00, 650000.00, 3),
(28, 'Giày MLB Big Ball Chunky', 'Sneaker phong cách Hàn Quốc', 'https://res.cloudinary.com/dovmddijy/image/upload/v1744665494/sotddirn7n0cxsvstte9.png', 2, 10, 1, '2025-04-15 04:32:34', '2025-04-15 04:32:34', 'visible', 'featured', 1900000.00, 1750000.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `size_id` int DEFAULT NULL,
  `color_id` int DEFAULT NULL,
  `stock` int DEFAULT '0',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `size_id`, `color_id`, `stock`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, 20, '2025-04-07 12:52:54', '2025-04-07 12:52:54'),
(4, 1, 1, 2, 20, '2025-04-08 20:04:25', '2025-04-15 06:04:50'),
(5, 2, 2, 2, 20, '2025-04-08 20:05:13', '2025-04-08 20:05:13'),
(6, 24, 1, 2, 123, '2025-04-15 04:38:01', '2025-04-15 04:38:01'),
(7, 24, 1, 2, 123, '2025-04-15 04:38:04', '2025-04-15 04:38:04'),
(8, 1, 2, 2, 12, '2025-04-15 06:03:23', '2025-04-15 06:04:21'),
(9, 1, 2, 1, 15, '2025-04-15 06:03:26', '2025-04-15 06:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `comment`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 5, 'abc', '2025-04-07 12:55:36', '2025-04-07 12:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int NOT NULL,
  `size_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size_label`, `createdAt`, `updatedAt`) VALUES
(1, '42', '2025-04-07 12:52:24', '2025-04-08 15:39:22'),
(2, '43', '2025-04-08 20:04:59', '2025-04-08 20:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `target_groups`
--

CREATE TABLE `target_groups` (
  `id` int NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `target_groups`
--

INSERT INTO `target_groups` (`id`, `label`, `createdAt`, `updatedAt`) VALUES
(1, 'Nam', '2025-04-15 04:25:32', '2025-04-15 04:25:32'),
(2, 'Nữ', '2025-04-15 04:25:32', '2025-04-15 04:25:32'),
(3, 'Trẻ Em', '2025-04-15 04:25:37', '2025-04-15 04:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` enum('admin','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'customer',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`, `createdAt`, `updatedAt`, `avatar`) VALUES
(1, 'caominh', 'caominh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0707734958', 'admin', '2025-04-07 12:48:36', '2025-04-07 12:48:36', ''),
(2, 'caominh2', 'caominh2@gmail.com', '$2b$10$.K9lR92VWaLqGtUhDtGesegmVBkNLUMwSTYbOoAP/3fiwfS6E8sh.', '0707734958', 'customer', '2025-04-08 20:45:45', '2025-04-08 20:45:45', ''),
(3, 'caominh2', 'caominh3@gmail.com', '$2b$10$w2pcfF2G1uQRV7lGDMnIMO5U51fsZzuw9YwHMC1bxKIr28zrW9eem', '0707734958', 'customer', '2025-04-08 20:48:43', '2025-04-08 20:48:43', ''),
(4, '132', '123@gmail.com', '$2b$10$mKV5mEJ8hd.npR1mv7kcTebH9u6HX8O0/ey2J74d8DolG7gnyivGW', '0123456789', 'customer', '2025-04-10 23:32:01', '2025-04-11 02:20:33', ''),
(5, '123', '1234@gmail.com', '$2b$10$lP6/9XQfPDh7/qs0ZpRJDOxo5D4NgQKfWS/jJQ/awYZLK1HODsgW2', '0123456789', 'customer', '2025-04-10 23:36:53', '2025-04-10 23:36:53', ''),
(6, '123', '123213@gmail.co', '$2b$10$.yBT.Ty27zZK0MKsfIbeu.RJbuvZJXt8RXu4bepWB3N1IMeQuNc3i', '0123456789', 'customer', '2025-04-10 23:37:51', '2025-04-10 23:37:51', ''),
(7, '213', '1233213@gmail.com', '$2b$10$K7f0vfnP4hDlLhWXV6TDtOLrRNXK0RLDGy7DW8ETFpgJbw8b4bg8.', '0123456789', 'customer', '2025-04-10 23:41:39', '2025-04-10 23:41:39', ''),
(8, '123', '1234213@gmailcom', '$2b$10$aIa0yBN0nN8HbwaU2.GtDOBmsbWRF4CPw5oEX16pigHm4ljhtRlRq', '0123456789', 'customer', '2025-04-11 00:09:33', '2025-04-11 00:09:33', ''),
(9, '123', '123123@gmail.com', '$2b$10$4bFUe0Bgqr4ldtWFsyfC2eiDdoW/Ef6Ejmu8MXZcR0zqsMsrHTxoS', '0123456789', 'customer', '2025-04-11 00:25:04', '2025-04-11 00:25:04', ''),
(10, '213', '12322123@gmail.com', '$2b$10$tMttFP49GN8lCp8nKb0f3edvdHXdHzEFxQSMorC0CIoQZtEgjyXpC', '0123456789', 'customer', '2025-04-11 00:36:23', '2025-04-11 00:36:23', ''),
(11, '123', '123214213@gmail.com', '$2b$10$77u0bWy0QNn5bo/6DD7vLupmbbqsAV1IIhxspf4SRKgD8JBzRdRHK', '0123456789', 'customer', '2025-04-11 00:37:21', '2025-04-11 00:37:21', ''),
(12, '123', '1237788@gmail.com', '$2b$10$PXSGmsvZOscpL.IImck5VOo1lWeb.UaJoXo5i2SE7BNR51dpF9oaq', '0123456789', 'customer', '2025-04-11 00:38:18', '2025-04-11 00:38:18', ''),
(13, 'Cao Minh', 'caominh123@gmail.com', '$2b$10$BMo21l2CbgIuvKELeugBVe6Jie6ltTWlxsUYab.BKlhTA74pzLazq', '0707734958', 'customer', '2025-04-16 12:51:03', '2025-04-16 12:51:03', ''),
(14, 'Cao Minh', 'caominh111@gmail.com', '$2b$10$UwW3ETmpJxAcphLfk125yurjEuh1y7Rs9dDZ/LAxrEq10DF16coL6', '0123456789', 'customer', '2025-04-16 13:53:01', '2025-04-16 13:53:01', ''),
(15, 'Cao Minh', 'caominh1234@gmail.com', '$2b$10$SI28OMUqISBhgEOAttp4..iaTnPP2meUndRca332eEDYbTLOcIQJq', '0707734958', 'customer', '2025-04-16 13:55:43', '2025-04-16 13:55:43', ''),
(16, 'Cao Minh', 'caominh666@gmail.com', '$2b$10$r0VYjTzrWVTtW2HlYJ/nleG6vuIHh4Hp6YOCyR770JPxLPZ93wwqq', '0908121233', 'admin', '2025-04-16 14:03:00', '2025-04-16 16:42:04', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_cart_variant` (`variant_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `variant_id` (`variant_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `fk_target_group` (`target_group_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target_groups`
--
ALTER TABLE `target_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `target_groups`
--
ALTER TABLE `target_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `fk_cart_variant` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_target_group` FOREIGN KEY (`target_group_id`) REFERENCES `target_groups` (`id`),
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variants_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`),
  ADD CONSTRAINT `product_variants_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
