-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 04:40 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcollege`
--

CREATE TABLE `tblcollege` (
  `COLLID` int(11) NOT NULL,
  `COLLEGE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcollege`
--

INSERT INTO `tblcollege` (`COLLID`, `COLLEGE`) VALUES
(2, 'BMSCE'),
(6, 'BMSIT');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepts`
--

CREATE TABLE `tbldepts` (
  `DEPTID` int(11) NOT NULL,
  `DEPTNAME` text NOT NULL,
  `DEPTSHORTNAME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepts`
--

INSERT INTO `tbldepts` (`DEPTID`, `DEPTNAME`, `DEPTSHORTNAME`) VALUES
(6, 'Computer Science and Engg', 'CSE'),
(7, 'Information Science and Engg', 'ISE'),
(8, 'Electronics', 'EI');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `EMPID` int(11) NOT NULL,
  `EMPNAME` varchar(60) NOT NULL,
  `EMPPOSITION` varchar(30) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWRD` text NOT NULL,
  `ACCSTATUS` varchar(5) NOT NULL DEFAULT 'NO',
  `EMPSEX` varchar(10) CHARACTER SET macce COLLATE macce_bin NOT NULL DEFAULT 'MALE',
  `COLLEGE` varchar(30) NOT NULL,
  `DEPARTMENT` varchar(30) NOT NULL,
  `EMPLOYID` varchar(30) NOT NULL,
  `AVELEAVE` int(11) NOT NULL DEFAULT 18
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EMPID`, `EMPNAME`, `EMPPOSITION`, `USERNAME`, `PASSWRD`, `ACCSTATUS`, `EMPSEX`, `COLLEGE`, `DEPARTMENT`, `EMPLOYID`, `AVELEAVE`) VALUES
(21, 'Nisarga', 'Normal user', 'nisarga@gmail.com', 'nisarga', 'YES', 'FEMALE', 'BMSCE', 'Computer Science and Engg', '111', 18),
(22, 'Naveena K N', 'Normal user', 'nav@gmail.com', 'naveena', 'YES', 'FEMALE', 'BMSCE', 'Computer Science and Engg', '112', 12),
(23, 'Irfan', 'Normal user', 'irfan@gmail.com', 'irfan', 'YES', 'MALE', 'BMSCE', 'Computer Science and Engg', '113', 18),
(24, 'Vinod', 'Administrator', 'vinod@gmail.com', 'welcome', 'YES', 'MALE', 'BMSCE', 'Computer Science and Engg', '114', 18),
(25, 'praveen', 'Administrator', 'praveen@gmail.com', 'praveen', 'YES', 'MALE', 'BMSCE', 'Computer Science and Engg', '120', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tblleave`
--

CREATE TABLE `tblleave` (
  `LEAVEID` int(11) NOT NULL,
  `EMPLOYID` varchar(30) NOT NULL,
  `DATESTART` date NOT NULL,
  `DATEEND` date NOT NULL,
  `NODAYS` double NOT NULL,
  `SHIFTTIME` varchar(10) NOT NULL,
  `TYPEOFLEAVE` varchar(30) NOT NULL,
  `REASON` text NOT NULL,
  `LEAVESTATUS` varchar(30) NOT NULL,
  `ADMINREMARKS` text NOT NULL,
  `DATEPOSTED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleave`
--

INSERT INTO `tblleave` (`LEAVEID`, `EMPLOYID`, `DATESTART`, `DATEEND`, `NODAYS`, `SHIFTTIME`, `TYPEOFLEAVE`, `REASON`, `LEAVESTATUS`, `ADMINREMARKS`, `DATEPOSTED`) VALUES
(13, '112', '2021-06-28', '2021-06-30', 3, 'All Day', 'SICK LEAVE', 'Covid ', 'APPROVED', 'Request Accepted', '2021-06-28'),
(14, '120', '2021-06-29', '2021-06-30', 2, 'All Day', 'SICK LEAVE', 'Covid', 'REJECTED', 'N/A', '2021-06-28'),
(15, '112', '2021-06-30', '2021-06-30', 1, 'All Day', 'SICK LEAVE', 'Covid', 'APPROVED', 'N/A', '2021-06-28'),
(16, '112', '2021-06-30', '2021-06-30', 1, 'All Day', 'SICK LEAVE', '', 'APPROVED', 'N/A', '2021-06-28'),
(17, '112', '2021-06-30', '2021-06-30', 1, 'All Day', 'SICK LEAVE', 'fdsfhgsjhfj', 'APPROVED', 'fjhjfahkjhjkdhjkfhadjkhjhjfdh ', '2021-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `LEAVTID` int(11) NOT NULL,
  `LEAVETYPE` varchar(30) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`LEAVTID`, `LEAVETYPE`, `DESCRIPTION`) VALUES
(1, 'SICK LEAVE', 'Sick leave is paid time off from work that workers can use to stay home to address their health needs without losing pay. It differs from paid vacation time or time off work to deal with personal matters, because sick leave is intended for health-related purposes'),
(2, 'CASUAL LEAVE', 'These leave are granted for certain unforeseen situation or were you are require to go for one or two days leaves. In case of casual leave normally company\'s strict maximum to 3 days in a month.'),
(3, 'UNPAID LEAVE', 'Unpaid leave refers to time off from work during which an employee retains their job, but does not receive a salary. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcollege`
--
ALTER TABLE `tblcollege`
  ADD PRIMARY KEY (`COLLID`);

--
-- Indexes for table `tbldepts`
--
ALTER TABLE `tbldepts`
  ADD PRIMARY KEY (`DEPTID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`EMPID`);

--
-- Indexes for table `tblleave`
--
ALTER TABLE `tblleave`
  ADD PRIMARY KEY (`LEAVEID`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`LEAVTID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcollege`
--
ALTER TABLE `tblcollege`
  MODIFY `COLLID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbldepts`
--
ALTER TABLE `tbldepts`
  MODIFY `DEPTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `EMPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblleave`
--
ALTER TABLE `tblleave`
  MODIFY `LEAVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `LEAVTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
