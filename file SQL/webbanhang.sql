-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2023 lúc 12:57 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newproduct`
--

CREATE TABLE `newproduct` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `hinhanh` text NOT NULL,
  `mota` text NOT NULL,
  `loai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `newproduct`
--

INSERT INTO `newproduct` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Iphone 15 Promax', '15000000', 'data:image/jpeg;base64,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', 'Điện thoại iPhone 15 Pro Max 256GB mới 100% nguyên hộp, chính hãng Apple, bảo hành chính hãng 12 tháng nếu có lỗi từ nhà sản xuất', 1),
(2, 'Laptop Dell Vostro', '20000000', 'https://phucanhcdn.com/media/product/29858_dell_vostro_5468_vti35008__gold_.jpg', 'CPU: Intel Core i3-1115G4 (tối đa 4.10GHz, 6MB)\r\n RAM: 8GB(8GBX1)DDR4 3200MHz (2 khe) \r\nỔ cứng: 256GB SSD M.2 PCIe NVMe\r\nVGA: Intel HD Graphics \r\nMàn hình: 14 inch FHD (1920 x 1080 ', 2),
(3, 'Samsung Galaxy S23 5G 128GB', '16990000', 'https://cdn.tgdd.vn/Products/Images/42/264060/Slider/samsung-galaxy-s23-5g-thumb-yt-1020x570.jpg', 'Cấu hình Điện thoại Samsung Galaxy S23 5G 128GB\r\n\r\nMàn hình:\r\n\r\nDynamic AMOLED 2X6.1\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 13\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 12 MP, 10 MP\r\nCamera trước:\r\n\r\n12 MP\r\nChip:\r\n\r\nSnapdragon 8 Gen 2 for Galaxy\r\nRAM:\r\n\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n3900 mAh25 W', 1),
(5, 'Điện thoại OPPO A77s', '4790000', 'https://cdn.tgdd.vn/Products/Images/42/292780/oppo-a77s-xanh-1.jpg', 'Màn hình:\r\n\r\nIPS LCD6.56\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 12\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 2 MP\r\nCamera trước:\r\n\r\n8 MP\r\nChip:\r\n\r\nSnapdragon 680\r\nRAM:\r\n\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh33 W', 1),
(8, 'Điện thoại Xiaomi 13T 5G 8GB ', '10990000', 'https://cdn.tgdd.vn/Products/Images/42/309814/xiaomi-13t-xanh-1.jpg', 'Cấu hình Điện thoại Xiaomi 13T 5G 8GB\r\n\r\nMàn hình:\r\n\r\nAMOLED6.67\"1.5K\r\nHệ điều hành:\r\n\r\nAndroid 13\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 50 MP, 12 MP\r\nCamera trước:\r\n\r\n20 MP\r\nChip:\r\n\r\nMediaTek Dimensity 8200-Ultra\r\nRAM:\r\n\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n256 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n5000 mAh67 W', 1),
(9, 'Điện thoại realme 10', '5390000', 'https://cdn.tgdd.vn/Products/Images/42/292672/realme-10-xanh-1.jpg', 'Cấu hình Điện thoại realme 10\r\n\r\nMàn hình:\r\n\r\nSuper AMOLED6.4\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 12\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nMediaTek Helio G99\r\nRAM:\r\n\r\n8 GB\r\nDung lượng lưu trữ:\r\n\r\n256 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh33 W', 1),
(11, 'Laptop Lenovo ThinkPad E15 Gen 4 i7 1260P/16GB/512GB/Win11 (21E600CPVN)', '26690000', 'https://cdn.tgdd.vn/Products/Images/44/299799/lenovo-thinkpad-e15-gen-4-i7-21e600cpvn-glr-a-1.jpg', 'Cấu hình Laptop Lenovo ThinkPad E15 Gen 4 i7 1260P/16GB/512GB/Win11 (21E600CPVN)\r\n\r\nCPU:\r\n\r\ni71260P2.1GHz\r\nRAM:\r\n\r\n16 GBDDR4 2 khe (8 GB onboard + 1 khe 8 GB)3200 MHz\r\nỔ cứng:\r\n\r\nHỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB)512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080)\r\nCard màn hình:\r\n\r\nCard tích hợpIntel Iris Xe\r\nCổng kết nối:\r\n\r\n1 x Thunderbolt 4 (hỗ trợ Power Delivery 3.0 và DisplayPort 1.4)HDMILAN (RJ45)1 x USB 2.01 x USB 3.2Jack tai nghe 3.5 mm\r\nĐặc biệt:\r\n\r\nCó đèn bàn phím\r\nHệ điều hành:\r\n\r\nWindows 11 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa - nắp lưng bằng kim loại\r\nKích thước, khối lượng:\r\n\r\nDài 365 mm - Rộng 240 mm - Dày 18.9 mm - Nặng 1.7 kg\r\nThời điểm ra mắt:\r\n\r\n2022', 2),
(13, 'Laptop Acer Nitro 5 Gaming AN515 57 5669 i5 11400H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QEHSV.001)', '16990000', 'https://cdn.tgdd.vn/Products/Images/44/263983/acer-nitro-5-gaming-an515-57-5669-i5-nhqehsv001-1.jpg', 'Cấu hình Laptop Acer Nitro 5 Gaming AN515 57 5669 i5 11400H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QEHSV.001)\r\n\r\nCPU:\r\n\r\ni511400H2.7GHz\r\nRAM:\r\n\r\n8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz\r\nỔ cứng:\r\n\r\nHỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB)512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)Hỗ trợ khe cắm HDD SATA (nâng cấp tối đa 2 TB)\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080) 144Hz\r\nCard màn hình:\r\n\r\nCard rờiGTX 1650 4GB\r\nCổng kết nối:\r\n\r\nHDMILAN (RJ45)USB Type-C3 x USB 3.2Jack tai nghe 3.5 mm\r\nĐặc biệt:\r\n\r\nCó đèn bàn phím\r\nHệ điều hành:\r\n\r\nWindows 11 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa\r\nKích thước, khối lượng:\r\n\r\nDài 363.4 mm - Rộng 255 mm - Dày 23.9 mm - Nặng 2.2 kg\r\nThời điểm ra mắt:\r\n\r\n2021', 2),
(15, 'Laptop Apple MacBook Pro 13 inch M2 2022 8-core CPU/8GB/256GB/10-core GPU (MNEH3SA/A) ', '29890000', 'https://cdn.tgdd.vn/Products/Images/44/282828/apple-macbook-pro-13-inch-m2-2022-1.jpg', 'Cấu hình Laptop Apple MacBook Pro 13 inch M2 2022 8-core CPU/8GB/256GB/10-core GPU\r\n\r\nCPU:\r\n\r\nApple M2100GB/s\r\nRAM:\r\n\r\n8 GB\r\nỔ cứng:\r\n\r\n256 GB SSD\r\nMàn hình:\r\n\r\n13.3\"Retina (2560 x 1600)\r\nCard màn hình:\r\n\r\nCard tích hợp10 nhân GPU\r\nCổng kết nối:\r\n\r\n2 x Thunderbolt 3Jack tai nghe 3.5 mm\r\nĐặc biệt:\r\n\r\nCó đèn bàn phím\r\nHệ điều hành:\r\n\r\nmacOS\r\nThiết kế:\r\n\r\nVỏ kim loại\r\nKích thước, khối lượng:\r\n\r\nDài 304.1 mm - Rộng 212.4 mm - Dày 15.6 mm - Nặng 1.4 kg\r\nThời điểm ra mắt:\r\n\r\n6/2022', 2),
(17, 'Laptop Asus Vivobook 15 X1504ZA i3 1215U/8GB/512GB/Win11 (NJ102W) ', '10490000', 'https://cdn.tgdd.vn/Products/Images/44/312414/asus-vivobook-15-x1504za-i3-nj102w-glr-1.jpg', 'Cấu hình Laptop Asus Vivobook 15 X1504ZA i3 1215U/8GB/512GB/Win11 (NJ102W)\r\n\r\nCPU:\r\n\r\ni31215U1.2GHz\r\nRAM:\r\n\r\n8 GBDDR4 2 khe (1 khe 8 GB onboard + 1 khe trống)3200 MHz\r\nỔ cứng:\r\n\r\n512 GB SSD NVMe PCIe\r\nMàn hình:\r\n\r\n15.6\"Full HD (1920 x 1080)\r\nCard màn hình:\r\n\r\nCard tích hợpIntel UHD\r\nCổng kết nối:\r\n\r\nHDMIUSB Type-C1 x USB 2.02 x USB 3.2Jack tai nghe 3.5 mm\r\nHệ điều hành:\r\n\r\nWindows 11 Home SL\r\nThiết kế:\r\n\r\nVỏ nhựa\r\nKích thước, khối lượng:\r\n\r\nDài 359.7 mm - Rộng 232.5 mm - Dày 17.9 mm - Nặng 1.7 kg\r\nThời điểm ra mắt:\r\n\r\n2023', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `hinhanh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'data:image/jpeg;base64,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'),
(2, 'Điện thoại', 'https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-3-200x200.jpg'),
(5, 'Máy tính', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn//News/1499078//laptop-15-800x450-1.jpg'),
(8, 'Liên hệ', 'https://vnessay.com/wp-content/uploads/2020/04/li%C3%AAn-h%E1%BB%87-ngay-vnessay.png'),
(9, 'Thông tin', 'https://dxwd4tssreb4w.cloudfront.net/image/5f358928b6dc60437b81ee6164b99344');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(1, 'nhitub98@gmail.com', '101320174', 'nhitub98', '0396312298');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `newproduct`
--
ALTER TABLE `newproduct`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `newproduct`
--
ALTER TABLE `newproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
