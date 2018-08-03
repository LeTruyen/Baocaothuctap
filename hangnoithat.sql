-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 03 Août 2018 à 05:19
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `hangnoithat`
--

-- --------------------------------------------------------

--
-- Structure de la table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`id` int(11) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(10) NOT NULL,
  `id_user` int(20) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `url`, `position`, `id_user`, `created_at`, `updated_at`) VALUES
(2, 'slider/banner2.jpg', '', 1, 20, '2017-07-21 14:51:01', '0000-00-00 00:00:00'),
(3, 'slider/banner3.jpg', '', 1, 20, '2017-07-21 14:51:01', '0000-00-00 00:00:00'),
(4, 'slider/slider2.jpg', '', 1, 23, '2017-07-21 14:51:01', '0000-00-00 00:00:00'),
(5, 'slider/banner4.jpg', '', 1, 19, '2017-07-21 14:51:01', '0000-00-00 00:00:00'),
(7, 'slider/banner1.jpg', '', 1, 17, '2017-07-27 17:30:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
`id` int(10) NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `method`, `note`, `created_at`, `updated_at`, `status`, `Address_shipping`, `total`, `Name_reciepe`, `phone_reciepe`, `email_reciepe`) VALUES
(1, 1, 'cod', 'dsadsadsa', '2017-08-14 22:15:14', '2018-08-02 00:54:57', 3, 'dsadsa', 4000000, NULL, NULL, NULL),
(2, 2, 'bacs', NULL, '2018-08-02 18:44:09', '2018-08-02 18:46:15', 3, 'dsadsadsa', 4200000, NULL, NULL, NULL),
(3, 2, 'cod', NULL, '2018-08-02 19:04:17', '2018-08-02 19:07:21', 3, 'dsadsadsa', 400000, NULL, NULL, NULL),
(4, 3, 'bacs', NULL, '2018-08-02 19:05:46', '2018-08-02 19:07:35', 3, 'quận 8', 200000, NULL, NULL, NULL),
(5, 2, 'bacs', NULL, '2018-08-02 19:29:01', '2018-08-02 19:29:01', 0, 'dsadsadsa', 200000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bill_detail`
--

CREATE TABLE IF NOT EXISTS `bill_detail` (
`id` int(10) unsigned NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `sales_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `sales_price`, `created_at`, `updated_at`) VALUES
(1, 1, 98, 2, 1000000, '2017-08-14 22:15:14', '2017-08-14 22:15:14'),
(2, 1, 99, 10, 2000000, '2017-08-14 22:15:14', '2017-08-14 22:15:14'),
(3, 1, 101, 2, 1000000, '2017-08-14 22:15:14', '2017-08-14 22:15:14'),
(4, 2, 113, 1, 200000, '2018-08-02 18:44:09', '2018-08-02 18:44:09'),
(5, 2, 122, 1, 4000000, '2018-08-02 18:44:09', '2018-08-02 18:44:09'),
(6, 3, 113, 1, 200000, '2018-08-02 19:04:17', '2018-08-02 19:04:17'),
(7, 3, 105, 1, 200000, '2018-08-02 19:04:17', '2018-08-02 19:04:17'),
(8, 4, 116, 1, 200000, '2018-08-02 19:05:46', '2018-08-02 19:05:46'),
(9, 5, 116, 1, 200000, '2018-08-02 19:29:01', '2018-08-02 19:29:01');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(10) unsigned NOT NULL,
  `name_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `parent_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name_type`, `description`, `parent_id`, `created_at`, `updated_at`, `image_type`) VALUES
(2, 'Phong Thủy', '', 1, NULL, '2017-08-09 18:41:42', 'tranhgo.jpg'),
(3, 'Phòng Ngủ', 'phong ngu', 1, NULL, '2018-08-01 20:31:27', 'phongngu.jpg'),
(4, 'Phòng Bếp', 'phong bep', 1, NULL, '2018-08-01 20:32:12', 'phongbep.jpg'),
(5, 'Phòng Khách', 'phongkhach', 1, NULL, '2018-08-01 20:33:34', 'phongkhach.jpg'),
(21, 'Tượng', 'dsadsadsa', 2, '2017-07-19 05:52:45', '2018-08-02 00:52:14', 'hinhtuong.jpg'),
(22, 'Lộc Bình', 'dsadsadsa', 2, '2017-07-19 05:52:45', '2018-08-01 18:33:31', 'locbinh2.jpg'),
(23, 'Tranh gỗ', NULL, 2, '2017-07-19 05:52:45', '2017-08-10 11:25:18', 'tranhgo.jpg'),
(24, 'Bàn Trang điểm', NULL, 3, '2017-07-19 05:55:45', '2018-08-01 18:34:42', 'Ban_Trang_Diem_11.jpg'),
(25, 'GIường ngủ', 'dssdsa', 3, '2017-07-19 05:55:45', '2017-08-10 19:42:56', 'p3.jpg'),
(26, 'Tủ', NULL, 3, '2017-07-19 05:55:45', '2017-08-10 19:19:47', 'ts11.jpg'),
(27, 'Bàn Ăn', NULL, 4, '2017-07-19 05:58:43', '2018-08-01 18:35:39', 'ban an.jpg'),
(28, 'Tủ Bếp', NULL, 4, '2017-07-19 05:58:43', '2018-08-01 18:37:22', 'tu bep.jpg'),
(29, 'Bàn ghế', NULL, 5, '2017-07-19 05:59:40', '2018-08-01 18:45:28', 'ban ghe.jpg'),
(30, 'Tủ kệ Tivi', NULL, 5, '2017-07-19 05:59:40', '2018-08-01 18:46:23', 'tu ke ti vi.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `full_name` varchar(255) DEFAULT NULL,
  `id_user` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `customer`
--

INSERT INTO `customer` (`id`, `email`, `address`, `phone`, `created_at`, `updated_at`, `full_name`, `id_user`) VALUES
(1, 'drakaacb456@gmail.com', 'dsadsa', 985668449, '2017-08-14 22:15:14', '2017-08-14 22:15:14', 'dsadasdsa', NULL),
(2, 'drakaabc456@gmail.com', 'dsadsadsa', 985668449, '2018-08-02 18:44:09', '2018-08-02 18:44:09', 'lê vinh truyển', 63),
(3, 'toan@gmail.com', 'quận 8', 943524134, '2018-08-02 19:05:46', '2018-08-02 19:05:46', 'Nguyễn Toàn', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `import_product`
--

CREATE TABLE IF NOT EXISTS `import_product` (
`id` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `import_price` int(11) NOT NULL,
  `import_quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Name_Product` varchar(200) DEFAULT NULL,
  `redisual_quantity` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `import_product`
--

INSERT INTO `import_product` (`id`, `id_product`, `import_price`, `import_quantity`, `created_at`, `Name_Product`, `redisual_quantity`, `updated_at`) VALUES
(6, 97, 100000, 30, '2017-08-09 15:49:56', 'Lục Bình Gỗ Trắc', 30, '2017-08-15 01:30:46'),
(7, 98, 100000, 30, '2017-08-09 15:49:42', 'Lục Bình Tứ Huyệt', 28, '2018-08-02 00:54:16'),
(8, 99, 100000, 60, '2017-08-09 17:56:58', 'Bàn trang điểm NH01', 50, '2018-08-02 00:54:16'),
(9, 101, 100000, 30, '2017-08-09 15:48:46', 'Bàn trang điểm NH03', 28, '2018-08-02 00:54:16'),
(10, 102, 100000, 60, '2017-08-09 15:48:29', 'GIường ghế gấp thông minh', 60, '2018-08-02 07:53:19'),
(11, 103, 100000, 60, '2017-08-09 15:48:14', 'GIường ghế gấp', 60, '2018-08-02 07:53:13'),
(12, 104, 100000, 30, '2017-08-09 15:45:17', 'Tủ quần áo Gỗ Hương', 30, '2017-08-14 03:16:11'),
(13, 105, 100000, 30, '2017-08-09 15:45:01', 'Tủ đựng quần áo Gỗ sồi', 29, '2018-08-02 19:07:06'),
(14, 106, 100000, 30, '2017-08-09 15:44:41', 'Tủ đựng quần áo gỗ xoan đào', 30, '2017-08-14 03:16:11'),
(15, 94, 100000, 30, '2017-08-09 15:50:32', 'Tượng ngưa gỗ', 30, '2017-08-14 03:16:11'),
(16, 107, 100000, 30, '2017-08-09 14:08:47', 'Bộ bàn ăn cao cấp 1', 30, '2017-08-14 03:16:11'),
(17, 113, 100000, 30, '2017-08-09 13:48:46', 'Tủ để tivi1', 28, '2018-08-02 19:07:06'),
(18, 114, 100000, 30, '2017-08-09 13:48:13', 'Tủ để ti vi 2', 30, '2017-08-14 03:16:11'),
(19, 115, 100000, 30, '2017-08-09 13:47:28', 'Tủ để tivi3', 30, '2017-08-14 03:16:11'),
(23, 92, 100000, 130, '2017-08-09 17:55:12', 'Tranh gỗ đĩa tứ linh', 130, '2018-08-02 10:18:31'),
(24, 93, 100000, 30, '2017-08-09 15:50:46', 'Tranh gỗ''', 30, '2018-08-02 08:00:49'),
(25, 95, 100000, 15, '2017-08-09 15:50:15', 'Tượng voi mẫu tử', 15, '2017-08-14 03:16:11'),
(26, 100, 100000, 15, '2017-08-09 15:49:09', 'Bàn trang điểm NH02', 15, '2017-08-14 03:16:11'),
(27, 108, 100000, 15, '2017-08-09 14:08:37', 'Bộ bàn ăn cao cấp 2', 15, '2017-08-14 03:16:11'),
(28, 109, 100000, 30, '2017-08-09 14:08:27', 'Bộ bàn ăn cao cấp 3', 30, '2018-08-02 08:01:08'),
(29, 110, 100000, 15, '2017-08-09 14:08:18', 'Bộ bàn ăn cao cấp 4', 15, '2017-08-14 03:16:11'),
(30, 111, 100000, 15, '2017-08-09 14:07:56', 'Tủ bếp 01', 15, '2017-08-14 03:16:11'),
(31, 112, 100000, 15, '2017-08-09 14:07:30', 'Tủ bếp 2 rất đẹp', 15, '2017-08-14 03:16:11'),
(32, 116, 100000, 26, '2017-08-11 02:42:52', 'Tủ để tivi 4', 25, '2018-08-02 19:07:10'),
(33, 117, 350000, 8, '2018-08-01 20:35:44', 'Bồn rửa tay', 8, '2018-08-02 07:59:43'),
(34, 118, 1300000, 10, '2018-08-02 00:59:18', 'Nệm ngủ', 10, '2018-08-02 07:59:35'),
(35, 119, 500000, 30, '2018-08-02 01:04:21', 'Bàn trang điểm', 30, '2018-08-02 08:04:45'),
(36, 120, 550000, 12, '2018-08-02 01:08:11', 'tủ để ti vi', 12, '2018-08-02 01:08:11'),
(37, 121, 3000000, 30, '2018-08-02 01:16:15', 'Lộc bình', 30, '2018-08-02 01:16:15'),
(38, 122, 3500000, 5, '2018-08-02 01:22:25', 'Tủ ti vi', 4, '2018-08-02 18:45:51'),
(39, 123, 500000, 8, '2018-08-02 19:09:59', 'Bồn rửa tay 1', 8, '2018-08-02 19:09:59'),
(40, 124, 400000, 20, '2018-08-02 19:13:07', 'Tủ ti vi 4', 20, '2018-08-03 02:13:25');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(20) NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Category_ID_News` int(10) NOT NULL DEFAULT '2',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `id_user`, `title`, `image`, `description`, `content`, `Category_ID_News`, `created_at`) VALUES
(1, 65, ' Thi công biệt thự đẹp lộng lẫy nhờ nội thất gỗ ', 'tintuc1.jpg', 'Thi công biệt thự Sài Gòn cần đẹp thôi chưa đủ mà còn đòi hỏi nhiều yếu tố khác nhau, bởi vì gia chủ các căn biệt thự tại Tphcm yêu cầu khá gắt gao trong việc thi công nội thất. Một trong số đó chính là sự cá tính và phong cách sống của chủ nhà thể hiện qua thiết kế nội thất của căn biệt thự đó.', 'Thi công nội thất Sài Gòn từ trước đến nay không phải là điều đơn giản dù là phong cách gì đi chăng nữa từ cổ điển cho tới hiện đại. Từ những con số vài ý tưởng ban đầu phải những người kiến trúc sư đã phải lao động cật lực với bàn tay và khối óc sáng tạo của mình tạo nên những công trình tuyệt đẹp. Có thể nói thi công biệt thự nó tạo nên một tác phẩm nghệ thuật chứ không chỉ dừng lại ở một không gian sống đơn thuần.\r\n\r\nBàn làm việc cũng được bố trí cực đơn giản tạo không gian hài hòa\r\n\r\nThi công nội thất biệt thự trong căn biệt thự mà các bạn đang xem xét sau đây thuộc phong cách hiện đại và tài sản quý của gia chủ. Đây là một trong những phong cách phổ biến gần đây với sự linh hoạt và vẻ đẹp sang trọng phải năng động phù hợp với những người trẻ tuổi.\r\n\r\nPhòng ngủ được thiết kế đơn giản mà rất "chất"\r\n\r\nCông trình thi công nội thất hcm này sử dụng nội thất gỗ cao cấp từ sàn gỗ cho đến tủ gỗ ốp tường bằng gỗ rất đẹp và sang trọng. Không phải tất cả trong số đó đều làm bằng gỗ tự nhiên mà còn có các loại gỗ công nghiệp để giảm thiểu trọng lượng cũng như thích nghi với các loại hình không gian khác nhau trong phòng bếp và phòng tắm là hai môi trường khắc nghiệt nhất đối với nguyên liệu gỗ, những kiến trúc sư sử dụng những loại gỗ có tính chất đặc biệt hơn để có độ bền tốt hơn trong quá trình sinh hoạt.\r\n\r\nPhòng ngủ thông thoáng cũng là một điểm cộng cho phong thủy\r\n\r\nThi công nội thất căn hộ hcm đẹp đòi hỏi nhiều tính toán và sự phối hợp của các kiến trúc sư với chủ nhà để tạo nên một không gian thi công nội thất biệt thự đẳng cấp và với chủ nhà thì đó là điều không hề đơn giản.\r\n\r\nToilet được đặt thêm vài chậu cây xanh khiến không gian thêm hài hòa mát mẻ\r\n\r\nĐặc biệt với những căn biệt thự có vị trí địa lý đẹp mắt như ở trên đồi cao ở ngoại ô chậm rãi nhìn ra biển nhìn xuống đồi thì làm sao tận dụng những lợi thế đó càng trở nên quan trọng. Căn biệt thự này nằm ở vị trí cao và có hướng nhìn ra thành phố rất đẹp phải chỉ vì thế không có lý do gì mà không sử dụng những thiết kế kính lớn giúp người sử dụng bên trong căn nhà có thể nhìn ra khung cảnh tuyệt đại vào phía bên ngoài.', 6, '2017-08-14 16:18:14'),
(2, 65, ' Thi công biệt thự đẹp lộng lẫy nhờ nội thất gỗ ', 'tintuc2.jpg', 'Thi công biệt thự Sài Gòn cần đẹp thôi chưa đủ mà còn đòi hỏi nhiều yếu tố khác nhau, bởi vì gia chủ các căn biệt thự tại Tphcm yêu cầu khá gắt gao trong việc thi công nội thất. Một trong số đó chính là sự cá tính và phong cách sống của chủ nhà thể hiện qua thiết kế nội thất của căn biệt thự đó.', 'Thi công nội thất Sài Gòn từ trước đến nay không phải là điều đơn giản dù là phong cách gì đi chăng nữa từ cổ điển cho tới hiện đại. Từ những con số vài ý tưởng ban đầu phải những người kiến trúc sư đã phải lao động cật lực với bàn tay và khối óc sáng tạo của mình tạo nên những công trình tuyệt đẹp. Có thể nói thi công biệt thự nó tạo nên một tác phẩm nghệ thuật chứ không chỉ dừng lại ở một không gian sống đơn thuần.\r\n\r\nBàn làm việc cũng được bố trí cực đơn giản tạo không gian hài hòa\r\n\r\nThi công nội thất biệt thự trong căn biệt thự mà các bạn đang xem xét sau đây thuộc phong cách hiện đại và tài sản quý của gia chủ. Đây là một trong những phong cách phổ biến gần đây với sự linh hoạt và vẻ đẹp sang trọng phải năng động phù hợp với những người trẻ tuổi.\r\n\r\nPhòng ngủ được thiết kế đơn giản mà rất "chất"\r\n\r\nCông trình thi công nội thất hcm này sử dụng nội thất gỗ cao cấp từ sàn gỗ cho đến tủ gỗ ốp tường bằng gỗ rất đẹp và sang trọng. Không phải tất cả trong số đó đều làm bằng gỗ tự nhiên mà còn có các loại gỗ công nghiệp để giảm thiểu trọng lượng cũng như thích nghi với các loại hình không gian khác nhau trong phòng bếp và phòng tắm là hai môi trường khắc nghiệt nhất đối với nguyên liệu gỗ, những kiến trúc sư sử dụng những loại gỗ có tính chất đặc biệt hơn để có độ bền tốt hơn trong quá trình sinh hoạt.\r\n\r\nPhòng ngủ thông thoáng cũng là một điểm cộng cho phong thủy\r\n\r\nThi công nội thất căn hộ hcm đẹp đòi hỏi nhiều tính toán và sự phối hợp của các kiến trúc sư với chủ nhà để tạo nên một không gian thi công nội thất biệt thự đẳng cấp và với chủ nhà thì đó là điều không hề đơn giản.\r\n\r\nToilet được đặt thêm vài chậu cây xanh khiến không gian thêm hài hòa mát mẻ\r\n\r\nĐặc biệt với những căn biệt thự có vị trí địa lý đẹp mắt như ở trên đồi cao ở ngoại ô chậm rãi nhìn ra biển nhìn xuống đồi thì làm sao tận dụng những lợi thế đó càng trở nên quan trọng. Căn biệt thự này nằm ở vị trí cao và có hướng nhìn ra thành phố rất đẹp phải chỉ vì thế không có lý do gì mà không sử dụng những thiết kế kính lớn giúp người sử dụng bên trong căn nhà có thể nhìn ra khung cảnh tuyệt đại vào phía bên ngoài.', 6, '2017-08-14 16:18:14'),
(3, 65, ' Thi công biệt thự đẹp lộng lẫy nhờ nội thất gỗ ', 'tintuc3.png', 'Thi công biệt thự Sài Gòn cần đẹp thôi chưa đủ mà còn đòi hỏi nhiều yếu tố khác nhau, bởi vì gia chủ các căn biệt thự tại Tphcm yêu cầu khá gắt gao trong việc thi công nội thất. Một trong số đó chính là sự cá tính và phong cách sống của chủ nhà thể hiện qua thiết kế nội thất của căn biệt thự đó.', 'Thi công nội thất Sài Gòn từ trước đến nay không phải là điều đơn giản dù là phong cách gì đi chăng nữa từ cổ điển cho tới hiện đại. Từ những con số vài ý tưởng ban đầu phải những người kiến trúc sư đã phải lao động cật lực với bàn tay và khối óc sáng tạo của mình tạo nên những công trình tuyệt đẹp. Có thể nói thi công biệt thự nó tạo nên một tác phẩm nghệ thuật chứ không chỉ dừng lại ở một không gian sống đơn thuần.\r\n\r\nBàn làm việc cũng được bố trí cực đơn giản tạo không gian hài hòa\r\n\r\nThi công nội thất biệt thự trong căn biệt thự mà các bạn đang xem xét sau đây thuộc phong cách hiện đại và tài sản quý của gia chủ. Đây là một trong những phong cách phổ biến gần đây với sự linh hoạt và vẻ đẹp sang trọng phải năng động phù hợp với những người trẻ tuổi.\r\n\r\nPhòng ngủ được thiết kế đơn giản mà rất "chất"\r\n\r\nCông trình thi công nội thất hcm này sử dụng nội thất gỗ cao cấp từ sàn gỗ cho đến tủ gỗ ốp tường bằng gỗ rất đẹp và sang trọng. Không phải tất cả trong số đó đều làm bằng gỗ tự nhiên mà còn có các loại gỗ công nghiệp để giảm thiểu trọng lượng cũng như thích nghi với các loại hình không gian khác nhau trong phòng bếp và phòng tắm là hai môi trường khắc nghiệt nhất đối với nguyên liệu gỗ, những kiến trúc sư sử dụng những loại gỗ có tính chất đặc biệt hơn để có độ bền tốt hơn trong quá trình sinh hoạt.\r\n\r\nPhòng ngủ thông thoáng cũng là một điểm cộng cho phong thủy\r\n\r\nThi công nội thất căn hộ hcm đẹp đòi hỏi nhiều tính toán và sự phối hợp của các kiến trúc sư với chủ nhà để tạo nên một không gian thi công nội thất biệt thự đẳng cấp và với chủ nhà thì đó là điều không hề đơn giản.\r\n\r\nToilet được đặt thêm vài chậu cây xanh khiến không gian thêm hài hòa mát mẻ\r\n\r\nĐặc biệt với những căn biệt thự có vị trí địa lý đẹp mắt như ở trên đồi cao ở ngoại ô chậm rãi nhìn ra biển nhìn xuống đồi thì làm sao tận dụng những lợi thế đó càng trở nên quan trọng. Căn biệt thự này nằm ở vị trí cao và có hướng nhìn ra thành phố rất đẹp phải chỉ vì thế không có lý do gì mà không sử dụng những thiết kế kính lớn giúp người sử dụng bên trong căn nhà có thể nhìn ra khung cảnh tuyệt đại vào phía bên ngoài.', 6, '2017-08-14 16:18:14'),
(4, 65, ' Thi công biệt thự đẹp lộng lẫy nhờ nội thất gỗ ', 'tintuc4.jpg', 'Thi công biệt thự Sài Gòn cần đẹp thôi chưa đủ mà còn đòi hỏi nhiều yếu tố khác nhau, bởi vì gia chủ các căn biệt thự tại Tphcm yêu cầu khá gắt gao trong việc thi công nội thất. Một trong số đó chính là sự cá tính và phong cách sống của chủ nhà thể hiện qua thiết kế nội thất của căn biệt thự đó.', 'Thi công nội thất Sài Gòn từ trước đến nay không phải là điều đơn giản dù là phong cách gì đi chăng nữa từ cổ điển cho tới hiện đại. Từ những con số vài ý tưởng ban đầu phải những người kiến trúc sư đã phải lao động cật lực với bàn tay và khối óc sáng tạo của mình tạo nên những công trình tuyệt đẹp. Có thể nói thi công biệt thự nó tạo nên một tác phẩm nghệ thuật chứ không chỉ dừng lại ở một không gian sống đơn thuần.\r\n\r\nBàn làm việc cũng được bố trí cực đơn giản tạo không gian hài hòa\r\n\r\nThi công nội thất biệt thự trong căn biệt thự mà các bạn đang xem xét sau đây thuộc phong cách hiện đại và tài sản quý của gia chủ. Đây là một trong những phong cách phổ biến gần đây với sự linh hoạt và vẻ đẹp sang trọng phải năng động phù hợp với những người trẻ tuổi.\r\n\r\nPhòng ngủ được thiết kế đơn giản mà rất "chất"\r\n\r\nCông trình thi công nội thất hcm này sử dụng nội thất gỗ cao cấp từ sàn gỗ cho đến tủ gỗ ốp tường bằng gỗ rất đẹp và sang trọng. Không phải tất cả trong số đó đều làm bằng gỗ tự nhiên mà còn có các loại gỗ công nghiệp để giảm thiểu trọng lượng cũng như thích nghi với các loại hình không gian khác nhau trong phòng bếp và phòng tắm là hai môi trường khắc nghiệt nhất đối với nguyên liệu gỗ, những kiến trúc sư sử dụng những loại gỗ có tính chất đặc biệt hơn để có độ bền tốt hơn trong quá trình sinh hoạt.\r\n\r\nPhòng ngủ thông thoáng cũng là một điểm cộng cho phong thủy\r\n\r\nThi công nội thất căn hộ hcm đẹp đòi hỏi nhiều tính toán và sự phối hợp của các kiến trúc sư với chủ nhà để tạo nên một không gian thi công nội thất biệt thự đẳng cấp và với chủ nhà thì đó là điều không hề đơn giản.\r\n\r\nToilet được đặt thêm vài chậu cây xanh khiến không gian thêm hài hòa mát mẻ\r\n\r\nĐặc biệt với những căn biệt thự có vị trí địa lý đẹp mắt như ở trên đồi cao ở ngoại ô chậm rãi nhìn ra biển nhìn xuống đồi thì làm sao tận dụng những lợi thế đó càng trở nên quan trọng. Căn biệt thự này nằm ở vị trí cao và có hướng nhìn ra thành phố rất đẹp phải chỉ vì thế không có lý do gì mà không sử dụng những thiết kế kính lớn giúp người sử dụng bên trong căn nhà có thể nhìn ra khung cảnh tuyệt đại vào phía bên ngoài.', 6, '2017-08-14 16:18:14'),
(5, 65, ' Thi công biệt thự đẹp lộng lẫy nhờ nội thất gỗ ', 'tintuc4.jpg', 'Thi công biệt thự Sài Gòn cần đẹp thôi chưa đủ mà còn đòi hỏi nhiều yếu tố khác nhau, bởi vì gia chủ các căn biệt thự tại Tphcm yêu cầu khá gắt gao trong việc thi công nội thất. Một trong số đó chính là sự cá tính và phong cách sống của chủ nhà thể hiện qua thiết kế nội thất của căn biệt thự đó.', 'Thi công nội thất Sài Gòn từ trước đến nay không phải là điều đơn giản dù là phong cách gì đi chăng nữa từ cổ điển cho tới hiện đại. Từ những con số vài ý tưởng ban đầu phải những người kiến trúc sư đã phải lao động cật lực với bàn tay và khối óc sáng tạo của mình tạo nên những công trình tuyệt đẹp. Có thể nói thi công biệt thự nó tạo nên một tác phẩm nghệ thuật chứ không chỉ dừng lại ở một không gian sống đơn thuần.\r\n\r\nBàn làm việc cũng được bố trí cực đơn giản tạo không gian hài hòa\r\n\r\nThi công nội thất biệt thự trong căn biệt thự mà các bạn đang xem xét sau đây thuộc phong cách hiện đại và tài sản quý của gia chủ. Đây là một trong những phong cách phổ biến gần đây với sự linh hoạt và vẻ đẹp sang trọng phải năng động phù hợp với những người trẻ tuổi.\r\n\r\nPhòng ngủ được thiết kế đơn giản mà rất "chất"\r\n\r\nCông trình thi công nội thất hcm này sử dụng nội thất gỗ cao cấp từ sàn gỗ cho đến tủ gỗ ốp tường bằng gỗ rất đẹp và sang trọng. Không phải tất cả trong số đó đều làm bằng gỗ tự nhiên mà còn có các loại gỗ công nghiệp để giảm thiểu trọng lượng cũng như thích nghi với các loại hình không gian khác nhau trong phòng bếp và phòng tắm là hai môi trường khắc nghiệt nhất đối với nguyên liệu gỗ, những kiến trúc sư sử dụng những loại gỗ có tính chất đặc biệt hơn để có độ bền tốt hơn trong quá trình sinh hoạt.\r\n\r\nPhòng ngủ thông thoáng cũng là một điểm cộng cho phong thủy\r\n\r\nThi công nội thất căn hộ hcm đẹp đòi hỏi nhiều tính toán và sự phối hợp của các kiến trúc sư với chủ nhà để tạo nên một không gian thi công nội thất biệt thự đẳng cấp và với chủ nhà thì đó là điều không hề đơn giản.\r\n\r\nToilet được đặt thêm vài chậu cây xanh khiến không gian thêm hài hòa mát mẻ\r\n\r\nĐặc biệt với những căn biệt thự có vị trí địa lý đẹp mắt như ở trên đồi cao ở ngoại ô chậm rãi nhìn ra biển nhìn xuống đồi thì làm sao tận dụng những lợi thế đó càng trở nên quan trọng. Căn biệt thự này nằm ở vị trí cao và có hướng nhìn ra thành phố rất đẹp phải chỉ vì thế không có lý do gì mà không sử dụng những thiết kế kính lớn giúp người sử dụng bên trong căn nhà có thể nhìn ra khung cảnh tuyệt đại vào phía bên ngoài.', 7, '2017-08-14 16:18:14'),
(6, 65, ' Thi công biệt thự đẹp lộng lẫy nhờ nội thất gỗ ', 'tintuc4.jpg', 'Thi công biệt thự Sài Gòn cần đẹp thôi chưa đủ mà còn đòi hỏi nhiều yếu tố khác nhau, bởi vì gia chủ các căn biệt thự tại Tphcm yêu cầu khá gắt gao trong việc thi công nội thất. Một trong số đó chính là sự cá tính và phong cách sống của chủ nhà thể hiện qua thiết kế nội thất của căn biệt thự đó.', 'Thi công nội thất Sài Gòn từ trước đến nay không phải là điều đơn giản dù là phong cách gì đi chăng nữa từ cổ điển cho tới hiện đại. Từ những con số vài ý tưởng ban đầu phải những người kiến trúc sư đã phải lao động cật lực với bàn tay và khối óc sáng tạo của mình tạo nên những công trình tuyệt đẹp. Có thể nói thi công biệt thự nó tạo nên một tác phẩm nghệ thuật chứ không chỉ dừng lại ở một không gian sống đơn thuần.\r\n\r\nBàn làm việc cũng được bố trí cực đơn giản tạo không gian hài hòa\r\n\r\nThi công nội thất biệt thự trong căn biệt thự mà các bạn đang xem xét sau đây thuộc phong cách hiện đại và tài sản quý của gia chủ. Đây là một trong những phong cách phổ biến gần đây với sự linh hoạt và vẻ đẹp sang trọng phải năng động phù hợp với những người trẻ tuổi.\r\n\r\nPhòng ngủ được thiết kế đơn giản mà rất "chất"\r\n\r\nCông trình thi công nội thất hcm này sử dụng nội thất gỗ cao cấp từ sàn gỗ cho đến tủ gỗ ốp tường bằng gỗ rất đẹp và sang trọng. Không phải tất cả trong số đó đều làm bằng gỗ tự nhiên mà còn có các loại gỗ công nghiệp để giảm thiểu trọng lượng cũng như thích nghi với các loại hình không gian khác nhau trong phòng bếp và phòng tắm là hai môi trường khắc nghiệt nhất đối với nguyên liệu gỗ, những kiến trúc sư sử dụng những loại gỗ có tính chất đặc biệt hơn để có độ bền tốt hơn trong quá trình sinh hoạt.\r\n\r\nPhòng ngủ thông thoáng cũng là một điểm cộng cho phong thủy\r\n\r\nThi công nội thất căn hộ hcm đẹp đòi hỏi nhiều tính toán và sự phối hợp của các kiến trúc sư với chủ nhà để tạo nên một không gian thi công nội thất biệt thự đẳng cấp và với chủ nhà thì đó là điều không hề đơn giản.\r\n\r\nToilet được đặt thêm vài chậu cây xanh khiến không gian thêm hài hòa mát mẻ\r\n\r\nĐặc biệt với những căn biệt thự có vị trí địa lý đẹp mắt như ở trên đồi cao ở ngoại ô chậm rãi nhìn ra biển nhìn xuống đồi thì làm sao tận dụng những lợi thế đó càng trở nên quan trọng. Căn biệt thự này nằm ở vị trí cao và có hướng nhìn ra thành phố rất đẹp phải chỉ vì thế không có lý do gì mà không sử dụng những thiết kế kính lớn giúp người sử dụng bên trong căn nhà có thể nhìn ra khung cảnh tuyệt đại vào phía bên ngoài.', 7, '2017-08-14 16:18:14');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) unsigned DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `sale_quantity`, `image`, `unit`, `Materia`, `view`, `created_at`, `updated_at`, `id_par`, `image2`, `image3`, `size`, `status_pro`) VALUES
(92, 'Tranh gỗ đĩa tứ linh', 23, NULL, 200000, 0, 'phongthuy/tranhgo.jpg', 'cái', 'Gỗ xoan đào', 16, '2017-07-19 08:04:25', '2018-08-02 09:21:37', 2, 'phongthuy/tranhgo.jpg', 'phongthuy/tranhgo.jpg', 'R100 x C30 x D190 cm', 1),
(93, 'Tranh gỗ''', 23, NULL, 200000, 0, 'phongthuy/tranhgo2.jpg', 'cái', 'Gỗ xoan đào', 13, '2017-07-19 08:07:42', '2017-08-15 01:31:12', 2, 'phongthuy/tranhgo2.jpg', 'phongthuy/tranhgo2.jpg', 'R100 x C30 x D190 cm', 1),
(94, 'Tượng ngưa gỗ', 21, NULL, 1500000, 0, 'phongthuy/tuongnguago.jpg', 'cái', 'Gỗ xoan đào', 24, '2017-07-19 08:11:45', '2017-08-14 14:51:19', 2, 'phongthuy/tuongnguago.jpg', 'phongthuy/tuongnguago.jpg', 'R100 x C30 x D190 cm', 1),
(95, 'Tượng voi mẫu tử', 21, NULL, 200000, 0, 'phongthuy/tuongvoi.jpg', 'cái', 'Gỗ xoan đào', 11, '2017-07-19 08:59:51', '2017-08-14 03:16:43', 2, 'phongthuy/tuongvoi.jpg', 'phongthuy/tuongvoi.jpg', 'R100 x C30 x D190 cm', 1),
(97, 'Lục Bình Gỗ Trắc', 22, NULL, 200000, 0, 'phongthuy/lucbinh2.jpg', 'cái', 'Gỗ xoan đào', 16, '2017-07-19 09:08:43', '2017-08-15 01:31:12', 2, 'phongthuy/lucbinh2.jpg', 'phongthuy/lucbinh2.jpg', 'R100 x C30 x D190 cm', 1),
(98, 'Lục Bình Tứ Huyệt', 22, NULL, 500000, 2, 'phongthuy/lucbinh4.jpg', 'cái', 'Gỗ xoan đào', 10, '2017-07-19 09:08:43', '2018-08-02 00:54:16', 2, 'phongthuy/lucbinh4.jpg', 'phongthuy/lucbinh4.jpg', 'R100 x C30 x D190 cm', 1),
(99, 'Bàn trang điểm NH01', 24, NULL, 200000, 10, 'phongngu/bantrangdiem1.jpg', 'cái', 'Gỗ xoan đào', 19, '2017-07-19 09:23:36', '2018-08-02 00:54:16', 3, 'phongngu/bantrangdiem1.jpg', 'phongngu/bantrangdiem1.jpg', 'R100 x C30 x D190 cm', 1),
(100, 'Bàn trang điểm NH02', 24, NULL, 300000, 0, 'phongngu/bantrangdiem2.jpg', 'cái', 'Gỗ xoan đào', 20, '2017-07-19 09:23:36', '2017-08-14 14:51:27', 3, 'phongngu/bantrangdiem2.jpg', 'phongngu/bantrangdiem2.jpg', 'R100 x C30 x D190 cm', 1),
(101, 'Bàn trang điểm NH03', 25, NULL, 500000, 2, 'phongngu/bantrangdiem3.jpg', 'cái', 'Gỗ xoan đào', 43, '2017-07-19 09:23:36', '2018-08-02 09:19:44', 3, 'phongngu/bantrangdiem3.jpg', 'phongngu/bantrangdiem3.jpg', 'R100 x C30 x D190 cm', 1),
(102, 'GIường ghế gấp thông minh', 25, NULL, 200000, 0, 'phongngu/giuongngu1.jpg', 'cái', 'Gỗ xoan đào', 10, '2017-07-19 09:31:36', '2017-08-14 03:16:43', 3, 'phongngu/giuongngu1.jpg', 'phongngu/giuongngu1.jpg', 'R100 x C30 x D190 cm', 1),
(103, 'GIường ghế gấp', 25, NULL, 200000, 0, 'phongngu/giuongngu3.jpg', 'cái', 'Gỗ xoan đào', 12, '2017-07-19 09:31:36', '2017-08-15 01:31:12', 3, 'phongngu/giuongngu3.jpg', 'phongngu/giuongngu3.jpg', 'R100 x C30 x D190 cm', 1),
(104, 'Tủ quần áo Gỗ Hương', 26, NULL, 200000, 0, 'phongngu/tugo3.jpg', 'cái', 'Gỗ xoan đào', 18, '2017-07-19 09:42:54', '2017-08-14 07:32:21', 3, 'phongngu/tugo3.jpg', 'phongngu/tugo3.jpg', 'R100 x C30 x D190 cm', 1),
(105, 'Tủ đựng quần áo Gỗ sồi', 26, NULL, 200000, 1, 'phongngu/tugo2.jpg', 'cái', 'Gỗ xoan đào', 10, '2017-07-19 09:42:54', '2018-08-02 19:07:06', 3, 'phongngu/tugo2.jpg', 'phongngu/tugo2.jpg', 'R100 x C30 x D190 cm', 1),
(106, 'Tủ đựng quần áo gỗ xoan đào', 26, NULL, 200000, 0, 'phongngu/tugo1.jpg', 'cái', 'Gỗ xoan đào', 10, '2017-07-19 09:42:54', '2018-08-02 08:17:48', 3, 'phongngu/tugo1.jpg', 'phongngu/tugo1.jpg', 'R100 x C30 x D190 cm', 0),
(107, 'Bộ bàn ăn cao cấp 1', 27, NULL, 200000, 0, 'phongbep/bobanan1.jpg', 'cái', 'Gỗ xoan đào', 26, '2017-07-19 09:54:56', '2018-08-02 08:17:30', 4, 'phongbep/bobanan1.jpg', 'phongbep/bobanan1.jpg', 'R100 x C30 x D190 cm', 0),
(108, 'Bộ bàn ăn cao cấp 2', 27, NULL, 200000, 0, 'phongbep/bobanan2.jpg', 'cái', 'Gỗ xoan đào', 10, '2017-07-19 09:54:56', '2018-08-02 08:18:05', 4, 'phongbep/bobanan2.jpg', 'phongbep/bobanan2.jpg', 'R100 x C30 x D190 cm', 0),
(109, 'Bộ bàn ăn cao cấp 3', 27, NULL, 200000, 0, 'phongbep/bobanan3.jpg', 'cái', 'Gỗ xoan đào', 10, '2017-07-19 09:54:56', '2018-08-02 08:12:19', 4, 'phongbep/bobanan3.jpg', 'phongbep/bobanan3.jpg', 'R100 x C30 x D190 cm', 0),
(110, 'Bộ bàn ăn cao cấp 4', 27, NULL, 200000, 0, 'phongbep/bobanan4.jpg', 'cái', 'Gỗ xoan đào', 13, '2017-07-19 09:54:56', '2018-08-03 02:02:38', 4, 'phongbep/bobanan4.jpg', 'phongbep/bobanan4.jpg', 'R100 x C30 x D190 cm', 1),
(111, 'Tủ bếp 01', 28, NULL, 200000, 0, 'phongbep/tubep1.jpg', 'cái', 'Gỗ xoan đào', 14, '2017-07-19 10:02:28', '2018-08-02 08:19:23', 4, 'phongbep/tubep1.jpg', 'phongbep/tubep1.jpg', 'R100 x C30 x D190 cm', 1),
(112, 'Tủ bếp 2 rất đẹp', 28, NULL, 200000, 0, 'phongbep/tubep2.jpeg', 'cái', 'Gỗ xoan đào', 69, '2017-07-19 10:02:28', '2018-08-02 08:11:31', 4, 'phongbep/tubep2.jpeg', 'phongbep/tubep2.jpeg', 'R100 x C30 x D190 cm', 0),
(113, 'Tủ để tivi1', 30, NULL, 200000, 2, 'ketivi1.jpg', 'cái', 'Gỗ xoan đào', 37, '2017-07-19 10:13:09', '2018-08-02 19:07:06', 5, 'phongkhach/ketivi1.jpg', 'phongkhach/ketivi1.jpg', 'R100 x C30 x D190 cm', 1),
(114, 'Tủ để ti vi 2', 30, 'dsa', 200000, 0, 'phongkhach/ketivi2.jpg', 'cái', 'Gỗ xoan đào', 28, '2017-07-19 10:13:09', '2018-08-02 08:09:17', 5, 'phongkhach/ketivi2.jpg', 'phongkhach/ketivi2.jpg', 'R100 x C30 x D190 cm', 0),
(115, 'Tủ để tivi3', 30, NULL, 200000, 0, 'phongkhach/ketivi3.jpg', 'cái', 'Gỗ xoan đào', 56, '2017-07-19 10:13:09', '2018-08-02 08:11:48', 5, 'phongkhach/ketivi3.jpg', 'phongkhach/ketivi3.jpg', 'R100 x C30 x D190 cm', 0),
(116, 'Tủ để tivi 4', 30, 'dsadsadsa', 200000, 1, 'ts11.jpg', 'cái', 'dsadsadas', 2, '2017-08-11 02:42:51', '2018-08-03 02:28:44', 5, 'ketivi1.jpg', 't2.jpg', NULL, 1),
(117, 'Bồn rửa tay', 28, '<p>b&agrave;n rửa tay bằng sứ</p>', 400000, 0, 'bonruatay.jpg', 'cái', 'sứ', 1, '2018-08-01 20:35:44', '2018-08-03 02:22:12', 4, '', '', '150', 1),
(118, 'Nệm ngủ', 25, '<p>nệm&nbsp;</p>', 1500000, 0, 'nemngu.jpg', 'cái', 'gỗ', 3, '2018-08-02 00:59:18', '2018-08-03 01:42:22', 3, '', '', '154', 1),
(119, 'Bàn trang điểm', 24, '<p>b&agrave;n trang điểm</p>', 1000000, 0, 'bantrangdiem1.jpg', 'cái', 'gỗ', 0, '2018-08-02 01:04:21', '2018-08-02 08:18:44', 3, '', '', '155', 1),
(120, 'tủ để ti vi', 30, '<p>tủ</p>', 2000000, 0, 'tudetivi2.jpg', 'cái', 'gỗ', 0, '2018-08-02 01:08:11', '2018-08-02 08:10:30', 5, '', '', '156', 0),
(121, 'Lộc bình', 22, '<p>tủ</p>', 4000000, 0, 'lucbinh.jpg', 'cái', 'gỗ', 0, '2018-08-02 01:16:15', '2018-08-02 08:19:45', 2, '', '', '157', 0),
(122, 'Tủ ti vi', 30, '<p>tủ</p>', 4000000, 1, 'tivi.jpg', 'cái', 'liêm', 1, '2018-08-02 01:22:25', '2018-08-03 01:59:08', 5, '', '', '149', 1),
(123, 'Bồn rửa tay 1', 26, '<p>bồn</p>', 550000, 0, 'BỒN RỬA TAY.jpg', 'cái', 'sứ', 0, '2018-08-02 19:09:59', '2018-08-03 02:10:28', 3, 'BỒN RỬA TAY.jpg', 'BỒN RỬA TAY.jpg', '140', 1),
(124, 'Tủ ti vi 4', 30, '<p>tủ</p>', 600000, 0, 'TI VI.jpg', 'cái', 'liêm', 0, '2018-08-02 19:13:07', '2018-08-03 02:13:35', 5, 'TI VI.jpg', '', '141', 1);

