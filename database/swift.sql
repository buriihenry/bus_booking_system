-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2017 at 04:46 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swift`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE IF NOT EXISTS `booking_details` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(50) NOT NULL,
  `b_fid` varchar(5) NOT NULL,
  `b_phno` varchar(15) NOT NULL,
  `b_mail` varchar(50) NOT NULL,
  `b_add` varchar(100) NOT NULL,
  `b_price` varchar(10) NOT NULL,
  `b_child` varchar(3) NOT NULL,
  `b_adults` varchar(3) NOT NULL,
  `b_total` varchar(3) NOT NULL,
  `b_status` varchar(10) NOT NULL,
  `b_pnr` varchar(20) NOT NULL,
  `b_card` varchar(16) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`b_id`, `b_name`, `b_fid`, `b_phno`, `b_mail`, `b_add`, `b_price`, `b_child`, `b_adults`, `b_total`, `b_status`, `b_pnr`, `b_card`) VALUES
(8, 'peace murugi', '100', '9988877768', 'peacemurugi@gmail.com', '100', '6000', '0', '1', '1', 'CANCELLED', '11181508092014', '1234567891234567');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE IF NOT EXISTS `card_details` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) NOT NULL,
  `c_cvv` int(3) NOT NULL,
  `c_cnum` varchar(16) NOT NULL,
  `c_balance` int(8) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87880 ;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`c_id`, `c_name`, `c_cvv`, `c_cnum`, `c_balance`) VALUES
(87878, 'Kama', 232, '1234567891234567', 48989);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_details`
--

CREATE TABLE IF NOT EXISTS `passenger_details` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_pnr` varchar(25) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_age` varchar(3) NOT NULL,
  `p_sex` varchar(10) NOT NULL,
  `p_fno` varchar(10) NOT NULL,
  `p_from` varchar(10) NOT NULL,
  `p_to` varchar(10) NOT NULL,
  `p_dedate` varchar(20) NOT NULL,
  `p_ardate` varchar(20) NOT NULL,
  `p_detime` varchar(20) NOT NULL,
  `p_artime` varchar(20) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  `p_class` varchar(10) NOT NULL,
  `p_passtype` varchar(1) NOT NULL,
  `p_fid` varchar(5) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `passenger_details`
--

INSERT INTO `passenger_details` (`p_id`, `p_pnr`, `p_name`, `p_age`, `p_sex`, `p_fno`, `p_from`, `p_to`, `p_dedate`, `p_ardate`, `p_detime`, `p_artime`, `p_status`, `p_class`, `p_passtype`, `p_fid`) VALUES
(18, '14203508092014', 'kama', 'F', '20', 'SA2112', 'CBD', 'Westie', '30-09-2017', '30-09-2017', '13:00', '16:00', 'Booked', 'Economy', 'A', '100');

-- --------------------------------------------------------

--
-- Table structure for table `ride_search`
--

CREATE TABLE IF NOT EXISTS `ride_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fno` varchar(10) NOT NULL,
  `from_city` varchar(20) NOT NULL,
  `to_city` varchar(20) NOT NULL,
  `departure_date` varchar(20) NOT NULL,
  `arrival_date` varchar(20) NOT NULL,
  `departure_time` varchar(20) NOT NULL,
  `arrival_time` varchar(20) NOT NULL,
  `e_seats_left` int(3) NOT NULL DEFAULT '20',
  `b_seats_left` int(3) NOT NULL DEFAULT '10',
  `e_price` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ride_search`
--

INSERT INTO `ride_search` (`id`, `fno`, `from_city`, `to_city`, `departure_date`, `arrival_date`, `departure_time`, `arrival_time`, `e_seats_left`, `b_seats_left`, `e_price`, `b_price`) VALUES
(3, 'SA219', 'CBD', 'Westie', '30-09-2017', '30-09-2017', '18:00 ', '21:00 ', 18, 10, 2500, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `ride_users`
--

CREATE TABLE IF NOT EXISTS `ride_users` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_fname` varchar(20) NOT NULL,
  `f_lname` varchar(20) NOT NULL,
  `f_sex` varchar(10) NOT NULL,
  `f_uname` varchar(32) NOT NULL,
  `f_password` varchar(32) NOT NULL,
  `f_mailid` varchar(100) NOT NULL,
  `f_mailcode` varchar(100) NOT NULL,
  `f_active` int(11) NOT NULL,
  `f_regdate` datetime NOT NULL,
  `f_passrec` int(11) NOT NULL,
  `f_address` varchar(500) NOT NULL,
  `f_phone` varchar(10) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `ride_users`
--

INSERT INTO `ride_users` (`f_id`, `f_fname`, `f_lname`, `f_sex`, `f_uname`, `f_password`, `f_mailid`, `f_mailcode`, `f_active`, `f_regdate`, `f_passrec`, `f_address`, `f_phone`) VALUES
(100, 'henry', 'burii', 'Male', 'buriihenry', '5f4dcc3b5aa765d61d8327deb882cf99', 'buriihenry@gmail.com', '', 1, '2017-09-20 12:55:28', 0, '123', '0700223146'),
(101, 'murugi', 'peace', 'Female', 'greankama', '5f4dcc3b5aa765d61d8327deb882cf99', 'peacemurugi@gmail.com', '', 1, '2017-09-29 12:55:28', 0, '100', '0716302015');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
