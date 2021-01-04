-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2019 at 11:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `expiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`, `expiry`) VALUES
(1, 3, 1, 1, 0, '0000-00-00'),
(2, 2, 1, 3, 0, '0000-00-00'),
(3, 3, 1, 3, 0, '0000-00-00'),
(4, 2, 1, 4, 1, '0000-00-00'),
(5, 3, 1, 4, 0, '0000-00-00'),
(6, 2, 1, 6, 1, '0000-00-00'),
(7, 5, 6, 4, 0, '0000-00-00'),
(8, 3, 1, 7, 1, '0000-00-00'),
(9, 2, 1, 7, 0, '0000-00-00'),
(12, 3, 1, 10, 0, '0000-00-00'),
(13, 2, 1, 11, 0, '0000-00-00'),
(14, 0, 0, 0, 0, '0000-00-00'),
(15, 12, 9, 12, 0, '0000-00-00'),
(16, 13, 1, 12, 0, '0000-00-00'),
(17, 6, 7, 4, 0, '0000-00-00'),
(18, 2, 1, 22, 1, '0000-00-00'),
(19, 3, 1, 22, 0, '0000-00-00'),
(20, 5, 6, 22, 0, '0000-00-00'),
(21, 10, 7, 22, 0, '0000-00-00'),
(22, 6, 7, 22, 0, '0000-00-00'),
(23, 7, 7, 22, 0, '0000-00-00'),
(28, 2, 1, 26, 0, '0000-00-00'),
(29, 3, 1, 26, 0, '0000-00-00'),
(30, 30, 14, 26, 0, '0000-00-00'),
(31, 5, 6, 26, 0, '0000-00-00'),
(32, 31, 14, 26, 0, '0000-00-00'),
(33, 9, 7, 26, 0, '0000-00-00'),
(34, 2, 1, 27, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `headofficecity` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `companytype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `companyname`, `headofficecity`, `contactno`, `website`, `companytype`, `email`, `password`, `createdAt`) VALUES
(1, 'Techdrom', 'Banglore', '8606079553', 'www.techdrom.com', 'Start Up', 'techdrom@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-12-17 10:38:52'),
(6, 'IBM', 'US', '01122873331', 'www.ibm.com', 'IT', 'ibm@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-12-18 07:22:30'),
(7, 'Tata Consultancy Service', 'Mumbai', '2001500178', 'www.tcsmumbai.com', 'Software Service', 'tcs@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-12-20 17:23:38'),
(8, 'ICICI Bank', 'Hyderabad', '9863527834', 'www.icicibank.com', 'Finance/Banking', 'icici@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-12-20 17:34:05'),
(9, 'Bright Motors', 'Ottappalam', '9847090699', 'www.brightmotors.com', 'Two Wheeler Showroom', 'brightmotors@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2017-12-22 19:05:33'),
(13, 'HRX', 'Bengaluru', '9988822112', 'www.www.www', 'IT', 'company1@c.com', 'YWJkZDNmNGE4ZTJkZTFkYmJiMjk1NmRjMWM5OGQwNTM=', '2017-12-27 16:11:36'),
(14, 'RCSTechnologies', 'Bangalore', '8884182953', 'www.rcs.com', 'mnc', 'rcsinfo@gmail.com', 'NTUwZGUzMTM4ZGJkNjMwMDJjZDQwZDI1YmRiOWNkMTg=', '2019-03-25 06:03:14'),
(15, 'RCS Technologies', 'bangalore', '9988776655', 'www.RCS.com', 'startUp', 'rcs123@gmail.com', '1234', '2019-04-11 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `expiry` date DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `expiry`, `createdat`) VALUES
(2, 1, 'Software Testing', 'Part Time Software testing job vacant', '20000', '70000', '2 Year', 'BCA', '0000-00-00', '2017-12-17 11:12:25'),
(3, 1, 'Game Development', 'Job available for expert programmers..', '70000', '90000', '3 years', 'MCA', '0000-00-00', '2017-12-20 08:04:43'),
(5, 6, 'Business Analytic', 'investigation of past business performance to gain insight and drive business planning.', '500000', '550000', '1 year ', 'MCA', '0000-00-00', '2017-12-18 07:27:00'),
(6, 7, 'Email Marketing', 'Communicating company products through Email Marketing\r\nGenerating Leads through emails.', '60000', '80000', '3 Years', 'BCA / BSc', '0000-00-00', '2017-12-20 17:25:46'),
(7, 7, 'Software Tester', 'Looking out for candidates with good domain experience into preparation of BRD and Test cases.', '20000', '30000', '1 Year ', 'BCA', '0000-00-00', '2017-12-20 17:27:18'),
(8, 7, 'Mobile App Developer - Android & iOS', 'Urgently required Mobile App Developer (complete knowledge of Android and IOS), excellent comm skills, with a good personality and leadership skills, can set up the department from scratch and can handle international clients. ', '47000', '50000', '1 Year ', 'MCA', '0000-00-00', '2017-12-20 17:28:39'),
(9, 7, 'Assistant Manager', 'Must-Have	\r\n1. Understanding and good working knowledge of Direct tax Laws\r\n2. Handling assessment proceedings with the tax department\r\n3. Handling/assisting with litigation before the CIT (A) and Tribunal level\r\n4. Good analytical skills ', '50000', '70000', '5 Years', 'MBA', '0000-00-00', '2017-12-20 17:30:10'),
(10, 7, 'Marketing Officer', 'Identify Potential Customers\r\nSupport Customers to prepare a robust financial plan\r\nImplement and Monitor the plan.', '35000', '40000', '2 Year', 'MBA', '0000-00-00', '2017-12-20 17:31:47'),
(11, 8, 'Branch Sales Manage', 'Identify sales opportunities\r\nDirect operational activities on a day-to-day basis\r\nGenerate leads for new business and customers.', '30000', '40000', '2 Years', 'MBA', '0000-00-00', '2017-12-20 17:35:00'),
(12, 9, 'Mechanic', '1 job vacant for a expert in mechanic', '10000', '20000', '3 Years', '12', '0000-00-00', '2017-12-22 19:07:00'),
(13, 1, 'Architect', 'job vacant', '20000', '25000', '2 Years', 'B Tech', '0000-00-00', '2017-12-24 09:28:09'),
(30, 14, 'php and java developer', 'need to develop php websites for live projects', '12000', '15000', '2', 'mca', '0000-00-00', '2019-03-25 06:04:31'),
(31, 14, 'DOT Net Developer', 'developing websites', '19000', '25000', '2', 'B.tech', '0000-00-00', '2019-03-25 06:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`) VALUES
(7, 'Aadarsh', 'Raj', 'deadpool@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'Bangalore', 'banglore', 'Karnataka', '65757575', 'MCA', 'Computer S', '2019', '07-01-95', '22', 'Student', '5a378b623bc25.pdf'),
(9, 'Akshay', 'Pramod', 'aks@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Mithun', 'Divakar', 'mithun@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5a3a2538c300d.pdf'),
(11, 'Sowmya', 'Parvathi', 'sbm@gmail.com', 'M2NlNzVlOWY2NzdmNDI1NWVhYjU3NzNhZjg1ZTQyY2Y=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Fahad', 'Ali', 'fahadali@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5a3f737ef3dc9.pdf'),
(22, 'Rashid', 'Ali', 'alirashid23@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '1e1e2e212e1', 'qwewweq', 'qweweq', '3232323232', '2e1e21e21', '12e12ee', '12e1e2e12', '1e212e', '622331', '12e12e12e', '5a43cc3bb9e6e.docx'),
(23, 'Cristiano', 'Ronaldo', 'cr7@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '', '', '', '', '', '', '', '', '', '', NULL),
(24, 'Dwayne', 'Johnson', 'rock@wwe.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'rash', 'rash', 'qwe@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5acc5602d50cf.pdf'),
(26, 'vishnu', 'kumar', 'vishnu@gmail.com', 'NTUwZGUzMTM4ZGJkNjMwMDJjZDQwZDI1YmRiOWNkMTg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5c9875f9258f5.docx'),
(27, 'mad', 'das', 'das@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'amit', 'kumar', 'amit12@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'anoop', 'roy', 'anoop456@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