-- --------------------------------------------------------

--
-- Structure de la table `supports`
--

CREATE TABLE IF NOT EXISTS `supports` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `supports`
--

INSERT INTO `supports` (`id`, `email`, `full_name`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(3, 'drakaabc456@gmail.com', 'dsadsa', '3212132132', 'fsdfsdfds', '2017-08-14 17:00:35', '2017-08-14 17:00:35'),
(4, 'nguyen01@gmail.com', 'Le Nguyen', '0971314225', 'xin chào trang web', '2018-08-03 02:01:01', '2018-08-03 02:01:01');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
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
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `google_id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `active`, `group`, `created_at`, `updated_at`, `provider`) VALUES
(17, '', NULL, 'hung', 'ass@gmail.com', '1234567', '213124234', 'xzczxbvcvn', NULL, 0, '0', NULL, NULL, NULL),
(18, '', NULL, 'sdadas', 'cvb@gmail.com', '1234567', '2132131', '324235sdfsdf', NULL, 0, '0', '2017-07-04 15:49:05', '2017-07-04 15:49:05', NULL),
(19, '', NULL, 'hung', 'dc@gmail.com', '$2y$10$/Mq6.R9XSjIQwAJxpLpJlOxSuyYZsbwEd1KVCMUm9IF2qYBmQAtt.', '2131243', 'dsadasf', NULL, 1, '2', '2017-07-04 15:56:45', '2018-08-02 18:46:34', NULL),
(20, '', NULL, 'hung', 'lethanh@gmail.com', '$2y$10$hBPM7r6PGrxrFKmKeDMEJuH1bUJsJjl.E5Rv1FGn.OWIBtv/9HshO', '4324234', '3242342fdsfsdfsdgfsfnjansal', NULL, 0, '1', '2017-07-04 16:06:55', '2017-08-11 06:45:42', NULL),
(21, '', NULL, 'sadas', 'hg@gmail.com', '$2y$10$6mU6GrerQ0u94u0SEYRe8eYsK16E7JzTVxlysvksmkX73D3BDOKce', '324325432', '3242dfsdfs', NULL, 1, '0', '2017-07-04 16:32:49', '2017-07-07 08:17:54', NULL),
(22, '', NULL, 'hung', 'gh@gmail.com', '$2y$10$Od.jSbQ61.Czh/gMvRaYv.ohH8rGG9SrdCAzTN8v0RawXMYVF4p5u', '123321321', 'dsadferwefsfs', NULL, 1, '1', '2017-07-05 08:11:12', '2017-08-11 08:06:50', NULL),
(23, '', NULL, 'ádasda', '123@gmail.com', '$2y$10$FNoIgRvzw5NeytHR77aYK.3mRypNAKITF8T5kTXpQPY3b466vTkKC', '123123123', '123/456', NULL, 1, '0', '2017-07-07 01:24:03', '2017-07-07 09:32:00', NULL),
(24, '', NULL, 'hung am binh', '123123@gmail.com', '$2y$10$IQMF5JL5HEK24.NPuI4lDu.up6VQufyUHaqjTvZDCazVNhORz9Z0O', '123456789', '123/456', 'v5ezgThSxXxe1uC4nbmyTxBk63e95KdJP3VuepeN', 1, '1', '2017-07-07 09:39:58', '2017-08-11 06:45:44', NULL),
(25, '', NULL, 'hoangminh', 'hoangminh@gmail.com', '$2y$10$.2V7yjTnp2AF/lmCVTUijOhQNrEkWfrcWxmXzNmSXxtPGLU6D1T/6', '0123456789', '123/456', 'eBhvHJsrR6eUwUHK8fW03QrHNaq4uUQGgxzKYMhg', 0, NULL, '2017-07-15 07:00:08', '2017-07-15 07:00:08', NULL),
(54, NULL, NULL, 'dsadsa', 'drakaabc123@gmail.com', '$2y$10$AHYz00eLgWJ.kiHJYDzpVu01n.L7pWNeTp74KLEOgWdqbX2ZLt9.m', '0985668449', 'dsadsadsa', 'boMKpzgkpxsRtnPmoU8yet8rytqcmycwnh3JMjU6vYLrxvE4B0UCvrfBnpeI', 1, '1', '2017-07-21 23:03:50', '2018-08-03 02:22:39', NULL),
(56, NULL, NULL, 'LAM HA', 'khachhang1@gmail.com', '$2y$10$eabEcIhvMqKfvKbgMJc9/eRPn0YUF/Fll.0llVkB.354zvUYEDJGu', '0985668449', 'dsadsadsa', 'gcOKKuLxEYXcnTPBYKaqVtM7JHOL2Ax5uGnD60B4B6aleOfjTEsgYVNXG6TG', 1, '0', '2017-07-23 10:46:52', '2017-07-23 17:56:15', NULL),
(57, '1253638598099255', NULL, 'Lâm Hà', 'nhoc_solo_xx@yahoo.com.vn', NULL, NULL, NULL, 'HU4VEHncL4Uj9SfJxQTZM3WElg8YaQmaPQ0BUbz0XEiblRLikkp8Hl6T0OQv', 0, '0', '2017-07-25 11:23:27', '2017-08-14 09:29:38', 'facebook'),
(63, NULL, NULL, 'Lê Vinh Truyển', 'drakaabc456@gmail.com', '$2y$10$vHE3oMOYBA6glGSR./bAo.Z9kJscJsLx2zjYoHAP/41fZejOcV6ia', '0985668449', 'dsadsadsa', 'UytIjxdlGnAalYZQzgQC0ooHaL0QmSfNPkWahoXcOIFjKFTsXk7XJB9Y1rZS', 1, '0', '2017-08-07 08:01:13', '2018-08-03 02:30:15', NULL),
(64, NULL, NULL, 'dsadsadsa', 'admin@gmail.com', '$2y$10$E2J3aqB7Q5oSPe9efoq3P./fQ0DnKUB9GvvlMLN3bH76WHOQu9WOK', '1234567888', 'dsadsa', 'BFAEUrF9nhuW4HTQGWNhPr3V4dR9yCl97CaIDzVG6PGHbh0YHioEPAf1OmN7', 1, '2', '2017-08-10 20:09:06', '2017-08-11 08:47:52', NULL),
(65, NULL, NULL, 'nhanvien2', 'nhanvien2@gmail.com', '$2y$10$NM4Qm0jagU.OKKhW.OmOAekCnsugZbQ/9jYnpgkpiku41cgJhqJWm', '0985668449', 'dsadsa', 'epxHI6Tpw7UT9sajbttRD7qjqkxjmaj6gDevnTnhTAxOcVm6onev1AK2GjF9', 1, '1', '2017-08-10 23:53:15', '2017-08-11 08:08:48', NULL),
(66, NULL, NULL, 'admin3', 'admin3@gmail.com', '$2y$10$i7Czb9DKyWTGsSv2twclgOgcVyq1bi5cM30OzWofUJczu.orpGU2K', '0985668449', 'dsadsdsa', 'wAqvba3TX7V6bYrHW4Ab3WXD0xOzSX7qYp7vhDYUQzUBGlwwBqlTCkAvyfGF', 1, '2', '2017-08-11 01:20:14', '2018-08-03 02:20:53', NULL),
(67, NULL, NULL, 'hang', 'hang@gmail.com', '$2y$10$vUbUJ0El8PwPX85qyE590uzz0JxWmOZNwZdd7ZvYz4htlGPuyRxIS', '0969325992', 'quận 9', '9AbUZUwvN0NVgsSmoUtcQEADMMVVpIKKjmNgIEECZr7IPHbx2esTk3As3Hk7', 1, '0', '2018-08-01 06:56:34', '2018-08-01 14:05:02', NULL),
(68, NULL, NULL, 'uu', 'uu@gmail.com', '$2y$10$4Xcgsp6Q5sl3MTOWssc4BeUIIHGIppoFyfo6IBt8iHy1cfbdL2PgK', '0989909989', 'quan2', 'L3vwQ1ob739qlLtdmuK5yauRQzLj6zgl83j5HoJp', 1, '0', '2018-08-01 07:09:46', '2018-08-01 14:10:23', NULL),
(69, NULL, NULL, 'Nguyen Vang', 'vang@gmail.com', '$2y$10$VhiUQPxZQf1ovkXmWayK7.49OTVxiLL7YIlC1uIgIWG0Mavsyd60K', '0905467564', 'quan10', 'X3Uh6qQ6fCzgomyjTyG8dn5tRZlsB9U3HktOsL49', 1, '1', '2018-08-02 18:47:22', '2018-08-02 18:47:22', NULL),
(70, NULL, NULL, 'Lê Hùng', 'hung04@gmail.com', '$2y$10$ABFF29gcrn3GFEk0dQ1KdORKiRk.Qw1aYJ1qnloQa9dLWHdGY/mXu', '0123456789', 'quận 11', 'X3Uh6qQ6fCzgomyjTyG8dn5tRZlsB9U3HktOsL49', 1, '2', '2018-08-02 19:14:12', '2018-08-02 19:14:12', NULL),
(71, NULL, NULL, 'Lê văn Tâm', 'tam01@gmail.com', '$2y$10$hpyyLvXGDxbDkCnTPPCXguEpLc3ucvN.Redf5HpCnv/9OFBZzcKne', '0987651234', 'quận 1', 'X3Uh6qQ6fCzgomyjTyG8dn5tRZlsB9U3HktOsL49', 1, '2', '2018-08-02 19:15:11', '2018-08-02 19:15:22', NULL),
(72, NULL, NULL, 'Hoang Tuan', 'tuan@gmail.com', '$2y$10$NKSWp2XyTF1AQR0DW1LpVullJzVM4yVD5ECyummVOlv.NFsTQBMCK', '09010897654', 'quạn 6', 'BhIlM2Z3hzKl6RVEHcGkwSxTzrkjiRcIQArdEfBSj1usKz4tHpkLMLr2SCbE', 1, '0', '2018-08-02 19:23:26', '2018-08-03 02:27:27', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `bills`
--
ALTER TABLE `bills`
 ADD PRIMARY KEY (`id`), ADD KEY `id_customer` (`id_customer`);

--
-- Index pour la table `bill_detail`
--
ALTER TABLE `bill_detail`
 ADD PRIMARY KEY (`id`), ADD KEY `bill_detail_ibfk_2` (`id_product`), ADD KEY `id_bill` (`id_bill`), ADD KEY `id_bill_2` (`id_bill`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Index pour la table `import_product`
--
ALTER TABLE `import_product`
 ADD PRIMARY KEY (`id`), ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`), ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Index pour la table `supports`
--
ALTER TABLE `supports`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`id`), ADD KEY `id_bill` (`id_bill`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `banner`
--
ALTER TABLE `banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `bills`
--
ALTER TABLE `bills`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `bill_detail`
--
ALTER TABLE `bill_detail`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `import_product`
--
ALTER TABLE `import_product`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT pour la table `supports`
--
ALTER TABLE `supports`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `banner`
--
ALTER TABLE `banner`
ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `bills`
--
ALTER TABLE `bills`
ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Contraintes pour la table `bill_detail`
--
ALTER TABLE `bill_detail`
ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `customer`
--
ALTER TABLE `customer`
ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `import_product`
--
ALTER TABLE `import_product`
ADD CONSTRAINT `import_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `news`
--
ALTER TABLE `news`
ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
