-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 12:58 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoestyle`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `name`, `img`, `type`) VALUES
(4, 'banner 1', 'banner-1.jpg', 0),
(5, 'banner 2', 'baner-2.jpg', 0),
(6, 'banner 3', 'banner-3.avif', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL,
  `noi_dung` varchar(255) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `ma_kh` varchar(20) NOT NULL,
  `ngay_bl` date NOT NULL,
  `rating` tinyint(5) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `noi_dung`, `ma_hh`, `ma_kh`, `ngay_bl`, `rating`) VALUES
(51, 'Chất lượng, bền bỉ \r\n', 53, 'trungnhan', '2023-11-27', 5),
(52, 'hỏng', 53, 'trungnhan', '2023-11-27', 3),
(53, 'hỏng', 53, 'trungnhan', '2023-11-27', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` int(11) NOT NULL,
  `ma_don_hang` int(11) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `ma_don_hang`, `ma_hh`, `ten_hh`, `img`, `so_luong`, `don_gia`) VALUES
(1, 13, 54, 'Giày thể thao Nike Invincible', 'Nike Invincible 3.webp', 1, 1200000),
(2, 15, 54, 'Giày thể thao Nike Invincible', 'Nike Invincible 3.webp', 1, 1200000),
(3, 15, 53, 'Nike Invincible 3', 'Nike Invincible 3 baclk.jpg', 1, 5399000),
(4, 16, 53, 'Nike Invincible 3', 'Nike Invincible 3 baclk.jpg', 2, 5399000),
(5, 17, 54, 'Giày thể thao Nike Invincible', 'Nike Invincible 3.webp', 1, 1200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `ma_don_hang` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `ngay_dat_hang` date NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `thanh_toan` tinyint(5) NOT NULL,
  `ghi_chu` varchar(2000) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `ma_kh` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`ma_don_hang`, `tenkh`, `sdt`, `dia_chi`, `ngay_dat_hang`, `tong_tien`, `thanh_toan`, `ghi_chu`, `trang_thai`, `ma_kh`) VALUES
(13, 'Trung Nhân', 328652467, 'gia lai', '2023-11-30', 6599000, 2, '123', 0, 'admin'),
(15, 'Trung Nhân', 328652467, 'gia lai', '2023-11-30', 6599000, 0, 'dfg', 0, 'admin'),
(16, 'Trung Nhân', 328652467, 'gia lai', '2023-12-01', 10798000, 0, 'asdf', 0, 'trungnhan'),
(17, 'Trung Nhân', 328652467, 'gia lai', '2023-12-02', 1200000, 0, '123', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(50) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `giam_gia` int(11) DEFAULT 0,
  `hinh` varchar(50) NOT NULL,
  `ngay_nhap` date DEFAULT NULL,
  `mo_ta` text NOT NULL,
  `dac_biet` int(1) NOT NULL DEFAULT 0,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `ma_loai`) VALUES
