-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2021 a las 04:29:55
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fashiony_ogs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Rojo'),
(2, 'Negro'),
(3, 'Azul'),
(4, 'Amarillo'),
(5, 'Verde'),
(6, 'Blanco'),
(7, 'Naranja'),
(8, 'Cafe'),
(9, 'Bronce'),
(10, 'Rosado'),
(11, 'Mezclado'),
(12, 'Azul claro'),
(13, 'Violeta'),
(14, 'Morado claro'),
(15, 'Salmón'),
(16, 'Oro'),
(17, 'gris'),
(18, 'Ceniza'),
(19, 'Marron'),
(20, 'Plata');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(6, 'camilo ballesteros', '', 'ballesterosvillalbacamiloandre@gmail.com', '3105236894', 47, 'bogota', 'bogota', '1', '15161', 'camilo ballesteros', 'camilo.sa', '3105236894', 47, 'calle 45 # 20-68', 'bogota', '1', '12312', 'camilo ballesteros', 'camilo.sa', '3105236894', 47, 'calle 45 # 20-68', 'bogota', '1', '12312', '827ccb0eea8a706c4c34a16891f84e7b', '', '2021-02-05 08:57:45', '', 1),
(11, 'flor alba villalba', 'camilo.sa', 'cambal.newrona.net@gmail.com', '3105236894', 47, 'calle 45 # 20-68', 'bogota', '1', '12312', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '2021-03-18 05:29:46', '1616106586', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: camibal1995@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: camibal1995@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: camibal1995@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: camibal1995@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(8, 'Product Shipped', 'Dear Customer,\r\n\r\nYour order has been shipped.\r\n\r\nLet us know when you have any question.\r\n\r\nBest regards,\r\nHammad Hassan', '\r\nCustomer Name: Hammad Hassan<br>\r\nCustomer Email: mc170200216@vu.edu.pk<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2018-04-25 18:28:46<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 1<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1524666526<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: <br>\r\nColor: Black<br>\r\nQuantity: 1<br>\r\nUnit Price: 1<br>\r\n            ', 5),
(9, 'sdfsd', 'fsdfdsffsd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(10, 'sdfsd', 'fsdfdsffsd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(11, 'ghjhg', 'jghjhgjgj', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(12, 'hola', 'hola', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(13, 'dsfsdf', 'sdfsdf', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(14, 'fdhgfg', 'hfgh', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(15, 'dawdeqw', 'dqwd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(16, 'dasdasd', 'asdasdasds', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(17, 'dsadas', 'dasdasd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(18, 'dsadas', 'dasdasd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(19, 'drfgergre', 'grerettr', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-26 23:31:14<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 85<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614367874<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 1<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(20, 'ghjhg', 'fdhdfhdfhdfh', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(21, 'yityititi', 'tyityit', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(22, 'sadsadsa', 'dsadsadsad', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(23, 'sadasd', 'asdasd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(24, 'sdsads', 'adasdasda', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(25, 'fghfghh', 'fghfgh', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(26, 'fdsfsdf', 'sdfsdf', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(27, 'asdsad', 'asdasd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(28, 'sdfsd', 'fsdfdsf', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(29, 'sdvdsv', 'svsdsvds', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(30, 'ghjghjgh', 'jghjghj', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(31, 'asdsad', 'asdasd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(32, '', '', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(33, 'dfgfdgd', 'fgdfgdfg', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(34, 'reter', 'tertert', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(35, 'asdsad', 'asdsadsad', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(36, 'sdfsdff', 'sfdsfsf', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-26 23:31:14<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 85<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614367874<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 1<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(37, 'dasdas', 'dasdasd', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(38, 'emergia', 'mensaje de prueba 22342', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 00:23:59<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(39, 'zxcxzzx', 'zcxzczxcxzc', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-26 23:31:14<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 85<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614367874<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 1<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(40, 'asdsad', 'xcvxcvxc', '\r\nCustomer Name: camilo ballesteros<br>\r\nCustomer Email: ballesterosvillalbacamiloandre@gmail.com<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2021-02-27 02:51:50<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 255<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1614379910<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Vestido camisero glamoroso para mujer<br>\r\nSize: XS<br>\r\nColor: gris<br>\r\nQuantity: 3<br>\r\nUnit Price: 85<br>\r\n            ', 6),
(41, 'confirmacion', 'confirmacion del pedido', '\r\n            Nombre del cliente: camilo ballesteros<br>\r\n            Correo electrónico del cliente: ballesterosvillalbacamiloandre@gmail.com<br>\r\n            Fecha de pago: 2021-02-27 00:23:59<br>\r\n            Detalles del pago: <br>\r\nTransacción Id: <br>\r\n        		<br>\r\n            Monto pagado: 255<br>\r\n            Estado del pago: Completed<br>\r\n            Estado de envío: Completed<br>\r\n            Id del pago: 1614371039<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nNombre del Producto: Vestido camisero glamoroso para mujer<br>\r\nTalla: XS<br>\r\nColor: gris<br>\r\nCantidad: 3<br>\r\nPrecio unitario: 85<br>\r\n            ', 6),
(42, 'hola ', 'gffdg', '\r\n            Nombre del cliente: camilo ballesteros<br>\r\n            Correo electrónico del cliente: ballesterosvillalbacamiloandre@gmail.com<br>\r\n            Fecha de pago: 2021-02-27 02:51:50<br>\r\n            Detalles del pago: <br>\r\nTransacción Id: <br>\r\n        		<br>\r\n            Monto pagado: 255<br>\r\n            Estado del pago: Completed<br>\r\n            Estado de envío: Completed<br>\r\n            Id del pago: 1614379910<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nNombre del Producto: Vestido camisero glamoroso para mujer<br>\r\nTalla: XS<br>\r\nColor: gris<br>\r\nCantidad: 3<br>\r\nPrecio unitario: 85<br>\r\nPrecio total: 255<br>\r\n\r\n\r\n            ', 6),
(43, 'rtuyttu6ytuuityu', 'tyutyutyutyuutiereriuoerhiooige', '\r\n            Nombre del cliente: camilo ballesteros<br>\r\n            Correo electrónico del cliente: ballesterosvillalbacamiloandre@gmail.com<br>\r\n            Fecha de pago: 2021-03-12 12:22:22<br>\r\n            Detalles del pago: <br>\r\nTransacción Id: <br>\r\n        		<br>\r\n            Monto total: 1<br>\r\n            Estado del pago: Pending<br>\r\n            Estado de envío: Pending<br>\r\n            Id del pago: 1615569742<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nNombre del Producto: Gorro de lana negro y gorro Bobble para unisex<br>\r\nTalla: XS<br>\r\nColor: Negro<br>\r\nCantidad: 1<br>\r\nPrecio unitario: 1<br>\r\nPrecio total: <br>\r\n\r\n            ', 6),
(44, 'respuesta de compra', 'su penefjsdkjksdkjsdkjsdgbvkjsdvjksdgvb', '\r\n            Nombre del cliente: camilo ballesteros<br>\r\n            Correo electrónico del cliente: ballesterosvillalbacamiloandre@gmail.com<br>\r\n            Fecha de pago: 2021-03-18 17:25:02<br>\r\n            Detalles del pago: <br>\r\nTransacción Id: <br>\r\n        		<br>\r\n            Monto total: 40000<br>\r\n            Estado del pago: Pending<br>\r\n            Estado de envío: Pending<br>\r\n            Id del pago: 1616106302<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nNombre del Producto: corazas maxxis<br>\r\nTalla: S<br>\r\nColor: Rojo<br>\r\nCantidad: 2<br>\r\nPrecio unitario: 20000<br>\r\nPrecio total: <br>\r\n\r\n            ', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Timones', 1),
(2, 'Corazas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, '¿Cómo encontrar un artículo en Fashionys.com?', '<h3 class = \"checkout-complete-box font-bold txt16\" ...'),
(2, '¿Cuál es su política de devoluciones?', '<p> <span style = \"color: rgb (10, 10, 10); font-famil ...'),
(3, ' Recibí un artículo defectuoso / dañado, ¿puedo obtener un ...', '<p> En caso de que el artículo recibido esté dañado o def ...'),
(4, '¿Cuándo no son posibles las \'devoluciones\'?', '<p class = \"a\" style = \"tamaño de caja: heredar; texto-re ...'),
(5, '¿Cuáles son los artículos que no se pueden devolver?', '<p> Los artículos que no se pueden devolver son: </p> <p> C ...');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Moneda', '$'),
(2, 'Buscar producto', 'Buscar producto'),
(3, 'Buscar', 'Buscar'),
(4, 'enviar', 'enviar'),
(5, 'Actualizar', 'Actualizar'),
(6, 'Leer más', 'Leer más'),
(7, 'Serial', 'Serial'),
(8, 'Foto', 'Foto'),
(9, 'Iniciar sesión', 'Iniciar sesión'),
(10, 'inicio de sesión del cliente', 'inicio de sesión del cliente'),
(11, 'Haga clic aquí para ingresar', 'Haga clic aquí para ingresar'),
(12, 'Volver a la página de inicio de sesión', 'Volver a la página de inicio de sesión'),
(13, 'Bienvenido', 'Bienvenido'),
(14, 'Cerrar sesión', 'Cerrar sesión'),
(15, 'Registrarse', 'Registrarse'),
(16, 'Registro de cliente', 'Registro de cliente'),
(17, 'Registro exitoso', 'Registro exitoso'),
(18, 'compra', 'compra'),
(19, 'Ver carrito', 'Ver carrito'),
(20, 'Actualizar cantidad', 'Actualizar cantidad'),
(21, 'Volver al carrito', 'Volver al carrito'),
(22, 'Echa un vistazo', 'Echa un vistazo'),
(23, 'Pasar por la caja', 'Pasar por la caja'),
(24, 'Pedidos\r\n', 'Pedidos\r\n'),
(25, 'Historial de pedidos', 'Historial de pedidos'),
(26, 'Detalles del pedido\r\n', 'Detalles del pedido\r\n'),
(27, 'Fecha y hora de pago', 'Fecha y hora de pago'),
(28, 'Transacción ID', 'Transacción ID'),
(29, 'Monto de pago', 'Monto de pago'),
(30, 'Estado de pago', 'Estado de pago'),
(31, 'Método de pago', 'Método de pago'),
(32, 'Pago ID', 'Pago ID'),
(33, 'Sección de pago\r\n', 'Sección de pago\r\n'),
(34, 'Total a pagar', 'Total a pagar'),
(35, 'Seleccione un método\r\n', 'Seleccione un método\r\n'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Deposito bancario\r\n', 'Deposito bancario\r\n'),
(39, 'Número de tarjeta\r\n', 'Número de tarjeta\r\n'),
(40, 'CVV', 'CVV'),
(41, 'Mes', 'Mes'),
(42, 'Año\r\n', 'Año\r\n'),
(43, 'Enviar a este Detalles\r\n', 'Enviar a este Detalles\r\n'),
(44, 'información de la transacción\r\n', 'información de la transacción\r\n'),
(45, 'Incluya correctamente la identificación de la transacción y otra información\r\n', 'Incluya correctamente la identificación de la transacción y otra información\r\n'),
(46, 'Solicitar pedido', 'Solicitar pedido'),
(47, 'nombre del producto\r\n', 'nombre del producto\r\n'),
(48, 'Detalles de producto\r\n', 'Detalles de producto\r\n'),
(49, 'Categorías', 'Categorías'),
(50, 'Categoría:\r\n', 'Categoría:\r\n'),
(51, 'Todos los productos debajo\r\n', 'Todos los productos debajo\r\n'),
(52, 'Selecciona el tamaño\r\n', 'Selecciona el tamaño\r\n'),
(53, 'Seleccionar el color\r\n', 'Seleccionar el color\r\n'),
(54, 'Precio del producto\r\n', 'Precio del producto\r\n'),
(55, 'Cantidad', 'Cantidad'),
(56, 'Agotado', 'Agotado'),
(57, 'Compartir este\r\n', 'Compartir este\r\n'),
(58, 'Comparte este producto\r\n', 'Comparte este producto\r\n'),
(59, 'Descripción del producto\r\n', 'Descripción del producto\r\n'),
(60, 'Características', 'Características'),
(61, 'Condiciones', 'Condiciones'),
(62, 'Política de devoluciones\r\n', 'Política de devoluciones\r\n'),
(63, 'Reseñas', 'Reseñas'),
(64, 'revisión', 'revisión'),
(65, 'Dar una reseña\r\n', 'Dar una reseña\r\n'),
(66, 'Escribe tu comentario (Opcional)', 'Escribe tu comentario (Opcional)'),
(67, 'Enviar opinión\r\n', 'Enviar opinión\r\n'),
(68, '¡Ya has puntuado!\r\n', '¡Ya has puntuado!\r\n'),
(69, 'Debe tener que iniciar sesión para dar una revisión\r\n', 'Debe tener que iniciar sesión para dar una revisión\r\n'),
(70, 'No se encontró descripción', 'No se encontró descripción'),
(71, 'No se encontró ninguna característica\r\n', 'No se encontró ninguna característica\r\n'),
(72, 'No se encontró ninguna condición', 'No se encontró ninguna condición'),
(73, 'No se encontró política de devolución', 'No se encontró política de devolución'),
(74, 'No se ha encontrado ninguna reseña', 'No se ha encontrado ninguna reseña'),
(75, 'Nombre del cliente', 'Nombre del cliente'),
(76, 'Comentario', 'Comentario'),
(77, 'Comentarios', 'Comentarios'),
(78, 'Clasificación', 'Clasificación'),
(79, 'Previa', 'Previa'),
(80, 'Siguiente', 'Siguiente'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Acción', 'Acción'),
(84, 'Costo de envío', 'Costo de envío'),
(85, 'Continuar enviando', 'Continuar enviando'),
(86, 'Actualizar dirección de facturación', 'Actualizar dirección de facturación'),
(87, 'Actualizar la dirección de envío', 'Actualizar la dirección de envío'),
(88, 'Actualizar la información de facturación y envío', 'Actualizar la información de facturación y envío'),
(89, 'panel', 'panel'),
(90, 'Bienvenido al panel: Aca podrás administrar toso', 'Bienvenido al panel: Aca podrás administrar toso'),
(91, 'Volver al panel', 'Volver al panel'),
(92, 'Suscribir', 'Suscribir'),
(93, 'Suscríbete a nuestro boletín', 'Suscríbete a nuestro boletín'),
(94, 'Dirección de correo electrónico', 'Dirección de correo electrónico'),
(95, 'Ingrese su dirección de correo electrónico', 'Ingrese su dirección de correo electrónico'),
(96, 'Contraseña', 'Contraseña'),
(97, 'Contraseña olvidada\r\n', 'Contraseña olvidada\r\n'),
(98, 'Vuelva a escribir la contraseña\r\n', 'Vuelva a escribir la contraseña\r\n'),
(99, 'Actualiza contraseña\r\n', 'Actualiza contraseña\r\n'),
(100, 'Nueva contraseña\r\n', 'Nueva contraseña\r\n'),
(101, 'Reescriba nueva contraseña\r\n', 'Reescriba nueva contraseña\r\n'),
(102, 'Nombre completo\r\n', 'Nombre completo\r\n'),
(103, 'nombre de empresa\r\n', 'nombre de empresa\r\n'),
(104, 'Número de teléfono\r\n', 'Número de teléfono\r\n'),
(105, 'Dirección', 'Dirección'),
(106, 'País', 'País'),
(107, 'Ciudad', 'Ciudad'),
(108, 'Estado', 'Estado'),
(109, 'Código postal', 'Código postal'),
(110, 'Sobre nosotros', 'Sobre nosotros'),
(111, 'Publicaciones destacadas', 'Publicaciones destacadas'),
(112, 'entradas populares', 'entradas populares'),
(113, 'Mensajes recientes\r\n', 'Mensajes recientes\r\n'),
(114, 'Información del contacto\r\n', 'Información del contacto\r\n'),
(115, 'Formulario de contacto', 'Formulario de contacto'),
(116, 'Nuestra oficina', 'Nuestra oficina'),
(117, 'Actualización del perfil', 'Actualización del perfil'),
(118, 'Enviar mensaje\r\n', 'Enviar mensaje\r\n'),
(119, 'Mensaje', 'Mensaje'),
(120, 'Encuéntranos en el mapa', 'Encuéntranos en el mapa'),
(121, 'Enhorabuena la solicitud se ha realizado correctamente nos comunicaremos con tigo lo más pronto posible, trata de estar muy atento a tu correo y a tu celular.\r\n', 'Enhorabuena la solicitud se ha realizado correctamente nos comunicaremos con tigo lo más pronto posible, trata de estar muy atento a tu correo y a tu celular.\r\n'),
(122, 'La información de facturación y envío se ha actualizado correctamente.', 'La información de facturación y envío se ha actualizado correctamente.'),
(123, 'El nombre del cliente no puede estar vacío.', 'El nombre del cliente no puede estar vacío.'),
(124, 'El número de teléfono no puede estar vacío.', 'El número de teléfono no puede estar vacío.'),
(125, 'La dirección no puede estar vacía.\r\n', 'La dirección no puede estar vacía.\r\n'),
(126, 'Debe tener que seleccionar un país.', 'Debe tener que seleccionar un país.'),
(127, 'La ciudad no puede estar vacía.', 'La ciudad no puede estar vacía.'),
(128, 'El estado no puede estar vacío.', 'El estado no puede estar vacío.'),
(129, 'El código postal no puede estar vacío.', 'El código postal no puede estar vacío.'),
(130, 'La información del perfil se ha actualizado correctamente.', 'La información del perfil se ha actualizado correctamente.'),
(131, 'La dirección de correo electrónico no puede estar vacía', 'La dirección de correo electrónico no puede estar vacía'),
(132, 'El correo electrónico y / o la contraseña no pueden estar vacíos.\r\n', 'El correo electrónico y / o la contraseña no pueden estar vacíos.\r\n'),
(133, 'La dirección de Email no coincide.\r\n', 'La dirección de Email no coincide.\r\n'),
(134, 'La dirección de correo electrónico debe ser válida.\r\n', 'La dirección de correo electrónico debe ser válida.\r\n'),
(135, 'Su dirección de correo electrónico no se encuentra en nuestro sistema.\r\n', 'Su dirección de correo electrónico no se encuentra en nuestro sistema.\r\n'),
(136, 'Por favor revise su correo electrónico y confirme su suscripción.\r\n', 'Por favor revise su correo electrónico y confirme su suscripción.\r\n'),
(137, 'Su correo electrónico se verificó correctamente. Ahora puede iniciar sesión en nuestro sitio web.', 'Su correo electrónico se verificó correctamente. Ahora puede iniciar sesión en nuestro sitio web.'),
(138, 'La contraseña no puede estar vacía.\r\n', 'La contraseña no puede estar vacía.\r\n'),
(139, 'Las contraseñas no coinciden.\r\n', 'Las contraseñas no coinciden.\r\n'),
(140, 'Ingrese nuevas contraseñas y vuelva a escribirlas.\r\n', 'Ingrese nuevas contraseñas y vuelva a escribirlas.\r\n'),
(141, 'La contraseña se actualizó correctamente.', 'La contraseña se actualizó correctamente.'),
(142, 'Para restablecer su contraseña, haga clic en el enlace a continuación.\r\n', 'Para restablecer su contraseña, haga clic en el enlace a continuación.\r\n'),
(143, 'SOLICITUD DE RESTABLECIMIENTO DE CONTRASEÑA - SU SITIO WEB.COM', 'SOLICITUD DE RESTABLECIMIENTO DE CONTRASEÑA - SU SITIO WEB.COM'),
(144, 'El tiempo del correo electrónico para restablecer la contraseña (24 horas) ha expirado. Vuelva a intentar restablecer su contraseña.', 'El tiempo del correo electrónico para restablecer la contraseña (24 horas) ha expirado. Vuelva a intentar restablecer su contraseña.'),
(145, 'Se envía un enlace de confirmación a su dirección de correo electrónico ...', 'Se envía un enlace de confirmación a su dirección de correo electrónico ...'),
(146, 'La contraseña se restableció correctamente. Ahora puede iniciar sesión.', 'La contraseña se restableció correctamente. Ahora puede iniciar sesión.'),
(147, 'La dirección de correo ya existe\r\n', 'La dirección de correo ya existe\r\n'),
(148, '¡Lo siento! Tu cuenta está inactiva. Comuníquese con el administrador.\r\n', '¡Lo siento! Tu cuenta está inactiva. Comuníquese con el administrador.\r\n'),
(149, 'Cambiar contraseña', 'Cambiar contraseña'),
(150, 'Confirmación por correo electrónico de registro para SU SITIO WEB', 'Confirmación por correo electrónico de registro para SU SITIO WEB'),
(151, '¡Gracias por su registro! Tu cuenta ha sido creada. Para activar su cuenta, haga clic en el enlace a continuación:', '¡Gracias por su registro! Tu cuenta ha sido creada. Para activar su cuenta, haga clic en el enlace a continuación:'),
(152, 'Su registro está completo. Verifique su dirección de correo electrónico para seguir el proceso para confirmar su registro.', 'Su registro está completo. Verifique su dirección de correo electrónico para seguir el proceso para confirmar su registro.'),
(153, 'Ningún producto encontrado', 'Ningún producto encontrado'),
(154, 'Añadir al carrito\r\n', 'Añadir al carrito\r\n'),
(155, 'Productos relacionados\r\n', 'Productos relacionados\r\n'),
(156, 'Ver todos los productos relacionados a continuación\r\n', 'Ver todos los productos relacionados a continuación\r\n'),
(157, 'Talla', 'Talla'),
(158, 'Color', 'Color'),
(159, 'Precio', 'Precio'),
(160, 'Inicie sesión para poder continuar\r\n\r\n', 'Inicie sesión para poder continuar\r\n\r\n'),
(161, 'Dirección de Envio\r\n', 'Dirección de Envio\r\n'),
(162, 'Dirección de Envio\r\n', 'Dirección de Envio\r\n'),
(163, '¡La calificación se envió correctamente!\r\n', '¡La calificación se envió correctamente!\r\n'),
(164, 'Estado del envío', 'Estado del envío');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'repuestos', 1),
(2, 'Accesorios', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(102, 86, 'Timon PRO FRS 800MM', 'S', 'Rojo', '1', '142000', '1615689068'),
(103, 86, 'Timon PRO FRS 800MM', 'S', 'Rojo', '1', '142000', '1615691564'),
(104, 87, 'corazas maxxis', 'S', 'Rojo', '4', '20000', '1616106163'),
(105, 87, 'corazas maxxis', 'S', 'Rojo', '2', '20000', '1616106302');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Sobre nosotros', '<p style=\"text-align: center;\">43843y8r4y43uigruyg43yur4yu4uy34yu34yu34</p><p style=\"text-align: justify;\"> </p>', 'about-banner.jpg', 'tienda.com - Sobre nosotros', 'sobre, sobre nosotros, sobre moda, sobre empresa, sobre ...', 'tienda.com te ha hecho brillar en tu d ...', 'Preguntas más frecuentes', 'faq-banner.jpg', 'tienda.com - Preguntas frecuentes', '', '', 'Blog', 'blog-banner.jpg', 'Comercio electrónico - Blog', '', '', 'Contáctenos', 'contact-banner.jpg', 'Comercio electrónico - Galería de fotos', '', '', 'Galería de fotos', 'pgallery-banner.jpg', 'Comercio electrónico - Galería de fotos', '', '', 'Galeria de VIDEOS', 'vgallery-banner.jpg', 'Comercio electrónico - Galería de videos', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(90, 6, 'camilo ballesteros', 'ballesterosvillalbacamiloandre@gmail.com', '2021-03-13 21:31:08', '', 142000, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1615689068'),
(91, 6, 'camilo ballesteros', 'ballesterosvillalbacamiloandre@gmail.com', '2021-03-13 22:12:44', '', 142000, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1615691564'),
(92, 6, 'camilo ballesteros', 'ballesterosvillalbacamiloandre@gmail.com', '2021-03-18 17:22:43', '', 80000, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1616106163'),
(93, 6, 'camilo ballesteros', 'ballesterosvillalbacamiloandre@gmail.com', '2021-03-18 17:25:02', '', 40000, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1616106302');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(86, 'Timon PRO FRS 800MM', '142000', '142000', 8, 'product-featured-86.jpg', '<div style=\"color: rgb(212, 212, 212);\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><span style=\"background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis corporis reprehenderit voluptates quidem quibusdam adipisci, enim dolor quo ipsam accusantium ab quae dolore eum, tempora sapiente architecto illo placeat. Eaque!</span></div>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis corporis reprehenderit voluptates quidem quibusdam adipisci, enim dolor quo ipsam accusantium ab quae dolore eum, tempora sapiente architecto illo placeat. Eaque!', '', '', '', 22, 1, 1, 1),
(87, 'corazas maxxis', '20000', '20000', 0, 'product-featured-87.png', '<p>descripcion del producto</p>', '<p>descripcion del producto<br></p>', '<p>descripcion del producto<br></p>', '<p>descripcion del producto<br></p>', '<p>descripcion del producto<br></p>', 8, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(244, 1, 86),
(245, 2, 86),
(246, 6, 86),
(251, 1, 87),
(252, 2, 87);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(8, '8.jpg', 4),
(13, '13.jpg', 8),
(14, '14.jpg', 8),
(15, '15.jpg', 9),
(16, '16.jpg', 16),
(17, '17.jpg', 16),
(18, '18.jpg', 16),
(19, '19.jpg', 16),
(20, '20.jpg', 17),
(21, '21.jpg', 17),
(22, '22.jpg', 17),
(23, '23.jpg', 18),
(24, '24.jpg', 18),
(25, '25.jpg', 18),
(26, '26.jpg', 18),
(27, '27.jpg', 19),
(28, '28.jpg', 19),
(29, '29.jpg', 19),
(30, '30.jpg', 20),
(31, '31.jpg', 20),
(32, '32.jpg', 21),
(33, '33.jpg', 21),
(34, '34.jpg', 22),
(35, '35.jpg', 22),
(36, '36.jpg', 23),
(37, '37.jpg', 23),
(38, '38.jpg', 24),
(39, '39.jpg', 24),
(40, '40.jpg', 25),
(41, '41.jpg', 25),
(42, '42.jpg', 26),
(43, '43.jpg', 26),
(44, '44.jpg', 27),
(45, '45.jpg', 27),
(46, '46.jpg', 28),
(47, '47.jpg', 28),
(48, '48.jpg', 29),
(49, '49.jpg', 29),
(50, '50.jpg', 31),
(51, '51.jpg', 31),
(52, '52.jpg', 32),
(53, '53.jpg', 32),
(56, '56.jpg', 34),
(57, '57.jpg', 35),
(59, '59.jpg', 38),
(60, '60.jpg', 38),
(61, '61.jpg', 42),
(62, '62.jpg', 42),
(63, '63.jpg', 42),
(107, '107.jpg', 86),
(108, '108.jpg', 86),
(109, '109.jpg', 87),
(110, '110.jpg', 87);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(307, 2, 86),
(308, 3, 86),
(315, 2, 87),
(316, 3, 87),
(317, 4, 87);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Devoluciones fáciles', 'Devuelva cualquier artículo antes de los 15 días. No se hicieron preguntas...', 'service-5.png'),
(6, 'Envío gratis', 'Disfrute de envío gratis en EAU Más países por ser ...', 'service-6.png'),
(7, 'Entrega rápida', 'Los artículos se envían en 24 horas.', 'service-7.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpeg', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2021', 'Fusagasugá, Cundinamarca', 'correo@correo.com', '+57 3202075715', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d18924.515566001242!2d-74.38795566531493!3d4.337793007469785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f04f7770f3b97%3A0x90b173ecbe09c570!2sFusagasug%C3%A1%2C%20Cundinamarca!5e0!3m2!1ses!2sco!4v1614563129335!5m2!1ses!2sco\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '', '', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uEV4RqqnlSE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4, 4, 5, 5, 4, 4, 4, 'Fashionys.com | Online Garments Shop', 'fashionys, garments shop, online garments, dubai garments', 'fashionys.com is an online garments shop.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Bienvenido a nuestro sitio web de comercio electrónico\r\n', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'PRODUCTOS DESTACADOS', 'Vea todos nuestros productos destacados desde aquí', 'últimos productos', 'See all our latest products from here', 'Productos Populares', 'Vea todos nuestros últimos productos desde aquí', 'Testimonios', 'Vea lo que nuestros clientes dicen de nosotros.', 'testimonial.jpg', 'Blog más reciente', '\r\nVea todos nuestros últimos artículos y noticias a continuación', 'Suscríbase a nuestro boletín para conocer las últimas promociones y descuentos.', 'camibal1995@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: USA', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '0'),
(2, 167, '10'),
(3, 13, '8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Bienvenido', 'Compre en línea los últimos accesorios de mujer', 'Comprar accesorios para mujer', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', '50% de descuento en todos los productos', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Leer más', '#', 'Center'),
(3, 'slider-3.jpg', 'Atención al cliente 24 horas', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Leer más', '#', 'Right');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(11, 'camibal1995@gmail.com', '2021-02-05', '2021-02-05 22:06:02', '670faa12de1d4f0a76d271935c8c7732', 1),
(12, 'ballesterosvillalbacamiloandre2@gmail.com', '2021-03-01', '2021-03-01 03:40:04', '9a5597c93a55020ae8e0d2843ba1431c', 0),
(13, 'cambal.newrona.net@gmail.com', '2021-02-28', '2021-02-28 23:00:54', 'f995dd9b23781490500e86516c2250d4', 0),
(14, 'fdgdfgd@dfdsf.com', '2021-02-28', '2021-02-28 23:04:00', 'f776face4169b614d5a691d9c31f1828', 0),
(15, 'ballesterosvillalbacamiloandre3@gmail.com', '2021-02-28', '2021-02-28 23:09:55', 'de342c9510a40534234b14cca3713265', 0),
(16, 'ballesterosvillalbacamiloandre4@gmail.com', '2021-02-28', '2021-02-28 23:11:46', 'aafc0d4aac589cbcd4513b8b1d40f775', 0),
(17, 'ballesterosvillalbacamiloandre@gmail.com', '2021-02-28', '2021-02-28 23:12:16', 'cfe054bf41319ae2900beb169b49e341', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'BMX', 1),
(2, 'MTB', 1),
(3, 'tgbtyb', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_upload_videos`
--

CREATE TABLE `tbl_upload_videos` (
  `id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_upload_videos`
--

INSERT INTO `tbl_upload_videos` (`id`, `video`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uEV4RqqnlSE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'camilo ballesteros', 'camibal1995@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', 'user-1.jpg', 'Super Admin', 'Active'),
(13, 'Syed Hammad Hassan Bukhari', 'mc170200216@vu.edu.pk', '', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indices de la tabla `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indices de la tabla `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indices de la tabla `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indices de la tabla `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indices de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indices de la tabla `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indices de la tabla `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indices de la tabla `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indices de la tabla `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indices de la tabla `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indices de la tabla `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indices de la tabla `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indices de la tabla `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indices de la tabla `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indices de la tabla `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indices de la tabla `tbl_upload_videos`
--
ALTER TABLE `tbl_upload_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT de la tabla `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT de la tabla `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de la tabla `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de la tabla `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_upload_videos`
--
ALTER TABLE `tbl_upload_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
