-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 23, 2013 at 04:52 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `carat`
--

CREATE TABLE IF NOT EXISTS `carat` (
  `carat_id` int(11) NOT NULL AUTO_INCREMENT,
  `carat_value` varchar(255) NOT NULL,
  PRIMARY KEY (`carat_id`),
  UNIQUE KEY `carat_value` (`carat_value`),
  UNIQUE KEY `carat_value_2` (`carat_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `carat`
--

INSERT INTO `carat` (`carat_id`, `carat_value`) VALUES
(1, '1.41'),
(3, '3.21'),
(2, '4.21'),
(4, '5.41');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`),
  UNIQUE KEY `color_name` (`color_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `color_name`) VALUES
(2, 'blue'),
(3, 'green'),
(4, 'orange'),
(5, 'other'),
(1, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `cut`
--

CREATE TABLE IF NOT EXISTS `cut` (
  `cut_id` int(11) NOT NULL AUTO_INCREMENT,
  `cut_value` varchar(255) NOT NULL,
  PRIMARY KEY (`cut_id`),
  UNIQUE KEY `cut_value` (`cut_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gemsireport`
--

CREATE TABLE IF NOT EXISTS `gemsireport` (
  `reportno` int(11) NOT NULL AUTO_INCREMENT,
  `logoimg` varchar(255) NOT NULL,
  `gemimg` varchar(255) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `carat` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `cut` varchar(255) NOT NULL,
  `clarity` varchar(255) NOT NULL,
  `rindex` varchar(255) NOT NULL,
  `sgravity` varchar(255) NOT NULL,
  `hardness` varchar(255) NOT NULL,
  `transperancy` varchar(255) NOT NULL,
  `mining` varchar(255) NOT NULL,
  `luster` varchar(255) NOT NULL,
  `optproprties` varchar(255) NOT NULL,
  `inclusion` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  PRIMARY KEY (`reportno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `gemsireport`
--

INSERT INTO `gemsireport` (`reportno`, `logoimg`, `gemimg`, `cust_name`, `carat`, `color`, `cut`, `clarity`, `rindex`, `sgravity`, `hardness`, `transperancy`, `mining`, `luster`, `optproprties`, `inclusion`, `comments`) VALUES
(6, 'images/1374496187Desert.jpg', 'gemsimages/1374496187Tulips.jpg', '', '4.21', 'red', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.55-1.56', '', 'TRANSLUCENT-OPAQUE', '1', 'VITERIOUS', 'S.R', 'GLASSY INCLUSION FOUND', 'COMMENTS HERE'),
(7, 'images/1374496464Jellyfish.jpg', 'gemsimages/1374496464Lighthouse.jpg', '', '4.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '1.55-1.56', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', 'COMMENTS HERE'),
(8, 'images/1374497210Jellyfish.jpg', 'gemsimages/1374497210Lighthouse.jpg', '', '4.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '1.55-1.56', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', 'COMMENTS HERE'),
(9, 'images/1374497385Jellyfish.jpg', 'gemsimages/1374497385Lighthouse.jpg', '', '4.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '1.55-1.56', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', 'COMMENTS HERE'),
(10, 'images/1374497600Jellyfish.jpg', 'gemsimages/1374497600Lighthouse.jpg', '', '4.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '1.55-1.56', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', 'COMMENTS HERE'),
(11, 'images/1374497649Desert.jpg', 'gemsimages/1374497649Tulips.jpg', '', '4.21', 'blue', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.55-1.56', '1.55-1.56', 'OPAQUE', '1', 'VITERIOUS', 'S.R', 'CULTURED INCLUSION FOUND', 'COMMENTS HERE'),
(12, 'images/1374555435Chrysanthemum.jpg', 'gemsimages/1374555435Tulips.jpg', 'takle.jpg', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'POWEDERED INCLUSION FOUND', 'COMMENTS HERE'),
(13, 'images/1374555507Chrysanthemum.jpg', 'gemsimages/1374555507Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(14, 'images/1374555556Chrysanthemum.jpg', 'gemsimages/1374555556Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(15, 'images/1374555605Chrysanthemum.jpg', 'gemsimages/1374555605Tulips.jpg', 'other', '1.21', 'green', 'blue', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '1.55-1.56', 'OPAQUE', '1', 'ADMANTINE', 'S.R', 'CULTURED INCLUSION FOUND', 'COMMENTS HERE'),
(16, 'images/1374555790Chrysanthemum.jpg', 'gemsimages/1374555790Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(17, 'images/1374555906Desert.jpg', 'gemsimages/1374555906Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(18, 'images/1374556143Chrysanthemum.jpg', 'gemsimages/1374556143Penguins.jpg', 'other', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(19, 'images/1374556209Chrysanthemum.jpg', 'gemsimages/1374556209Penguins.jpg', 'other', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(20, 'images/1374556229Chrysanthemum.jpg', 'gemsimages/1374556229Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'ARTIFICIAL INCLUSION FOUND', 'COMMENTS HERE'),
(21, 'images/1374556245Chrysanthemum.jpg', 'gemsimages/1374556245Tulips.jpg', 'takle.jpg', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'POWEDERED INCLUSION FOUND', 'COMMENTS HERE'),
(22, 'images/1374556260Chrysanthemum.jpg', 'gemsimages/1374556260Tulips.jpg', 'takle.jpg', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'POWEDERED INCLUSION FOUND', 'COMMENTS HERE'),
(23, 'images/1374557168Chrysanthemum.jpg', 'gemsimages/1374557168Tulips.jpg', 'takle.jpg', '1.21', 'blue', 'oval', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '', 'TRANSLUCENT-OPAQUE', '1', 'ADMANTINE', 'S.R', 'POWEDERED INCLUSION FOUND', 'COMMENTS HERE'),
(24, 'images/1374557205Chrysanthemum.jpg', 'gemsimages/1374557205Tulips.jpg', 'other', '1.21', 'blue', '----', 'AA+(GOOD)', '1.55-1.56', '1.76-1.77', '', 'TRANSLUCENT', '1', 'ADMANTINE', 'S.R', 'CULTURED INCLUSION FOUND', ''),
(25, 'images/1374557385Chrysanthemum.jpg', 'gemsimages/1374557385Tulips.jpg', 'other', '4.21', 'blue', 'blue', 'BB+(GOOD)', '1.76-1.77', '1.55-1.56', '', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'S.R', 'CULTURED INCLUSION FOUND', ''),
(26, 'images/1374557553Chrysanthemum.jpg', 'gemsimages/1374557553Penguins.jpg', 'other', '4.21', 'blue', 'blue', 'BB+(GOOD)', '1.55-1.56', '1.76-1.77', '', 'TRANSPARENT-SEMI OPAQUE', '1', 'ADMANTINE', 'D.R', 'POWEDERED INCLUSION FOUND', ''),
(27, 'images/1374557803Chrysanthemum.jpg', 'gemsimages/1374557803Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(28, 'images/1374558013Chrysanthemum.jpg', 'gemsimages/1374558013Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(29, 'images/1374558184Chrysanthemum.jpg', 'gemsimages/1374558184Tulips.jpg', 'other', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(30, 'images/1374558306Chrysanthemum.jpg', 'gemsimages/1374558306Tulips.jpg', '', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(31, 'images/1374558863Chrysanthemum.jpg', 'gemsimages/1374558863Tulips.jpg', 'ram bhau jeweller', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(32, 'images/1374559047Chrysanthemum.jpg', 'gemsimages/1374559047Tulips.jpg', 'ram bhau jeweller', '1.21', 'blue', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(33, 'images/1374559194Chrysanthemum.jpg', 'gemsimages/1374559194Desert.jpg', 'fghfgh', '1.21', 'red', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSLUCENT', '1', 'VITERIOUS', 'S.R', 'GLASSY INCLUSION FOUND', 'rfthyfrthyfh dfgfg '),
(34, 'images/1374559439Chrysanthemum.jpg', 'gemsimages/1374559439Desert.jpg', 'fghfgh', '1.21', 'red', 'oval', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '', 'TRANSLUCENT', '1', 'VITERIOUS', 'S.R', 'GLASSY INCLUSION FOUND', 'rfthyfrthyfh dfgfg '),
(35, 'images/1374560127Chrysanthemum.jpg', 'gemsimages/1374560127Jellyfish.jpg', 'takle.jpg', '4.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '1.55-1.56', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'POWEDERED INCLUSION FOUND', 'hello'),
(36, 'images/1374560950Chrysanthemum.jpg', 'gemsimages/1374560950Jellyfish.jpg', 'takle.jpg', '4.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '1.55-1.56', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'POWEDERED INCLUSION FOUND', 'hello'),
(37, 'images/1374560956Chrysanthemum.jpg', 'gemsimages/1374560956Jellyfish.jpg', 'takle.jpg', '4.21', 'blue', 'oval', 'AA+(GOOD)', '1.76-1.77', '1.76-1.77', '1.55-1.56', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'VITERIOUS', 'D.R', 'POWEDERED INCLUSION FOUND', 'hello'),
(38, 'images/1374561092Chrysanthemum.jpg', 'gemsimages/1374561092Tulips.jpg', '123344', '4.21', 'green', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.76-1.77', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(39, 'images/1374562610Chrysanthemum.jpg', 'gemsimages/1374562610Tulips.jpg', '123344   ', '4.21', 'green', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.76-1.77', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(40, 'images/1374563396Chrysanthemum.jpg', 'gemsimages/1374563396Tulips.jpg', '123344', '4.21', 'green', 'oval', 'BB+(GOOD)', '1.55-1.56', '1.76-1.77', '', 'TRANSPARENT-SEMI TRANSPARENT', '1', 'ADMANTINE', 'D.R', 'CULTURED INCLUSION FOUND', ''),
(41, 'images/1374567686Chrysanthemum.jpg', 'gemsimages/1374567686Koala.jpg', 'takle.jpg', '1.21', 'red', 'blue', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '1.55-1.56', 'SEMI OPAQUE-OPAQUE', '1', 'SILKY', 'S.R', 'POWEDERED INCLUSION FOUND', ''),
(42, 'images/1374567848Chrysanthemum.jpg', 'gemsimages/1374567848Koala.jpg', 'takle.jpg', '1.21', 'red', 'blue', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '1.55-1.56', 'SEMI OPAQUE-OPAQUE', '1', 'SILKY', 'S.R', 'POWEDERED INCLUSION FOUND', ''),
(43, 'images/1374567949Chrysanthemum.jpg', 'gemsimages/1374567949Koala.jpg', 'jeevan123', '1.21', 'red', 'blue', 'AA+(GOOD)', '1.55-1.56', '1.55-1.56', '1.55-1.56', 'SEMI OPAQUE-OPAQUE', '1', 'SILKY', 'S.R', 'POWEDERED INCLUSION FOUND', ''),
(44, 'images/1374575002Lighthouse.jpg', 'gemsimages/1374575002Tulips.jpg', '1', '1', '3', 'oval', 'BB+(GOOD)', '3', '2', '4', '1', '5', '3', '2', '2', ''),
(45, 'images/1374575152Lighthouse.jpg', 'gemsimages/1374575152Tulips.jpg', '1', '1', '3', 'oval', 'BB+(GOOD)', '3', '2', '4', '1', '5', '3', '2', '2', ''),
(46, 'images/1374575205Desert.jpg', 'gemsimages/1374575205Hydrangeas.jpg', '1', '2', 'blue', 'blue', 'BB+(GOOD)', '1.56-1.57', '3', '7', 'TRANSPARENT', 'KESHI', 'SILKY', 'S.R', 'PLASTIC FOUND', ''),
(47, 'images/1374575367Chrysanthemum.jpg', 'gemsimages/1374575367Penguins.jpg', 'yrty', '3.21', 'other', 'blue', 'BB+(GOOD)', '1.56-1.57', '2.56 to 2.8', '7', 'TRANSLUCENT-OPAQUE', 'VENEZUALA/CULTURED', 'SILKY', 'D.R', 'GLASSY INCLUSION FOUND', ''),
(48, 'images/1374577362Desert.jpg', 'gemsimages/1374577362Tulips.jpg', 'yrty', '3.21', 'blue', 'oval', 'AA+(GOOD)', '1.56-1.57', '2.56 to 2.8', '6.5', 'TRANSLUCENT-OPAQUE', 'KESHI', 'VITEREOUS', 'D.R', 'NATURAL INCLUSION FOUND', '');

-- --------------------------------------------------------

--
-- Table structure for table `hardness`
--

CREATE TABLE IF NOT EXISTS `hardness` (
  `hardness_id` int(11) NOT NULL AUTO_INCREMENT,
  `hardness_value` varchar(255) NOT NULL,
  PRIMARY KEY (`hardness_id`),
  UNIQUE KEY `hardness_value` (`hardness_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hardness`
--

INSERT INTO `hardness` (`hardness_id`, `hardness_value`) VALUES
(1, '6'),
(2, '6.5'),
(3, '7'),
(4, '7.5'),
(5, '8.5');

-- --------------------------------------------------------

--
-- Table structure for table `inclusion`
--

CREATE TABLE IF NOT EXISTS `inclusion` (
  `inclusion_id` int(11) NOT NULL AUTO_INCREMENT,
  `inclusion_value` varchar(255) NOT NULL,
  PRIMARY KEY (`inclusion_id`),
  UNIQUE KEY `inclusion_value` (`inclusion_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `inclusion`
--

INSERT INTO `inclusion` (`inclusion_id`, `inclusion_value`) VALUES
(3, 'ARTIFICIAL INCLUSION FOUND'),
(1, 'CULTURED INCLUSION FOUND'),
(7, 'GLASSY INCLUSION FOUND'),
(2, 'NATURAL INCLUSION FOUND'),
(6, 'PLASTIC FOUND'),
(5, 'POWEDERED INCLUSION FOUND'),
(4, 'SYNTHETIC INCLUSION FOUND');

-- --------------------------------------------------------

--
-- Table structure for table `jeweller`
--

CREATE TABLE IF NOT EXISTS `jeweller` (
  `j_id` int(15) NOT NULL AUTO_INCREMENT,
  `jwel_name` varchar(30) NOT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jeweller`
--

INSERT INTO `jeweller` (`j_id`, `jwel_name`) VALUES
(1, 'yrty'),
(2, 'rtyt');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Username`, `Password`) VALUES
(1, 'navratna', 'navratna'),
(2, 'nav', '123india');

-- --------------------------------------------------------

--
-- Table structure for table `luster`
--

CREATE TABLE IF NOT EXISTS `luster` (
  `luster_id` int(11) NOT NULL AUTO_INCREMENT,
  `luster_value` varchar(255) NOT NULL,
  PRIMARY KEY (`luster_id`),
  UNIQUE KEY `luster_value` (`luster_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `luster`
--

INSERT INTO `luster` (`luster_id`, `luster_value`) VALUES
(3, 'ADMANTINE'),
(4, 'RESENIOUS'),
(5, 'SILKY'),
(1, 'VITEREOUS'),
(2, 'WAXY');

-- --------------------------------------------------------

--
-- Table structure for table `mining`
--

CREATE TABLE IF NOT EXISTS `mining` (
  `mining_id` int(11) NOT NULL AUTO_INCREMENT,
  `mining_value` varchar(255) NOT NULL,
  PRIMARY KEY (`mining_id`),
  UNIQUE KEY `mining_value` (`mining_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mining`
--

INSERT INTO `mining` (`mining_id`, `mining_value`) VALUES
(3, 'CEYLONE'),
(4, 'KESHI'),
(5, 'KESHI/CULTURED'),
(1, 'VENEZUALA/CULTURED'),
(2, 'VENEZUALA/NATURAL');

-- --------------------------------------------------------

--
-- Table structure for table `opticalproperties`
--

CREATE TABLE IF NOT EXISTS `opticalproperties` (
  `op_id` int(11) NOT NULL AUTO_INCREMENT,
  `op_value` varchar(255) NOT NULL,
  PRIMARY KEY (`op_id`),
  UNIQUE KEY `op_value` (`op_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `opticalproperties`
--

INSERT INTO `opticalproperties` (`op_id`, `op_value`) VALUES
(1, 'D.R'),
(2, 'S.R');

-- --------------------------------------------------------

--
-- Table structure for table `refractive_index`
--

CREATE TABLE IF NOT EXISTS `refractive_index` (
  `ri_id` int(11) NOT NULL AUTO_INCREMENT,
  `ri_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ri_id`),
  UNIQUE KEY `ri_value` (`ri_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `refractive_index`
--

INSERT INTO `refractive_index` (`ri_id`, `ri_value`) VALUES
(4, '1.52-1.53'),
(1, '1.56-1.57'),
(5, '1.58-1.59'),
(2, '1.59-1.60'),
(3, '1.76-1.77');

-- --------------------------------------------------------

--
-- Table structure for table `specific_gravity`
--

CREATE TABLE IF NOT EXISTS `specific_gravity` (
  `sg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_value` varchar(255) NOT NULL,
  PRIMARY KEY (`sg_id`),
  UNIQUE KEY `sg_value` (`sg_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `specific_gravity`
--

INSERT INTO `specific_gravity` (`sg_id`, `sg_value`) VALUES
(2, '2.56'),
(3, '2.56 to 2.8'),
(4, '3.7'),
(5, '3.95'),
(1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `transparency`
--

CREATE TABLE IF NOT EXISTS `transparency` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_value` varchar(255) NOT NULL,
  PRIMARY KEY (`trans_id`),
  UNIQUE KEY `trans_value` (`trans_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `transparency`
--

INSERT INTO `transparency` (`trans_id`, `trans_value`) VALUES
(5, 'OPAQUE'),
(4, 'TRANSLUCENT'),
(2, 'TRANSLUCENT-OPAQUE'),
(1, 'TRANSPARENT'),
(3, 'TRANSPARENT-SEMI OPAQUE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
