-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2018 a las 20:24:01
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `publicarte2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblactivitylog`
--

CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblactivitylog`
--

INSERT INTO `tblactivitylog` (`id`, `description`, `date`, `staffid`) VALUES
(1, 'New Customer Group Created [ID:1, Name:Grupo1]', '2017-10-24 22:21:31', ' '),
(2, 'New Client Created [UNIVERSIDAD POLITECNICA DE VICTORIA From Staff: 1]', '2017-10-24 22:24:25', ' '),
(3, 'Failed to send email template [<a href=\"http://localhost:8888/publicarte/admin/emails/email_template/1\">New Contact Added/Registered (Welcome Email)</a>] [Reason: Email template is disabled.]', '2017-10-24 22:25:27', ' '),
(4, 'Contact Created [Oscar Ballesteros]', '2017-10-24 22:25:27', ' '),
(5, 'Customer Info Updated [UNIVERSIDAD POLITECNICA DE VICTORIA]', '2017-10-24 22:25:52', ' '),
(6, 'Items Group Created [Name: Offset]', '2017-10-24 22:28:48', ' '),
(7, 'New Invoice Item Added [ID:1, Impresion de invitaciones de 5x 4]', '2017-10-24 22:31:29', ' '),
(8, 'Invoice Status Updated [Invoice Number: INV-000001, From: Por Pagar To: Pagada Parcialmente]', '2017-10-24 22:46:37', ' '),
(9, 'Payment Recorded [ID:1, Invoice Number: INV-000001, Total: $100.00]', '2017-10-24 22:46:37', ' '),
(10, 'Failed to send email template [<a href=\"http://localhost:8888/publicarte/admin/emails/email_template/6\">Invoice Payment Recorded (Sent to Customer)</a>] [Reason: Email template is disabled.]', '2017-10-24 22:46:38', ' '),
(11, 'Failed Login Attempt [Email:ojasso@gmail.com, Is Staff Member:No, IP:::1]', '2017-10-24 23:03:04', NULL),
(12, 'Contact Updated [Oscar Ballesteros]', '2017-10-24 23:04:33', ' '),
(13, 'New Tax Added [ID: 1, IVA]', '2017-10-24 23:58:22', ' '),
(14, 'New Currency Added [ID: MNX]', '2017-10-24 23:59:06', ' '),
(15, 'Currency Deleted [2]', '2017-10-24 23:59:15', ' '),
(16, 'Payment Mode Updated [ID: 1, Name:Efectivo]', '2017-10-25 00:00:01', ' '),
(17, 'New Payment Mode Added [ID: 2, Name:Cheque]', '2017-10-25 00:00:18', ' '),
(18, 'New Payment Mode Added [ID: 3, Name:Transferencia bancaria]', '2017-10-25 00:00:36', ' '),
(19, 'Staff Member Updated [ID: 1, Omar Jasso]', '2017-10-25 00:04:16', 'Omar Jasso'),
(20, 'Staff Member Updated [ID: 1, Omar Jasso]', '2017-10-25 00:05:18', 'Omar Jasso'),
(21, 'Role Updated [ID: 1.Empleado de ventas]', '2017-10-25 00:10:31', 'Omar Jasso'),
(22, 'New Role Added [ID: 2.Contador]', '2017-10-25 00:12:26', 'Omar Jasso'),
(23, 'New Department Added [Taller, ID: 1]', '2017-10-25 00:16:29', 'Omar Jasso'),
(24, 'New Staff Member Added [ID: 2, Ricardo Avendaño]', '2017-10-25 09:41:01', 'Omar Jasso'),
(25, 'Staff Member Updated [ID: 2, Ricardo Avendaño]', '2017-10-25 09:43:14', 'Omar Jasso'),
(26, 'Invoice Item Updated [ID: 1, Impresion de invitaciones de 5x 4]', '2017-10-25 10:02:10', 'Ricardo Avendaño'),
(27, 'Staff Member Deleted [Name: Ricardo Avendaño, Data Transferred To: Omar Jasso]', '2017-10-26 08:59:37', 'Omar Jasso'),
(28, 'New Staff Member Added [ID: 3, Ricardo Avendaño]', '2017-10-26 09:00:32', 'Omar Jasso'),
(29, 'Staff Member Updated [ID: 3, Ricardo Avendaño]', '2017-10-26 09:01:39', 'Omar Jasso'),
(30, 'Staff Member Updated [ID: 3, Ricardo Avendaño]', '2017-10-26 09:02:57', 'Omar Jasso'),
(31, 'Customer Info Updated [Secretaria de DEsarrollo]', '2017-10-26 09:08:29', 'Ricardo Avendaño'),
(32, 'Contact Updated [Luis Guerra]', '2017-10-26 09:11:13', 'Ricardo Avendaño'),
(33, 'New Client Created [sadad From Staff: 3]', '2017-10-26 12:30:05', 'Ricardo Avendaño'),
(34, 'New Client Created [Hielo y agua de victoria From Staff: 3]', '2017-10-26 12:53:32', 'Ricardo Avendaño'),
(35, 'New Custom Field Added [Observaciones]', '2017-10-26 14:36:52', 'Omar Jasso'),
(36, 'Custom Field Deleted [1]', '2017-10-26 14:40:05', 'Omar Jasso'),
(37, 'Client Deleted [2]', '2017-10-26 14:41:00', 'Omar Jasso'),
(38, 'Customer Group Updated [ID:1]', '2017-10-26 14:41:56', 'Omar Jasso'),
(39, 'New Customer Group Created [ID:2, Name:Particular]', '2017-10-26 14:42:27', 'Omar Jasso'),
(40, 'Email Template Updated [Send Proposal to Customer]', '2017-10-26 14:49:24', 'Omar Jasso'),
(41, 'New Proposal Created [ID:1]', '2017-10-26 16:54:21', 'Omar Jasso'),
(42, 'Customer Info Updated [Hielo y agua de victoria]', '2017-10-26 19:00:15', 'Omar Jasso'),
(43, 'Failed to send email template [<a href=\"http://localhost:8888/publicarte/admin/emails/email_template/1\">New Contact Added/Registered (Welcome Email)</a>] [Reason: Email template is disabled.]', '2017-10-26 19:29:49', 'Omar Jasso'),
(44, 'Contact Created [Pedro Garcia]', '2017-10-26 19:29:49', 'Omar Jasso'),
(45, 'New Custom Field Added [Observaciones]', '2017-10-26 19:47:41', 'Omar Jasso'),
(46, 'Custom Field Updated [Observaciones]', '2017-10-26 19:49:28', 'Omar Jasso'),
(47, 'New Custom Field Added [Acabado de trabajo]', '2017-10-26 19:51:37', 'Omar Jasso'),
(48, 'Custom Field Updated [Observaciones]', '2017-10-26 19:53:22', 'Omar Jasso'),
(49, 'Custom Field Updated [Acabado de trabajo]', '2017-10-26 19:54:51', 'Omar Jasso'),
(50, 'Custom Field Updated [Observaciones]', '2017-10-26 19:55:15', 'Omar Jasso'),
(51, 'Customer Info Updated [Hielo y agua de victoria]', '2017-10-26 21:03:12', 'Omar Jasso'),
(52, 'Custom Field Updated [Observaciones]', '2017-10-26 21:05:18', 'Omar Jasso'),
(53, 'Custom Field Updated [Acabado de trabajo]', '2017-10-26 21:05:39', 'Omar Jasso'),
(54, 'New Proposal Created [ID:2]', '2017-10-26 22:26:59', 'Omar Jasso'),
(55, 'New Customer Group Created [ID:3, Name:Público General]', '2017-10-26 22:31:43', 'Omar Jasso'),
(56, 'New Client Created [Público General From Staff: 1]', '2017-10-26 22:32:36', 'Omar Jasso'),
(57, 'New Proposal Created [ID:3]', '2017-10-26 22:36:02', 'Omar Jasso'),
(58, 'New Proposal Created [ID:4]', '2017-10-27 00:18:09', 'Omar Jasso'),
(59, 'New Proposal Created [ID:5]', '2017-10-27 00:37:57', 'Omar Jasso'),
(60, 'New Proposal Created [ID:6]', '2017-10-27 08:34:58', 'Omar Jasso'),
(61, 'Staff Member Updated [ID: 3, Ricardo Avendaño]', '2017-10-27 08:38:25', 'Omar Jasso'),
(62, 'Staff Member Updated [ID: 3, Guillermo Avendaño]', '2017-10-27 08:38:49', 'Omar Jasso'),
(63, 'New Department Added [Serigrafia, ID: 2]', '2017-10-27 11:08:40', 'Guillermo Avendaño'),
(64, 'New Department Added [Offset, ID: 3]', '2017-10-27 11:08:51', 'Guillermo Avendaño'),
(65, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:06:54', NULL),
(66, 'Failed Login Attempt [Email:ojasso@gmail.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:07:42', NULL),
(67, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.149]', '2017-10-29 10:39:20', NULL),
(68, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.149]', '2017-10-29 10:39:58', NULL),
(69, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.149]', '2017-10-29 10:41:21', NULL),
(70, 'New Proposal Created [ID:7]', '2017-10-30 21:37:58', 'Guillermo Avendaño'),
(71, 'New Client Created [Damtec S.A. de C.V. From Staff: 3]', '2017-10-30 22:33:21', 'Guillermo Avendaño'),
(72, 'Contact Created [Mario Hu Rdz]', '2017-10-30 22:35:52', 'Guillermo Avendaño'),
(73, 'Contact Created [Alejandro  Marti]', '2017-10-30 22:37:02', 'Guillermo Avendaño'),
(74, 'New Invoice Item Added [ID:2, Escaneo a color]', '2017-10-30 22:47:19', 'Guillermo Avendaño'),
(75, 'Items Group Created [Name: Papel]', '2017-10-30 22:48:02', 'Guillermo Avendaño'),
(76, 'Items Group Created [Name: Escaneo]', '2017-10-30 22:48:11', 'Guillermo Avendaño'),
(77, 'Items Group Created [Name: Impresión]', '2017-10-30 22:48:18', 'Guillermo Avendaño'),
(78, 'Invoice Item Updated [ID: 2, Escaneo a color]', '2017-10-30 22:49:20', 'Guillermo Avendaño'),
(79, 'New Proposal Created [ID:8]', '2017-10-30 22:55:19', 'Guillermo Avendaño'),
(80, 'Proposal Status Changes [ProposalID:8, Status:Aceptada,Client Action: 0]', '2017-10-30 22:59:03', 'Guillermo Avendaño'),
(81, 'Proposal Converted to Estimate [EstimateID: 5, ProposalID: 8]', '2017-10-30 22:59:23', 'Guillermo Avendaño'),
(82, 'New Client Created [TRANSPAIS From Staff: 3]', '2017-11-04 11:33:09', 'Guillermo Avendaño'),
(83, 'Contact Created [MONICA  GUEVARA]', '2017-11-04 11:35:26', 'Guillermo Avendaño'),
(84, 'Contact Created [santiago  sosa]', '2017-11-04 11:50:22', 'Guillermo Avendaño'),
(85, 'New Proposal Created [ID:9]', '2017-11-04 11:55:36', 'Guillermo Avendaño'),
(86, 'Proposal Updated [ID:9]', '2017-11-04 11:59:46', 'Guillermo Avendaño'),
(87, 'Proposal Converted to Estimate [EstimateID: 6, ProposalID: 9]', '2017-11-04 12:10:22', 'Guillermo Avendaño'),
(88, 'Contact Created [luis lopez]', '2017-11-15 09:09:24', 'Guillermo Avendaño'),
(89, 'Contact Created [carlos perez]', '2017-11-15 09:10:53', 'Guillermo Avendaño'),
(90, 'Contact Updated [carlos perez]', '2017-11-15 09:11:58', 'Guillermo Avendaño'),
(91, 'Contact Updated [MONICA  GUEVARA]', '2017-11-15 09:12:29', 'Guillermo Avendaño'),
(92, 'Contact Created [pedro navajas]', '2017-11-15 20:52:28', 'Guillermo Avendaño'),
(93, 'Contact Updated [pedro navajas]', '2017-11-18 20:46:56', 'Guillermo Avendaño'),
(94, 'Contact Updated [pedro navajas]', '2017-11-18 20:47:09', 'Guillermo Avendaño'),
(95, 'Contact Updated [pedro navajas]', '2017-11-18 20:47:21', 'Guillermo Avendaño'),
(96, 'Contact Created [jorge luna]', '2017-11-18 21:06:29', 'Guillermo Avendaño'),
(97, 'Contact Updated [jorge luna]', '2017-11-18 21:07:27', 'Guillermo Avendaño'),
(98, 'New Proposal Created [ID:10]', '2017-11-21 12:20:27', 'Guillermo Avendaño'),
(99, 'New Client Created [Juan perez From Staff: 3]', '2017-11-29 10:46:41', 'Guillermo Avendaño'),
(100, 'New Client Created [Paseo Aventa From Staff: 3]', '2017-11-29 10:47:21', 'Guillermo Avendaño'),
(101, 'New Proposal Created [ID:11]', '2017-12-02 23:06:34', 'Guillermo Avendaño'),
(102, 'New Client Created [empresa 1 From Staff: 3]', '2017-12-06 22:13:46', 'Guillermo Avendaño'),
(103, 'Contact Created [juan perez]', '2017-12-06 22:14:04', 'Guillermo Avendaño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`) VALUES
(1, 'Secretaria de DEsarrollo', 'SED456789AC3', '8342140000', 142, 'Victoria', '87000', 'Victoria', 'Parque bicentenario', 'www.gob.tam.mx', '2017-10-24 22:24:25', 1, NULL, 'Avenida nuevas Tecnologias', 'Victoria', 'Victoria', '87138', 142, 'Avenida nuevas Tecnologias', 'Victoria', 'Victoria', '87138', 142, '', '', 'spanish', 1, 0),
(3, 'Hielo y agua de victoria', 'HAV678976AS4', '1233-455', 142, '', '', '', '', '', '2017-10-26 12:53:32', 1, NULL, '', '', '', '', 0, '', '', '', '', 142, NULL, NULL, NULL, 0, 1),
(4, 'Público General', '', '', 142, '', '', '', '', '', '2017-10-26 22:32:36', 1, NULL, '', '', '', '', 0, '', '', '', '', 142, NULL, NULL, NULL, 0, 1),
(5, 'Damtec S.A. de C.V.', 'ROCM898765H67', '8341266776', 142, 'Victoria', '87040', 'Tamaulipas', 'Sonora 144', 'www.damtec.mx', '2017-10-30 22:33:21', 1, NULL, 'Sonora 144', 'Victoria', 'Tamaulipas', '87040', 142, 'Sonora 144', 'Victoria', 'Tamaulipas', '87040', 142, NULL, NULL, NULL, 3, 1),
(6, 'TRANSPAIS', 'TUN09028GB8', '83484611', 142, 'CIUDAD VICTORIA', '87000', 'TAMAULIPAS', 'CARRERA TORRES 2315 OTE', '', '2017-11-04 11:33:09', 1, NULL, '', '', '', '', 0, '', '', '', '', 142, NULL, NULL, NULL, 0, 0),
(7, 'Juan perez', '', '', 142, '', '', '', '', '', '2017-11-29 10:46:41', 1, NULL, '', '', '', '', 0, '', '', '', '', 142, NULL, NULL, NULL, 0, 0),
(8, 'Paseo Aventa', '', '', 142, '', '', '', '', '', '2017-11-29 10:47:21', 1, NULL, '', '', '', '', 0, '', '', '', '', 142, NULL, NULL, NULL, 0, 0),
(9, 'empresa 1', '', '', 142, '', '', '', '', '', '2017-12-06 22:13:46', 1, NULL, '', '', '', '', 0, '', '', '', '', 142, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcommentlikes`
--

CREATE TABLE `tblcommentlikes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontactpermissions`
--

CREATE TABLE `tblcontactpermissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcontactpermissions`
--

INSERT INTO `tblcontactpermissions` (`id`, `permission_id`, `userid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 2),
(8, 2, 2),
(9, 3, 2),
(10, 4, 2),
(11, 5, 2),
(12, 1, 3),
(13, 2, 3),
(14, 3, 3),
(15, 4, 3),
(16, 5, 3),
(17, 6, 3),
(18, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(300) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `allowed_payment_modes` mediumtext,
  `email_for_invoice` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `allowed_payment_modes`, `email_for_invoice`) VALUES
