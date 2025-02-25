-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2025 a las 20:26:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vota`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$xq53XAflXctgE7LdvV1HlucsiPW54otpY.fhDBG101DK5HDUNMhsm', 'Depto de', 'Sistemas', 'Escudo ITO.svg', '2018-04-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'Naslyn Tatiana', 'Gómez Henao', 'Naslyn Gómez 11A.jfif', 'Animal: Snoopy\r\nColor: Blanco\r\nGrado y Grupo: 11°A'),
(19, 8, 'Ximena', 'Rúa', 'Ximena Rua.jfif', '11°A'),
(20, 8, 'Cristian', 'Correa', 'Cristian Correa grado 11-b.jfif', '11°B'),
(26, 9, 'Angelo', 'Velez', 'Angello Vélez 11A.jfif', '11°A'),
(29, 9, 'Daniel Alejandro', 'Quevedo Garcia', 'Daniel Quevedo 11A.jfif', '11°A'),
(30, 11, 'Yan Carlos', 'Rico García', '', '11°B'),
(31, 8, 'Voto en', 'Blanco', '', ''),
(32, 9, 'Voto en', 'Blanco', '', ''),
(33, 11, 'Voto en', 'Blanco', '', ''),
(34, 9, 'Yaritza', 'Peña López', '', 'Grado: 10°A'),
(35, 9, 'Alisson', 'Florez Cantello', '', 'Grado: 11°B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Personero', 1, 1),
(9, 'Contralor', 1, 2),
(11, 'Lider Deportivo', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'iotBayTmHA9hdFW', '$2y$10$KLII/qsU.4KC8oHcXFUdqekohB.GvnZ7UYrDDlKe3Y4mxrfUb8Rcu', 'Usuario de', 'Prueba', ''),
(4, 'kKlJyaVMihnErz5', '$2y$10$3JLEV4FAigLLnEWchjSD8OqkeW50KfPl77MkkA0sPzrXn9kJS5rhm', 'SAMUEL DAVID', 'RESTREPO GARCIA', ''),
(5, 'vY9ieBwszLPEAFW', '$2y$10$LfsXx8IEPL8OKrPKFvKv7uUSBudvPexzCqT4ZmodVa3Jxz41FFwXy', 'ITZEL ROSARIO', 'TORRES RIVERA', ''),
(6, 'Z5sEfmLYvpSITMH', '$2y$10$8Fz/Zj3yBNdgy8BiP0RJ3eSG2L8B/R.kVLMAiS0.SAsW3OipMk9Zi', 'JESUS DAVID', 'MARTINEZ MONTOYA', ''),
(7, 'Yh2BGM97RkOEHCN', '$2y$10$/KnaKU8dBWCISJavM2qSP.1sBH741zhQDe1y.uiALu3XqEKOl.9AK', 'DYLAN ZAID', 'CASTILLO LEON', ''),
(8, 'IFVWEoSs5RJzLU8', '$2y$10$WFU7jxW4jeapQfJfSf3lOuxJ8m9zwDyWZL9XKewhrN4gZzgAm4/Nm', 'ELVA LUCIA', 'IGLESIAS MARTINEZ', ''),
(9, 'JtEZ75zxhIfM8GH', '$2y$10$SI7lQuZ3b4Sg/THGMGLMcObAvaWKKy18AuvqOXcGlN53NyLTzkA/.', 'LIAM ANDRES', 'OLARTE FONCESCA', ''),
(10, 'ykxi4slmTKwIh28', '$2y$10$4wmO88QKgp/Q5Q0Tge.W.Obd2VEDF6j.kt8F/GiZ3VyZ7WesnrjHW', 'MOISES ANDRES', 'OROZCO RODRIGUEZ', ''),
(11, 'utTwpmgran56kPX', '$2y$10$9YXjDniNkI7x6ryS6G5SDOlHXZeuV3wyQCtG6SGw2DncEXHMeDxA.', 'IGNACIO RAFAEL', 'GAUNA ISEA', ''),
(12, 'KbCTrfaod9jheZI', '$2y$10$2fedtc8o0WJ3/N8RMn9/2ONz0v4DaeY4OHwdy5Wm/t4OeejJDwqyq', 'LUISA FERNANDA', 'SERJE VILLADIEGO', ''),
(13, '12B9yAGP4u3t8rn', '$2y$10$hAKzhzTkk3PvyoyLFzQdUufl6lfKMsFq1HnhZZZmfjSeGu1RYXlN2', 'JUNIOR RAFAEL', 'MARTINEZ ROBERTIZ', ''),
(14, '8AFeXQpwtim9SRf', '$2y$10$X88w.ifnqBDksVyxKQJRZOA8GZD4bXuktibgRTW3NJHnTMbyp7A92', 'LIAM ANTONIO', 'PEREZ VILLADIEGO', ''),
(15, 'kcelF8dPZ2LJwCD', '$2y$10$dLjmSBM9RVdRGj8oNLJiSuz08X7Xj/dgq7lRltWR/o7Yi8Ou3weQ.', 'AMPARO ISABELLA', 'MARTINEZ ROBERTIZ', ''),
(16, 'A5iJM4Ck1SW7vqf', '$2y$10$52PcnoOXvVBJzyOyhBGYSONk73lX.6WLpp9IGjaUAG.5buF.WQ0M.', 'ELISA', 'GIRALDO VASQUEZ', ''),
(18, 'EsXfGl3yCOzenqW', '$2y$10$cOPZ5UjeVm35afv5KB/3nuxKB3Ps8fIkAB3rVp4mIp/kiH/UB/cQC', 'ALAN', 'MONSALVE BARRIENTOS', ''),
(19, 'hk5XwiEBDTS9n3Z', '$2y$10$fVcSWDtqcCNPfS8vyyskDe/Ri83b7TbLfrBi68WoeasKSQqtDqIR.', 'SAMUEL', 'PAREJA MOSQUERA', ''),
(20, 'GYNxFzpMk2B9acS', '$2y$10$kfb4ZWkQp8hhQeMK.wEBxeVYSpwwRJ85O.w1r8O2UPh7yr3XvojZe', 'MAYLIN SOFIA', 'GANVIN TOVAR', ''),
(21, 'MgdKsA8W5fIoEQk', '$2y$10$z4U58RiDjV49.uo7F5No5eo1yuioffHO/gnan5odRi1EbqBQHEMEa', 'SALOME', 'PEREZ REYES', ''),
(22, 'GeHJLxtdDlpF539', '$2y$10$uwgBU47/CrL0WoEZEMG6/Obi1kmwwVQ55Nf/e1bpEZGxxv7n0Gk4y', 'MATIAS', 'VALENCIA SOLARTE', ''),
(23, 'e1HsmftDJQrgl3B', '$2y$10$k16CZ483dYsqou6YlH5.zuPiG.8FC.R5IpBy1TLcveoo0fMBhlUO2', 'DYLAN ISAAC', 'CASTRO ROJAS', ''),
(24, 'tZEplTGdBmqLkVe', '$2y$10$hl9bh/t66wUbjW7NNqc0j.3wM0iVpr7qJIfD6ado.jXkPTpQGPnBO', 'SANTIAGO MATHIAS', 'GALEANO AGUERO', ''),
(25, 'VxOrvGmcnaANf5h', '$2y$10$jXRnI0Sk.7RBNK5trccR9uxb6vAnVW0XJNSMjrtahiz05dPW.Fe1m', 'SCHEHERIER CHARLOTTE', 'LOPEZ', ''),
(26, 'CDf4VJo12rm6AXR', '$2y$10$FqXlN/ZwD8di6TDNbOpOS.oFkKDTapbTiDNbBVuuhkAwKXwQLATH2', 'MATIAS', 'LOPEZ BEDOYA', ''),
(27, '1mOC5yxnYPqWl6G', '$2y$10$ozei5Aifgfzz0fK64HRPOekp6jpzoEHr9NO9H6qiFVrVnqeshr.hq', 'JOSE DANIEL', 'ULACIO LEON', ''),
(28, '7I64bxwv3qZd9Vf', '$2y$10$SZIfzVUEApUUdb7kVtYtV.z10x6BogFVr2PyzuIjXygW/myVC0QR2', 'VALESCA DE LOS ANGELES', 'PEREZ RAMOS', ''),
(29, 'ogwB4Y1nV9GsyZq', '$2y$10$GRK8yNHtJ6nv641BmdTrA.QpSYwHL9YY9kZGa5dTkDKyqe5XwLlc.', 'ISAAC', 'ARBOLEDA LEZCANO', ''),
(30, 'q6LBmgDxoJXzk3P', '$2y$10$xzzOfEwBTn4se4ZQfav1ZeQzxDa7Z2ZnzhjjZPSOuPL2.rHjCQLAK', 'TABATHA', 'CARDENAS ORTIZ', ''),
(31, 'XsdaVMpYU9vjqTE', '$2y$10$dIx8.cTwaNRY1qx59UuWEOG.VT5YYYHZF7y0eGD8gInCVWBfxZony', 'ISABELLA', 'CAUSIL GALLEGO', ''),
(32, 'hvjL7nlGAobEQMr', '$2y$10$dAP5KxubvstOV73SgF8ESOuvdLOSBYRijjNuYM9Nb/bVbpQhUlUnS', 'KATERI DALIET', 'OSPINO AIZALES', ''),
(33, 'jzBpAZoVr5RGY1b', '$2y$10$cJ3tPaWcStqDAWRN6yd4duSybY5KlBkBHK4yMt4kUyTNOiQbTMnJS', 'ABRIHANNYS KATHERINE', 'HERNANDEZ VERA', ''),
(34, '4OZJF1TwrcYVNXm', '$2y$10$zqB4pq1j.8CnttoiKWmvT.cUq3zmN6p4VwYveh.tgA4v3cAblNxaa', 'NICOLAS JOAQUIN', 'MALTE CUASTUMAL', ''),
(35, 'UwqgWtGsfeRFoBZ', '$2y$10$pW/db1xvJzrydshUKPMZs.9Sgxz3aHM7Qu2qKURvL3BZg4DvRjUJC', 'RAFAELA', 'HENAO BOTERO', ''),
(36, 'dT2mypGvMEjcL7t', '$2y$10$6UCWBYklxgL4pqxBreO39.Zu/IAfFeAREycBttEM7HfrlyJGjt4uS', 'SHIANEL VALENTINA', 'PAZ JUSAYU', ''),
(37, 'PyZC3O7zXlktRKV', '$2y$10$QI1mWNo65SmYOrzPHAM0oeqyhmdG7Roff5qWZacmzzU9w0OCI5.sm', 'LIA SALOME', 'DOMINGUEZ NAVA', ''),
(38, 'BY6I1eZrncGhTtE', '$2y$10$R3gmxkIawGLfhNsXmB6zC.jhTjJpCBEVSjfvWIBWVNFXAgpJFgQoK', 'ANGELINA SINAIS', 'ROJAS TORRES', ''),
(39, 'LGKPvUalEYx9eXw', '$2y$10$9c/gA9JdPvFlHBuvmAmer.n3a1XSfTYeHK5hd3tYDcE0Og69r.6y6', 'AVERNE', 'HIGUITA RAMIREZ', ''),
(40, '9U2AbEkt3OosY5y', '$2y$10$xwBiNOO4Z19nWrXM5DrYI.QKIKwk13ahwm7ca4Kkr1Ts.jCwiZTme', 'ALAN TOBIAS', 'TORRES RODRIGUEZ', ''),
(41, 'P4W83f2isFvzUGD', '$2y$10$.13Wlkf9AVX6/XXaz/jbPeiU1z56VbD/66lg1K9133SamFLn1ZRjm', 'ISABELLA VICTORIA', 'PINEDA CARIPA', ''),
(42, 'blKiBXHvFTNC8DM', '$2y$10$Of4qDAegutUDXXXnOUDpw.FyiC8KirZjJE92YlQavjikc0lDCjxqy', 'ANGELO GABRIEL', 'CASILLAS OCHOA', ''),
(43, 'JmYgVverU3G4ftX', '$2y$10$YrvaGere4mWh3.T1nJhCAu6CuMGBxgHHY/o7fp4pJE7oERbfP2pYy', 'JONAIFHE MATHIAS', 'ACOSTA AZUAJE', ''),
(44, 'FEOSt5gPoWL4vr6', '$2y$10$NCqZB8szEQnAxhb2WUouAugo8ndh/XtNY7MVBxDXkodHgaPFSDQ7i', 'JUNAIKER FRANCISCO', 'PEREIRA MADURO', ''),
(45, 'pbKuXdvJAm42fUo', '$2y$10$ywqvvf3NTf5gwjBpSjIM3u0Ehnnd2i9mgy6hK39DZXkUnUmzoX6G2', 'ASHLY NAILETH', 'ORTEGA GONZALEZ', ''),
(46, 'VgKZIsadB28WNFk', '$2y$10$AXw6Xf4IdnDaaqFsY22ZgeFU01UWfBh0p7dZq.cmVIikxjdI9fZl.', 'LUISIANNYS CAROLINA', 'BARRETO SUBERO', ''),
(47, 'fD9XQRCBGm7jdwS', '$2y$10$Epq1/.lJdsWqFbKT4aG0XOrE/qpO4VVB11Laxia/NmM0eHe7lCqNW', 'SHAROL SOFIA', 'AGUILERA CASTELLANO', ''),
(48, 'rbi5SyJeARa1kFp', '$2y$10$/EjpPPxh99W2viCaNKlMkemo8XspQKoBycoPFHCfeG44K4Gptkpt.', 'IAN ANDRES', 'ROJAS CORDOBA', ''),
(49, 'keKhy7sOf96QL32', '$2y$10$mXEulskdnfzDLTua.qFhK./UqO8D/i2w5OjSsDL2lYIDnsx6bzLNy', 'ANTHONELLA VICTORIA', 'PAEZ CASTILLO', ''),
(50, 'QOK8byuhCe4mv7A', '$2y$10$TC3mZLq6TmfOJ9eVXE.XxunBFhlAQF6gA3akkLElxfuGA1aBZ48qS', 'JOHANGEL ENRRIQUE', 'MOLERO RINCON', ''),
(51, 'syeYT3RfHQcUzLg', '$2y$10$rBVu/wNTdHMD70DsUnSPb.C/uHpdh08QMOlME4cqmSSUItoL4B3BO', 'SALOME', 'VEGA FUENTES', ''),
(52, 'Cr1zyulHT7gIdXN', '$2y$10$rlNqhdPjWbwzO.Iox6xuNeqL13DQvY3LSyDGEtFvGDXHDbblCuEoC', 'LIA VICTORIA', 'LÓPEZ ORTIZ', ''),
(53, 'P9QmkDKiWS8ANqa', '$2y$10$59poTFRzwHTFqTvd4X.fBOu5VcJgb/m0Gji9TTXz7fyw4podeLbt6', 'ENMANUEL VIDAL', 'BARRIOS PEREZ', ''),
(54, '3YiyBwqjNKsxZr4', '$2y$10$HxabsU/8Nf6Efl44E5INyOrX.N/SbM1N5DfVqYFksDhXEUYZ7eO8m', 'WILLYANIS RICHELD', 'RANGEL MOLINA', ''),
(55, 'Myqxai23crGhomb', '$2y$10$vpe.iGBh0O..AxV7dXct6eB4wU8umOtL2AnsN8geqVqPhuc.TMVwm', 'REINA PAOLA', 'DAVILA CALDERON', ''),
(56, 'giMD3SIapwrEtl4', '$2y$10$.PnPXxnnQEdLjIX8NplR/OdF8kU0RYi5pSWRwc/r3B.YRM.A7k2pe', 'ANTONELLA DE LOS ANGELES', 'LEZAMA CARREÑO', ''),
(57, 'd31QTMEx2Wp5yrH', '$2y$10$ZtpbxPiK.zgARCZlfJWYVuB1COYbvUW3CwCnzazDaznuY3eC.Wvgy', 'JUSTIN FABRICIO', 'TIMAURE MOSQUERA', ''),
(58, 'HBOtFecDjVisxbG', '$2y$10$DkR0VIBSe.W492yz3kYVguKuTWes5ZXBTCft4Q0GvUJmDkb5fQMMa', 'JACOBO', 'NAVARRO VERA', ''),
(59, 'u8BCpEe3D2AVq7K', '$2y$10$vPCcW9lQ/ItY1M42u2jpge4VZIYeAE2HLgSeukZYU2vXwEiAJW3EO', 'SASHA MOHAMED JORGE', 'CENTURION SOTO', ''),
(60, 'j23xuPH4rWB7DCM', '$2y$10$8B1tRcqSfi0fAIXQk5PuCufnMcpC2mWUMzdQyhrqViWRa9EFd6AUi', 'MATHIAS GABRIEL', 'ARAUJO GALEA', ''),
(61, '7YGmNHu6IUwO9TK', '$2y$10$8zlcluNX9tj513pQcBOdn.uDlWUZJLjaDmZwqmr03xB72XiANzo5y', 'MARIA JOSE', 'ROBERTIZ BRICEÑO', ''),
(62, '1yG6PzvWJmNrDVA', '$2y$10$9W3F6Tz7xJFuXESIOuFM2O52lIfwMAQQk2t.1nkrqBiNO9w0n5lwa', 'EMMANUEL JESUS', 'CLAVIJO GUARDIOLA', ''),
(63, 'FGMJ7Oc6RNYPnD2', '$2y$10$7.wDbQTa3BfOCcA6pyd5EOOriKNQ2VFPDg96TZQliIAw1fDfPvIDm', 'GREYMAR SARAHI', 'KUNKEL MORALES', ''),
(64, 'AbgL7YOSeDzar4w', '$2y$10$OAjupJdJ1I9RWc90G1tmHO/ICRAkn9SQoWYWAphh00OKTuAIO5a1O', 'JARED JULIAN', 'GUTIERREZ ARDILA', ''),
(65, 'Mn7HEUzVqK93y6Y', '$2y$10$AzDm7Lki0VUp0ZuyAIfcHOWvKQeil/qDWUmzRqpxJsqzFv1As8tpa', 'DARA BELEN', 'BRAVO GUALOTUÑA', ''),
(66, 'px4I2GojMRqCwAh', '$2y$10$vR2GLkCqGhLRK4dsULF9k.yYBy1FRJS0VjHJ2vN12o9br5WLXRpAG', 'JUAN EDUARDO', 'SILVA CEBALLOS', ''),
(67, 'ZmS1U9PYtzWNywh', '$2y$10$fAmOywBaBWztSsrhhXl7oeTJvyyh1URwRswP/P7Zs58lgV51Webae', 'JOSANY CHARLOTTE', 'CABELLO MONTAÑO', ''),
(68, 'wkFmlht74NUBQ1f', '$2y$10$7i/2pwRkKGRwDFpjc5qKbulaZR/qnXWN.qCRnQZdYKPSW6qxDnNC6', 'EDUAN YERLYS SOFIA', 'SILVA IBARRA', ''),
(69, 'zaNHWoVTmtIASYg', '$2y$10$XqfTDEbeaA58QlKE7zVxcOiPaMZbsEj1npLSoKXBj2F4ztoWcxF8e', 'EMA DIGNORA', 'MARQUEZ GONZALEZ', ''),
(70, 'IrYXMJ15opLNUTk', '$2y$10$kWTtJ3D2wirHbhFipp0lm.YTMfvRPzO96P.LE4Ly8ymhm89H2PwqK', 'JACOBO', 'LOPEZ GIRALDO', ''),
(71, 'tQiCWqSmaPy1ElD', '$2y$10$Y1PIOUvA/KOCee6Gb73.Wu8.kTnykw6xggCyK2poIZ/676cySbiuq', 'YARITHS ALEXANDRA', 'LIZARAZO CONTRERAS', ''),
(72, 'RlMnsf6A4wSCLBV', '$2y$10$RIUeHy.nA/v87xK4mzEhIO6f.wrCVR5wfwLR.WB4qOwtDJlL/Z3bm', 'MARIANGEL', 'PADILLA CARDONA', ''),
(73, 'LYeIunO2tlDfdrc', '$2y$10$7CXBtos8s22Edjd7D5NOZOWWeKM/j2p5X9BA0HZg.ddqoFv.N/4Pu', 'JUAN JOSE', 'GARCIA CORZO', ''),
(74, 'lidLuZeqUaM3YTn', '$2y$10$5NWw2bElxfEqpDndfWy75OfMqXR80cxoLR0yPglL1PgmZIzVYXG0S', 'FRANYERLI ELIANNY', 'CARRILLO AMARIS', ''),
(75, 'sGSYxDzXwbEURh5', '$2y$10$VA6Uj/LCgSjspQJKAN1QfeuG7p41/Hw7N.6vpEu.bEHOup1pjVK.e', 'NATHANIEL JOSUE', 'MORENO ALVAREZ', ''),
(76, 'clGAwgBjZ45p379', '$2y$10$59x6nFVAlsyXm3UaEfCR8OFTm9By8gpxVRlSPsPTpMAW0/YyKQRXe', 'HECTOR ENRIQUE', 'SOLSONA RAMIREZ', ''),
(77, 'kFUo3hXjZG1TRyO', '$2y$10$DfG9FLw83jOSLwUMqbLPguUk/8jjokF0hCx1ajjFQXj.nTGYLMqDm', 'MARIA ANGEL', 'MORALES HENAO', ''),
(78, '7Ll2cIrAFeC5O4N', '$2y$10$7ZFG8nyEmrhzYbcnqV/6s.g/hE1jfzgWJfWNx257pqEuaA67iN1gW', 'KEVIN ARLEY', 'CUESTA CORDOBA', ''),
(80, 'iOEzyMkFQRpfZP8', '$2y$10$i5RBBNTLY01kgWLcdFaJ8Okw2sAHbGW9Htycfq/.8cEXXB4ROcMIm', 'HAILYN DAVIANA', 'CORDOBA PINO', ''),
(81, 'Pb1daJ3vE2lht7U', '$2y$10$8VWAiff4xNqjDB400fImpOjIbtfeEXJVdfv2aNx42jCQ0Zaq9i4Om', 'DULCE MARIA', 'MORALES CORDOBA', ''),
(82, 'afpJCVPRdAX4k26', '$2y$10$hhQfXcOVN2qcmgBmCdeKTeYQEXZTs0xkWq0NQcEC1Xv8suYNL.WLa', 'JEREMY JESUS', 'HIDALGO RESTREPO', ''),
(83, 'PDtRprYWyqEhHMv', '$2y$10$iVRVhCYnGaYs7ZHYd4p0ket77XEVZ4nEjxOOzfch6VMIPriZRidv2', 'SAMUEL DE JESUS', 'AHUMADA VALENCIA', ''),
(84, 'orAdLm7TheJfaYw', '$2y$10$QDWukIO0BxvjDPDcF2.eIeVjXJW4wBI8PZR0p1RBT7oY2rPmNs8e.', 'ANTHONY ', 'ROJAS SOTO', ''),
(85, '3sYqCDAh71IZ2oT', '$2y$10$t0ZNtWhPqzNP8OOnykicJuSLpU6KF7ZUupufZfI0Ak3RxAV.Pk30y', 'GIOSUE ', 'SALAS ROSERO', ''),
(86, 'aNsk39RLOlWyDKh', '$2y$10$vujHry9rLiisgW3VT3S.9uHvlv.wMcRmo841NqcLy02o1G0MwX3SK', 'DULCE CRISTAL', 'OSIA PADILLA', ''),
(88, 'sadk1zeqwKLTbuF', '$2y$10$tF6Q9VJyMjT5.7h4aA/gdOqTR2HlAVMAxKyhmmU5x4zTrjMChl7.u', 'LUIS ALEJANDRO', 'PALOMARES MADUEÑO', ''),
(89, 'fuVQDv1CYwAq6IZ', '$2y$10$qC3ow38g435eBl4MNpUUQ.aZiZj/TMwfVxXf.KFUafmFdyXGF27j6', 'ARANZA ANTONELLA', 'GONZALEZ MOTA', ''),
(90, 'hS7wbWN9Of3qzDm', '$2y$10$G7Nb5lH67oUiM6odFHSbQeC8aZjjurEX0yOaP7VARtQ4HJ0N6A7yS', 'SANTIAGO ', 'HENAO BEDOYA', ''),
(91, 'UXNPrBkbWfOS63v', '$2y$10$CAmO4cj6h4kHP0ZmzvNm2eWytqyJpWleYU/XH0LLzz8FOJzKoXLKm', 'SUSANA ', 'HENAO USUGA', ''),
(92, 'pOeA9yocuUJsEvN', '$2y$10$TlQsRW8wAf5dkDR/Y86EOeHWLSOKvfTC0sqy1xzn2Mm25x3mrKJ7i', 'ANDREA DE LOS ANGELES', 'GARRIDO MENDOZA', ''),
(93, '1XAF2leTuCLdbiS', '$2y$10$lCwLl0a/cA3gkDwQ0GaYHOtWfrFhjxv6Ms/.6oT9RQ38tfK3dEPfW', 'LYAN SANTIAGO', 'LINARES CONTRERAS', ''),
(94, 'CwDjiZFQK94HU2A', '$2y$10$qfyp1ZAKEGTGbKSMcJ6s2uEQXTDNYJJLM7RKjjBy16jZxg61wjFBa', 'VICTORIA ', 'LOPEZ RUIZ', ''),
(95, 'E6Pr91GHDung8Yv', '$2y$10$1bJy1gk5m2C7s4k6.aWEF.5WlRjQEh9gtgIDgfLAdOgQ6tQwtInXy', 'JAVIELIS GUADALUPE', 'CANO RIVERO', ''),
(97, 'mQxz6h7GaPlLo9C', '$2y$10$vKDlnZoLMhmSyjIZHrsQMO3Gh55e5Bp6IYQFwmsqT1uo2MEwocN/a', 'DENIUSKA CHIQUINQUIRA', 'MONJES RAMOS', ''),
(98, 'gkXjSYpvKG3htHr', '$2y$10$mpylYHIhDveW1Qv66NfbiOvl70xaIOSAICwecpCDwpKOYKAd5oO92', 'JULIAN ANDRES', 'CAMPOS VILORIA', ''),
(99, 'QekiurxWAP2UbjI', '$2y$10$vdBxaY5Bm9RLVR2CWUr5Y.5tqsBHSAu144CU.M5XmMERysJAgFEuu', 'ELIYAHU ', 'GRANADA DOMINGUEZ', ''),
(100, 'knmLjG4O5ZgJ8Cb', '$2y$10$T69tzS1s3cqKpwJMKeNLYeZDlZYofhjpvMRGWRoaJUm57rBuXyZEC', 'JUAN PABLO', 'LIZARAZO CONTRERAS', ''),
(101, 'JrBvH6WQFCRu9lK', '$2y$10$935wdsnAZwuzX0Qj4yOe8OnOavSm/7KvNAZsozw9zMa4QVCRq//oe', 'GABRIEL ALEJANDRO', 'HERNANDEZ LEON', ''),
(102, 'iOkNpIqoVYyDs2t', '$2y$10$wvmAu3wq2zoFz//T.zT2xe0CzGpeWqJvYRkV2W3k1ikajBcOS2pMi', 'FREILER FRANCISCO', 'MEJIA CHICA', ''),
(103, 'U7ewlpd8VGhIcA6', '$2y$10$NOX9vjGqCI0KKi.fCc66PeQGX1lfcBcfjgHbK7Yu/FDhQvd4gNQde', 'ISAAC DAVID', 'PEREZ APONTE', ''),
(104, 'Y4eWG3qTkNXRUDC', '$2y$10$3f9VIcS5eb7AQJTIBUd.Zu8ccdeNwwlCLJ09IZNwr7WPTg.VhXWOi', 'JEYDEN YARETH', 'GOMEZ PLATA', ''),
(107, '6kDYvAOQ8jN1nHx', '$2y$10$zx0g3uUt9TjuHU1ltJw0v.ZlYQ.hS.dCfhfqrdFoHmSvaUyDmoBom', 'EUDOMAR GABRIEL', 'ACOSTA MEDINA', ''),
(108, 'kWLRqwVJ2EH93Cs', '$2y$10$31rhs1.JVg.9NyYmvLl2k.0KYJBeSO3Joug0mcgYqWYMTzq2eYOS2', 'FREIMAR AURELINA', 'COLMENARES CAMACARO', ''),
(109, 'DocjhmHwzUEeAKn', '$2y$10$9T2Bs6BGHLC1sJnbQXvu4u59AjWBBf0IRDRGofwb4wBO0QdcP0A2C', 'VIVIANNY ANGELLY', 'PEÑA HERRERA', ''),
(111, 'RlmwMFKrnBWex8d', '$2y$10$xLltJhiaQbWHN19yePRWbu406gzOgJQNoDmzAx8U2DxwXPp2uJul.', 'STHEBAN ANDRÉ', 'ROJAS OCHOA', ''),
(112, '6Y2eka9bRHmyinz', '$2y$10$r63WLHfh56.NfH6URXST1OI9nU6fCLe5jc1AgjKQh3G0e6hJ657Ke', 'SEBASTIAN ALEJANDRO', 'CORTEZ BRETO', ''),
(113, 'GWYKf8NT5b2EUL3', '$2y$10$mDT6Q/pX6xPWbqNKcvKCDucx8PgpCS6nchEqTDRTOmcV8f5SX/GN6', 'MATIAS ', 'CARDENAS', ''),
(114, 'H8CRAhDM9YuU3pc', '$2y$10$GAV.C6w7XMcoj9HGjt/Ypeq07yvWcQiFE6xmSOMFN8ZSGwyla6NIe', 'ETHAN ALEXANDER', 'ESCALONA LINARES', ''),
(115, 'b1cEagUWef5tpJn', '$2y$10$.nVuCUEd4NmOcJWbN4i7sO0iZ0bJQLN4KiM8y4mnKdQTCMlJ5.0/e', 'HARRYS ', 'PEREZ BENITEZ', ''),
(116, 'KqJLy472OAPxBIS', '$2y$10$Me9N68xA9nhctsoxrkdYPOjGpzYrwJL3lZaopBfT6SoPaqH2wWUX6', 'FRAIN JAVIER', 'OLLALVEZ BUJATO', ''),
(117, 'qOQHlr9jzvxD7aM', '$2y$10$GsiN.wc2.rOkxEbTxG.0C.7YKIzmZN14XxBdEd7KyI8mwQynsrqLG', 'SICARDI ANDRES', 'JULIO TORRES', ''),
(118, 'MuxAfbyBHstG3rw', '$2y$10$p1aTI8yx0g0sWoA2qUkph.1bSoh6lKURY4TUbeGkgMaLjb0ttTatK', 'YOSELIN DANIELA', 'DEOSSA MEJIA', ''),
(120, '763r59CvByme8cD', '$2y$10$djdSgrlr.feDc8Tf72yjCecTTwPRKT0D6eh9OpURhOLM/EKak83Hu', 'LUNA MARIA', 'MONTALVO PRIOLO', ''),
(121, 'mfuHgTbZBAhroaD', '$2y$10$xFdp/iq3oyQS6JI.hJOGleT8pVvetnrQ6xG.V/PhwTzaClRC6RPdG', 'ARIANNE ', 'MONSALVE CANO', ''),
(123, 't2rC7n6vUI43ERs', '$2y$10$Zs5Lypnod9dJb1M8tLG9WexUIkjteqSzFUCvXenIOEEMgetPSfvNi', 'JOSUE DAVID', 'SUAREZ CARPIO', ''),
(124, 'MS3xTdpJylGnXUQ', '$2y$10$yMddYq3zjtlXgkutZuGwkOCd1XKWD/QkY5MxBsCniOYfjEgoP4kTW', 'KEIRYS ', 'CUESTA CORDOBA', ''),
(125, 'dUzyf2lxWI5gosZ', '$2y$10$am3Fs./rnslSdjHHgt8Eau293p7NASWJNd/BWVkYSq4uRm65kGlZO', 'EMILIANO ', 'VASQUEZ FLOREZ', ''),
(126, 'gQJ3uAKXtaePshS', '$2y$10$1mQOOhlSihBBF6DCRSxdIOJTIe0b2RWR67ELc.lyxkJzXTpiDbyxS', 'GEBER DAVID', 'SMALL PADRON', ''),
(127, 'Eevmtax8hpIlrQg', '$2y$10$eGXc8P3nErm/N1VtdnK6..E0NV5WPKDQZjdV3FTGr1PK4OegwCiGS', 'MIGUEL ANGEL', 'VILLAQUIRAN ECHAVARRIA', ''),
(128, 'hfMjBsEzt3VS27x', '$2y$10$gHX8Oj0hO1Q6tjfWYB5Ji.85cxJjBNhAOrXh8A2MM7aQfwEY6tt5q', 'CAMILA MARGARITA', 'VILLEGAS RAMOS', ''),
(130, 'dO7EjIVDC8MwqUn', '$2y$10$AQE9KySLP4ngrKZWh.//9.0.bzwG3S95sHZvMYBvU9YjA6LTk2/GO', 'DANIELA ALEJANDRA', 'AÑEZ MILLAN', ''),
(131, 'nALSVfT24CXehir', '$2y$10$aKXYeWgcJ.5RurKCk7lq.u1aYz1ZaRuXwL6VIWyAotwtzM2eaOuYe', 'ALDAIR ALEXANDER', 'ATENCIO GARCIA', ''),
(132, '7CDbXc2RTd4taYZ', '$2y$10$eAHfekEhnaqa1CIC4Cq1zOEdjFmNN2B5GJNimYhdtuO0e4wp58ev.', 'ASHLY SALOME', 'DIAZ BRICEÑO', ''),
(133, 'x2nS1dvgUsI7P8p', '$2y$10$8ibFMffDubmQgGmMdOHb2Oa8wPieehW3PC6Z17Io5jEIRuIIcQonO', 'MATHIAS ALONSO', 'BRACAMONTE PARRA', ''),
(134, 'hMxjdOSmuDUg6wZ', '$2y$10$bSRD2R/yTnHHBSLPUyh2gO.B42Zr./D80czwzGGFGoPh9rN10TkTO', 'LUISA PATRICIA', 'CANAVAL YEPES', ''),
(136, 'NmXJ8n5gRdsCWyv', '$2y$10$0vylvRlcN2cXW0ZuMC3bjOgR.eHQ02SW4LZ03QdhUwNr4iB1z3U0S', 'ELIAS ', 'FONTALVO GOMEZ', ''),
(137, '8U9BDTSPwAQiY1s', '$2y$10$E5oJ1CTieFLThQYhjYmDSuLku6iWfXG0SaPDWyUIMqPMc.LHLpjC2', 'SAMUEL ', 'ACEVEDO TORO', ''),
(138, 'aKhfckHw7CZINQB', '$2y$10$c5n8YW3TXTB7bUPVYpxqe.6O0WsvK3K7bUOipV8KxsU2fw4Mw3K5.', 'GAEL', 'DORIA VERBEL', ''),
(139, 'Fz3cxL4fkMaJm5i', '$2y$10$xME4p.V4ckq.iHD.p8Byz.gYrZ4n8bdAMpb64GazTAurJl4YgQKSa', 'ISABELLA DEL VALLE', 'OROZCO RODRIGUEZ', ''),
(140, 'HcGQsmghXOLfa5v', '$2y$10$o9.Jx9oyhJgNm4CF0nkNtu5.69I4ysB1YR5AyH7TphUZ/4HudYrAu', 'DYLAN ', 'OCAMPO SIERRA', ''),
(141, 'UTsAzjYrFQnZx1E', '$2y$10$VMuU76NY0ojitaKn7ov86eEP8zJBn8xMnJTG1ZajFzONKc7bt4p7q', 'LINDA SOFIA', 'LONDOÑO BLANCO', ''),
(142, 'tBWGrEqpcLARXid', '$2y$10$68Vwtq.w.N/wVNP6nd.OTefN/tlrIY3rGf/Tl4YCN8T6MeCyGMHWK', 'PEDRO ', 'GIRALDO AGUDELO', ''),
(144, 'Njy6uYorUEPi4b9', '$2y$10$EFpi8Ogz.rcO2o/.EiNDJOtVizrcIyFxNHEU/mojyCms6vRrN9FQG', 'NAHOMI', 'GIRALDO ALONSO', ''),
(145, 's6YIo7lnpfRuX8q', '$2y$10$EOsn4te1/Cp2XhjnYX6/1.IjjocCCMZV85KmExF/NbBdmV9hlSbOe', 'ARIANNA NAZARETH', 'GIL AVILAN', ''),
(146, 'apSUH96ty71ivOn', '$2y$10$PDR/RrJLBYrq81WhED303OdD.ZhHf8BocrDy6FbmM4W6DRZYsbC3y', 'LIAM GAEL', 'GARCIA MATEUS', ''),
(148, 'fDZAG5nqOdvR32s', '$2y$10$iSk53UdaRTt6iw.79zEFReS7uA7vU3RjfkPTafCruggIQpBbPhHBi', 'JOSEMITH DAINERYS', 'PARRA ADJUNTA', ''),
(149, 'p6UHyc9qCFZ42Qt', '$2y$10$851xXcYRItpyOTi0v1JTHes6PR1BUSQCDOXnBgSw/F6L2wFOdMIPu', 'MATHIAS ENRIQUE', 'PALMA MARTINEZ', ''),
(151, 'U4KkEOQYq3IJeiD', '$2y$10$fXcGa0HqF.zi.KLohjhfEOYaykq5gAGUOVkQLR2pqAatdn8e2YkiC', 'ALEXANDER DAVID', 'PRESILLA MUJICA', ''),
(152, 'QKe71NClcZO2WqR', '$2y$10$x4jI7FI4HQ42ZMGQA3iVcOpz3ztfBBbpc78M6MRfrkdOHBPa86hm.', 'JOSUAN DARIAN', 'PEREZ MONSALVE', ''),
(155, 'zKUJSnorpRdFANe', '$2y$10$y80sKgmjDq3kbwv1jfvVV.3tiA3MPTm5U24AF1NtMVldApKiwi6K6', 'MARIA MONSERRAT', 'PEREZ RIVILLAS', ''),
(156, 'VGK1z7g8JbEsvnq', '$2y$10$oYptvrqpZXlinc2k.SD0YeNxHt0Kd8FmvtlBr60F9vMxtO/QvLr5a', 'JHOSTIN MATHIAS LUISANGEL', 'QUINTERO PINTO', ''),
(157, 'mgXpcsQLWzbRUw2', '$2y$10$.o.0c5RdOH0b3X2vlb1UWua6a3m.s2aWQDY62L4zLHaWFGGxSXlde', 'DYLANS JESUS', 'TOVAR BOLIVAR', ''),
(159, 'PL7Nn586jyKrGxU', '$2y$10$eNY7X/.ci8.wBEt2fCCJn.33NfkXO22ClnKGpWN386Z3HwHipybQe', 'DAVIANNA ISABELLA', 'ULACIO LEON', ''),
(160, 'f6Dwu2LtTWlBVk3', '$2y$10$c7QyTWYkhte0F/8wiRMAce/8NJjw.F4E0pKJRHXH6GHStb8tTkMNS', 'DAVIANNA ISABELLA', 'ULACIO LEON', ''),
(161, '83QpIiEqXrjTz4M', '$2y$10$WY6UwInGxKxF1xTHNLkK7.SRAJEBHJsOg0fIHxZKvaD9XVQYy2qqK', 'PAULA ISABELLA', 'URBINA ASPRILLA', ''),
(162, 'ErjpeyQbqiuHzZ7', '$2y$10$676WbmDEkgz3Yljh.m4CZu0QdPLrLp0A2bx.2Xd0FQhlzBGxx.U8K', 'NASHLY SAMANTA', 'RENDON ALDANA', ''),
(163, 'wH2ENanGdJT4Xcz', '$2y$10$HgaCKN0K360vEqJSGHNAtO23GY2c/Uoduf9/MZlcQuM0L0PWwtGt6', 'ANDREINA EUDIMAR', 'HERNANDEZ GOLLO', ''),
(164, 'METdgh3Ail4LVRN', '$2y$10$3AyQR/fpBfjPhAbUrCfcmO1uqlfKJs8.fKpiFvzL21Mn3bOOzSmdW', 'OWEN DAVID', 'MEJIA QUINTERO', ''),
(165, 'xbUgr4DLCeTSpI7', '$2y$10$G0ENIzVifvEf5sQztDh/s.dwzDMfg13PyPousT3oWea6XQQiVHI1S', 'EDUAR ENRRIQUE', 'CAICEDO MORA', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(85, 2, 18, 8),
(86, 2, 29, 9),
(87, 2, 30, 11),
(88, 38, 20, 8),
(89, 38, 34, 9),
(90, 38, 33, 11),
(91, 108, 18, 8),
(92, 108, 32, 9),
(93, 108, 33, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
