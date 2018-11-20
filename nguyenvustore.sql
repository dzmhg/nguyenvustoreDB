-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 08:10 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nguyenvustore`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MABL` int(11) NOT NULL,
  `TIEUDE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitietbinhluan`
--

CREATE TABLE `chitietbinhluan` (
  `MANV` int(11) NOT NULL,
  `MASP` int(11) NOT NULL,
  `MABL` int(11) NOT NULL,
  `NOIDUNG` varchar(255) DEFAULT NULL,
  `NGAYBL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MASP` int(11) NOT NULL,
  `MAHD` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DONGIA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `MASP` int(11) NOT NULL,
  `MAKM` int(11) NOT NULL,
  `PHANTRAMKM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MAPN` int(11) NOT NULL,
  `MASP` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DONGIA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MASP` int(11) NOT NULL,
  `TENCHITIET` int(11) DEFAULT NULL,
  `GIATRI` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chitietthuonghieu`
--

CREATE TABLE `chitietthuonghieu` (
  `MATHUONGHIEU` int(11) NOT NULL,
  `MALOAISP` int(11) NOT NULL,
  `HINHTHUONGHIEU` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `MASP` int(11) NOT NULL,
  `MADG` varchar(200) NOT NULL,
  `TENTHIETBI` varchar(200) DEFAULT NULL,
  `TIEUDE` varchar(200) DEFAULT NULL,
  `NOIDUNG` text,
  `NGAYDANHGIA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` int(11) NOT NULL,
  `NGAYMUA` date DEFAULT NULL,
  `NGAYGIAO` date DEFAULT NULL,
  `TRANGTHAI` varchar(20) DEFAULT NULL,
  `TENNGUOINHAN` varchar(50) DEFAULT NULL,
  `SODT` varchar(11) DEFAULT NULL,
  `DIACHI` varchar(255) DEFAULT NULL,
  `CHUYENKHOAN` varchar(25) DEFAULT NULL,
  `MACHUYENKHOAN` varchar(25) DEFAULT NULL,
  `TONGTIEN` float DEFAULT NULL,
  `MANV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MAKM` int(11) NOT NULL,
  `TENKM` varchar(200) DEFAULT NULL,
  `NGAYBATDAU` varchar(20) DEFAULT NULL,
  `NGAYKETTHUC` varchar(20) DEFAULT NULL,
  `HINHKHUYENMAI` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MALOAISP` int(11) NOT NULL,
  `TENLOAISP` varchar(100) DEFAULT NULL,
  `MALOAI_CHA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MALOAISP`, `TENLOAISP`, `MALOAI_CHA`) VALUES
(2, 'Gaming Gears', 0),
(3, 'Bàn Phím', 2),
(4, 'Chuột', 2),
(5, 'Tai Nghe', 2),
(6, 'Bàn Phím Cơ', 3),
(7, 'Bàn Phím Giả Cơ', 3),
(8, 'Linh Kiện PC', 0),
(9, 'Main-Bo Mạch Chủ', 8),
(10, 'Monitor-Màn Hình', 8),
(11, 'CPU-Vi Xử Lý', 8),
(12, 'RAM-Bộ Nhớ Trong', 8),
(13, 'VGA-Card Màn Hình', 8),
(14, 'PSU-Nguồn', 8),
(15, 'SSD', 8),
(16, 'HDD', 8),
(17, 'Bộ Tản Nhiệt', 8),
(18, 'Tản Nhiệt Khí', 17),
(19, 'Tản Nhiệt Nước', 17),
(20, 'Case', 8),
(21, 'Loa Máy Tính', 0),
(22, 'Phụ Kiện', 0),
(23, 'Lót Chuột', 22),
(24, 'Giá Treo Tai Nghe', 22),
(25, 'Dây Cáp', 22),
(26, 'Phụ Kiện Khác', 22),
(27, 'Ghế Gaming', 0),
(28, 'Ghế Gaming-AkRacing', 26),
(29, 'Ghế Gaming-E-Blue', 26),
(30, 'Ghế Gaming-Playchair', 26),
(31, 'Ghế Gaming-DxRacer', 26),
(33, 'test', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loaiuser`
--

CREATE TABLE `loaiuser` (
  `MALOAINV` int(11) NOT NULL,
  `TENLOAINV` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaiuser`
--

INSERT INTO `loaiuser` (`MALOAINV`, `TENLOAINV`) VALUES
(1, NULL),
(2, 'Quản Trị');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MANCC` int(11) NOT NULL,
  `TENNCC` varchar(200) DEFAULT NULL,
  `DIACHI` mediumtext,
  `SDT` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(150) DEFAULT NULL,
  `MASOTHUE` varchar(100) DEFAULT NULL,
  `SOTK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MAPN` int(11) NOT NULL,
  `MANCC` int(11) NOT NULL,
  `MANV` int(11) NOT NULL,
  `NGAYLAP` date DEFAULT NULL,
  `TILETHUE` float DEFAULT NULL,
  `TONGTIEN` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` int(11) NOT NULL,
  `MALOAISP` int(11) NOT NULL,
  `MATHUONGHIEU` int(11) NOT NULL,
  `TENSP` varchar(200) DEFAULT NULL,
  `GIA` float DEFAULT NULL,
  `ANHLON` mediumtext,
  `ANHNHO` mediumtext,
  `THONGTIN` mediumtext,
  `SOLUONG` int(11) DEFAULT NULL,
  `LUOTMUA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `MATHUONGHIEU` int(11) NOT NULL,
  `TENTHUONGHIEU` varchar(100) DEFAULT NULL,
  `LUOTMUA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `MANV` int(11) NOT NULL,
  `MALOAINV` int(11) NOT NULL,
  `TENNV` varchar(100) NOT NULL,
  `TENDANGNHAP` varchar(100) NOT NULL,
  `MATKHAU` text NOT NULL,
  `DIACHI` text NOT NULL,
  `NGAYSINH` varchar(20) NOT NULL,
  `SODT` varchar(11) NOT NULL,
  `GIOITINH` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`MANV`, `MALOAINV`, `TENNV`, `TENDANGNHAP`, `MATKHAU`, `DIACHI`, `NGAYSINH`, `SODT`, `GIOITINH`) VALUES
(1, 2, 'Trần Thị Tố Quyên', 'toquyen', '123456', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MABL`),
  ADD UNIQUE KEY `BINHLUAN_PK` (`MABL`);

--
-- Indexes for table `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  ADD PRIMARY KEY (`MANV`,`MASP`,`MABL`),
  ADD KEY `CHITIETBINHLUAN_PK` (`MANV`,`MASP`,`MABL`),
  ADD KEY `CO_USER_CHITIETBL_FK` (`MANV`),
  ADD KEY `CO_SANPHAM_CHITIETBL_FK` (`MASP`),
  ADD KEY `CO_BINHLUAN_CHITIETBL_FK` (`MABL`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MASP`,`MAHD`),
  ADD KEY `CHITIETHOADON_PK` (`MASP`,`MAHD`),
  ADD KEY `CO_SANPHAM_CHITIETHD_FK` (`MASP`),
  ADD KEY `CO_HOADON_CHITIETHD_FK` (`MAHD`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD PRIMARY KEY (`MASP`,`MAKM`),
  ADD KEY `CHITIETKHUYENMAI_PK` (`MASP`,`MAKM`),
  ADD KEY `CO_SANPHAM_CHITIETKKM_FK` (`MASP`),
  ADD KEY `CO_KHUYENMAI_SANPHAM_FK` (`MAKM`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`MAPN`,`MASP`),
  ADD KEY `CHITIETPHIEUNHAP_PK` (`MAPN`,`MASP`),
  ADD KEY `CO_PHIEUNHAP_CHITIETPHIEUNHAP_FK` (`MAPN`),
  ADD KEY `CO_SANPHAM_CHITIETPHIEUNHAP_FK` (`MASP`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MASP`),
  ADD KEY `CHITIETSANPHAM_PK` (`MASP`);

--
-- Indexes for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
  ADD PRIMARY KEY (`MATHUONGHIEU`,`MALOAISP`),
  ADD KEY `CHITIETTHUONGHIEU_PK` (`MATHUONGHIEU`,`MALOAISP`),
  ADD KEY `CO_THUONGHIEU_CHITIET_FK` (`MATHUONGHIEU`),
  ADD KEY `CO_LOAISANPHAM_CHITIETTH_FK` (`MALOAISP`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MASP`,`MADG`),
  ADD UNIQUE KEY `DANHGIA_PK` (`MASP`,`MADG`),
  ADD KEY `CO_SANPHAM_DANGIA_FK` (`MASP`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`),
  ADD UNIQUE KEY `HOADON_PK` (`MAHD`),
  ADD KEY `FK_HOADON_CO_MUA_USER` (`MANV`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MAKM`),
  ADD UNIQUE KEY `KHUYENMAI_PK` (`MAKM`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MALOAISP`),
  ADD UNIQUE KEY `LOAISANPHAM_PK` (`MALOAISP`);

--
-- Indexes for table `loaiuser`
--
ALTER TABLE `loaiuser`
  ADD PRIMARY KEY (`MALOAINV`),
  ADD UNIQUE KEY `LOAIUSER_PK` (`MALOAINV`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MANCC`),
  ADD UNIQUE KEY `NHACUNGCAP_PK` (`MANCC`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MAPN`),
  ADD UNIQUE KEY `PHIEUNHAP_PK` (`MAPN`),
  ADD KEY `CO_NCC_PHIEUNHAP_FK` (`MANCC`),
  ADD KEY `LAPPHIEU_FK` (`MANV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`),
  ADD UNIQUE KEY `SANPHAM_PK` (`MASP`),
  ADD KEY `CO_THUONGHIEU_SANPHAM_FK` (`MATHUONGHIEU`),
  ADD KEY `CO_LOAISNAPHAM_SANPHAM_FK` (`MALOAISP`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`MATHUONGHIEU`),
  ADD UNIQUE KEY `THUONGHIEU_PK` (`MATHUONGHIEU`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`MANV`),
  ADD KEY `FK_USER_CO_LOAINH_LOAIUSER` (`MALOAINV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MABL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MAHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MAKM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MALOAISP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `loaiuser`
--
ALTER TABLE `loaiuser`
  MODIFY `MALOAINV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MANCC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MAPN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MASP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `MATHUONGHIEU` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `MANV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  ADD CONSTRAINT `FK_CHITIETB_CO_BINHLU_BINHLUAN` FOREIGN KEY (`MABL`) REFERENCES `binhluan` (`MABL`),
  ADD CONSTRAINT `FK_CHITIETB_CO_SANPHA_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`),
  ADD CONSTRAINT `FK_CHITIETB_CO_USER_C_USER` FOREIGN KEY (`MANV`) REFERENCES `user` (`MANV`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `FK_CHITIETH_CO_HOADON_HOADON` FOREIGN KEY (`MAHD`) REFERENCES `hoadon` (`MAHD`),
  ADD CONSTRAINT `FK_CHITIETH_CO_SANPHA_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `FK_CHITIETK_CO_KHUYEN_KHUYENMA` FOREIGN KEY (`MAKM`) REFERENCES `khuyenmai` (`MAKM`),
  ADD CONSTRAINT `FK_CHITIETK_CO_SANPHA_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_CHITIETP_CO_PHIEUN_PHIEUNHA` FOREIGN KEY (`MAPN`) REFERENCES `phieunhap` (`MAPN`),
  ADD CONSTRAINT `FK_CHITIETP_CO_SANPHA_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `FK_CHITIETS_CO_CHITIE_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
  ADD CONSTRAINT `FK_CHITIETT_CO_LOAISA_LOAISANP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`),
  ADD CONSTRAINT `FK_CHITIETT_CO_THUONG_THUONGHI` FOREIGN KEY (`MATHUONGHIEU`) REFERENCES `thuonghieu` (`MATHUONGHIEU`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `FK_DANHGIA_CO_SANPHA_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_HOADON_CO_MUA_USER` FOREIGN KEY (`MANV`) REFERENCES `user` (`MANV`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_PHIEUNHA_CO_NCC_PH_NHACUNGC` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`),
  ADD CONSTRAINT `FK_PHIEUNHA_LAPPHIEU_USER` FOREIGN KEY (`MANV`) REFERENCES `user` (`MANV`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SANPHAM_CO_LOAISN_LOAISANP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`),
  ADD CONSTRAINT `FK_SANPHAM_CO_THUONG_THUONGHI` FOREIGN KEY (`MATHUONGHIEU`) REFERENCES `thuonghieu` (`MATHUONGHIEU`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_USER_CO_LOAINH_LOAIUSER` FOREIGN KEY (`MALOAINV`) REFERENCES `loaiuser` (`MALOAINV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
