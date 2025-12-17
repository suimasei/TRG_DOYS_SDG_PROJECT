-- DDL SCRIPT FOR SDG5_DB DATABASE SCHEMA

-- Database: `sdg5_db`
-- Table: company
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL PRIMARY KEY,
  `company_name` varchar(150) NOT NULL,
  `industry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table: department
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `company_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  CONSTRAINT `fk_department_company` FOREIGN KEY (`company_id`) 
    REFERENCES `company` (`company_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table: employee
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL PRIMARY KEY,
  `name` varchar(150) NOT NULL,
  `age` int(11) NOT NULL,
  `academical_achievement` varchar(100) NOT NULL,
  `sex` char(1) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `date_hired` date NOT NULL,
  `department_id` int(11),
  `company_id` int(11),
  CONSTRAINT `fk_employee_company` FOREIGN KEY (`company_id`) 
    REFERENCES `company` (`company_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_employee_department` FOREIGN KEY (`department_id`) 
    REFERENCES `department` (`department_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table: rules
CREATE TABLE `rules` (
  `rules_id` int(11) NOT NULL PRIMARY KEY,
  `policy_name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table: workplace_complaint
CREATE TABLE `workplace_complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `employee_id` int(11) NOT NULL,
  `rules_id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint_date` date NOT NULL,
  `status` enum('pending','filed','investigating','resolved') DEFAULT 'pending',
  `resolution_notes` text,
  CONSTRAINT `fk_wc_employee` FOREIGN KEY (`employee_id`) 
    REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_wc_rules` FOREIGN KEY (`rules_id`) 
    REFERENCES `rules` (`rules_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
