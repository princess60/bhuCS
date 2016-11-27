-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2016 at 05:37 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bhucs`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comments_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` varchar(5) NOT NULL,
  `comments_body` varchar(100) NOT NULL,
  `comments_date` timestamp(6) NOT NULL,
  `comments_user` varchar(40) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_title` varchar(50) NOT NULL,
  `course_code` varchar(6) NOT NULL,
  `level` varchar(5) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `credit_units` int(11) NOT NULL,
  `date_added` timestamp(6) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forum_question`
--

CREATE TABLE IF NOT EXISTS `forum_question` (
  `forum_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` varchar(5) NOT NULL,
  `post_body` varchar(200) NOT NULL,
  `asker` varchar(40) NOT NULL,
  `post_time` timestamp(6) NOT NULL,
  `status` varchar(8) NOT NULL,
  PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `past_questions`
--

CREATE TABLE IF NOT EXISTS `past_questions` (
  `past_q_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(6) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `level` varchar(5) NOT NULL,
  `semester` varchar(5) NOT NULL,
  PRIMARY KEY (`past_q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` varchar(8) NOT NULL,
  `created_date` timestamp(6) NOT NULL,
  `last_login` timestamp(6) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_topic` varchar(100) NOT NULL,
  `student` varchar(30) NOT NULL,
  `year` varchar(4) NOT NULL,
  `post_date` timestamp(6) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
