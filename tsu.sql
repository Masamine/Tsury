-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016 年 1 月 09 日 09:30
-- サーバのバージョン： 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tsu`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `client`
--

INSERT INTO `client` (`id`, `name`) VALUES
(3, 'グラグラ'),
(5, 'わーい！'),
(6, '株式会社社会式株'),
(7, 'サンプルコープ'),
(8, 'ボンバーマン'),
(16, 'Help'),
(18, 'ABCDEFG'),
(19, 'おーい！お茶'),
(20, 'A'),
(23, '0120'),
(49, 'Aカンパニー'),
(50, 'B会社'),
(51, 'C社'),
(52, 'すごい会社'),
(53, 'ホントにすごい会社'),
(54, 'Happy'),
(56, 'グラフィック'),
(57, 'あの会社'),
(58, 'Hello World'),
(60, '大川株式会社　創立50周年バージョン'),
(61, 'ヒロキ株式会社'),
(75, 'すごい会社'),
(76, 'ものすごい会社'),
(77, 'パン工場'),
(78, 'aaaaaaa'),
(79, '名古屋'),
(80, '012012012'),
(81, 'わーい'),
(82, 'APPLEEEEE'),
(83, '新規さん'),
(84, 'わーるどわいどうぇぶ'),
(85, '毛利探偵事務所'),
(86, 'NASA'),
(87, '中京大学'),
(88, 'コーヒー同好会'),
(89, '会社です。'),
(90, 'ショッカー'),
(91, 'わー'),
(92, 'わーる'),
(93, 'JAXA'),
(94, '777');

-- --------------------------------------------------------

--
-- テーブルの構造 `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `code` varchar(30) NOT NULL,
  `content` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `cost` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) NOT NULL,
  `works_id` int(11) NOT NULL,
  `post_name` varchar(100) NOT NULL,
  `team` varchar(200) NOT NULL,
  `total` int(100) NOT NULL,
  `regist_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `author` int(100) NOT NULL,
  `modified` int(100) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `works_id`, `post_name`, `team`, `total`, `regist_date`, `recent_date`, `status`, `author`, `modified`, `details`) VALUES
(9, 17, 'ブルーマウンテン02', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:3:"DTP";}', 0, '2015-12-24 07:59:30', '2015-12-24 07:59:30', '', 66, 66, ''),
(12, 17, 'キリマンジャロ', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:3:"DTP";}', 0, '2015-12-24 08:00:31', '2015-12-24 08:00:31', '', 66, 66, ''),
(17, 13, 'APTX4869解毒方法', 'a:1:{i:0;s:6:"Design";}', 0, '2015-12-24 08:21:35', '2015-12-24 08:21:35', '', 66, 66, ''),
(18, 14, 'コーヒー？', 'a:2:{i:0;s:4:"Edit";i:1;s:3:"DTP";}', 0, '2015-12-24 08:26:02', '2015-12-24 08:26:02', '', 66, 66, ''),
(19, 16, 'すごい制作物', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 0, '2015-12-24 08:30:49', '2015-12-24 08:30:49', '', 66, 66, ''),
(21, 10, '隕石接近情報取得', 'a:1:{i:0;s:3:"Web";}', 0, '2015-12-25 00:10:17', '2015-12-25 00:10:17', '', 66, 66, ''),
(22, 9, '宇宙船調達', 'a:1:{i:0;s:6:"Design";}', 0, '2015-12-25 00:16:46', '2015-12-25 00:16:46', '', 66, 66, ''),
(23, 10, '避難経路確保', 'a:1:{i:0;s:3:"DTP";}', 0, '2015-12-25 00:47:55', '2015-12-25 00:47:55', '', 66, 66, ''),
(25, 8, '現地滞在費', 'a:1:{i:0;s:6:"Design";}', 370000, '2015-12-25 05:04:55', '2015-12-25 05:04:55', '', 66, 66, ''),
(26, 18, 'JAXAハッカソン', 'a:1:{i:0;s:3:"Web";}', 2555000, '2015-12-25 05:25:46', '2015-12-25 05:25:46', '', 66, 66, ''),
(30, 18, 'じゃくさ', 'a:1:{i:0;s:6:"Design";}', 200000, '2015-12-25 06:45:14', '2015-12-25 06:45:14', '', 66, 66, ''),
(31, 13, 'asdasdada', 'a:1:{i:0;s:3:"Web";}', 100000, '2015-12-25 07:08:45', '2015-12-25 07:08:45', '', 99, 99, ''),
(32, 10, 'A:JDAOIJPKAS', 'a:1:{i:0;s:3:"Web";}', 150000, '2015-12-25 07:14:17', '2015-12-25 07:14:17', '', 66, 66, ''),
(33, 18, '宇宙！', 'a:3:{i:0;s:6:"Design";i:1;s:4:"Edit";i:2;s:3:"DTP";}', 30350000, '2015-12-25 07:18:32', '2015-12-25 07:18:32', '', 66, 66, ''),
(34, 18, '月', 'a:1:{i:0;s:4:"Edit";}', 150000, '2015-12-25 07:25:56', '2015-12-25 07:25:56', '', 66, 66, ''),
(35, 18, '火星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 1120000, '2015-12-25 07:27:12', '2015-12-25 07:27:12', '', 66, 66, ''),
(36, 18, '冥王星', 'a:3:{i:0;s:6:"Design";i:1;s:4:"Edit";i:2;s:3:"DTP";}', 350000, '2015-12-25 07:27:49', '2015-12-25 07:27:49', '', 99, 99, ''),
(37, 14, '豆と水の選定', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 3110000, '2015-12-25 09:36:04', '2015-12-25 09:36:04', '', 66, 66, ''),
(38, 13, 'アイテム製作（追跡メガネ、蝶ネクタイ型変声機、キック力増強シューズ、伸縮サスペンダー、腕時計型麻酔銃）', 'a:4:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";i:3;s:3:"DTP";}', 2150000, '2015-12-25 10:03:15', '2015-12-25 10:03:15', '', 66, 66, ''),
(39, 9, '脱出方法検討', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 270000, '2015-12-28 08:08:36', '2015-12-28 08:08:36', '', 66, 66, ''),
(40, 8, '持っていくおかし（予算1,000円）', 'a:1:{i:0;s:3:"DTP";}', 750, '2015-12-28 08:09:45', '2015-12-28 08:09:45', '', 66, 66, ''),
(41, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 06:45:05', '2016-01-06 06:45:05', '', 66, 66, ''),
(42, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 07:18:00', '2016-01-06 07:18:00', '', 66, 66, ''),
(43, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 07:18:22', '2016-01-06 07:18:22', '', 66, 66, ''),
(44, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 07:18:30', '2016-01-06 07:18:30', '', 66, 66, ''),
(45, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 07:18:54', '2016-01-06 07:18:54', '', 66, 66, ''),
(46, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 07:19:04', '2016-01-06 07:19:04', '', 66, 66, ''),
(47, 18, '水星', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 420000, '2016-01-06 07:19:15', '2016-01-06 07:19:15', '', 66, 66, ''),
(48, 18, 'sadasdasda', 'a:1:{i:0;s:3:"Web";}', 330000, '2016-01-06 07:19:44', '2016-01-06 07:19:44', '', 66, 66, ''),
(49, 18, 'sadasdasda', 'a:1:{i:0;s:3:"Web";}', 330000, '2016-01-06 07:20:06', '2016-01-06 07:20:06', '', 66, 66, ''),
(50, 18, 'sadasdasda', 'a:1:{i:0;s:3:"Web";}', 330000, '2016-01-06 07:20:23', '2016-01-06 07:20:23', '', 66, 66, ''),
(51, 18, 'asdasdfsdgdfgsdfgdfgsdfg', 'a:2:{i:0;s:3:"Web";i:1;s:4:"Edit";}', 350000, '2016-01-06 07:21:40', '2016-01-06 07:21:40', '', 66, 66, ''),
(52, 18, 'asdasdfsdgdfgsdfgdfgsdfg', 'a:2:{i:0;s:3:"Web";i:1;s:4:"Edit";}', 350000, '2016-01-06 07:21:52', '2016-01-06 07:21:52', '', 66, 66, ''),
(53, 18, 'asdasdfsdgdfgsdfgdfgsdfg', 'a:2:{i:0;s:3:"Web";i:1;s:4:"Edit";}', 350000, '2016-01-06 07:22:36', '2016-01-06 07:22:36', '', 66, 66, ''),
(54, 18, 'asdasdfsdgdfgsdfgdfgsdfg', 'a:2:{i:0;s:3:"Web";i:1;s:4:"Edit";}', 350000, '2016-01-06 07:22:44', '2016-01-06 07:22:44', '', 66, 66, ''),
(55, 18, 'asdasdfsdgdfgsdfgdfgsdfg', 'a:2:{i:0;s:3:"Web";i:1;s:4:"Edit";}', 350000, '2016-01-06 07:25:35', '2016-01-06 07:25:35', '', 66, 66, ''),
(56, 18, 'sadasdadadad', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 07:29:00', '2016-01-06 07:29:00', '', 66, 66, ''),
(57, 18, 'sadasdadadad', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 07:29:08', '2016-01-06 07:29:08', '', 66, 66, ''),
(58, 18, 'sadasdadadad', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 07:39:56', '2016-01-06 07:39:56', '', 66, 66, ''),
(59, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 07:40:15', '2016-01-06 07:40:15', '', 66, 66, ''),
(60, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:09:13', '2016-01-06 08:09:13', '', 66, 66, ''),
(61, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:09:20', '2016-01-06 08:09:20', '', 66, 66, ''),
(62, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:09:32', '2016-01-06 08:09:32', '', 66, 66, ''),
(63, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:18:50', '2016-01-06 08:18:50', '', 66, 66, ''),
(64, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:18:56', '2016-01-06 08:18:56', '', 66, 66, ''),
(65, 18, '222222', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:19:32', '2016-01-06 08:19:32', '', 66, 66, ''),
(66, 18, '147896355', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 08:19:49', '2016-01-06 08:19:49', '', 66, 66, ''),
(67, 18, '147896355', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 09:28:54', '2016-01-06 09:28:54', '', 66, 66, ''),
(68, 18, '147896355', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 09:29:06', '2016-01-06 09:29:06', '', 66, 66, ''),
(69, 18, '645164651651', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 09:30:27', '2016-01-06 09:30:27', '', 66, 66, ''),
(70, 18, '645164651651', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 09:33:34', '2016-01-06 09:33:34', '', 66, 66, ''),
(71, 18, '645164651651', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 320000, '2016-01-06 09:33:48', '2016-01-06 09:33:48', '', 66, 66, ''),
(72, 18, '89787878787878', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 5400000, '2016-01-06 09:39:47', '2016-01-06 09:39:47', '', 66, 66, ''),
(73, 18, '89787878787878', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 5400000, '2016-01-06 09:44:39', '2016-01-06 09:44:39', '', 66, 66, ''),
(74, 18, '89787878787878', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 5400000, '2016-01-06 09:44:58', '2016-01-06 09:44:58', '', 66, 66, ''),
(75, 18, '89787878787878', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 5400000, '2016-01-06 09:50:03', '2016-01-06 09:50:03', '', 66, 66, ''),
(76, 18, '89787878787878', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 5400000, '2016-01-06 09:50:45', '2016-01-06 09:50:45', '', 66, 66, ''),
(77, 18, '89787878787878', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 5400000, '2016-01-06 09:51:04', '2016-01-06 09:51:04', '', 66, 66, ''),
(78, 18, 'ハレー彗星', 'a:2:{i:0;s:3:"Web";i:1;s:3:"DTP";}', 380000, '2016-01-06 09:54:10', '2016-01-06 09:54:10', '', 66, 66, ''),
(79, 18, 'ハレー彗星', 'a:2:{i:0;s:3:"Web";i:1;s:3:"DTP";}', 380000, '2016-01-06 09:57:16', '2016-01-06 09:57:16', '', 66, 66, ''),
(80, 18, '流星群', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 3310000, '2016-01-06 09:58:44', '2016-01-06 09:58:44', '', 66, 66, ''),
(81, 18, '流星群', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 3310000, '2016-01-06 09:59:19', '2016-01-06 09:59:19', '', 66, 66, ''),
(82, 18, '流星群', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 3310000, '2016-01-06 10:12:55', '2016-01-06 10:12:55', '', 66, 66, ''),
(83, 18, '流星群2', 'a:2:{i:0;s:6:"Design";i:1;s:4:"Edit";}', 3310000, '2016-01-06 10:13:10', '2016-01-06 10:13:10', '', 66, 66, ''),
(84, 18, 'しし座流星群', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 380000, '2016-01-06 10:24:45', '2016-01-06 10:24:45', '', 66, 66, ''),
(85, 18, 'しし座流星群', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 410000, '2016-01-06 10:25:41', '2016-01-06 10:25:41', '', 66, 66, ''),
(86, 18, 'しし座流星群', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 410000, '2016-01-06 10:27:16', '2016-01-06 10:27:16', '', 66, 66, ''),
(87, 18, 'しし座流星群', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 410000, '2016-01-06 10:27:40', '2016-01-06 10:27:40', '', 66, 66, ''),
(88, 18, 'しし座流星群2', 'a:1:{i:0;s:6:"Design";}', 460000, '2016-01-06 10:28:55', '2016-01-06 10:28:55', '', 66, 66, ''),
(89, 18, 'しし座流星群2', 'a:1:{i:0;s:6:"Design";}', 460000, '2016-01-06 10:30:15', '2016-01-06 10:30:15', '', 66, 66, ''),
(90, 18, 'しし座流星群2', 'a:1:{i:0;s:6:"Design";}', 460000, '2016-01-06 10:31:05', '2016-01-06 10:31:05', '', 66, 66, ''),
(91, 18, '木星', 'a:3:{i:0;s:3:"Web";i:1;s:6:"Design";i:2;s:4:"Edit";}', 350000, '2016-01-07 09:19:18', '2016-01-07 09:19:18', '', 66, 66, 'a:13:{i:0;a:8:{i:0;N;i:1;s:3:"4-O";i:2;s:24:"画像・パーツ制作";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:1;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:2;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:3;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:4;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:5;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:6;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:7;a:8:{i:0;N;i:1;s:5:"1-M-A";i:2;s:72:"プロジェクト進行管理（￥1,000,000〜）制作費の12%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"32500";i:6;s:5:"50000";i:7;s:5:"50000";}i:8;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:9;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:10;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:11;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:12;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}}'),
(92, 18, '木星と金星', 'a:2:{i:0;s:3:"Web";i:1;s:4:"Edit";}', 240000, '2016-01-07 09:23:24', '2016-01-07 09:23:24', '', 66, 66, 'a:8:{i:0;a:8:{i:0;N;i:1;s:3:"4-O";i:2;s:24:"画像・パーツ制作";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:1;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:2;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:3;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:4;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:5;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:6;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:7;a:8:{i:0;N;i:1;s:5:"1-M-A";i:2;s:72:"プロジェクト進行管理（￥1,000,000〜）制作費の12%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"32500";i:6;s:5:"50000";i:7;s:5:"50000";}}'),
(93, 17, '大豆', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 220000, '2016-01-09 04:32:28', '2016-01-09 04:32:28', '', 66, 66, 'a:8:{i:0;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:1;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:2;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:3;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:4;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:5;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:6;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:7;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}}'),
(94, 17, '大豆', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 220000, '2016-01-09 04:37:36', '2016-01-09 04:37:36', '', 66, 66, 'a:8:{i:0;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:1;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:30:"プロジェクト進行管理";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:2;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:3;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:4;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:5;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:6;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:7;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}}'),
(95, 17, '大豆2', 'a:2:{i:0;s:3:"Web";i:1;s:6:"Design";}', 220000, '2016-01-09 04:42:02', '2016-01-09 04:42:02', '', 66, 66, 'a:8:{i:0;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:1;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:30:"プロジェクト進行管理";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:2;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:3;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:4;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:5;a:8:{i:0;N;i:1;s:5:"0-ttl";i:2;s:9:"見出し";i:3;s:1:"0";i:4;s:0:"";i:5;s:1:"0";i:6;s:1:"0";i:7;s:1:"0";}i:6;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:7;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}}'),
(96, 16, 'これはすごい', 'a:1:{i:0;s:3:"Web";}', 150000, '2016-01-09 04:43:04', '2016-01-09 04:43:04', '', 66, 66, 'a:4:{i:0;a:8:{i:0;N;i:1;s:5:"1-M-A";i:2;s:72:"プロジェクト進行管理（￥1,000,000〜）制作費の12%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"32500";i:6;s:5:"50000";i:7;s:5:"50000";}i:1;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:2;a:8:{i:0;N;i:1;s:3:"4-C";i:2;s:36:"テンプレートコーディング";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:3;a:8:{i:0;N;i:1;s:3:"4-O";i:2;s:24:"画像・パーツ制作";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}}'),
(97, 16, 'SUGEEEEEEE', 'a:1:{i:0;s:4:"Edit";}', 30000, '2016-01-09 04:48:19', '2016-01-09 04:48:19', '', 66, 66, 'a:1:{i:0;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}}'),
(98, 17, '123', 'a:1:{i:0;s:6:"Design";}', 230000, '2016-01-09 08:05:28', '2016-01-09 08:05:28', '', 66, 66, 'a:6:{i:0;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:1;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}i:2;a:8:{i:0;N;i:1;s:5:"1-M-B";i:2;s:80:"プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:3;a:8:{i:0;N;i:1;s:5:"1-M-A";i:2;s:72:"プロジェクト進行管理（￥1,000,000〜）制作費の12%以上";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"32500";i:6;s:5:"50000";i:7;s:5:"50000";}i:4;a:8:{i:0;N;i:1;s:6:"3-PC-A";i:2;s:39:"ページ制作（レスポンシブ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"27500";i:6;s:5:"40000";i:7;s:5:"40000";}i:5;a:8:{i:0;N;i:1;s:6:"3-PC-B";i:2;s:36:"ページ制作（固定ページ）";i:3;s:1:"1";i:4;s:6:"人日";i:5;s:5:"22500";i:6;s:5:"30000";i:7;s:5:"30000";}}');

-- --------------------------------------------------------

--
-- テーブルの構造 `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `team`
--

