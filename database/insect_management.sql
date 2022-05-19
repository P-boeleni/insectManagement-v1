-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 5 月 19 日 04:15
-- サーバのバージョン： 5.7.32
-- PHP のバージョン: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `insect_management`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `exchange`
--

CREATE TABLE `exchange` (
  `id` int(11) NOT NULL,
  `individual_id` varchar(50) NOT NULL,
  `exchange` date NOT NULL,
  `weight` float NOT NULL,
  `use_mushroom` varchar(50) NOT NULL,
  `bottle` int(11) NOT NULL,
  `ex_memo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `insect_data`
--

CREATE TABLE `insect_data` (
  `id` int(11) NOT NULL,
  `individual_id` varchar(50) NOT NULL COMMENT '個体番号',
  `name` varchar(50) NOT NULL,
  `eon` varchar(8) NOT NULL COMMENT '累代',
  `origin` varchar(255) NOT NULL COMMENT '産地',
  `size` float DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `pupation` varchar(10) DEFAULT NULL COMMENT '蛹化日',
  `emergence_day` varchar(10) DEFAULT NULL COMMENT '羽化日',
  `meal_day` varchar(10) DEFAULT NULL COMMENT '後食日',
  `gender` varchar(15) DEFAULT NULL COMMENT '性別',
  `percentage` date DEFAULT NULL COMMENT '割り出し日',
  `parents_id` varchar(50) DEFAULT NULL COMMENT '親情報登録',
  `blood_id` varchar(50) DEFAULT NULL COMMENT '血統名',
  `die_data` date DEFAULT NULL COMMENT '死亡確認日',
  `administrator_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `insect_data`
--

INSERT INTO `insect_data` (`id`, `individual_id`, `name`, `eon`, `origin`, `size`, `memo`, `pupation`, `emergence_day`, `meal_day`, `gender`, `percentage`, `parents_id`, `blood_id`, `die_data`, `administrator_id`) VALUES
(1, 'DACd-001', 'アンタエウスオオクワガタ', 'WF3', '中国広西壮族自治区大瑶山', 70, NULL, '', NULL, '2017/08', 'male', NULL, NULL, NULL, '2018-09-11', 'dakachin'),
(2, 'DAKc-A03', 'アンタエウスオオクワガタ', 'WF1', 'Myammer kachin chudorazi', 74, '', '', '2019/05/09', '2019/08/19', 'male', NULL, NULL, NULL, NULL, 'dakachin');

-- --------------------------------------------------------

--
-- テーブルの構造 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `administrator_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `mating_data`
--

CREATE TABLE `mating_data` (
  `id` int(11) NOT NULL,
  `male_id` varchar(255) NOT NULL,
  `female_id` varchar(255) NOT NULL,
  `mating_start` date NOT NULL,
  `mating_end` date DEFAULT NULL,
  `mating_memo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `spawning_data`
--

CREATE TABLE `spawning_data` (
  `id` int(11) NOT NULL,
  `set_id` varchar(30) NOT NULL,
  `set_start` date NOT NULL,
  `set_end` date DEFAULT NULL,
  `larvae_num` int(5) DEFAULT NULL,
  `egg_num` int(5) DEFAULT NULL,
  `mating_id` varchar(50) NOT NULL,
  `sp_memo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='セット期間管理テーブル';

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `exchange`
--
ALTER TABLE `exchange`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `insect_data`
--
ALTER TABLE `insect_data`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `mating_data`
--
ALTER TABLE `mating_data`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `spawning_data`
--
ALTER TABLE `spawning_data`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `exchange`
--
ALTER TABLE `exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `insect_data`
--
ALTER TABLE `insect_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `mating_data`
--
ALTER TABLE `mating_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `spawning_data`
--
ALTER TABLE `spawning_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
