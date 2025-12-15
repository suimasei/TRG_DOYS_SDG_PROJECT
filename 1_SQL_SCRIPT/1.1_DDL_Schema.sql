-- DDL SCRIPT FOR SDG5_DB DATABASE SCHEMA

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `industry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `age` int(11) NOT NULL,
  `academical_achievement` varchar(100) NOT NULL,
  `sex` char(1) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `date_hired` date NOT NULL,
  `department_id` int(11) NOT NULL -- Idinagdag ang FK column na nawawala sa inyong orihinal na CREATE TABLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `rules_id` int(11) NOT NULL,
  `policy_name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `workplace_complaint`
--

CREATE TABLE `workplace_complaint` (
  `complaint_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint_date` date NOT NULL,
  `status` enum('pending','filed','investigating','resolved') DEFAULT 'pending',
  `resolution_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------
-- PRIMARY KEYS and AUTO_INCREMENT
-- --------------------------------------------------------

--
-- Primary Key for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Primary Key and Auto Increment for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `fk_department_company` (`company_id`);

ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Primary Key for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `fk_employee_department` (`department_id`); -- Idinagdag ang index para sa department_id

--
-- Primary Key for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`rules_id`);

--
-- Primary Key and Auto Increment for table `workplace_complaint`
--
ALTER TABLE `workplace_complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `fk_wc_employee` (`employee_id`),
  ADD KEY `fk_wc_rules` (`rules_id`);

ALTER TABLE `workplace_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;


-- --------------------------------------------------------
-- FOREIGN KEY CONSTRAINTS
-- --------------------------------------------------------

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_department_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON UPDATE CASCADE; -- Idinagdag ang FK

--
-- Constraints for table `workplace_complaint`
--
ALTER TABLE `workplace_complaint`
  ADD CONSTRAINT `fk_wc_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_wc_rules` FOREIGN KEY (`rules_id`) REFERENCES `rules` (`rules_id`) ON UPDATE CASCADE;

COMMIT;