INSERT INTO `team` (`id`, `name`) VALUES
(1, 'Web'),
(2, 'Design'),
(3, 'Edit'),
(4, 'DTP');

-- --------------------------------------------------------

--
-- テーブルの構造 `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `content` varchar(100) NOT NULL,
  `cost` int(11) NOT NULL,
  `sales` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `unit`
--

INSERT INTO `unit` (`id`, `code`, `content`, `cost`, `sales`) VALUES
(3, '3-PC-B', 'ページ制作（固定ページ）', 22500, 30000),
(4, '1-M-A', 'プロジェクト進行管理（￥1,000,000〜）制作費の12%以上', 32500, 50000),
(5, '1-M-B', 'プロジェクト進行管理（￥100,000〜￥999,000）制作費の10%以上', 27500, 40000),
(6, '2-DB', 'データベース設計', 27500, 40000),
(7, '2-PP-A', 'ページ設計（レスポンシブ）', 32500, 50000),
(8, '3-PC-A', 'ページ制作（レスポンシブ）', 27500, 40000),
(9, '4-C', 'テンプレートコーディング', 22500, 30000),
(10, '2-P', '要件定義、企画・提案', 27500, 40000),
(11, '4-S', 'スクリプト制作', 27500, 40000),
(12, '4-O', '画像・パーツ制作', 22500, 30000),
(13, '4-MF', 'メールフォーム設置', 22500, 30000);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `id_name` varchar(20) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `thumb` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 PACK_KEYS=0;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`user_id`, `id_name`, `pass`, `name`, `mail`, `thumb`) VALUES
(66, 'doko', 'f06b05ae55956ec11115ef940c9618a5bb5f38a6e13bdf29b0361d713f629cc4', 'どこー', 'doko@grahic.co.jp', '20160109151251201512251857002015122518555220151225185525ika.jpg'),
(99, 'Mas', 'f06b05ae55956ec11115ef940c9618a5bb5f38a6e13bdf29b0361d713f629cc4', 'MS', 'doko@graphic.co.jp', 'img_noimg.jpg'),
(100, 'a', 'f06b05ae55956ec11115ef940c9618a5bb5f38a6e13bdf29b0361d713f629cc4', '0000', 'doko@graphic.co.jp', 'mario.png'),
(101, '1111', '8c520ced222553c25f3c42ede72ecba8b107a25976046f68793c82fdc01b34ca', '1234', 'doko@graphic.co.jp', 'img_noimg.jpg'),
(102, '333', 'f06b05ae55956ec11115ef940c9618a5bb5f38a6e13bdf29b0361d713f629cc4', '333', 'doko@graphic.co.jp', 'icon_red.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `id` bigint(20) NOT NULL,
  `client` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `staff` varchar(50) NOT NULL,
  `regist` datetime NOT NULL,
  `updates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `works`
