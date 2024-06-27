-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 20, 2023 lúc 07:26 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopraucu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `Ho` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`ID`, `Ho`, `Ten`, `user`, `pass`, `email`, `phone`, `MaQuyen`, `Time`) VALUES
(1, 'Admin', 'Nè', 'admin123', '6cb94f78f71270c5183586a81b256546', 'theforest2912@gmail.com', '0914179440', 1, '2021-11-26 09:46:05'),
(10, 'Tô', 'Trung', 'trungto2912', '6cb94f78f71270c5183586a81b256546', 'viettrung291201@gmail.com', '1234323', 1, '2021-11-26 22:44:11'),
(11, 'Ngô', 'Đôn', 'quangdon', '96e79218965eb72c92a549dd5a330112', '111111123@fmail.com', '0987654321', 3, '2021-11-18 22:20:45'),
(46, 'MR', 'BBBB', 'nguyenvanb', '875f26fdb1cecf20ceb4ca028263dec6', 'nvb@gmail.com', '988762678282', 3, '2021-11-26 09:48:06'),
(61, 'Việt', 'Trung', 'viettrung291201', '96e79218965eb72c92a549dd5a330112', 'viettrung291201@gmail.com', '0329060915', 3, '2021-12-06 10:07:32'),
(65, 'Nguyễnaa', 'bbbbbb', 'aaaaaaaa', '96e79218965eb72c92a549dd5a330112', 'viettrung2201@gmail.com', '0329060915', 3, '2022-01-15 16:45:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`) VALUES
(4, 'bg1.jpg'),
(5, 'bg2.jpg'),
(6, 'bg5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'Hoa quả sạch'),
(2, 'Rau củ sạch'),
(3, 'Cây giống'),
(4, 'Hạt giống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `TenSP`, `Gia`, `SoLuong`, `DonGia`) VALUES
(8, 25, 'Quả nhãn', 35000, 3, 105000),
(8, 26, 'Cà rốt', 15000, 1, 15000),
(12, 15, 'Bắp cải trắng', 20000, 3, 60000),
(13, 15, 'Bắp cải trắng', 20000, 4, 80000),
(14, 24, 'Chôm chôm thái', 40000, 3, 120000),
(19, 22, 'Thanh long', 50000, 1, 50000),
(19, 6, 'Sầu riêng', 50000, 2, 100000),
(22, 51, 'cà chua', 80000, 1, 80000),
(23, 25, 'Quả nhãn', 35000, 1, 35000),
(23, 34, 'Vải thiều loại to', 40000, 1, 40000),
(24, 26, 'Cà rốt', 15000, 1, 15000),
(24, 17, 'Cây xoài tứ quý', 150000, 3, 450000),
(24, 21, 'Hạt giống khổ qua', 40000, 1, 40000),
(24, 19, 'Cây sầu riêng', 80000, 2, 160000),
(28, 8, 'Nho xanh', 70000, 2, 140000),
(28, 16, 'Hành tây', 15000, 1, 15000),
(29, 96, 'Quả mít', 55555, 1, 55555),
(29, 51, 'cà chua', 80000, 2, 160000),
(29, 27, 'Khoai lang tím', 30000, 2, 60000),
(31, 96, 'Quả mít', 55555, 2, 111110),
(31, 51, 'cà chua', 80000, 1, 80000),
(31, 26, 'Cà rốt', 15000, 12, 180000),
(32, 96, 'Quả mít', 55555, 1, 55555),
(32, 34, 'Vải thiều loại to', 40000, 1, 40000),
(33, 7, 'Ổi xanh', 30000, 2, 60000),
(33, 14, 'Nấm đùi gà', 60000, 3, 180000),
(35, 97, 'măng cut', 20001, 1, 20001),
(36, 51, 'cà chua', 80000, 1, 80000),
(38, 96, 'Quả mít', 55555, 1, 55555);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `idbl` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `NguoiDD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DanhGia` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`idbl`, `MaSP`, `NguoiDD`, `DanhGia`, `NgayDang`) VALUES
(55, 96, 'Việt Trung', 'sản phẩm chất lượng', '2021-12-07 10:29:32'),
(56, 8, 'Việt Trung', 'giá cả hợp lý', '2021-12-07 10:31:32'),
(96, 34, 'Việt Trung', 'trái cây tươi , chất lượng', '2021-12-07 20:27:57'),
(100, 96, 'Việt Trung', 'chất lượng\n', '2021-12-18 18:24:00'),
(103, 97, 'Việt Trung', 'giao hàng nhanh', '2022-01-15 16:51:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` double NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NguoiNhan`, `Email`, `SDT`, `DiaChi`, `TongTien`, `TrangThai`, `NgayLap`) VALUES
(8, 11, 'Ngô Đôn', '111111123@fmail.com', '0987654321', 'gia lai', 120000, 1, '2021-11-27 17:14:28'),
(12, 1, 'Admin Nè', 'theforest2912@gmail.com', '123455322', 'crvv', 60000, 1, '2021-11-27 17:12:42'),
(13, 10, 'Tô Trung', 'trungto2912@gmail.com', '1234323', 'haha', 80000, 1, '2021-12-01 23:57:07'),
(14, 10, 'Tô Trung', 'trungto2912@gmail.com', '1234323', '1222', 120000, 1, '2021-11-26 09:55:32'),
(19, 10, 'Tô Trung', 'viettrung291201@gmail.com', '1234323', 'gia lai', 150000, 1, '2021-11-26 22:47:34'),
(22, 11, 'Ngô Đôn', '111111123@fmail.com', '0987654321', 'qqq', 80000, 1, '2021-11-27 16:36:06'),
(23, 1, 'Admin Nè', 'theforest2912@gmail.com', '123455322', 'gia lai', 75000, 1, '2021-12-03 15:16:42'),
(24, 1, 'Admin Nè', 'theforest2912@gmail.com', '123455322', 'gia lai', 665000, 1, '2021-12-05 20:45:10'),
(28, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'quảng trị', 155000, 1, '2021-12-06 10:09:16'),
(29, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'gia lai', 275555, 1, '2021-12-06 19:43:22'),
(31, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'gia lai', 371110, 1, '2021-12-07 15:18:25'),
(32, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'đà nẵng', 95555, 1, '2021-12-07 20:26:25'),
(33, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'đà nẵng', 240000, 1, '2021-12-08 09:19:28'),
(35, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'gia lai', 20001, 1, '2022-01-15 16:47:46'),
(36, 61, 'Việt Trung', 'viettrung291201@gmail.com', '0329060915', 'đà nẵng', 80000, 1, '2022-01-15 16:50:45'),
(38, 10, 'Tô Trung', 'viettrung291201@gmail.com', '1234323', 'đà nẵng', 55555, 0, '2023-01-05 00:37:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ChiTietQuyen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Admin', 'Quản trị viên'),
(2, 'Personnel', 'Nhân viên'),
(3, 'Customer', 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Price` double NOT NULL,
  `Image` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Des` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Note` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cateID` int(11) NOT NULL,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `Name`, `Price`, `Image`, `Des`, `Note`, `cateID`, `Time`) VALUES
(3, 'Táo Queen New Zealand', 120000, 'tao.PNG', 'Giá trị dinh dưỡng: thành phần của táo nữ hoàng chứa nhiều vitamin và khoáng chất như canxi, kali, sắt, phốt pho, Vitamin B1, B2, C….giúp tăng cường hệ miễn dịch, tốt cho hệ thần kinh. Bên cạnh đó táo Queen có chứa nhiều chất xơ nên rất có lợi cho đường tiêu hóa, là một loái trái cây phù hợp cho trẻ nhỏ và người lớn tuổi.Đặc biệt trong thành phần của vỏ táo có một loại axit là Axit Ursolic giúp làm giảm nguy cơ béo phì, Axit Ursolic có hiệu quả trong việc thúc đẩy cơ thể đốt cháy calo, tăng việc hình thành cơ và giảm chất béo lâu năm trong cơ thể.', 'Còn hàng', 1, NULL),
(4, 'Quả Kiwi xanh', 150000, 'kiwi.PNG', 'Quả kiwi là một loại trái cây phổ biến được đặt theo tên của loài chim biểu tượng quốc gia của New Zealand.Vì có nguồn gốc từ Trung Quốc nên quả này ban đầu được gọi là quả lí gai Trung Quốc.Quả kiwi có giá trị dinh dưỡng cao, và là nguồn chất xơ tốt, đồng thời chứa chất chống oxy hoá, một số vitamin và khoáng chất.Nghiên cứu cho thấy ăn quả kiwi có nhiều lợi ích sức khỏe, bao gồm giảm nguy cơ mắc bệnh tim, giảm táo bón và cải thiện tiêu hóa protein.', 'Còn hàng', 1, NULL),
(5, 'Dừa xanh nguyên trái', 20000, 'dua.gif', 'Nước dừa có vị ngọt thanh mát tự nhiên. Nó chứa carbohydrate dễ tiêu hóa dưới dạng đường và chất điện giải. Không nên nhầm lẫn với nước cốt dừa hoặc dầu dừa có nhiều chất béo, nước dừa là một chất lỏng trong suốt ở trong trái cây được khai thác từ những trái dừa tươi xanh, non.', 'Còn hàng', 1, NULL),
(6, 'Sầu riêng', 50000, 'saurien.jpg', 'Sầu riêng là một loại trái cây lớn, có mùi khá nồng và nặng, nhưng cực kỳ giàu các chất dinh dưỡng, chẳng hạn như vitamin C, vitamin B, khoáng chất, chất béo lành mạnh, chất xơ và một số hợp chất thực vật có lợi khác. Sầu riêng thường có mặt tại nhiều quốc gia trong khu vực Đông Nam Á, điển hình là Việt Nam. Ăn sầu riêng có thể mang lại một số lợi ích nhất định cho sức khỏe.', 'Còn hàng', 1, NULL),
(7, 'Ổi xanh', 30000, 'oi.jpg', 'Trái ổi (tên khoa học Psidium guajava) là một loại trái cây thuộc họ sim, có nguồn gốc từ các nước Châu Mỹ. Quả ổi có hình tròn, hình quả lê hoặc hình trứng, kích thước dài khoảng 3 – 10cm tùy loại.\r\n\r\nPhần vỏ của quả ổi khi non có màu xanh đậm, lúc chín chuyển qua màu xanh nhạt và vàng. Thịt vỏ ổi mỏng, có màu trắng hoặc hồng. Phần ruột quả màu trắng, đỏ hoặc vàng. Ổi có nhiều hạt, màu vàng nâu, cứng. Tuy nhiên, hiện nay người ta đã ghép mô và trồng được loại ổi không hạt.', 'Còn hàng', 1, NULL),
(8, 'Nho xanh', 70000, 'nho.jpg', 'Nho không chỉ là loại trái cây có hương vị tuyệt vời mà còn mang lại rất nhiều lợi ích sức khỏe. Dựa vào màu sắc, chúng ta có thể chia quả nho thành 3 loại chính: nho đỏ, nho xanh và nho đen (xanh lam).\r\n\r\nMỗi trái nho đều chứa lớp thịt mọng nước bên trong lớp vỏ mịn màng. Một số giống nho có hạt ăn được, trong khi một số khác lại không có hạt. Màu sắc của nho do các sắc tố polyphenolic quyết định. Quả đỏ hoặc tím có nhiều chất anthocyanin trong khi quả màu xanh lá cây lại là do chứa nhiều tanin, đặc biệt là catechin. Điều thú vị là, những hợp chất chống oxy hóa của trái nho chủ yếu tập trung ở phần da và hạt.', 'Còn hàng', 1, NULL),
(9, 'Rau dền', 20000, 'rauden.jpg', 'Thân và lá rau dền có vị ngọt, chứa sắt, vitamin B2, vitamin C, axít nicotic và canxi (dền gai có hàm lượng canxi tối đa đến 0,2%) [2]. Hạt ngoài các thành phần vitamin A, vitamin C còn giàu tinh bột, đạm thực vật (các loài dền hạt trồng làm lương thực có hàm lượng đạm thực vật từ 12 đến 16%) và lysin.', 'Còn hàng', 2, NULL),
(10, 'Cải bẹ', 25000, 'bapcai.jpg', 'Cải bẹ xanh hay còn gọi là cải xanh, cải canh, cải cay với tên khoa học là Brassica juncea. Cải bẹ xanh thuộc họ Cải (Brassicaceae), chi này bao gồm cải xoăn, cải xanh, bông cải xanh và súp lơ trắng. Rau cải bẹ có màu xanh và vị đắng nên trong tiếng Anh nó còn được biết đến với tên mù tạt xanh. Tuy nhiên loại rau này lại rất giàu dinh dưỡng có tác dụng hỗ trợ điều trị một số bệnh lý.', 'Còn hàng', 2, NULL),
(11, 'Rau má', 15000, 'rauma.jpg', 'Rau má, Tích tuyết thảo, còn có tên là Liên tiền thảo (pennywort) vì lá tròn như những đồng tiền kim loại, tên khoa học là Centella asiatica (L.) thuộc họ Hoa tán Umbelliferae. Đây là loài rau dại ăn được thường mọc ở những nơi ẩm ướt như thung lủng, bờ mương thuộc những vùng nhiệt đới như Việt Nam, Lào, Cambuchia, Indonesia, Malasia, Madagascar . . .\r\n\r\nTuỳ theo khu vực trồng hoặc mùa thu hoạch thành phần có thay đổi, thường rau má có chứa các chất sau: beta caroten, sterols, saponins, alkaloids, flavonols, saccharids, calcium, iron, magnesium, manganese, phosphorus, potassium, zinc, các loại vitamins B1, B2, B3, C và K…', 'Còn hàng', 2, NULL),
(12, 'Súp lơ xanh', 40000, 'saplo.jpg', 'Bông cải xanh là một loại rau rất giàu dinh dưỡng có đầy đủ vitamin, khoáng chất, chất xơ và chất chống oxy hóa. Trong thành phần dinh dưỡng của bông cải xanh có 90% là nước, 7% carbohydrates, 3% protein và hầu như là không có chất béo.', 'Còn hàng', 2, NULL),
(13, 'Rau muống', 20000, 'raumuong.jpg', 'Rau muống là loại rau được dụng trong bữa ăn hàng ngày. Trong 100g rau muống chứa 3g chất xơ, 3g protein cùng nhiều khoáng chất canxi, phốt pho, sắt, kẽm, các vitamin C, B1, B2. Ngoài việc bổ sung dinh dưỡng hợp lý tốt cho sức khỏe là điều vô cùng quan trọng, giúp tăng sức đề kháng cho cơ thể.', 'Còn hàng', 2, NULL),
(14, 'Nấm đùi gà', 60000, 'nam.jpg', 'Nấm đùi gà rất giàu carb, chất xơ, chitin và polysaccharide. Ngoài ra, loại nấm này chứa nhiều axit amin, vitamin và khoáng chất như: Axit amin: Các loại axit amin trong nấm đùi gà có thể kể đến là axit aspartic, axit glutamic, arginine và ergothioneine.', 'Còn hàng', 2, NULL),
(15, 'Bắp cải trắng', 20000, 'bapcait.jpg', 'Bắp cải là một loại rau đa năng có lá giòn và mùi hăng đặc trưng. Tùy thuộc vào từng loại bắp cải, màu sắc của lá bắp cải có thể thay đổi từ đỏ, tím hoặc xanh lá cây. Trong số đó, hai loại bắp cải phổ biến nhất là bắp cải xanh và bắp cải đỏ. Trong khi bắp cải xanh kết hợp với hương vị thịt vô cùng tuyệt vời, bắp cải đỏ lại là lựa chọn hàng đầu cho món salad.', 'Còn hàng', 2, NULL),
(16, 'Hành tây', 15000, 'hanhtay.jpg', 'Hành tây là loại củ có hình dạng giống bóng đèn tròn, còn được gọi là hành củ hay củ hành. Hành tây mọc dưới lòng đất, được trồng phổ biến trên toàn thế giới và có quan hệ gần với hẹ, tỏi và hành lá. Đây là nguyên liệu chủ yếu trong nhiều món ăn, được chế biến rất đa dạng, từ nướng, luộc, chiên, rang, xào, lăn bột hoặc thậm chí là ăn sống. Mặc dù, có nhiều kích thước, hình dạng và màu sắc khác nhau nhưng loại hành tây phổ biến nhất thường có màu trắng. Tùy thuộc vào giống và mùa, hương vị của hành tây dao động từ dịu nhẹ và hơi ngọt, đến rất cay và nồng.', 'Còn hàng', 2, NULL),
(17, 'Cây xoài tứ quý', 150000, 'cayxoai.jpg', 'Xoài là giống cây ăn trái phổ biến ở các nước nhiệt đới trong đó có Việt Nam. Do hợp với điều kiện thổ nhưỡng của nước ta mà xoài sinh trưởng và phát triển rất mạnh mẽ với nhiều giống khác nhau trải dài từ Bắc tới Nam.\r\n\r\nMột trong số giống xoài được trồng nhiều hiện nay thì phải kể đến xoài tứ quý. Giống xoài này không những có nhiều ưu điểm về ngoại hình mà còn cho năng suất quả cực cao cùng thời gian thu hoạch ngắn nên được nhiều nhà vườn ưa chuộng trồng.', 'Còn hàng', 3, NULL),
(18, 'Cây bơ 034', 120000, 'bo034.jpg', 'Bơ 034 cây giống ăn trái thích nghi với những vùng trồng có khí hậu nhiệt đới như Lâm Đồng, Bảo Lộc và các tỉnh Tây Nguyên. Cây có sức sinh trưởng khỏe mạnh và cho trái sớm, năng suất cao ổn định hàng năm.\r\nCó hoa thuộc nhóm B, hoa đực tung phấn và 9h sáng và hoa cái nhận phấn vào lúc 3h chiều.\r\nTrọng trái từ 300-800g quả có hình dáng thon dài, hạt nhỏ, chiều dài trái từ 20-35. Sống trong điều kiện khí hậu tốt, cây được chăm bón đầy đủ kích thước có thể dài đến nửa mét.\r\nNăng suất trung bình từ 170-200 kg/ cây, giá thành bán ra cao nên lợi nhuận lớn cho hộ trồng.', 'Còn hàng', 3, NULL),
(19, 'Cây sầu riêng', 80000, 'caysaurieng.jpg', 'Sầu riêng Ri6 là một giống sầu riêng được trồng nhiều ở khu vực Bến Tre, Vĩnh Long. Cây giống này cho năng suất và chất lượng cao. Mỗi cây phát triển tốt cho năng suất đạt khoảng 150 quả/cây/năm. Trọng lượng trung bình của mỗi quả từ 3 – 3,5kg.\r\n\r\nSầu riêng Ri6 có cơm màu vàng óng, khi ăn có vị béo ngậy nhưng không chán. Đây là loại sầu riêng không hạt hoặc hạt lép. Vì vậy bạn sẽ cảm nhận thấy phần cơm của nó nhiều hơn hẳn so với bình thường.', 'Còn hàng', 3, NULL),
(20, 'Hạt dưa leo', 30000, 'hatdua.jpg', 'Hạt giống dưa leo (dưa chuột) là giống rau ăn quả thuộc họ nhà bầu, bí, có nguồn gốc từ các nước Nam Á và hiện nay được nhân giống và trồng rộng khắp nhiều nước và khu vực trên thế giới. Giống dưa chuột là giống cây trồng ăn quả có giá trị kinh tế cao, nhu cầu sử dụng dưa chuột rất cao trong đời sống, từ việc chế biến các món ăn, hay sử dụng trong việc làm đẹp, nó còn có rất nhiều tác dụng tốt đối với sức khỏe con người.', 'Còn hàng', 4, NULL),
(21, 'Hạt giống khổ qua', 40000, 'Kho-qua.png', 'Hạt Giống Khổ Qua rất phù hợp với khí hậu nhiệt đới nước ta nên có thể trồng quanh năm và thích hợp nhất là vào mùa mưa\r\n\r\nĐất trồng: Cây thích hợp với các loại đất như đất thịt pha cát, đất mùn, tơi xốp.Có độ PH từ 5,6 – 6\r\n\r\nTrước khi gieo trồng thì phải chọn địa điểm trồng phù hợp. Làm đất cho kỹ càng, cày bừa, nhặt sạch cỏ , rải thêm vôi nếu độ PH thấp, lại khử được đất. Lên luống cao khoảng 25-30 cm, rộng 1-1,2m để dễ dàng bón phân tưới nước , dễ thoát nước chống úng\r\nGieo trồng: Trước khi gieo hạt phải được ngâm qua nước ấm từ 8-10h , ủ hạt qua qua đêm để hạt nứt ranh nhanh chóng nảy mầm hơn', 'Còn hàng', 4, NULL),
(22, 'Thanh long', 50000, 'thanhlong.jpg', 'Thanh long là loại trái cây có chứa nhiều chất chống oxy hóa, chúng giúp ngăn ngừa tổn thương tế bào và viêm nhiễm từ các bệnh mãn tính.\r\n\r\nCụ thể, trong ruột thanh long có 3 nhóm chất chống oxy hóa chính là Vitanmin C giúp giảm nguy cơ mắc các bệnh ung thư, Betalain có tác dụng giúp giảm Cholesterols và ngăn chặn tế bào ung thư. Carotenoids giúp giảm nguy cơ mắc các bệnh về tim mạch và ung thư.', 'Còn hàng', 1, NULL),
(23, 'Quả xoài', 60000, 'qua_xoai_2.png', 'Trong 100g xoài có chứa thành phần dinh dưỡng như: Calo (kcal) 59; Lipid 0,4 g; Natri 1 mg; Kali 168 mg; Cacbohydrat 15 g; Chất xơ 1,6 g; Đường 14 g; Protein 0,8 g; Vitamin A 1.082 IU; Vitamin C 36,4 mg; Canxi 11 mg; Sắt 0,2 mg; Vitamin B6 0,1 mg; Magie 10 mg.', 'Còn hàng', 1, NULL),
(24, 'Chôm chôm thái', 40000, 'chomchom.jpg', 'Chôm chôm có nguồn gốc từ khu vực Đông Nam Á, đây là loại trái cây nhiệt đới quen thuộc đối với người Việt. Không chỉ có vị chua ngọt thơm ngon, mà chôm chôm còn được xem là trái cây giàu chất xơ, vitamin C và những hợp chất thực vật có lợi khác.\r\n\r\nTrong đó, phần thịt chôm chôm cung cấp khoảng 1.3 - 2gr tổng hàm lượng chất xơ mà trái cây này mang lại cho cơ thể, tương tự như hàm lượng được tìm thấy trong quả cam, lê hoặc quả táo.', 'Còn hàng', 1, NULL),
(25, 'Quả nhãn', 35000, 'nhan.jpg', 'Nhãn rất giàu giá trị dinh dưỡng như năng lượng cao, giàu protein, đường thiên nhiên, các loại vitamin và khoáng chất như: vitamin C, B1, PP, kali, photpho, magie, sắt, axit hữu cơ, chất xơ, mang lại nhiều tác dụng tốt cho sức khỏe.', 'Còn hàng', 1, NULL),
(26, 'Cà rốt', 15000, 'carot.jpg', 'Cà rốt được trồng đầu tiên ở Afghanistan vào khoảng năm 900 sau Công nguyên. Nhiều người biết đến cà rốt với màu cam rực rỡ đặc trưng, nhưng thực tế thì loại củ này cũng có các màu sắc khác, chẳng hạn như tím hoặc vàng, đỏ và trắng.\r\n\r\nLoại củ phổ biến và đa năng này có thể mang hương vị hơi khác nhau tùy thuộc vào màu sắc, kích thước và nơi trồng. Đường trong cà rốt tạo ra vị ngọt nhẹ, nhưng đôi khi cũng có thể mang mùi đất hoặc hơi đắng.', 'Còn hàng', 2, NULL),
(27, 'Khoai lang tím', 30000, 'khoai.png', 'Khoai lang tím có tên khoa học là Solanum andigenum, thuộc loài thân thảo dạng dây leo sống lâu năm có nguồn gốc từ Nam Mỹ.\r\n\r\nKhoai lang tím có các củ hình thuôn dài, lớp vỏ có thể mang màu tím, vàng, đen hoặc trắng bởi chúng có đến hàng trăm loại khác nhau. Lá của khoai lang tím mọc so le và thường có dạng hình trái tim. Hoa của chúng có màu tím trắng rất đẹp.', 'Còn hàng', 2, NULL),
(34, 'Vải thiều loại to', 40000, 'vai.jpg', 'Quả vải được cấu thành từ nước và carbohydrate. Phần lớn năng lượng từ trong quả vải có nguồn gốc từ đường, chúng cũng giúp quả vải có vị ngọt. Tuy nhiên vải lại chứa tương đối ít chất xơ.\r\n\r\nQuả vải lại chứa một lượng vitamin và khoáng chất lớn, nhất là vitamin C. Một quả vải cung cấp khoảng 8% vitamin C và tương đối nhiều đồng, kali.\r\n\r\nGiống như các loại trái cây khác, vải cũng là nguồn chứa nhiều chất chống oxy hóa thực vật. Thực tế, vải còn có hàm lượng cao chất chống oxy hóa polyphenol so với một số loại trái cây thông thường khác.\r\n\r\nTrong vải còn chứa chất Epicatechin là một chất chống oxy hóa có thể cải thiện sức khỏe tim mạch, giảm nguy cơ ung thư và bệnh tiểu đường.', 'còn hàng', 1, NULL),
(51, 'cà chua', 80000, 'cachua.jpg', '<p>chất lượng</p>', 'còn hàng', 1, '2021-12-04 23:41:15'),
(96, 'Quả mít', 55555, 'download.jpg', '<p>chất lượng tốt</p>', 'còn hàng', 1, '2021-12-06 10:12:56'),
(97, 'măng cut', 20001, 'mangcut.jpg', '<p>chất lương</p>', 'còn hàng', 1, '2021-12-17 22:35:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Rb_MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `RB_MaHD` (`MaHD`),
  ADD KEY `RB_MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idbl`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RB_cateID` (`cateID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `idbl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `Rb_MaQuyen` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `RB_MaHD` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RB_MaSP` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `RB_cateID` FOREIGN KEY (`cateID`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
