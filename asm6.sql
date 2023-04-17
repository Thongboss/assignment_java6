-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2023 lúc 09:28 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm6`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `photo` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`user_name`, `email`, `full_name`, `password`, `photo`) VALUES
('ALFKI', 'alfki', 'Maria Anders', 'alfki@gmail.com', 'user.png'),
('ANATR', 'anatr@gmail.com', 'Ana Trujillo', 'anatr', 'user.png'),
('ANTON', 'anton@gmail.com', 'Antonio Moreno', 'anton', 'user.png'),
('AROUT', 'arout@gmail.com', 'Thomas Hardy', 'arout', 'user.png'),
('BERGS', 'bergs@gmail.com', 'Christina Berglund', 'bergs', 'user.png'),
('BLAUS', 'blaus@gmail.com', 'Hanna Moos', 'blaus', 'user.png'),
('BLONP', 'blonp@gmail.com', 'Frédérique Citeaux', 'blonp', 'user.png'),
('BOLID', 'bolid@gmail.com', 'Martín Sommer', 'bolid', 'user.png'),
('BONAP', 'bonap@gmail.com', 'Laurence Lebihan', 'bonap', 'user.png'),
('BOTTM', 'bottm@gmail.com', 'Elizabeth Lincoln', 'bottm', 'user.png'),
('BSBEV', 'bsbev@gmail.com', 'Victoria Ashworth', 'bsbev', 'user.png'),
('CACTU', 'cactu@gmail.com', 'Patricio Simpson', 'cactu', 'user.png'),
('CENTC', 'centc@gmail.com', 'Francisco Chang', 'centc', 'user.png'),
('CHOPS', 'chops@gmail.com', 'Yang Wang', 'chops', 'user.png'),
('COMMI', 'commi@gmail.com', 'Pedro Afonso', 'commi', 'user.png'),
('CONSH', 'consh@gmail.com', 'Elizabeth Brown', 'consh', 'user.png'),
('customer', 'teonv@gmail.com', 'Nguyễn Văn Tèo', '123', 'user.png'),
('director', 'pheonc@fpt.edu.vn', 'Nguyễn Chí Phèo', '123', '-1407968806.jpg'),
('DRACD', 'dracd@gmail.com', 'Sven Ottlieb', 'dracd', 'user.png'),
('DUMON', 'dumon@gmail.com', 'Janine Labrune', 'dumon', 'user.png'),
('EASTC', 'eastc@gmail.com', 'Ann Devon', 'eastc', 'user.png'),
('ERNSH', 'ernsh@gmail.com', 'Roland Mendel', 'ernsh', 'user.png'),
('FAMIA', 'famia@gmail.com', 'Aria Cruz', 'famia', 'user.png'),
('FISSA', 'fissa@gmail.com', 'Diego Roel', 'fissa', 'user.png'),
('FOLIG', 'folig@gmail.com', 'Martine Rancé', 'folig', 'user.png'),
('FOLKO', 'folko@gmail.com', 'Maria Larsson', 'folko', 'user.png'),
('FRANK', 'frank@gmail.com', 'Peter Franken', 'frank', 'user.png'),
('FRANR', 'franr@gmail.com', 'Carine Schmitt', 'franr', 'user.png'),
('FRANS', 'frans@gmail.com', 'Paolo Accorti', 'frans', 'user.png'),
('FURIB', 'furib@gmail.com', 'Lino Rodriguez', 'furib', 'user.png'),
('GALED', 'galed@gmail.com', 'Eduardo Saavedra', 'galed', 'user.png'),
('GODOS', 'godos@gmail.com', 'José Pedro Freyre', 'godos', 'user.png'),
('GOURL', 'gourl@gmail.com', 'André Fonseca', 'gourl', 'user.png'),
('GREAL', 'greal@gmail.com', 'Howard Snyder', 'greal', 'user.png'),
('GROSR', 'grosr@gmail.com', 'Manuel Pereira', 'grosr', 'user.png'),
('HANAR', 'hanar@gmail.com', 'Mario Pontes', 'hanar', 'user.png'),
('HILAA', 'hilaa@gmail.com', 'Carlos Hernández', 'hilaa', 'user.png'),
('HUNGC', 'hungc@gmail.com', 'Yoshi Latimer', 'hungc', 'user.png'),
('HUNGO', 'hungo@gmail.com', 'Patricia McKenna', 'hungo', 'user.png'),
('ISLAT', 'islat@gmail.com', 'Helen Bennett', 'islat', 'user.png'),
('KOENE', 'koene@gmail.com', 'Philip Cramer', 'koene', 'user.png'),
('LACOR', 'lacor@gmail.com', 'Daniel Tonini', 'lacor', 'user.png'),
('LAMAI', 'lamai@gmail.com', 'Annette Roulet', 'lamai', 'user.png'),
('LAUGB', 'laugb@gmail.com', 'Yoshi Tannamuri', 'laugb', 'user.png'),
('LAZYK', 'lazyk@gmail.com', 'John Steel', 'lazyk', 'user.png'),
('LEHMS', 'lehms@gmail.com', 'Renate Messner', 'lehms', 'user.png'),
('LETSS', 'letss@gmail.com', 'Jaime Yorres', 'letss', 'user.png'),
('LILAS', 'lilas@gmail.com', 'Carlos González', 'lilas', 'user.png'),
('LINOD', 'linod@gmail.com', 'Felipe Izquierdo', 'linod', 'user.png'),
('LONEP', 'lonep@gmail.com', 'Fran Wilson', 'lonep', 'user.png'),
('MAGAA', 'magaa@gmail.com', 'Giovanni Rovelli', 'magaa', 'user.png'),
('MAISD', 'maisd@gmail.com', 'Catherine Dewey', 'maisd', 'user.png'),
('MEREP', 'merep@gmail.com', 'Jean Fresnière', 'merep', 'user.png'),
('MORGK', 'morgk@gmail.com', 'Alexander Feuer', 'morgk', 'user.png'),
('NORTS', 'norts@gmail.com', 'Simon Crowther', 'norts', 'user.png'),
('OCEAN', 'ocean@gmail.com', 'Yvonne Moncada', 'ocean', 'user.png'),
('OLDWO', 'oldwo@gmail.com', 'Rene Phillips', 'oldwo', 'user.png'),
('OTTIK', 'ottik@gmail.com', 'Henriette Pfalzheim', 'ottik', 'user.png'),
('PARIS', 'paris@gmail.com', 'Marie Bertrand', 'paris', 'user.png'),
('PERIC', 'peric@gmail.com', 'Guillermo Fernández', 'peric', 'user.png'),
('PICCO', 'picco@gmail.com', 'Georg Pipps', 'picco', 'user.png'),
('PRINI', 'prini@gmail.com', 'Isabel de Castro', 'prini', 'user.png'),
('QUEDE', 'quede@gmail.com', 'Bernardo Batista', 'quede', 'user.png'),
('QUEEN', 'queen@gmail.com', 'Lúcia Carvalho', 'queen', 'user.png'),
('QUICK', 'quick@gmail.com', 'Horst Kloss', 'quick', 'user.png'),
('RANCH', 'ranch@gmail.com', 'Sergio Gutiérrez', 'ranch', 'user.png'),
('RATTC', 'rattc@gmail.com', 'Paula Wilson', 'rattc', 'user.png'),
('REGGC', 'reggc@gmail.com', 'Maurizio Moroni', 'reggc', 'user.png'),
('RICAR', 'ricar@gmail.com', 'Janete Limeira', 'ricar', 'user.png'),
('RICSU', 'ricsu@gmail.com', 'Michael Holz', 'ricsu', 'user.png'),
('ROMEY', 'romey@gmail.com', 'Alejandra Camino', 'romey', 'user.png'),
('SANTG', 'santg@gmail.com', 'Jonas Bergulfsen', 'santg', 'user.png'),
('SAVEA', 'savea@gmail.com', 'Jose Pavarotti', 'savea', 'user.png'),
('SEVES', 'seves@gmail.com', 'Hari Kumar', 'seves', 'user.png'),
('SIMOB', 'simob@gmail.com', 'Jytte Petersen', 'simob', 'user.png'),
('SPECD', 'specd@gmail.com', 'Dominique Perrier', 'specd', 'user.png'),
('SPLIR', 'splir@gmail.com', 'Art Braunschweiger', 'splir', 'user.png'),
('staff', 'nopt@gmail.com', 'Phạm Thị Nở', '123', 'user.png'),
('SUPRD', 'suprd@gmail.com', 'Pascale Cartrain', 'suprd', 'user.png'),
('THEBI', 'thebi@gmail.com', 'Liz Nixon', 'thebi', 'user.png'),
('THECR', 'thecr@gmail.com', 'Liu Wong', 'thecr', 'user.png'),
('TOMSP', 'tomsp@gmail.com', 'Karin Josephs', 'tomsp', 'user.png'),
('TORTU', 'tortu@gmail.com', 'Miguel Angel Paolino', 'tortu', 'user.png'),
('TRADH', 'tradh@gmail.com', 'Anabela Domingues', 'tradh', 'user.png'),
('TRAIH', 'traih@gmail.com', 'Helvetius Nagy', 'traih', 'user.png'),
('VAFFE', 'vaffe@gmail.com', 'Palle Ibsen', 'vaffe', 'user.png'),
('VICTE', 'victe@gmail.com', 'Mary Saveley', 'victe', 'user.png'),
('VINET', 'vinet@gmail.com', 'Paul Henriot', 'vinet', 'user.png'),
('WANDK', 'wandk@gmail.com', 'Rita Müller', 'wandk', 'user.png'),
('WARTH', 'warth@gmail.com', 'Pirkko Koskitalo', 'warth', 'user.png'),
('WELLI', 'welli@gmail.com', 'Paula Parente', 'welli', 'user.png'),
('WHITC', 'whitc@gmail.com', 'Karl Jablonski', 'whitc', 'user.png'),
('WILMK', 'wilmk@gmail.com', 'Matti Karttunen', 'wilmk', 'user.png'),
('WOLZA', 'wolza@gmail.com', 'Zbyszek Piestrzeniewicz', 'wolza', 'user.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authorities`
--

