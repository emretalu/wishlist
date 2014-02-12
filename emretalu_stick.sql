-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 06 Kas 2013, 20:40:12
-- Sunucu sürümü: 5.5.32-cll
-- PHP Sürümü: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `emretalu_stick`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `color` enum('yellow','blue','green') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yellow',
  `xyz` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Tablo döküm verisi `notes`
--

INSERT INTO `notes` (`id`, `text`, `name`, `color`, `xyz`, `dt`) VALUES
(1, 'Koala''ların nesli tükenmesin... :)', 'Emre Talu', 'blue', '554x326x548', '2012-12-21 11:01:34'),
(2, 'Yarını görebilmeyi diliyorum', 'Gökhan GÜRLEYEN', 'yellow', '574x180x654', '2012-12-21 11:06:07'),
(3, 'Bir An Önce Proje Bitsede Rahatlasak', '@JaneOguzhan', 'green', '725x44x695', '2012-12-21 11:17:26'),
(9, 'Gargamelsiz bir dünya istiyorum', '@sirinsirine', 'blue', '625x56x579', '2012-12-21 12:30:21'),
(11, 'Yaşadığımız hayatlar da okuduğumuz kitaplar gibi olsun istiyorum.Mutlu...', 'Öge', 'green', '472x70x659', '2012-12-21 13:21:00'),
(10, 'Uyandigimda param olmasini istiyorum', 'oguz', 'yellow', '825x64x693', '2012-12-21 12:30:32'),
(7, 'O proje bitecek! :D', '@projectboxpro', 'yellow', '304x206x627', '2012-12-21 11:36:29'),
(8, 'mutluluk istiyorum :)', 'Emine DURGUT', 'green', '327x209x678', '2012-12-21 12:06:59'),
(13, 'Her sabah mutlu uyanmak istiyorum', 'Kerem', 'yellow', '207x390x663', '2012-12-21 17:45:45'),
(12, 'Koalaları da unutmamak lazım tabiki.. nesilleri tükenmesin yalnız kalmasınlar..', 'öge', 'blue', '545x429x680', '2012-12-21 13:21:52'),
(14, 'beni bekleyen bir sevgilim olsun istiyorum onunla cok sey paylaşmak istiyorum', 'jane', 'green', '703x416x687', '2012-12-22 01:01:10'),
(21, 'Yaz gelsin istiyorum...', ':)', 'blue', '298x50x674', '2012-12-22 09:32:50'),
(15, 'Hayatı Daha Rahat Yaşamak istiyorum', 'Melek', 'green', '823x155x692', '2012-12-22 01:01:33'),
(16, 'Özlem Tekinle Tanışmak İstiyorum', 'baharmmmm', 'green', '416x282x665', '2012-12-22 01:01:59'),
(17, 'hayatı doya doya yasayıp gezıp gormnek ıstıyorum', 'hava', 'green', '129x296x629', '2012-12-22 01:02:29'),
(18, 'Artık Sorunlarım bitsin istiyroum dertsz yasmak', '###ss£###ozlem', 'yellow', '416x70x675', '2012-12-22 01:03:42'),
(19, 'emreyi çok seviyorum', 'kimim ben ?', 'blue', '350x112x676', '2012-12-22 01:04:03'),
(20, 'Yaralarım sarılsın iyileşsin artık', 'hasanustan', 'yellow', '384x0x658', '2012-12-22 01:04:32'),
(22, 'Şu baş ağrım geçsin istiyorum :(', '@emre_talu', 'blue', '759x353x688', '2012-12-22 11:58:03'),
(23, 'I wish I were a fish in your dish :)', ':)', 'yellow', '537x0x657', '2012-12-22 16:42:34'),
(30, 'SENİ istiyorum...', '......', 'blue', '3x397x591', '2013-01-01 21:54:37'),
(24, 'Allah''ım sen biliyorsun amin', '@gkhngrlyn', 'yellow', '816x201x690', '2012-12-22 16:45:27'),
(25, 'Ey tanrım, yardım et; daha geç incinelim, daha kolay bağışlayalım..', '...', 'green', '474x208x677', '2012-12-22 17:16:06'),
(26, 'Yürekten dilediğim tüm dileklerim kabul olsun istiyorum...', 'Öge', 'blue', '319x0x673', '2012-12-22 20:09:58'),
(27, 'Dileğim, dileğin olsun...', '- Romeo -', 'blue', '757x198x691', '2012-12-23 22:34:13'),
(28, 'sen gül, güneş doğsun yeniden.', '...', 'yellow', '247x0x538', '2012-12-29 22:26:30'),
(29, 'Yeni yılda oğuzhanın gelirken köpek getirmesini diliyorum', 'Gökhan GÜRLEYEN', 'blue', '86x416x679', '2012-12-30 00:03:31'),
(31, 'Mesafeler yok olsun istiyorum...', 'Lel', 'blue', '144x158x631', '2013-02-25 01:23:21'),
(32, 'Tüm koalalar benim olsun istiyorum...', 'Lel', 'yellow', '1x266x641', '2013-02-25 01:29:10'),
(33, 'Mesafeler yok olsun istiyorum...', 'Lel', 'blue', '367x429x666', '2013-02-25 01:29:58'),
(34, 'tüm koalalar leylanın olsun :)', 'jane', 'green', '858x331x689', '2013-02-25 01:30:13'),
(35, 'Günler uzasın, geceler kısalsın istiyorum.', 'bi'' dost', 'yellow', '4x123x642', '2013-02-25 01:31:10'),
(38, 'bir roman yazmaya başlayacağım emellerimden birisi başarıyı tamamlamak istiyorum.', 'lalasa', 'yellow', '9x3x700', '2013-02-26 12:41:46'),
(36, 'Evime gitmek istiyorum...', 'Lel', 'yellow', '672x275x686', '2013-02-25 01:32:23'),
(37, 'Koala geyiğini sadece ben yapayım istiyorum!', 'MuRtaZa', 'yellow', '104x0x702', '2013-02-25 01:37:20'),
(39, 'Sadece uyurken izlemek istiyorum...', 'tt.', 'yellow', '159x119x699', '2013-03-01 00:10:35'),
(40, 'Sadece tüm umudumu kaybetmek istiyorum', 'Tyler Durden..', 'blue', '505x38x698', '2013-03-01 00:13:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
