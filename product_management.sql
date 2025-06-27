-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2024 lúc 01:42 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `product_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Điện thoại', 'Các loại điện thoại di động', '2024-12-12 09:19:47'),
(2, 'Laptop', 'Máy tính xách tay các loại', '2024-12-12 09:19:47'),
(3, 'Tablet', 'Máy tính bảng các loại', '2024-12-12 09:19:47'),
(4, 'Phụ kiện', 'Phụ kiện điện tử các loại', '2024-12-12 09:19:47'),
(5, 'Đồng hồ thông minh', 'Smartwatch các loại', '2024-12-12 09:19:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `image`, `price`, `quantity`, `created_at`) VALUES
(2, 1, 'iPhone 14 Pro Max', 'iPhone 14 Pro Max 256GB, màu đen, bảo hành 12 tháng', '675ae4c4806eb.jpg', 27990000.00, 15, '2024-12-12 09:19:47'),
(3, 1, 'Samsung Galaxy S23 Ultra', 'Samsung Galaxy S23 Ultra 256GB, màu xanh, bảo hành 12 tháng', '675ae4aa632ac.jpg', 23990000.00, 20, '2024-12-12 09:19:47'),
(4, 1, 'Xiaomi 13 Pro', 'Xiaomi 13 Pro 256GB, màu trắng, bảo hành 12 tháng', '675ae48e973c7.jpg', 19990000.00, 8, '2024-12-12 09:19:47'),
(5, 1, 'OPPO Find X5 Pro', 'OPPO Find X5 Pro 256GB, màu đen, bảo hành 12 tháng', '675ae477b510d.jpg', 18990000.00, 12, '2024-12-12 09:19:47'),
(6, 2, 'MacBook Pro M2', 'MacBook Pro M2 14 inch, 16GB RAM, 512GB SSD', '675ae45d7338e.jpg', 45990000.00, 10, '2024-12-12 09:19:47'),
(7, 2, 'Dell XPS 13', 'Dell XPS 13 Plus, Intel Core i7, 16GB RAM, 512GB SSD', '675ae4211e126.jpg', 35990000.00, 7, '2024-12-12 09:19:47'),
(8, 2, 'Lenovo ThinkPad X1', 'Lenovo ThinkPad X1 Carbon Gen 10, Intel Core i5, 16GB RAM', '675ae4061ac58.jpg', 32990000.00, 5, '2024-12-12 09:19:47'),
(9, 2, 'ASUS ROG Strix', 'ASUS ROG Strix G15, AMD Ryzen 9, RTX 3060, 16GB RAM', '675ae3e1cda1d.jpg', 29990000.00, 9, '2024-12-12 09:19:47'),
(10, 3, 'iPad Pro M2', 'iPad Pro M2 11 inch, 256GB, Wifi, màu xám', '675ae3b5316eb.jpg', 23990000.00, 14, '2024-12-12 09:19:47'),
(11, 3, 'Samsung Galaxy Tab S9', 'Samsung Galaxy Tab S9 Ultra, 256GB, S Pen included', '675ae395f181f.jpg', 25990000.00, 11, '2024-12-12 09:19:47'),
(12, 3, 'Xiaomi Pad 6 Pro', 'Xiaomi Pad 6 Pro, 8GB RAM, 256GB', '675ae373b667e.jpg', 12990000.00, 16, '2024-12-12 09:19:47'),
(13, 4, 'Apple AirPods Pro 2', 'Tai nghe Apple AirPods Pro 2, chống ồn chủ động', '675ae35594447.jpg', 5990000.00, 25, '2024-12-12 09:19:47'),
(14, 4, 'Samsung Galaxy Buds2 Pro', 'Tai nghe Samsung Galaxy Buds2 Pro, màu đen', '675ae3362594e.jpg', 3990000.00, 30, '2024-12-12 09:19:47'),
(15, 4, 'Anker PowerCore', 'Pin sạc dự phòng Anker PowerCore 20000mAh', '675ae2e40cabe.jpg', 990000.00, 40, '2024-12-12 09:19:47'),
(16, 4, 'Apple Magic Keyboard', 'Bàn phím Apple Magic Keyboard với Touch ID', '675ae2cbdb340.png', 2990000.00, 15, '2024-12-12 09:19:47'),
(17, 5, 'Apple Watch Series 8', 'Apple Watch Series 8 GPS 41mm, màu đen', '675ae2b5ebea9.jpg', 9990000.00, 18, '2024-12-12 09:19:47'),
(18, 5, 'Samsung Galaxy Watch 5 Pro', 'Samsung Galaxy Watch 5 Pro GPS 45mm', '675ae28589852.jpg', 7990000.00, 22, '2024-12-12 09:19:47'),
(19, 5, 'Garmin Fenix 7', 'Garmin Fenix 7 Sapphire Solar 47mm', '675ae24882539.jpg', 15990000.00, 6, '2024-12-12 09:19:47'),
(20, 5, 'Huawei Watch GT3 Pro', 'Huawei Watch GT3 Pro Titanium 46mm', '675aad2fed6e2.png', 8990000.00, 13, '2024-12-12 09:19:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `role`, `created_at`) VALUES
(1, 'admin', '$2y$10$nZ6aeVWaKK0uWTcxE1QxieQzFAFEx5ODHwC8DX74Roi1golp.ufs2', 'Nguyễn Văn Thành', '69vanthanh69@gmail.com', 'staff', '2024-12-12 08:46:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
