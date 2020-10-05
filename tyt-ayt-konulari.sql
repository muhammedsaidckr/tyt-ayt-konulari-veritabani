-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2020 at 06:16 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sea`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tyt', 'TYT', NULL, NULL),
(2, 'ayt', 'AYT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `exam_type_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `exam_type_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Türkçe', NULL, NULL),
(2, 1, 'Matematik', NULL, NULL),
(3, 2, 'Edebiyat', NULL, NULL),
(4, 2, 'Matematik', NULL, NULL),
(5, 1, 'Geometri', NULL, NULL),
(6, 1, 'Fizik', NULL, NULL),
(7, 1, 'Kimya', NULL, NULL),
(8, 1, 'Biyoloji', NULL, NULL),
(9, 1, 'Tarih', NULL, NULL),
(10, 1, 'Coğrafya', NULL, NULL),
(11, 1, 'Felsefe', NULL, NULL),
(12, 1, 'Din Kültürü', NULL, NULL),
(13, 2, 'Geometri', NULL, NULL),
(14, 2, 'Fizik', NULL, NULL),
(15, 2, 'Kimya', NULL, NULL),
(16, 2, 'Biyoloji', NULL, NULL),
(17, 2, 'Coğrafya-1', NULL, NULL),
(18, 2, 'Tarih', NULL, NULL),
(19, 2, 'Felsefe', NULL, NULL),
(20, 2, 'Din Kültürü', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_titles`
--