--

INSERT INTO `works` (`id`, `client`, `title`, `staff`, `regist`, `updates`) VALUES
(7, '85', '犯人探し', 'コゴロー', '2015-09-30 18:38:22', '2015-09-30 09:38:22'),
(8, '86', '火星探査機の開発と現地同行', 'ジョージ', '2015-09-30 19:45:34', '2015-12-28 08:09:45'),
(9, '86', '太陽系からの脱出', '山田', '2015-09-30 19:49:20', '2015-12-28 08:08:36'),
(10, '86', '隕石を撃ち落とす', 'スズキ', '2015-09-30 19:51:04', '2015-12-25 07:14:17'),
(13, '85', '黒の組織壊滅', 'あの人', '2015-10-01 09:24:18', '2015-12-25 10:03:15'),
(14, '88', 'スタバを超えるコーヒーの提案', '1000代', '2015-10-03 10:01:33', '2015-12-25 09:36:04'),
(16, '52', 'すごい案件', 'あの人', '2015-10-03 17:15:55', '2016-01-09 04:48:19'),
(17, '88', '豆選定', '山田', '2015-10-03 17:17:21', '2016-01-09 08:05:28'),
(18, '93', 'ハッカソン', '先生', '2015-12-25 14:24:11', '2016-01-06 09:44:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id` (`id`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
