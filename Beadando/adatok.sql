-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 24. 16:21
-- Kiszolgáló verziója: 10.4.16-MariaDB
-- PHP verzió: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `adatok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `np`
--

CREATE TABLE `np` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `np`
--

INSERT INTO `np` (`id`, `nev`) VALUES
(1, 'Aggteleki Nemzeti Park Igazgatóság'),
(2, 'Balaton-felvidéki Nemzeti Park Igazgatóság'),
(3, 'Bükki Nemzeti Park Igazgatóság'),
(4, 'Duna-Dráva Nemzeti Park Igazgatóság'),
(5, 'Duna-Ipoly Nemzeti Park Igazgatóság'),
(6, 'Fertő-Hanság Nemzeti Park Igazgatóság'),
(7, 'Hortobágyi Nemzeti Park Igazgatóság'),
(8, 'Kiskunsági Nemzeti Park Igazgatóság'),
(9, 'Körös-Maros Nemzeti Park Igazgatóság'),
(10, 'Őrségi Nemzeti Park Igazgatóság');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepules`
--

CREATE TABLE `telepules` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `npid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `telepules`
--

INSERT INTO `telepules` (`id`, `nev`, `npid`) VALUES
(1, 'Abaliget', 4),
(2, 'Ágasegyháza', 8),
(3, 'Aggtelek', 1),
(4, 'Apaj', 8),
(5, 'Ásotthalom', 8),
(6, 'Babócsa', 4),
(7, 'Bakonybél', 2),
(8, 'Balatonederics', 2),
(9, 'Balatonmagyaród', 2),
(10, 'Barcs', 4),
(11, 'Bélapátfalva', 3),
(12, 'Berettyóújfalu', 7),
(13, 'Biharugra', 9),
(14, 'Budapest', 5),
(15, 'Bugac', 8),
(16, 'Bükkszentkereszt', 3),
(17, 'Cégénydányád', 7),
(18, 'Celldömölk', 10),
(19, 'Csáfordjánosfa', 6),
(20, 'Csákvár', 5),
(21, 'Császártöltés', 8),
(22, 'Cserépfalu', 3),
(23, 'Cserkút', 4),
(24, 'Csopak', 2),
(25, 'Dejtár', 5),
(26, 'Dévaványa', 9),
(27, 'Drégelypalánk', 5),
(28, 'Dunapataj', 8),
(29, 'Dunaremete', 6),
(30, 'Esztergom', 5),
(31, 'Farmos', 5),
(32, 'Felsőtárkány', 3),
(33, 'Fertőrákos', 6),
(34, 'Fót', 5),
(35, 'Fülöpháza', 8),
(36, 'Fülöpszállás', 8),
(37, 'Gánt', 5),
(38, 'Garadna', 3),
(39, 'Gyékényes', 4),
(40, 'Gyöngyös', 3),
(41, 'Győr', 6),
(42, 'Hollókő', 3),
(43, 'Hortobágy', 7),
(44, 'Ipolytarnóc', 3),
(45, 'Izsák', 8),
(46, 'Jósvafő', 1),
(47, 'Kaposvár', 4),
(48, 'Kecskemét', 8),
(49, 'Kékkút', 2),
(50, 'Kercaszomor', 10),
(51, 'Kisapáti', 2),
(52, 'Kisszentmárton', 4),
(53, 'Kölked', 4),
(54, 'Kőszeg', 10),
(55, 'Kunadacs', 8),
(56, 'Lakitelek', 8),
(57, 'Magyaregregy', 4),
(58, 'Magyarszombatfa', 10),
(59, 'Matty', 4),
(60, 'Miskolc', 3),
(61, 'Mohács', 4),
(62, 'Mórahalom', 8),
(63, 'Nagykovácsi', 5),
(64, 'Nagykőrös', 5),
(65, 'Óbánya', 4),
(66, 'Ócsa', 5),
(67, 'Old', 4),
(68, 'Orfű', 4),
(69, 'Orgovány', 8),
(70, 'Osli', 6),
(71, 'Őriszentpéter', 10),
(72, 'Őrtilos', 4),
(73, 'Paks', 4),
(74, 'Pálmonostora', 8),
(75, 'Pannonhalma', 6),
(76, 'Parád', 3),
(77, 'Pécs', 4),
(78, 'Perkupa', 1),
(79, 'Pilisszentiván', 5),
(80, 'Poroszló', 7),
(81, 'Pörböly', 4),
(82, 'Ravazd', 6),
(83, 'Salgótarján', 3),
(84, 'Sámsonháza', 3),
(85, 'Sarród', 6),
(86, 'Somlójenő', 2),
(87, 'Szabadkígyós', 9),
(88, 'Szalafő', 10),
(89, 'Szarvas', 9),
(90, 'Szarvaskő', 3),
(91, 'Szatymaz', 8),
(92, 'Szeghalom', 9),
(93, 'Szekszárd', 5),
(94, 'Szeremle', 4),
(95, 'Szigliget', 2),
(96, 'Szilvásvárad', 3),
(97, 'Szögliget', 1),
(98, 'Tarpa', 7),
(99, 'Tihany', 2),
(100, 'Tiszaalpár', 8),
(101, 'Tiszafüred', 7),
(102, 'Tiszalúc', 3),
(103, 'Tokaj', 1),
(104, 'Vámospércs', 7),
(105, 'Villány', 4),
(106, 'Vízvár', 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `role`) VALUES
(1, 'aaa@aaa.hu', 'aaa', '$2a$10$HxKEHUxLHCrGsCzh9xMOEOVSt7mHrsnWWiKLnCEV3oElveXFKdDyi', 'ROLE_Vendeg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ut`
--