CREATE TABLE `authorities` (
  `id` bigint NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `role_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authorities`
--

INSERT INTO `authorities` (`id`, `user_name`, `role_id`) VALUES
(1, 'ALFKI', 1),
(2, 'ANATR', 1),
(3, 'ANTON', 1),
(4, 'AROUT', 1),
(5, 'BERGS', 1),
(6, 'BLAUS', 1),
(7, 'BLONP', 1),
(8, 'BOLID', 1),
(9, 'BONAP', 1),
(10, 'BOTTM', 1),
(11, 'BSBEV', 1),
(12, 'CACTU', 1),
(13, 'CENTC', 1),
(14, 'CHOPS', 1),
(15, 'COMMI', 1),
(16, 'CONSH', 1),
(17, 'DRACD', 1),
(18, 'DUMON', 1),
(19, 'EASTC', 1),
(20, 'ERNSH', 1),
(21, 'FAMIA', 1),
(22, 'FISSA', 1),
(23, 'FOLIG', 1),
(24, 'FOLKO', 1),
(25, 'FRANK', 1),
(26, 'FRANR', 1),
(27, 'FRANS', 1),
(28, 'FURIB', 1),
(29, 'GALED', 1),
(30, 'GODOS', 1),
(31, 'GOURL', 1),
(32, 'GREAL', 1),
(33, 'GROSR', 1),
(34, 'HANAR', 1),
(35, 'HILAA', 1),
(36, 'HUNGC', 1),
(37, 'HUNGO', 1),
(38, 'ISLAT', 1),
(39, 'KOENE', 1),
(40, 'LACOR', 1),
(41, 'LAMAI', 1),
(42, 'LAUGB', 1),
(43, 'LAZYK', 1),
(44, 'LEHMS', 1),
(45, 'LETSS', 1),
(46, 'LILAS', 1),
(47, 'LINOD', 1),
(48, 'LONEP', 1),
(49, 'MAGAA', 1),
(50, 'MAISD', 1),
(51, 'MEREP', 1),
(52, 'MORGK', 1),
(53, 'NORTS', 1),
(54, 'OCEAN', 1),
(55, 'OLDWO', 1),
(56, 'OTTIK', 1),
(57, 'PARIS', 1),
(58, 'PERIC', 1),
(59, 'PICCO', 1),
(60, 'PRINI', 1),
(61, 'QUEDE', 1),
(62, 'QUEEN', 1),
(63, 'QUICK', 1),
(64, 'RANCH', 1),
(65, 'RATTC', 1),
(66, 'REGGC', 1),
(67, 'RICAR', 1),
(68, 'RICSU', 1),
(69, 'ROMEY', 1),
(70, 'SANTG', 1),
(71, 'SAVEA', 1),
(72, 'SEVES', 1),
(73, 'SIMOB', 1),
(74, 'SPECD', 1),
(75, 'SPLIR', 1),
(76, 'SUPRD', 1),
(77, 'customer', 1),
(78, 'THEBI', 1),
(79, 'THECR', 1),
(80, 'TOMSP', 1),
(81, 'TORTU', 1),
(82, 'TRADH', 1),
(83, 'TRAIH', 1),
(84, 'VAFFE', 1),
(85, 'VICTE', 1),
(86, 'VINET', 1),
(87, 'WANDK', 1),
(88, 'WARTH', 1),
(89, 'WELLI', 1),
(90, 'WHITC', 1),
(91, 'WILMK', 1),
(92, 'WOLZA', 1),
(93, 'director', 2),
(94, 'staff', 3),
(95, 'director', 3),
(96, 'staff', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1000, 'Đồng hồ đeo tay'),
(1001, 'Máy tính xách tay'),
(1002, 'Máy ảnh'),
(1003, 'Điện thoại'),
(1004, 'Nước hoa'),
(1005, 'Nữ trang'),
(1006, 'Nón thời trang'),
(1007, 'Túi xách du lịch'),
(5000, 'Đồng hồ treo tường'),
(5001, 'Đồng hồ để bàn'),
(5002, 'kính du lịch'),
(5003, 'Tai Nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `address`, `create_date`, `user_name`) VALUES
(10249, 'Luisenstr. 48', NULL, 'TOMSP'),
(10250, 'Rua do Paço, 67', NULL, 'HANAR'),
(10251, '2, rue du Commerce', NULL, 'VICTE'),
(10252, 'Boulevard Tirou, 255', NULL, 'SUPRD'),
(10253, 'Rua do Paço, 67', NULL, 'HANAR'),
(10254, 'Hauptstr. 31', NULL, 'CHOPS'),
(10255, 'Starenweg 5', NULL, 'RICSU'),
(10256, 'Rua do Mercado, 12', NULL, 'WELLI'),
(10257, 'Carrera 22 con Ave. Carlos Soublette #8-35', NULL, 'HILAA'),
(10258, 'Kirchgasse 6', NULL, 'ERNSH'),
(10259, 'Sierras de Granada 9993', NULL, 'CENTC'),
(10260, 'Mehrheimerstr. 369', NULL, 'OTTIK'),
(10261, 'Rua da Panificadora, 12', NULL, 'QUEDE'),
(10262, '2817 Milton Dr.', NULL, 'RATTC'),
(10263, 'Kirchgasse 6', NULL, 'ERNSH'),
(10264, 'Åkergatan 24', NULL, 'FOLKO'),
(10265, '24, place Kléber', NULL, 'BLONP'),
(10266, 'Torikatu 38', NULL, 'WARTH'),
(10267, 'Berliner Platz 43', NULL, 'FRANK'),
(10268, '5ª Ave. Los Palos Grandes', NULL, 'GROSR'),
(10269, '1029 - 12th Ave. S.', NULL, 'WHITC'),
(10270, 'Torikatu 38', NULL, 'WARTH'),
(10271, 'P.O. Box 555', NULL, 'SPLIR'),
(10272, '2817 Milton Dr.', NULL, 'RATTC'),
(10273, 'Taucherstraße 10', NULL, 'QUICK'),
(10274, '59 rue de l\'Abbaye', NULL, 'VINET'),
(10275, 'Via Ludovico il Moro 22', NULL, 'MAGAA'),
(10276, 'Avda. Azteca 123', NULL, 'TORTU'),
(10277, 'Heerstr. 22', NULL, 'MORGK'),
(10278, 'Berguvsvägen  8', NULL, 'BERGS'),
(10279, 'Magazinweg 7', NULL, 'LEHMS'),
(10280, 'Berguvsvägen  8', NULL, 'BERGS'),
(10281, 'Gran Vía, 1', NULL, 'ROMEY'),
(10282, 'Gran Vía, 1', NULL, 'ROMEY'),
(10283, 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 'LILAS'),
(10284, 'Magazinweg 7', NULL, 'LEHMS'),
(10285, 'Taucherstraße 10', NULL, 'QUICK'),
(10286, 'Taucherstraße 10', NULL, 'QUICK'),
(10287, 'Av. Copacabana, 267', NULL, 'RICAR'),
(10288, 'Strada Provinciale 124', NULL, 'REGGC'),
(10289, 'Fauntleroy Circus', NULL, 'BSBEV'),
(10290, 'Av. dos Lusíadas, 23', NULL, 'COMMI'),
(10291, 'Rua da Panificadora, 12', NULL, 'QUEDE'),
(10292, 'Av. Inês de Castro, 414', NULL, 'TRADH'),
(10293, 'Avda. Azteca 123', NULL, 'TORTU'),
(10294, '2817 Milton Dr.', NULL, 'RATTC'),
(10295, '59 rue de l\'Abbaye', NULL, 'VINET'),
(10296, 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', NULL, 'LILAS'),
(10297, '24, place Kléber', NULL, 'BLONP'),
(10298, '8 Johnstown Road', NULL, 'HUNGO'),
(10299, 'Av. Copacabana, 267', NULL, 'RICAR'),
(10300, 'Via Ludovico il Moro 22', NULL, 'MAGAA'),
(10301, 'Adenauerallee 900', NULL, 'WANDK'),
(10302, 'Boulevard Tirou, 255', NULL, 'SUPRD'),
(10303, 'C/ Romero, 33', NULL, 'GODOS'),
(10304, 'Avda. Azteca 123', NULL, 'TORTU'),
(10305, '2743 Bering St.', NULL, 'OLDWO'),
(10306, 'Gran Vía, 1', NULL, 'ROMEY'),
(10307, '89 Chiaroscuro Rd.', NULL, 'LONEP'),
(10308, 'Avda. de la Constitución 2222', NULL, 'ANATR'),
(10309, '8 Johnstown Road', NULL, 'HUNGO'),
(10310, '89 Jefferson Way Suite 2', NULL, 'THEBI'),
(10311, '67, rue des Cinquante Otages', NULL, 'DUMON'),
(10312, 'Adenauerallee 900', NULL, 'WANDK'),
(10313, 'Taucherstraße 10', NULL, 'QUICK'),
(10314, '2817 Milton Dr.', NULL, 'RATTC'),
(10315, 'Garden House Crowther Way', NULL, 'ISLAT'),
(10316, '2817 Milton Dr.', NULL, 'RATTC'),
(10317, '89 Chiaroscuro Rd.', NULL, 'LONEP'),
(10318, 'Garden House Crowther Way', NULL, 'ISLAT'),
(10319, 'Avda. Azteca 123', NULL, 'TORTU'),
(10320, 'Torikatu 38', NULL, 'WARTH'),
(10321, 'Garden House Crowther Way', NULL, 'ISLAT'),
(10322, 'Calle Dr. Jorge Cash 321', NULL, 'PERIC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint NOT NULL,
  `price` bigint NOT NULL,
  `quantity` bigint NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(100005, 42, 40, 10249, 1051),
(100006, 8, 10, 10250, 1041),
(100007, 42, 35, 10250, 1051),
(100008, 17, 15, 10250, 1065),
(100009, 17, 6, 10251, 1022),
(100010, 16, 15, 10251, 1057),
(100011, 17, 20, 10251, 1065),
(100012, 65, 40, 10252, 1020),
(100013, 2, 25, 10252, 1033),
(100014, 27, 40, 10252, 1060),
(100015, 10, 20, 10253, 1031),
(100016, 14, 42, 10253, 1039),
(100017, 16, 40, 10253, 1049),
(100018, 4, 15, 10254, 1024),
(100019, 19, 21, 10254, 1055),
(100020, 8, 21, 10254, 1074),
(100021, 15, 20, 10255, 1002),
(100022, 14, 35, 10255, 1016),
(100023, 15, 25, 10255, 1036),
(100024, 44, 30, 10255, 1059),
(100025, 26, 15, 10256, 1053),
(100026, 10, 12, 10256, 1077),
(100027, 35, 25, 10257, 1027),
(100028, 14, 6, 10257, 1039),
(100029, 10, 15, 10257, 1077),
(100030, 15, 50, 10258, 1002),
(100032, 26, 6, 10258, 1032),
(100033, 8, 10, 10259, 1021),
(100034, 21, 1, 10259, 1037),
(100035, 8, 16, 10260, 1041),
(100036, 16, 50, 10260, 1057),
(100037, 39, 15, 10260, 1062),
(100038, 12, 21, 10260, 1070),
(100039, 8, 20, 10261, 1021),
(100040, 14, 20, 10261, 1035),
(100042, 24, 15, 10262, 1007),
(100043, 30, 2, 10262, 1056),
(100044, 14, 60, 10263, 1016),
(100045, 4, 28, 10263, 1024),
(100046, 21, 60, 10263, 1030),
(100047, 8, 36, 10263, 1074),
(100048, 15, 35, 10264, 1002),
(100049, 8, 25, 10264, 1041),
(100050, 31, 30, 10265, 1017),
(100051, 12, 20, 10265, 1070),
(100052, 30, 12, 10266, 1012),
(100053, 15, 50, 10267, 1040),
(100054, 44, 70, 10267, 1059),
(100055, 14, 15, 10267, 1076),
(100056, 99, 10, 10268, 1029),
(100058, 2, 60, 10269, 1033),
(100060, 15, 30, 10270, 1036),
(100061, 37, 25, 10270, 1043),
(100062, 2, 24, 10271, 1033),
(100063, 65, 6, 10272, 1020),
(100064, 10, 40, 10272, 1031),
(100066, 25, 24, 10273, 1010),
(100067, 10, 15, 10273, 1031),
(100068, 2, 20, 10273, 1033),
(100069, 15, 60, 10273, 1040),
(100070, 14, 33, 10273, 1076),
(100071, 17, 20, 10274, 1071),
(100073, 4, 12, 10275, 1024),
(100074, 44, 6, 10275, 1059),
(100075, 25, 15, 10276, 1010),
(100076, 5, 10, 10276, 1013),
(100077, 36, 20, 10277, 1028),
(100078, 39, 12, 10277, 1062),
(100079, 16, 16, 10278, 1044),
(100080, 44, 15, 10278, 1059),
(100081, 35, 8, 10278, 1063),
(100082, 12, 25, 10278, 1073),
(100083, 31, 15, 10279, 1017),
(100084, 4, 12, 10280, 1024),
(100085, 19, 20, 10280, 1055),
(100086, 6, 30, 10280, 1075),
(100087, 7, 1, 10281, 1019),
(100088, 4, 6, 10281, 1024),
(100089, 14, 4, 10281, 1035),
(100090, 21, 6, 10282, 1030),
(100091, 16, 2, 10282, 1057),
(100092, 12, 20, 10283, 1015),
(100093, 7, 18, 10283, 1019),
(100094, 27, 35, 10283, 1060),
(100096, 35, 15, 10284, 1027),
(100097, 16, 21, 10284, 1044),
(100098, 27, 20, 10284, 1060),
(100099, 11, 5, 10284, 1067),
(100100, 14, 45, 10285, 1001),
(100101, 15, 40, 10285, 1040),
(100102, 26, 36, 10285, 1053),
(100103, 14, 100, 10286, 1035),
(100104, 39, 40, 10286, 1062),
(100105, 14, 40, 10287, 1016),
(100106, 11, 20, 10287, 1034),
(100107, 10, 15, 10287, 1046),
(100108, 6, 10, 10288, 1054),
(100109, 10, 3, 10288, 1068),
(100110, 8, 30, 10289, 1003),
(100111, 27, 9, 10289, 1064),
(100113, 99, 15, 10290, 1029),
(100114, 16, 15, 10290, 1049),
(100115, 10, 10, 10290, 1077),
(100116, 5, 20, 10291, 1013),
(100117, 16, 24, 10291, 1044),
(100118, 42, 2, 10291, 1051),
(100119, 65, 20, 10292, 1020),
(100120, 50, 12, 10293, 1018),
(100121, 4, 10, 10293, 1024),
(100122, 35, 5, 10293, 1063),
(100123, 6, 6, 10293, 1075),
(100124, 14, 18, 10294, 1001),
(100125, 31, 15, 10294, 1017),
(100126, 37, 15, 10294, 1043),
(100127, 27, 21, 10294, 1060),
(100128, 6, 6, 10294, 1075),
(100129, 30, 4, 10295, 1056),
(100131, 14, 30, 10296, 1016),
(100132, 29, 15, 10296, 1069),
(100133, 14, 60, 10297, 1039),
(100135, 15, 40, 10298, 1002),
(100136, 15, 40, 10298, 1036),
(100137, 44, 30, 10298, 1059),
(100138, 39, 15, 10298, 1062),
(100139, 7, 15, 10299, 1019),
(100140, 12, 20, 10299, 1070),
(100141, 14, 30, 10300, 1066),
(100142, 10, 20, 10300, 1068),
(100143, 15, 10, 10301, 1040),
(100144, 30, 20, 10301, 1056),
(100145, 31, 40, 10302, 1017),
(100146, 36, 28, 10302, 1028),
(100147, 37, 12, 10302, 1043),
(100148, 15, 40, 10303, 1040),
(100149, 17, 30, 10303, 1065),
(100150, 10, 15, 10303, 1068),
(100151, 16, 30, 10304, 1049),
(100152, 44, 10, 10304, 1059),
(100153, 17, 2, 10304, 1071),
(100154, 50, 25, 10305, 1018),
(100155, 99, 25, 10305, 1029),
(100156, 14, 30, 10305, 1039),
(100157, 21, 10, 10306, 1030),
(100158, 26, 10, 10306, 1053),
(100159, 6, 5, 10306, 1054),
(100160, 39, 10, 10307, 1062),
(100161, 10, 3, 10307, 1068),
(100162, 29, 1, 10308, 1069),
(100163, 12, 5, 10308, 1070),
(100164, 18, 20, 10309, 1004),
(100165, 20, 30, 10309, 1006),
(100167, 37, 20, 10309, 1043),
(100168, 17, 3, 10309, 1071),
(100169, 14, 10, 10310, 1016),
(100170, 39, 5, 10310, 1062),
(100172, 29, 7, 10311, 1069),
(100173, 36, 4, 10312, 1028),
(100174, 37, 24, 10312, 1043),
(100175, 26, 20, 10312, 1053),
(100176, 6, 10, 10312, 1075),
(100177, 15, 12, 10313, 1036),
(100178, 26, 40, 10314, 1032),
(100179, 11, 30, 10314, 1058),
(100180, 39, 25, 10314, 1062),
(100181, 11, 14, 10315, 1034),
(100182, 12, 30, 10315, 1070),
(100183, 8, 10, 10316, 1041),
(100184, 39, 70, 10316, 1062),
(100185, 14, 20, 10317, 1001),
(100186, 8, 20, 10318, 1041),
(100187, 14, 6, 10318, 1076),
(100188, 31, 8, 10319, 1017),
(100189, 36, 14, 10319, 1028),
(100190, 14, 30, 10319, 1076),
(100191, 17, 30, 10320, 1071),
(100192, 14, 10, 10321, 1035),
(100193, 6, 20, 10322, 1052);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint NOT NULL,
  `available` bigint NOT NULL,
  `create_date` date DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` bigint NOT NULL,
  `category_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `available`, `create_date`, `image`, `name`, `price`, `category_id`) VALUES
(1001, 31, NULL, '1001.jpg', 'Aniseed Syrup', 190, 1000),
(1002, 25, NULL, '1002.jpg', 'Change Arena', 19, 1000),
(1003, 8, NULL, '1003.jpg', 'Aniseed Syrup', 10, 1001),
(1004, 3, NULL, '1004.jpg', 'Chef Anton\'s Cajun', 22, 1001),
(1005, 1, NULL, '1005.jpg', 'Chef Anton\'s Gumbo', 21, 1002),
(1006, 4, NULL, '1006.jpg', 'Grandma\'s Boysenberry', 25, 1001),
(1007, 5, NULL, '1007.jpg', 'Uncle Bob\'s Organic', 30, 1006),
(1008, 5, NULL, '1008.jpg', 'Northwoods Cranberry', 40, 1001),
(1009, 5, NULL, '1009.jpg', 'Mishi Kobe Niku', 97, 1005),
(1010, 0, NULL, '1010.jpg', 'Ikura', 31, 1007),
(1011, 5, NULL, '1011.jpg', 'Queso Cabrales', 21, 1003),
(1012, 5, NULL, '1012.jpg', 'Queso Manchego', 38, 1003),
(1013, 0, NULL, '1013.jpg', 'Konbu', 6, 1007),
(1014, 5, NULL, '1014.jpg', 'Tofu', 23, 1006),
(1015, 5, NULL, '1015.jpg', 'Genen Shouyu', 16, 1001),
(1016, 5, NULL, '1016.jpg', 'Pavlova', 17, 1002),
(1017, 1, NULL, '1017.jpg', 'Alice Mutton', 39, 1005),
(1018, 1, NULL, '1018.jpg', 'Carnarvon Tigers', 63, 1007),
(1019, 5, NULL, '1019.jpg', 'Teatime Chocolate Biscuits', 9, 1002),
(1020, 5, NULL, '1020.jpg', 'Sir Rodney\'s Marmalade', 81, 1002),
(1021, 5, NULL, '1021.jpg', 'Sir Rodney\'s Scones', 10, 1002),
(1022, 5, NULL, '1022.jpg', 'Gustaf flower', 21, 1004),
(1023, 1, NULL, '1023.jpg', 'Tunnbr Korea', 9, 1004),
(1024, 5, NULL, '1024.jpg', 'Guarana¡ Fanta¡stica', 5, 1000),
(1025, 55, NULL, '1025.jpg', 'NuNuCa Nuaa', 14, 1002),
(1026, 5, NULL, '1026.jpg', 'Gumbar Gummibarchen', 31, 1002),
(1027, 5, NULL, '1027.jpg', 'Schoggi Schokolade', 44, 1002),
(1028, 5, NULL, '1028.jpg', 'Russle Sauerkraut', 46, 1006),
(1029, 5, NULL, '1029.jpg', 'Tharinger Rostbratwurst', 124, 1005),
(1030, 5, NULL, '1030.jpg', 'Nord-Ost Matjeshering', 26, 1007),
(1031, 5, NULL, '1031.jpg', 'Gorgonzola Telino', 13, 1003),
(1032, 5, NULL, '1032.jpg', 'Mascarpone Fabioli', 32, 1003),
(1033, 0, NULL, '1033.png', 'Geitost', 3, 1003),
(1034, 1, NULL, '1034.jpg', 'Sasquatch Ale', 14, 1000),
(1035, 5, NULL, '1035.jpg', 'Steeleye Stout', 18, 1000),
(1036, 5, NULL, '1036.jpg', 'Inlagd Sill', 19, 1007),
(1037, 5, NULL, '1037.jpg', 'Gravad lax', 26, 1007),
(1038, 0, NULL, '1038.jpg', 'Cate de Blaye', 264, 1000),
(1039, 5, NULL, '1039.jpg', 'Chartreuse verte', 18, 1000),
(1040, 0, NULL, '1040.jpg', 'Boston Crab Meat', 18, 1007),
(1041, 44, NULL, '1041.jpg', 'Jack\'s New England', 10, 1007),
(1042, 67, NULL, '1042.jpg', 'Singaporean Hokkien', 14, 1004),
(1043, 5, NULL, '1043.jpg', 'Ipoh Coffee', 46, 1000),
(1044, 0, NULL, '1044.jpg', 'Gula Malacca', 19, 1001),
(1045, 1, NULL, '1045.jpg', 'Rogede sild', 10, 1007),
(1046, 5, NULL, '1046.jpg', 'Spegesild', 12, 1007),
(1047, 5, NULL, '1047.jpg', 'Zaanse koeken', 10, 1002),
(1048, 5, NULL, '1048.jpg', 'Chocolade', 13, 1002),
(1049, 5, NULL, '1049.jpg', 'Maxilaku', 20, 1002),
(1050, 5, NULL, '1050.jpg', 'Valkoinen suklaa', 16, 1002),
(1051, 5, NULL, '1051.jpg', 'Manjimup Dried Apples', 53, 1006),
(1052, 5, NULL, '1052.jpg', 'Filo Mix', 7, 1004),
(1053, 5, NULL, '1053.jpg', 'Perth Pasties', 33, 1005),
(1054, 1, NULL, '1054.jpg', 'Tourtiare', 7, 1005),
(1055, 5, NULL, '1055.jpg', 'Pacta chinois', 24, 1005),
(1056, 5, NULL, '1056.jpg', 'Gnocchi di nonna Alice', 38, 1004),
(1057, 5, NULL, '1057.jpg', 'Ravioli Angelo', 20, 1004),
(1058, 5, NULL, '1058.jpg', 'Escargots de Bourgogne', 13, 1001),
(1059, 5, NULL, '1059.jpg', 'Raclette Courdavault', 55, 1003),
(1060, 5, NULL, '1060.jpg', 'Camembert Pierrot', 34, 1003),
(1061, 5, NULL, '1061.jpg', 'Sirop d\'aOrable', 29, 1001),
(1062, 5, NULL, '1062.jpg', 'Tarte au sucre', 49, 1002),
(1063, 50, NULL, '1063.jpg', 'Vegie-spread', 44, 1001),
(1064, 5, NULL, '1064.jpg', 'Wimmers gute Semmel', 33, 1004),
(1065, 60, NULL, '1065.jpg', 'Louisiana Fiery Hot', 21, 1001),
(1066, 13, NULL, '1066.jpg', 'Louisiana Hot Spiced', 17, 1001),
(1067, 1, NULL, '1067.jpg', 'Laughing Lumberjack Lager', 14, 1000),
(1068, 5, NULL, '1068.jpg', 'Scottish Longbreads', 13, 1002),
(1069, 5, NULL, '1069.jpg', 'Gudbrandsdalsost', 36, 1003),
(1070, 0, NULL, '1070.jpg', 'Outback Lager', 15, 1000),
(1071, 1, NULL, '1071.jpg', 'Flotemysost', 22, 1003),
(1072, 5, NULL, '1072.jpg', 'Mozzarella di Giovanni', 35, 1003),
(1073, 5, NULL, '1073.jpg', 'Rad Kaviar', 15, 1007),
(1074, 5, NULL, '1074.jpg', 'Longlife Tofu', 10, 1006),
(1075, 0, NULL, '1075.jpg', 'RhanbrAu Klosterbier', 8, 1000),
(1076, 5, NULL, '1076.jpg', 'Lakkalik AAri', 18, 1000),
(1077, 18, NULL, '1077.gif', 'Original Frankfurter', 13, 1001),
(1081, 5, NULL, '1081.jpg', 'Chai', 19, 1000),
(1083, 5, NULL, '1083.jpg', 'Mishi Kobe Niku', 97, 1005);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'Customers'),
(2, 'Directors'),
(3, 'Staffs');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`user_name`);

--
-- Chỉ mục cho bảng `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9w3wowbf6qhtt4hwxqlivgy7n` (`user_name`),
  ADD KEY `FK7kj74d912rytfp5su91jfv0tg` (`role_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKpnxq8agsk6iiij13h02nw9lhl` (`user_name`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5004;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10323;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100194;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1084;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FK7kj74d912rytfp5su91jfv0tg` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `FK9w3wowbf6qhtt4hwxqlivgy7n` FOREIGN KEY (`user_name`) REFERENCES `accounts` (`user_name`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKpnxq8agsk6iiij13h02nw9lhl` FOREIGN KEY (`user_name`) REFERENCES `accounts` (`user_name`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
