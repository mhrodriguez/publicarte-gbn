-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2018 a las 20:23:49
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
-- Base de datos: `publicarte`
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
(1, 'New Staff Member Added [ID: 2, Juan Perez]', '2017-10-28 15:55:03', ' '),
(2, 'New Customer Group Created [ID:1, Name:Gobierno del estado]', '2017-10-28 15:55:40', ' '),
(3, 'New Customer Group Created [ID:2, Name:Iniciativa privada]', '2017-10-28 15:56:02', ' '),
(4, 'New Customer Group Created [ID:3, Name:Publico en general]', '2017-10-28 15:56:12', ' '),
(5, 'New Department Added [Imprenta, ID: 1]', '2017-10-28 15:56:35', ' '),
(6, 'New Department Added [Offset, ID: 2]', '2017-10-28 15:56:44', ' '),
(7, 'New Department Added [Serigrafia, ID: 3]', '2017-10-28 15:56:54', ' '),
(8, 'New Client Created [Secretaria de Desarrollo Social From Staff: 1]', '2017-10-28 15:59:12', ' '),
(9, 'Contact Created [Luis  Castro]', '2017-10-28 16:01:29', ' '),
(10, 'Customer Info Updated [Secretaria de Desarrollo Social]', '2017-10-28 16:05:16', ' '),
(11, 'Staff Member Updated [ID: 1, Guillermo Avendaño]', '2017-10-28 16:07:23', 'Guillermo Avendaño'),
(12, 'New Tax Added [ID: 1, IVA]', '2017-10-28 16:08:38', 'Guillermo Avendaño'),
(13, 'New Currency Added [ID: MNX]', '2017-10-28 16:09:05', 'Guillermo Avendaño'),
(14, 'Currency Deleted [2]', '2017-10-28 16:09:30', 'Guillermo Avendaño'),
(15, 'Payment Mode Deleted [1]', '2017-10-28 16:10:02', 'Guillermo Avendaño'),
(16, 'New Payment Mode Added [ID: 2, Name:Efectivo]', '2017-10-28 16:10:22', 'Guillermo Avendaño'),
(17, 'New Payment Mode Added [ID: 3, Name:Transferencia bancaria]', '2017-10-28 16:10:43', 'Guillermo Avendaño'),
(18, 'New Payment Mode Added [ID: 4, Name:Cheque]', '2017-10-28 16:10:50', 'Guillermo Avendaño'),
(19, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:50:22', NULL),
(20, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:50:46', NULL),
(21, 'Failed Login Attempt [Email:ojasso@gmail.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:51:33', NULL),
(22, 'Failed Login Attempt [Email:admin@publicarte.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:00:05', NULL),
(23, 'Failed Login Attempt [Email:jperez@publicarte.com, Is Staff Member:No, IP:187.161.235.208]', '2017-10-29 01:01:00', NULL);

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
(1, 'Secretaria de Desarrollo Social', 'SDS097845ASD', '834 123 4567', 0, 'Victoria', '87000', 'Tamaulipas', 'Parque Bicentenario', '', '2017-10-28 15:59:12', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, '', '', '', 0, 1);

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
(6, 6, 1);

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
  `direction` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`) VALUES
(1, 1, 1, 'Luis ', 'Castro', 'lcastro@gob.mx', '', 'Director', '2017-10-28 16:01:29', '$2a$08$fOkkqaY7d02TWB4yFc08NuMU0khlOyyr7hwSe1DrHNKh0R/tN6rvG', NULL, NULL, NULL, NULL, NULL, 1, NULL, '');

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
(1, '$', 'USD', 0),
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
(1, 'Gobierno del estado'),
(2, 'Iniciativa privada'),
(3, 'Publico en general');

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
(1, 'Imprenta', '', '', '', '', '', 0, '', 0),
(2, 'Offset', '', '', '', '', '', 0, '', 0),
(3, 'Serigrafia', '', '', '', '', '', 0, '', 0);

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
(55, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0);

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
(2, 'Efectivo', '', 0, 0, 0, 0, 1),
(3, 'Transferencia bancaria', '', 0, 0, 0, 0, 1),
(4, 'Cheque', '', 0, 0, 0, 0, 1);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `item_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(1, 'dateformat', 'd-m-Y|%d-%m-%Y', 1),
(2, 'companyname', 'PUBLICARTE', 1),
(3, 'services', '1', 1),
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
(17, 'main_domain', 'Calle Rafael Balandrano No 100 Fracc Villa de Aguayo C.P. 87000', 1),
(18, 'allow_registration', '0', 1),
(19, 'knowledge_base_without_registration', '1', 1),
(20, 'email_signature', '', 1),
(21, 'default_staff_role', '1', 1),
(22, 'newsfeed_maximum_files_upload', '10', 1),
(23, 'newsfeed_maximum_file_size', '5', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'INV-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'currency_placement', 'before', 1),
(29, 'invoice_company_name', 'PUBLICARTE', 1),
(30, 'invoice_company_address', 'Rafael Balandrano No. 100 Fracc. Valle de Aguayo', 1),
(31, 'invoice_company_city', 'Ciudad Victoria', 1),
(32, 'invoice_company_country_code', 'Mexico', 1),
(33, 'invoice_company_postal_code', '87000', 1),
(34, 'invoice_company_phonenumber', '123-4567', 1),
(35, 'view_invoice_only_logged_in', '0', 1),
(36, 'invoice_number_format', '1', 1),
(37, 'next_invoice_number', '1', 0),
(38, 'cron_send_invoice_overdue_reminder', '1', 1),
(39, 'active_language', 'spanish', 1),
(40, 'invoice_number_decrement_on_delete', '1', 1),
(41, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(42, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(43, 'expenses_auto_operations_hour', '21', 1),
(44, 'survey_send_emails_per_cron_run', '100', 1),
(45, 'delete_only_on_last_invoice', '1', 1),
(46, 'delete_only_on_last_estimate', '1', 1),
(47, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(48, 'allow_payment_amount_to_be_modified', '1', 1),
(49, 'send_renewed_invoice_from_recurring_to_email', '1', 1),
(50, 'rtl_support_client', '0', 1),
(51, 'limit_top_search_bar_results_to', '10', 1),
(52, 'estimate_prefix', 'EST-', 1),
(53, 'next_estimate_number', '1', 0),
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
(71, 'favicon', 'favicon.ico', 1),
(72, 'auto_backup_enabled', '0', 1),
(73, 'invoice_due_after', '30', 1),
(74, 'google_api_key', '', 1),
(75, 'google_calendar_main_calendar', '', 1),
(76, 'default_tax', 'a:0:{}', 1),
(77, 'show_invoices_on_calendar', '1', 1),
(78, 'show_estimates_on_calendar', '1', 1),
(79, 'show_contracts_on_calendar', '1', 1),
(80, 'show_tasks_on_calendar', '1', 1),
(81, 'show_customer_reminders_on_calendar', '1', 1),
(82, 'auto_backup_every', '7', 1),
(83, 'last_auto_backup', '', 1),
(84, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(85, 'show_lead_reminders_on_calendar', '1', 1),
(86, 'aside_menu_active', '{\"aside_menu_active\":[{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"id\":\"child-proposals\",\"name\":\"Cotizaciones\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\"},{\"id\":\"child-estimates\",\"name\":\"Ordenes de trabajo\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"}]}]}', 1),
(87, 'estimate_expiry_reminder_enabled', '1', 1),
(88, 'send_estimate_expiry_reminder_before', '4', 1),
(89, 'leads_default_source', '', 1),
(90, 'leads_default_status', '', 1),
(91, 'proposal_expiry_reminder_enabled', '1', 1),
(92, 'send_proposal_expiry_reminder_before', '4', 1),
(93, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(94, 'pdf_logo_width', '150', 1),
(95, 'aside_menu_inactive', '{\"aside_menu_inactive\":{\"0\":{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},\"2\":{\"id\":\"child-payments\",\"name\":\"payments {ventas}\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\"},\"3\":{\"id\":\"child-invoices\",\"name\":\"invoices {ventas}\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\"},\"4\":{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-heartbeat\",\"id\":\"expenses\"},\"5\":{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},\"6\":{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},\"7\":{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},\"8\":{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},\"9\":{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"}]},\"10\":{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]},\"11\":{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]}}}', 1),
(96, 'setup_menu_active', '{\"setup_menu_active\":[{\"name\":\"als_staff\",\"url\":\"staff\",\"permission\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"name\":\"clients\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"groups\"}]},{\"name\":\"support\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"name\":\"acs_departments\",\"url\":\"departments\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"departments\"},{\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predefined_replies\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"predefined-replies\"},{\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"services\"},{\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"name\":\"acs_leads\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"permission\":\"\",\"icon\":\"\",\"id\":\"sources\"},{\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"statuses\"},{\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"permission\":\"\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"url\":\"leads\\/forms\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"web-to-lead\"}]},{\"name\":\"acs_finance\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"taxes\"},{\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"permission\":\"\",\"icon\":\"\",\"id\":\"currencies\"},{\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"permission\":\"\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"permission\":\"\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"name\":\"acs_contracts\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"permission\":\"\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"name\":\"acs_email_templates\",\"url\":\"emails\",\"permission\":\"email_templates\",\"icon\":\"\",\"id\":\"email-templates\"},{\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"name\":\"acs_roles\",\"url\":\"roles\",\"permission\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"name\":\"menu_builder\",\"url\":\"#\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"permission\":\"\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"url\":\"utilities\\/theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"theme-style\"},{\"name\":\"acs_settings\",\"url\":\"settings\",\"permission\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}', 1),
(97, 'access_tickets_to_none_staff_members', '0', 1),
(98, 'setup_menu_inactive', '{\"setup_menu_inactive\":[]}', 1),
(99, 'customer_default_country', '', 1),
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
(110, 'receive_notification_on_new_ticket', '1', 1),
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
(126, 'calendar_first_day', '0', 1),
(127, 'recaptcha_secret_key', '', 1),
(128, 'show_help_on_setup_menu', '1', 1),
(129, 'show_proposals_on_calendar', '1', 1),
(130, 'smtp_encryption', '', 1),
(131, 'recaptcha_site_key', '', 1),
(132, 'smtp_username', '', 1),
(133, 'auto_stop_tasks_timers_on_new_timer', '0', 1),
(134, 'notification_when_customer_pay_invoice', '1', 1),
(135, 'theme_style', '[]', 1),
(136, 'calendar_invoice_color', '#FF6F00', 1),
(137, 'calendar_estimate_color', '#FF6F00', 1),
(138, 'calendar_proposal_color', '#84c529', 1),
(139, 'new_task_auto_assign_current_member', '1', 1),
(140, 'calendar_reminder_color', '#03A9F4', 1),
(141, 'calendar_contract_color', '#B72974', 1),
(142, 'calendar_project_color', '#B72974', 1),
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
(156, 'remove_tax_name_from_item_table', '0', 1),
(157, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(158, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(159, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(160, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(161, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(162, 'auto_check_for_new_notifications', '0', 1),
(163, 'swap_pdf_info', '0', 1),
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
(174, 'proposal_number_prefix', 'PRO-', 1),
(175, 'number_padding_prefixes', '6', 1),
(176, 'show_page_number_on_pdf', '0', 1),
(177, 'calendar_events_limit', '4', 1),
(178, 'show_setup_menu_item_only_on_hover', '0', 1),
(179, 'company_requires_vat_number_field', '1', 1),
(180, 'company_is_required', '1', 1),
(181, 'allow_contact_to_delete_files', '0', 1),
(182, 'company_vat', '', 1),
(183, 'di', '1509221931', 0),
(184, 'invoice_auto_operations_hour', '21', 1),
(185, 'use_minified_files', '1', 1),
(186, 'only_own_files_contacts', '0', 1),
(187, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(188, 'estimate_due_after', '7', 1),
(189, 'delete_backups_older_then', '0', 1),
(190, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(191, 'contract_expiry_reminder_enabled', '1', 1),
(192, 'time_format', '12', 1),
(193, 'delete_activity_log_older_then', '2', 1),
(194, 'disable_language', '1', 1),
(195, 'company_state', 'Tamaulipas', 1),
(196, 'email_header', '<!doctype html>\n                            <html>\n                            <head>\n                              <meta name=\"viewport\" content=\"width=device-width\" />\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n                              <style>\n                                body {\n                                 background-color: #f6f6f6;\n                                 font-family: sans-serif;\n                                 -webkit-font-smoothing: antialiased;\n                                 font-size: 14px;\n                                 line-height: 1.4;\n                                 margin: 0;\n                                 padding: 0;\n                                 -ms-text-size-adjust: 100%;\n                                 -webkit-text-size-adjust: 100%;\n                               }\n                               table {\n                                 border-collapse: separate;\n                                 mso-table-lspace: 0pt;\n                                 mso-table-rspace: 0pt;\n                                 width: 100%;\n                               }\n                               table td {\n                                 font-family: sans-serif;\n                                 font-size: 14px;\n                                 vertical-align: top;\n                               }\n                                   /* -------------------------------------\n                                     BODY & CONTAINER\n                                     ------------------------------------- */\n                                     .body {\n                                       background-color: #f6f6f6;\n                                       width: 100%;\n                                     }\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\n\n                                     .container {\n                                       display: block;\n                                       margin: 0 auto !important;\n                                       /* makes it centered */\n                                       max-width: 680px;\n                                       padding: 10px;\n                                       width: 680px;\n                                     }\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\n\n                                     .content {\n                                       box-sizing: border-box;\n                                       display: block;\n                                       margin: 0 auto;\n                                       max-width: 680px;\n                                       padding: 10px;\n                                     }\n                                   /* -------------------------------------\n                                     HEADER, FOOTER, MAIN\n                                     ------------------------------------- */\n\n                                     .main {\n                                       background: #fff;\n                                       border-radius: 3px;\n                                       width: 100%;\n                                     }\n                                     .wrapper {\n                                       box-sizing: border-box;\n                                       padding: 20px;\n                                     }\n                                     .footer {\n                                       clear: both;\n                                       padding-top: 10px;\n                                       text-align: center;\n                                       width: 100%;\n                                     }\n                                     .footer td,\n                                     .footer p,\n                                     .footer span,\n                                     .footer a {\n                                       color: #999999;\n                                       font-size: 12px;\n                                       text-align: center;\n                                     }\n                                     hr {\n                                       border: 0;\n                                       border-bottom: 1px solid #f6f6f6;\n                                       margin: 20px 0;\n                                     }\n                                   /* -------------------------------------\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\n                                     ------------------------------------- */\n\n                                     @media only screen and (max-width: 620px) {\n                                       table[class=body] .content {\n                                         padding: 0 !important;\n                                       }\n                                       table[class=body] .container {\n                                         padding: 0 !important;\n                                         width: 100% !important;\n                                       }\n                                       table[class=body] .main {\n                                         border-left-width: 0 !important;\n                                         border-radius: 0 !important;\n                                         border-right-width: 0 !important;\n                                       }\n                                     }\n                                   </style>\n                                 </head>\n                                 <body class=\"\">\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\n                                    <tr>\n                                     <td>&nbsp;</td>\n                                     <td class=\"container\">\n                                      <div class=\"content\">\n                                        <!-- START CENTERED WHITE CONTAINER -->\n                                        <table class=\"main\">\n                                          <!-- START MAIN CONTENT AREA -->\n                                          <tr>\n                                           <td class=\"wrapper\">\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                                              <tr>\n                                               <td>', 1),
(197, 'email_footer', '</td>\n                             </tr>\n                           </table>\n                         </td>\n                       </tr>\n                       <!-- END MAIN CONTENT AREA -->\n                     </table>\n                     <!-- START FOOTER -->\n                     <div class=\"footer\">\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                        <tr>\n                          <td class=\"content-block\">\n                            <span>{companyname}</span>\n                          </td>\n                        </tr>\n                      </table>\n                    </div>\n                    <!-- END FOOTER -->\n                    <!-- END CENTERED WHITE CONTAINER -->\n                  </div>\n                </td>\n                <td>&nbsp;</td>\n              </tr>\n            </table>\n            </body>\n            </html>', 1),
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
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(1, 'Employee');

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
('06eha810dt2t5ss7obeptffcsud7f4u0', '216.244.66.243', 1510834809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303833343830393b),
('13ion64gbdor6tqfgve8q8k4ntt0v993', '94.199.151.22', 1512372411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323337323431313b),
('18s958k30sjqfhnmjhs99b1cerlcgtb7', '89.234.68.109', 1511810396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313831303339363b),
('1gpsgl9i2vbpk3lg163hfnsm4tjq49fq', '51.255.71.123', 1510162606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303136323630363b),
('21afce22e8g2544tuktup4b9u42j56kg', '5.9.156.74', 1509623883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632333838333b),
('2crbb260604hlqet4asejc2lgr5li50c', '54.226.34.209', 1512659044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323635393034343b),
('2hh3p8pjd5ti0r2gsinujd85hgdu17a2', '138.201.59.34', 1512438361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323433383336313b),
('34ibh3qf46dnsq17mgpdv4ludguft6fc', '216.244.66.194', 1512833084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323833333038333b),
('3ld4efobqqfsthb3ukm6180mqjrn6ome', '187.161.235.149', 1509246595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393234363539343b),
('40u8210tsfcplh4pcbook1db2sa724hr', '216.244.66.194', 1513089546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333038393534363b),
('4f3idoh5172osji3npgpvlmtjfoggp7s', '138.201.30.66', 1509284327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393238343332373b),
('55q5inn0qh32kl8e673voir13dhf5ohp', '80.90.91.59', 1510241984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303234313938343b),
('568ghh1gsue3h7ende59d625qr9gsqpc', '104.131.171.154', 1510055955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303035353935353b),
('5jpr3p0mh988aqen65m0o55qaauoagtn', '216.244.66.194', 1511924949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313932343934393b),
('5mqmvoksoleovhh3dqjvm33rp3mi8ctn', '89.234.68.81', 1511810377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313831303337373b),
('5rj4mkh8m7g83bp9ievqcc2ai40d9fp2', '164.132.91.1', 1512194378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323139343337383b),
('5vr3gch9pvkapj7v83gg679j86onu165', '164.132.161.71', 1510882831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303838323833313b),
('6417hj8svj0fmettja1rdei6uc9gpbju', '180.76.15.8', 1509917357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393931373335373b),
('71q1bdilbdkd094hdtnja97v7aulp5bl', '46.229.166.195', 1511798728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313739383732383b),
('7i3pdnnqdkc0q92t11iiuqvgnmbv87n0', '164.132.91.1', 1510870432, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303837303433323b),
('7m4o0m9221uoavt2lplmprcsklmg5ouv', '5.9.156.74', 1509623904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632333930343b),
('7qqj2umfmh6cc3vk7aus1j4roq3kh5pq', '38.100.21.65', 1510875763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303837353736333b),
('7srpeh1v9v4tu6p1eb3nqkfjt2ejgpgj', '68.180.230.245', 1511484052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313438343035313b),
('7vehh7iob94q43lpfosi4ab93ivi2n68', '69.58.178.58', 1510187476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303138373437363b),
('84abfnulkfen51ja0u5paj64dpkblpbb', '27.73.116.101', 1510760134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303736303133343b),
('8b8khbouh0jg12ang79cbkru1579orln', '27.72.98.234', 1511141854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313134313835343b),
('8pjsnbr9l6r3osanrrurkjopjgefpu8q', '51.255.65.47', 1510150589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303135303538393b),
('8q0bppu9664h2qikps76fqpv12lcap5n', '34.242.121.96', 1513038211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333033383231313b),
('9mka9bjhci0or81amtvpfdlfmvntt8h1', '104.155.76.8', 1512488680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323438383638303b),
('9umquajesc0nvlbgegcpc1o3nli6hkee', '104.132.20.67', 1511080824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313038303832343b),
('a2i92e3nkfe88mj1p61mheoihj2orve5', '148.245.119.253', 1509396484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393339363432393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('a79um93vsdlfdi26s5r912oho0clv4e9', '66.249.64.209', 1510993530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303939333533303b),
('acg6clks77m71mek1qcij0mboodio5m3', '216.244.66.194', 1512862400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323836323430303b),
('aohrd4bikrcnj4rjlpvcuanqtddkdrec', '185.26.92.74', 1511208676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313230383637363b),
('aomk6dc504rk3mfe8u5dobnlof9js8qk', '187.161.235.208', 1509225054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393232353035343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('b0qai6qq3vq6hlndmi7nt9qmpfkcrl9c', '216.244.66.194', 1512580103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323538303130333b),
('b2q75eh1i19bqm2tc9ijko827s3d7llo', '187.161.235.208', 1509225311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393232353035343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b6d6573736167652d737563636573737c733a32393a22436f6e6669677572616369c3b36e2064652041637475616c697a616461223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('bmdbs267bmkucpiu80kq6d0iodfskcq3', '138.201.30.66', 1511217974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313231373937343b),
('c2h13ns5rp3urbvi4m7ilrf5nrs2ci9l', '95.180.184.168', 1510426204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303432363230343b),
('cpcrk27dogg6pmv81bfkvo6jk1obqvst', '104.236.43.75', 1512540963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323534303936323b),
('cpjah9uthuf9u7d95nsfm9c1dohlieov', '187.161.235.149', 1509295354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393239353335343b),
('d34u651k997b7e1fcfrbgn1a2fo7hrpb', '81.209.177.189', 1509805471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393830353437313b),
('dn3rl383gnsqgak30hn2uhcglcjv6qcn', '216.244.66.194', 1511728088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313732383038383b),
('e9mll9024nl98ckt4moakgtd7gibvb73', '148.245.119.253', 1513097879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039373837393b),
('ef0j7p35vm3i8nr40gatn1rjv8872fea', '66.249.79.137', 1509651960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393635313936303b),
('en8l1nile97h43ksnejnkbirlgm9rgfu', '164.132.91.1', 1511582175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313538323137353b),
('f2g3g4a8ge3lbqjg48oc83gpnm9lbehc', '164.132.91.1', 1509824219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393832343231393b),
('gcsp19lu84crcl0n6u17kqojebc1p3md', '77.88.47.97', 1509355265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393335353236353b),
('geu3f1prucbtup3f7nvc5e18cr5g8l88', '187.161.235.208', 1509223966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393232333936363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('gpmlqtqpktt4raiekh44j3j9ak3gb183', '148.245.119.253', 1509378024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393337383032343b7265645f75726c7c733a33383a22687474703a2f2f3133392e35392e3135372e3136352f7075626c6963617274652f61646d696e223b),
('hfbq1g3gfs8tfu24q8tf0am3vm3mm7ia', '216.244.66.194', 1513096550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333039363535303b),
('hif14jt6p3qjfa9dc1ppuiesb9aqhop2', '216.244.66.194', 1511128306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313132383330363b),
('htvgr340tll650bfcvairjnu143fc95h', '180.76.15.149', 1512297392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323239373339323b),
('i640ei3b8v4m4i83hug6gfqq747e6s0b', '136.243.89.157', 1511862996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313836323939353b),
('ig0q9tfuopblf3qplvolu5208fh988jh', '68.180.230.245', 1509668929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393636383932393b),
('iha8e6m3ii0b3e7jblhs72n00bq4fr4c', '77.88.47.97', 1509277590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393237373538393b),
('ihqvuj5c9r3tqj3vamt119i7dlhop5gv', '94.199.151.22', 1510353548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303335333534383b),
('iluekpv7vuhfbgv1h4ghnbsjum5uohej', '216.244.66.194', 1512847737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323834373733373b),
('j7967p0mo9mph3cplc76mkolec5nm3kv', '187.161.235.208', 1509260461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393236303430343b6d6573736167652d64616e6765727c733a33303a227573756172696f206f20636f6e7472617365c3b16120696e76616c69646f223b5f5f63695f766172737c613a313a7b733a31343a226d6573736167652d64616e676572223b733a333a226f6c64223b7d),
('jd3nnc54pdon539s2iccerh3hqgg3km1', '216.244.66.194', 1512840370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323834303337303b),
('k29th8j26nopqbs3s05aunmcr4p2r4bs', '187.161.235.208', 1509224352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393232343335323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('kj4svv5qjvlcdl2336jtr4n6pq4ip6lm', '138.201.30.66', 1513045414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531333034353431323b),
('l5r8in1udm3pcj8pai7c0bhksqk01kdd', '180.76.15.146', 1511960070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313936303037303b),
('m6m2hahgpfhc5seld9fmoesolv00tv7o', '187.161.235.208', 1509260404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393236303430343b6d6573736167652d64616e6765727c733a33303a227573756172696f206f20636f6e7472617365c3b16120696e76616c69646f223b5f5f63695f766172737c613a313a7b733a31343a226d6573736167652d64616e676572223b733a333a226f6c64223b7d),
('mca5k6u8uki53e47gluim30e9s3fgk6m', '52.36.125.174', 1509621833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632313833303b),
('mcfaqts3i8uc87u26oo2vdq6rbvfpss5', '51.255.65.49', 1509505433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393530353433333b),
('ndf2att9bmq9ggbt5369a6uju3qphvhc', '216.244.66.194', 1511531644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313533313634343b),
('o73t4b1du4mvpfl7geh0sc9p0n0utepl', '216.244.66.194', 1512320035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323332303033353b),
('o7up0v6gkkoocf457ns711ju9i58uekq', '187.161.235.208', 1509224716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393232343731363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('oge9o887ek0f03loafpc9qll18gfs6vv', '176.9.139.229', 1511603315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313630333331353b),
('ohi8khpnc8m4ue388flkvm52u217t04e', '68.180.230.245', 1511319815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313331393831353b),
('op69n9c1o7aj2bcr66oq5ef5ibgc3pq7', '138.201.59.34', 1509919409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393931393430393b),
('pe6okpgj4ogkm0jnuvmktoii6g01u81c', '68.180.230.245', 1512914012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323931343031313b),
('poff2krqmer62oj6f4166fbcnlpc9tup', '148.245.119.253', 1509378866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393337383737353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('psdegfe85dc1kgo6056dasnrhoqnq9kq', '66.249.64.207', 1509613855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393631333835353b),
('q0pfkc37ilhkt6qha04smgb6g8kekqpc', '157.55.39.109', 1512050585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323035303538353b),
('q6on18eitdvf7rdr7i8f66mj0ahg1bpn', '77.88.47.97', 1509620312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632303331323b),
('q89u45oh3ec072m6drqmuj523hhfjvu6', '104.236.211.236', 1511628922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313632383932323b),
('qhnhjo2ehg0i3cmnva63ak919pcdiq15', '68.180.230.245', 1512672585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323637323538353b),
('r0sf0c1987tk32o8ti8llgfaissq5hnc', '164.132.91.1', 1512867429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323836373432393b),
('r3tfj6rpe7ujc7vjm56sotadvh0ht94k', '216.244.66.194', 1512855151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323835353135313b),
('rc0i66eadql20sj0379aktqt5bl0q0ih', '27.34.51.116', 1509948501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393934383530313b),
('rd9c8ujt51tkuj2rp9aogjnqsg44cip5', '187.161.235.208', 1509405237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393430353231373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b),
('s1qsl89e6klg5ljbfucboqh6espijhad', '164.132.91.1', 1510098259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303039383235393b),
('s417r0q7rr5o97u26274389lg32nsmq0', '180.76.15.157', 1512728047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323732383034373b),
('s6pk4o6mgmt1vre4tpbuka0oc57f8ia8', '77.88.47.97', 1510076592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303037363539323b),
('s9ijakq6oh5cggltua1av3lgp3eo2mkm', '187.161.235.208', 1509259805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393235393830343b),
('t3fk8i6dp1eqmj8li0osujlfjqkc5qb1', '77.88.47.97', 1509836252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393833363235323b),
('tbmhvl25v8j7b4jkpfdggod293non2u3', '52.36.125.174', 1509621688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393632313638353b),
('tbsdvuiea276rvlfi3soml2iqhfoasqs', '180.76.15.25', 1509563747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393536333734373b),
('u126nh55tkbfj418ok6u9etuime16n99', '69.58.178.58', 1512806456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323830363435363b),
('uhc7god9f1vgum6j0tj58vrpqfj2lies', '216.244.66.194', 1511330681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531313333303638313b),
('ur509n46d3iop99p8qjsdok99n7qbr0l', '194.58.119.70', 1512153301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323135333330313b),
('utihiea6aiit1dj066haeo8bjulqme0u', '138.201.59.34', 1510580140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531303538303134303b),
('v06otd0t8c1tipcf13polcsddqn24491', '180.76.15.140', 1512575292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531323537353239323b);

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
(1, 'admin@publicarte.com', 'Guillermo', 'Avendaño', '', '', '', '', '$2a$08$rKpw1Sec7Gma1aJVdpwFiOMf9Xr1KBV1uiahl1yMYI4Osd4StKQnW', '2017-10-28 20:18:51', NULL, '187.161.235.208', '2017-10-30 17:13:55', NULL, NULL, NULL, 1, 0, 1, 'spanish', '', NULL, 0, '0.00', ''),
(2, 'jperez@publicarte.com', 'Juan', 'Perez', '', '', '', '', '$2a$08$afRrS4kh2oUvyUk9zs1oJehAKwRgOjnKjbtOM2dk4.uuwHVAsW78W', '2017-10-28 15:55:03', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '', '', 'juan-perez', 0, '0.00', '');

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

--
-- Volcado de datos para la tabla `tblstaffpermissions`
--

INSERT INTO `tblstaffpermissions` (`staffpermid`, `permissionid`, `can_view`, `can_view_own`, `can_edit`, `can_create`, `can_delete`, `staffid`) VALUES
(1, 16, 0, 0, 0, 0, 0, 2),
(2, 1, 0, 0, 0, 0, 0, 2),
(3, 8, 0, 0, 0, 0, 0, 2),
(4, 9, 0, 0, 0, 0, 0, 2),
(5, 11, 1, 0, 1, 1, 0, 2),
(6, 15, 0, 0, 0, 0, 0, 2),
(7, 14, 0, 0, 0, 0, 0, 2),
(8, 18, 0, 0, 0, 0, 0, 2),
(9, 19, 0, 0, 0, 0, 0, 2),
(10, 12, 0, 0, 0, 0, 0, 2),
(11, 17, 0, 0, 0, 0, 0, 2),
(12, 5, 0, 0, 0, 0, 0, 2),
(13, 13, 1, 0, 1, 1, 0, 2),
(14, 3, 0, 0, 0, 0, 0, 2),
(15, 10, 0, 0, 0, 0, 0, 2),
(16, 4, 0, 0, 0, 0, 0, 2),
(17, 7, 0, 0, 0, 0, 0, 2),
(18, 6, 0, 0, 0, 0, 0, 2),
(19, 2, 0, 0, 0, 0, 0, 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblcommentlikes`
--
ALTER TABLE `tblcommentlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcontactpermissions`
--
ALTER TABLE `tblcontactpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcustomersgroups`
--
ALTER TABLE `tblcustomersgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblinvoicepaymentsmodes`
--
ALTER TABLE `tblinvoicepaymentsmodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblitemsrelated`
--
ALTER TABLE `tblitemsrelated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblitemstax`
--
ALTER TABLE `tblitemstax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblitems_in`
--
ALTER TABLE `tblitems_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblrolepermissions`
--
ALTER TABLE `tblrolepermissions`
  MODIFY `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblsalesactivity`
--
ALTER TABLE `tblsalesactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblstaffdepartments`
--
ALTER TABLE `tblstaffdepartments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblstaffpermissions`
--
ALTER TABLE `tblstaffpermissions`
  MODIFY `staffpermid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