CREATE TABLE `ut` (
  `azon` int(11) NOT NULL,
  `nev` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `hossz` double DEFAULT NULL,
  `allomas` double DEFAULT NULL,
  `ido` double DEFAULT NULL,
  `vezetes` double DEFAULT NULL,
  `telepulesid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `ut`
--

INSERT INTO `ut` (`azon`, `nev`, `hossz`, `allomas`, `ido`, `vezetes`, `telepulesid`) VALUES
(1, 'Baradla tanösvény ', 7, 18, 3, 1, 3),
(2, 'Bél-kői tanösvény ', 5, 7, 2, 1, 11),
(3, 'Bihari-sík tanösvény ', 7, 20, 5, 1, 12),
(4, 'Boroszlán tanösvény ', 7, 8, 3, 1, 7),
(5, 'Denevér tanösvény ', 5, 13, 3, 1, 1),
(6, 'Kisvátyoni tanösvény ', 8, 6, 3, 1, 13),
(7, 'Kőpark tanösvény ', 0, 0, 0, 1, 14),
(8, 'Rekettye tanösvény ', 2, 6, 2, 1, 2),
(9, 'Ság-hegy élővilága ', 0, 13, 0, 1, 18),
(10, 'Ság-hegyi geológiai tanösvény ', 1, 18, 0, 1, 18),
(11, 'Sas-hegy tanösvény ', 0, 7, 1, 1, 14),
(12, 'Tőzike tanösvény ', 3, 5, 1, 1, 19),
(13, 'Anna-ligeti tanösvény ', 2, 8, 1, -1, 89),
(14, 'Apródok útja tanösvény ', 7, 8, 3, -1, 27),
(15, 'Aqua Colun tanösvény ', 3, 5, 2, -1, 45),
(16, 'Árpád fejedelem tanösvény ', 3, 11, 2, -1, 100),
(17, 'Ártéri tanösvény ', 0, 4, 0, -1, 106),
(18, 'Babócsai Basa-kert tanösvény ', 1, 2, 1, -1, 6),
(19, 'Baradla tanösvény ', 7, 18, 3, -1, 3),
(20, 'Bárányfoki tanösvény ', 2, 6, 1, -1, 93),
(21, 'Báránypirosító tanösvény ', 1, 5, 1, -1, 35),
(22, 'Barát-réti tanösvény ', 6, 4, 3, -1, 32),
(23, 'Barcsi Borókás tanösvény ', 2, 4, 1, -1, 10),
(24, 'Bazaltorgonák tanösvény ', 4, 7, 2, -1, 51),
(25, 'Bél-kői tanösvény ', 5, 7, 2, -1, 11),
(26, 'Bihari-sík tanösvény ', 7, 20, 5, -1, 12),
(27, 'Bodrogzugi vízitúra tanösvény ', 5, 3, 2, 0, 103),
(28, 'Bódva-völgyi tanösvény ', 2, 7, 1, 0, 78),
(29, 'Boróka tanösvény ', 2, 5, 1, -1, 15),
(30, 'Boros-Dráva tanösvény ', 1, 2, 0, -1, 67),
(31, 'Boroszlán tanösvény ', 7, 8, 3, -1, 7),
(32, 'Boszorkány-kő geológiai tanösvény ', 0, 13, 0, -1, 83),
(33, 'Bőköz tanösvény ', 4, 6, 1, -1, 52),
(34, 'Bölömbika tanösvény ', 3, 6, 1, -1, 62),
(35, 'Búbos vöcsök tanösvény ', 1, 13, 1, 0, 9),
(36, 'Buda-hegyi tanösvény', 2, 8, 3, -1, 84),
(37, 'Cankó tanösvény ', 1, 9, 1, -1, 36),
(38, 'Cégénydányádi Kastélypark tanösvény ', 1, 19, 1, 0, 17),
(39, 'Chernel-kerti tanösvény ', 0, 0, 0, 0, 54),
(40, 'Cserépfalui Ördögtorony tanösvény ', 10, 20, 4, -1, 22),
(41, 'Csipak tanösvény ', 3, 9, 1, -1, 62),
(42, 'Csodarét tanösvény ', 4, 10, 2, -1, 5),
(43, 'Csomoros-sziget tanösvény ', 0, 10, 1, -1, 10),
(44, 'Csörgőalma tanösvény ', 0, 1, 0, -1, 71),
(45, 'Denevér tanösvény ', 5, 13, 3, -1, 1),
(46, 'Erdei tanösvény ', 2, 6, 2, -1, 15),
(47, 'Eresztvényi kőbányák ', 2, 6, 1, -1, 83),
(48, 'Erzsébet-sziget tanösvény ', 3, 2, 1, -1, 6),
(49, 'Fekete harkály tanösvény ', 5, 13, 3, -1, 47),
(50, 'Felsőszeri tanösvény ', 1, 6, 1, -1, 88),
(51, 'Fóti-Somlyó tanösvény ', 3, 11, 3, -1, 34),
(52, 'Földtani tanösvény ', 2, 13, 1, -1, 37),
(53, 'Fürge cselle tanösvény ', 3, 8, 1, -1, 50),
(54, 'Fürkész ösvény ', 2, 12, 1, -1, 46),
(55, 'Górési tanösvény ', 11, 5, 3, -1, 101),
(56, 'Halásztelki tanösvény ', 3, 10, 1, -1, 89),
(57, 'Hankovszky-liget tanösvény ', 0, 8, 0, -1, 48),
(58, 'Hany Istók tanösvény ', 5, 7, 2, 0, 70),
(59, 'Haraszt-hegyi tanösvény ', 3, 7, 3, -1, 20),
(60, 'Holt-Rába tanösvény ', 6, 5, 2, 0, 41),
(61, 'Ilona-völgyi geológiai tanösvény ', 6, 9, 2, -1, 76),
(62, 'Ipolytarnóc - Biológiai tanösvény ', 6, 13, 1, -1, 44),
(63, 'Ipolytarnóc - Borókás-árok geológiai tanösvény ', 0, 7, 1, -1, 44),
(64, 'Ipolytarnóc - Kőszikla tanösvény ', 0, 20, 1, -1, 44),
(65, 'Ipolytarnóc - Kőzetpark ', 0, 20, 0, -1, 44),
(66, 'Jági tanösvény ', 3, 6, 2, -1, 79),
(67, 'Jakab-hegyi tanösvény ', 8, 10, 2, -1, 23),
(68, 'Jávorkúti tanösvény ', 3, 4, 1, -1, 38),
(69, 'Jónásrészi tanösvény ', 5, 11, 3, -1, 104),
(70, 'Káli-medence túrahálózat ', 25, 79, 8, -1, 49),
(71, 'Kamon-kő tanösvény ', 6, 9, 3, -1, 95),
(72, 'Kékbegy tanösvény ', 0, 3, 0, -1, 31),
(73, 'Kékmoszat tanösvény ', 2, 12, 2, -1, 28),
(74, 'Kesznyéteni TK agrár-környezetgazdálkodási tanösvény ', 4, 6, 3, -1, 102),
(75, 'Kígyósi tanösvény ', 5, 4, 2, 0, 87),
(76, 'Kismély-völgyi tanösvény ', 1, 5, 1, -1, 77),
(77, 'Kisvátyoni tanösvény ', 8, 6, 3, 0, 13),
(78, 'Kitaibel tanösvény ', 3, 9, 2, -1, 86),
(79, 'Kontyvirág tanösvény ', 2, 6, 1, -1, 56),
(80, 'Kormorános-erdő tanösvény ', 2, 6, 0, -1, 59),
(81, 'Kosbor tanösvény ', 1, 5, 1, -1, 55),
(82, 'Kő-közi tanösvény ', 0, 5, 1, -1, 32),
(83, 'Kőpark tanösvény ', 0, 0, 0, -1, 14),
(84, 'Körtike tanösvény ', 6, 11, 2, -1, 88),
(85, 'Kövi benge tanösvény ', 0, 20, 1, 0, 33),
(86, 'Lóczy gejzír-sétaút ', 18, 15, 6, -1, 99),
(87, 'Madarak és fák útja ', 1, 5, 1, -1, 15),
(88, 'Madárvédelmi tanösvény ', 0, 8, 0, -1, 54),
(89, 'Mágor-pusztai tanösvény ', 0, 5, 1, 0, 92),
(90, 'Magyar-bányai kőpark ', 0, 13, 0, -1, 83),
(91, 'Mérus-erdő tanösvény ', 1, 1, 0, -1, 6),
(92, 'Millenniumi természetismereti és erdészeti bemutató sétaút ', 2, 20, 1, -1, 96),
(93, 'Nagymező - Kis-kőháti-zsomboly tanösvény ', 3, 3, 1, -1, 96),
(94, 'Nagypartosi tanösvény ', 2, 6, 1, -1, 53),
(95, 'Nagy-Szénás tanösvény ', 2, 7, 1, -1, 63),
(96, 'Nyéki-Holt-Duna tanösvény ', 2, 6, 1, -1, 81),
(97, 'Óbányai Pro Silva tanösvény ', 2, 5, 0, -1, 65),
(98, 'Olasz-kapui tanösvény ', 7, 6, 3, -1, 96),
(99, 'Orfűi Vízfő tanösvény ', 1, 4, 0, -1, 68),
(100, 'Öregtavi tanösvény ', 25, 18, 6, -1, 43),
(101, 'Őrtilosi Dráva-ártér tanösvény ', 2, 0, 0, -1, 72),
(102, 'Paksi Ürge-mező tanösvény ', 4, 11, 1, -1, 73),
(103, 'Pálfája tanösvény ', 1, 10, 1, -1, 64),
(104, 'Páskom legelő tanösvény ', 3, 6, 2, -1, 25),
(105, 'Pele apó ösvénye ', 8, 38, 5, -1, 8),
(106, 'Pele körút ', 0, 10, 1, -1, 24),
(107, 'Pimpó tanösvény ', 5, 6, 4, -1, 69),
(108, 'Poszáta tanösvény ', 2, 8, 1, -1, 45),
(109, 'Ravazd-Sokorópátkai tanösvény ', 15, 3, 3, 0, 82),
(110, 'Réce tanösvény ', 1, 5, 0, -1, 4),
(111, 'Réhelyi tanösvény ', 1, 8, 1, -1, 26),
(112, 'Rejtek - Répáshuta tanösvény ', 9, 12, 4, -1, 16),
(113, 'Rekettye tanösvény ', 2, 6, 2, -1, 2),
(114, 'Rezgőnyár tanösvény ', 0, 7, 0, -1, 71),
(115, 'Ság-hegy élővilága ', 0, 13, 0, -1, 18),
(116, 'Ság-hegyi geológiai tanösvény ', 1, 18, 0, -1, 18),
(117, 'Salgó - Somoskő vára tanösvény ', 3, 6, 1, -1, 83),
(118, 'Sárgaliliom tanösvény ', 6, 11, 2, -1, 58),
(119, 'Sár-hegyi természetismereti tanösvény ', 7, 12, 3, -1, 40),
(120, 'Sas-hegy tanösvény ', 0, 7, 1, -1, 14),
(121, 'Sáskajárás sétaút ', 0, 8, 1, -1, 15),
(122, 'Selyem-réti tanösvény ', 1, 6, 2, -1, 66),
(123, 'Sirály tanösvény ', 2, 5, 1, -1, 91),
(124, 'Sóvirág tanösvény ', 0, 0, 1, -1, 31),
(125, 'Sötét-völgyi tanösvény ', 4, 9, 2, -1, 93),
(126, 'Strázsa-hegyi tanösvény ', 1, 7, 1, -1, 30),
(127, 'Szádvár tanösvény ', 4, 12, 3, -1, 97),
(128, 'Szalajka-völgyi természetvédelmi bemutatóösvény ', 4, 10, 2, -1, 96),
(129, 'Szala menti tanösvény ', 3, 9, 1, -1, 71),
(130, 'Szálkahalmi tanösvény ', 1, 5, 1, -1, 43),
(131, 'Szarvaskői geológiai tanösvény ', 8, 11, 3, -1, 90),
(132, 'Szeremlei-Holt-Duna tanösvény ', 2, 6, 1, -1, 94),
(133, 'Szigetközi Ökoturisztikai Bemutató Útvonal ', 18, 12, 2, 0, 29),
(134, 'Sziki őszirózsa tanösvény ', 4, 10, 2, 0, 85),
(135, 'Szilvás-kői geológiai tanösvény ', 3, 12, 1, -1, 83),
(136, 'Szinva tanösvény ', 4, 6, 3, -1, 60),
(137, 'Szomoróczi tanösvény ', 3, 6, 1, -1, 50),
(138, 'Tanösvény a Turjánban ', 1, 9, 1, -1, 66),
(139, 'Tarpai Szőlő-hegy tanösvény ', 3, 6, 2, 0, 98),
(140, 'Templom-hegyi tanösvény ', 2, 6, 1, -1, 105),
(141, 'Pannonhalmi arborétum', 1, 3, 0, 0, 75),
(142, 'Tisza-tavi vízi sétány és tanösvény ', 1, 4, 2, -1, 80),
(143, 'Tohonya-Kuriszlán tanösvény II. útvonal ', 9, 25, 6, -1, 46),
(144, 'Tohonya-Kuriszlán tanösvény I. útvonal ', 4, 12, 2, -1, 46),
(145, 'Tőzike tanösvény ', 3, 5, 1, -1, 19),
(146, 'Tüskés-réti tanösvény ', 1, 4, 1, -1, 77),
(147, 'Újmohácsi tanösvény ', 3, 7, 1, -1, 61),
(148, 'Üde rétek tanösvény ', 3, 5, 2, -1, 10),
(149, 'Várdomb tanösvény ', 0, 6, 0, 0, 100),
(150, 'Vár-hegyi tanösvény ', 10, 6, 4, -1, 32),
(151, 'Vártúra ösvény ', 1, 0, 1, -1, 42),
(152, 'Vár-völgyi földtani tanösvény ', 3, 10, 1, -1, 57),
(153, 'Vasút-oldali túraútvonal ', 10, 1, 2, -1, 39),
(154, 'Vizi Rence Túraútvonal ', 6, 0, 3, -1, 33),
(155, 'Vöcsök tanösvény ', 3, 7, 2, -1, 74),
(156, 'Vörös-mocsár tanösvény ', 2, 2, 2, -1, 21);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `np`
--
ALTER TABLE `np`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `telepules`
--
ALTER TABLE `telepules`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ut`
--
ALTER TABLE `ut`
  ADD PRIMARY KEY (`azon`),
  ADD KEY `telepulesid` (`telepulesid`) USING BTREE;

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `ut`
--
ALTER TABLE `ut`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `telepules`
--
ALTER TABLE `telepules`
  ADD CONSTRAINT `telepules_ibfk_1` FOREIGN KEY (`npid`) REFERENCES `np` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Megkötések a táblához `ut`
--
ALTER TABLE `ut`
  ADD CONSTRAINT `ut_ibfk_1` FOREIGN KEY (`telepulesid`) REFERENCES `telepules` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