CREATE TABLE `sub_titles` (
  `id` bigint UNSIGNED NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_titles`
--

INSERT INTO `sub_titles` (`id`, `lesson_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sözcükte Anlam', NULL, NULL),
(2, 1, 'Söz Yorumu', NULL, NULL),
(3, 1, 'Deyim ve Atasözü', NULL, NULL),
(4, 1, 'Cümlede Anlam', NULL, NULL),
(5, 1, 'Paragrafta Anlam', NULL, NULL),
(6, 1, 'Ses Bilgisi', NULL, NULL),
(7, 1, 'Yazım Kuralları', NULL, NULL),
(8, 1, 'Noktalama İşaretleri', NULL, NULL),
(9, 1, 'Sözcükte Yapı', NULL, NULL),
(10, 1, 'Sözcük Türleri', NULL, NULL),
(11, 1, 'Fill, Ek Fiil, Fiilimsi', NULL, NULL),
(12, 1, 'Sözcük Grupları', NULL, NULL),
(13, 1, 'Cümlenin Öğeleri', NULL, NULL),
(14, 1, 'Cümle Türleri', NULL, NULL),
(15, 1, 'Anlatım Bozukluğu', NULL, NULL),
(16, 2, 'Temel Kavramlar', NULL, NULL),
(17, 2, 'Sayı Basamakları', NULL, NULL),
(18, 2, 'Bölme ve Bölünebilme', NULL, NULL),
(19, 2, 'EBOB - EKOK', NULL, NULL),
(20, 2, 'Rasyonel Sayılar', NULL, NULL),
(21, 2, 'Basit Eşitsizlikler', NULL, NULL),
(22, 2, 'Mutlak Değerler', NULL, NULL),
(23, 2, 'Üslü Sayılar', NULL, NULL),
(24, 2, 'Köklü Sayılar', NULL, NULL),
(25, 2, 'Çarpanlara Ayırma', NULL, NULL),
(26, 2, 'Oran Orantı', NULL, NULL),
(27, 2, 'Denklem Çözme', NULL, NULL),
(28, 2, 'Problemler', NULL, NULL),
(29, 2, 'Kümeler', NULL, NULL),
(30, 2, 'Kartezyen Çarpım', NULL, NULL),
(31, 2, 'Mantık', NULL, NULL),
(32, 2, 'Fonksiyonlar', NULL, NULL),
(33, 2, 'Polinomlar', NULL, NULL),
(34, 2, '2.Dereceden Denklemler', NULL, NULL),
(35, 2, 'Permütasyon ve Kombinasyon', NULL, NULL),
(36, 2, 'Olasılık', NULL, NULL),
(37, 2, 'İstatistik', NULL, NULL),
(38, 5, 'Temel Kavramlar', NULL, NULL),
(39, 5, 'Doğruda Açılar', NULL, NULL),
(40, 5, 'Üçgende Açılar', NULL, NULL),
(41, 5, 'Özel Üçgenler', NULL, NULL),
(42, 5, 'Açıortay', NULL, NULL),
(43, 5, 'Kenarortay', NULL, NULL),
(44, 5, 'Üçgende Alan', NULL, NULL),
(45, 5, 'Üçgende Benzerlik', NULL, NULL),
(46, 5, 'Açı Kenar Bağıntıları', NULL, NULL),
(47, 5, 'Çokgenler', NULL, NULL),
(48, 5, 'Özel Dörtgenler', NULL, NULL),
(49, 5, 'Çember ve Daire', NULL, NULL),
(50, 5, 'Noktanın Analitiği', NULL, NULL),
(51, 5, 'Doğrunun Analitiği', NULL, NULL),
(52, 5, 'Katı Cisimler', NULL, NULL),
(53, 6, 'Fizik Bilimine Giriş', NULL, NULL),
(54, 6, 'Madde ve Özellikleri', NULL, NULL),
(55, 6, 'Sıvıların Kaldırma Kuvveti', NULL, NULL),
(56, 6, 'Basınç', NULL, NULL),
(57, 6, 'Isı, Sıcaklık ve Genleşme', NULL, NULL),
(58, 6, 'Hareket', NULL, NULL),
(59, 6, 'Dinamik', NULL, NULL),
(60, 6, 'İş, Güç ve Enerji', NULL, NULL),
(61, 6, 'Elektrik', NULL, NULL),
(62, 6, 'Optik', NULL, NULL),
(63, 6, 'Manyetizma', NULL, NULL),
(64, 6, 'Dalgalar', NULL, NULL),
(65, 7, 'Kimya Bilimi', NULL, NULL),
(66, 7, 'Atom ve Periyodik Sistem', NULL, NULL),
(67, 7, 'Kimyasal Türler Arası Etkileşimler', NULL, NULL),
(68, 7, 'Kimyasal Hesaplamalar', NULL, NULL),
(69, 7, 'Kimyanın Temel Kanunları', NULL, NULL),
(70, 7, 'Asit, Baz ve Tuz', NULL, NULL),
(71, 7, 'Maddenin Halleri', NULL, NULL),
(72, 7, 'Karışımlar', NULL, NULL),
(73, 7, 'Doğa ve Kimya', NULL, NULL),
(74, 7, 'Kimya Her Yerde', NULL, NULL),
(75, 8, 'Canlıların Ortak Özellikleri', NULL, NULL),
(76, 8, 'Canlıların Temel Bileşenleri', NULL, NULL),
(77, 8, 'Hücre ve Organelleri', NULL, NULL),
(78, 8, 'Hücre Zarından Madde Geçişi', NULL, NULL),
(79, 8, 'Canlıların Sınıflandırılması', NULL, NULL),
(80, 8, 'Mitoz ve Eşeysiz Üreme', NULL, NULL),
(81, 8, 'Mayoz ve Eşeyli Üreme', NULL, NULL),
(82, 8, 'Kalıtım', NULL, NULL),
(83, 8, 'Ekosistem Ekolojisi', NULL, NULL),
(84, 8, 'Güncel Çevre Sorunları', NULL, NULL),
(85, 9, 'Tarih Bilimi', NULL, NULL),
(86, 9, 'İlk Uygarlıklar', NULL, NULL),
(87, 9, 'İlk Türk Devletleri', NULL, NULL),
(88, 9, 'İslam Tarihi ve Uygarlığı', NULL, NULL),
(89, 9, 'Türk-İslam Devletleri', NULL, NULL),
(90, 9, 'Orta Çağ ve Avrupa Tarihi', NULL, NULL),
(91, 9, 'Türkiye Tarihi', NULL, NULL),
(92, 9, 'Beylikten Devlete (1300-1453)', NULL, NULL),
(93, 9, 'Dünya Gücü: Osmanlı Devleti (1453-1600)', NULL, NULL),
(94, 9, 'Osmanlı Kültür ve Medeniyeti', NULL, NULL),
(95, 9, 'Yeni ve Yakın Çağda Avrupa Tarihi', NULL, NULL),
(96, 9, 'Arayış Yılları (17. Yüzyıl)', NULL, NULL),
(97, 9, 'Yeni Çağda Avrupa', NULL, NULL),
(98, 9, 'En Uzun Yüzyıl (1800-1922)', NULL, NULL),
(99, 9, '20. Yüzyıl Başlarında Osmanlı Devleti', NULL, NULL),
(100, 9, '1. Dünya Savaşı - Milli Mücadeleye Hazırlık Dönemi', NULL, NULL),
(101, 9, 'Kurtuluş Savaşı ve Antlaşmalar', NULL, NULL),
(102, 9, 'I. TBMM Dönemi', NULL, NULL),
(103, 9, 'Türk İnkılabı', NULL, NULL),
(104, 9, 'Atatürkçülük ve Atatürk İlkeleri', NULL, NULL),
(105, 9, 'Türk Dış Politikası', NULL, NULL),
(106, 10, 'Doğa ve İnsan', NULL, NULL),
(107, 10, 'Dünya\'nın Şekli ve Hareketleri', NULL, NULL),
(108, 10, 'Coğrafi Konum', NULL, NULL),
(109, 10, 'Harita Bilgisi', NULL, NULL),
(110, 10, 'Atmosfer ve Sıcaklık', NULL, NULL),
(111, 10, 'İklimler', NULL, NULL),
(112, 10, 'Basınç ve Rüzgarlar', NULL, NULL),
(113, 10, 'Nem, Yağış ve Buharlaşma', NULL, NULL),
(114, 10, 'İç Kuvvetler / Dış Kuvvetler', NULL, NULL),
(115, 10, 'Su - Toprak ve Bitkiler', NULL, NULL),
(116, 10, 'Nüfus', NULL, NULL),
(117, 10, 'Göç', NULL, NULL),
(118, 10, 'Yerleşme', NULL, NULL),
(119, 10, 'Türkiye\'nin Yer Şekilleri', NULL, NULL),
(120, 10, 'Ekonomik Faaliyetler', NULL, NULL),
(121, 10, 'Bölgeler', NULL, NULL),
(122, 10, 'Uluslararası Ulaşım Hatları', NULL, NULL),
(123, 10, 'Çevre ve Toplum', NULL, NULL),
(124, 10, 'Doğal Afetler', NULL, NULL),
(125, 11, 'Felsefe\'nin Konusu', NULL, NULL),
(126, 11, 'Bilgi Felsefesi', NULL, NULL),
(127, 11, 'Varlık Felsefesi', NULL, NULL),
(128, 11, 'Ahlak Felsefesi', NULL, NULL),
(129, 11, 'Sanat Felsefesi', NULL, NULL),
(130, 11, 'Din Felsefesi', NULL, NULL),
(131, 11, 'Siyaset Felsefesi', NULL, NULL),
(132, 11, 'Bilim Felsefesi', NULL, NULL),
(133, 12, 'Bilgi ve İnanç', NULL, NULL),
(134, 12, 'İslam ve İbadet', NULL, NULL),
(135, 12, 'Ahlak ve Değerler', NULL, NULL),
(136, 12, 'Allah İnsan İlişkisi', NULL, NULL),
(137, 12, 'Hz. Muhammed (S.A.V)', NULL, NULL),
(138, 12, 'Vahiy ve Akıl', NULL, NULL),
(139, 12, 'İslam Düşüncesinde Yorumlar, Mezhepler', NULL, NULL),
(140, 12, 'Din, Kültür ve Medeniyet', NULL, NULL),
(141, 12, 'İslam ve Bilim, Estetik, Barış', NULL, NULL),
(142, 12, 'Yaşayan Dinler', NULL, NULL),
(143, 3, 'Anlam Bilgisi', NULL, NULL),
(144, 3, 'Dil Bilgisi', NULL, NULL),
(145, 3, 'Güzel Sanatlar ve Edebiyat', NULL, NULL),
(146, 3, 'Metinlerin Sınıflandırılması', NULL, NULL),
(147, 3, 'Şiir Bilgisi', NULL, NULL),
(148, 3, 'Edebi Sanatlar', NULL, NULL),
(149, 3, 'Türk Edebiyatı Dönemleri', NULL, NULL),
(150, 3, 'İslamiyet Öncesi Türk Edebiyatı ve Geçiş Dönemi', NULL, NULL),
(151, 3, 'Halk Edebiyatı', NULL, NULL),
(152, 3, 'Divan Edebiyatı', NULL, NULL),
(153, 3, 'Tanzimat Edebiyatı', NULL, NULL),
(154, 3, 'Servet-Fünun Edebiyatı', NULL, NULL),
(155, 3, 'Fecr-i Ati Edebiyatı', NULL, NULL),
(156, 3, 'Milli Edebiyat', NULL, NULL),
(157, 3, 'Cumhuriyet Şiiri', NULL, NULL),
(158, 3, 'Cumhuriyet Romanı', NULL, NULL),
(159, 3, 'Cumhuriyet Dönemi', NULL, NULL),
(160, 3, 'Edebiyat Akımları', NULL, NULL),
(161, 3, 'Dünya Edebiyatı', NULL, NULL),
(162, 4, 'Temel Kavramlar', NULL, NULL),
(163, 4, 'Sayı Basamakları', NULL, NULL),
(164, 4, 'Bölme ve Bölünebilme ', NULL, NULL),
(165, 4, 'EBOB-EKOK', NULL, NULL),
(166, 4, 'Rasyonel Sayılar', NULL, NULL),
(167, 4, 'Basit Eşitsizlikler', NULL, NULL),
(168, 4, 'Mutlak Değer', NULL, NULL),
(169, 4, 'Üslü Sayılar', NULL, NULL),
(170, 4, 'Köklü Sayılar', NULL, NULL),
(171, 4, 'Çarpanlara Ayırma', NULL, NULL),
(172, 4, 'Oran Orantı', NULL, NULL),
(173, 4, 'Denklem Çözme', NULL, NULL),
(174, 4, 'Problemler', NULL, NULL),
(175, 4, 'Kümeler', NULL, NULL),
(176, 4, 'Kartezyen Çarpım', NULL, NULL),
(177, 4, 'Mantık', NULL, NULL),
(178, 4, 'Fonksiyonlar', NULL, NULL),
(179, 4, 'Polinomlar', NULL, NULL),
(180, 4, '2.Dereceden Denklemler', NULL, NULL),
(181, 4, 'Permütasyon ve Kombinasyon', NULL, NULL),
(182, 4, 'Binom ve Olasılık', NULL, NULL),
(183, 4, 'İstatistik', NULL, NULL),
(184, 4, 'Karmaşık Sayılar', NULL, NULL),
(185, 4, '2.Dereceden Eşitsizlikler', NULL, NULL),
(186, 4, 'Parabol', NULL, NULL),
(187, 4, 'Triginometri', NULL, NULL),
(188, 4, 'Logaritma', NULL, NULL),
(189, 4, 'Diziler', NULL, NULL),
(190, 4, 'Limit', NULL, NULL),
(191, 4, 'Türev', NULL, NULL),
(192, 4, 'İntegral', NULL, NULL),
(193, 13, 'Temel Kavramlar', NULL, NULL),
(194, 13, 'Doğruda Açılar', NULL, NULL),
(195, 13, 'Üçgende Açılar', NULL, NULL),
(196, 13, 'Özel Üçgenler', NULL, NULL),
(197, 13, 'Açıortay', NULL, NULL),
(198, 13, 'Kenarortay', NULL, NULL),
(199, 13, 'Üçgende Alan', NULL, NULL),
(200, 13, 'Üçgende Benzerlik', NULL, NULL),
(201, 13, 'Açı Kenar Bağıntıları', NULL, NULL),
(202, 13, 'Çokgenler', NULL, NULL),
(203, 13, 'Özel Dörtgenler', NULL, NULL),
(204, 13, 'Çember ve Daire', NULL, NULL),
(205, 13, 'Analitik Geometri', NULL, NULL),
(206, 13, 'Katı Cisimler (Uzay Geometri)', NULL, NULL),
(207, 13, 'Çemberin Analitiği', NULL, NULL),
(208, 14, 'Vektörler', NULL, NULL),
(209, 14, 'Kuvvet, Tork ve Denge', NULL, NULL),
(210, 14, 'Kütle Merkezi', NULL, NULL),
(211, 14, 'Basit Makineler', NULL, NULL),
(212, 14, 'Hareket', NULL, NULL),
(213, 14, 'Newton\'un Hareket Yasaları', NULL, NULL),
(214, 14, 'İş, Güç ve Enerji II', NULL, NULL),
(215, 14, 'Atışlar', NULL, NULL),
(216, 14, 'İtme ve Momentum', NULL, NULL),
(217, 14, 'Elektrik Alan ve Potansiyel', NULL, NULL),
(218, 14, 'Paralel Levhalar ve Sığa', NULL, NULL),
(219, 14, 'Manyetik Alan ve Manyetik Kuvvet', NULL, NULL),
(220, 14, 'İndüksiyon, Alternatif Akım ve Transformatörler', NULL, NULL),
(221, 14, 'Çembersel Hareket', NULL, NULL),
(222, 14, 'Kütle Çekim ve Kepler Yasaları', NULL, NULL),
(223, 14, 'Basit Harmonik Hareket', NULL, NULL),
(224, 14, 'Dalga Mekaniği ve Elektromanyetik Dalgalar', NULL, NULL),
(225, 14, 'Atom Modelleri', NULL, NULL),
(226, 14, 'Büyük Patlama ve Radyoaktivite', NULL, NULL),
(227, 14, 'Modern Fizik', NULL, NULL),
(228, 14, 'Modern Fiziğin Teknolojideki Uygulamaları', NULL, NULL),
(229, 15, 'Kimya Bilimi', NULL, NULL),
(230, 15, 'Atom ve Periyodik Sistem', NULL, NULL),
(231, 15, 'Kimyasal Türler Arası Etkileşimler', NULL, NULL),
(232, 15, 'Kimyasal Hesaplamalar', NULL, NULL),
(233, 15, 'Kimyanın Temel Kanunları', NULL, NULL),
(234, 15, 'Asit, Baz ve Tuz', NULL, NULL),
(235, 15, 'Maddenin Halleri', NULL, NULL),
(236, 15, 'Karışımlar', NULL, NULL),
(237, 15, 'Doğa ve Kimya', NULL, NULL),
(238, 15, 'Kimya Her Yerde', NULL, NULL),
(239, 15, 'Modern Atom Teorisi', NULL, NULL),
(240, 15, 'Gazlar', NULL, NULL),
(241, 15, 'Çözeltiler', NULL, NULL),
(242, 15, 'Kimyasal Tepkimelerde Enerji', NULL, NULL),
(243, 15, 'Kimyasal Tepkimelerde Hız', NULL, NULL),
(244, 15, 'Kimyasal Tepkimelerde Denge', NULL, NULL),
(245, 15, 'Asit-Baz Dengesi', NULL, NULL),
(246, 15, 'Çözünürlük Dengesi', NULL, NULL),
(247, 15, 'Kimya ve Elektrik', NULL, NULL),
(248, 15, 'Karbon Kimyasına Giriş', NULL, NULL),
(249, 15, 'Organik Kimya', NULL, NULL),
(250, 16, 'Sinir Sistemi', NULL, NULL),
(251, 16, 'Endokrin Sistemi', NULL, NULL),
(252, 16, 'Duyu Organları', NULL, NULL),
(253, 16, 'Destek ve Hareket Sistemi', NULL, NULL),
(254, 16, 'Sindirim Sistemi', NULL, NULL),
(255, 16, 'Dolaşım ve Bağışıklık Sistemi', NULL, NULL),
(256, 16, 'Solunum Sistemi', NULL, NULL),
(257, 16, 'Boşaltım Sistemi', NULL, NULL),
(258, 16, 'Üriner Sistem', NULL, NULL),
(259, 16, 'Üreme Sistemi ve Embriyonik Gelişim', NULL, NULL),
(260, 16, 'Komünite ve Popülasyon Ekolojisi', NULL, NULL),
(261, 16, 'Nükleik Asitler', NULL, NULL),
(262, 16, 'Genetik Şifre ve Protein Sentezi', NULL, NULL),
(263, 16, 'Canlılık ve Enerji ', NULL, NULL),
(264, 16, 'Fotosentez ve Kemosentez', NULL, NULL),
(265, 16, 'Hücresel Solunum', NULL, NULL),
(266, 16, 'Bitki Biyolojisi', NULL, NULL),
(267, 16, 'Canlılar ve Çevre', NULL, NULL),
(268, 17, 'Ekosistem', NULL, NULL),
(269, 17, 'Doğadaki Esktrem Olayları', NULL, NULL),
(270, 17, 'İlk ve Medeniyet Şehirler', NULL, NULL),
(271, 17, 'Nüfus Politikaları', NULL, NULL),
(272, 17, 'Türkiye\'de Nüfus ve Yerleştirme', NULL, NULL),
(273, 17, 'Ekonomik Faaliyetler', NULL, NULL),
(274, 17, 'Göç ve Şehirleşme', NULL, NULL),
(275, 17, 'Türkiye Ekonomisi', NULL, NULL),
(276, 17, 'Türkiye\'nin Jeopolitik Konumu', NULL, NULL),
(277, 17, 'Bölgesel Kalkınma Projeleri', NULL, NULL),
(278, 17, 'İklim ve Yer Şekilleri', NULL, NULL),
(279, 17, 'Ülkeler Arası Etkileşim', NULL, NULL),
(280, 17, 'Küresel ve Bölgesel Örgütler', NULL, NULL),
(281, 17, 'Üretim Alanları ve Ulaşım Ağları', NULL, NULL),
(282, 17, 'Bölgeler ve Ülkeler', NULL, NULL),
(283, 17, 'Çevre ve Toplum ', NULL, NULL),
(284, 17, 'Doğal Afetler', NULL, NULL),
(285, 18, 'Tarih Bilimi', NULL, NULL),
(286, 18, 'İlk Uygarlıklar', NULL, NULL),
(287, 18, 'İlk Türk Devletleri', NULL, NULL),
(288, 18, 'İslam Tarihi ve Uygarlığı', NULL, NULL),
(289, 18, 'Türk-İslam Devletleri', NULL, NULL),
(290, 18, 'Orta Çağ ve Avrupa Tarihi', NULL, NULL),
(291, 18, 'Türkiye Tarihi', NULL, NULL),
(292, 18, 'Beylikten Devlete (1300-1453)', NULL, NULL),
(293, 18, 'Dünya Gücü: Osmanlı Devleti (1453-1600)', NULL, NULL),
(294, 18, 'Osmanlı Kültür ve Medeniyeti', NULL, NULL),
(295, 18, 'Yeni ve Yakın Çağda Avrupa Tarihi', NULL, NULL),
(296, 18, 'Arayış Yılları (17.Yüzyıl)', NULL, NULL),
(297, 18, 'Yeni Çağda Avrupa', NULL, NULL),
(298, 18, 'En Uzun Yüzyıl (1800-1922)', NULL, NULL),
(299, 18, '20. Yüzyıl Başlarında Osmanlı Devleti', NULL, NULL),
(300, 18, '1. Dünya Savaşı - Milli Mücadeleye Hazırlık Dönemi', NULL, NULL),
(301, 18, 'Kurtuluş Savaşı ve Antlaşmalar', NULL, NULL),
(302, 18, 'I. TBMM Dönemi', NULL, NULL),
(303, 18, 'Türk İnkılabı', NULL, NULL),
(304, 18, 'Atatürkçülük ve Atatürk İlkeleri', NULL, NULL),
(305, 18, 'Türk Dış Politikası', NULL, NULL),
(306, 18, 'Atatürk\'ün Ölümü', NULL, NULL),
(307, 18, '20.yy Başlarında Dünya', NULL, NULL),
(308, 18, 'İkinci Dünya Savaşı', NULL, NULL),
(309, 18, 'Soğuk Savaş Dönemi', NULL, NULL),
(310, 18, 'Yumuşama Dönemi ve Sonrası', NULL, NULL),
(311, 18, 'Küreselleşen Dünya', NULL, NULL),
(312, 18, 'XXI. Yüzyılın Eşiğinde Türkiye ve Dünya', NULL, NULL),
(313, 19, 'Felsefe\'nin Konusu', NULL, NULL),
(314, 19, 'Bilgi Felsefesi', NULL, NULL),
(315, 19, 'Varlık Felsefesi', NULL, NULL),
(316, 19, 'Ahlak Felsefesi', NULL, NULL),
(317, 19, 'Sanat Felsefesi', NULL, NULL),
(318, 19, 'Din Felsefesi', NULL, NULL),
(319, 19, 'Siyaset Felsefesi', NULL, NULL),
(320, 19, 'Bilim Felsefesi', NULL, NULL),
(321, 19, 'Mantığa Giriş', NULL, NULL),
(322, 19, 'Klasik Mantık', NULL, NULL),
(323, 19, 'Mantık ve Dil', NULL, NULL),
(324, 19, 'Sembolik Mantık', NULL, NULL),
(325, 19, 'Psikoloji Bilimini Tanıyalım', NULL, NULL),
(326, 19, 'Psikolojinin Temel Süreçleri', NULL, NULL),
(327, 19, 'Öğrenme Bellek Düşünme', NULL, NULL),
(328, 19, 'Ruh Sağlığının Temelleri', NULL, NULL),
(329, 19, 'Sosyolojiye Giriş', NULL, NULL),
(330, 19, 'Birey ve Toplum', NULL, NULL),
(331, 19, 'Toplumsal Yapı', NULL, NULL),
(332, 19, 'Toplumsal Değişme ve Gelişme', NULL, NULL),
(333, 19, 'Toplum ve Kültür', NULL, NULL),
(334, 19, 'Toplumsal Kurumlar', NULL, NULL),
(335, 20, 'Dünya ve Ahiret', NULL, NULL),
(336, 20, 'Kur\'an\'a Göre Hz.Muhammed', NULL, NULL),
(337, 20, 'Kur\'an\'da Bazı Kavramlar', NULL, NULL),
(338, 20, 'Kur\'an\'dan Mesajlar', NULL, NULL),
(339, 20, 'İnançla İlgili Meseleler', NULL, NULL),
(340, 20, 'İslam ve Bilim', NULL, NULL),
(341, 20, 'Anadolu\'da İslam', NULL, NULL),
(342, 20, 'İslam Düşüncesinde Tasavvufi Yorumlar ve Mezhepler', NULL, NULL),
(343, 20, 'Güncel Dini Meseleler', NULL, NULL),
(344, 20, 'Yaşayan Dinler', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_slug_unique` (`slug`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_exam_type_id_index` (`exam_type_id`);

--
-- Indexes for table `sub_titles`
--
ALTER TABLE `sub_titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_titles_lesson_id_index` (`lesson_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_titles`
--
ALTER TABLE `sub_titles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