(53, 'Nike Invincible 3', 6000000, 601000, 'Nike Invincible 3 baclk.jpg', '2023-11-09', 'GIÀY CHẠY BỘ NAM NIKE ZOOMX INVINCIBLE RUN FK 3\r\n\r\nVới lớp đệm tối đa hỗ trợ trên mỗi dặm đường, Invincible 3 mang đến cho bạn mức độ thoải mái cao nhất giúp bạn luôn vững vàng trên đôi chân của mình hôm nay, ngày mai và hơn thế nữa. Được thiết kế để giúp bạn tiếp tục chạy, đôi giày này siêu hỗ trợ và nảy, vì vậy bạn có thể đi theo con đường ưa thích của mình và quay lại lần chạy tiếp theo với cảm giác sẵn sàng và tràn đầy sinh lực.\r\n\r\nKhả năng hỗ trợ: Cao\r\nGiày càng hỗ trợ nhiều thì bước đi tự nhiên của bạn càng ổn định. Sự kết hợp giữa hỗ trợ điều chỉnh và đệm được đặt có chủ ý giúp bạn cảm thấy an toàn trên mỗi bước đi. Invincible 3 có công nghệ hỗ trợ cao, với đệm và độ ổn định được đặt và định hình có chủ ý để bảo vệ bàn chân của bạn khỏi tác động của tư thế sấp.\r\n\r\nĐệm hỗ trợ: Siêu cao\r\nBạn càng có nhiều đệm dưới chân thì trải nghiệm chạy của bạn càng mềm mại và thoải mái hơn. Đệm giúp làm dịu tác động khi chân bạn chạm đất. Với đệm Nike ZoomX có hình dạng giống như một chiếc bập bênh và chiều cao bọt cao hơn, chiếc giày này mang đến cho bạn lớp đệm tối ưu khi tiếp xúc với mặt đất và cảm giác dưới chân thậm chí còn mềm mại hơn.\r\n\r\nKhả năng phản hồi: Siêu cao\r\nGiày càng phản ứng nhanh, bạn càng nhận được nhiều năng lượng hơn sau mỗi bước. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít sức hơn một chút, đôi giày phản ứng nhanh sẽ giúp bạn có thêm một chút lò xo trong bước chạy của mình để đạt hiệu quả cao hơn trong quá trình chạy. Bọt Nike ZoomX cực kỳ nhạy và nhẹ, mang lại cho bạn độ nảy và phản ứng linh hoạt với mỗi bước đi.\r\n\r\nMức độ phù hợp: an toàn, thoáng khí, thoải mái\r\nPhần trên Flyknit đã được cải tiến giúp tạo ra các khu vực dễ thở nơi bàn chân của bạn nóng lên nhiều nhất. Nó mạnh mẽ và bền bỉ, giúp giữ chân bạn an toàn trên mỗi dặm đường.\r\n\r\nCó gì mới về Invincible 3?\r\nNike đã tạo ra chiếc kẹp gót nhỏ hơn so với phiên bản trước và đặt nó ở vị trí chính xác hơn. Một đế giữa rộng hơn để tăng thêm sự ổn định. Các ngăn xếp bọt cao hơn so với phiên bản trước nâng cao tiêu chuẩn về đệm và sự thoải mái, trong một thiết kế đẹp mắt hơn.', 1, 21, 22),
(54, 'Giày thể thao Nike Invincible', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 3, 24),
(55, 'Nike Invincible 3', 6000000, 601000, 'Nike Invincible 3 baclk.jpg', '2023-11-09', 'GIÀY CHẠY BỘ NAM NIKE ZOOMX INVINCIBLE RUN FK 3\r\n\r\nVới lớp đệm tối đa hỗ trợ trên mỗi dặm đường, Invincible 3 mang đến cho bạn mức độ thoải mái cao nhất giúp bạn luôn vững vàng trên đôi chân của mình hôm nay, ngày mai và hơn thế nữa. Được thiết kế để giúp bạn tiếp tục chạy, đôi giày này siêu hỗ trợ và nảy, vì vậy bạn có thể đi theo con đường ưa thích của mình và quay lại lần chạy tiếp theo với cảm giác sẵn sàng và tràn đầy sinh lực.\r\n\r\nKhả năng hỗ trợ: Cao\r\nGiày càng hỗ trợ nhiều thì bước đi tự nhiên của bạn càng ổn định. Sự kết hợp giữa hỗ trợ điều chỉnh và đệm được đặt có chủ ý giúp bạn cảm thấy an toàn trên mỗi bước đi. Invincible 3 có công nghệ hỗ trợ cao, với đệm và độ ổn định được đặt và định hình có chủ ý để bảo vệ bàn chân của bạn khỏi tác động của tư thế sấp.\r\n\r\nĐệm hỗ trợ: Siêu cao\r\nBạn càng có nhiều đệm dưới chân thì trải nghiệm chạy của bạn càng mềm mại và thoải mái hơn. Đệm giúp làm dịu tác động khi chân bạn chạm đất. Với đệm Nike ZoomX có hình dạng giống như một chiếc bập bênh và chiều cao bọt cao hơn, chiếc giày này mang đến cho bạn lớp đệm tối ưu khi tiếp xúc với mặt đất và cảm giác dưới chân thậm chí còn mềm mại hơn.\r\n\r\nKhả năng phản hồi: Siêu cao\r\nGiày càng phản ứng nhanh, bạn càng nhận được nhiều năng lượng hơn sau mỗi bước. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít sức hơn một chút, đôi giày phản ứng nhanh sẽ giúp bạn có thêm một chút lò xo trong bước chạy của mình để đạt hiệu quả cao hơn trong quá trình chạy. Bọt Nike ZoomX cực kỳ nhạy và nhẹ, mang lại cho bạn độ nảy và phản ứng linh hoạt với mỗi bước đi.\r\n\r\nMức độ phù hợp: an toàn, thoáng khí, thoải mái\r\nPhần trên Flyknit đã được cải tiến giúp tạo ra các khu vực dễ thở nơi bàn chân của bạn nóng lên nhiều nhất. Nó mạnh mẽ và bền bỉ, giúp giữ chân bạn an toàn trên mỗi dặm đường.\r\n\r\nCó gì mới về Invincible 3?\r\nNike đã tạo ra chiếc kẹp gót nhỏ hơn so với phiên bản trước và đặt nó ở vị trí chính xác hơn. Một đế giữa rộng hơn để tăng thêm sự ổn định. Các ngăn xếp bọt cao hơn so với phiên bản trước nâng cao tiêu chuẩn về đệm và sự thoải mái, trong một thiết kế đẹp mắt hơn.', 1, 21, 22),
(56, 'Giày thể thao Nike Invincible', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(57, 'Nike Invincible 3', 6000000, 601000, 'Nike Invincible 3 baclk.jpg', '2023-11-09', 'GIÀY CHẠY BỘ NAM NIKE ZOOMX INVINCIBLE RUN FK 3\r\n\r\nVới lớp đệm tối đa hỗ trợ trên mỗi dặm đường, Invincible 3 mang đến cho bạn mức độ thoải mái cao nhất giúp bạn luôn vững vàng trên đôi chân của mình hôm nay, ngày mai và hơn thế nữa. Được thiết kế để giúp bạn tiếp tục chạy, đôi giày này siêu hỗ trợ và nảy, vì vậy bạn có thể đi theo con đường ưa thích của mình và quay lại lần chạy tiếp theo với cảm giác sẵn sàng và tràn đầy sinh lực.\r\n\r\nKhả năng hỗ trợ: Cao\r\nGiày càng hỗ trợ nhiều thì bước đi tự nhiên của bạn càng ổn định. Sự kết hợp giữa hỗ trợ điều chỉnh và đệm được đặt có chủ ý giúp bạn cảm thấy an toàn trên mỗi bước đi. Invincible 3 có công nghệ hỗ trợ cao, với đệm và độ ổn định được đặt và định hình có chủ ý để bảo vệ bàn chân của bạn khỏi tác động của tư thế sấp.\r\n\r\nĐệm hỗ trợ: Siêu cao\r\nBạn càng có nhiều đệm dưới chân thì trải nghiệm chạy của bạn càng mềm mại và thoải mái hơn. Đệm giúp làm dịu tác động khi chân bạn chạm đất. Với đệm Nike ZoomX có hình dạng giống như một chiếc bập bênh và chiều cao bọt cao hơn, chiếc giày này mang đến cho bạn lớp đệm tối ưu khi tiếp xúc với mặt đất và cảm giác dưới chân thậm chí còn mềm mại hơn.\r\n\r\nKhả năng phản hồi: Siêu cao\r\nGiày càng phản ứng nhanh, bạn càng nhận được nhiều năng lượng hơn sau mỗi bước. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít sức hơn một chút, đôi giày phản ứng nhanh sẽ giúp bạn có thêm một chút lò xo trong bước chạy của mình để đạt hiệu quả cao hơn trong quá trình chạy. Bọt Nike ZoomX cực kỳ nhạy và nhẹ, mang lại cho bạn độ nảy và phản ứng linh hoạt với mỗi bước đi.\r\n\r\nMức độ phù hợp: an toàn, thoáng khí, thoải mái\r\nPhần trên Flyknit đã được cải tiến giúp tạo ra các khu vực dễ thở nơi bàn chân của bạn nóng lên nhiều nhất. Nó mạnh mẽ và bền bỉ, giúp giữ chân bạn an toàn trên mỗi dặm đường.\r\n\r\nCó gì mới về Invincible 3?\r\nNike đã tạo ra chiếc kẹp gót nhỏ hơn so với phiên bản trước và đặt nó ở vị trí chính xác hơn. Một đế giữa rộng hơn để tăng thêm sự ổn định. Các ngăn xếp bọt cao hơn so với phiên bản trước nâng cao tiêu chuẩn về đệm và sự thoải mái, trong một thiết kế đẹp mắt hơn.', 1, 21, 22),
(58, 'Giày thể thao Nike Invincible', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(59, 'Giày thể thao Nike Invincible2', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(60, 'Giày thể thao Nike Invincible 1', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(61, 'Giày thể thao Nike Invincible 3', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(62, 'Giày thể thao Nike Invincible 4', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(63, 'Giày thể thao Nike Invincible 5', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(64, 'Giày thể thao Nike Invincible 6', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24),
(65, 'Giày thể thao Nike Invincible 7', 1200000, 0, 'Nike Invincible 3.webp', '2023-11-04', 'Sản phẩm chính hãng của Nike', 1, 2, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(20) NOT NULL COMMENT 'mã đăng nhập',
  `mat_khau` varchar(50) NOT NULL COMMENT 'mật khẩu',
  `ho_ten` varchar(50) NOT NULL COMMENT 'họ tên',
  `kich_hoat` bit(1) NOT NULL DEFAULT b'0' COMMENT 'trạng thái kích hoạt',
  `hinh` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `vai_tro` bit(1) NOT NULL DEFAULT b'0' COMMENT 'vai trò true là nv'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `mat_khau`, `ho_ten`, `kich_hoat`, `hinh`, `email`, `vai_tro`) VALUES
('admin', '123456', 'Trung Nhân', b'1', 'df6c99b8b907fd1cf89fa918242a4b4d.jpg', 'doantrungnhan24@gmail.com', b'1'),
('trungnhan', 'Nhan250124@', 'Trung Nhân', b'1', 'legion_game_shop.ico', 'nhancon.04@gmail.com', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int(11) NOT NULL COMMENT 'mã loại hàng',
  `ten_loai` varchar(50) NOT NULL COMMENT 'tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(22, 'Giày Nike'),
(23, 'Giày Adidas'),
(24, 'Giày thể thao'),
(25, 'Giày bóng đá'),
(26, 'Giày Sneaker');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `binh_luan_ibfk_1` (`ma_hh`),
  ADD KEY `binh_luan_ibfk_2` (`ma_kh`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_don_hang` (`ma_don_hang`),
  ADD KEY `ma_hh` (`ma_hh`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`ma_don_hang`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `ma_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã loại hàng', AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_1` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`ma_don_hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_don_hang_ibfk_2` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
