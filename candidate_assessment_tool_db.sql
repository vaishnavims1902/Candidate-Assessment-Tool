-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:04 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `candidate_assessment_tool_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`user_name`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_details`
--

CREATE TABLE IF NOT EXISTS `candidate_details` (
`c_id` int(11) NOT NULL,
  `c_name` varchar(40) NOT NULL,
  `c_email` varchar(40) NOT NULL,
  `c_mobile` varchar(20) NOT NULL,
  `c_city` varchar(20) NOT NULL,
  `c_taluka` varchar(20) NOT NULL,
  `c_district` varchar(20) NOT NULL,
  `c_state` varchar(20) NOT NULL,
  `job_hr_id` int(20) NOT NULL,
  `job_title` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `candidate_details`
--

INSERT INTO `candidate_details` (`c_id`, `c_name`, `c_email`, `c_mobile`, `c_city`, `c_taluka`, `c_district`, `c_state`, `job_hr_id`, `job_title`, `status`) VALUES
(1, 'Hemant Patil', 'hp@gmail.com', '1234', 'Shirpur', 'Shirpur', 'Dhule', 'Maharashtra', 1, 'Data Analyst', 'Qualified'),
(2, 'Vaishnavi Mahale', 'vm@gmail.com', '7894', 'Shirpur', 'Shirpur', 'Dhule', 'Maharashtra', 2, 'Web Developer', 'Qualified'),
(3, 'vaishu', 'vaishu@gmail.com', '1122', 'shirpur', 'shirpur', 'dhule', 'maharashtra', 1, 'Data Analyst', 'Not Qualified'),
(4, 'dipali', 'd@gmail.com', '1234', 'Akola', 'akola', 'akola', 'maharashtra', 1, 'Data Analyst', 'Pending'),
(5, 'Sejal', 's@gmail.com', '123324', 'sdds', 'saada', 'sadsa', 'sdsfsff', 1, 'Data Analyst', 'Not Qualified'),
(6, 'asdfg', 'v@gmail.com', '123456', 'asdfg', 'sdfgh', 'dfghj', 'xcvbn', 1, 'Data Analyst', 'Pending'),
(7, 'Vaishnavi Mahale', 'v@gmail.com', '1234', 'Shirpur', 'Shirpur', 'Dhule', 'Maharashtra', 1, 'Data Analyst', 'Pending'),
(8, 'Vaishnavi Mahale', 'admin@gmail.com', '1343545', 'Shirpur', 'Shirpurf', 'Dhule', 'maharashtra', 1, 'Data Analyst', 'Not Qualified');

-- --------------------------------------------------------

--
-- Table structure for table `hr_details`
--

CREATE TABLE IF NOT EXISTS `hr_details` (
`hr_id` int(20) NOT NULL,
  `hr_name` varchar(40) NOT NULL,
  `hr_email` varchar(40) NOT NULL,
  `hr_mobile` varchar(40) NOT NULL,
  `hr_password` varchar(40) NOT NULL,
  `hr_designation` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hr_details`
--

INSERT INTO `hr_details` (`hr_id`, `hr_name`, `hr_email`, `hr_mobile`, `hr_password`, `hr_designation`) VALUES
(1, 'Vaishnavi Mahale', 'v@gmail.com', '7788', '123', 'Manager'),
(2, 'Hemant Patil', 'h@gmail.com', '9988', '123', 'Sub Manager'),
(3, 'Vaishnavi Mahale', 'v@gmail.com', '1343545', '123', 'adsadsf'),
(4, 'Hetal Haswani', 'hh@gmail.com', '1343545', '123', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
`job_id` int(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` varchar(60) NOT NULL,
  `salary_range` varchar(40) NOT NULL,
  `experience` varchar(40) NOT NULL,
  `hr_id` int(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `title`, `description`, `salary_range`, `experience`, `hr_id`) VALUES
(1, 'Data Analyst', 'Data Sorting', '30000-40000', '1 Year', 1),
(2, 'Web Developer', 'Web Development', '40000-50000', '2 Years', 2),
(3, 'Junior Software Devloper', 'asdf', '3000-4000', '2 yr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_qualities`
--

CREATE TABLE IF NOT EXISTS `job_qualities` (
`job_id` int(40) NOT NULL,
  `O` int(40) NOT NULL,
  `C` int(40) NOT NULL,
  `E` int(40) NOT NULL,
  `A` int(40) NOT NULL,
  `N` int(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_qualities`
--

INSERT INTO `job_qualities` (`job_id`, `O`, `C`, `E`, `A`, `N`) VALUES
(1, 4, 6, 5, 4, 6),
(2, 6, 4, 5, 6, 4),
(3, 5, 6, 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
`qid` int(25) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `highAg` varchar(50) NOT NULL,
  `agree` varchar(50) NOT NULL,
  `neutral` varchar(50) NOT NULL,
  `disagree` varchar(50) NOT NULL,
  `highDis` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`qid`, `question`, `highAg`, `agree`, `neutral`, `disagree`, `highDis`) VALUES
(1, 'You regularly make new friends.', 'E', 'A', 'O', 'C', 'N'),
(2, 'You spend a lot of your free time exploring various random topics that pique your interest.', 'O', 'E', 'C', 'A', 'N'),
(3, 'Seeing other people cry can easily make you feel like you want to cry too.', 'A', 'N', 'E', 'C', 'O'),
(4, 'You often make a backup plan for a backup plan.', 'C', 'O', 'A', 'E', 'N'),
(5, 'You usually stay calm, even under a lot of pressure.', 'C', 'A', 'O', 'E', 'N'),
(6, 'At social events, you rarely try to introduce yourself to new people and mostly talk to the ones you already know.', 'N', 'C', 'A', 'O', 'E'),
(7, 'You prefer to completely finish one project before starting another.', 'C', 'O', 'A', 'E', 'N'),
(8, 'You are very sentimental.', 'N', 'A', 'C', 'O', 'E'),
(9, 'You like to use organizing tools like schedules and lists.', 'C', 'O', 'A', 'E', 'N'),
(10, 'Even a small mistake can cause you to doubt your overall abilities and knowledge.', 'N', 'A', 'O', 'E', 'C'),
(11, 'You feel comfortable just walking up to someone you find interesting and striking up a conversation.', 'E', 'O', 'A', 'C', 'N'),
(12, 'You are not too interested in discussing various interpretations and analyses of creative works.', 'N', 'A', 'E', 'C', 'O'),
(13, 'You are more inclined to follow your head than your heart.', 'O', 'C', 'E', 'A', 'N'),
(14, 'You usually prefer just doing what you feel like at any given moment instead of planning a particular daily routine.', 'O', 'E', 'N', 'A', 'C'),
(15, 'You rarely worry about whether you make a good impression on people you meet.', 'C', 'E', 'O', 'N', 'A'),
(16, 'You enjoy participating in group activities.', 'E', 'A', 'N', 'O', 'C'),
(17, 'You like books and movies that make you come up with your own interpretation of the ending.', 'N', 'A', 'E', 'C', 'O'),
(18, 'Your happiness comes more from helping others accomplish things than your own accomplishments.', 'C', 'O', 'N', 'A', 'E'),
(19, 'You are interested in so many things that you find it difficult to choose what to try next.', 'E', 'A', 'N', 'O', 'C'),
(20, 'You are prone to worrying that things will take a turn for the worse.', 'E', 'N', 'A', 'C', 'O'),
(21, 'You avoid leadership roles in group settings.', 'A', 'C', 'O', 'E', 'N'),
(22, 'You are definitely not an artistic type of person.', 'A', 'N', 'C', 'E', 'O'),
(23, 'You think the world would be a better place if people relied more on rationality and less on their feelings.', 'O', 'C', 'E', 'A', 'N'),
(24, 'You prefer to do your chores before allowing yourself to relax.', 'N', 'A', 'E', 'C', 'O'),
(25, 'You enjoy watching people argue.', 'N', 'O', 'C', 'E', 'A'),
(26, 'You tend to avoid drawing attention to yourself.', '', '', '', '', ''),
(27, 'You lose patience with people who are not as efficient as you.', '', '', '', '', ''),
(28, 'You often end up doing things at the last possible moment.', '', '', '', '', ''),
(29, 'You usually prefer to be around others rather than on your own.', '', '', '', '', ''),
(30, 'You become bored or lose interest when the discussion gets highly theoretical.', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_details`
--
ALTER TABLE `candidate_details`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `hr_details`
--
ALTER TABLE `hr_details`
 ADD PRIMARY KEY (`hr_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
 ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_qualities`
--
ALTER TABLE `job_qualities`
 ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
 ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_details`
--
ALTER TABLE `candidate_details`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hr_details`
--
ALTER TABLE `hr_details`
MODIFY `hr_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
MODIFY `job_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job_qualities`
--
ALTER TABLE `job_qualities`
MODIFY `job_id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
MODIFY `qid` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
