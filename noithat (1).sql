-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2018 at 05:09 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinhdoanh_do_go`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(10) NOT NULL,
  `id_user` int(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) NOT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0:chua xac nhan 1:da xac nhan,chua thanh toan  2:da thanh toan',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `Address_shipping` varchar(255) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `Name_reciepe` varchar(200) DEFAULT NULL,
  `phone_reciepe` int(11) DEFAULT NULL,
  `email_reciepe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `method`, `note`, `created_at`, `updated_at`, `status`, `Address_shipping`, `total`, `Name_reciepe`, `phone_reciepe`, `email_reciepe`) VALUES
(1, 1, 'cod', 'dsadsadsa', '2017-08-14 22:15:14', '2018-05-08 18:53:30', 3, 'dsadsa', 4000000, NULL, NULL, NULL),
(2, 2, 'cod', NULL, '2018-05-08 05:03:26', '2018-05-08 18:51:03', 1, 'dsadsdsa', 1500000, NULL, NULL, NULL),
(3, 2, 'cod', NULL, '2018-05-08 20:30:38', '2018-05-08 20:31:23', 3, 'dsadsdsa', 1500000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `sales_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parent_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name_type`, `description`, `parent_id`, `created_at`, `updated_at`, `image_type`) VALUES
(2, 'tủ quần áo gỗ', 'tủ quần áo gỗ', 1, NULL, '2018-07-23 03:06:36', ''),
(3, 'tủ nhựa', 'tủ nhựa', 1, NULL, '2018-07-23 03:06:43', ''),
(21, 'bàn làm việc ', 'bàn làm việc ', 2, '2017-07-19 05:52:45', '2018-07-23 03:07:07', ''),
(22, 'bàn ăn', 'bàn ăn', 2, '2017-07-19 05:52:45', '2018-07-23 03:07:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `full_name` varchar(255) DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `address`, `phone`, `created_at`, `updated_at`, `full_name`, `id_user`) VALUES
(1, 'drakaacb456@gmail.com', 'dsadsa', 985668449, '2017-08-14 22:15:14', '2017-08-14 22:15:14', 'dsadasdsa', NULL),
(2, 'admin3@gmail.com', 'dsadsdsa', 985668449, '2018-05-08 05:03:26', '2018-05-08 05:03:26', 'admin3', 66);

-- --------------------------------------------------------

--
-- Table structure for table `import_product`
--

CREATE TABLE `import_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `import_price` int(11) NOT NULL,
  `import_quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Name_Product` varchar(200) DEFAULT NULL,
  `redisual_quantity` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_product`
--

INSERT INTO `import_product` (`id`, `id_product`, `import_price`, `import_quantity`, `created_at`, `Name_Product`, `redisual_quantity`, `updated_at`) VALUES
(18, 110, 200000, 50, '2018-05-08 19:57:26', 'tủ', 50, '2018-07-23 03:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(20) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Category_ID_News` int(10) NOT NULL DEFAULT '2',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `unit_price` float DEFAULT '0',
  `sale_quantity` int(11) DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'cái',
  `Materia` varchar(100) NOT NULL,
  `view` int(100) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_par` int(10) NOT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `size` varchar(100) DEFAULT '0',
  `status_pro` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `sale_quantity`, `image`, `unit`, `Materia`, `view`, `created_at`, `updated_at`, `id_par`, `image2`, `image3`, `size`, `status_pro`) VALUES
(110, 'tủ quần áo 1', 21, '', 300000, 0, '', 'cái', 'sadas', 0, '2018-05-08 19:57:26', '2018-07-23 03:08:53', 2, '', '', '23456', 1),
(111, 'bàn àaafa', 22, '', 200000, 0, '', 'cái', 'fsd', 0, '2018-05-08 19:58:09', '2018-07-23 03:09:10', 2, '', '', '445', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `email`, `full_name`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(3, 'drakaabc456@gmail.com', 'dsadsa', '3212132132', 'fsdfsdfds', '2017-08-14 17:00:35', '2017-08-14 17:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(10) NOT NULL DEFAULT '0',
  `group` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `provider` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `google_id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `active`, `group`, `created_at`, `updated_at`, `provider`) VALUES
(17, '', NULL, 'hung', 'ass@gmail.com', '1234567', '213124234', 'xzczxbvcvn', NULL, 0, '0', NULL, NULL, NULL),
(18, '', NULL, 'sdadas', 'cvb@gmail.com', '1234567', '2132131', '324235sdfsdf', NULL, 0, '0', '2017-07-04 15:49:05', '2017-07-04 15:49:05', NULL),
(19, '', NULL, 'hung', 'dc@gmail.com', '$2y$10$/Mq6.R9XSjIQwAJxpLpJlOxSuyYZsbwEd1KVCMUm9IF2qYBmQAtt.', '2131243', 'dsadasf', NULL, 1, '1', '2017-07-04 15:56:45', '2017-08-11 06:45:38', NULL),
(20, '', NULL, 'hung', 'lethanh@gmail.com', '$2y$10$hBPM7r6PGrxrFKmKeDMEJuH1bUJsJjl.E5Rv1FGn.OWIBtv/9HshO', '4324234', '3242342fdsfsdfsdgfsfnjansal', NULL, 0, '1', '2017-07-04 16:06:55', '2017-08-11 06:45:42', NULL),
(21, '', NULL, 'sadas', 'hg@gmail.com', '$2y$10$6mU6GrerQ0u94u0SEYRe8eYsK16E7JzTVxlysvksmkX73D3BDOKce', '324325432', '3242dfsdfs', NULL, 1, '0', '2017-07-04 16:32:49', '2017-07-07 08:17:54', NULL),
(22, '', NULL, 'hung', 'gh@gmail.com', '$2y$10$Od.jSbQ61.Czh/gMvRaYv.ohH8rGG9SrdCAzTN8v0RawXMYVF4p5u', '123321321', 'dsadferwefsfs', NULL, 1, '1', '2017-07-05 08:11:12', '2017-08-11 08:06:50', NULL),
(23, '', NULL, 'ádasda', '123@gmail.com', '$2y$10$FNoIgRvzw5NeytHR77aYK.3mRypNAKITF8T5kTXpQPY3b466vTkKC', '123123123', '123/456', NULL, 1, '0', '2017-07-07 01:24:03', '2017-07-07 09:32:00', NULL),
(24, '', NULL, 'hung am binh', '123123@gmail.com', '$2y$10$IQMF5JL5HEK24.NPuI4lDu.up6VQufyUHaqjTvZDCazVNhORz9Z0O', '123456789', '123/456', 'v5ezgThSxXxe1uC4nbmyTxBk63e95KdJP3VuepeN', 1, '1', '2017-07-07 09:39:58', '2017-08-11 06:45:44', NULL),
(25, '', NULL, 'hoangminh', 'hoangminh@gmail.com', '$2y$10$.2V7yjTnp2AF/lmCVTUijOhQNrEkWfrcWxmXzNmSXxtPGLU6D1T/6', '0123456789', '123/456', 'eBhvHJsrR6eUwUHK8fW03QrHNaq4uUQGgxzKYMhg', 0, NULL, '2017-07-15 07:00:08', '2017-07-15 07:00:08', NULL),
(54, NULL, NULL, 'dsadsa', 'drakaabc123@gmail.com', '$2y$10$AHYz00eLgWJ.kiHJYDzpVu01n.L7pWNeTp74KLEOgWdqbX2ZLt9.m', '0985668449', 'dsadsadsa', 'Es96SNdRd38liokHGtSbdlRUpvDUXW7KWHdYJj7hPtOgjGhc8eKtO1VvhVXa', 1, '1', '2017-07-21 23:03:50', '2017-08-15 06:24:55', NULL),
(56, NULL, NULL, 'LAM HA', 'khachhang1@gmail.com', '$2y$10$eabEcIhvMqKfvKbgMJc9/eRPn0YUF/Fll.0llVkB.354zvUYEDJGu', '0985668449', 'dsadsadsa', 'gcOKKuLxEYXcnTPBYKaqVtM7JHOL2Ax5uGnD60B4B6aleOfjTEsgYVNXG6TG', 1, '0', '2017-07-23 10:46:52', '2017-07-23 17:56:15', NULL),
(57, '1253638598099255', NULL, 'Lâm Hà', 'nhoc_solo_xx@yahoo.com.vn', NULL, NULL, NULL, 'HU4VEHncL4Uj9SfJxQTZM3WElg8YaQmaPQ0BUbz0XEiblRLikkp8Hl6T0OQv', 0, '0', '2017-07-25 11:23:27', '2017-08-14 09:29:38', 'facebook'),
(63, NULL, NULL, 'hà ngọc lâm', 'drakaabc456@gmail.com', '$2y$10$vHE3oMOYBA6glGSR./bAo.Z9kJscJsLx2zjYoHAP/41fZejOcV6ia', '0985668449', 'dsadsadsa', '7EVvO8gTAOQtDsEu2TzQtCse16IwNPJCpKivyQGPF0ECj4zZn4wXJlcSmeUS', 1, '0', '2017-08-07 08:01:13', '2017-08-15 01:24:43', NULL),
(64, NULL, NULL, 'dsadsadsa', 'admin@gmail.com', '$2y$10$E2J3aqB7Q5oSPe9efoq3P./fQ0DnKUB9GvvlMLN3bH76WHOQu9WOK', '1234567888', 'dsadsa', 'BFAEUrF9nhuW4HTQGWNhPr3V4dR9yCl97CaIDzVG6PGHbh0YHioEPAf1OmN7', 1, '2', '2017-08-10 20:09:06', '2017-08-11 08:47:52', NULL),
(65, NULL, NULL, 'nhanvien2', 'nhanvien2@gmail.com', '$2y$10$NM4Qm0jagU.OKKhW.OmOAekCnsugZbQ/9jYnpgkpiku41cgJhqJWm', '0985668449', 'dsadsa', 'epxHI6Tpw7UT9sajbttRD7qjqkxjmaj6gDevnTnhTAxOcVm6onev1AK2GjF9', 1, '1', '2017-08-10 23:53:15', '2017-08-11 08:08:48', NULL),
(66, NULL, NULL, 'admin3', 'admin3@gmail.com', '$2y$10$i7Czb9DKyWTGsSv2twclgOgcVyq1bi5cM30OzWofUJczu.orpGU2K', '0985668449', 'dsadsdsa', '8wDP0K4XL6XwEStBG6I4kypygJIazhgMz1otlpjbquUj50oCB2PH2bG7xMEP', 1, '2', '2017-08-11 01:20:14', '2018-05-12 01:56:11', NULL),
(67, NULL, NULL, 'doan', 'doan3@gmail.com', '$2y$10$pDF1k4M3.i4a0jCUCKozwuT7T1U6ID7.BXnK38Xd90T6P3VA73f0m', '0978855927', 'quan 9', 'eodnxEf3zFaNKJai1lTv1Yx2R3276ULCyUKF6sA3', 0, '0', '2018-05-11 08:01:14', '2018-05-11 08:01:14', NULL),
(68, NULL, NULL, 'doan1', 'admin@admin.com', '$2y$10$IbvcTNJnrr92plfwGweRWOmD.ztXuQvIUFHwrLEh.QxvwJpTzsLGq', '0978855926', 'quan 9', 'eodnxEf3zFaNKJai1lTv1Yx2R3276ULCyUKF6sA3', 0, '0', '2018-05-11 08:02:10', '2018-05-11 08:02:10', NULL),
(69, NULL, NULL, 'doan1', 'admin7@admin.com', '$2y$10$VBKCcrENKrsZ3LjwLRAPmuMwE9DPbJSlZOOW/AmYcWqJFkz6Qmd7q', '0978855926', 'quan 9', 'eodnxEf3zFaNKJai1lTv1Yx2R3276ULCyUKF6sA3', 0, '0', '2018-05-11 08:06:25', '2018-05-11 08:06:25', NULL),
(70, '2066432946960595', NULL, 'Đoàn Nguyễn', NULL, NULL, NULL, NULL, 'GVp1L3sviCpunySgP4he8trInQjZF2gakfgLUHA3OegZZghZfQvDTHRjsMCz', 0, '0', '2018-05-11 08:08:16', '2018-05-12 01:57:58', 'facebook'),
(71, NULL, NULL, 'Van Doan', 'nguyendoan059@gmail.com', '$2y$10$p4RjaS6tVqrZJrmuo1n97OJn/0UD9vgUfvqWnq8BLfT1QZxZkbE3.', '0978855926', 'quan 9', 'yGImvcFAttVkERe0iRq1YkMvdXd2qdmwzZ0PWUaZ', 0, '0', '2018-05-11 18:54:42', '2018-05-11 18:54:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_bill_2` (`id_bill`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `import_product`
--
ALTER TABLE `import_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `import_product`
--
ALTER TABLE `import_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `import_product`
--
ALTER TABLE `import_product`
  ADD CONSTRAINT `import_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
