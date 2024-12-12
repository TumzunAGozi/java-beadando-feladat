-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 12. 01:35
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
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepules`
--

CREATE TABLE `telepules` (
  `id` int(11) NOT NULL,
  `nev` varchar(25) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `npid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ut`
--

CREATE TABLE `ut` (
  `azon` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `hossz` int(11) NOT NULL,
  `allomas` int(11) NOT NULL,
  `ido` int(11) NOT NULL,
  `vezetes` int(11) NOT NULL,
  `telepulesid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `npid` (`npid`);

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
-- AUTO_INCREMENT a táblához `ut`
--
ALTER TABLE `ut`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

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
