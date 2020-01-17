-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Ara 2019, 14:39:59
-- Sunucu sürümü: 10.3.15-MariaDB
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cevapresim`
--

CREATE TABLE `cevapresim` (
  `cevapresimID` int(11) NOT NULL,
  `resimUzantisi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `cevapresim`
--

INSERT INTO `cevapresim` (`cevapresimID`, `resimUzantisi`) VALUES
(1, 'resim.com/cevapresim1.jpg'),
(2, 'resim.com/cevapresim1.jpg'),
(3, 'resim.com/cevapresim3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cevaptarihi`
--

CREATE TABLE `cevaptarihi` (
  `cevaptarihiID` int(11) NOT NULL,
  `cevapTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `cevaptarihi`
--

INSERT INTO `cevaptarihi` (`cevaptarihiID`, `cevapTarihi`) VALUES
(1, '2019-12-18'),
(2, '2019-12-19'),
(3, '2019-12-19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cevapvideo`
--

CREATE TABLE `cevapvideo` (
  `cevapvideoID` int(11) NOT NULL,
  `videoUzantisi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `cevapvideo`
--

INSERT INTO `cevapvideo` (`cevapvideoID`, `videoUzantisi`) VALUES
(1, 'video.com/cevapvideo1.html'),
(2, 'video.com/cevapvideo2.html'),
(3, 'video.com/cevapvideo3.html');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorankullanici`
--

CREATE TABLE `sorankullanici` (
  `kullaniciID` int(11) NOT NULL,
  `kullaniciAdi` varchar(20) NOT NULL,
  `kullaniciResim` varchar(100) NOT NULL,
  `uyeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sorankullanici`
--

INSERT INTO `sorankullanici` (`kullaniciID`, `kullaniciAdi`, `kullaniciResim`, `uyeID`) VALUES
(1, 'Irem', 'resim.com/kullaniciresim1.jpg', 1),
(2, 'Melih', 'resim.com/kullaniciresim2.jpg', 2),
(3, 'Hakan', 'resim.com/kullaniciresim3.jpg', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soru`
--

CREATE TABLE `soru` (
  `soruID` int(11) NOT NULL,
  `sorubaslikID` int(11) NOT NULL,
  `kullaniciID` int(11) NOT NULL,
  `soruresimID` int(11) NOT NULL,
  `soruvideoID` int(11) NOT NULL,
  `sorukategoriID` int(11) NOT NULL,
  `soruicerikID` int(11) NOT NULL,
  `sorutarihID` int(11) NOT NULL,
  `soruetiketID` int(11) NOT NULL,
  `sorucevapID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorubaslik`
--

CREATE TABLE `sorubaslik` (
  `sorubaslikID` int(11) NOT NULL,
  `baslikAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sorubaslik`
--

INSERT INTO `sorubaslik` (`sorubaslikID`, `baslikAdi`) VALUES
(1, 'deneme baslik'),
(2, 'deneme baslik 2'),
(3, 'deneme baslik 3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorucevap`
--

CREATE TABLE `sorucevap` (
  `sorucevapID` int(11) NOT NULL,
  `uyeID` int(11) NOT NULL,
  `soruCevabi` varchar(500) NOT NULL,
  `cevapresimID` int(11) NOT NULL,
  `cevapvideoID` int(11) NOT NULL,
  `cevaptarihiID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sorucevap`
--

INSERT INTO `sorucevap` (`sorucevapID`, `uyeID`, `soruCevabi`, `cevapresimID`, `cevapvideoID`, `cevaptarihiID`) VALUES
(1, 1, 'deneme cevap', 1, 1, 1),
(2, 2, 'deneme cevap 2', 2, 2, 2),
(3, 3, 'deneme cevap 3', 3, 3, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soruetiket`
--

CREATE TABLE `soruetiket` (
  `soruetiketID` int(11) NOT NULL,
  `soruetiketAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `soruetiket`
--

INSERT INTO `soruetiket` (`soruetiketID`, `soruetiketAdi`) VALUES
(1, 'php'),
(2, 'android'),
(3, 'ios');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soruicerik`
--

CREATE TABLE `soruicerik` (
  `soruicerikID` int(11) NOT NULL,
  `icerikYazisi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `soruicerik`
--

INSERT INTO `soruicerik` (`soruicerikID`, `icerikYazisi`) VALUES
(1, 'deneme icerik yazisi'),
(2, 'deneme icerik yazisi 2'),
(3, 'deneme icerik yazisi 3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorukategori`
--

CREATE TABLE `sorukategori` (
  `sorukategoriID` int(11) NOT NULL,
  `kategoriAdi` varchar(20) NOT NULL,
  `kategoriResim` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sorukategori`
--

INSERT INTO `sorukategori` (`sorukategoriID`, `kategoriAdi`, `kategoriResim`) VALUES
(1, 'PHP', 'deneme.com/resim.jpg'),
(2, 'JAVA', 'deneme.com/resim2.jpg'),
(3, 'REACTJS', 'deneme.com/resim2.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soruresim`
--

CREATE TABLE `soruresim` (
  `soruresimID` int(11) NOT NULL,
  `resimUzanti` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `soruresim`
--

INSERT INTO `soruresim` (`soruresimID`, `resimUzanti`) VALUES
(1, 'deneme.com/soruresim1.jpg'),
(2, 'deneme.com/soruresim2.jpg'),
(3, 'deneme.com/soruresim3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorutarihi`
--

CREATE TABLE `sorutarihi` (
  `sorutarihID` int(11) NOT NULL,
  `soruTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `sorutarihi`
--

INSERT INTO `sorutarihi` (`sorutarihID`, `soruTarihi`) VALUES
(1, '2019-12-30'),
(2, '2019-08-08'),
(3, '2019-12-20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soruvideo`
--

CREATE TABLE `soruvideo` (
  `soruvideoID` int(11) NOT NULL,
  `videoUzanti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `soruvideo`
--

INSERT INTO `soruvideo` (`soruvideoID`, `videoUzanti`) VALUES
(1, 'youtube.com/denemevideo.html'),
(2, 'youtube.com/denemevideo2.html'),
(3, 'youtube.com/denemevideo3.html');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye`
--

CREATE TABLE `uye` (
  `uyeID` int(11) NOT NULL,
  `uyeAdi` text NOT NULL,
  `uyeSoyadi` text NOT NULL,
  `uyeMail` text NOT NULL,
  `uyeSifre` varchar(20) NOT NULL,
  `uyeResim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uye`
--

INSERT INTO `uye` (`uyeID`, `uyeAdi`, `uyeSoyadi`, `uyeMail`, `uyeSifre`, `uyeResim`) VALUES
(1, 'Irem', 'Akkas', 'iremakkas@gmail.com', '1234567890', 'deneme.com/uyeresim.jpg'),
(2, 'Melih', 'Demirci', 'mdemirci@gmail.com', '2324534', 'deneme.com/uyeresim2.jpg'),
(3, 'Hakan', 'Cilingir', 'hakanc@yahoo.com', 'kfkfkdlslklfkdlf', 'deneme.com/uyeresim3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyelerliste`
--

CREATE TABLE `uyelerliste` (
  `uyeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `uyelerliste`
--

INSERT INTO `uyelerliste` (`uyeID`) VALUES
(1),
(2),
(3),
(4);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cevapresim`
--
ALTER TABLE `cevapresim`
  ADD PRIMARY KEY (`cevapresimID`);

--
-- Tablo için indeksler `cevaptarihi`
--
ALTER TABLE `cevaptarihi`
  ADD PRIMARY KEY (`cevaptarihiID`);

--
-- Tablo için indeksler `cevapvideo`
--
ALTER TABLE `cevapvideo`
  ADD PRIMARY KEY (`cevapvideoID`);

--
-- Tablo için indeksler `sorankullanici`
--
ALTER TABLE `sorankullanici`
  ADD PRIMARY KEY (`kullaniciID`),
  ADD KEY `uyeID` (`uyeID`);

--
-- Tablo için indeksler `soru`
--
ALTER TABLE `soru`
  ADD PRIMARY KEY (`soruID`),
  ADD KEY `sorubaslikID` (`sorubaslikID`,`kullaniciID`,`soruresimID`,`soruvideoID`,`sorukategoriID`,`soruicerikID`,`sorutarihID`,`soruetiketID`,`sorucevapID`),
  ADD KEY `kullaniciID` (`kullaniciID`),
  ADD KEY `soruvideoID` (`soruvideoID`),
  ADD KEY `sorucevapID` (`sorucevapID`),
  ADD KEY `soruicerikID` (`soruicerikID`),
  ADD KEY `soruresimID` (`soruresimID`),
  ADD KEY `sorutarihID` (`sorutarihID`),
  ADD KEY `soruetiketID` (`soruetiketID`),
  ADD KEY `sorukategoriID` (`sorukategoriID`);

--
-- Tablo için indeksler `sorubaslik`
--
ALTER TABLE `sorubaslik`
  ADD PRIMARY KEY (`sorubaslikID`);

--
-- Tablo için indeksler `sorucevap`
--
ALTER TABLE `sorucevap`
  ADD PRIMARY KEY (`sorucevapID`),
  ADD KEY `uyeID` (`uyeID`,`cevapresimID`,`cevapvideoID`,`cevaptarihiID`),
  ADD KEY `cevapvideoID` (`cevapvideoID`),
  ADD KEY `cevaptarihiID` (`cevaptarihiID`),
  ADD KEY `cevapresimID` (`cevapresimID`);

--
-- Tablo için indeksler `soruetiket`
--
ALTER TABLE `soruetiket`
  ADD PRIMARY KEY (`soruetiketID`);

--
-- Tablo için indeksler `soruicerik`
--
ALTER TABLE `soruicerik`
  ADD PRIMARY KEY (`soruicerikID`);

--
-- Tablo için indeksler `sorukategori`
--
ALTER TABLE `sorukategori`
  ADD PRIMARY KEY (`sorukategoriID`);

--
-- Tablo için indeksler `soruresim`
--
ALTER TABLE `soruresim`
  ADD PRIMARY KEY (`soruresimID`);

--
-- Tablo için indeksler `sorutarihi`
--
ALTER TABLE `sorutarihi`
  ADD PRIMARY KEY (`sorutarihID`);

--
-- Tablo için indeksler `soruvideo`
--
ALTER TABLE `soruvideo`
  ADD PRIMARY KEY (`soruvideoID`);

--
-- Tablo için indeksler `uye`
--
ALTER TABLE `uye`
  ADD UNIQUE KEY `uyeID` (`uyeID`),
  ADD KEY `uyeID_2` (`uyeID`);

--
-- Tablo için indeksler `uyelerliste`
--
ALTER TABLE `uyelerliste`
  ADD PRIMARY KEY (`uyeID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `uyelerliste`
--
ALTER TABLE `uyelerliste`
  MODIFY `uyeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `sorankullanici`
--
ALTER TABLE `sorankullanici`
  ADD CONSTRAINT `sorankullanici_ibfk_1` FOREIGN KEY (`uyeID`) REFERENCES `uyelerliste` (`uyeID`);

--
-- Tablo kısıtlamaları `soru`
--
ALTER TABLE `soru`
  ADD CONSTRAINT `soru_ibfk_1` FOREIGN KEY (`kullaniciID`) REFERENCES `sorankullanici` (`kullaniciID`),
  ADD CONSTRAINT `soru_ibfk_2` FOREIGN KEY (`sorubaslikID`) REFERENCES `sorubaslik` (`sorubaslikID`),
  ADD CONSTRAINT `soru_ibfk_3` FOREIGN KEY (`soruvideoID`) REFERENCES `soruvideo` (`soruvideoID`),
  ADD CONSTRAINT `soru_ibfk_4` FOREIGN KEY (`sorucevapID`) REFERENCES `sorucevap` (`sorucevapID`),
  ADD CONSTRAINT `soru_ibfk_5` FOREIGN KEY (`soruicerikID`) REFERENCES `soruicerik` (`soruicerikID`),
  ADD CONSTRAINT `soru_ibfk_6` FOREIGN KEY (`soruresimID`) REFERENCES `soruresim` (`soruresimID`),
  ADD CONSTRAINT `soru_ibfk_7` FOREIGN KEY (`sorutarihID`) REFERENCES `sorutarihi` (`sorutarihID`),
  ADD CONSTRAINT `soru_ibfk_8` FOREIGN KEY (`soruetiketID`) REFERENCES `soruetiket` (`soruetiketID`),
  ADD CONSTRAINT `soru_ibfk_9` FOREIGN KEY (`sorukategoriID`) REFERENCES `sorukategori` (`sorukategoriID`);

--
-- Tablo kısıtlamaları `sorucevap`
--
ALTER TABLE `sorucevap`
  ADD CONSTRAINT `sorucevap_ibfk_1` FOREIGN KEY (`cevapvideoID`) REFERENCES `cevapvideo` (`cevapvideoID`),
  ADD CONSTRAINT `sorucevap_ibfk_2` FOREIGN KEY (`cevaptarihiID`) REFERENCES `cevaptarihi` (`cevaptarihiID`),
  ADD CONSTRAINT `sorucevap_ibfk_3` FOREIGN KEY (`cevapresimID`) REFERENCES `cevapresim` (`cevapresimID`),
  ADD CONSTRAINT `sorucevap_ibfk_4` FOREIGN KEY (`uyeID`) REFERENCES `uyelerliste` (`uyeID`);

--
-- Tablo kısıtlamaları `uye`
--
ALTER TABLE `uye`
  ADD CONSTRAINT `uye_ibfk_1` FOREIGN KEY (`uyeID`) REFERENCES `uyelerliste` (`uyeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
