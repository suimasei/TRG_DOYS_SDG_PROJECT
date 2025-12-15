-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2025 at 04:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdg5_db`
--


-- --------------------------------------------------------


CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `industry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `company` (`company_id`, `company_name`, `industry`) VALUES
(1, 'Equality Tech Solutions', 'Information Technology'),
(2, 'FairWorks Manufacturing', 'Manufacturing');

-- --------------------------------------------------------


CREATE TABLE `comprehensive_complaint_position_analysis` (
`complaint_type` varchar(100)
,`sex` char(1)
,`academical_achievement` varchar(100)
,`position_level` varchar(18)
,`Complaint_Count` bigint(21)
);

-- --------------------------------------------------------


CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `department` (`department_id`, `company_id`, `department_name`) VALUES
(1, 1, 'Human Resources'),
(2, 1, 'Engineering'),
(3, 2, 'Production'),
(4, 2, 'Sales');

-- --------------------------------------------------------


CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `age` int(11) NOT NULL,
  `academical_achievement` varchar(100) NOT NULL,
  `sex` char(1) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `date_hired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `employee` (`employee_id`, `name`, `age`, `academical_achievement`, `sex`, `job_title`, `date_hired`) VALUES
(1, 'Juan Dela Cruz', 34, 'High School Graduate', 'M', 'Operations Manager', '2018-03-15'),
(2, 'Mark Reyes', 37, 'High School Graduate', 'M', 'Department Manager', '2017-07-10'),
(3, 'Jose Santos', 33, 'High School Graduate', 'M', 'Team Supervisor', '2019-01-05'),
(4, 'Carlos Lim', 40, 'High School Graduate', 'M', 'Senior Supervisor', '2016-09-01'),
(5, 'Miguel Torres', 35, 'High School Graduate', 'M', 'Shift Supervisor', '2019-11-20'),
(6, 'Anthony Lee', 36, 'High School Graduate', 'M', 'Branch Manager', '2018-05-18'),
(7, 'Ramon Garcia', 32, 'High School Graduate', 'M', 'Team Leader', '2020-04-12'),
(8, 'Paulo Cruz', 38, 'High School Graduate', 'M', 'Operations Supervisor', '2016-10-08'),
(9, 'Luis Mendoza', 39, 'High School Graduate', 'M', 'Plant Manager', '2015-12-02'),
(10, 'Adrian Flores', 31, 'High School Graduate', 'M', 'Senior Team Leader', '2020-02-14'),
(11, 'Kevin Ramos', 33, 'High School Graduate', 'M', 'Line Supervisor', '2019-06-01'),
(12, 'Noel Aquino', 41, 'High School Graduate', 'M', 'Area Manager', '2014-08-20'),
(13, 'Daniel Kim', 30, 'High School Graduate', 'M', 'Assistant Manager', '2021-06-30'),
(14, 'Patrick Go', 37, 'High School Graduate', 'M', 'Section Supervisor', '2017-03-22'),
(15, 'Robert Chan', 42, 'High School Graduate', 'M', 'Division Manager', '2013-11-05'),
(16, 'Francis Uy', 34, 'High School Graduate', 'M', 'Production Supervisor', '2018-09-13'),
(17, 'Jerome Tan', 36, 'High School Graduate', 'M', 'Store Manager', '2017-01-27'),
(18, 'Gabriel Cruz', 32, 'High School Graduate', 'M', 'Team Supervisor', '2020-09-19'),
(19, 'Victor Ong', 39, 'High School Graduate', 'M', 'Senior Manager', '2015-05-07'),
(20, 'Ivan Dizon', 35, 'High School Graduate', 'M', 'Operations Manager', '2019-01-11'),
(21, 'Samuel Perez', 33, 'College Graduate', 'M', 'Senior Manager', '2018-03-03'),
(22, 'Christian Yu', 38, 'Bachelor\'s Degree', 'M', 'Finance Manager', '2014-06-25'),
(23, 'Leo Sanchez', 36, 'College Graduate', 'M', 'HR Manager', '2016-12-15'),
(24, 'Harold Cruz', 34, 'Bachelor\'s Degree', 'M', 'IT Manager', '2018-08-09'),
(25, 'Dennis Cruz', 40, 'Bachelor\'s Degree', 'M', 'General Manager', '2013-10-30'),
(26, 'Maria Santos', 27, 'Bachelor\'s Degree', 'F', 'Administrative Assistant', '2021-04-05'),
(27, 'Ana Lopez', 29, 'Bachelor\'s Degree', 'F', 'Account Assistant', '2019-09-17'),
(28, 'Liza Dela Rosa', 25, 'College Graduate', 'F', 'HR Assistant', '2023-01-09'),
(29, 'Grace Kim', 30, 'Master\'s Degree', 'F', 'Project Coordinator', '2018-07-23'),
(30, 'Patricia Lim', 26, 'Bachelor\'s Degree', 'F', 'Network Support', '2020-11-30'),
(31, 'Angela Lee', 28, 'Bachelor\'s Degree', 'F', 'Business Support Staff', '2020-02-19'),
(32, 'Rosa Garcia', 24, 'College Graduate', 'F', 'Customer Service Representative', '2022-05-21'),
(33, 'Ella Torres', 27, 'Bachelor\'s Degree', 'F', 'Systems Support', '2021-10-01'),
(34, 'Catherine Cruz', 31, 'Master\'s Degree', 'F', 'Senior Analyst', '2018-12-11'),
(35, 'Bea Mendoza', 23, 'Bachelor\'s Degree', 'F', 'Junior Developer', '2023-03-20'),
(36, 'Jenny Ramos', 28, 'Bachelor\'s Degree', 'F', 'Quality Assurance Associate', '2020-06-15'),
(37, 'Nicole Aquino', 30, 'Bachelor\'s Degree', 'F', 'Operations Assistant', '2019-08-28'),
(38, 'Diana Kim', 26, 'College Graduate', 'F', 'Sales Associate', '2022-07-05'),
(39, 'Karen Go', 27, 'Bachelor\'s Degree', 'F', 'IT Support Specialist', '2020-04-10'),
(40, 'Rachel Chan', 32, 'Master\'s Degree', 'F', 'Senior Specialist', '2017-10-18'),
(41, 'Faith Uy', 27, 'Bachelor\'s Degree', 'F', 'Data Analyst', '2021-07-27'),
(42, 'Joan Tan', 29, 'Bachelor\'s Degree', 'F', 'Logistics Assistant', '2019-12-06'),
(43, 'Hannah Cruz', 25, 'College Graduate', 'F', 'Marketing Assistant', '2022-08-02'),
(44, 'Ivy Ong', 31, 'Master\'s Degree', 'F', 'Engineer', '2018-03-29'),
(45, 'Olivia Dizon', 28, 'Bachelor\'s Degree', 'F', 'Procurement Assistant', '2020-12-21'),
(46, 'Sophia Perez', 26, 'Bachelor\'s Degree', 'F', 'HR Staff', '2022-02-18'),
(47, 'Clarisse Yu', 30, 'Bachelor\'s Degree', 'F', 'Accounting Staff', '2019-05-09'),
(48, 'Lara Sanchez', 27, 'College Graduate', 'F', 'Warehouse Clerk', '2020-09-03'),
(49, 'Mika Cruz', 26, 'Bachelor\'s Degree', 'F', 'Graphic Designer', '2021-11-12'),
(50, 'Erika Reyes', 31, 'Bachelor\'s Degree', 'F', 'Team Assistant', '2018-06-08'),
(9999, 'Juan Dela Cruz', 30, 'Bachelor Degree', 'M', 'Senior Analyst', '2023-01-15');



CREATE TABLE `employee_position_levels` (
`employee_id` int(11)
,`sex` char(1)
,`academical_achievement` varchar(100)
,`position_level` varchar(18)
);



CREATE TABLE `rules` (
  `rules_id` int(11) NOT NULL,
  `policy_name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `rules` (`rules_id`, `policy_name`, `category`) VALUES