(1, 1, 1, 'Luis', 'Guerra', 'luis@gob.mx', '1711100', 'Director', '2017-10-24 22:25:27', '$2a$08$r1Z5lI5uUV6da7kAS4dP2efaUtuvreIiK/C6Ljaju0X9P/t5ruMM6', NULL, NULL, '::1', '2017-10-24 23:05:19', '2017-10-26 09:11:13', 1, NULL, '', NULL, NULL),
(2, 3, 1, 'Pedro', 'Garcia', 'a@d', '', 'Representante', '2017-10-26 19:29:49', '$2a$08$PRzibVF/SBKlnffOcWUXr.W6z2Gb50cr5rhuXZmZps5uitO.0B5ge', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', NULL, NULL),
(3, 5, 0, 'Mario Hu', 'Rdz', 'systemas@gmail.com', '8348781234', 'Director TI', '2017-10-30 22:35:52', '$2a$08$f/02aJv.Z8iht4M41mO55Oi52LCIMsA2Negn4OsxFj/MVvpRnrSve', NULL, NULL, '187.161.235.213', '2017-10-30 22:38:53', NULL, 1, NULL, 'ltr', NULL, NULL),
(4, 5, 1, 'Alejandro ', 'Marti', 'damtec.dev@gmail.com', '876678912', 'Gerente', '2017-10-30 22:37:02', '$2a$08$a6v.ryokm37G1LkjMiBIdeEui0dFxvIhqO9t4fhEYkFwY/7YaQG1m', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'ltr', NULL, NULL),
(5, 6, 1, 'MONICA ', 'GUEVARA', 'monica.guevara@transpais.com', '3184611  ext 1232', 'TRANSPAIS RUTAS', '2017-11-04 11:35:26', '$2a$08$xW3usfj7eoDvjnmmThTAEOgKOV0Es05U4V2hcecjlMlOKd2C0ox9a', NULL, NULL, NULL, NULL, '2017-11-15 09:12:29', 1, NULL, '', NULL, NULL),
(6, 6, 0, 'santiago ', 'sosa', 'santiago.sosa@transpais.com', '8341261737', 'transporte', '2017-11-04 11:50:22', '$2a$08$HHMzJud12dxmOukBv9kku.vzdpK1uJUd0xNLVXgRApZ3Zd5MODc.y', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', NULL, NULL),
(9, 5, 0, 'pedro', 'navajas', 'pdro@nav.com', '', 'jefe', '2017-11-15 20:52:28', '$2a$08$KT9WHDoChusJPIf9pgU8mOzMd4iz3.E9jQZiQjSlmdJHZXbJ1cj46', NULL, NULL, NULL, NULL, '2017-11-18 20:47:21', 1, NULL, '', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', NULL),
(10, 5, 0, 'jorge', 'luna', 'jorge@lmace.com', '1234567', 'jefe almacen', '2017-11-18 21:06:29', '$2a$08$lJ8TEAfeAcBj6V4oHid9d.EQhUbJ4I9qJxhnw5Y.uYgGuDEVZ.j3q', NULL, NULL, NULL, NULL, '2017-11-18 21:07:27', 1, NULL, '', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', 'comp@almacen.com'),
(11, 9, 1, 'juan', 'perez', 's@s.coim', '', '', '2017-12-06 22:14:04', '$2a$08$MJfHsgwNJLPkYe41AHGOnu1emqj8o0138v1soeRdgBWYjXSyncd66', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 'a:1:{i:0;s:1:\"1\";}', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontractrenewals`
--

CREATE TABLE `tblcontractrenewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(11,2) DEFAULT NULL,
  `new_value` decimal(11,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext,
  `description` text,
  `subject` varchar(300) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(11,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcontracttypes`
--

CREATE TABLE `tblcontracttypes` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `isdefault`) VALUES
(3, '$', 'MNX', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomeradmins`
--

CREATE TABLE `tblcustomeradmins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomerfiles_shares`
--

CREATE TABLE `tblcustomerfiles_shares` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomergroups_in`
--

CREATE TABLE `tblcustomergroups_in` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcustomergroups_in`
--

INSERT INTO `tblcustomergroups_in` (`id`, `groupid`, `customer_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 4),
(4, 2, 5),
(5, 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomersgroups`
--

CREATE TABLE `tblcustomersgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcustomersgroups`
--

INSERT INTO `tblcustomersgroups` (`id`, `name`) VALUES
(1, 'Gobierno'),
(2, 'Particular'),
(3, 'Público General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `display_inline` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcustomfields`
--

INSERT INTO `tblcustomfields` (`id`, `fieldto`, `name`, `slug`, `required`, `type`, `options`, `display_inline`, `field_order`, `active`, `show_on_pdf`, `show_on_ticket_form`, `only_admin`, `show_on_table`, `show_on_client_portal`, `disalow_client_to_edit`, `bs_column`) VALUES
(2, 'estimate', 'Observaciones', 'estimate_observaciones', 0, 'textarea', '', 0, 3, 1, 1, 0, 0, 0, 1, 1, 12),
(3, 'estimate', 'Acabado de trabajo', 'estimate_acabado_de_trabajo', 0, 'textarea', '', 0, -5, 1, 1, 0, 0, 0, 0, 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcustomfieldsvalues`
--

INSERT INTO `tblcustomfieldsvalues` (`id`, `relid`, `fieldid`, `fieldto`, `value`) VALUES
(1, 3, 3, 'estimate', 'ACABADO'),
(2, 3, 2, 'estimate', 'OBSERVACIONES'),
(3, 4, 3, 'estimate', 'acabado '),
(4, 4, 2, 'estimate', 'onbser');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbldepartments`
--

INSERT INTO `tbldepartments` (`departmentid`, `name`, `imap_username`, `email`, `host`, `password`, `encryption`, `delete_after_import`, `calendar_id`, `hidefromclient`) VALUES
(1, 'Taller', '', '', '', '', '', 0, '', 0),
(2, 'Serigrafia', '', '', '', '', '', 0, '', 0),
(3, 'Offset', '', '', '', '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldismissedannouncements`
--

CREATE TABLE `tbldismissedannouncements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblemaillists`
--

CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /> <br />We just wanted to say welcome.<br /> <br />Please contact us if you need any help.<br /> <br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /> <br />Kind Regards, <br />{email_signature}<br /> <br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}<br /><br /></a>Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Payment recorded for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'On your command here is the invoice', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}<br /></a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /> <br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname} {staff_lastname}<br /> <br />A comment has been made on the following task:<br /> <br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /> <br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-marked-as-finished', 'english', 'Task Marked as Finished (Sent to Staff)', 'Task Marked as Finished - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked the following task as complete:</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(18, 'tasks', 'task-added-attachment', 'english', 'New Attachment on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname} {staff_lastname}<br /> <br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /> <br /><strong>Name:</strong> {task_name}<br /> <br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(19, 'tasks', 'task-unmarked-as-finished', 'english', 'Task Unmarked as Finished (Sent to Staff)', 'Task UN-marked as finished - {task_name}', 'Hi {staff_firstname} {staff_lastname}<br /> <br /><strong>{task_user_take_action}</strong> marked the task as in-complete / unfinished<br /> <br /><strong>Name:</strong> {task_name}<br /><strong>Due date:</strong> {task_duedate}<br /> <br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(20, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal', 'Dear {proposal_proposal_to}<br /> <br />Please find our attached proposal.<br /> <br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Please don\'t hesitate to comment online if you have any questions.<br /> <br />We look forward to your communication.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(27, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /> <br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /> <br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(30, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the {contract_subject} attached.</span><br /><br /><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created', '<p>Hello {staff_firstname} {staff_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File Uploaded (Sent to Customer Contacts)', 'New Project File Uploaded', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File Uploaded (Sent to Project Members)', 'New Project File Uploaded', '<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hello {staff_firstname} {staff_lastname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hello {staff_firstname} {staff_lastname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(41, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(42, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hello {staff_firstname} {staff_lastname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to setup your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br /> Please set your new password in <strong>48 hours</strong>. After that you wont be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br /> Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(47, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(48, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'tasks', 'task-marked-as-finished-to-contacts', 'english', 'Task Marked as Finished (Sent to customer contacts)', 'Task Marked as Finished - {task_name}', '<div><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked the following task as complete:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></div>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(51, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(53, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(54, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi.</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(56, 'client', 'new-client-created', 'catalan', 'New Contact Added/Registered (Welcome Email) [catalan]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(57, 'invoice', 'invoice-send-to-client', 'catalan', 'Send Invoice to Customer [catalan]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(58, 'ticket', 'new-ticket-opened-admin', 'catalan', 'New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(59, 'ticket', 'ticket-reply', 'catalan', 'Ticket Reply (Sent to Customer) [catalan]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(60, 'ticket', 'ticket-autoresponse', 'catalan', 'New Ticket Opened - Autoresponse [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(61, 'invoice', 'invoice-payment-recorded', 'catalan', 'Invoice Payment Recorded (Sent to Customer) [catalan]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(62, 'invoice', 'invoice-overdue-notice', 'catalan', 'Invoice Overdue Notice [catalan]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(63, 'invoice', 'invoice-already-send', 'catalan', 'Invoice Already Sent to Customer [catalan]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(64, 'ticket', 'new-ticket-created-staff', 'catalan', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(65, 'estimate', 'estimate-send-to-client', 'catalan', 'Send Estimate to Customer [catalan]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(66, 'ticket', 'ticket-reply-to-admin', 'catalan', 'Ticket Reply (Sent to Staff) [catalan]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(67, 'estimate', 'estimate-already-send', 'catalan', 'Estimate Already Sent to Customer [catalan]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(68, 'contract', 'contract-expiration', 'catalan', 'Contract Expiration [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(69, 'tasks', 'task-assigned', 'catalan', 'New Task Assigned (Sent to Staff) [catalan]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(70, 'tasks', 'task-added-as-follower', 'catalan', 'Staff Member Added as Follower on Task [catalan]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(71, 'tasks', 'task-commented', 'catalan', 'New Comment on Task (Sent to Staff) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(72, 'tasks', 'task-marked-as-finished', 'catalan', 'Task Marked as Finished (Sent to Staff) [catalan]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(73, 'tasks', 'task-added-attachment', 'catalan', 'New Attachment on Task (Sent to Staff) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(74, 'tasks', 'task-unmarked-as-finished', 'catalan', 'Task Unmarked as Finished (Sent to Staff) [catalan]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(75, 'estimate', 'estimate-declined-to-staff', 'catalan', 'Estimate Declined (Sent to Staff) [catalan]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(76, 'estimate', 'estimate-accepted-to-staff', 'catalan', 'Estimate Accepted (Sent to Staff) [catalan]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(77, 'proposals', 'proposal-client-accepted', 'catalan', 'Customer Action - Accepted (Sent to Staff) [catalan]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(78, 'proposals', 'proposal-send-to-customer', 'catalan', 'Send Proposal to Customer [catalan]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(79, 'proposals', 'proposal-client-declined', 'catalan', 'Customer Action - Declined (Sent to Staff) [catalan]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(80, 'proposals', 'proposal-client-thank-you', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(81, 'proposals', 'proposal-comment-to-client', 'catalan', 'New Comment  (Sent to Customer Contacts) [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(82, 'proposals', 'proposal-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(83, 'estimate', 'estimate-thank-you-to-customer', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(84, 'tasks', 'task-deadline-notification', 'catalan', 'Task Deadline Reminder - Sent to Assigned Members [catalan]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(85, 'contract', 'send-contract', 'catalan', 'Send Contract to Customer [catalan]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(86, 'invoice', 'invoice-payment-recorded-to-staff', 'catalan', 'Invoice Payment Recorded (Sent to Staff) [catalan]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(87, 'ticket', 'auto-close-ticket', 'catalan', 'Auto Close Ticket [catalan]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(88, 'project', 'new-project-discussion-created-to-staff', 'catalan', 'New Project Discussion (Sent to Project Members) [catalan]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(89, 'project', 'new-project-discussion-created-to-customer', 'catalan', 'New Project Discussion (Sent to Customer Contacts) [catalan]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(90, 'project', 'new-project-file-uploaded-to-customer', 'catalan', 'New Project File Uploaded (Sent to Customer Contacts) [catalan]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(91, 'project', 'new-project-file-uploaded-to-staff', 'catalan', 'New Project File Uploaded (Sent to Project Members) [catalan]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(92, 'project', 'new-project-discussion-comment-to-customer', 'catalan', 'New Discussion Comment  (Sent to Customer Contacts) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(93, 'project', 'new-project-discussion-comment-to-staff', 'catalan', 'New Discussion Comment (Sent to Project Members) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(94, 'project', 'staff-added-as-project-member', 'catalan', 'Staff Added as Project Member [catalan]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(95, 'estimate', 'estimate-expiry-reminder', 'catalan', 'Estimate Expiration Reminder [catalan]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(96, 'proposals', 'proposal-expiry-reminder', 'catalan', 'Proposal Expiration Reminder [catalan]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(97, 'staff', 'new-staff-created', 'catalan', 'New Staff Created (Welcome Email) [catalan]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(98, 'client', 'contact-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(99, 'client', 'contact-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(100, 'client', 'contact-set-password', 'catalan', 'Set New Password [catalan]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(101, 'staff', 'staff-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(102, 'staff', 'staff-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(103, 'project', 'assigned-to-project', 'catalan', 'New Project Created (Sent to Customer Contacts) [catalan]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(104, 'tasks', 'task-marked-as-finished-to-contacts', 'catalan', 'Task Marked as Finished (Sent to customer contacts) [catalan]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(105, 'tasks', 'task-added-attachment-to-contacts', 'catalan', 'New Attachment on Task (Sent to Customer Contacts) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(106, 'tasks', 'task-commented-to-contacts', 'catalan', 'New Comment on Task (Sent to Customer Contacts) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(107, 'leads', 'new-lead-assigned', 'catalan', 'New Lead Assigned to Staff Member [catalan]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(108, 'client', 'client-statement', 'catalan', 'Statement - Account Summary [catalan]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(109, 'ticket', 'ticket-assigned-to-admin', 'catalan', 'New Ticket Assigned (Sent to Staff) [catalan]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(110, 'client', 'new-client-registered-to-admin', 'catalan', 'New Customer Registration (Sent to admins) [catalan]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(111, 'client', 'new-client-created', 'chinese', 'New Contact Added/Registered (Welcome Email) [chinese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(112, 'invoice', 'invoice-send-to-client', 'chinese', 'Send Invoice to Customer [chinese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(113, 'ticket', 'new-ticket-opened-admin', 'chinese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(114, 'ticket', 'ticket-reply', 'chinese', 'Ticket Reply (Sent to Customer) [chinese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(115, 'ticket', 'ticket-autoresponse', 'chinese', 'New Ticket Opened - Autoresponse [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(116, 'invoice', 'invoice-payment-recorded', 'chinese', 'Invoice Payment Recorded (Sent to Customer) [chinese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(117, 'invoice', 'invoice-overdue-notice', 'chinese', 'Invoice Overdue Notice [chinese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(118, 'invoice', 'invoice-already-send', 'chinese', 'Invoice Already Sent to Customer [chinese]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(119, 'ticket', 'new-ticket-created-staff', 'chinese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(120, 'estimate', 'estimate-send-to-client', 'chinese', 'Send Estimate to Customer [chinese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(121, 'ticket', 'ticket-reply-to-admin', 'chinese', 'Ticket Reply (Sent to Staff) [chinese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(122, 'estimate', 'estimate-already-send', 'chinese', 'Estimate Already Sent to Customer [chinese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(123, 'contract', 'contract-expiration', 'chinese', 'Contract Expiration [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(124, 'tasks', 'task-assigned', 'chinese', 'New Task Assigned (Sent to Staff) [chinese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(125, 'tasks', 'task-added-as-follower', 'chinese', 'Staff Member Added as Follower on Task [chinese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(126, 'tasks', 'task-commented', 'chinese', 'New Comment on Task (Sent to Staff) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(127, 'tasks', 'task-marked-as-finished', 'chinese', 'Task Marked as Finished (Sent to Staff) [chinese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(128, 'tasks', 'task-added-attachment', 'chinese', 'New Attachment on Task (Sent to Staff) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(129, 'tasks', 'task-unmarked-as-finished', 'chinese', 'Task Unmarked as Finished (Sent to Staff) [chinese]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(130, 'estimate', 'estimate-declined-to-staff', 'chinese', 'Estimate Declined (Sent to Staff) [chinese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(131, 'estimate', 'estimate-accepted-to-staff', 'chinese', 'Estimate Accepted (Sent to Staff) [chinese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(132, 'proposals', 'proposal-client-accepted', 'chinese', 'Customer Action - Accepted (Sent to Staff) [chinese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(133, 'proposals', 'proposal-send-to-customer', 'chinese', 'Send Proposal to Customer [chinese]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(134, 'proposals', 'proposal-client-declined', 'chinese', 'Customer Action - Declined (Sent to Staff) [chinese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(135, 'proposals', 'proposal-client-thank-you', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(136, 'proposals', 'proposal-comment-to-client', 'chinese', 'New Comment  (Sent to Customer Contacts) [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(137, 'proposals', 'proposal-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(138, 'estimate', 'estimate-thank-you-to-customer', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(139, 'tasks', 'task-deadline-notification', 'chinese', 'Task Deadline Reminder - Sent to Assigned Members [chinese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(140, 'contract', 'send-contract', 'chinese', 'Send Contract to Customer [chinese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(141, 'invoice', 'invoice-payment-recorded-to-staff', 'chinese', 'Invoice Payment Recorded (Sent to Staff) [chinese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(142, 'ticket', 'auto-close-ticket', 'chinese', 'Auto Close Ticket [chinese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(143, 'project', 'new-project-discussion-created-to-staff', 'chinese', 'New Project Discussion (Sent to Project Members) [chinese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(144, 'project', 'new-project-discussion-created-to-customer', 'chinese', 'New Project Discussion (Sent to Customer Contacts) [chinese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(145, 'project', 'new-project-file-uploaded-to-customer', 'chinese', 'New Project File Uploaded (Sent to Customer Contacts) [chinese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(146, 'project', 'new-project-file-uploaded-to-staff', 'chinese', 'New Project File Uploaded (Sent to Project Members) [chinese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(147, 'project', 'new-project-discussion-comment-to-customer', 'chinese', 'New Discussion Comment  (Sent to Customer Contacts) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(148, 'project', 'new-project-discussion-comment-to-staff', 'chinese', 'New Discussion Comment (Sent to Project Members) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(149, 'project', 'staff-added-as-project-member', 'chinese', 'Staff Added as Project Member [chinese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(150, 'estimate', 'estimate-expiry-reminder', 'chinese', 'Estimate Expiration Reminder [chinese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(151, 'proposals', 'proposal-expiry-reminder', 'chinese', 'Proposal Expiration Reminder [chinese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(152, 'staff', 'new-staff-created', 'chinese', 'New Staff Created (Welcome Email) [chinese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(153, 'client', 'contact-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(154, 'client', 'contact-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(155, 'client', 'contact-set-password', 'chinese', 'Set New Password [chinese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(156, 'staff', 'staff-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(157, 'staff', 'staff-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(158, 'project', 'assigned-to-project', 'chinese', 'New Project Created (Sent to Customer Contacts) [chinese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(159, 'tasks', 'task-marked-as-finished-to-contacts', 'chinese', 'Task Marked as Finished (Sent to customer contacts) [chinese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(160, 'tasks', 'task-added-attachment-to-contacts', 'chinese', 'New Attachment on Task (Sent to Customer Contacts) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(161, 'tasks', 'task-commented-to-contacts', 'chinese', 'New Comment on Task (Sent to Customer Contacts) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(162, 'leads', 'new-lead-assigned', 'chinese', 'New Lead Assigned to Staff Member [chinese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(163, 'client', 'client-statement', 'chinese', 'Statement - Account Summary [chinese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(164, 'ticket', 'ticket-assigned-to-admin', 'chinese', 'New Ticket Assigned (Sent to Staff) [chinese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(165, 'client', 'new-client-registered-to-admin', 'chinese', 'New Customer Registration (Sent to admins) [chinese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(166, 'client', 'new-client-created', 'dutch', 'New Contact Added/Registered (Welcome Email) [dutch]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(167, 'invoice', 'invoice-send-to-client', 'dutch', 'Send Invoice to Customer [dutch]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(168, 'ticket', 'new-ticket-opened-admin', 'dutch', 'New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(169, 'ticket', 'ticket-reply', 'dutch', 'Ticket Reply (Sent to Customer) [dutch]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(170, 'ticket', 'ticket-autoresponse', 'dutch', 'New Ticket Opened - Autoresponse [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(171, 'invoice', 'invoice-payment-recorded', 'dutch', 'Invoice Payment Recorded (Sent to Customer) [dutch]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(172, 'invoice', 'invoice-overdue-notice', 'dutch', 'Invoice Overdue Notice [dutch]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(173, 'invoice', 'invoice-already-send', 'dutch', 'Invoice Already Sent to Customer [dutch]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(174, 'ticket', 'new-ticket-created-staff', 'dutch', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(175, 'estimate', 'estimate-send-to-client', 'dutch', 'Send Estimate to Customer [dutch]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(176, 'ticket', 'ticket-reply-to-admin', 'dutch', 'Ticket Reply (Sent to Staff) [dutch]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(177, 'estimate', 'estimate-already-send', 'dutch', 'Estimate Already Sent to Customer [dutch]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(178, 'contract', 'contract-expiration', 'dutch', 'Contract Expiration [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(179, 'tasks', 'task-assigned', 'dutch', 'New Task Assigned (Sent to Staff) [dutch]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(180, 'tasks', 'task-added-as-follower', 'dutch', 'Staff Member Added as Follower on Task [dutch]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(181, 'tasks', 'task-commented', 'dutch', 'New Comment on Task (Sent to Staff) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(182, 'tasks', 'task-marked-as-finished', 'dutch', 'Task Marked as Finished (Sent to Staff) [dutch]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(183, 'tasks', 'task-added-attachment', 'dutch', 'New Attachment on Task (Sent to Staff) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(184, 'tasks', 'task-unmarked-as-finished', 'dutch', 'Task Unmarked as Finished (Sent to Staff) [dutch]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(185, 'estimate', 'estimate-declined-to-staff', 'dutch', 'Estimate Declined (Sent to Staff) [dutch]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(186, 'estimate', 'estimate-accepted-to-staff', 'dutch', 'Estimate Accepted (Sent to Staff) [dutch]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(187, 'proposals', 'proposal-client-accepted', 'dutch', 'Customer Action - Accepted (Sent to Staff) [dutch]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(188, 'proposals', 'proposal-send-to-customer', 'dutch', 'Send Proposal to Customer [dutch]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(189, 'proposals', 'proposal-client-declined', 'dutch', 'Customer Action - Declined (Sent to Staff) [dutch]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(190, 'proposals', 'proposal-client-thank-you', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(191, 'proposals', 'proposal-comment-to-client', 'dutch', 'New Comment  (Sent to Customer Contacts) [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(192, 'proposals', 'proposal-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(193, 'estimate', 'estimate-thank-you-to-customer', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(194, 'tasks', 'task-deadline-notification', 'dutch', 'Task Deadline Reminder - Sent to Assigned Members [dutch]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(195, 'contract', 'send-contract', 'dutch', 'Send Contract to Customer [dutch]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(196, 'invoice', 'invoice-payment-recorded-to-staff', 'dutch', 'Invoice Payment Recorded (Sent to Staff) [dutch]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(197, 'ticket', 'auto-close-ticket', 'dutch', 'Auto Close Ticket [dutch]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(198, 'project', 'new-project-discussion-created-to-staff', 'dutch', 'New Project Discussion (Sent to Project Members) [dutch]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(199, 'project', 'new-project-discussion-created-to-customer', 'dutch', 'New Project Discussion (Sent to Customer Contacts) [dutch]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(200, 'project', 'new-project-file-uploaded-to-customer', 'dutch', 'New Project File Uploaded (Sent to Customer Contacts) [dutch]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(201, 'project', 'new-project-file-uploaded-to-staff', 'dutch', 'New Project File Uploaded (Sent to Project Members) [dutch]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(202, 'project', 'new-project-discussion-comment-to-customer', 'dutch', 'New Discussion Comment  (Sent to Customer Contacts) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(203, 'project', 'new-project-discussion-comment-to-staff', 'dutch', 'New Discussion Comment (Sent to Project Members) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(204, 'project', 'staff-added-as-project-member', 'dutch', 'Staff Added as Project Member [dutch]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(205, 'estimate', 'estimate-expiry-reminder', 'dutch', 'Estimate Expiration Reminder [dutch]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(206, 'proposals', 'proposal-expiry-reminder', 'dutch', 'Proposal Expiration Reminder [dutch]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(207, 'staff', 'new-staff-created', 'dutch', 'New Staff Created (Welcome Email) [dutch]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(208, 'client', 'contact-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(209, 'client', 'contact-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(210, 'client', 'contact-set-password', 'dutch', 'Set New Password [dutch]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(211, 'staff', 'staff-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(212, 'staff', 'staff-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(213, 'project', 'assigned-to-project', 'dutch', 'New Project Created (Sent to Customer Contacts) [dutch]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(214, 'tasks', 'task-marked-as-finished-to-contacts', 'dutch', 'Task Marked as Finished (Sent to customer contacts) [dutch]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(215, 'tasks', 'task-added-attachment-to-contacts', 'dutch', 'New Attachment on Task (Sent to Customer Contacts) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(216, 'tasks', 'task-commented-to-contacts', 'dutch', 'New Comment on Task (Sent to Customer Contacts) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(217, 'leads', 'new-lead-assigned', 'dutch', 'New Lead Assigned to Staff Member [dutch]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(218, 'client', 'client-statement', 'dutch', 'Statement - Account Summary [dutch]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(219, 'ticket', 'ticket-assigned-to-admin', 'dutch', 'New Ticket Assigned (Sent to Staff) [dutch]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(220, 'client', 'new-client-registered-to-admin', 'dutch', 'New Customer Registration (Sent to admins) [dutch]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(221, 'client', 'new-client-created', 'french', 'New Contact Added/Registered (Welcome Email) [french]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(222, 'invoice', 'invoice-send-to-client', 'french', 'Send Invoice to Customer [french]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(223, 'ticket', 'new-ticket-opened-admin', 'french', 'New Ticket Opened (Opened by Staff, Sent to Customer) [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(224, 'ticket', 'ticket-reply', 'french', 'Ticket Reply (Sent to Customer) [french]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(225, 'ticket', 'ticket-autoresponse', 'french', 'New Ticket Opened - Autoresponse [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(226, 'invoice', 'invoice-payment-recorded', 'french', 'Invoice Payment Recorded (Sent to Customer) [french]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(227, 'invoice', 'invoice-overdue-notice', 'french', 'Invoice Overdue Notice [french]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(228, 'invoice', 'invoice-already-send', 'french', 'Invoice Already Sent to Customer [french]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(229, 'ticket', 'new-ticket-created-staff', 'french', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [french]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(230, 'estimate', 'estimate-send-to-client', 'french', 'Send Estimate to Customer [french]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(231, 'ticket', 'ticket-reply-to-admin', 'french', 'Ticket Reply (Sent to Staff) [french]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(232, 'estimate', 'estimate-already-send', 'french', 'Estimate Already Sent to Customer [french]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(233, 'contract', 'contract-expiration', 'french', 'Contract Expiration [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(234, 'tasks', 'task-assigned', 'french', 'New Task Assigned (Sent to Staff) [french]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(235, 'tasks', 'task-added-as-follower', 'french', 'Staff Member Added as Follower on Task [french]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(236, 'tasks', 'task-commented', 'french', 'New Comment on Task (Sent to Staff) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(237, 'tasks', 'task-marked-as-finished', 'french', 'Task Marked as Finished (Sent to Staff) [french]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(238, 'tasks', 'task-added-attachment', 'french', 'New Attachment on Task (Sent to Staff) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(239, 'tasks', 'task-unmarked-as-finished', 'french', 'Task Unmarked as Finished (Sent to Staff) [french]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(240, 'estimate', 'estimate-declined-to-staff', 'french', 'Estimate Declined (Sent to Staff) [french]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(241, 'estimate', 'estimate-accepted-to-staff', 'french', 'Estimate Accepted (Sent to Staff) [french]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(242, 'proposals', 'proposal-client-accepted', 'french', 'Customer Action - Accepted (Sent to Staff) [french]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(243, 'proposals', 'proposal-send-to-customer', 'french', 'Send Proposal to Customer [french]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(244, 'proposals', 'proposal-client-declined', 'french', 'Customer Action - Declined (Sent to Staff) [french]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(245, 'proposals', 'proposal-client-thank-you', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(246, 'proposals', 'proposal-comment-to-client', 'french', 'New Comment  (Sent to Customer Contacts) [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(247, 'proposals', 'proposal-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(248, 'estimate', 'estimate-thank-you-to-customer', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(249, 'tasks', 'task-deadline-notification', 'french', 'Task Deadline Reminder - Sent to Assigned Members [french]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(250, 'contract', 'send-contract', 'french', 'Send Contract to Customer [french]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(251, 'invoice', 'invoice-payment-recorded-to-staff', 'french', 'Invoice Payment Recorded (Sent to Staff) [french]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(252, 'ticket', 'auto-close-ticket', 'french', 'Auto Close Ticket [french]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(253, 'project', 'new-project-discussion-created-to-staff', 'french', 'New Project Discussion (Sent to Project Members) [french]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(254, 'project', 'new-project-discussion-created-to-customer', 'french', 'New Project Discussion (Sent to Customer Contacts) [french]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(255, 'project', 'new-project-file-uploaded-to-customer', 'french', 'New Project File Uploaded (Sent to Customer Contacts) [french]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(256, 'project', 'new-project-file-uploaded-to-staff', 'french', 'New Project File Uploaded (Sent to Project Members) [french]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(257, 'project', 'new-project-discussion-comment-to-customer', 'french', 'New Discussion Comment  (Sent to Customer Contacts) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(258, 'project', 'new-project-discussion-comment-to-staff', 'french', 'New Discussion Comment (Sent to Project Members) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(259, 'project', 'staff-added-as-project-member', 'french', 'Staff Added as Project Member [french]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(260, 'estimate', 'estimate-expiry-reminder', 'french', 'Estimate Expiration Reminder [french]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(261, 'proposals', 'proposal-expiry-reminder', 'french', 'Proposal Expiration Reminder [french]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(262, 'staff', 'new-staff-created', 'french', 'New Staff Created (Welcome Email) [french]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(263, 'client', 'contact-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(264, 'client', 'contact-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(265, 'client', 'contact-set-password', 'french', 'Set New Password [french]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(266, 'staff', 'staff-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(267, 'staff', 'staff-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(268, 'project', 'assigned-to-project', 'french', 'New Project Created (Sent to Customer Contacts) [french]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(269, 'tasks', 'task-marked-as-finished-to-contacts', 'french', 'Task Marked as Finished (Sent to customer contacts) [french]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(270, 'tasks', 'task-added-attachment-to-contacts', 'french', 'New Attachment on Task (Sent to Customer Contacts) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(271, 'tasks', 'task-commented-to-contacts', 'french', 'New Comment on Task (Sent to Customer Contacts) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(272, 'leads', 'new-lead-assigned', 'french', 'New Lead Assigned to Staff Member [french]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(273, 'client', 'client-statement', 'french', 'Statement - Account Summary [french]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(274, 'ticket', 'ticket-assigned-to-admin', 'french', 'New Ticket Assigned (Sent to Staff) [french]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(275, 'client', 'new-client-registered-to-admin', 'french', 'New Customer Registration (Sent to admins) [french]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(276, 'client', 'new-client-created', 'german', 'New Contact Added/Registered (Welcome Email) [german]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(277, 'invoice', 'invoice-send-to-client', 'german', 'Send Invoice to Customer [german]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(278, 'ticket', 'new-ticket-opened-admin', 'german', 'New Ticket Opened (Opened by Staff, Sent to Customer) [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(279, 'ticket', 'ticket-reply', 'german', 'Ticket Reply (Sent to Customer) [german]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(280, 'ticket', 'ticket-autoresponse', 'german', 'New Ticket Opened - Autoresponse [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(281, 'invoice', 'invoice-payment-recorded', 'german', 'Invoice Payment Recorded (Sent to Customer) [german]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(282, 'invoice', 'invoice-overdue-notice', 'german', 'Invoice Overdue Notice [german]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(283, 'invoice', 'invoice-already-send', 'german', 'Invoice Already Sent to Customer [german]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(284, 'ticket', 'new-ticket-created-staff', 'german', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [german]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(285, 'estimate', 'estimate-send-to-client', 'german', 'Send Estimate to Customer [german]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(286, 'ticket', 'ticket-reply-to-admin', 'german', 'Ticket Reply (Sent to Staff) [german]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(287, 'estimate', 'estimate-already-send', 'german', 'Estimate Already Sent to Customer [german]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(288, 'contract', 'contract-expiration', 'german', 'Contract Expiration [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(289, 'tasks', 'task-assigned', 'german', 'New Task Assigned (Sent to Staff) [german]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(290, 'tasks', 'task-added-as-follower', 'german', 'Staff Member Added as Follower on Task [german]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(291, 'tasks', 'task-commented', 'german', 'New Comment on Task (Sent to Staff) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(292, 'tasks', 'task-marked-as-finished', 'german', 'Task Marked as Finished (Sent to Staff) [german]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(293, 'tasks', 'task-added-attachment', 'german', 'New Attachment on Task (Sent to Staff) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(294, 'tasks', 'task-unmarked-as-finished', 'german', 'Task Unmarked as Finished (Sent to Staff) [german]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(295, 'estimate', 'estimate-declined-to-staff', 'german', 'Estimate Declined (Sent to Staff) [german]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(296, 'estimate', 'estimate-accepted-to-staff', 'german', 'Estimate Accepted (Sent to Staff) [german]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(297, 'proposals', 'proposal-client-accepted', 'german', 'Customer Action - Accepted (Sent to Staff) [german]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(298, 'proposals', 'proposal-send-to-customer', 'german', 'Send Proposal to Customer [german]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(299, 'proposals', 'proposal-client-declined', 'german', 'Customer Action - Declined (Sent to Staff) [german]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(300, 'proposals', 'proposal-client-thank-you', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(301, 'proposals', 'proposal-comment-to-client', 'german', 'New Comment  (Sent to Customer Contacts) [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(302, 'proposals', 'proposal-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(303, 'estimate', 'estimate-thank-you-to-customer', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(304, 'tasks', 'task-deadline-notification', 'german', 'Task Deadline Reminder - Sent to Assigned Members [german]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(305, 'contract', 'send-contract', 'german', 'Send Contract to Customer [german]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(306, 'invoice', 'invoice-payment-recorded-to-staff', 'german', 'Invoice Payment Recorded (Sent to Staff) [german]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(307, 'ticket', 'auto-close-ticket', 'german', 'Auto Close Ticket [german]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(308, 'project', 'new-project-discussion-created-to-staff', 'german', 'New Project Discussion (Sent to Project Members) [german]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(309, 'project', 'new-project-discussion-created-to-customer', 'german', 'New Project Discussion (Sent to Customer Contacts) [german]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(310, 'project', 'new-project-file-uploaded-to-customer', 'german', 'New Project File Uploaded (Sent to Customer Contacts) [german]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(311, 'project', 'new-project-file-uploaded-to-staff', 'german', 'New Project File Uploaded (Sent to Project Members) [german]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(312, 'project', 'new-project-discussion-comment-to-customer', 'german', 'New Discussion Comment  (Sent to Customer Contacts) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(313, 'project', 'new-project-discussion-comment-to-staff', 'german', 'New Discussion Comment (Sent to Project Members) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(314, 'project', 'staff-added-as-project-member', 'german', 'Staff Added as Project Member [german]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(315, 'estimate', 'estimate-expiry-reminder', 'german', 'Estimate Expiration Reminder [german]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(316, 'proposals', 'proposal-expiry-reminder', 'german', 'Proposal Expiration Reminder [german]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(317, 'staff', 'new-staff-created', 'german', 'New Staff Created (Welcome Email) [german]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(318, 'client', 'contact-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(319, 'client', 'contact-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(320, 'client', 'contact-set-password', 'german', 'Set New Password [german]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(321, 'staff', 'staff-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(322, 'staff', 'staff-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(323, 'project', 'assigned-to-project', 'german', 'New Project Created (Sent to Customer Contacts) [german]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(324, 'tasks', 'task-marked-as-finished-to-contacts', 'german', 'Task Marked as Finished (Sent to customer contacts) [german]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(325, 'tasks', 'task-added-attachment-to-contacts', 'german', 'New Attachment on Task (Sent to Customer Contacts) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(326, 'tasks', 'task-commented-to-contacts', 'german', 'New Comment on Task (Sent to Customer Contacts) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(327, 'leads', 'new-lead-assigned', 'german', 'New Lead Assigned to Staff Member [german]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(328, 'client', 'client-statement', 'german', 'Statement - Account Summary [german]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(329, 'ticket', 'ticket-assigned-to-admin', 'german', 'New Ticket Assigned (Sent to Staff) [german]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(330, 'client', 'new-client-registered-to-admin', 'german', 'New Customer Registration (Sent to admins) [german]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(331, 'client', 'new-client-created', 'indonesia', 'New Contact Added/Registered (Welcome Email) [indonesia]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(332, 'invoice', 'invoice-send-to-client', 'indonesia', 'Send Invoice to Customer [indonesia]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(333, 'ticket', 'new-ticket-opened-admin', 'indonesia', 'New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(334, 'ticket', 'ticket-reply', 'indonesia', 'Ticket Reply (Sent to Customer) [indonesia]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(335, 'ticket', 'ticket-autoresponse', 'indonesia', 'New Ticket Opened - Autoresponse [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(336, 'invoice', 'invoice-payment-recorded', 'indonesia', 'Invoice Payment Recorded (Sent to Customer) [indonesia]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(337, 'invoice', 'invoice-overdue-notice', 'indonesia', 'Invoice Overdue Notice [indonesia]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(338, 'invoice', 'invoice-already-send', 'indonesia', 'Invoice Already Sent to Customer [indonesia]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(339, 'ticket', 'new-ticket-created-staff', 'indonesia', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(340, 'estimate', 'estimate-send-to-client', 'indonesia', 'Send Estimate to Customer [indonesia]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(341, 'ticket', 'ticket-reply-to-admin', 'indonesia', 'Ticket Reply (Sent to Staff) [indonesia]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(342, 'estimate', 'estimate-already-send', 'indonesia', 'Estimate Already Sent to Customer [indonesia]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(343, 'contract', 'contract-expiration', 'indonesia', 'Contract Expiration [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(344, 'tasks', 'task-assigned', 'indonesia', 'New Task Assigned (Sent to Staff) [indonesia]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(345, 'tasks', 'task-added-as-follower', 'indonesia', 'Staff Member Added as Follower on Task [indonesia]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(346, 'tasks', 'task-commented', 'indonesia', 'New Comment on Task (Sent to Staff) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(347, 'tasks', 'task-marked-as-finished', 'indonesia', 'Task Marked as Finished (Sent to Staff) [indonesia]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(348, 'tasks', 'task-added-attachment', 'indonesia', 'New Attachment on Task (Sent to Staff) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(349, 'tasks', 'task-unmarked-as-finished', 'indonesia', 'Task Unmarked as Finished (Sent to Staff) [indonesia]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(350, 'estimate', 'estimate-declined-to-staff', 'indonesia', 'Estimate Declined (Sent to Staff) [indonesia]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(351, 'estimate', 'estimate-accepted-to-staff', 'indonesia', 'Estimate Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(352, 'proposals', 'proposal-client-accepted', 'indonesia', 'Customer Action - Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(353, 'proposals', 'proposal-send-to-customer', 'indonesia', 'Send Proposal to Customer [indonesia]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(354, 'proposals', 'proposal-client-declined', 'indonesia', 'Customer Action - Declined (Sent to Staff) [indonesia]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(355, 'proposals', 'proposal-client-thank-you', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(356, 'proposals', 'proposal-comment-to-client', 'indonesia', 'New Comment  (Sent to Customer Contacts) [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(357, 'proposals', 'proposal-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(358, 'estimate', 'estimate-thank-you-to-customer', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(359, 'tasks', 'task-deadline-notification', 'indonesia', 'Task Deadline Reminder - Sent to Assigned Members [indonesia]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(360, 'contract', 'send-contract', 'indonesia', 'Send Contract to Customer [indonesia]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(361, 'invoice', 'invoice-payment-recorded-to-staff', 'indonesia', 'Invoice Payment Recorded (Sent to Staff) [indonesia]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(362, 'ticket', 'auto-close-ticket', 'indonesia', 'Auto Close Ticket [indonesia]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(363, 'project', 'new-project-discussion-created-to-staff', 'indonesia', 'New Project Discussion (Sent to Project Members) [indonesia]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(364, 'project', 'new-project-discussion-created-to-customer', 'indonesia', 'New Project Discussion (Sent to Customer Contacts) [indonesia]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(365, 'project', 'new-project-file-uploaded-to-customer', 'indonesia', 'New Project File Uploaded (Sent to Customer Contacts) [indonesia]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(366, 'project', 'new-project-file-uploaded-to-staff', 'indonesia', 'New Project File Uploaded (Sent to Project Members) [indonesia]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(367, 'project', 'new-project-discussion-comment-to-customer', 'indonesia', 'New Discussion Comment  (Sent to Customer Contacts) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(368, 'project', 'new-project-discussion-comment-to-staff', 'indonesia', 'New Discussion Comment (Sent to Project Members) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(369, 'project', 'staff-added-as-project-member', 'indonesia', 'Staff Added as Project Member [indonesia]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(370, 'estimate', 'estimate-expiry-reminder', 'indonesia', 'Estimate Expiration Reminder [indonesia]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(371, 'proposals', 'proposal-expiry-reminder', 'indonesia', 'Proposal Expiration Reminder [indonesia]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(372, 'staff', 'new-staff-created', 'indonesia', 'New Staff Created (Welcome Email) [indonesia]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(373, 'client', 'contact-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(374, 'client', 'contact-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(375, 'client', 'contact-set-password', 'indonesia', 'Set New Password [indonesia]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(376, 'staff', 'staff-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(377, 'staff', 'staff-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(378, 'project', 'assigned-to-project', 'indonesia', 'New Project Created (Sent to Customer Contacts) [indonesia]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(379, 'tasks', 'task-marked-as-finished-to-contacts', 'indonesia', 'Task Marked as Finished (Sent to customer contacts) [indonesia]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(380, 'tasks', 'task-added-attachment-to-contacts', 'indonesia', 'New Attachment on Task (Sent to Customer Contacts) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(381, 'tasks', 'task-commented-to-contacts', 'indonesia', 'New Comment on Task (Sent to Customer Contacts) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(382, 'leads', 'new-lead-assigned', 'indonesia', 'New Lead Assigned to Staff Member [indonesia]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(383, 'client', 'client-statement', 'indonesia', 'Statement - Account Summary [indonesia]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(384, 'ticket', 'ticket-assigned-to-admin', 'indonesia', 'New Ticket Assigned (Sent to Staff) [indonesia]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(385, 'client', 'new-client-registered-to-admin', 'indonesia', 'New Customer Registration (Sent to admins) [indonesia]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(386, 'client', 'new-client-created', 'italian', 'New Contact Added/Registered (Welcome Email) [italian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(387, 'invoice', 'invoice-send-to-client', 'italian', 'Send Invoice to Customer [italian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(388, 'ticket', 'new-ticket-opened-admin', 'italian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(389, 'ticket', 'ticket-reply', 'italian', 'Ticket Reply (Sent to Customer) [italian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(390, 'ticket', 'ticket-autoresponse', 'italian', 'New Ticket Opened - Autoresponse [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(391, 'invoice', 'invoice-payment-recorded', 'italian', 'Invoice Payment Recorded (Sent to Customer) [italian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(392, 'invoice', 'invoice-overdue-notice', 'italian', 'Invoice Overdue Notice [italian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(393, 'invoice', 'invoice-already-send', 'italian', 'Invoice Already Sent to Customer [italian]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(394, 'ticket', 'new-ticket-created-staff', 'italian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(395, 'estimate', 'estimate-send-to-client', 'italian', 'Send Estimate to Customer [italian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(396, 'ticket', 'ticket-reply-to-admin', 'italian', 'Ticket Reply (Sent to Staff) [italian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(397, 'estimate', 'estimate-already-send', 'italian', 'Estimate Already Sent to Customer [italian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(398, 'contract', 'contract-expiration', 'italian', 'Contract Expiration [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(399, 'tasks', 'task-assigned', 'italian', 'New Task Assigned (Sent to Staff) [italian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(400, 'tasks', 'task-added-as-follower', 'italian', 'Staff Member Added as Follower on Task [italian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(401, 'tasks', 'task-commented', 'italian', 'New Comment on Task (Sent to Staff) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(402, 'tasks', 'task-marked-as-finished', 'italian', 'Task Marked as Finished (Sent to Staff) [italian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(403, 'tasks', 'task-added-attachment', 'italian', 'New Attachment on Task (Sent to Staff) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(404, 'tasks', 'task-unmarked-as-finished', 'italian', 'Task Unmarked as Finished (Sent to Staff) [italian]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(405, 'estimate', 'estimate-declined-to-staff', 'italian', 'Estimate Declined (Sent to Staff) [italian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(406, 'estimate', 'estimate-accepted-to-staff', 'italian', 'Estimate Accepted (Sent to Staff) [italian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(407, 'proposals', 'proposal-client-accepted', 'italian', 'Customer Action - Accepted (Sent to Staff) [italian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(408, 'proposals', 'proposal-send-to-customer', 'italian', 'Send Proposal to Customer [italian]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(409, 'proposals', 'proposal-client-declined', 'italian', 'Customer Action - Declined (Sent to Staff) [italian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(410, 'proposals', 'proposal-client-thank-you', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(411, 'proposals', 'proposal-comment-to-client', 'italian', 'New Comment  (Sent to Customer Contacts) [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(412, 'proposals', 'proposal-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(413, 'estimate', 'estimate-thank-you-to-customer', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(414, 'tasks', 'task-deadline-notification', 'italian', 'Task Deadline Reminder - Sent to Assigned Members [italian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(415, 'contract', 'send-contract', 'italian', 'Send Contract to Customer [italian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(416, 'invoice', 'invoice-payment-recorded-to-staff', 'italian', 'Invoice Payment Recorded (Sent to Staff) [italian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(417, 'ticket', 'auto-close-ticket', 'italian', 'Auto Close Ticket [italian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(418, 'project', 'new-project-discussion-created-to-staff', 'italian', 'New Project Discussion (Sent to Project Members) [italian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(419, 'project', 'new-project-discussion-created-to-customer', 'italian', 'New Project Discussion (Sent to Customer Contacts) [italian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(420, 'project', 'new-project-file-uploaded-to-customer', 'italian', 'New Project File Uploaded (Sent to Customer Contacts) [italian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(421, 'project', 'new-project-file-uploaded-to-staff', 'italian', 'New Project File Uploaded (Sent to Project Members) [italian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(422, 'project', 'new-project-discussion-comment-to-customer', 'italian', 'New Discussion Comment  (Sent to Customer Contacts) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(423, 'project', 'new-project-discussion-comment-to-staff', 'italian', 'New Discussion Comment (Sent to Project Members) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(424, 'project', 'staff-added-as-project-member', 'italian', 'Staff Added as Project Member [italian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(425, 'estimate', 'estimate-expiry-reminder', 'italian', 'Estimate Expiration Reminder [italian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(426, 'proposals', 'proposal-expiry-reminder', 'italian', 'Proposal Expiration Reminder [italian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(427, 'staff', 'new-staff-created', 'italian', 'New Staff Created (Welcome Email) [italian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(428, 'client', 'contact-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(429, 'client', 'contact-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(430, 'client', 'contact-set-password', 'italian', 'Set New Password [italian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(431, 'staff', 'staff-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(432, 'staff', 'staff-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(433, 'project', 'assigned-to-project', 'italian', 'New Project Created (Sent to Customer Contacts) [italian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(434, 'tasks', 'task-marked-as-finished-to-contacts', 'italian', 'Task Marked as Finished (Sent to customer contacts) [italian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(435, 'tasks', 'task-added-attachment-to-contacts', 'italian', 'New Attachment on Task (Sent to Customer Contacts) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(436, 'tasks', 'task-commented-to-contacts', 'italian', 'New Comment on Task (Sent to Customer Contacts) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(437, 'leads', 'new-lead-assigned', 'italian', 'New Lead Assigned to Staff Member [italian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(438, 'client', 'client-statement', 'italian', 'Statement - Account Summary [italian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(439, 'ticket', 'ticket-assigned-to-admin', 'italian', 'New Ticket Assigned (Sent to Staff) [italian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(440, 'client', 'new-client-registered-to-admin', 'italian', 'New Customer Registration (Sent to admins) [italian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(441, 'client', 'new-client-created', 'japanese', 'New Contact Added/Registered (Welcome Email) [japanese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(442, 'invoice', 'invoice-send-to-client', 'japanese', 'Send Invoice to Customer [japanese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(443, 'ticket', 'new-ticket-opened-admin', 'japanese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(444, 'ticket', 'ticket-reply', 'japanese', 'Ticket Reply (Sent to Customer) [japanese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(445, 'ticket', 'ticket-autoresponse', 'japanese', 'New Ticket Opened - Autoresponse [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(446, 'invoice', 'invoice-payment-recorded', 'japanese', 'Invoice Payment Recorded (Sent to Customer) [japanese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(447, 'invoice', 'invoice-overdue-notice', 'japanese', 'Invoice Overdue Notice [japanese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(448, 'invoice', 'invoice-already-send', 'japanese', 'Invoice Already Sent to Customer [japanese]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(449, 'ticket', 'new-ticket-created-staff', 'japanese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [japanese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(450, 'estimate', 'estimate-send-to-client', 'japanese', 'Send Estimate to Customer [japanese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(451, 'ticket', 'ticket-reply-to-admin', 'japanese', 'Ticket Reply (Sent to Staff) [japanese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(452, 'estimate', 'estimate-already-send', 'japanese', 'Estimate Already Sent to Customer [japanese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(453, 'contract', 'contract-expiration', 'japanese', 'Contract Expiration [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(454, 'tasks', 'task-assigned', 'japanese', 'New Task Assigned (Sent to Staff) [japanese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(455, 'tasks', 'task-added-as-follower', 'japanese', 'Staff Member Added as Follower on Task [japanese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(456, 'tasks', 'task-commented', 'japanese', 'New Comment on Task (Sent to Staff) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(457, 'tasks', 'task-marked-as-finished', 'japanese', 'Task Marked as Finished (Sent to Staff) [japanese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(458, 'tasks', 'task-added-attachment', 'japanese', 'New Attachment on Task (Sent to Staff) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(459, 'tasks', 'task-unmarked-as-finished', 'japanese', 'Task Unmarked as Finished (Sent to Staff) [japanese]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(460, 'estimate', 'estimate-declined-to-staff', 'japanese', 'Estimate Declined (Sent to Staff) [japanese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(461, 'estimate', 'estimate-accepted-to-staff', 'japanese', 'Estimate Accepted (Sent to Staff) [japanese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(462, 'proposals', 'proposal-client-accepted', 'japanese', 'Customer Action - Accepted (Sent to Staff) [japanese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(463, 'proposals', 'proposal-send-to-customer', 'japanese', 'Send Proposal to Customer [japanese]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(464, 'proposals', 'proposal-client-declined', 'japanese', 'Customer Action - Declined (Sent to Staff) [japanese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(465, 'proposals', 'proposal-client-thank-you', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(466, 'proposals', 'proposal-comment-to-client', 'japanese', 'New Comment  (Sent to Customer Contacts) [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(467, 'proposals', 'proposal-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(468, 'estimate', 'estimate-thank-you-to-customer', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(469, 'tasks', 'task-deadline-notification', 'japanese', 'Task Deadline Reminder - Sent to Assigned Members [japanese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(470, 'contract', 'send-contract', 'japanese', 'Send Contract to Customer [japanese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(471, 'invoice', 'invoice-payment-recorded-to-staff', 'japanese', 'Invoice Payment Recorded (Sent to Staff) [japanese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(472, 'ticket', 'auto-close-ticket', 'japanese', 'Auto Close Ticket [japanese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(473, 'project', 'new-project-discussion-created-to-staff', 'japanese', 'New Project Discussion (Sent to Project Members) [japanese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(474, 'project', 'new-project-discussion-created-to-customer', 'japanese', 'New Project Discussion (Sent to Customer Contacts) [japanese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(475, 'project', 'new-project-file-uploaded-to-customer', 'japanese', 'New Project File Uploaded (Sent to Customer Contacts) [japanese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(476, 'project', 'new-project-file-uploaded-to-staff', 'japanese', 'New Project File Uploaded (Sent to Project Members) [japanese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(477, 'project', 'new-project-discussion-comment-to-customer', 'japanese', 'New Discussion Comment  (Sent to Customer Contacts) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(478, 'project', 'new-project-discussion-comment-to-staff', 'japanese', 'New Discussion Comment (Sent to Project Members) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(479, 'project', 'staff-added-as-project-member', 'japanese', 'Staff Added as Project Member [japanese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(480, 'estimate', 'estimate-expiry-reminder', 'japanese', 'Estimate Expiration Reminder [japanese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(481, 'proposals', 'proposal-expiry-reminder', 'japanese', 'Proposal Expiration Reminder [japanese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(482, 'staff', 'new-staff-created', 'japanese', 'New Staff Created (Welcome Email) [japanese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(483, 'client', 'contact-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(484, 'client', 'contact-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(485, 'client', 'contact-set-password', 'japanese', 'Set New Password [japanese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(486, 'staff', 'staff-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(487, 'staff', 'staff-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(488, 'project', 'assigned-to-project', 'japanese', 'New Project Created (Sent to Customer Contacts) [japanese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(489, 'tasks', 'task-marked-as-finished-to-contacts', 'japanese', 'Task Marked as Finished (Sent to customer contacts) [japanese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(490, 'tasks', 'task-added-attachment-to-contacts', 'japanese', 'New Attachment on Task (Sent to Customer Contacts) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(491, 'tasks', 'task-commented-to-contacts', 'japanese', 'New Comment on Task (Sent to Customer Contacts) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(492, 'leads', 'new-lead-assigned', 'japanese', 'New Lead Assigned to Staff Member [japanese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(493, 'client', 'client-statement', 'japanese', 'Statement - Account Summary [japanese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(494, 'ticket', 'ticket-assigned-to-admin', 'japanese', 'New Ticket Assigned (Sent to Staff) [japanese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(495, 'client', 'new-client-registered-to-admin', 'japanese', 'New Customer Registration (Sent to admins) [japanese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(496, 'client', 'new-client-created', 'persian', 'New Contact Added/Registered (Welcome Email) [persian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(497, 'invoice', 'invoice-send-to-client', 'persian', 'Send Invoice to Customer [persian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(498, 'ticket', 'new-ticket-opened-admin', 'persian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(499, 'ticket', 'ticket-reply', 'persian', 'Ticket Reply (Sent to Customer) [persian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(500, 'ticket', 'ticket-autoresponse', 'persian', 'New Ticket Opened - Autoresponse [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(501, 'invoice', 'invoice-payment-recorded', 'persian', 'Invoice Payment Recorded (Sent to Customer) [persian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(502, 'invoice', 'invoice-overdue-notice', 'persian', 'Invoice Overdue Notice [persian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(503, 'invoice', 'invoice-already-send', 'persian', 'Invoice Already Sent to Customer [persian]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(504, 'ticket', 'new-ticket-created-staff', 'persian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(505, 'estimate', 'estimate-send-to-client', 'persian', 'Send Estimate to Customer [persian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(506, 'ticket', 'ticket-reply-to-admin', 'persian', 'Ticket Reply (Sent to Staff) [persian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(507, 'estimate', 'estimate-already-send', 'persian', 'Estimate Already Sent to Customer [persian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(508, 'contract', 'contract-expiration', 'persian', 'Contract Expiration [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(509, 'tasks', 'task-assigned', 'persian', 'New Task Assigned (Sent to Staff) [persian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(510, 'tasks', 'task-added-as-follower', 'persian', 'Staff Member Added as Follower on Task [persian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(511, 'tasks', 'task-commented', 'persian', 'New Comment on Task (Sent to Staff) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(512, 'tasks', 'task-marked-as-finished', 'persian', 'Task Marked as Finished (Sent to Staff) [persian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(513, 'tasks', 'task-added-attachment', 'persian', 'New Attachment on Task (Sent to Staff) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(514, 'tasks', 'task-unmarked-as-finished', 'persian', 'Task Unmarked as Finished (Sent to Staff) [persian]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(515, 'estimate', 'estimate-declined-to-staff', 'persian', 'Estimate Declined (Sent to Staff) [persian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(516, 'estimate', 'estimate-accepted-to-staff', 'persian', 'Estimate Accepted (Sent to Staff) [persian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(517, 'proposals', 'proposal-client-accepted', 'persian', 'Customer Action - Accepted (Sent to Staff) [persian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(518, 'proposals', 'proposal-send-to-customer', 'persian', 'Send Proposal to Customer [persian]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(519, 'proposals', 'proposal-client-declined', 'persian', 'Customer Action - Declined (Sent to Staff) [persian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(520, 'proposals', 'proposal-client-thank-you', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(521, 'proposals', 'proposal-comment-to-client', 'persian', 'New Comment  (Sent to Customer Contacts) [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(522, 'proposals', 'proposal-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(523, 'estimate', 'estimate-thank-you-to-customer', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(524, 'tasks', 'task-deadline-notification', 'persian', 'Task Deadline Reminder - Sent to Assigned Members [persian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(525, 'contract', 'send-contract', 'persian', 'Send Contract to Customer [persian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(526, 'invoice', 'invoice-payment-recorded-to-staff', 'persian', 'Invoice Payment Recorded (Sent to Staff) [persian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(527, 'ticket', 'auto-close-ticket', 'persian', 'Auto Close Ticket [persian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(528, 'project', 'new-project-discussion-created-to-staff', 'persian', 'New Project Discussion (Sent to Project Members) [persian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(529, 'project', 'new-project-discussion-created-to-customer', 'persian', 'New Project Discussion (Sent to Customer Contacts) [persian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(530, 'project', 'new-project-file-uploaded-to-customer', 'persian', 'New Project File Uploaded (Sent to Customer Contacts) [persian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(531, 'project', 'new-project-file-uploaded-to-staff', 'persian', 'New Project File Uploaded (Sent to Project Members) [persian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(532, 'project', 'new-project-discussion-comment-to-customer', 'persian', 'New Discussion Comment  (Sent to Customer Contacts) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(533, 'project', 'new-project-discussion-comment-to-staff', 'persian', 'New Discussion Comment (Sent to Project Members) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(534, 'project', 'staff-added-as-project-member', 'persian', 'Staff Added as Project Member [persian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(535, 'estimate', 'estimate-expiry-reminder', 'persian', 'Estimate Expiration Reminder [persian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(536, 'proposals', 'proposal-expiry-reminder', 'persian', 'Proposal Expiration Reminder [persian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(537, 'staff', 'new-staff-created', 'persian', 'New Staff Created (Welcome Email) [persian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(538, 'client', 'contact-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(539, 'client', 'contact-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(540, 'client', 'contact-set-password', 'persian', 'Set New Password [persian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(541, 'staff', 'staff-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(542, 'staff', 'staff-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(543, 'project', 'assigned-to-project', 'persian', 'New Project Created (Sent to Customer Contacts) [persian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(544, 'tasks', 'task-marked-as-finished-to-contacts', 'persian', 'Task Marked as Finished (Sent to customer contacts) [persian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(545, 'tasks', 'task-added-attachment-to-contacts', 'persian', 'New Attachment on Task (Sent to Customer Contacts) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(546, 'tasks', 'task-commented-to-contacts', 'persian', 'New Comment on Task (Sent to Customer Contacts) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(547, 'leads', 'new-lead-assigned', 'persian', 'New Lead Assigned to Staff Member [persian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(548, 'client', 'client-statement', 'persian', 'Statement - Account Summary [persian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(549, 'ticket', 'ticket-assigned-to-admin', 'persian', 'New Ticket Assigned (Sent to Staff) [persian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(550, 'client', 'new-client-registered-to-admin', 'persian', 'New Customer Registration (Sent to admins) [persian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(551, 'client', 'new-client-created', 'polish', 'New Contact Added/Registered (Welcome Email) [polish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(552, 'invoice', 'invoice-send-to-client', 'polish', 'Send Invoice to Customer [polish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(553, 'ticket', 'new-ticket-opened-admin', 'polish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(554, 'ticket', 'ticket-reply', 'polish', 'Ticket Reply (Sent to Customer) [polish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(555, 'ticket', 'ticket-autoresponse', 'polish', 'New Ticket Opened - Autoresponse [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(556, 'invoice', 'invoice-payment-recorded', 'polish', 'Invoice Payment Recorded (Sent to Customer) [polish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(557, 'invoice', 'invoice-overdue-notice', 'polish', 'Invoice Overdue Notice [polish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(558, 'invoice', 'invoice-already-send', 'polish', 'Invoice Already Sent to Customer [polish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(559, 'ticket', 'new-ticket-created-staff', 'polish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(560, 'estimate', 'estimate-send-to-client', 'polish', 'Send Estimate to Customer [polish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(561, 'ticket', 'ticket-reply-to-admin', 'polish', 'Ticket Reply (Sent to Staff) [polish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(562, 'estimate', 'estimate-already-send', 'polish', 'Estimate Already Sent to Customer [polish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(563, 'contract', 'contract-expiration', 'polish', 'Contract Expiration [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(564, 'tasks', 'task-assigned', 'polish', 'New Task Assigned (Sent to Staff) [polish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(565, 'tasks', 'task-added-as-follower', 'polish', 'Staff Member Added as Follower on Task [polish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(566, 'tasks', 'task-commented', 'polish', 'New Comment on Task (Sent to Staff) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(567, 'tasks', 'task-marked-as-finished', 'polish', 'Task Marked as Finished (Sent to Staff) [polish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(568, 'tasks', 'task-added-attachment', 'polish', 'New Attachment on Task (Sent to Staff) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(569, 'tasks', 'task-unmarked-as-finished', 'polish', 'Task Unmarked as Finished (Sent to Staff) [polish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(570, 'estimate', 'estimate-declined-to-staff', 'polish', 'Estimate Declined (Sent to Staff) [polish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(571, 'estimate', 'estimate-accepted-to-staff', 'polish', 'Estimate Accepted (Sent to Staff) [polish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(572, 'proposals', 'proposal-client-accepted', 'polish', 'Customer Action - Accepted (Sent to Staff) [polish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(573, 'proposals', 'proposal-send-to-customer', 'polish', 'Send Proposal to Customer [polish]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(574, 'proposals', 'proposal-client-declined', 'polish', 'Customer Action - Declined (Sent to Staff) [polish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(575, 'proposals', 'proposal-client-thank-you', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(576, 'proposals', 'proposal-comment-to-client', 'polish', 'New Comment  (Sent to Customer Contacts) [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(577, 'proposals', 'proposal-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(578, 'estimate', 'estimate-thank-you-to-customer', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(579, 'tasks', 'task-deadline-notification', 'polish', 'Task Deadline Reminder - Sent to Assigned Members [polish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(580, 'contract', 'send-contract', 'polish', 'Send Contract to Customer [polish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(581, 'invoice', 'invoice-payment-recorded-to-staff', 'polish', 'Invoice Payment Recorded (Sent to Staff) [polish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(582, 'ticket', 'auto-close-ticket', 'polish', 'Auto Close Ticket [polish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(583, 'project', 'new-project-discussion-created-to-staff', 'polish', 'New Project Discussion (Sent to Project Members) [polish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(584, 'project', 'new-project-discussion-created-to-customer', 'polish', 'New Project Discussion (Sent to Customer Contacts) [polish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(585, 'project', 'new-project-file-uploaded-to-customer', 'polish', 'New Project File Uploaded (Sent to Customer Contacts) [polish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(586, 'project', 'new-project-file-uploaded-to-staff', 'polish', 'New Project File Uploaded (Sent to Project Members) [polish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(587, 'project', 'new-project-discussion-comment-to-customer', 'polish', 'New Discussion Comment  (Sent to Customer Contacts) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(588, 'project', 'new-project-discussion-comment-to-staff', 'polish', 'New Discussion Comment (Sent to Project Members) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(589, 'project', 'staff-added-as-project-member', 'polish', 'Staff Added as Project Member [polish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(590, 'estimate', 'estimate-expiry-reminder', 'polish', 'Estimate Expiration Reminder [polish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(591, 'proposals', 'proposal-expiry-reminder', 'polish', 'Proposal Expiration Reminder [polish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(592, 'staff', 'new-staff-created', 'polish', 'New Staff Created (Welcome Email) [polish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(593, 'client', 'contact-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(594, 'client', 'contact-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(595, 'client', 'contact-set-password', 'polish', 'Set New Password [polish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(596, 'staff', 'staff-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(597, 'staff', 'staff-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(598, 'project', 'assigned-to-project', 'polish', 'New Project Created (Sent to Customer Contacts) [polish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(599, 'tasks', 'task-marked-as-finished-to-contacts', 'polish', 'Task Marked as Finished (Sent to customer contacts) [polish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(600, 'tasks', 'task-added-attachment-to-contacts', 'polish', 'New Attachment on Task (Sent to Customer Contacts) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(601, 'tasks', 'task-commented-to-contacts', 'polish', 'New Comment on Task (Sent to Customer Contacts) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(602, 'leads', 'new-lead-assigned', 'polish', 'New Lead Assigned to Staff Member [polish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(603, 'client', 'client-statement', 'polish', 'Statement - Account Summary [polish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(604, 'ticket', 'ticket-assigned-to-admin', 'polish', 'New Ticket Assigned (Sent to Staff) [polish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(605, 'client', 'new-client-registered-to-admin', 'polish', 'New Customer Registration (Sent to admins) [polish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(606, 'client', 'new-client-created', 'portuguese', 'New Contact Added/Registered (Welcome Email) [portuguese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(607, 'invoice', 'invoice-send-to-client', 'portuguese', 'Send Invoice to Customer [portuguese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(608, 'ticket', 'new-ticket-opened-admin', 'portuguese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(609, 'ticket', 'ticket-reply', 'portuguese', 'Ticket Reply (Sent to Customer) [portuguese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(610, 'ticket', 'ticket-autoresponse', 'portuguese', 'New Ticket Opened - Autoresponse [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(611, 'invoice', 'invoice-payment-recorded', 'portuguese', 'Invoice Payment Recorded (Sent to Customer) [portuguese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(612, 'invoice', 'invoice-overdue-notice', 'portuguese', 'Invoice Overdue Notice [portuguese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(613, 'invoice', 'invoice-already-send', 'portuguese', 'Invoice Already Sent to Customer [portuguese]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(614, 'ticket', 'new-ticket-created-staff', 'portuguese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(615, 'estimate', 'estimate-send-to-client', 'portuguese', 'Send Estimate to Customer [portuguese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(616, 'ticket', 'ticket-reply-to-admin', 'portuguese', 'Ticket Reply (Sent to Staff) [portuguese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(617, 'estimate', 'estimate-already-send', 'portuguese', 'Estimate Already Sent to Customer [portuguese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(618, 'contract', 'contract-expiration', 'portuguese', 'Contract Expiration [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(619, 'tasks', 'task-assigned', 'portuguese', 'New Task Assigned (Sent to Staff) [portuguese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(620, 'tasks', 'task-added-as-follower', 'portuguese', 'Staff Member Added as Follower on Task [portuguese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(621, 'tasks', 'task-commented', 'portuguese', 'New Comment on Task (Sent to Staff) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(622, 'tasks', 'task-marked-as-finished', 'portuguese', 'Task Marked as Finished (Sent to Staff) [portuguese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(623, 'tasks', 'task-added-attachment', 'portuguese', 'New Attachment on Task (Sent to Staff) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(624, 'tasks', 'task-unmarked-as-finished', 'portuguese', 'Task Unmarked as Finished (Sent to Staff) [portuguese]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(625, 'estimate', 'estimate-declined-to-staff', 'portuguese', 'Estimate Declined (Sent to Staff) [portuguese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(626, 'estimate', 'estimate-accepted-to-staff', 'portuguese', 'Estimate Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(627, 'proposals', 'proposal-client-accepted', 'portuguese', 'Customer Action - Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(628, 'proposals', 'proposal-send-to-customer', 'portuguese', 'Send Proposal to Customer [portuguese]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(629, 'proposals', 'proposal-client-declined', 'portuguese', 'Customer Action - Declined (Sent to Staff) [portuguese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(630, 'proposals', 'proposal-client-thank-you', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(631, 'proposals', 'proposal-comment-to-client', 'portuguese', 'New Comment  (Sent to Customer Contacts) [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(632, 'proposals', 'proposal-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(633, 'estimate', 'estimate-thank-you-to-customer', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(634, 'tasks', 'task-deadline-notification', 'portuguese', 'Task Deadline Reminder - Sent to Assigned Members [portuguese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(635, 'contract', 'send-contract', 'portuguese', 'Send Contract to Customer [portuguese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(636, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese', 'Invoice Payment Recorded (Sent to Staff) [portuguese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(637, 'ticket', 'auto-close-ticket', 'portuguese', 'Auto Close Ticket [portuguese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(638, 'project', 'new-project-discussion-created-to-staff', 'portuguese', 'New Project Discussion (Sent to Project Members) [portuguese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(639, 'project', 'new-project-discussion-created-to-customer', 'portuguese', 'New Project Discussion (Sent to Customer Contacts) [portuguese]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(640, 'project', 'new-project-file-uploaded-to-customer', 'portuguese', 'New Project File Uploaded (Sent to Customer Contacts) [portuguese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(641, 'project', 'new-project-file-uploaded-to-staff', 'portuguese', 'New Project File Uploaded (Sent to Project Members) [portuguese]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(642, 'project', 'new-project-discussion-comment-to-customer', 'portuguese', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(643, 'project', 'new-project-discussion-comment-to-staff', 'portuguese', 'New Discussion Comment (Sent to Project Members) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(644, 'project', 'staff-added-as-project-member', 'portuguese', 'Staff Added as Project Member [portuguese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(645, 'estimate', 'estimate-expiry-reminder', 'portuguese', 'Estimate Expiration Reminder [portuguese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(646, 'proposals', 'proposal-expiry-reminder', 'portuguese', 'Proposal Expiration Reminder [portuguese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(647, 'staff', 'new-staff-created', 'portuguese', 'New Staff Created (Welcome Email) [portuguese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(648, 'client', 'contact-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(649, 'client', 'contact-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(650, 'client', 'contact-set-password', 'portuguese', 'Set New Password [portuguese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(651, 'staff', 'staff-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(652, 'staff', 'staff-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(653, 'project', 'assigned-to-project', 'portuguese', 'New Project Created (Sent to Customer Contacts) [portuguese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(654, 'tasks', 'task-marked-as-finished-to-contacts', 'portuguese', 'Task Marked as Finished (Sent to customer contacts) [portuguese]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(655, 'tasks', 'task-added-attachment-to-contacts', 'portuguese', 'New Attachment on Task (Sent to Customer Contacts) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(656, 'tasks', 'task-commented-to-contacts', 'portuguese', 'New Comment on Task (Sent to Customer Contacts) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(657, 'leads', 'new-lead-assigned', 'portuguese', 'New Lead Assigned to Staff Member [portuguese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(658, 'client', 'client-statement', 'portuguese', 'Statement - Account Summary [portuguese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(659, 'ticket', 'ticket-assigned-to-admin', 'portuguese', 'New Ticket Assigned (Sent to Staff) [portuguese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(660, 'client', 'new-client-registered-to-admin', 'portuguese', 'New Customer Registration (Sent to admins) [portuguese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(661, 'client', 'new-client-created', 'portuguese_br', 'New Contact Added/Registered (Welcome Email) [portuguese_br]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(662, 'invoice', 'invoice-send-to-client', 'portuguese_br', 'Send Invoice to Customer [portuguese_br]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(663, 'ticket', 'new-ticket-opened-admin', 'portuguese_br', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(664, 'ticket', 'ticket-reply', 'portuguese_br', 'Ticket Reply (Sent to Customer) [portuguese_br]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(665, 'ticket', 'ticket-autoresponse', 'portuguese_br', 'New Ticket Opened - Autoresponse [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(666, 'invoice', 'invoice-payment-recorded', 'portuguese_br', 'Invoice Payment Recorded (Sent to Customer) [portuguese_br]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(667, 'invoice', 'invoice-overdue-notice', 'portuguese_br', 'Invoice Overdue Notice [portuguese_br]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(668, 'invoice', 'invoice-already-send', 'portuguese_br', 'Invoice Already Sent to Customer [portuguese_br]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(669, 'ticket', 'new-ticket-created-staff', 'portuguese_br', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(670, 'estimate', 'estimate-send-to-client', 'portuguese_br', 'Send Estimate to Customer [portuguese_br]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(671, 'ticket', 'ticket-reply-to-admin', 'portuguese_br', 'Ticket Reply (Sent to Staff) [portuguese_br]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(672, 'estimate', 'estimate-already-send', 'portuguese_br', 'Estimate Already Sent to Customer [portuguese_br]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(673, 'contract', 'contract-expiration', 'portuguese_br', 'Contract Expiration [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(674, 'tasks', 'task-assigned', 'portuguese_br', 'New Task Assigned (Sent to Staff) [portuguese_br]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(675, 'tasks', 'task-added-as-follower', 'portuguese_br', 'Staff Member Added as Follower on Task [portuguese_br]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(676, 'tasks', 'task-commented', 'portuguese_br', 'New Comment on Task (Sent to Staff) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(677, 'tasks', 'task-marked-as-finished', 'portuguese_br', 'Task Marked as Finished (Sent to Staff) [portuguese_br]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(678, 'tasks', 'task-added-attachment', 'portuguese_br', 'New Attachment on Task (Sent to Staff) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(679, 'tasks', 'task-unmarked-as-finished', 'portuguese_br', 'Task Unmarked as Finished (Sent to Staff) [portuguese_br]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(680, 'estimate', 'estimate-declined-to-staff', 'portuguese_br', 'Estimate Declined (Sent to Staff) [portuguese_br]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(681, 'estimate', 'estimate-accepted-to-staff', 'portuguese_br', 'Estimate Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(682, 'proposals', 'proposal-client-accepted', 'portuguese_br', 'Customer Action - Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(683, 'proposals', 'proposal-send-to-customer', 'portuguese_br', 'Send Proposal to Customer [portuguese_br]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(684, 'proposals', 'proposal-client-declined', 'portuguese_br', 'Customer Action - Declined (Sent to Staff) [portuguese_br]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(685, 'proposals', 'proposal-client-thank-you', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(686, 'proposals', 'proposal-comment-to-client', 'portuguese_br', 'New Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(687, 'proposals', 'proposal-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(688, 'estimate', 'estimate-thank-you-to-customer', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(689, 'tasks', 'task-deadline-notification', 'portuguese_br', 'Task Deadline Reminder - Sent to Assigned Members [portuguese_br]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(690, 'contract', 'send-contract', 'portuguese_br', 'Send Contract to Customer [portuguese_br]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(691, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese_br', 'Invoice Payment Recorded (Sent to Staff) [portuguese_br]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(692, 'ticket', 'auto-close-ticket', 'portuguese_br', 'Auto Close Ticket [portuguese_br]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(693, 'project', 'new-project-discussion-created-to-staff', 'portuguese_br', 'New Project Discussion (Sent to Project Members) [portuguese_br]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(694, 'project', 'new-project-discussion-created-to-customer', 'portuguese_br', 'New Project Discussion (Sent to Customer Contacts) [portuguese_br]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(695, 'project', 'new-project-file-uploaded-to-customer', 'portuguese_br', 'New Project File Uploaded (Sent to Customer Contacts) [portuguese_br]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(696, 'project', 'new-project-file-uploaded-to-staff', 'portuguese_br', 'New Project File Uploaded (Sent to Project Members) [portuguese_br]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(697, 'project', 'new-project-discussion-comment-to-customer', 'portuguese_br', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(698, 'project', 'new-project-discussion-comment-to-staff', 'portuguese_br', 'New Discussion Comment (Sent to Project Members) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(699, 'project', 'staff-added-as-project-member', 'portuguese_br', 'Staff Added as Project Member [portuguese_br]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(700, 'estimate', 'estimate-expiry-reminder', 'portuguese_br', 'Estimate Expiration Reminder [portuguese_br]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(701, 'proposals', 'proposal-expiry-reminder', 'portuguese_br', 'Proposal Expiration Reminder [portuguese_br]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(702, 'staff', 'new-staff-created', 'portuguese_br', 'New Staff Created (Welcome Email) [portuguese_br]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(703, 'client', 'contact-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(704, 'client', 'contact-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(705, 'client', 'contact-set-password', 'portuguese_br', 'Set New Password [portuguese_br]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(706, 'staff', 'staff-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(707, 'staff', 'staff-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(708, 'project', 'assigned-to-project', 'portuguese_br', 'New Project Created (Sent to Customer Contacts) [portuguese_br]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(709, 'tasks', 'task-marked-as-finished-to-contacts', 'portuguese_br', 'Task Marked as Finished (Sent to customer contacts) [portuguese_br]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(710, 'tasks', 'task-added-attachment-to-contacts', 'portuguese_br', 'New Attachment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(711, 'tasks', 'task-commented-to-contacts', 'portuguese_br', 'New Comment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(712, 'leads', 'new-lead-assigned', 'portuguese_br', 'New Lead Assigned to Staff Member [portuguese_br]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(713, 'client', 'client-statement', 'portuguese_br', 'Statement - Account Summary [portuguese_br]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(714, 'ticket', 'ticket-assigned-to-admin', 'portuguese_br', 'New Ticket Assigned (Sent to Staff) [portuguese_br]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(715, 'client', 'new-client-registered-to-admin', 'portuguese_br', 'New Customer Registration (Sent to admins) [portuguese_br]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(716, 'client', 'new-client-created', 'russian', 'New Contact Added/Registered (Welcome Email) [russian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(717, 'invoice', 'invoice-send-to-client', 'russian', 'Send Invoice to Customer [russian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(718, 'ticket', 'new-ticket-opened-admin', 'russian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(719, 'ticket', 'ticket-reply', 'russian', 'Ticket Reply (Sent to Customer) [russian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(720, 'ticket', 'ticket-autoresponse', 'russian', 'New Ticket Opened - Autoresponse [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(721, 'invoice', 'invoice-payment-recorded', 'russian', 'Invoice Payment Recorded (Sent to Customer) [russian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(722, 'invoice', 'invoice-overdue-notice', 'russian', 'Invoice Overdue Notice [russian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(723, 'invoice', 'invoice-already-send', 'russian', 'Invoice Already Sent to Customer [russian]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(724, 'ticket', 'new-ticket-created-staff', 'russian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [russian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(725, 'estimate', 'estimate-send-to-client', 'russian', 'Send Estimate to Customer [russian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(726, 'ticket', 'ticket-reply-to-admin', 'russian', 'Ticket Reply (Sent to Staff) [russian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(727, 'estimate', 'estimate-already-send', 'russian', 'Estimate Already Sent to Customer [russian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(728, 'contract', 'contract-expiration', 'russian', 'Contract Expiration [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(729, 'tasks', 'task-assigned', 'russian', 'New Task Assigned (Sent to Staff) [russian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(730, 'tasks', 'task-added-as-follower', 'russian', 'Staff Member Added as Follower on Task [russian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(731, 'tasks', 'task-commented', 'russian', 'New Comment on Task (Sent to Staff) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(732, 'tasks', 'task-marked-as-finished', 'russian', 'Task Marked as Finished (Sent to Staff) [russian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(733, 'tasks', 'task-added-attachment', 'russian', 'New Attachment on Task (Sent to Staff) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(734, 'tasks', 'task-unmarked-as-finished', 'russian', 'Task Unmarked as Finished (Sent to Staff) [russian]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(735, 'estimate', 'estimate-declined-to-staff', 'russian', 'Estimate Declined (Sent to Staff) [russian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(736, 'estimate', 'estimate-accepted-to-staff', 'russian', 'Estimate Accepted (Sent to Staff) [russian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(737, 'proposals', 'proposal-client-accepted', 'russian', 'Customer Action - Accepted (Sent to Staff) [russian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(738, 'proposals', 'proposal-send-to-customer', 'russian', 'Send Proposal to Customer [russian]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(739, 'proposals', 'proposal-client-declined', 'russian', 'Customer Action - Declined (Sent to Staff) [russian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(740, 'proposals', 'proposal-client-thank-you', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(741, 'proposals', 'proposal-comment-to-client', 'russian', 'New Comment  (Sent to Customer Contacts) [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(742, 'proposals', 'proposal-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(743, 'estimate', 'estimate-thank-you-to-customer', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(744, 'tasks', 'task-deadline-notification', 'russian', 'Task Deadline Reminder - Sent to Assigned Members [russian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(745, 'contract', 'send-contract', 'russian', 'Send Contract to Customer [russian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(746, 'invoice', 'invoice-payment-recorded-to-staff', 'russian', 'Invoice Payment Recorded (Sent to Staff) [russian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(747, 'ticket', 'auto-close-ticket', 'russian', 'Auto Close Ticket [russian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(748, 'project', 'new-project-discussion-created-to-staff', 'russian', 'New Project Discussion (Sent to Project Members) [russian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(749, 'project', 'new-project-discussion-created-to-customer', 'russian', 'New Project Discussion (Sent to Customer Contacts) [russian]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(750, 'project', 'new-project-file-uploaded-to-customer', 'russian', 'New Project File Uploaded (Sent to Customer Contacts) [russian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(751, 'project', 'new-project-file-uploaded-to-staff', 'russian', 'New Project File Uploaded (Sent to Project Members) [russian]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(752, 'project', 'new-project-discussion-comment-to-customer', 'russian', 'New Discussion Comment  (Sent to Customer Contacts) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(753, 'project', 'new-project-discussion-comment-to-staff', 'russian', 'New Discussion Comment (Sent to Project Members) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(754, 'project', 'staff-added-as-project-member', 'russian', 'Staff Added as Project Member [russian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(755, 'estimate', 'estimate-expiry-reminder', 'russian', 'Estimate Expiration Reminder [russian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(756, 'proposals', 'proposal-expiry-reminder', 'russian', 'Proposal Expiration Reminder [russian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(757, 'staff', 'new-staff-created', 'russian', 'New Staff Created (Welcome Email) [russian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(758, 'client', 'contact-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(759, 'client', 'contact-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(760, 'client', 'contact-set-password', 'russian', 'Set New Password [russian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(761, 'staff', 'staff-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(762, 'staff', 'staff-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(763, 'project', 'assigned-to-project', 'russian', 'New Project Created (Sent to Customer Contacts) [russian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(764, 'tasks', 'task-marked-as-finished-to-contacts', 'russian', 'Task Marked as Finished (Sent to customer contacts) [russian]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(765, 'tasks', 'task-added-attachment-to-contacts', 'russian', 'New Attachment on Task (Sent to Customer Contacts) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(766, 'tasks', 'task-commented-to-contacts', 'russian', 'New Comment on Task (Sent to Customer Contacts) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(767, 'leads', 'new-lead-assigned', 'russian', 'New Lead Assigned to Staff Member [russian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(768, 'client', 'client-statement', 'russian', 'Statement - Account Summary [russian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(769, 'ticket', 'ticket-assigned-to-admin', 'russian', 'New Ticket Assigned (Sent to Staff) [russian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(770, 'client', 'new-client-registered-to-admin', 'russian', 'New Customer Registration (Sent to admins) [russian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(771, 'client', 'new-client-created', 'spanish', 'New Contact Added/Registered (Welcome Email) [spanish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(772, 'invoice', 'invoice-send-to-client', 'spanish', 'Send Invoice to Customer [spanish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(773, 'ticket', 'new-ticket-opened-admin', 'spanish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(774, 'ticket', 'ticket-reply', 'spanish', 'Ticket Reply (Sent to Customer) [spanish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(775, 'ticket', 'ticket-autoresponse', 'spanish', 'New Ticket Opened - Autoresponse [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(776, 'invoice', 'invoice-payment-recorded', 'spanish', 'Invoice Payment Recorded (Sent to Customer) [spanish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(777, 'invoice', 'invoice-overdue-notice', 'spanish', 'Invoice Overdue Notice [spanish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(778, 'invoice', 'invoice-already-send', 'spanish', 'Invoice Already Sent to Customer [spanish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(779, 'ticket', 'new-ticket-created-staff', 'spanish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(780, 'estimate', 'estimate-send-to-client', 'spanish', 'Send Estimate to Customer [spanish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(781, 'ticket', 'ticket-reply-to-admin', 'spanish', 'Ticket Reply (Sent to Staff) [spanish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(782, 'estimate', 'estimate-already-send', 'spanish', 'Estimate Already Sent to Customer [spanish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(783, 'contract', 'contract-expiration', 'spanish', 'Contract Expiration [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(784, 'tasks', 'task-assigned', 'spanish', 'New Task Assigned (Sent to Staff) [spanish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(785, 'tasks', 'task-added-as-follower', 'spanish', 'Staff Member Added as Follower on Task [spanish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(786, 'tasks', 'task-commented', 'spanish', 'New Comment on Task (Sent to Staff) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(787, 'tasks', 'task-marked-as-finished', 'spanish', 'Task Marked as Finished (Sent to Staff) [spanish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(788, 'tasks', 'task-added-attachment', 'spanish', 'New Attachment on Task (Sent to Staff) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(789, 'tasks', 'task-unmarked-as-finished', 'spanish', 'Task Unmarked as Finished (Sent to Staff) [spanish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(790, 'estimate', 'estimate-declined-to-staff', 'spanish', 'Estimate Declined (Sent to Staff) [spanish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(791, 'estimate', 'estimate-accepted-to-staff', 'spanish', 'Estimate Accepted (Sent to Staff) [spanish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(792, 'proposals', 'proposal-client-accepted', 'spanish', 'Customer Action - Accepted (Sent to Staff) [spanish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(793, 'proposals', 'proposal-send-to-customer', 'spanish', 'Send Proposal to Customer [spanish]', 'Proposal', 'A quien corresponda<br />Presente<br /><br />A continuaci&oacute;n se presenta la cotizaci&oacute;n con n&uacute;mero&nbsp;<a href=\"http://localhost:8888/publicarte/admin/emails/email_template/23#\" class=\"add_merge_field\">{proposal_number}</a>', '{companyname} | CRM', '', 0, 1, 0),
(794, 'proposals', 'proposal-client-declined', 'spanish', 'Customer Action - Declined (Sent to Staff) [spanish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(795, 'proposals', 'proposal-client-thank-you', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(796, 'proposals', 'proposal-comment-to-client', 'spanish', 'New Comment  (Sent to Customer Contacts) [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(797, 'proposals', 'proposal-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(798, 'estimate', 'estimate-thank-you-to-customer', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(799, 'tasks', 'task-deadline-notification', 'spanish', 'Task Deadline Reminder - Sent to Assigned Members [spanish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(800, 'contract', 'send-contract', 'spanish', 'Send Contract to Customer [spanish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(801, 'invoice', 'invoice-payment-recorded-to-staff', 'spanish', 'Invoice Payment Recorded (Sent to Staff) [spanish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(802, 'ticket', 'auto-close-ticket', 'spanish', 'Auto Close Ticket [spanish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(803, 'project', 'new-project-discussion-created-to-staff', 'spanish', 'New Project Discussion (Sent to Project Members) [spanish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(804, 'project', 'new-project-discussion-created-to-customer', 'spanish', 'New Project Discussion (Sent to Customer Contacts) [spanish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(805, 'project', 'new-project-file-uploaded-to-customer', 'spanish', 'New Project File Uploaded (Sent to Customer Contacts) [spanish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(806, 'project', 'new-project-file-uploaded-to-staff', 'spanish', 'New Project File Uploaded (Sent to Project Members) [spanish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(807, 'project', 'new-project-discussion-comment-to-customer', 'spanish', 'New Discussion Comment  (Sent to Customer Contacts) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(808, 'project', 'new-project-discussion-comment-to-staff', 'spanish', 'New Discussion Comment (Sent to Project Members) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(809, 'project', 'staff-added-as-project-member', 'spanish', 'Staff Added as Project Member [spanish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(810, 'estimate', 'estimate-expiry-reminder', 'spanish', 'Estimate Expiration Reminder [spanish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(811, 'proposals', 'proposal-expiry-reminder', 'spanish', 'Proposal Expiration Reminder [spanish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(812, 'staff', 'new-staff-created', 'spanish', 'New Staff Created (Welcome Email) [spanish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(813, 'client', 'contact-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(814, 'client', 'contact-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(815, 'client', 'contact-set-password', 'spanish', 'Set New Password [spanish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(816, 'staff', 'staff-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(817, 'staff', 'staff-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(818, 'project', 'assigned-to-project', 'spanish', 'New Project Created (Sent to Customer Contacts) [spanish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(819, 'tasks', 'task-marked-as-finished-to-contacts', 'spanish', 'Task Marked as Finished (Sent to customer contacts) [spanish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(820, 'tasks', 'task-added-attachment-to-contacts', 'spanish', 'New Attachment on Task (Sent to Customer Contacts) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(821, 'tasks', 'task-commented-to-contacts', 'spanish', 'New Comment on Task (Sent to Customer Contacts) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(822, 'leads', 'new-lead-assigned', 'spanish', 'New Lead Assigned to Staff Member [spanish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(823, 'client', 'client-statement', 'spanish', 'Statement - Account Summary [spanish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(824, 'ticket', 'ticket-assigned-to-admin', 'spanish', 'New Ticket Assigned (Sent to Staff) [spanish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(825, 'client', 'new-client-registered-to-admin', 'spanish', 'New Customer Registration (Sent to admins) [spanish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(826, 'client', 'new-client-created', 'swedish', 'New Contact Added/Registered (Welcome Email) [swedish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(827, 'invoice', 'invoice-send-to-client', 'swedish', 'Send Invoice to Customer [swedish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(828, 'ticket', 'new-ticket-opened-admin', 'swedish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(829, 'ticket', 'ticket-reply', 'swedish', 'Ticket Reply (Sent to Customer) [swedish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(830, 'ticket', 'ticket-autoresponse', 'swedish', 'New Ticket Opened - Autoresponse [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(831, 'invoice', 'invoice-payment-recorded', 'swedish', 'Invoice Payment Recorded (Sent to Customer) [swedish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(832, 'invoice', 'invoice-overdue-notice', 'swedish', 'Invoice Overdue Notice [swedish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(833, 'invoice', 'invoice-already-send', 'swedish', 'Invoice Already Sent to Customer [swedish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(834, 'ticket', 'new-ticket-created-staff', 'swedish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(835, 'estimate', 'estimate-send-to-client', 'swedish', 'Send Estimate to Customer [swedish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(836, 'ticket', 'ticket-reply-to-admin', 'swedish', 'Ticket Reply (Sent to Staff) [swedish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(837, 'estimate', 'estimate-already-send', 'swedish', 'Estimate Already Sent to Customer [swedish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(838, 'contract', 'contract-expiration', 'swedish', 'Contract Expiration [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(839, 'tasks', 'task-assigned', 'swedish', 'New Task Assigned (Sent to Staff) [swedish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(840, 'tasks', 'task-added-as-follower', 'swedish', 'Staff Member Added as Follower on Task [swedish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(841, 'tasks', 'task-commented', 'swedish', 'New Comment on Task (Sent to Staff) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(842, 'tasks', 'task-marked-as-finished', 'swedish', 'Task Marked as Finished (Sent to Staff) [swedish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(843, 'tasks', 'task-added-attachment', 'swedish', 'New Attachment on Task (Sent to Staff) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(844, 'tasks', 'task-unmarked-as-finished', 'swedish', 'Task Unmarked as Finished (Sent to Staff) [swedish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(845, 'estimate', 'estimate-declined-to-staff', 'swedish', 'Estimate Declined (Sent to Staff) [swedish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(846, 'estimate', 'estimate-accepted-to-staff', 'swedish', 'Estimate Accepted (Sent to Staff) [swedish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(847, 'proposals', 'proposal-client-accepted', 'swedish', 'Customer Action - Accepted (Sent to Staff) [swedish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(848, 'proposals', 'proposal-send-to-customer', 'swedish', 'Send Proposal to Customer [swedish]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(849, 'proposals', 'proposal-client-declined', 'swedish', 'Customer Action - Declined (Sent to Staff) [swedish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(850, 'proposals', 'proposal-client-thank-you', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(851, 'proposals', 'proposal-comment-to-client', 'swedish', 'New Comment  (Sent to Customer Contacts) [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(852, 'proposals', 'proposal-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(853, 'estimate', 'estimate-thank-you-to-customer', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(854, 'tasks', 'task-deadline-notification', 'swedish', 'Task Deadline Reminder - Sent to Assigned Members [swedish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(855, 'contract', 'send-contract', 'swedish', 'Send Contract to Customer [swedish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(856, 'invoice', 'invoice-payment-recorded-to-staff', 'swedish', 'Invoice Payment Recorded (Sent to Staff) [swedish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(857, 'ticket', 'auto-close-ticket', 'swedish', 'Auto Close Ticket [swedish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(858, 'project', 'new-project-discussion-created-to-staff', 'swedish', 'New Project Discussion (Sent to Project Members) [swedish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(859, 'project', 'new-project-discussion-created-to-customer', 'swedish', 'New Project Discussion (Sent to Customer Contacts) [swedish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(860, 'project', 'new-project-file-uploaded-to-customer', 'swedish', 'New Project File Uploaded (Sent to Customer Contacts) [swedish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(861, 'project', 'new-project-file-uploaded-to-staff', 'swedish', 'New Project File Uploaded (Sent to Project Members) [swedish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(862, 'project', 'new-project-discussion-comment-to-customer', 'swedish', 'New Discussion Comment  (Sent to Customer Contacts) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(863, 'project', 'new-project-discussion-comment-to-staff', 'swedish', 'New Discussion Comment (Sent to Project Members) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(864, 'project', 'staff-added-as-project-member', 'swedish', 'Staff Added as Project Member [swedish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(865, 'estimate', 'estimate-expiry-reminder', 'swedish', 'Estimate Expiration Reminder [swedish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(866, 'proposals', 'proposal-expiry-reminder', 'swedish', 'Proposal Expiration Reminder [swedish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(867, 'staff', 'new-staff-created', 'swedish', 'New Staff Created (Welcome Email) [swedish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(868, 'client', 'contact-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(869, 'client', 'contact-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(870, 'client', 'contact-set-password', 'swedish', 'Set New Password [swedish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(871, 'staff', 'staff-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(872, 'staff', 'staff-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(873, 'project', 'assigned-to-project', 'swedish', 'New Project Created (Sent to Customer Contacts) [swedish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(874, 'tasks', 'task-marked-as-finished-to-contacts', 'swedish', 'Task Marked as Finished (Sent to customer contacts) [swedish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(875, 'tasks', 'task-added-attachment-to-contacts', 'swedish', 'New Attachment on Task (Sent to Customer Contacts) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(876, 'tasks', 'task-commented-to-contacts', 'swedish', 'New Comment on Task (Sent to Customer Contacts) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(877, 'leads', 'new-lead-assigned', 'swedish', 'New Lead Assigned to Staff Member [swedish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(878, 'client', 'client-statement', 'swedish', 'Statement - Account Summary [swedish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(879, 'ticket', 'ticket-assigned-to-admin', 'swedish', 'New Ticket Assigned (Sent to Staff) [swedish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(880, 'client', 'new-client-registered-to-admin', 'swedish', 'New Customer Registration (Sent to admins) [swedish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(881, 'client', 'new-client-created', 'turkish', 'New Contact Added/Registered (Welcome Email) [turkish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(882, 'invoice', 'invoice-send-to-client', 'turkish', 'Send Invoice to Customer [turkish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(883, 'ticket', 'new-ticket-opened-admin', 'turkish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(884, 'ticket', 'ticket-reply', 'turkish', 'Ticket Reply (Sent to Customer) [turkish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(885, 'ticket', 'ticket-autoresponse', 'turkish', 'New Ticket Opened - Autoresponse [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(886, 'invoice', 'invoice-payment-recorded', 'turkish', 'Invoice Payment Recorded (Sent to Customer) [turkish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(887, 'invoice', 'invoice-overdue-notice', 'turkish', 'Invoice Overdue Notice [turkish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(888, 'invoice', 'invoice-already-send', 'turkish', 'Invoice Already Sent to Customer [turkish]', 'On your command here is the invoice', '', '{companyname} | CRM', NULL, 0, 1, 0),
(889, 'ticket', 'new-ticket-created-staff', 'turkish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(890, 'estimate', 'estimate-send-to-client', 'turkish', 'Send Estimate to Customer [turkish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(891, 'ticket', 'ticket-reply-to-admin', 'turkish', 'Ticket Reply (Sent to Staff) [turkish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(892, 'estimate', 'estimate-already-send', 'turkish', 'Estimate Already Sent to Customer [turkish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(893, 'contract', 'contract-expiration', 'turkish', 'Contract Expiration [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(894, 'tasks', 'task-assigned', 'turkish', 'New Task Assigned (Sent to Staff) [turkish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(895, 'tasks', 'task-added-as-follower', 'turkish', 'Staff Member Added as Follower on Task [turkish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(896, 'tasks', 'task-commented', 'turkish', 'New Comment on Task (Sent to Staff) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(897, 'tasks', 'task-marked-as-finished', 'turkish', 'Task Marked as Finished (Sent to Staff) [turkish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(898, 'tasks', 'task-added-attachment', 'turkish', 'New Attachment on Task (Sent to Staff) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(899, 'tasks', 'task-unmarked-as-finished', 'turkish', 'Task Unmarked as Finished (Sent to Staff) [turkish]', 'Task UN-marked as finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(900, 'estimate', 'estimate-declined-to-staff', 'turkish', 'Estimate Declined (Sent to Staff) [turkish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(901, 'estimate', 'estimate-accepted-to-staff', 'turkish', 'Estimate Accepted (Sent to Staff) [turkish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(902, 'proposals', 'proposal-client-accepted', 'turkish', 'Customer Action - Accepted (Sent to Staff) [turkish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(903, 'proposals', 'proposal-send-to-customer', 'turkish', 'Send Proposal to Customer [turkish]', 'Proposal', '', '{companyname} | CRM', '', 0, 1, 0),
(904, 'proposals', 'proposal-client-declined', 'turkish', 'Customer Action - Declined (Sent to Staff) [turkish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(905, 'proposals', 'proposal-client-thank-you', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(906, 'proposals', 'proposal-comment-to-client', 'turkish', 'New Comment  (Sent to Customer Contacts) [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(907, 'proposals', 'proposal-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(908, 'estimate', 'estimate-thank-you-to-customer', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(909, 'tasks', 'task-deadline-notification', 'turkish', 'Task Deadline Reminder - Sent to Assigned Members [turkish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(910, 'contract', 'send-contract', 'turkish', 'Send Contract to Customer [turkish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(911, 'invoice', 'invoice-payment-recorded-to-staff', 'turkish', 'Invoice Payment Recorded (Sent to Staff) [turkish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(912, 'ticket', 'auto-close-ticket', 'turkish', 'Auto Close Ticket [turkish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(913, 'project', 'new-project-discussion-created-to-staff', 'turkish', 'New Project Discussion (Sent to Project Members) [turkish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(914, 'project', 'new-project-discussion-created-to-customer', 'turkish', 'New Project Discussion (Sent to Customer Contacts) [turkish]', 'New Project Discussion Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(915, 'project', 'new-project-file-uploaded-to-customer', 'turkish', 'New Project File Uploaded (Sent to Customer Contacts) [turkish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(916, 'project', 'new-project-file-uploaded-to-staff', 'turkish', 'New Project File Uploaded (Sent to Project Members) [turkish]', 'New Project File Uploaded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(917, 'project', 'new-project-discussion-comment-to-customer', 'turkish', 'New Discussion Comment  (Sent to Customer Contacts) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(918, 'project', 'new-project-discussion-comment-to-staff', 'turkish', 'New Discussion Comment (Sent to Project Members) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(919, 'project', 'staff-added-as-project-member', 'turkish', 'Staff Added as Project Member [turkish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(920, 'estimate', 'estimate-expiry-reminder', 'turkish', 'Estimate Expiration Reminder [turkish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(921, 'proposals', 'proposal-expiry-reminder', 'turkish', 'Proposal Expiration Reminder [turkish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(922, 'staff', 'new-staff-created', 'turkish', 'New Staff Created (Welcome Email) [turkish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(923, 'client', 'contact-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(924, 'client', 'contact-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(925, 'client', 'contact-set-password', 'turkish', 'Set New Password [turkish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(926, 'staff', 'staff-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(927, 'staff', 'staff-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(928, 'project', 'assigned-to-project', 'turkish', 'New Project Created (Sent to Customer Contacts) [turkish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(929, 'tasks', 'task-marked-as-finished-to-contacts', 'turkish', 'Task Marked as Finished (Sent to customer contacts) [turkish]', 'Task Marked as Finished - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(930, 'tasks', 'task-added-attachment-to-contacts', 'turkish', 'New Attachment on Task (Sent to Customer Contacts) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(931, 'tasks', 'task-commented-to-contacts', 'turkish', 'New Comment on Task (Sent to Customer Contacts) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(932, 'leads', 'new-lead-assigned', 'turkish', 'New Lead Assigned to Staff Member [turkish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(933, 'client', 'client-statement', 'turkish', 'Statement - Account Summary [turkish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(934, 'ticket', 'ticket-assigned-to-admin', 'turkish', 'New Ticket Assigned (Sent to Staff) [turkish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(935, 'client', 'new-client-registered-to-admin', 'turkish', 'New Customer Registration (Sent to admins) [turkish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblestimates`
--

INSERT INTO `tblestimates` (`id`, `sent`, `datesend`, `clientid`, `project_id`, `number`, `prefix`, `number_format`, `hash`, `datecreated`, `date`, `expirydate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `status`, `clientnote`, `adminnote`, `discount_percent`, `discount_total`, `discount_type`, `invoiceid`, `invoiced_date`, `terms`, `reference_no`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_estimate`, `show_quantity_as`, `pipeline_order`, `is_expiry_notified`) VALUES
(1, 0, NULL, 1, 0, 1, 'ORD-', 1, '23dd81e53e3c4569e15ca49f054a4f50', '2017-10-24 22:35:51', '2017-10-24', '2017-10-31', 3, '1410.00', '0.00', '1410.00', '0.00', 1, 1, '', '', '0.00', '0.00', '', NULL, NULL, '', '', 0, 'Avenida nuevas Tecnologias', 'Victoria', 'Victoria', '87138', 142, 'Avenida nuevas Tecnologias', 'Victoria', 'Victoria', '87138', 142, 1, 1, 1, 0, 0),
(2, 0, NULL, 1, 0, 2, 'ORD-', 1, '58dd39d43ebf8e7aca2c95b7e951e77b', '2017-10-25 20:51:59', '2017-10-10', '2017-10-17', 3, '45.00', '7.20', '52.20', '0.00', 1, 4, '', '', '0.00', '0.00', '', 3, '2017-12-05 10:44:09', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0),
(3, 0, NULL, 3, 0, 3, 'ORD-', 1, 'd94b53e773aaeb8bb9f54c02a7f2ba43', '2017-10-26 15:20:44', '2017-10-26', '2017-11-02', 3, '4.50', '0.72', '5.22', '0.00', 1, 1, '', '', '0.00', '0.00', '', NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0),
(4, 0, NULL, 4, 0, 4, 'ORD-', 1, 'ea955a8e98eee1beafedf8f655060f8f', '2017-10-27 00:00:57', '2017-10-26', '2017-11-02', 3, '4.50', '0.72', '5.22', '0.00', 1, 1, '', '', '0.00', '0.00', '', NULL, NULL, '', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0),
(5, 0, NULL, 5, 0, 5, 'ORD-', 1, '1bf4491386b405ae403d5ca4da172241', '2017-10-30 22:59:23', '2017-10-30', '2017-11-06', 3, '21.00', '3.36', '24.36', '0.00', 3, 1, '', '', '0.00', '0.00', '', NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0),
(6, 0, NULL, 6, 0, 6, 'ORD-', 1, '892140876a1344027b668734bcd7c3cf', '2017-11-04 12:10:22', '2017-11-04', '2017-11-15', 3, '6200.00', '992.00', '7192.00', '0.00', 3, 4, '', '', '0.00', '0.00', '', 2, '2017-11-04 12:32:54', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0),
(7, 0, NULL, 6, 0, 7, 'ORD-', 1, '3f8aa8247a6da7a63354cc74d9976867', '2017-11-04 12:39:36', '2017-11-04', '2017-11-11', 3, '36000.00', '5760.00', '41760.00', '0.00', 3, 1, '', '', '0.00', '0.00', '', NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT '0',
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(500) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblexpensescategories`
--

CREATE TABLE `tblexpensescategories` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(600) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblformquestionboxes`
--

CREATE TABLE `tblformquestionboxes` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblformquestionboxesdescription`
--

CREATE TABLE `tblformquestionboxesdescription` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblformquestions`
--

CREATE TABLE `tblformquestions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblformresults`
--

CREATE TABLE `tblformresults` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblgoals`
--

CREATE TABLE `tblgoals` (
  `id` int(11) NOT NULL,
  `subject` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblinvoicepaymentrecords`
--

INSERT INTO `tblinvoicepaymentrecords` (`id`, `invoiceid`, `amount`, `paymentmode`, `paymentmethod`, `date`, `daterecorded`, `note`, `transactionid`) VALUES
(1, 1, '100.00', '1', NULL, '2017-10-24', '2017-10-24 22:46:37', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinvoicepaymentsmodes`
--

CREATE TABLE `tblinvoicepaymentsmodes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblinvoicepaymentsmodes`
--

INSERT INTO `tblinvoicepaymentsmodes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Efectivo', '', 0, 0, 0, 1, 1),
(2, 'Cheque', '', 0, 0, 0, 0, 1),
(3, 'Transferencia bancaria', '', 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblinvoices`
--

INSERT INTO `tblinvoices` (`id`, `sent`, `datesend`, `clientid`, `number`, `prefix`, `number_format`, `datecreated`, `date`, `duedate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `hash`, `status`, `clientnote`, `adminnote`, `last_overdue_reminder`, `cancel_overdue_reminders`, `allowed_payment_modes`, `token`, `discount_percent`, `discount_total`, `discount_type`, `recurring`, `recurring_type`, `custom_recurring`, `recurring_ends_on`, `is_recurring_from`, `last_recurring_date`, `terms`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_invoice`, `show_quantity_as`, `project_id`) VALUES
(1, 0, NULL, 1, 1, 'FAC-', 1, '2017-10-24 22:45:37', '2017-10-24', '2017-11-23', 3, '450.00', '0.00', '450.00', '0.00', 1, '22fe649a835e901d0627405ded120abc', 3, '', '', NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, NULL, NULL, NULL, '', 0, 'Avenida nuevas Tecnologias', 'Victoria', 'Victoria', '87138', 142, 'Avenida nuevas Tecnologias', 'Victoria', 'Victoria', '87138', 142, 1, 1, 1, 0),
(2, 0, NULL, 6, 2, 'FAC-', 1, '2017-11-04 12:32:54', '2017-11-04', '2017-12-04', 3, '6200.00', '992.00', '7192.00', '0.00', 3, 'ca99eecafb91fd7efeed066d5e64771b', 1, '', '', NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, NULL, NULL, NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(3, 0, NULL, 1, 3, 'FAC-', 1, '2017-12-05 10:44:09', '2017-12-05', '2018-01-04', 3, '45.00', '7.20', '52.20', '0.00', 1, 'd131654a3cded0aed8722b4b50e254b8', 1, '', '', NULL, 0, 'a:1:{i:0;s:1:\"1\";}', NULL, '0.00', '0.00', '', 0, NULL, 0, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblitems`
--

INSERT INTO `tblitems` (`id`, `description`, `long_description`, `rate`, `tax`, `tax2`, `unit`, `group_id`) VALUES
(1, 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '4.50', 1, NULL, 'ejemplar', 1),
(2, 'Escaneo a color', '', '12.00', 1, NULL, 'pza', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblitemsrelated`
--

CREATE TABLE `tblitemsrelated` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblitemstax`
--

CREATE TABLE `tblitemstax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblitemstax`
--

INSERT INTO `tblitemstax` (`id`, `itemid`, `rel_id`, `rel_type`, `taxrate`, `taxname`) VALUES
(1, 4, 2, 'estimate', '16.00', 'IVA'),
(2, 5, 3, 'estimate', '16.00', 'IVA'),
(3, 6, 1, 'proposal', '16.00', 'IVA'),
(4, 7, 2, 'proposal', '16.00', 'IVA'),
(5, 8, 3, 'proposal', '16.00', 'IVA'),
(6, 9, 4, 'estimate', '16.00', 'IVA'),
(7, 10, 4, 'proposal', '16.00', 'IVA'),
(8, 11, 5, 'proposal', '16.00', 'IVA'),
(9, 12, 7, 'proposal', '16.00', 'IVA'),
(10, 13, 8, 'proposal', '16.00', 'IVA'),
(11, 14, 8, 'proposal', '16.00', 'IVA'),
(12, 15, 5, 'estimate', '16.00', 'IVA'),
(13, 16, 5, 'estimate', '16.00', 'IVA'),
(14, 17, 9, 'proposal', '16.00', 'IVA'),
(15, 18, 9, 'proposal', '16.00', 'IVA'),
(16, 19, 6, 'estimate', '16.00', 'IVA'),
(17, 20, 6, 'estimate', '16.00', 'IVA'),
(18, 21, 6, 'estimate', '16.00', 'IVA'),
(19, 22, 2, 'invoice', '16.00', 'IVA'),
(20, 23, 2, 'invoice', '16.00', 'IVA'),
(21, 24, 2, 'invoice', '16.00', 'IVA'),
(22, 25, 7, 'estimate', '16.00', 'IVA'),
(23, 26, 10, 'proposal', '16.00', 'IVA'),
(24, 27, 10, 'proposal', '16.00', 'IVA'),
(25, 28, 11, 'proposal', '16.00', 'IVA'),
(26, 29, 3, 'invoice', '16.00', 'IVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblitems_groups`
--

INSERT INTO `tblitems_groups` (`id`, `name`) VALUES
(1, 'Offset'),
(2, 'Papel'),
(3, 'Escaneo'),
(4, 'Impresión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblitems_in`
--

CREATE TABLE `tblitems_in` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `acabado` mediumtext,
  `clave` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblitems_in`
--

INSERT INTO `tblitems_in` (`id`, `rel_id`, `rel_type`, `description`, `long_description`, `qty`, `rate`, `unit`, `item_order`, `acabado`, `clave`) VALUES
(1, 1, 'estimate', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '100.00', '4.50', 'ejemplar', 1, NULL, NULL),
(2, 1, 'estimate', 'Flyer publicitariode 1.80 x 1 ', '', '2.00', '480.00', '', 2, NULL, NULL),
(3, 1, 'invoice', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '100.00', '4.50', 'ejemplar', 1, NULL, NULL),
(4, 2, 'estimate', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '10.00', '4.50', 'ejemplar', 1, NULL, NULL),
(5, 3, 'estimate', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(6, 1, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(7, 2, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(8, 3, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(9, 4, 'estimate', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(10, 4, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(11, 5, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '1.00', '4.50', 'ejemplar', 1, NULL, NULL),
(12, 7, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '100.00', '4.50', 'ejemplar', 1, NULL, NULL),
(13, 8, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '2.00', '4.50', 'ejemplar', 1, NULL, NULL),
(14, 8, 'proposal', 'Papel rojo', 'papel rojo satinado', '1.00', '12.00', '', 2, NULL, NULL),
(15, 5, 'estimate', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '2.00', '4.50', 'ejemplar', 1, NULL, NULL),
(16, 5, 'estimate', 'Papel rojo', 'papel rojo satinado', '1.00', '12.00', '', 2, NULL, NULL),
(17, 9, 'proposal', 'anfora lake anf 006', 'impreso a 1 tina', '100.00', '25.00', '', 1, NULL, NULL),
(18, 9, 'proposal', 'boligrafos impresos a 1 tinta', '', '1000.00', '3.50', '', 2, NULL, NULL),
(19, 6, 'estimate', 'anfora lake anf 006', '20 moradas impresa en blanco<br />\r\n20 ner', '100.00', '25.00', '', 1, NULL, NULL),
(20, 6, 'estimate', 'boligrafos impresos a 1 tinta', '', '1000.00', '3.50', '', 2, NULL, NULL),
(21, 6, 'estimate', 'yrdtcfy', 'fvytbhn', '100.00', '2.00', '', 3, NULL, NULL),
(22, 2, 'invoice', 'anfora lake anf 006', '20 moradas impresa en blanco<br /><br />\r\n20 ner', '100.00', '25.00', '', 1, NULL, NULL),
(23, 2, 'invoice', 'boligrafos impresos a 1 tinta', '', '1000.00', '3.50', '', 2, NULL, NULL),
(24, 2, 'invoice', 'yrdtcfy', 'fvytbhn', '100.00', '2.00', '', 3, NULL, NULL),
(25, 7, 'estimate', 'plumas', '', '6000.00', '6.00', '', 1, NULL, NULL),
(26, 10, 'proposal', 'Escaneo a color', '', '1.00', '12.00', 'pza', 1, NULL, NULL),
(27, 10, 'proposal', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '4.00', '4.50', 'ejemplar', 2, NULL, NULL),
(28, 11, 'proposal', 'aa', 'ss', '2.00', '1.00', '', 1, NULL, NULL),
(29, 3, 'invoice', 'Impresion de invitaciones de 5x 4', 'Impresion de invitaciones de 5x 4', '10.00', '4.50', 'ejemplar', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblknowledgebase`
--

CREATE TABLE `tblknowledgebase` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblknowledgebasearticleanswers`
--

CREATE TABLE `tblknowledgebasearticleanswers` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblknowledgebasegroups`
--

CREATE TABLE `tblknowledgebasegroups` (
  `groupid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblleadactivitylog`
--

CREATE TABLE `tblleadactivitylog` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblleadsemailintegrationemails`
--

CREATE TABLE `tblleadsemailintegrationemails` (
  `id` int(11) NOT NULL,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblleadsintegration`
--

CREATE TABLE `tblleadsintegration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblleadsintegration`
--

INSERT INTO `tblleadsintegration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'inbox', '', 1, 1, 'roles', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblleadssources`
--

CREATE TABLE `tblleadssources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblleadssources`
--

INSERT INTO `tblleadssources` (`id`, `name`) VALUES
(1, 'Google'),
(2, 'Facebook');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblleadsstatus`
--

CREATE TABLE `tblleadsstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblleadsstatus`
--

INSERT INTO `tblleadsstatus` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbllistemails`
--

CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmaillistscustomfields`
--

CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmaillistscustomfieldvalues`
--

CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(181);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT '0',
  `isread_inline` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'd/m/Y|%d/%m/%Y', 1),
(2, 'companyname', 'PUBLICARTE', 1),
(3, 'services', '0', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '1', 1),
(8, 'smtp_email', '', 0),
(9, 'smtp_password', '', 0),
(10, 'smtp_port', '', 0),
(11, 'smtp_host', '', 0),
(12, 'smtp_email_charset', 'utf-8', 0),
(13, 'default_timezone', 'America/Mexico_City', 1),
(14, 'clients_default_theme', 'perfex', 1),
(15, 'company_logo', 'logo.png', 1),
(16, 'tables_pagination_limit', '25', 1),
(17, 'main_domain', '', 1),
(18, 'allow_registration', '0', 1),
(19, 'knowledge_base_without_registration', '1', 1),
(20, 'email_signature', '', 1),
(21, 'default_staff_role', '1', 1),
(22, 'newsfeed_maximum_files_upload', '10', 1),
(23, 'newsfeed_maximum_file_size', '5', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'FAC-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'currency_placement', 'before', 1),
(29, 'invoice_company_name', 'PUBLICARTE', 1),
(30, 'invoice_company_address', 'RAFAEL TEJEDA No. 251 COL. MAGISTERIAL', 1),
(31, 'invoice_company_city', 'VICTORIA', 1),
(32, 'invoice_company_country_code', 'MEXICO', 1),
(33, 'invoice_company_postal_code', '87026', 1),
(34, 'invoice_company_phonenumber', '834 3059021', 1),
(35, 'view_invoice_only_logged_in', '0', 1),
(36, 'invoice_number_format', '1', 1),
(37, 'next_invoice_number', '4', 0),
(38, 'cron_send_invoice_overdue_reminder', '1', 1),
(39, 'active_language', 'spanish', 1),
(40, 'invoice_number_decrement_on_delete', '1', 1),
(41, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(42, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(43, 'expenses_auto_operations_hour', '21', 1),
(44, 'survey_send_emails_per_cron_run', '100', 1),
(45, 'delete_only_on_last_invoice', '0', 1),
(46, 'delete_only_on_last_estimate', '1', 1),
(47, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(48, 'allow_payment_amount_to_be_modified', '1', 1),
(49, 'send_renewed_invoice_from_recurring_to_email', '1', 1),
(50, 'rtl_support_client', '0', 1),
(51, 'limit_top_search_bar_results_to', '10', 1),
(52, 'estimate_prefix', 'ORD-', 1),
(53, 'next_estimate_number', '8', 0),
(54, 'estimate_number_decrement_on_delete', '1', 1),
(55, 'estimate_number_format', '1', 1),
(56, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(57, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(58, 'rtl_support_admin', '0', 1),
(59, 'last_cron_run', '', 1),
(60, 'show_sale_agent_on_estimates', '1', 1),
(61, 'show_sale_agent_on_invoices', '1', 1),
(62, 'predefined_terms_invoice', '', 1),
(63, 'predefined_terms_estimate', '', 1),
(64, 'default_task_priority', '2', 1),
(65, 'dropbox_app_key', '', 1),
(66, 'show_expense_reminders_on_calendar', '1', 1),
(67, 'only_show_contact_tickets', '1', 1),
(68, 'predefined_clientnote_invoice', '', 1),
(69, 'predefined_clientnote_estimate', '', 1),
(70, 'custom_pdf_logo_image_url', '', 1),
(71, 'favicon', '', 1),
(72, 'auto_backup_enabled', '0', 1),
(73, 'invoice_due_after', '30', 1),
(74, 'google_api_key', '', 1),
(75, 'google_calendar_main_calendar', '', 1),
(76, 'default_tax', 'a:1:{i:0;s:9:\"IVA|16.00\";}', 1),
(77, 'show_invoices_on_calendar', '1', 1),
(78, 'show_estimates_on_calendar', '1', 1),
(79, 'show_contracts_on_calendar', '1', 1),
(80, 'show_tasks_on_calendar', '1', 1),
(81, 'show_customer_reminders_on_calendar', '1', 1),
(82, 'auto_backup_every', '7', 1),
(83, 'last_auto_backup', '', 1),
(84, 'output_client_pdfs_from_admin_area_in_client_language', '1', 1),
(85, 'show_lead_reminders_on_calendar', '1', 1),
(86, 'aside_menu_active', '{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"Cotizaciones\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"Ordenes de trabajo\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]}]}', 1),
(87, 'estimate_expiry_reminder_enabled', '1', 1),
(88, 'send_estimate_expiry_reminder_before', '4', 1),
(89, 'leads_default_source', '', 1),
(90, 'leads_default_status', '', 1),
(91, 'proposal_expiry_reminder_enabled', '1', 1),
(92, 'send_proposal_expiry_reminder_before', '4', 1),
(93, 'default_contact_permissions', 'a:0:{}', 1),
(94, 'pdf_logo_width', '150', 1),
(95, 'aside_menu_inactive', '{\"aside_menu_inactive\":[{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"}]},{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"}]},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-heartbeat\",\"id\":\"expenses\"}]}', 1),
(96, 'setup_menu_active', '{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"}]},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}', 1),
(97, 'access_tickets_to_none_staff_members', '0', 1),
(98, 'setup_menu_inactive', '{\"setup_menu_inactive\":{\"1\":{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"url\":\"leads\\/forms\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-to-lead\"}]},\"2\":{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predefined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predefined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},\"3\":{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"},\"4\":{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},\"5\":{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},\"6\":{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"}}}', 1),
(99, 'customer_default_country', '142', 1),
(100, 'view_estimate_only_logged_in', '0', 1),
(101, 'show_status_on_pdf_ei', '1', 1),
(102, 'email_piping_only_replies', '0', 1),
(103, 'email_piping_only_registered', '0', 1),
(104, 'default_view_calendar', 'month', 1),
(105, 'email_piping_default_priority', '2', 1),
(106, 'total_to_words_lowercase', '0', 1),
(107, 'show_tax_per_item', '1', 1),
(108, 'last_survey_send_cron', '', 1),
(109, 'total_to_words_enabled', '0', 1),
(110, 'receive_notification_on_new_ticket', '0', 1),
(111, 'autoclose_tickets_after', '0', 1),
(112, 'media_max_file_size_upload', '10', 1),
(113, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(114, 'show_projects_on_calendar', '1', 1),
(115, 'leads_kanban_limit', '50', 1),
(116, 'tasks_reminder_notification_before', '2', 1),
(117, 'pdf_font', 'freesans', 1),
(118, 'pdf_table_heading_color', '#323a45', 1),
(119, 'pdf_table_heading_text_color', '#ffffff', 1),
(120, 'pdf_font_size', '10', 1),
(121, 'default_leads_kanban_sort', 'leadorder', 1),
(122, 'default_leads_kanban_sort_type', 'asc', 1),
(123, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
(124, 'show_all_tasks_for_project_member', '1', 1),
(125, 'email_protocol', 'smtp', 1),
(126, 'calendar_first_day', '1', 1),
(127, 'recaptcha_secret_key', '', 1),
(128, 'show_help_on_setup_menu', '1', 1),
(129, 'show_proposals_on_calendar', '1', 1),
(130, 'smtp_encryption', '', 1),
(131, 'recaptcha_site_key', '', 1),
(132, 'smtp_username', '', 1),
(133, 'auto_stop_tasks_timers_on_new_timer', '0', 1),
(134, 'notification_when_customer_pay_invoice', '1', 1),
(135, 'theme_style', '[{\"id\":\"admin-menu\",\"color\":\"#207500\"},{\"id\":\"admin-menu-submenu-open\",\"color\":\"#5dc636\"},{\"id\":\"admin-menu-active-item\",\"color\":\"#3cb210\"},{\"id\":\"admin-menu-active-subitem\",\"color\":\"#8ae667\"},{\"id\":\"top-header\",\"color\":\"#2a9302\"},{\"id\":\"btn-info\",\"color\":\"#f28830\"},{\"id\":\"btn-success\",\"color\":\"#f28830\"},{\"id\":\"tabs-links-active-hover\",\"color\":\"#f28830\"},{\"id\":\"tabs-border\",\"color\":\"#f28830\"},{\"id\":\"tabs-active-border\",\"color\":\"#f28830\"},{\"id\":\"links-color\",\"color\":\"#f28830\"},{\"id\":\"table-items-heading\",\"color\":\"#2a9302\"},{\"id\":\"text-info\",\"color\":\"#f28830\"}]', 1),
(136, 'calendar_invoice_color', '#ff6f00', 1),
(137, 'calendar_estimate_color', '#ff6f00', 1),
(138, 'calendar_proposal_color', '#84c529', 1),
(139, 'new_task_auto_assign_current_member', '1', 1),
(140, 'calendar_reminder_color', '#03a9f4', 1),
(141, 'calendar_contract_color', '#b72974', 1),
(142, 'calendar_project_color', '#b72974', 1),
(143, 'update_info_message', '', 1),
(144, 'show_estimate_reminders_on_calendar', '1', 1),
(145, 'show_invoice_reminders_on_calendar', '1', 1),
(146, 'show_proposal_reminders_on_calendar', '1', 1),
(147, 'proposal_due_after', '7', 1),
(148, 'allow_customer_to_change_ticket_status', '0', 1),
(149, 'lead_lock_after_convert_to_customer', '0', 1),
(150, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(151, 'default_proposals_pipeline_sort_type', 'asc', 1),
(152, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(153, 'default_estimates_pipeline_sort_type', 'asc', 1),
(154, 'use_recaptcha_customers_area', '0', 1),
(155, 'remove_decimals_on_zero', '0', 1),
(156, 'remove_tax_name_from_item_table', '1', 1),
(157, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(158, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(159, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(160, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(161, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(162, 'auto_check_for_new_notifications', '0', 1),
(163, 'swap_pdf_info', '1', 1),
(164, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(165, 'cron_has_run_from_cli', '0', 1),
(166, 'hide_cron_is_required_message', '0', 0),
(167, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(168, 'show_transactions_on_invoice_pdf', '1', 1),
(169, 'show_pay_link_to_invoice_pdf', '1', 1),
(170, 'tasks_kanban_limit', '50', 1),
(171, 'purchase_key', '', 1),
(172, 'estimates_pipeline_limit', '50', 1),
(173, 'proposals_pipeline_limit', '50', 1),
(174, 'proposal_number_prefix', 'COT-', 1),
(175, 'number_padding_prefixes', '6', 1),
(176, 'show_page_number_on_pdf', '0', 1),
(177, 'calendar_events_limit', '4', 1),
(178, 'show_setup_menu_item_only_on_hover', '0', 1),
(179, 'company_requires_vat_number_field', '1', 1),
(180, 'company_is_required', '1', 1),
(181, 'allow_contact_to_delete_files', '0', 1),
(182, 'company_vat', 'AEVG811106M59', 1),
(183, 'di', '1508901550', 0),
(184, 'invoice_auto_operations_hour', '21', 1),
(185, 'use_minified_files', '1', 1),
(186, 'only_own_files_contacts', '1', 1),
(187, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(188, 'estimate_due_after', '7', 1),
(189, 'delete_backups_older_then', '0', 1),
(190, 'staff_members_open_tickets_to_all_contacts', '0', 1),
(191, 'contract_expiry_reminder_enabled', '1', 1),
(192, 'time_format', '12', 1),
(193, 'delete_activity_log_older_then', '2', 1),
(194, 'disable_language', '1', 1),
(195, 'company_state', 'TAMAULIPAS', 1),
(196, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(197, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(198, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(199, 'pusher_app_key', '', 1),
(200, 'pusher_app_secret', '', 1),
(201, 'pusher_app_id', '', 1),
(202, 'pusher_realtime_notifications', '0', 1),
(203, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(204, 'pusher_cluster', '', 1),
(205, 'show_table_export_button', 'to_all', 1),
(206, 'allow_staff_view_proposals_assigned', '1', 1),
(207, 'show_cloudflare_notice', '1', 0),
(208, 'paymentmethod_authorize_aim_active', '0', 0),
(209, 'paymentmethod_authorize_aim_label', 'Authorize.net', 0),
(210, 'paymentmethod_authorize_aim_api_login_id', '', 0),
(211, 'paymentmethod_authorize_aim_api_transaction_key', '', 0),
(212, 'paymentmethod_authorize_aim_currencies', 'USD', 0),
(213, 'paymentmethod_authorize_aim_default_selected', '1', 0),
(214, 'paymentmethod_authorize_aim_test_mode_enabled', '0', 0),
(215, 'paymentmethod_authorize_aim_developer_mode_enabled', '1', 0),
(216, 'paymentmethod_authorize_sim_active', '0', 0),
(217, 'paymentmethod_authorize_sim_label', 'Authorize.net', 0),
(218, 'paymentmethod_authorize_sim_api_login_id', '', 0),
(219, 'paymentmethod_authorize_sim_api_transaction_key', '', 0),
(220, 'paymentmethod_authorize_sim_api_secret_key', '', 0),
(221, 'paymentmethod_authorize_sim_currencies', 'USD', 0),
(222, 'paymentmethod_authorize_sim_default_selected', '1', 0),
(223, 'paymentmethod_authorize_sim_test_mode_enabled', '0', 0),
(224, 'paymentmethod_authorize_sim_developer_mode_enabled', '1', 0),
(225, 'paymentmethod_mollie_active', '0', 0),
(226, 'paymentmethod_mollie_label', 'Mollie', 0),
(227, 'paymentmethod_mollie_api_key', '', 0),
(228, 'paymentmethod_mollie_currencies', 'EUR', 0),
(229, 'paymentmethod_mollie_default_selected', '1', 0),
(230, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(231, 'paymentmethod_paypal_braintree_active', '0', 0),
(232, 'paymentmethod_paypal_braintree_label', 'Braintree', 0),
(233, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(234, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(235, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(236, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(237, 'paymentmethod_paypal_braintree_default_selected', '1', 0),
(238, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(239, 'paymentmethod_paypal_active', '0', 0),
(240, 'paymentmethod_paypal_label', 'Paypal', 0),
(241, 'paymentmethod_paypal_username', '', 0),
(242, 'paymentmethod_paypal_password', '', 0),
(243, 'paymentmethod_paypal_signature', '', 0),
(244, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(245, 'paymentmethod_paypal_default_selected', '1', 0),
(246, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(247, 'paymentmethod_stripe_active', '0', 0),
(248, 'paymentmethod_stripe_label', 'Stripe', 0),
(249, 'paymentmethod_stripe_api_secret_key', '', 0),
(250, 'paymentmethod_stripe_api_publishable_key', '', 0),
(251, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(252, 'paymentmethod_stripe_default_selected', '1', 0),
(253, 'paymentmethod_stripe_test_mode_enabled', '1', 0),
(254, 'paymentmethod_two_checkout_active', '0', 0),
(255, 'paymentmethod_two_checkout_label', '2Checkout', 0),
(256, 'paymentmethod_two_checkout_account_number', '', 0),
(257, 'paymentmethod_two_checkout_private_key', '', 0),
(258, 'paymentmethod_two_checkout_publishable_key', '', 0),
(259, 'paymentmethod_two_checkout_currencies', 'USD,EUR', 0),
(260, 'paymentmethod_two_checkout_default_selected', '1', 0),
(261, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpermissions`
--

CREATE TABLE `tblpermissions` (
  `permissionid` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `shortname` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblpermissions`
--

INSERT INTO `tblpermissions` (`permissionid`, `name`, `shortname`) VALUES
(1, 'Contracts', 'contracts'),
(2, 'Tasks', 'tasks'),
(3, 'Reports', 'reports'),
(4, 'Settings', 'settings'),
(5, 'Projects', 'projects'),
(6, 'Surveys', 'surveys'),
(7, 'Staff', 'staff'),
(8, 'Customers', 'customers'),
(9, 'Email Templates', 'email_templates'),
(10, 'Roles', 'roles'),
(11, 'Estimates', 'estimates'),
(12, 'Knowledge base', 'knowledge_base'),
(13, 'Proposals', 'proposals'),
(14, 'Goals', 'goals'),
(15, 'Expenses', 'expenses'),
(16, 'Bulk PDF Exporter', 'bulk_pdf_exporter'),
(17, 'Payments', 'payments'),
(18, 'Invoices', 'invoices'),
(19, 'Items', 'items');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpinnedprojects`
--

CREATE TABLE `tblpinnedprojects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpostcomments`
--

CREATE TABLE `tblpostcomments` (
  `id` int(11) NOT NULL,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpostlikes`
--

CREATE TABLE `tblpostlikes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblposts`
--

CREATE TABLE `tblposts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpredefinedreplies`
--

CREATE TABLE `tblpredefinedreplies` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpriorities`
--

CREATE TABLE `tblpriorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblpriorities`
--

INSERT INTO `tblpriorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectactivity`
--

CREATE TABLE `tblprojectactivity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(500) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectfiles`
--

CREATE TABLE `tblprojectfiles` (
  `id` int(11) NOT NULL,
  `file_name` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectmembers`
--

CREATE TABLE `tblprojectmembers` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectnotes`
--

CREATE TABLE `tblprojectnotes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(11,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblprojectsettings`
--

CREATE TABLE `tblprojectsettings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproposalcomments`
--

CREATE TABLE `tblproposalcomments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(11,2) DEFAULT NULL,
  `discount_percent` decimal(11,2) NOT NULL,
  `discount_total` decimal(11,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(600) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblproposals`
--

INSERT INTO `tblproposals` (`id`, `subject`, `content`, `addedfrom`, `datecreated`, `total`, `subtotal`, `total_tax`, `adjustment`, `discount_percent`, `discount_total`, `discount_type`, `show_quantity_as`, `currency`, `open_till`, `date`, `rel_id`, `rel_type`, `assigned`, `hash`, `proposal_to`, `country`, `zip`, `state`, `city`, `address`, `email`, `phone`, `allow_comments`, `status`, `estimate_id`, `invoice_id`, `date_converted`, `pipeline_order`, `is_expiry_notified`, `client_id`, `contact_id`) VALUES
(1, 'ssa', '{proposal_items}', 1, '2017-10-26 16:54:21', '5.22', '4.50', '0.72', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-02', '2017-10-26', 3, 'customer', 0, 'a4960cb9f4f34cfd0ea429367a8ffd71', 'Hielo y agua de victoria', 142, '', '', '', '', 'a@g', '1233-455', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(2, NULL, '{proposal_items}', 1, '2017-10-26 22:26:59', '5.22', '4.50', '0.72', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-02', '2017-10-26', 1, 'customer', 0, '521493faff6ede7627e2ebd57d94c0ad', 'Secretaria de DEsarrollo', 142, '87000', 'Victoria', 'Victoria', 'Parque bicentenario', 'luis@gob.mx', '8342140000', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(3, NULL, '{proposal_items}', 1, '2017-10-26 22:36:02', '5.22', '4.50', '0.72', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-02', '2017-10-26', 4, 'customer', 0, 'aadf54de08970069aa07daa362e9cc35', 'Público General', 142, '', '', '', '', 'admin@codeinsect.com', '', 0, 4, NULL, NULL, NULL, 0, 0, NULL, NULL),
(4, NULL, '{proposal_items}', 1, '2017-10-27 00:18:09', '5.22', '4.50', '0.72', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-03', '2017-10-27', 4, 'customer', 0, 'acaeea2e2a4ef170b8370bd471393c8d', 'Público General', 142, '', '', '', '', 'a@x.com', '', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(5, NULL, '{proposal_items}', 1, '2017-10-27 00:37:57', '5.22', '4.50', '0.72', '0.00', '0.00', '0.00', '', 3, 3, '2017-11-03', '2017-10-27', 4, 'customer', 0, 'bf207a485e282234db5fa3dede259fb0', 'Público General', 142, '', '', '', '', 'A@g', '', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(6, NULL, '{proposal_items}', 1, '2017-10-27 08:34:58', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-03', '2017-10-27', 1, 'customer', 0, 'd8c6e0b4907434a3200e6767908be1e4', 'Secretaria de DEsarrollo', 142, '87000', 'Victoria', 'Victoria', 'Parque bicentenario', 'luis@gob.mx', '8342140000', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(7, NULL, '{proposal_items}', 3, '2017-10-30 21:37:58', '506.34', '450.00', '69.84', '0.00', '3.00', '13.50', 'before_tax', 1, 0, '2017-11-06', '2017-10-30', 1, 'customer', 0, 'de06188f21c624f51ae4689fa24a4c10', 'Secretaria de DEsarrollo', 142, '87000', 'Victoria', 'Victoria', 'Parque bicentenario', 'luis@gob.mx', '8342140000', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(8, NULL, '<p>A continuaci&oacute;n se presenta la siguiente cotizaci&oacute;n solicitada</p>\n<p>{proposal_items}</p>', 3, '2017-10-30 22:55:19', '24.36', '21.00', '3.36', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-06', '2017-10-30', 5, 'customer', 0, '2b235745d2be1ee0a7c1a007d4d9a9af', 'Damtec S.A. de C.V.', 142, '87040', 'Tamaulipas', 'Victoria', 'Sonora 144', 'damtec.dev@gmail.com', '8341266776', 0, 3, 5, NULL, NULL, 0, 0, NULL, NULL),
(9, NULL, '{proposal_items}', 3, '2017-11-04 11:55:36', '6960.00', '6000.00', '960.00', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-11', '2017-11-04', 6, 'customer', 0, '15fef16b32653c632dc39225634c9c92', 'TRANSPAIS', 142, '87000', 'TAMAULIPAS', 'CIUDAD VICTORIA', 'CARRERA TORRES 2315 OTE', 'monica.guevara@transpais.com', '83484611', 1, 3, 6, NULL, NULL, 0, 0, NULL, NULL),
(10, NULL, '{proposal_items}', 3, '2017-11-21 12:20:27', '34.80', '30.00', '4.80', '0.00', '0.00', '0.00', '', 1, 3, '2017-11-28', '2017-11-21', 6, 'customer', 0, '94ea94540c03e97b4f2bf2f5d2e11569', 'TRANSPAIS', 142, '87000', 'TAMAULIPAS', 'CIUDAD VICTORIA', 'CARRERA TORRES 2315 OTE', 'monica.guevara@transpais.com', '83484611', 0, 6, NULL, NULL, NULL, 0, 0, NULL, NULL),
(11, NULL, '{proposal_items}', 3, '2017-12-02 23:06:34', '2.32', '2.00', '0.32', '0.00', '0.00', '0.00', '', 1, 3, '2017-12-09', '2017-12-02', NULL, NULL, 0, 'e12081bbd352c77549f5960500b9e3ba', '', 0, '', '', '', '', '', '', 0, 6, NULL, NULL, NULL, 0, 0, 5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrolepermissions`
--

CREATE TABLE `tblrolepermissions` (
  `rolepermissionid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `permissionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblrolepermissions`
--

INSERT INTO `tblrolepermissions` (`rolepermissionid`, `roleid`, `can_view`, `can_view_own`, `can_edit`, `can_create`, `can_delete`, `permissionid`) VALUES
(1, 1, 0, 0, 0, 0, 0, 16),
(2, 1, 0, 0, 0, 0, 0, 1),
(3, 1, 1, 0, 1, 1, 0, 8),
(4, 1, 0, 0, 0, 0, 0, 9),
(5, 1, 0, 0, 0, 0, 0, 11),
(6, 1, 0, 0, 0, 0, 0, 15),
(7, 1, 0, 0, 0, 0, 0, 14),
(8, 1, 1, 0, 0, 1, 0, 18),
(9, 1, 0, 0, 0, 0, 0, 19),
(10, 1, 0, 0, 0, 0, 0, 12),
(11, 1, 0, 0, 0, 0, 0, 17),
(12, 1, 1, 0, 0, 0, 0, 5),
(13, 1, 0, 0, 0, 0, 0, 13),
(14, 1, 0, 0, 0, 0, 0, 3),
(15, 1, 0, 0, 0, 0, 0, 10),
(16, 1, 0, 0, 0, 0, 0, 4),
(17, 1, 0, 0, 0, 0, 0, 7),
(18, 1, 0, 0, 0, 0, 0, 6),
(19, 1, 0, 0, 0, 0, 0, 2),
(20, 2, 0, 0, 0, 0, 0, 16),
(21, 2, 0, 0, 0, 0, 0, 1),
(22, 2, 0, 0, 0, 0, 0, 8),
(23, 2, 0, 0, 0, 0, 0, 9),
(24, 2, 0, 0, 0, 0, 0, 11),
(25, 2, 0, 0, 0, 0, 0, 15),
(26, 2, 0, 0, 0, 0, 0, 14),
(27, 2, 1, 0, 1, 1, 1, 18),
(28, 2, 0, 0, 0, 0, 0, 19),
(29, 2, 0, 0, 0, 0, 0, 12),
(30, 2, 1, 0, 1, 1, 1, 17),
(31, 2, 0, 0, 0, 0, 0, 5),
(32, 2, 0, 0, 0, 0, 0, 13),
(33, 2, 0, 0, 0, 0, 0, 3),
(34, 2, 0, 0, 0, 0, 0, 10),
(35, 2, 0, 0, 0, 0, 0, 4),
(36, 2, 0, 0, 0, 0, 0, 7),
(37, 2, 0, 0, 0, 0, 0, 6),
(38, 2, 0, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`) VALUES
(1, 'Empleado de ventas'),
(2, 'Contador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsalesactivity`
--

CREATE TABLE `tblsalesactivity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblsalesactivity`
--

INSERT INTO `tblsalesactivity` (`id`, `rel_type`, `rel_id`, `description`, `additional_data`, `staffid`, `full_name`, `date`) VALUES
(1, 'estimate', 1, 'estimate_activity_created', '', '1', ' ', '2017-10-24 22:35:51'),
(2, 'invoice', 1, 'invoice_activity_created', '', '1', ' ', '2017-10-24 22:45:37'),
(3, 'invoice', 1, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>3</new_status>\";}', '1', ' ', '2017-10-24 22:46:37'),
(4, 'invoice', 1, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:7:\"$100.00\";i:1;s:90:\"<a href=\"http://localhost:8888/publicarte/admin/payments/payment/1\" target=\"_blank\">#1</a>\";}', '1', ' ', '2017-10-24 22:46:37'),
(5, 'estimate', 2, 'estimate_activity_created', '', '1', 'Omar Jasso', '2017-10-25 20:51:59'),
(6, 'estimate', 3, 'estimate_activity_created', '', '1', 'Omar Jasso', '2017-10-26 15:20:44'),
(7, 'estimate', 4, 'estimate_activity_created', '', '1', 'Omar Jasso', '2017-10-27 00:00:57'),
(8, 'estimate', 5, 'estimate_activity_created', '', '3', 'Guillermo Avendaño', '2017-10-30 22:59:23'),
(9, 'estimate', 6, 'estimate_activity_created', '', '3', 'Guillermo Avendaño', '2017-11-04 12:10:22'),
(10, 'invoice', 2, 'invoice_activity_created', '', '3', 'Guillermo Avendaño', '2017-11-04 12:32:54'),
(11, 'estimate', 6, 'estimate_activity_converted', 'a:1:{i:0;s:88:\"<a href=\"http://139.59.157.165/publicarte/admin/invoices/list_invoices/2\">FAC-000002</a>\";}', '3', 'Guillermo Avendaño', '2017-11-04 12:32:54'),
(12, 'estimate', 7, 'estimate_activity_created', '', '3', 'Guillermo Avendaño', '2017-11-04 12:39:36'),
(13, 'invoice', 3, 'invoice_activity_created', '', '3', 'Guillermo Avendaño', '2017-12-05 10:44:09'),
(14, 'estimate', 2, 'estimate_activity_converted', 'a:1:{i:0;s:88:\"<a href=\"http://139.59.157.165/publicarte/admin/invoices/list_invoices/3\">FAC-000003</a>\";}', '3', 'Guillermo Avendaño', '2017-12-05 10:44:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('007rl9dbogucqsocundno7ff0mn1v0cc', '66.249.64.212', 1516774809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363737343830393b),
('00u3fnobvotbf2u79akm8slhpvs86f5i', '66.249.79.146', 1516613455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363631333435353b),
('026eqtlumqickgdft7i3l209h04e972m', '54.36.149.43', 1516039034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363033393033343b),
('03dqlcnsp185vl57ut6smr3riti2nnab', '148.245.119.253', 1511980258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313938303235383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('06g692220rfeitlcqgnol6i3h917fgpn', '66.249.64.209', 1520397041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303339373034313b),
('07m3kot0486h7cscgouv9lto28e62tij', '148.245.119.253', 1509379607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393337393630373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('086a3rhfq4flh23p1em2li34pl4qu0ps', '149.210.224.217', 1515441390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353434313339303b),
('090fpqeitrj697398tfbjupjnd1rqqgp', '66.249.64.212', 1513054173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333035343137333b),
('096r8p88peg2hshv2qnpt2h8i221rr4f', '66.249.73.192', 1518853298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383835333239383b),
('0d7apggep97oqfff4feiocbvt2rg6qsn', '54.36.149.20', 1520170720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303137303732303b),
('0e1siondgbe6nf224smslho51i8ovfas', '187.195.152.104', 1509411727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431313732373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('0eo27ru8spj6n3r69ddvtjh2ippv6fvc', '187.161.235.85', 1512620701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632303730313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('0g4i819e585armemr7dvrm8r6akg605g', '148.245.119.253', 1510758583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303735383538333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('0gtfdmi45kgvp57c0dj1dbtu3g52q0ie', '187.161.235.144', 1510800703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303830303730333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('0jhrejc24oo8kcp3kqalee7mfr7gbbob', '54.36.148.233', 1516091727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363039313732373b),
('0ju46lrqu552nii5qkh7iii0h1bv9vvf', '54.36.148.241', 1519020046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393032303034363b),
('0s6ngqj9aem7qbeutq5r7ccj8tp59ggc', '51.255.71.115', 1516180834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363138303833343b),
('0vbi2vst3s3ksr0oflnih97bngjm403f', '66.249.69.5', 1520209909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303230393930393b),
('116f1rapmd3oi6rb548pdif4envoom4f', '66.249.65.111', 1518853298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383835333239383b),
('15g3ob28u6qf1qemvp6h7eqo7so205oo', '148.245.119.253', 1512760323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323736303332333b),
('16mlum9hp731q07qbiulgtc327m9rcmp', '187.161.235.193', 1512604337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323630333338373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('16oqkl7ts1g9cupajekl02bq01q27o5s', '187.161.235.144', 1510797502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303739373530323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('176asp7fvj8unogsliq224eqg7n005cm', '187.195.152.104', 1509411733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431313732373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('1847106r2f1dcjjp171ddedr2dmsvihc', '66.249.64.205', 1520446116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434363131363b),
('18j2vkqncao9idbg9j8l2947grpg2vfd', '66.249.66.21', 1519498197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393439383139373b),
('18jpvmn428r2bq7a56vlevgbkpciam0i', '195.154.252.201', 1513339593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333333393539333b),
('18ng408ej1h3ogpq7top351fmu99jhh8', '148.245.119.253', 1511899789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313839393734343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('19tga2k8dfbd3olvqbg3ku9ck3b43nt1', '54.90.119.59', 1519544021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393534343032313b),
('1aij22heer9s5d942a5etplfka9p6eoa', '66.249.73.205', 1517557295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373535373239353b),
('1d5f7254796891af453df25d42a80e943f527af2', '::1', 1509111612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131313631323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b70726f706f73616c735f706970656c696e657c733a353a2266616c7365223b),
('1gom2vkfljd71mq82f5p3sa0cjl9se67', '164.132.91.1', 1515519261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353531393236313b),
('1ijqkcnlbolq24e2vhqnbfpa1p0jtnbp', '66.102.7.224', 1516640547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363634303534363b),
('1jg9063thiec4fh0a62m2tqj0cab3opc', '68.180.228.92', 1509636792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633363739323b),
('1keq7ad5cjla3dstv37ir18o0ui374k7', '148.245.119.253', 1511979716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313937393731363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('1pbqrref0p5a6cv88hemeqrbked41p7e', '187.161.235.208', 1509407082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393430373038323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('1qjr019j1i4hgbcme815skd3mj82m8f2', '180.76.15.14', 1509501695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393530313639353b),
('1s7iphhsu63j35dbtdm3rq1bio47aroo', '192.99.67.13', 1514603463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343630333436333b),
('1srmq3asmfd2h7jjd4obk9qenu09sp5a', '54.82.79.109', 1513102068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130323036383b),
('22t5nsjsvicpjtikl7k1mfgjo6edg9dp', '54.90.119.59', 1519544001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393534343030313b),
('232li8jfe3796esg03pg2pqboth8pfgi', '187.161.235.144', 1512266478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323236363437383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('23c9dnd4g6o82c5hkpfvfqne7qdf4em4', '148.245.119.253', 1511879665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313837393636353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('245inlqvp50lh6c9eisv7tr120d3d2ui', '187.161.235.213', 1509500332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393530303333323b),
('24614facacac12dd197faacdaac24670c8e33418', '::1', 1509120686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393132303638363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('24mpccmo5smk01vd42io77tdg5pv1soj', '164.132.91.1', 1510098261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303039383236313b),
('2894c362e3ff3c1d12a97745486f25ea08118b55', '::1', 1509111298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131313239383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b70726f706f73616c735f706970656c696e657c733a353a2266616c7365223b),
('28o48apfddek6254foqgo1hhshi0cg14', '148.245.119.253', 1512575400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537353430303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('2bcdk21kppt1j72a4ne2ekkq79qtd0a9', '200.188.152.226', 1515537645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353533373634353b),
('2bitppeopk9n609m9ftp14g1mskschd4', '187.206.27.214', 1518901853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383930313835333b),
('2f3ropgirdh0a65a57clp5998kkv716f', '66.102.7.164', 1511803916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830333931363b),
('2g3bv4os6la1pn8efjgas9giv29n051e', '148.245.119.253', 1512583512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538333531323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('2hs5lur8sh33623surcc08ub8u5sa1sr', '185.26.92.74', 1511210995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313231303939353b),
('2j0e6s4gpskirohnjdg15vihogr3l3db', '148.245.119.253', 1511804083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830343038333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('2mls70ks1jnl2g9lvn2esdm551h9c7e4', '94.199.151.22', 1512372447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323337323434363b),
('2scm3efah53l7aa6u7sjsmpa15v1s71m', '187.195.152.104', 1509819022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393831393032323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('2utfbgaj1dn9k8drntd4ps7ala3rt2e5', '149.210.224.217', 1515441390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353434313339303b),
('31s9gpfsmik26b70gvv95qqb322imr3q', '148.245.119.253', 1511901310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313930313331303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('32qm24b9f8rfjohol5bch9sl65a93im7', '187.161.235.144', 1511931145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313933313133323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('332odl883v1ibevlepj7j8pufchhb5ru', '34.243.4.55', 1515084276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353038343237363b),
('33p3j7vmoqoieif42asgjjc85r2t399i', '66.249.79.143', 1516613455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363631333435343b),
('34q1g5vu0f49ei5d7q02fd8c42iomsmu', '187.195.152.104', 1509826174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832363137343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('35c5b293344eb209bff660e6deb88ca46b09c7c2', '::1', 1509133098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393133333039383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('38bkhpgoo8jrj2tkr4p90dfmch8b609a', '66.249.64.207', 1513054172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333035343137323b),
('39s2selvt77r4lmjrd4q1to4rhkjrtdu', '148.245.119.253', 1512492604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323439323630343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('3cbgharkg81e2fv5vg4mt1bnu0ffhdqq', '217.182.132.80', 1509750969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393735303936393b),
('3cv2hamhs4qm7i09tsro8i65laturud0', '68.180.230.245', 1509636782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633363738323b),
('3d7omvtdef0p80uuoeg40fmtm7e3l778', '148.245.119.253', 1512684104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323638343130343b),
('3e0s8cl43v4qq7dl1ofm0aiv788st5u2', '66.249.64.212', 1520446117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303434363131373b),
('3e9585f5e84a05a38e53de7f3344ce5d7539430f', '::1', 1509119530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131393533303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('3ko66mohg3c7lq1tnia86dtoud2mam7h', '187.161.235.144', 1510807289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303830373238393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('3lqsujmi4ku0lui4op6v7qroi5eghu02', '66.102.7.224', 1516129408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363132393430383b),
('3ni8lfqgu3skcqf523f21tc5dom04rpo', '148.245.119.253', 1511898886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313839383838363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('42ldj5b2nkp0pq79uq8bp53lu9l0s53u', '187.161.235.213', 1509426454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432363138323b),
('43bapvt46n5d9netmtmd4ru36tb70ici', '104.131.173.251', 1514104671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343130343637313b),
('44ifo45n1dkkm114dp0fh0p471b2g7ob', '148.245.119.253', 1512419984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323431393938343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('460t481993hstjq1pptlk3vucn7v1ogc', '66.249.64.207', 1516774808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363737343830383b),
('46d292d143759e52174a21abc0f3d7303b231e71', '::1', 1509130524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393133303532343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('48cnl7isl06rjs0apfkl3hguk5gp6gbk', '66.249.64.214', 1509906222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393930363232313b),
('4anak6a9qok1hshfrl4k4jijm1pe45fb', '158.69.27.211', 1510955666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303935353636363b),
('4bn9eqcnhd1bsjf14stbt8530bpuk5v1', '187.195.152.104', 1509826503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832363530323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('4c2894vo0uln1ts62f56ueadt6b113dn', '66.249.64.212', 1516814549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363831343534393b),
('4c884i39s5fc73u0uco116813suifkbu', '54.36.149.56', 1522099114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323039393131343b),
('4d2vm0ooloe01f66lpgra3ic9hjv8m3t', '148.245.119.253', 1512590193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323539303139333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('4dhcstt81l8kqk8g5q9jb5o226j4h6s6', '187.195.152.104', 1509820644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832303634343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('4edsp8neqkic674c4th2rrqhsekoh1tt', '187.161.235.144', 1512361929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323336313932393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('4hr6to4bgs38o7luj11quhso4f0uebf5', '187.161.235.144', 1512280171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323238303137313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('4jrfqtbkb1ervi3lu4n30ner671seqd7', '187.161.235.208', 1509425903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432353930333b),
('4ljpivvhub5icvhvrt1cl6g0do7pvsjh', '148.245.119.253', 1509481207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393438313230373b),
('4nb7rhr0f26709gpsvdjqjqrl0ml79nr', '66.249.64.18', 1519052562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035323536323b),
('4slhiu2v7isbc4smgo29kmbrd39dregk', '148.245.119.253', 1509391282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339313238323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('4ss1hpvjpkimbo4q57evlpnkjaosscje', '187.161.235.208', 1509413983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431333938333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('4t3past0i10budief09nrj5o4dpd3jr8', '187.161.235.144', 1512268109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323236383130393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('50n30iqvofd6uo762jcafn72ngvq78ev', '66.249.66.87', 1522665923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636353932333b),
('51h9cvm6qve25lng35sj4dc93l5jgiqt', '148.245.119.253', 1511876516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313837363531363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('51q9ijj3cs0qeri9vjrsged2qtp3ur3l', '144.76.38.73', 1516534558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363533343535383b),
('53d1623b95c56b2757ef14b0629720cb2b8c3717', '::1', 1509119147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131393134373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('560lvkm9eike5joecfc62kuc57aii1ki', '187.161.235.85', 1512619978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323631393937383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('56basejj6il2kmpdtatlop99t6cvg05c', '66.249.69.5', 1521834061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313833343036313b),
('5cjkvn78m5l9s451rq0b2f7jpl0rb9ri', '104.155.76.8', 1512488679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323438383637393b),
('5dj7t3516h74up47g8tg88b9cijp3k59', '187.161.235.144', 1512266823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323236363832333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5gf2fpr7ma0frmn9ji45eo0lkhp0fdhl', '187.161.235.208', 1509299948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239393836363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5hmiafre9u50bhin61ardt998vegs0dg', '164.132.91.1', 1514384270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343338343237303b),
('5i9fqidb95fnou2p0pci9ru4mkiajuf0', '148.245.119.253', 1509654616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393635343631363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5ksmu6f88uj83r3dsnssnc51vm2hdqt8', '66.249.66.143', 1519847478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393834373437383b),
('5m4ioklm7l8dcmhfc50b73uvn9jd4gho', '54.36.148.233', 1516365248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363336353234383b),
('5mfv4p5vj1klni8be2r8v0csl579lf9j', '187.161.235.208', 1509411398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431313339383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('5o7c27avq5sbhjtd6cuitacfsqb6gnng', '148.245.119.253', 1512588738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538383733383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5p6i4u2vhtp2mkjqrn95enifcjdnc092', '187.161.235.208', 1509300446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393330303434363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('5prt4eegdaj2aratks525cbbldmkh395', '148.245.119.253', 1512420209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323431393938343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5q5o4g3s9fvcqn7g461ag09co3r96k69', '66.102.6.32', 1512622089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632323038393b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('5qci9mhamh5es5pat0blbjorsib4m2km', '187.161.235.144', 1512018315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323031383331353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5r7q5imk3ujq7ckch9g1a55sdhf0mvih', '187.161.235.144', 1512277545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323237373534353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5r92vocpij4roi0pkg8hi8633e7p0d64', '148.245.119.253', 1511974047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313937333936363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('5v66aq069jfi519af13b9k37j9lte3gf', '187.161.235.144', 1511839882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313833393838323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('60olq2dp9klv9g104ncueh12fqms8crj', '207.46.13.179', 1520626777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303632363737373b),
('61f4c3fa9230ab1eb619d23716eb21bb97db8959', '::1', 1509121206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393132313230363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('63c6ppovlrr731pa5ujb6h9krbb6pu34', '54.82.79.109', 1513102060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130323036303b),
('6474mveai1t7phsuhpjkubu9oobv5o4u', '187.161.235.208', 1509298715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239383731353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('654g64gq5qcppfdue1e4p72iice01ka1', '148.245.119.253', 1510758974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303735383937343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('66e4h8lnke7h3aqqgsk0lr0u8e5f7vsp', '148.245.119.253', 1512576324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537363332343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('67ho8h5obhbvnjvjqbhqt0nvnfdtvc23', '148.245.119.253', 1509652649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393635323634393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('69ic36j9kpnq0mhbg8hkph67a9hmi9hs', '66.249.70.13', 1517852400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373835323430303b),
('6amvks5beh2sfs87smqpqtmh8c0r6e8u', '216.244.66.232', 1519816564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393831363536343b),
('6bvc2aa1gbr602veses13vtkb8d59lu6', '148.245.119.253', 1511460400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313436303430303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('6e8fg0ts1lo14hisf42atff6vv6p8ni1', '148.245.119.253', 1510773447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737333434373b),
('6ge4crvqua7bv1s7av95s0r48922voh8', '66.249.64.212', 1520397042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303339373034323b),
('6i4jj52o638eej247nsts9iiemk4qls8', '164.132.91.1', 1514384270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343338343237303b),
('6jm5msddhlffdqbmjvjq70n0bh09h372', '185.26.92.74', 1511208788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313230383738383b),
('6kegogg39mmh040q44pq37lruuusmgj9', '148.245.119.253', 1511363817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336333831373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('6kqrhkf0c7ka0u9sultfd9gs87ket0pc', '187.161.235.208', 1509430197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433303139373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('6kt0qkfmb5u6d0ikbfb2vshdnc02chop', '148.245.119.253', 1511802342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830323334323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('6q26f1n8qqg24253ghl6bdf0vh3t6s0o', '164.132.91.1', 1515519261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353531393236313b),
('6r7fgtglcrlj4240um2t3mlsudftg61k', '52.36.125.174', 1509621834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632313833343b),
('6rhtvviqtls84vuoc0v3gci48ocl296g', '148.245.119.253', 1509397947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339373934373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('6rkonqnslv4bc7rccc7gies0mtqbqotv', '148.245.119.253', 1512419682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323431393638323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('6tp054ik4ee2q1rdemio4pa3rvccd6m5', '207.46.13.61', 1515595062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353539353036323b),
('6v40hcgi4kecmd0osle616le2j4hu6m8', '148.245.119.253', 1512575526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537353336303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('71dj04e6kfm9pca24pccf038uhkfn08n', '148.245.119.253', 1510773380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737333338303b7265645f75726c7c733a34363a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e2f636c69656e7473223b),
('721lem3nqf9tr3mbeih2s66d8donhgm9', '148.245.119.253', 1511875572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313837353537323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('72mgn9esuinpat7hmhq7u7r5n0rfe6cq', '148.245.119.253', 1511901963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313930313936333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('734be969efc7236c8b5f8404ceea9843438e0e3d', '::1', 1509129870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393132393837303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('74art4q2922vmfdms62v6lupf1u08qq8', '187.195.152.104', 1509820335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832303333353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('74hf7dmokuuadnfqtu35k08dj7296rd4', '66.249.79.141', 1516633381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363633333338313b),
('754ciot8h60a62db3l6ija2mrr5hi2rl', '148.245.119.253', 1512492249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323439323234393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('75of8nrlddd508qpmg835pr4r1il1fp7', '66.249.79.150', 1509672064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393637323036343b),
('7822m6pbis587iii56n2pek2gt6112lm', '148.245.119.253', 1509498273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393439383237333b),
('78qs8tq8jfg3lcqublpj8aa8k00sbira', '148.245.119.253', 1511380941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313338303934313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('793pleukvufrq1qq24nf5t34m2p8t3bi', '77.88.47.97', 1509268904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393236383930343b),
('7b1mvt3uv7o7m3qj5jfl0k1h9m0veb04', '187.161.235.144', 1511053923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313035333932333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('7fqh3r9kendfujvqi4ljpgq9ohk4t22p', '185.208.208.198', 1516664965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363636343936353b),
('7hhouhthovf3bsvs3c80db73cjlf0c1l', '187.161.235.144', 1511128696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313132383637343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('7nibh64fuhj0peoj9abbga4n35u83uaf', '187.195.152.104', 1509819983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393831393938333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('7npjed10bg0g90kjr2891lldcgabj8a7', '187.161.235.213', 1509426182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432363138323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('7pefe5c8mumb0vdpsuej7u9ldlak0amb', '164.132.91.1', 1512194380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323139343338303b),
('7pk6k6lfn295csv7pamoa40ii3nraid7', '66.249.70.22', 1517889478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373838393437373b),
('7qab12rhft5951f8t8gnhnnj60la89b4', '157.55.39.17', 1513943652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333934333635323b),
('7qma4gjtfks8pe95m06pi6sd89lk98de', '66.249.70.17', 1517843238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834333233383b),
('7r745b65ajv6c6hn1tmksmvdt3qq1m4s', '148.245.119.253', 1509388070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338383037303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('7tkcma3ii9siav63npk7f9e3ohmh3tfv', '66.249.79.146', 1516633382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363633333338323b),
('81h7c2gq9lijvhch9litib1qk3kmc7au', '34.242.121.96', 1513038224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333033383232343b),
('81l4s29raet5udpvber9skrckqn7pjk0', '66.102.7.164', 1511803916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830333931363b),
('828gf4estm65dkk85kt2fmjragdf62hs', '187.161.235.208', 1509425172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432353137323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('856uuntolt2mt445piq6qu746ue12gl6', '148.245.119.253', 1512419012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323431393031323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('85dn1e4thoj00hlrecaqojlar2v93tsr', '66.249.64.207', 1514169508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343136393530383b),
('874tqf0v53jd4l16lhbv9kl8solshqoj', '187.161.235.144', 1510806957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303830363935373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('89sg0o9fca2p4irlueett75k2lnri2u9', '54.36.149.45', 1521152387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313135323338373b),
('8aahcft35l27s34vatr40ogpvra4fkg8', '148.245.119.253', 1511379196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313337393139363b),
('8b164d8786ed8d763149778ad049b170e590eb94', '::1', 1509114593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131343539333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('8b8khbouh0jg12ang79cbkru1579orln', '27.72.98.234', 1511141870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313134313837303b),
('8c6312pmm4vrdihstbfpea0a46t1gvmk', '187.161.235.144', 1510798072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303739383037323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('8g5b9v54pepif77q1nrkufa1bmmlvh98', '187.161.235.208', 1509406699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393430363639393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('8ganotffuv9ihsuo00k74atlvuaag5kc', '66.249.64.212', 1510959925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303935393932353b),
('8i69jlvbv6orjs7j6cc3k7u6v1r2frfa', '52.36.125.174', 1509621690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632313639303b),
('8imjalgusbd6beacfe1heuhjiifvknqg', '66.102.6.24', 1509295583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239353531313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b69735f6d6f62696c657c623a313b),
('8jadn20ut7h9hhgh23isk8g7iovhh7pl', '66.249.66.85', 1522665922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532323636353932323b),
('8kebg93m9aq9b2dbeponkcbddq3a7i6c', '148.245.119.253', 1509381320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338313332303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('8mb871s0je0fqjhg42lto6v5nktubfut', '148.245.119.253', 1511379336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313337393333363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('8p5ilmvqh5mmg34a0cu9ht3jsc2p0r6a', '148.245.119.253', 1509646050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634363035303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('8s38cetuh0llj9kotiisnav9ggjd3h6h', '66.102.7.148', 1513778755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333737383735343b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('8vadl2lua7e8l12ssl8s5db862euachh', '164.132.161.20', 1510612989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303631323938393b),
('918n0jckfkp8a9aci5outubghljejcva', '148.245.119.253', 1512571253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537313235323b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('91rh1ubq802d9obsu7pvu63humgcmr83', '66.249.70.13', 1517852399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373835323339393b),
('91v0hrb0qrjib0d1hqj83pphb25l7env', '68.180.228.92', 1509637054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633373035343b),
('92rotfoh4s5s14otkbdq4dm5nfkq32k9', '148.245.119.253', 1510862393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303836323339333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('93s60esoni2mk74dinq79fgdpq8squs6', '52.213.105.211', 1513768837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333736383833373b),
('94dbqfcov1r0gine0e1o91cuqados34q', '54.82.79.109', 1513102077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130323037373b),
('98jes5co3mq6a5qb6roqdk3fbg6nq220', '148.245.119.253', 1511900140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313930303134303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('99qbbuqfnnahl6rntec2ja61763n2r0b', '54.36.148.52', 1520106594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303130363539343b),
('9abad5988a086ce9be9df49809d4960dc07af8d3', '::1', 1509110986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131303938363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b70726f706f73616c735f706970656c696e657c733a353a2266616c7365223b),
('9af3i8160ldrdoe46tt669757nfb15cv', '148.245.119.253', 1511381652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313338313631333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('9co91qr7o6slttv1vcb9ifubk5nactm9', '148.245.119.253', 1510237926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303233373930363b),
('9fkgtkt9a990bgc99ahnrgtoc6io90pv', '54.90.119.59', 1519544043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393534343034333b),
('9jhftncec7bpvbtab58cicsap4qm91ug', '148.245.119.253', 1511546975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313534363937353b),
('9jmvuf8mb5nb02fulhpnirrbnohhbg3p', '148.245.119.253', 1511899295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313839393239353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('9ntk4ogmj9tireuti5j89ct7ct8oc5sl', '148.245.119.253', 1509387721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338373732313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('9t31eab71n87ah0hjsgi97v8cl16nogp', '148.245.119.253', 1509554039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393535333930323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('a1jdu1l5g8a8smujqpf6hmp8rva5q586', '187.161.235.208', 1509429489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432393438393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('a2e94t612rgtbutmeo11a808l7pqkn91', '187.161.235.144', 1511057988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313035373938383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('a2i92e3nkfe88mj1p61mheoihj2orve5', '148.245.119.253', 1509396672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339363637323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('a3vhoraepuuqvuq4621mhbvk173gb7nm', '187.161.235.144', 1510799906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303739393930363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('a46gd7gbnu67oebr45ej90f3jmirl06q', '148.245.119.253', 1509648668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634383636383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('a4boao32g3geig18qdaq22bsmk0me8cv', '187.161.235.144', 1512362890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323336323837383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('a9bp1vtb3bekko6adnj61o1itntab49l', '187.161.235.85', 1510979109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303937393130383b7265645f75726c7c733a35323a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e2f696e766f6963655f6974656d73223b),
('aahgchhm7r8i8k6vkp1m28khrlfokqhd', '187.161.235.144', 1511730481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313733303438313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('aba8t1ld7sk3vr61qnfh6lu3rkqc2u33', '148.245.119.253', 1510862396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303836323339333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('affkf7cuqda0vjrrccsh17dik2fe780b', '148.245.119.253', 1511818150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313831383135303b),
('ag6jpaltujg2dunvrnfhvn1c7pa796n4', '187.161.235.144', 1511717891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313731373636333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('aga1atvle7vltodcovc9hb0429q0t129', '54.36.149.48', 1516612155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363631323135353b),
('ahfq6v8i7of067e23r8ks44foui8jejl', '148.245.119.253', 1509381814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338313831343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ai95opqstgq23tii6uom8vo7d29i40ta', '66.249.64.209', 1510308158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303330383135383b),
('ajoulfo6vedmca7sba1rcuvnijosomp1', '148.245.119.253', 1512571857, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537313835373b),
('ak4ts2p14av8dc6bcn0b5dqg0e8aq7rj', '148.245.119.253', 1512591619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323539313631393b),
('anjml59mcje5dhejhrkkjkr2mio93vor', '148.245.119.253', 1511876082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313837363038323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ao2phjqvahhkif8nt8q4mdaeecb0pa54', '187.161.235.144', 1511058558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313035383535383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('aom9a4makhujupo66qg51fs16pdhpe7p', '68.180.228.92', 1509637027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633373032373b),
('aqlr05fbgs2oimfgetjci207ustrb8mj', '148.245.119.253', 1509390840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339303834303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('arouu6l1uf21u654v7cp9m5ldacoln1j', '66.249.70.20', 1517843239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373834333233393b),
('as2qv160tlmsmhom6q9534lf28j5bg07', '157.55.39.87', 1512153122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323135333132323b),
('asr6o0706b88cn2rmgc3s9t0e55cjqe3', '148.245.119.253', 1515527772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353532373737323b),
('at4nh9tqb0g5ckp7h62pk836cv1e2u0l', '148.255.109.112', 1521035977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313033353932353b),
('atbkn36pf3ct6lms3lkhoo9kh88i0nhj', '5.9.156.74', 1509623893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632333839333b),
('auaf7f8ltuoka02e8tqf60d9g262nf6r', '148.245.119.253', 1511363817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336333831373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('auev6j915p25vtlldvdbuaqm9abfit6s', '66.249.79.143', 1516578627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363537383632373b),
('b0vpkuojqqknqu265hvqhdnm5915bcn2', '187.161.235.144', 1512269718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323236393731383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('b23o76m87i5ftn7flajr9am7c68hmbof', '66.249.70.20', 1517915461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931353436313b),
('b28s0h1nghj86h6a0mo2pgcii6b5f1kf', '164.132.91.1', 1509824221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832343232313b),
('b2gktoj0622dkp1vlk3kpojcg74u3hbb', '187.161.235.144', 1511730136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313733303133363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('b36ef0e28330c3fdbb7a6ca826cbd05ca5e33212', '::1', 1509118821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393131383832313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b3amvo70cnh5dte8pam1iupdhkblrkr3', '66.102.7.148', 1513778755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333737383735343b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('b49k37sdkins5n8eq89s06lnfl0kila3', '189.228.122.83', 1518901853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383930313835333b),
('b5q31i2htlbnmm52nt6pv4cer593gt3q', '148.245.119.253', 1512589863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538393836333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('b61pqn0su78nni1usfeha5en1ij71d2v', '157.55.39.196', 1519763837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393736333833373b),
('b66bae51d4efdd7b003a69310b14f8281434d8bf', '::1', 1509130932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393133303933323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('b74b9f66905485b66911428fd8ac9c7471be0ca5', '::1', 1509131261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393133313236313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bdcubc4a3ptikgaa8bj3c1dutafpibpe', '54.36.149.48', 1516299213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363239393231333b),
('bekrt7lo5hdnpnmv2a83scqgg7r5v9ia', '187.161.235.85', 1511413832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313431333833323b),
('bkg93gms4qrvjnot0nh9ln7q68iulesc', '187.161.235.144', 1512347605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323334373630353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('bndatqcl8l2jrt5g81s2njgsgmq7u7p7', '54.36.148.145', 1523532844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333533323834343b),
('bu1mglj2kmie7ls2btc8cf2uhf73f8pq', '77.88.47.97', 1509270976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393237303937363b),
('c0gosrhnipinvjg2jo4f5hqn2n3v7mct', '66.249.64.209', 1511481511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313438313531313b),
('c0r59ud6apl9a2re9c3au4co3rp0h4fu', '187.161.235.208', 1509411701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431313730313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b6d6573736167652d737563636573737c733a32393a22436f6e6669677572616369c3b36e2064652041637475616c697a616461223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('c4ksrcfj1qn2vtpfesrqgo38vgroe8h8', '200.188.152.226', 1515537644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353533373634343b),
('c8kn672s5n69m3o1ib9nb1rdgjeingvf', '192.99.67.13', 1514603463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343630333436333b),
('c8l46k2mnng0l4f6im9fubft6cqmgf79', '66.102.7.254', 1512134206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323133343230363b),
('cane5pta4mu6ip1blvh0vv643cfqlcto', '54.82.79.109', 1513102069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130323036393b),
('cgqcs4dvrtst509jju3faka48gj8sorg', '148.245.119.253', 1512574710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537343731303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ci6ft878blv5uddkef6vg56vv5apmhsj', '66.249.64.205', 1509627496, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632373439363b),
('cjubscgfhp1m2qt1pi5bld68qr9fhf4t', '207.46.13.92', 1515934028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353933343032373b),
('cm19m4gg7cavavrkl6pdl255h3r9bucs', '148.245.119.253', 1511362693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336323639333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('cnojud4b9o2n7hhtc8msf10lbk3ifk41', '187.161.235.149', 1509337032, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393333373033323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('co56uhhehkppna9t4t77v9ndqn0j9sqa', '66.249.75.205', 1517026110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373032363131303b),
('cpjah9uthuf9u7d95nsfm9c1dohlieov', '187.161.235.149', 1509295377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239353133393b),
('crgc608t0e9bb6fqupcem1t9s3rsch3k', '148.245.119.253', 1511880994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313838303939333b),
('ctijac4ahl8ntj5164im47m2ucn19i8k', '54.36.148.171', 1523391926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333339313932363b),
('cvqp4s7irktqtukfp4c3moack1cap8a4', '164.132.91.1', 1512867432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323836373433323b),
('d32jg1fnhba51jao1u5c0solj7jfedv4', '144.76.38.73', 1516534556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363533343535363b),
('d3c50lu4e8r6vp9qh96o1vfoqaoutc6u', '148.245.119.253', 1512073075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323037333036343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('d3fl4ln635c9e1ie3gtsiq60u0ub040h', '148.245.119.253', 1510773386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737333338363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('d5lslq5pqjlcikv6ajb7mohgn6oid0u5', '66.249.64.212', 1520429364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303432393336343b),
('d6nu9dd25v84041o50pcbutf048nj2e4', '217.182.132.84', 1511206121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313230363132313b),
('d8hu5jvsaiulh0fc09420655mmkd4ul4', '187.161.235.208', 1509412788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431323738383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('d8sue6rv3e329l5l7slcen76d66ds2bk', '187.161.235.208', 1509430547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433303534373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('d9ch1n941fhn8n80nu7g671dcijd6c7k', '148.245.119.253', 1511807065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830373034373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('da8emhcnh4fh02254knteuh36horbiuu', '187.195.152.104', 1509498888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393439383838383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('daavhs4a5umrqpjncv3sddprc1jt4f30', '187.161.235.149', 1510202072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303230323037313b),
('deob01m5jolkn3sib7g8a47dnto0lh1n', '164.132.91.1', 1514979104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343937393130343b),
('djle58us3qr8nehoh4tkesmdm3i3ec3h', '148.245.119.253', 1509645748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634353734383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dkih7ugehj8io7211o2tvt9qlt45bje3', '148.245.119.253', 1509655163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393635343631363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('dr8jtt9bppttm8tqpb9aldi5802q0tqh', '216.244.66.232', 1519841624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393834313632343b),
('dttrcc3gq93fjq9eju6o2to4qlm66fgf', '54.36.148.111', 1516983734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363938333733343b),
('dun3rs3m48u0gvsi2kfpsr93te8135e1', '187.161.235.208', 1509299733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239393733333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('dvb0es7nrm57q84i6l9v64l1o8do0hdc', '195.154.252.201', 1514924347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343932343334373b),
('e0af33af72ab03829f52b2b371710529279c3471', '::1', 1509133099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393133333039383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e5fi9blhubp3rlbdmn1h8avr0gbbnr7h', '187.161.235.208', 1509298371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239383337313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('e8jatt96fni3nlhl76eb7ha454h5uojr', '54.82.79.109', 1513102045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130323034353b),
('e9ihfaeslbcvs3prpvj5d8q7ibkmg7pd', '164.132.91.1', 1513518623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333531383632323b),
('e9mll9024nl98ckt4moakgtd7gibvb73', '148.245.119.253', 1513107747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130373734373b),
('ea012bc3k9mmh3s3n33or07g0j6hldap', '54.36.148.243', 1517003435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373030333433353b),
('eaef316ac52bbc5afca42a6fd6767634481b61bd', '::1', 1509120382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393132303338323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ed7urehd5cb4jh7qnl63qn9ivlh5vbjs', '54.36.148.203', 1523587256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333538373235363b),
('ef2ljhgec0ohenmhs8l5b25l0mthl26d', '187.161.235.208', 1509428116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432383131363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ef89tunafmubcoto6k1pn01htk7pa8j3', '66.249.79.139', 1509708262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393730383236323b),
('ehtfgl1hb8v39eidu0152dp02l706k3c', '187.161.235.85', 1511243261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313234333236313b),
('ej8u3htjs754c052inn1fgepe0l17idl', '187.161.235.144', 1512278357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323237383335373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b6d6573736167652d737563636573737c733a33323a22436f74697a616369c3b36e2061c3b1616469646f20636f6e20c3a97869746f2e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226e6577223b7d),
('ekf9vopcsd2uo4pp7m2ll7uq5ukjvtm5', '148.245.119.253', 1511901611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313930313631313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('emthij5bg6orapvv0g08fmr52akdft1p', '27.72.98.234', 1511141871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313134313837313b),
('eouagbdupoq1u7v78dak91s4k8rab5d4', '148.245.119.253', 1509380451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338303435313b),
('eqj1roc9le4i7rr1bo1otk8re5asrtos', '54.36.149.29', 1514149649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343134393634393b),
('euahoe3dpaq6p0802b9ioabdnrmaimhp', '148.245.119.253', 1512575360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537353336303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('eun958o2pvueu61uj0nler9emnj4elb9', '148.245.119.253', 1511973966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313937333936363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('f033mlirumejr566qjlc56ui60eq9tu0', '187.161.235.85', 1511747240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313734373234303b),
('f5tebbjlefhvngq615ra0s1p21cm0phn', '148.245.119.253', 1509632662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633323636323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('f680b99b1lkq1fador38ti576v6h3fsc', '66.249.73.223', 1516928547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363932383534373b),
('fadq4dfmtnk3ob6cnut8ac7n4f7tmnvd', '157.55.39.196', 1519763837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393736333833373b),
('fbggdhn5og3qokrecc3p7palb3naumn4', '187.195.152.104', 1509826502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832363530323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('fc9mot60cgcr0fk3o7hefbvj6lum25ft', '187.161.235.208', 1509300797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393330303739373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('fguof63njofttug2se80enu1ullob3kt', '187.161.235.144', 1511128674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313132383637343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('fhgrsfqv350kgf66il76qd5nj92q2pa3', '66.249.75.212', 1517026111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373032363131303b),
('fhrmf3h59rmeavq7m5gjdbu74i04idjr', '148.245.119.254', 1510072702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303037323730323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('fjdd5buup306ako9nd0dj615msbkq4d7', '148.245.119.253', 1512585790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538353739303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('fkulivqdq47f765aud71evcijj5qmijd', '54.227.51.103', 1513171299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333137313239393b),
('fp23qdc6pobsi1gr2cqg6tskkc3ggiri', '66.102.7.148', 1513778754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333737383735343b),
('fpvariedijv5lr35kplg7epkrg7hnclv', '148.245.119.253', 1511807047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830373034373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ftmu7q4ro48uecc0p6tr0nbtks57bf7j', '217.182.132.175', 1518322219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383332323231393b),
('fu09kl370l53o61qber731k3qcnmp45i', '187.161.235.208', 1509427499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432373439393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('fvlg8iuap1c0j6td0qpjvvr38p6joh1a', '185.26.92.74', 1511210938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313231303933383b),
('fvotdh48di8q4orake90u1tp3o2irgq0', '148.245.119.253', 1509391611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339313631313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('g0g8oemnj40khaeomogp5v4rr0hie3rp', '187.161.235.144', 1512282386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323238323337343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('g2nhq63b46b9vqvcq4kots4sdh18qsb4', '64.233.172.136', 1512656193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323635363139333b),
('g4st3nm7bkuiod0rrc854dofhilha9qu', '148.245.119.253', 1512579768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537393736383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('g8elfv82jjh3oc0dd2k77ahu61l8frn1', '216.244.66.232', 1519829140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393832393134303b),
('gafauom81h98a3thagn0uenns7rpinj0', '187.161.235.208', 1509419078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431393037383b),
('gant6if1ha2stmkl420ps3j0tfliq77j', '54.36.149.12', 1521883647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313838333634373b),
('gatmcb5rvg5j6n1qjiuetq7etudqak7j', '187.161.235.213', 1509425734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432353733343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('gd0dq66lhrrlhhje2kn65q60s5kaj0bk', '66.249.73.223', 1517485845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373438353834353b),
('gg5urv104ctgagqrfppsgub9m63gnh4l', '187.161.235.208', 1509300961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393330303739373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ggep0q2pprf09cstn1q23caatkbfises', '187.161.235.144', 1511846278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313834363237383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ghhdgpiaft707s5rtphu3omukp0b4al1', '187.161.235.144', 1511737264, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313733373236343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('gm7riuscnlok4k1e4r4naab4ba52pc6d', '148.245.119.253', 1512575036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537353033363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('gmb0icfochsqfq2i8nsa41poucg2mnq8', '187.161.235.193', 1512514959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323531343935393b),
('go6rc2d9jt57bo1bj8jjtetl008thb1k', '148.245.119.253', 1509397998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339373934373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('gpmlqtqpktt4raiekh44j3j9ak3gb183', '148.245.119.253', 1509378483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393337383438333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('gt4j4e4ncaq79ju1cg0oubu4efrmt5v5', '148.245.119.253', 1512590574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323539303537343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('gug737tsaqkm1v19kkcvmqgv2r2h9ejc', '148.245.119.253', 1511898343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313839383334333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('h0ggnibavklnejtbhb65ue4cmk83pvfm', '5.188.211.35', 1514450305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343435303330343b),
('h195bnv0p5452jhho24et34388pnb8n2', '148.245.119.253', 1511288722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313238383731393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('h1geth6a02kmprbcdvku2o6p5emkk8t9', '148.245.119.253', 1511380734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313338303733343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('h3rpjom4fph2rla6fa42foctdl3cm1o6', '66.249.64.209', 1516803175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363830333137353b),
('h4s009cnc4jg35r4q02vspq3jokiakai', '164.132.91.1', 1513518623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333531383632333b),
('h51r5p9i53ev5l8mqnpurl3f510odri8', '185.208.208.198', 1516664973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363636343937333b),
('h7knc4b246delq16p1oc1cvpjbm94e5n', '185.26.92.74', 1511208788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313230383738383b),
('h7p5eflck1lshto3qepl13apg4u8d78n', '187.195.152.104', 1509817415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393831373431353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('h90mjt9qv57ltt93ldvftnj6jfjn1t47', '148.245.119.253', 1510072744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303037323730323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('hcce3i6lp9mtpsus3v48r8rccvhc6kst', '149.210.224.217', 1510545075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303534353037353b),
('hgf0f1k9q153qvlsuor2154epdrcofue', '104.236.43.75', 1512541028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323534313032383b),
('hgqgoqmgee6voji48ct8mvqmt83cevbr', '51.255.65.26', 1513709383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333730393338333b),
('hi5lrtn114e8vudcqp3crgaoobtvvhtb', '66.249.64.207', 1516792702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363739323730323b),
('hn3a8q4bmpdt5r64m9ror9shlf6vmert', '216.244.66.243', 1519334559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393333343535393b),
('htfs1hfh1qrrig98b04lurlhiai0mv25', '187.161.235.144', 1512345145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323334353134353b7265645f75726c7c733a35373a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e2f70726f706f73616c732f70726f706f73616c223b),
('i0pbb8lp04r44s4qbb11f1iim9pe44ts', '66.249.64.212', 1516817249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363831373234373b),
('i1677k43v4d8f56uu23dvoe67or248ii', '66.249.73.207', 1516928547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363932383534363b),
('i1oaoocjqn51o8nh1tibdeduc79j3kia', '54.36.148.231', 1517177158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373137373135383b),
('i2rojuv5ht0va8s3ag0o97crtirru038', '187.161.235.208', 1509430591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433303534373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('i4rmgc32vec78lid9f2ip0e9dltpbep5', '66.249.70.20', 1517888608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373838383630383b),
('i4vdj682ndrdi9n3mekl9g06qfr913vo', '66.249.70.20', 1517894025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373839343032353b),
('i5t6k3jjvf1tc65gg16okg39k4d3lptt', '187.161.235.213', 1509424559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432343535393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('i5tmcak14qf70rcm6bg66btpgfvl17r5', '148.245.119.253', 1512588352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538383335323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('i60krbqh0n735sabk98h4c6lqsfjoq87', '104.236.211.236', 1511628977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313632383937373b),
('i6i5u9jj5mm1rov1vulkpve2vngs0cd7', '217.182.132.170', 1512882296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323838323239363b),
('ibfisoau5c284uum0ebfkt8j728relq3', '148.245.119.253', 1512591619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323539313631393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ibkktn3128krramq1mobon2066pu1rtq', '189.254.162.24', 1519753370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393735333336393b),
('ih4h5ega4h1o17r1o6cs19cfok6eldkv', '164.132.91.1', 1511582177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313538323137373b),
('ikom9gcvvsq4e6i24ta2sbj4j2mb83fb', '148.245.119.253', 1511898742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313839383734323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('im66u0ji2mvoo3vcrupqm71tm5s8ib1r', '187.161.235.144', 1510807844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303830373632393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('in1312hb4jp15qa73j5gq0u2g51negf4', '77.88.47.97', 1511322269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313332323236393b),
('iqiqohibbc43j9g73hjdiuavq4trgthk', '148.245.119.253', 1512573435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537333433353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('isph9plohcoup9ooc4ukcbl6m1lq9jth', '187.161.235.144', 1511846367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313834363237383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('isrlrblcsbq6r4s8oui8jtnoakl85pps', '187.161.235.149', 1509337035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393333373033323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('iu6qjfmfsh5d3ce8sij4gnqghafg1apj', '187.161.235.144', 1511839538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313833393533383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('iv357k8fip3s0vrmterkg1faf8f592hm', '62.210.103.31', 1516621292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363632313239323b),
('ivr6toutih71qtg85a8ekdlbi0a1abh6', '187.161.235.213', 1509501000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393530303939393b),
('j1mju5dn92mqd9jcj48t695k4qg2ukum', '66.249.73.223', 1516741950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363734313935303b),
('j2qnn9suhs8s97mv1nrn9114s78h2a4b', '54.36.149.107', 1517883585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373838333538353b),
('j34m1clmpau7ng280df50pq4bnaqe8pf', '77.88.47.97', 1509268900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393236383930303b),
('j3vskdmq65q1742ctq2abefo6fhm3lkq', '187.161.235.208', 1509428474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432383437343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('j4il0lnjhp7lamdjsat71ta30u6fvggv', '187.161.235.144', 1512250078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323235303037383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('j54l66r0dca1gvmi7d2ei0sp6rqlma9l', '164.132.91.1', 1509824221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832343232313b),
('j7967p0mo9mph3cplc76mkolec5nm3kv', '187.161.235.208', 1509261120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393236313132303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('j7nd772n4genk9njdo045muufij1qoen', '164.132.91.1', 1514979104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343937393130343b),
('jaa3bhpqks2oko0r035lm4kgp75mj6qq', '187.161.235.85', 1512621947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632313934373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('jalisiv16cjo4fnh868li3e671hlqpl4', '54.227.51.103', 1513171300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333137313330303b),
('jar723a28243u0qj08te6d1rtdu3qqgv', '185.26.92.74', 1511210962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313231303936323b),
('jc09a5ds96n5mradtmolidg8n5g34nac', '54.36.149.20', 1516487282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363438373238323b),
('jc4qullf759rpnsirgl2urm33jsgo8ch', '66.249.79.146', 1518307227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383330373232373b),
('jdg30fhorqv5no019csekh74mmjj9avp', '54.36.148.157', 1520269694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303236393639343b),
('jj6c96ersl8ul03lakf9l2i51k557kcg', '148.245.119.253', 1512573920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537333932303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('jkhfnnpgsto3i4m5b8kpb4jcg7fuc7ji', '148.245.119.253', 1509389654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338393635343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('jkledlhf2b4dskeiu9sgri8ghe6u8sfp', '148.245.119.253', 1511980258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313938303235383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('jnlvo7hk2ir77luln39ai813c5074pct', '148.245.119.253', 1511464203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313436323234313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('jqcc5iulaobkeosp8er63ct0201eb0jn', '187.161.235.144', 1511056838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313035363833383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('jrug7lvrqj0ma7uva9i4dicgqdmfo2tu', '66.249.70.20', 1517852400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373835323430303b),
('js0gnp94lncbj1men6s88n7mh6s7cr08', '66.249.76.84', 1510308159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303330383135393b),
('js34ggucmth3voejn0vmge4860nadrqg', '187.161.235.144', 1512282374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323238323337343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('jtodk9ts2ci4hkfhnubg5iqrd74as11e', '62.210.103.31', 1516621295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363632313239343b),
('jun4fjg74kbuk8c3hft8g2rhplfidfc3', '164.132.91.1', 1511582177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313538323137373b),
('jvngjuvhh5uslfu4o9dpopr00dur8fe0', '54.36.149.79', 1523072474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333037323437343b),
('k2ksn4sb60mnuso5l4rrhfv9c5t2qmcs', '5.9.156.74', 1509623913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632333931333b),
('k5b13a64bhktnv1kek1fq5u44asq1437', '187.161.235.208', 1509413330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431333333303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('k77335scvvse3rgvaft05adk2d6uj58e', '66.249.79.13', 1516557512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363535373531323b),
('kauufciuq5qm1eovdukkatscci9b3tkm', '148.245.119.253', 1512578387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537383338373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('kche49h6ffiddd8smkavenho7mdatb74', '148.245.119.253', 1511367203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336373230333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('keeqgr3vmdru98vlog90eps5s6og6s4r', '148.245.119.253', 1512568233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323536383233333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('keitpvnjo25e5ljc2bnh5om4dn3fvpq3', '5.188.211.26', 1514651927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343635313932373b),
('kkefe9gqk7e0bhrejd4vnpsugpi2piih', '148.245.119.253', 1512587891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538373839313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('kljnme1brpohsrea7ntsds1je88alr85', '148.245.119.254', 1509547067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393534363937343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('kmbatpjk8dkhourfuvih2a9mn6rhhei2', '66.249.73.223', 1517557296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373535373239363b),
('ko8i4m0tpd474m6no0udromksrri2eg6', '148.245.119.253', 1511899744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313839393734343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('koir8ad0e4957r79fjp21582e7c2ci1b', '66.249.79.150', 1509672056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393637323035363b),
('ksb6rm1ps4a9f1d7hjbggifa0k4b205s', '180.76.15.28', 1509845116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393834353131353b),
('kt5qh4rn304umnkm555pbc0lu4n07qgd', '148.245.119.253', 1512148703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323134383637393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('kunp0ibnqrggcu3016dao1c0ddm3ddsi', '187.161.235.85', 1512622654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632323635343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('kvc90qhd1f2h8fkt32qf0an4fbtbfa2o', '66.102.7.164', 1512056561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323035363536313b),
('l080p7tnmlt8p6noe6ndb6dug3s8qpql', '187.161.235.208', 1509421661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432313636313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('l0ir4nc447911p0o18lfikuegleqqjhf', '148.245.119.253', 1511462177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313436323136363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('l1hj9v3p4dpr3u85btclre787viqko60', '187.161.235.208', 1509300034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393330303033343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('l2k2422d0uiuof1n7hr778vrnmvpqt3i', '148.245.119.253', 1511462241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313436323234313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('l6goirphac9le6phfrdlicikecb0ed1s', '187.195.152.104', 1509825078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832353037383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('l7eq68p0mrmf01mha5o3g1smhboj5d9n', '93.209.12.100', 1523428050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333432383035303b),
('l7n0qqe45i10pjv8u1s5fklarrn2v9b7', '148.245.119.253', 1511380997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313338303934313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('l7tdsp857lau7u0pgdrfeo5gjfv1at9l', '93.209.12.100', 1523428048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333432383034383b),
('l93hvb3on7jqqt1kfi5hdsck3ab9suev', '66.249.75.205', 1521834060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313833343036303b),
('lbf9m98kbuukad4vkcn39n5fnh2jftoa', '54.226.34.209', 1512659381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323635393338313b),
('lbkriranhdav5d7dikob5olegcg4nfs7', '66.249.64.212', 1509906481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393930363438313b),
('lc3lnoth89j1jeuevk9sc4uqqki1jmh7', '148.245.119.253', 1509389655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338393635343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b64656275677c733a3130333a224c6f676f206f722046617669636f6e206368616e67652064657465637465642e20496620796f75207374696c6c2073656520746865206f726967696e616c2043524d206c6f676f2074727920746f20636c65617220796f75722062726f77736572206361636865223b5f5f63695f766172737c613a313a7b733a353a226465627567223b733a333a226f6c64223b7d),
('ld5f90sdigtbpf1k88qc6ie8rgga319i', '66.249.64.212', 1516803176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363830333137363b),
('lg7fe8g9eb8fd60o5lr7q5i6h4tl5v55', '148.245.119.253', 1512574501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537343530313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a343a22686f6c61223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('liggg0j27dt0smosd6ef8qoumomik471', '66.249.64.207', 1520429363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303432393336333b),
('lku6rf2c80dlcghe29fcac4pta12oaru', '187.161.235.144', 1512279848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323237393834383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b6d6573736167652d737563636573737c733a33323a22436f74697a616369c3b36e2061c3b1616469646f20636f6e20c3a97869746f2e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('ll877p3qf8mkjlebok9lp3n75sk630u7', '66.249.64.212', 1511481512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313438313531323b),
('lo92npo34fdnagif0nvednq9crs8mniq', '207.46.13.163', 1514266217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343236363231373b),
('lq966aitf7gu8jqc4pt7981nipkcuvep', '148.245.119.253', 1511362034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336323033343b7265645f75726c7c733a35373a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e2f70726f706f73616c732f70726f706f73616c223b),
('lr3coeq7rjuqnfhbc4bc09kolcj55pq2', '77.88.47.97', 1523535759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532333533353735393b),
('lu5rbn6k2ugbojhfvbb2vai55gheq907', '148.245.119.254', 1509546671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393534363637313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('lvgdc348en702tka509tnm5br6qa56fr', '34.240.211.151', 1513633561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333633333536313b),
('lvtfetnuoddphm5qi5rbs7s56eushu7r', '187.161.235.208', 1509429874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432393837343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('m1k6kkf7hr9q9jc1ktbeqs1g7laajsqm', '157.55.39.109', 1511991843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313939313834323b),
('m2n365jbcnajda0h30tgnrnpjt2hmktq', '187.195.152.104', 1509825604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832353630343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ma2jstfpsfm24ingg00o7jgav2jq56ma', '66.249.79.146', 1516557513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363535373531333b),
('mc5o9h91tohs8uuktnkjnoq1odc571f8', '185.26.92.74', 1511211067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313231313036363b),
('mca5k6u8uki53e47gluim30e9s3fgk6m', '52.36.125.174', 1509621834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632313833343b),
('mdputl7rur7fsigioei1cnp32rfnvcbc', '187.161.235.144', 1511731703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313733313730333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('mh12oh2tkioick4jmg1e93med6fjq4tp', '148.245.119.253', 1510773380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737333338303b),
('mhlmgvte0tptmga9mq08eb14ujalglu5', '66.102.7.226', 1516299130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363239393132393b),
('mnvoei39kdqneil79qhrob1d0m5urvrd', '66.249.79.146', 1516578628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363537383632383b),
('mokmduc3a4q1gogtbrlc85e5d60rhjou', '84.201.133.74', 1519414607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393431343630373b),
('mp3muddlth6fb8univljqacemhv7uub5', '187.161.235.208', 1509422580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432323538303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('mp4ghh1k76ulp2ukhcfn8po53ips2vpl', '148.245.119.253', 1509395896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339353839363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('mrafd86flqn25t4icse5ptchuam84t8s', '148.245.119.253', 1511900500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313930303530303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('mur16qcog1f5lgp43pq74g13kgjhos70', '187.161.235.144', 1512242112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323234323131323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('mv0ma0tj9f1mhm9el7i0ksqo49prc4im', '38.100.21.63', 1513697112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333639373131323b),
('n1cttm1dvnnt55j52ov0id8fpjoctrmf', '187.161.235.144', 1512019234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323031393233343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('n1h4f0g57ka8octcqmuj0pkboi3dk4v7', '187.161.235.213', 1509500999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393530303939393b),
('n381pnivau5bmfmqtd95c51896f92od2', '216.244.66.243', 1510946806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303934363830363b),
('n963jm1tlqrudbffovt7v0qr4a9e0m5c', '148.245.119.253', 1512070060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323037303036303b),
('nc2d2ghrtv07e99e46j2sm5rjo931uhd', '66.102.7.226', 1516202563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363230323536333b),
('ncnt9umq7k1fum0bkbpu1mj0laivk8t8', '187.161.235.144', 1512243648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323234333634383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ne1cjpaorphrjha4n65vhnir8e346q2s', '66.249.70.17', 1517888607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373838383630373b),
('nf462ielh6qv731a6cds2kmibfc611oa', '164.132.91.1', 1512194380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323139343338303b),
('nht39mngv9i1id5159il6ts6clioouql', '148.245.119.253', 1509396228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339363232383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('nigpeaejqnebt1np0eogs7d71pbo44ff', '148.245.119.253', 1509644520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634343532303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('nm1b7489d3atd90khn997c48p24lk2jq', '66.102.7.254', 1516040038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363034303033383b),
('nn99f57eoid0ujp72qcboh7pt5q5psa4', '66.102.6.32', 1512622089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632323038393b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('nna0afgkkie0cqrp2hf2t6uij19dpcgd', '66.249.64.212', 1509627497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632373439373b),
('nqeb6g7g9d4vh6h0luvf46f0gr593t5p', '66.249.79.139', 1516591768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539313736383b),
('nrhfek7spj5dssvsp2rsjd7u8qkqcrfa', '148.245.119.253', 1509645212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634353231323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('nroqfgrogpdcehnc7anshpbhcuueh4a0', '187.161.235.85', 1512623280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632333238303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ntlqugtg71obe0ocpm97sscf5slcppdn', '148.245.119.253', 1509632315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633323331353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('nv6s8p90hhr4np1q756bue047uespq33', '148.245.119.253', 1512144156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323134343135363b),
('nvn4sk5h2ao5f1v7clm42gv07jit9d20', '187.161.235.213', 1509425121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432353132313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('o1pmi3lo24kdekjlvqhg05tokhvrlrs1', '187.161.235.185', 1515520520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353532303532303b),
('o4e2h20dkrbr1kajf6h39r2i7sv5g0vj', '148.245.119.253', 1511288719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313238383731393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('o4ok4pagnle2a9vngmmmkd27ge4052jn', '216.244.66.232', 1519177556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393137373535353b),
('o5j02e1hbu3iq4j205e4bnbn1r7loi7r', '5.9.156.74', 1509623891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632333839313b),
('o65oa1ru8oe00mcl4hbsn2bjqm0iom8h', '148.245.119.253', 1509381647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338313634373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('o6ba1o58v8579520ntcj52o3behf7hlc', '187.161.235.144', 1511737377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313733373236343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('oa989cooh0oj8srcn3cnsmf2hac3jkbt', '148.245.119.253', 1510773447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737333434373b7265645f75726c7c733a34363a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e2f636c69656e7473223b),
('ob5f89c99ocu147ig62cv80rrbehti1d', '187.161.235.208', 1509426726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432363732363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('obd197ldr6thabdfjartmb6c7kprjpvt', '217.182.132.29', 1510155362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303135353336323b),
('oe4o0kqpk68mqde0ic2fa9mgc7e2keao', '148.245.119.253', 1510772041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737323034313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('oge9o887ek0f03loafpc9qll18gfs6vv', '176.9.139.229', 1511603332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313630333333313b),
('oh8re36ac8266qano2rbo2gib6lni6jb', '187.161.235.144', 1511716370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313731363337303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ohb1goh29hap9hobd7nnmd23r13b16tq', '180.76.15.140', 1512528819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323532383831393b),
('oko6e0855h8umdqq1m2eh52gufe2ovmd', '66.249.64.205', 1510959924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303935393932343b),
('okuio5lo0f50kmn5s3lv60thfbqil0ic', '66.249.64.212', 1516792703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363739323730333b),
('okvesuc0971692k634sh1albb0tu49dp', '187.161.235.213', 1509425423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432353432333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('onguildq565ajuj0l22fp11tbvok403g', '148.245.119.253', 1512588988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538383733383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('orhnh8n39gm8rnogdu9q074a32du0b1u', '187.161.235.144', 1511729415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313732393431353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('os8878qci4tgc7bmr49tp26jvu2srcdk', '148.245.119.253', 1509552544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393535323430323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ot55a41au6d48vra439kjr3aiidefs91', '187.161.235.144', 1512240454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323234303435343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ou8v64nt6jke81gk0bqdhiojfdc1q2sa', '27.34.51.116', 1509948683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393934383638333b),
('p137cr1khlds7iupmfr2q46i13ssb2o0', '187.210.247.48', 1511458885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313435383838343b7265645f75726c7c733a34383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e2f70726f706f73616c73223b),
('p2t0mjvuagv75mhr8svep76aj5866p60', '187.161.235.144', 1511848840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313834383830353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('p9cpakqcsq63mhh52qopqlmggc6cphb4', '187.161.235.144', 1511717663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313731373636333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pacfkutfk09t3nqsmbmjfon57e4r2jib', '148.245.119.253', 1510769952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303736393935323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pb24g5vuf08o6lk2tgq843bar02hc2qi', '148.245.119.253', 1510160494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303136303439343b),
('pbre1c7o7enqolkhe706t2n4mfgor830', '187.161.235.213', 1510117763, 0x7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b5f5f63695f6c6173745f726567656e65726174657c693a313531303131373736333b),
('pd4ms9sdhavlgd8rbu19c22le1ckqoqr', '148.245.119.253', 1512572165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537323136353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pdh6g8bp4m9rs46422osrlnnck1jjm6q', '187.161.235.85', 1512622271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632323237313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pejnbcba37cpdjp2un7g33lumf3401t2', '148.245.119.253', 1512492737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323439323730303b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('pf4u7kp4mpsc913gbm5i9ft1qvr9mun6', '66.249.79.146', 1516647232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363634373232393b),
('pgjjomkrk3l8gbblue1onr9t2av2cgol', '94.199.151.22', 1510353584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303335333538343b),
('pgk78if5fsntsiq7h7usiidq6u357h8h', '66.249.73.205', 1516741950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363734313935303b),
('pi7vce8q5nsgqif9s8hj0529ma37hc3s', '187.161.235.144', 1510807629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303830373632393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pirre3io77lh44968c52ohhrp7irv84f', '5.9.156.74', 1509623912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632333931323b),
('pjfj9ns1h3hch3rf1h4i9fdp9av8bjpi', '187.195.152.104', 1509384170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338343137303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pnbrrl03hd5dfg7f0gci94c7km60slch', '164.132.91.1', 1510870433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303837303433333b),
('poff2krqmer62oj6f4166fbcnlpc9tup', '148.245.119.253', 1509378932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393337383933323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('ppal2pirodv5mk6gr3dbj7j1jsd4mojk', '148.245.119.253', 1512579276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537393237363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pqdt1i8vg58vchql0sp4daq3r7a4g3fe', '148.245.119.253', 1511381613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313338313631333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('pr1n2h2llspqvu7fc91vcvas65456khv', '66.102.7.164', 1512998729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323939383732383b),
('prl79cld0lj0qun1jfqo0j61b58abaje', '66.249.79.15', 1518307226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531383330373232363b),
('pvajjb64mn7s408lud1442l485s1lqh7', '148.245.119.253', 1509650144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393635303134343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('q0h146at635c9hr48g92hrc2bn3f9nv4', '66.249.64.205', 1516761062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363736313036323b),
('q0p3385n9158l2dfqhagkvgvdjf59rjp', '148.245.119.253', 1512577821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537373832313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('q2li9eqil1us2vdpjdpcj4hjoihgcrlg', '148.245.119.253', 1511800923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830303932333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('q4fkg7kdmfrgqtvl9q8jj3ne6m7mk9j7', '148.245.119.253', 1511802648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830323634383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('q55rv4segc7j03q8njm8eqtevsnkbl3v', '148.245.119.253', 1509642685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634323638353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('q80lhr7h4fc32o0kssnk6qrfb3darn6g', '66.249.79.139', 1516647228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363634373232343b),
('q83m7g5olkqdut6nnv810eg3v5evf7hq', '66.249.70.17', 1517874944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373837343934343b),
('qbe2rqvktnduj81v3dv5qbhkd6bi7jiq', '187.161.235.85', 1512619585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323631393538353b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('qc52ku9f8b8oo70la8j6bmlkb38uojl6', '187.195.152.104', 1509818135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393831383133353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ql0ac4soqk60bo0jqbr6q0o9359pu5kb', '66.102.7.226', 1512491876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323439313837363b),
('qlfptp7srvs46tjtslaks4ajtinut0qg', '100.43.85.186', 1511322274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313332323237343b),
('qm1bdn3ul50ktfs4ieb9vtv76n5jsth8', '167.114.209.38', 1515318021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353331383032313b),
('qmiuu7idbg2d2qqb5lmk69hsbt6pbqa4', '148.245.119.253', 1512568753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323536383735333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('qmstj97k2f9ke17mig9m3lk7buagd5u2', '51.255.65.76', 1512029858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323032393835383b),
('qnosi6fcp86fgic4np967l24f1omub3c', '68.180.228.92', 1509638263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393633383236333b),
('qnrc958iefqh7nnk7h8ir4rs03g7mot0', '66.249.64.212', 1514169508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343136393530383b),
('qpsg78hjpvtj1h7hgste5o7ng4gvkm6h', '187.161.235.208', 1509420988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432303938383b),
('qq1tjp74e3bd4vm4vk2jtvpl4hgbm0da', '148.245.119.253', 1509648054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393634383035343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('qqk52loorm7p5qdf9bhr8ed9liqpgcj5', '187.161.235.208', 1509261281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393236313132303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('qqngt6mahfil7rlucu8r5b6aber4ehrf', '148.245.119.253', 1511805083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830353038333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('qqvd0uk102kaijusonoivmhaahpmkbkq', '187.161.235.85', 1512623309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323632333238303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('qvk4jqnj044bluq29msbbljb9g1fadsb', '34.243.4.55', 1515084276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353038343237363b),
('r4rqmluksar24toe616014globlief51', '157.55.39.123', 1517859726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373835393732363b),
('r5rf96g6mmho1uqlaunpfc30e6u0tue4', '180.76.15.21', 1512385961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323338353936313b),
('r7vcnl05j1dl40et30nfb1d8qaf93dcc', '149.210.224.217', 1510545075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303534353037353b),
('r8fo0hc28nnhtukfmqcuqrltqoceo1gv', '180.76.15.30', 1514147718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343134373731373b),
('r8lhfoego4j52cqq40gmmparhhgsaumj', '66.249.73.223', 1516944982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363934343938323b),
('r8s74bc77ol5qbj3psi7img1ldag6bj6', '148.245.119.254', 1509546974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393534363937343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ralbp49aok001st77tg81nio8hskovl4', '148.255.109.112', 1521035924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313033353932343b),
('rb3t471uo6787bick1r2vnkhmi8cl2l9', '187.161.235.144', 1511060899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313036303839393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('rc0i66eadql20sj0379aktqt5bl0q0ih', '27.34.51.116', 1509948682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393934383638323b),
('rd9c8ujt51tkuj2rp9aogjnqsg44cip5', '187.161.235.208', 1509405935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393430353933353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('rgku00qclshnapv4t78cbofmhs5fi9to', '51.255.71.127', 1515289038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353238393033383b),
('rj1bgrp0ff4u7bskvm593ubnvhv2ftpm', '180.76.15.145', 1512593923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323539333932333b),
('rnlecn5dc32g2n7fptf0r7t7volb5en2', '148.245.119.253', 1511879972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313837393937323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('rteii3vcksc9hudm26of4t5skm9hhdk2', '187.161.235.144', 1511848805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313834383830353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('s0cq8tekjm6plplb781nvum95k2pk91u', '66.249.64.212', 1516761063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363736313036333b),
('s3fqc93hp8hl3p75oi7bhut6f6kvjq0g', '187.161.235.208', 1509414372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393431343337323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('s5706l25008hufjgaj4l9tf1aeu9q0mk', '187.161.235.144', 1511735109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313733353130393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('s7332ou7qm7o35icl9kpd4tltca85490', '148.245.119.253', 1513783961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333738333936313b),
('s8fc29tl3f15k9san3r8ejnv7mq53vfl', '187.161.235.144', 1512246659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323234363635393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('s8r54alj5egt1ufu701kront2m2e1227', '187.195.152.104', 1509816648, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393831363634383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('sbo3soh8hu6a5gb04elr6r328afitafc', '148.245.119.253', 1511362351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336323335313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('sd1nm4thfa4qefi2mqjd1j6hrnutjqm0', '66.249.73.223', 1517551233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373535313233333b),
('sdsof8ptuqu500a07qr3l476chjg491s', '148.245.119.253', 1510757364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303735373336343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('sekno9p999u9per1vga9ee4fg7rjss7s', '148.245.119.253', 1512589039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538393033393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('sg5itpb7egnsperqi2nvuqq5bl2fgs91', '164.132.91.1', 1512867431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323836373433313b),
('sgprblic6q0261l0maefanurdgs5i6oo', '148.245.119.253', 1511803409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313830333430393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('sjmab7j8uh9hsm521k5v54528jqf1pn9', '54.36.149.89', 1519348843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393334383834333b),
('skobgrh2bbipea5hkb03m6ui155rgm3l', '187.161.235.144', 1511059592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313035393539323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('skpp08ic55r6l5hf6c7ad8tc61seq9sn', '66.249.70.15', 1517915461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373931353436313b),
('skuqsra5c42uvdc018h6aobqo335vj07', '148.245.119.253', 1511880470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313838303437303b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('sqdseqj71g0phjjkp4o3l2v6s7omjlld', '66.249.79.148', 1509672071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393637323037313b),
('sucrg3l0c6mgrgk8dv2323jefjjlkmb9', '66.102.7.254', 1512399544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323339393534343b),
('t1ri0vtu7g4bmeiotu4cj9knfk55r556', '66.249.79.146', 1516591769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539313736393b),
('t2fif3hrm09gp1d4l758nd02n2o1cbm6', '148.245.119.253', 1509381867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338313836363b),
('t399sqsmr3to3anunm1dkgt8mqj6ghob', '66.102.7.148', 1513778754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333737383735343b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('t4an2lvtbb87e6djaqm0292kcogle8a8', '164.132.91.1', 1510870433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303837303433333b),
('t7qg8egni3ceredg2fu96tbeogle2p8k', '148.245.119.253', 1511368708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313336383730383b),
('t8ol4a9pm7iak0pjvv0rv4h6qnqnsuua', '216.244.66.232', 1511189065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313138393036353b),
('t9osf62mprqrcu86vqvfihnj60ej21s4', '187.161.235.144', 1512242858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323234323835383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('tae55fm8o9mbo6nkto4rq4npvbkcvoos', '187.161.235.144', 1512362878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323336323837383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('tavdrsgabup7c6r1gcad7rb5fpnps05l', '207.46.13.179', 1520626777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303632363737373b),
('tbmhvl25v8j7b4jkpfdggod293non2u3', '52.36.125.174', 1509621689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632313638393b),
('tcmb3gmahvpfsa3ags0m70m783bck3m5', '187.161.235.144', 1512019234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323031393233343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('te153b1d92q66mcir9stqhkrrj2551ir', '148.245.119.253', 1510795731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303739353733313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('tfm6a2vkt0m4mousjocod239vicko8th', '54.226.34.209', 1512659380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323635393338303b),
('tgct0cmrno3phtv5lfblqc4l5l8089al', '217.182.132.148', 1511028494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313032383439343b),
('tgv126t50fiskrrob2eotqqfmberm8ne', '66.249.75.212', 1517339609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373333393630383b),
('ths8vcsrp73jpaodtq4bme1f5se0d7mm', '66.249.70.20', 1517852401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373835323430313b),
('ti04p9qgggpa2kjok73o2ebolabfvlj5', '66.249.70.20', 1517874945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373837343934353b),
('ti9bdvo1uk98ui7gniru2os3th3n6jcl', '164.132.162.159', 1510689651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303638393635313b),
('tj49d9dtcal9kmn12rnl3kuc45sqdsv6', '104.236.211.154', 1515070754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353037303735343b),
('tjd87ocjqnd97miod4dj48kp6dshv9gp', '81.209.177.136', 1509805451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393830353435313b),
('tjunohaipt85d62ftnu37i2812kofnr1', '66.249.73.223', 1516944982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363934343938323b),
('tk1mmnoir0f7is02v16vu4t3m8n5ccie', '187.195.152.104', 1509499111, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393439383838383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('tkt59h3j66ea6hsan22q8n9pp3fdtodj', '180.76.15.20', 1510330835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303333303833353b),
('tlieccmodscv3hhdj4jdmsu784kduij5', '216.244.66.243', 1520059971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303035393937313b),
('tmq622v35dkrqa1vf4rfpd8sk2clfngf', '148.245.119.253', 1509392734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339323733343b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('too5jhvnmtat99e6cab7hgg6lu41mtkr', '148.245.119.253', 1512586092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538363039323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('tqr2j9d68roko1qvclumn6e66frea896', '187.161.235.208', 1509429009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393432393030393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('tqv4p0li8mipmk4ddnq4jl5nr7r1k0q8', '66.102.7.254', 1512572392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537323339323b),
('trkd7e7pinktd504ks944tq54cl6td31', '54.36.149.18', 1521495800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532313439353830303b),
('tro6uujb13n89835guu9v1t164rjbpui', '148.245.119.253', 1511902174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313930313936333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('tttca9n41u88hvoj9t5c142h8ji3rk0h', '148.245.119.253', 1513107754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333130373734373b),
('u5bqsp6s9o42m6lql5u8j3q9js638ets', '157.55.39.112', 1520281970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532303238313937303b),
('u7gljv2dgqv7jm1muls9ned5tkoarkkj', '148.245.119.253', 1510948426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303934383432363b),
('u8mu2uauh8p861h4k3s5adlef3m01ndk', '187.161.235.144', 1512250486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323235303438363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('uame0p2qm3475ro5h7uek9i30367agtd', '66.102.7.150', 1515522116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353532323131363b),
('ues4liabk46n458pp32fginbsloirg5i', '187.161.235.193', 1512514959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323531343935393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('ui4gugv5lv4c7pu8gujslcth7la4rbef', '148.245.119.253', 1509380999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338303939393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('uj5u6j2b6t2ibci7aoeoetbiog6k9lus', '187.161.235.144', 1511061030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313036303839393b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('uj844qc3bhls9gs8tp94cqthuubmvk8j', '164.132.91.1', 1510098260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303039383236303b),
('ujkv5b2j7adrh96dg7ievhqib0oqc2i1', '66.249.70.24', 1517898572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373839383537323b),
('ujqadhee1h61ig72dqf91qv37pjibol2', '66.249.88.11', 1509778299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393737383235323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b69735f6d6f62696c657c623a313b),
('uk1jngea28k7e1k2mo6cltkhuacpu5fl', '66.249.70.20', 1519052563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393035323536333b),
('um4l5aagl0spa9omld1hssd6stumnnht', '148.245.119.253', 1512569068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323536393036383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a343a22686f6c61223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('unvoveo8un6vhqaccgru2lg2vqe2f8rp', '66.249.64.205', 1516814548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363831343534383b),
('utdnekbqc9ohk9vic1bo1i329l9jdbll', '148.245.119.253', 1511881277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313838313237373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('v09hvmsm5kv30o582n0mvu8regd3v01q', '148.245.119.253', 1510585893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303538353836383b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('v0a5it3j63nh76g09cbj7e7dcqqtac1q', '84.201.133.74', 1515302098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353330323039383b),
('v0cl6iui9iteil6q4pe9p9aavs69e9v9', '66.249.73.207', 1517551233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373535313233333b),
('v36gk73l5i3oq9h2tuebdbm5081qqovq', '38.100.21.65', 1510875764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303837353736343b),
('v5aba87v04o4s1tpiiiurgq0ijl9fuec', '148.245.119.253', 1509380602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338303630323b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('va0jmlresmgkqtnsor59de506e2jocao', '187.161.235.144', 1510701252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303730313035363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('vbcclcrirmv8n9vv72ere3rjhnl1p274', '148.245.119.253', 1511978835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313937383833353b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('vdgi1pd17rflf6n3lp15gv27eiui2aj4', '148.245.119.253', 1509380887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338303838373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('vdts4j2476588mk94tmvo4g6g0dpvd3c', '66.249.73.207', 1516944981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363934343938313b),
('vf92a5pcqq57r41c731mu164st8o61u2', '148.245.119.253', 1509381861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393338313634373b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('vgc76djuq9embvnv86f60fde75p4qg59', '148.245.119.253', 1511458223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313435383232333b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('vhsbi1fahmjr09t1o4bn2pmr71571t0g', '66.249.79.148', 1509731192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393733313139323b),
('vlragfqgkkan1s3ovnfbp0778jak6ubd', '187.195.152.104', 1509817826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393831373832363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('vnbg1dbc48rh8ipmtvraji8nc3vnr7gc', '104.131.171.154', 1510056010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303035363031303b),
('vpr6cbtbajv96uvneamstpjjuap3hq9r', '148.245.119.253', 1510772043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303737323034313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('vr9ug9mnd6hi7vkb7ut528ckar88v9pv', '148.245.119.253', 1512574981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537343938313b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a3237313a223c64697620636c6173733d22223e3c7461626c6520636c6173733d227461626c65207461626c652d73747269706564207461626c652d70726f706f73616c7320223e3c74686561643e3c74723e3c74683e436f74697a616369c3b36e20233c2f74683e3c74683e54656d613c2f74683e3c74683e506172613c2f74683e3c74683e546f74616c3c2f74683e3c74683e46656368613c2f74683e3c74683e56616c6964612048617374613c2f74683e3c74683e546167733c2f74683e3c74683e466563686120646520437265616369c3b36e3c2f74683e3c74683e45737461646f3c2f74683e3c2f74723e3c2f74686561643e3c74626f64793e3c2f74626f64793e3c2f7461626c653e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226e6577223b7d),
('vshcoho8odul1kc12sv61tflc9d52tr6', '66.249.66.19', 1519847479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393834373437393b),
('vu1akvosomvsvdqivrhbg9ag3gd442tp', '187.195.152.104', 1509821386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832313338363b73746166665f757365725f69647c733a313a2233223b73746166665f6c6f676765645f696e7c623a313b),
('vu562eal6e0mlca6345me6fp05i1r6ps', '66.249.83.24', 1512671354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323637313335333b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(300) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `email_signature` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `email_signature`) VALUES
(1, 'ojasso@gmail.com', 'Omar', 'Jasso', '', '', '', '', '$2a$08$qjdpWzYT7hpVKdovl07Kj.b3lCNCvjWJL5yUFihzBk5EOvC2mtS5e', '2017-10-25 05:19:10', NULL, '::1', '2017-10-26 14:31:10', '2017-10-25 00:04:16', NULL, NULL, 1, 1, 1, 'spanish', '', NULL, 0, '0.00', ''),
(3, 'admin@publicarte.com', 'Guillermo', 'Avendaño', '', '', '', '', '$2a$08$ZpuUqTzKAUt3.KvB3x52AeuFrnAVkD0bycHNW3gT4QJIgvCLYFvN.', '2017-10-26 09:00:32', 'avatar-circle-human-male-3-512.png', '187.161.235.85', '2017-12-06 22:48:06', '2017-10-26 09:01:39', NULL, NULL, 1, 1, 1, 'spanish', '', 'ricardo-avendano', 0, '0.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstaffdepartments`
--

CREATE TABLE `tblstaffdepartments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstaffpermissions`
--

CREATE TABLE `tblstaffpermissions` (
  `staffpermid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `staffid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstafftaskassignees`
--

CREATE TABLE `tblstafftaskassignees` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstafftaskcomments`
--

CREATE TABLE `tblstafftaskcomments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstafftasks`
--

CREATE TABLE `tblstafftasks` (
  `id` int(11) NOT NULL,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblstafftasksfollowers`
--

CREATE TABLE `tblstafftasksfollowers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsurveyresultsets`
--

CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsurveys`
--

CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsurveysemailsendcron`
--

CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsurveysendlog`
--

CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltags_in`
--

CREATE TABLE `tbltags_in` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltaskchecklists`
--

CREATE TABLE `tbltaskchecklists` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbltaxes`
--

INSERT INTO `tbltaxes` (`id`, `name`, `taxrate`) VALUES
(1, 'IVA', '16.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticketattachments`
--

CREATE TABLE `tblticketattachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticketpipelog`
--

CREATE TABLE `tblticketpipelog` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticketreplies`
--

CREATE TABLE `tblticketreplies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticketsspamcontrol`
--

CREATE TABLE `tblticketsspamcontrol` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblticketstatus`
--

CREATE TABLE `tblticketstatus` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblticketstatus`
--

INSERT INTO `tblticketstatus` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(2, 'In progress', 1, '#84c529', 2),
(5, 'Closed', 1, '#03a9f4', 5),
(1, 'Open', 1, '#ff2d42', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltodoitems`
--

CREATE TABLE `tbltodoitems` (
  `todoid` int(11) NOT NULL,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbluserautologin`
--

CREATE TABLE `tbluserautologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(400) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(300) NOT NULL,
  `password` text NOT NULL,
  `description` text,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `share_in_projects` tinyint(1) NOT NULL DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblviewstracking`
--

CREATE TABLE `tblviewstracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblwebtolead`
--

CREATE TABLE `tblwebtolead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(400) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indices de la tabla `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indices de la tabla `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`);

--
-- Indices de la tabla `tblcommentlikes`
--
ALTER TABLE `tblcommentlikes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcontactpermissions`
--
ALTER TABLE `tblcontactpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Indices de la tabla `tblcontractrenewals`
--
ALTER TABLE `tblcontractrenewals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Indices de la tabla `tblcontracttypes`
--
ALTER TABLE `tblcontracttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcustomeradmins`
--
ALTER TABLE `tblcustomeradmins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indices de la tabla `tblcustomergroups_in`
--
ALTER TABLE `tblcustomergroups_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indices de la tabla `tblcustomersgroups`
--
ALTER TABLE `tblcustomersgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldid` (`fieldid`),
  ADD KEY `fieldto` (`fieldto`),
  ADD KEY `relid_2` (`relid`);

--
-- Indices de la tabla `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indices de la tabla `tbldismissedannouncements`
--
ALTER TABLE `tbldismissedannouncements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`);

--
-- Indices de la tabla `tblemaillists`
--
ALTER TABLE `tblemaillists`
  ADD PRIMARY KEY (`listid`);

--
-- Indices de la tabla `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Indices de la tabla `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Indices de la tabla `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Indices de la tabla `tblexpensescategories`
--
ALTER TABLE `tblexpensescategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indices de la tabla `tblformquestionboxes`
--
ALTER TABLE `tblformquestionboxes`
  ADD PRIMARY KEY (`boxid`);

--
-- Indices de la tabla `tblformquestionboxesdescription`
--
ALTER TABLE `tblformquestionboxesdescription`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indices de la tabla `tblformquestions`
--
ALTER TABLE `tblformquestions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indices de la tabla `tblformresults`
--
ALTER TABLE `tblformresults`
  ADD PRIMARY KEY (`resultid`);

--
-- Indices de la tabla `tblgoals`
--
ALTER TABLE `tblgoals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indices de la tabla `tblinvoicepaymentsmodes`
--
ALTER TABLE `tblinvoicepaymentsmodes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indices de la tabla `tblitemsrelated`
--
ALTER TABLE `tblitemsrelated`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblitemstax`
--
ALTER TABLE `tblitemstax`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblitems_in`
--
ALTER TABLE `tblitems_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indices de la tabla `tblknowledgebase`
--
ALTER TABLE `tblknowledgebase`
  ADD PRIMARY KEY (`articleid`);

--
-- Indices de la tabla `tblknowledgebasearticleanswers`
--
ALTER TABLE `tblknowledgebasearticleanswers`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indices de la tabla `tblknowledgebasegroups`
--
ALTER TABLE `tblknowledgebasegroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indices de la tabla `tblleadactivitylog`
--
ALTER TABLE `tblleadactivitylog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `from_form_id` (`from_form_id`),
  ADD KEY `from_form_id_2` (`from_form_id`);

--
-- Indices de la tabla `tblleadsemailintegrationemails`
--
ALTER TABLE `tblleadsemailintegrationemails`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblleadsintegration`
--
ALTER TABLE `tblleadsintegration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblleadssources`
--
ALTER TABLE `tblleadssources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblleadsstatus`
--
ALTER TABLE `tblleadsstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbllistemails`
--
ALTER TABLE `tbllistemails`
  ADD PRIMARY KEY (`emailid`);

--
-- Indices de la tabla `tblmaillistscustomfields`
--
ALTER TABLE `tblmaillistscustomfields`
  ADD PRIMARY KEY (`customfieldid`);

--
-- Indices de la tabla `tblmaillistscustomfieldvalues`
--
ALTER TABLE `tblmaillistscustomfieldvalues`
  ADD PRIMARY KEY (`customfieldvalueid`),
  ADD KEY `listid` (`listid`),
  ADD KEY `customfieldid` (`customfieldid`);

--
-- Indices de la tabla `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpermissions`
--
ALTER TABLE `tblpermissions`
  ADD PRIMARY KEY (`permissionid`);

--
-- Indices de la tabla `tblpinnedprojects`
--
ALTER TABLE `tblpinnedprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpostcomments`
--
ALTER TABLE `tblpostcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpostlikes`
--
ALTER TABLE `tblpostlikes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`postid`);

--
-- Indices de la tabla `tblpredefinedreplies`
--
ALTER TABLE `tblpredefinedreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpriorities`
--
ALTER TABLE `tblpriorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Indices de la tabla `tblprojectactivity`
--
ALTER TABLE `tblprojectactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblprojectfiles`
--
ALTER TABLE `tblprojectfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblprojectmembers`
--
ALTER TABLE `tblprojectmembers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indices de la tabla `tblprojectnotes`
--
ALTER TABLE `tblprojectnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`);

--
-- Indices de la tabla `tblprojectsettings`
--
ALTER TABLE `tblprojectsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblproposalcomments`
--
ALTER TABLE `tblproposalcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indices de la tabla `tblrolepermissions`
--
ALTER TABLE `tblrolepermissions`
  ADD PRIMARY KEY (`rolepermissionid`);

--
-- Indices de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indices de la tabla `tblsalesactivity`
--
ALTER TABLE `tblsalesactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indices de la tabla `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`);

--
-- Indices de la tabla `tblstaffdepartments`
--
ALTER TABLE `tblstaffdepartments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Indices de la tabla `tblstaffpermissions`
--
ALTER TABLE `tblstaffpermissions`
  ADD PRIMARY KEY (`staffpermid`);

--
-- Indices de la tabla `tblstafftaskassignees`
--
ALTER TABLE `tblstafftaskassignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indices de la tabla `tblstafftaskcomments`
--
ALTER TABLE `tblstafftaskcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indices de la tabla `tblstafftasks`
--
ALTER TABLE `tblstafftasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`);

--
-- Indices de la tabla `tblstafftasksfollowers`
--
ALTER TABLE `tblstafftasksfollowers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblsurveyresultsets`
--
ALTER TABLE `tblsurveyresultsets`
  ADD PRIMARY KEY (`resultsetid`);

--
-- Indices de la tabla `tblsurveys`
--
ALTER TABLE `tblsurveys`
  ADD PRIMARY KEY (`surveyid`);

--
-- Indices de la tabla `tblsurveysemailsendcron`
--
ALTER TABLE `tblsurveysemailsendcron`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblsurveysendlog`
--
ALTER TABLE `tblsurveysendlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltags_in`
--
ALTER TABLE `tbltags_in`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indices de la tabla `tbltaskchecklists`
--
ALTER TABLE `tbltaskchecklists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indices de la tabla `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblticketattachments`
--
ALTER TABLE `tblticketattachments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblticketpipelog`
--
ALTER TABLE `tblticketpipelog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblticketreplies`
--
ALTER TABLE `tblticketreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`);

--
-- Indices de la tabla `tblticketsspamcontrol`
--
ALTER TABLE `tblticketsspamcontrol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblticketstatus`
--
ALTER TABLE `tblticketstatus`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Indices de la tabla `tbltodoitems`
--
ALTER TABLE `tbltodoitems`
  ADD PRIMARY KEY (`todoid`);

--
-- Indices de la tabla `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblviewstracking`
--
ALTER TABLE `tblviewstracking`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblwebtolead`
--
ALTER TABLE `tblwebtolead`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblcommentlikes`
--
ALTER TABLE `tblcommentlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcontactpermissions`
--
ALTER TABLE `tblcontactpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tblcontractrenewals`
--
ALTER TABLE `tblcontractrenewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcontracttypes`
--
ALTER TABLE `tblcontracttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblcustomergroups_in`
--
ALTER TABLE `tblcustomergroups_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tblcustomersgroups`
--
ALTER TABLE `tblcustomersgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbldismissedannouncements`
--
ALTER TABLE `tbldismissedannouncements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblemaillists`
--
ALTER TABLE `tblemaillists`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=936;

--
-- AUTO_INCREMENT de la tabla `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblexpensescategories`
--
ALTER TABLE `tblexpensescategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblformquestionboxes`
--
ALTER TABLE `tblformquestionboxes`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblformquestionboxesdescription`
--
ALTER TABLE `tblformquestionboxesdescription`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblformquestions`
--
ALTER TABLE `tblformquestions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblformresults`
--
ALTER TABLE `tblformresults`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblgoals`
--
ALTER TABLE `tblgoals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblinvoicepaymentsmodes`
--
ALTER TABLE `tblinvoicepaymentsmodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblitemsrelated`
--
ALTER TABLE `tblitemsrelated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblitemstax`
--
ALTER TABLE `tblitemstax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblitems_in`
--
ALTER TABLE `tblitems_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tblknowledgebase`
--
ALTER TABLE `tblknowledgebase`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblknowledgebasearticleanswers`
--
ALTER TABLE `tblknowledgebasearticleanswers`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblknowledgebasegroups`
--
ALTER TABLE `tblknowledgebasegroups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblleadactivitylog`
--
ALTER TABLE `tblleadactivitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblleadsemailintegrationemails`
--
ALTER TABLE `tblleadsemailintegrationemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblleadsintegration`
--
ALTER TABLE `tblleadsintegration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblleadssources`
--
ALTER TABLE `tblleadssources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblleadsstatus`
--
ALTER TABLE `tblleadsstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbllistemails`
--
ALTER TABLE `tbllistemails`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblmaillistscustomfields`
--
ALTER TABLE `tblmaillistscustomfields`
  MODIFY `customfieldid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblmaillistscustomfieldvalues`
--
ALTER TABLE `tblmaillistscustomfieldvalues`
  MODIFY `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT de la tabla `tblpermissions`
--
ALTER TABLE `tblpermissions`
  MODIFY `permissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tblpinnedprojects`
--
ALTER TABLE `tblpinnedprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpostcomments`
--
ALTER TABLE `tblpostcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpostlikes`
--
ALTER TABLE `tblpostlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpredefinedreplies`
--
ALTER TABLE `tblpredefinedreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblpriorities`
--
ALTER TABLE `tblpriorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblprojectactivity`
--
ALTER TABLE `tblprojectactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojectfiles`
--
ALTER TABLE `tblprojectfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojectmembers`
--
ALTER TABLE `tblprojectmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojectnotes`
--
ALTER TABLE `tblprojectnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblprojectsettings`
--
ALTER TABLE `tblprojectsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblproposalcomments`
--
ALTER TABLE `tblproposalcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblrolepermissions`
--
ALTER TABLE `tblrolepermissions`
  MODIFY `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblsalesactivity`
--
ALTER TABLE `tblsalesactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblstaffdepartments`
--
ALTER TABLE `tblstaffdepartments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstaffpermissions`
--
ALTER TABLE `tblstaffpermissions`
  MODIFY `staffpermid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `tblstafftaskassignees`
--
ALTER TABLE `tblstafftaskassignees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstafftaskcomments`
--
ALTER TABLE `tblstafftaskcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstafftasks`
--
ALTER TABLE `tblstafftasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstafftasksfollowers`
--
ALTER TABLE `tblstafftasksfollowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblsurveyresultsets`
--
ALTER TABLE `tblsurveyresultsets`
  MODIFY `resultsetid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblsurveys`
--
ALTER TABLE `tblsurveys`
  MODIFY `surveyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblsurveysemailsendcron`
--
ALTER TABLE `tblsurveysemailsendcron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblsurveysendlog`
--
ALTER TABLE `tblsurveysendlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltaskchecklists`
--
ALTER TABLE `tbltaskchecklists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblticketattachments`
--
ALTER TABLE `tblticketattachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblticketpipelog`
--
ALTER TABLE `tblticketpipelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblticketreplies`
--
ALTER TABLE `tblticketreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblticketsspamcontrol`
--
ALTER TABLE `tblticketsspamcontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblticketstatus`
--
ALTER TABLE `tblticketstatus`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbltodoitems`
--
ALTER TABLE `tbltodoitems`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblviewstracking`
--
ALTER TABLE `tblviewstracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblwebtolead`
--
ALTER TABLE `tblwebtolead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
