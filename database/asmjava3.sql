

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asmjava3`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `MaSV` varchar(150) NOT NULL,
  `HoTenSV` varchar(150) NOT NULL,
  `TiengAnh` double NOT NULL,
  `TinHoc` double NOT NULL,
  `GDTC` double NOT NULL,
  `DiemTB` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `MaSV`, `HoTenSV`, `TiengAnh`, `TinHoc`, `GDTC`, `DiemTB`) VALUES
(4, '123', 'Châu Thái Phong', 9, 9, 10, 9.333333333333334),
(5, '456', 'Nguyễn Bá An', 10, 10, 10, 10),
(6, '789', 'Nguyễn Văn A', 8.5, 10, 10, 9.5);

-- --------------------------------------------------------

--
-- Table structure for table `loginfrom`
--

CREATE TABLE `loginfrom` (
  `id` int(11) DEFAULT NULL,
  `usename` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginfrom`
--

INSERT INTO `loginfrom` (`id`, `usename`, `password`, `role`) VALUES
(1, 'adminqlnv', 'admin', 'qlnv'),
(2, 'adminqld', 'admin', 'qld');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `MaSV` varchar(150) NOT NULL,
  `HoTen` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `SDT` int(11) NOT NULL,
  `GioTinh` varchar(150) NOT NULL,
  `DiaChi` varchar(250) NOT NULL,
  `HinhAnh` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(2, '123', 'Châu Thái Phong', 'phong123@gmail.com', 967329308, 'Nam', 'Cần Thơ', ' 123' );
INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(5, '456', 'Nguyễn Bá An', 'an456@gmail.com', 967329308, 'Nam', 'Bến Tre', '456' );
INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(6, '678', 'Lâm Văn A', 'a678@gmail.com', 65558844, 'Nu', 'Bạc Liêu', '789' );
INSERT INTO `sinhvien` (`id`, `MaSV`, `HoTen`, `Email`, `SDT`, `GioTinh`, `DiaChi`, `HinhAnh`) VALUES
(7, '789', 'Trần Văn C', 'c789il.com', 7755445, 'Nu', 'An Giang', ' 110');



ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

DELIMITER $$
-- Them SinhVien
CREATE PROCEDURE f_sinhvien ( IN id int (11) ,IN MaSV varchar(150), IN HoTen varchar(150) ,
IN Email varchar(150), IN SDT int (11) , IN GioiTinh varchar(150), IN DiaChi varchar(250))
BEGIN
INSERT INTO sinhvien VALUES (id, MaSV, HoTen, Email, SDT, GioiTinh, DiaChi);
END
DELIMITER ;
-- UpDate SinhVien
DELIMITER $$
Create PROCEDURE SP_update( IN SP_id int (11), IN SP_MaSV varchar (150), IN SP_HoTen varchar(150),
IN SP_Email varchar (150), IN SP_SDT (11), IN SP_GioiTinh varchar (150), IN SP_DiaChi varchar (250))
BEGIN
UPDATE sinhvien SET MaSV = SP_MaSV, HoTen = SP_HoTen, Email = SP_Email, GioiTinh = SP_GioiTinh, DiaChi = SP_DiaChi
WHERE id = SP_id;
END
DELIMITER ;




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