(1, 'Anti-Sexual Harassment Policy', 'Harassment'),
(2, 'Equal Pay for Equal Work Policy', 'Pay Equality'),
(3, 'Non-Discrimination in Promotion Policy', 'Promotion Bias'),
(4, 'Parental Leave and Care Policy', 'Parental Rights'),
(5, 'Anti-Bullying and Respect Policy', 'Workplace Respect');



CREATE TABLE `workplace_complaint` (
  `complaint_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint_date` date NOT NULL,
  `status` enum('pending','filed','investigating','resolved') DEFAULT 'pending',
  `resolution_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `workplace_complaint` (`complaint_id`, `employee_id`, `rules_id`, `complaint_type`, `complaint_date`, `status`, `resolution_notes`) VALUES
(1, 1, 1, 'harassment', '2023-01-10', 'pending', NULL),
(2, 2, 1, 'harassment', '2023-02-14', 'investigating', NULL),
(3, 3, 2, 'promotion', '2023-03-05', 'pending', NULL),
(4, 4, 1, 'harassment', '2023-04-18', 'pending', NULL),
(5, 5, 3, 'termination', '2023-05-09', 'pending', NULL),
(6, 6, 1, 'harassment', '2023-06-11', 'pending', NULL),
(7, 7, 2, 'promotion', '2023-07-21', 'pending', NULL),
(8, 8, 1, 'harassment', '2023-08-15', 'pending', NULL),
(9, 9, 1, 'harassment', '2023-09-04', 'resolved', 'Employee transferred'),
(10, 10, 3, 'termination', '2023-10-12', 'pending', NULL),
(11, 11, 1, 'harassment', '2023-11-16', 'pending', NULL),
(12, 12, 2, 'promotion', '2023-11-20', 'pending', NULL),
(13, 13, 1, 'harassment', '2023-11-30', 'pending', NULL),
(14, 14, 3, 'termination', '2023-12-05', 'investigating', NULL),
(15, 15, 1, 'harassment', '2023-12-10', 'pending', NULL),
(16, 26, 2, 'promotion', '2023-12-12', 'resolved', 'Not eligible based on policy'),
(17, 27, 4, 'conduct', '2023-12-18', 'investigating', NULL),
(18, 30, 3, 'termination', '2023-12-20', 'resolved', 'Separation finalized'),
(19, 16, 1, 'harassment', '2024-01-05', 'pending', NULL),
(20, 17, 1, 'harassment', '2024-01-11', 'pending', NULL),
(21, 18, 4, 'conduct', '2024-01-20', 'pending', NULL),
(22, 20, 1, 'harassment', '2024-01-27', 'pending', NULL),
(23, 21, 2, 'promotion', '2024-02-04', 'investigating', NULL),
(24, 22, 3, 'termination', '2024-02-10', 'pending', NULL),
(25, 23, 1, 'harassment', '2024-02-14', 'pending', NULL),
(26, 38, 3, 'promotion', '2024-03-01', 'pending', NULL),
(27, 45, 3, 'promotion', '2024-03-15', 'investigating', NULL),
(28, 32, 3, 'promotion', '2024-04-05', 'pending', NULL),
(29, 49, 3, 'promotion', '2024-04-22', 'pending', NULL),
(30, 27, 3, 'promotion', '2024-05-10', 'investigating', NULL),
(31, 42, 3, 'promotion', '2024-05-30', 'pending', NULL),
(32, 34, 3, 'promotion', '2024-06-18', 'pending', NULL),
(33, 50, 3, 'promotion', '2024-07-07', 'investigating', NULL),
(34, 26, 3, 'promotion', '2024-07-25', 'pending', NULL),
(35, 40, 3, 'promotion', '2024-08-14', 'pending', NULL),
(36, 31, 3, 'promotion', '2024-09-02', 'investigating', NULL),
(37, 46, 3, 'promotion', '2024-09-20', 'pending', NULL),
(38, 29, 3, 'promotion', '2024-10-11', 'pending', NULL),
(39, 47, 3, 'promotion', '2024-10-28', 'investigating', NULL),
(40, 35, 3, 'promotion', '2024-11-15', 'resolved', 'Complaint closed, policy reviewed'),
(41, 44, 1, 'harassment', '2024-03-08', 'pending', NULL),
(42, 30, 1, 'harassment', '2024-04-12', 'pending', NULL),
(43, 48, 1, 'harassment', '2024-05-01', 'investigating', NULL),
(44, 28, 1, 'harassment', '2024-06-25', 'pending', NULL),
(45, 33, 1, 'harassment', '2024-07-10', 'pending', NULL),
(46, 43, 3, 'termination', '2024-08-28', 'investigating', NULL),
(47, 36, 3, 'termination', '2024-09-10', 'pending', NULL),
(48, 39, 3, 'termination', '2024-10-01', 'pending', NULL),
(49, 41, 4, 'conduct', '2024-11-20', 'investigating', NULL),
(50, 37, 4, 'conduct', '2024-12-05', 'pending', NULL);



DROP TABLE IF EXISTS `comprehensive_complaint_position_analysis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `comprehensive_complaint_position_analysis`  AS SELECT `wc`.`complaint_type` AS `complaint_type`, `e`.`sex` AS `sex`, `e`.`academical_achievement` AS `academical_achievement`, CASE WHEN `e`.`job_title` like '%Manager%' OR `e`.`job_title` like '%Supervisor%' OR `e`.`job_title` like 'Senior %' OR `e`.`job_title` like '%Analyst%' THEN 'High Position' WHEN `e`.`job_title` like '%Support%' OR `e`.`job_title` like '%Assistant%' OR `e`.`job_title` like '%Janitor%' OR `e`.`job_title` like '%Associate Staff%' THEN 'Low Position' ELSE 'Other/Unclassified' END AS `position_level`, count(`wc`.`complaint_id`) AS `Complaint_Count` FROM (`employee` `e` left join `workplace_complaint` `wc` on(`e`.`employee_id` = `wc`.`employee_id`)) WHERE `wc`.`complaint_id` is not null GROUP BY `wc`.`complaint_type`, `e`.`sex`, `e`.`academical_achievement`, CASE WHEN `e`.`job_title` like '%Manager%' OR `e`.`job_title` like '%Supervisor%' OR `e`.`job_title` like 'Senior %' OR `e`.`job_title` like '%Analyst%' THEN 'High Position' WHEN `e`.`job_title` like '%Support%' OR `e`.`job_title` like '%Assistant%' OR `e`.`job_title` like '%Janitor%' OR `e`.`job_title` like '%Associate Staff%' THEN 'Low Position' ELSE 'Other/Unclassified' END ORDER BY count(`wc`.`complaint_id`) DESC, `wc`.`complaint_type` ASC ;


DROP TABLE IF EXISTS `employee_position_levels`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_position_levels`  AS SELECT `e`.`employee_id` AS `employee_id`, `e`.`sex` AS `sex`, `e`.`academical_achievement` AS `academical_achievement`, CASE WHEN `e`.`job_title` like '%Manager%' THEN 'High Position' WHEN `e`.`job_title` like '%Supervisor%' THEN 'High Position' WHEN `e`.`job_title` like 'Senior %' THEN 'High Position' WHEN `e`.`job_title` like '%Analyst%' THEN 'High Position' WHEN `e`.`job_title` like '%Support%' THEN 'Low Position' WHEN `e`.`job_title` like '%Assistant%' THEN 'Low Position' WHEN `e`.`job_title` like '%Janitor%' THEN 'Low Position' WHEN `e`.`job_title` like '%Associate Staff%' THEN 'Low Position' ELSE 'Other/Unclassified' END AS `position_level` FROM `employee` AS `e` ;


ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `fk_department_company` (`company_id`);

ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

ALTER TABLE `rules`
  ADD PRIMARY KEY (`rules_id`);

ALTER TABLE `workplace_complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `fk_wc_employee` (`employee_id`),
  ADD KEY `fk_wc_rules` (`rules_id`);

ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `workplace_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;


ALTER TABLE `department`
  ADD CONSTRAINT `fk_department_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON UPDATE CASCADE;

ALTER TABLE `workplace_complaint`
  ADD CONSTRAINT `fk_wc_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_wc_rules` FOREIGN KEY (`rules_id`) REFERENCES `rules` (`rules_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
