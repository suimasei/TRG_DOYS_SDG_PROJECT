-- DML SCRIPT FOR INSERTING TEST DATA INTO SDG5_DB TABLES --

START TRANSACTION;

-- --------------------------------------------------------
-- Dumping data for table `company`
-- --------------------------------------------------------

INSERT INTO `company` (`company_id`, `company_name`, `industry`) VALUES
(1, 'Equality Tech Solutions', 'Information Technology'),
(2, 'FairWorks Manufacturing', 'Manufacturing');

-- --------------------------------------------------------
-- Dumping data for table `department`
-- --------------------------------------------------------

INSERT INTO `department` (`department_id`, `company_id`, `department_name`) VALUES
(1, 1, 'Human Resources'),
(2, 1, 'Engineering'),
(3, 2, 'Production'),
(4, 2, 'Sales');

-- --------------------------------------------------------
-- Dumping data for table `rules`
-- --------------------------------------------------------

INSERT INTO `rules` (`rules_id`, `policy_name`, `category`) VALUES
(1, 'Anti-Sexual Harassment Policy', 'Harassment'),
(2, 'Equal Pay for Equal Work Policy', 'Pay Equality'),
(3, 'Non-Discrimination in Promotion Policy', 'Promotion Bias'),
(4, 'Parental Leave and Care Policy', 'Parental Rights'),
(5, 'Anti-Bullying and Respect Policy', 'Workplace Respect');

-- --------------------------------------------------------
-- Dumping data for table `employee`
-- NOTE: department_id column is added based on the schema requirement. 
-- The values are logically assigned (1:HR, 2:Eng, 3:Prod, 4:Sales).
-- --------------------------------------------------------

INSERT INTO `employee` (`employee_id`, `name`, `age`, `academical_achievement`, `sex`, `job_title`, `date_hired`, `department_id`) VALUES
-- Equality Tech Solutions (Departments 1: HR, 2: Engineering)
(1, 'Juan Dela Cruz', 34, 'High School Graduate', 'M', 'Operations Manager', '2018-03-15', 2),
(2, 'Mark Reyes', 37, 'High School Graduate', 'M', 'Department Manager', '2017-07-10', 2),
(3, 'Jose Santos', 33, 'High School Graduate', 'M', 'Team Supervisor', '2019-01-05', 2),
(4, 'Carlos Lim', 40, 'High School Graduate', 'M', 'Senior Supervisor', '2016-09-01', 2),
(5, 'Miguel Torres', 35, 'High School Graduate', 'M', 'Shift Supervisor', '2019-11-20', 2),
-- FairWorks Manufacturing (Departments 3: Production, 4: Sales)
(6, 'Anthony Lee', 36, 'High School Graduate', 'M', 'Branch Manager', '2018-05-18', 3),
(7, 'Ramon Garcia', 32, 'High School Graduate', 'M', 'Team Leader', '2020-04-12', 3),
(8, 'Paulo Cruz', 38, 'High School Graduate', 'M', 'Operations Supervisor', '2016-10-08', 3),
(9, 'Luis Mendoza', 39, 'High School Graduate', 'M', 'Plant Manager', '2015-12-02', 3),
(10, 'Adrian Flores', 31, 'High School Graduate', 'M', 'Senior Team Leader', '2020-02-14', 3),
(11, 'Kevin Ramos', 33, 'High School Graduate', 'M', 'Line Supervisor', '2019-06-01', 4),
(12, 'Noel Aquino', 41, 'High School Graduate', 'M', 'Area Manager', '2014-08-20', 4),
(13, 'Daniel Kim', 30, 'High School Graduate', 'M', 'Assistant Manager', '2021-06-30', 4),
(14, 'Patrick Go', 37, 'High School Graduate', 'M', 'Section Supervisor', '2017-03-22', 4),
(15, 'Robert Chan', 42, 'High School Graduate', 'M', 'Division Manager', '2013-11-05', 4),
(16, 'Francis Uy', 34, 'High School Graduate', 'M', 'Production Supervisor', '2018-09-13', 3),
(17, 'Jerome Tan', 36, 'High School Graduate', 'M', 'Store Manager', '2017-01-27', 4),
(18, 'Gabriel Cruz', 32, 'High School Graduate', 'M', 'Team Supervisor', '2020-09-19', 2),
(19, 'Victor Ong', 39, 'High School Graduate', 'M', 'Senior Manager', '2015-05-07', 2),
(20, 'Ivan Dizon', 35, 'High School Graduate', 'M', 'Operations Manager', '2019-01-11', 2),
(21, 'Samuel Perez', 33, 'College Graduate', 'M', 'Senior Manager', '2018-03-03', 2),
(22, 'Christian Yu', 38, 'Bachelor\'s Degree', 'M', 'Finance Manager', '2014-06-25', 1), 
(23, 'Leo Sanchez', 36, 'College Graduate', 'M', 'HR Manager', '2016-12-15', 1),
(24, 'Harold Cruz', 34, 'Bachelor\'s Degree', 'M', 'IT Manager', '2018-08-09', 2),
(25, 'Dennis Cruz', 40, 'Bachelor\'s Degree', 'M', 'General Manager', '2013-10-30', 2),
(26, 'Maria Santos', 27, 'Bachelor\'s Degree', 'F', 'Administrative Assistant', '2021-04-05', 1),
(27, 'Ana Lopez', 29, 'Bachelor\'s Degree', 'F', 'Account Assistant', '2019-09-17', 1),
(28, 'Liza Dela Rosa', 25, 'College Graduate', 'F', 'HR Assistant', '2023-01-09', 1),
(29, 'Grace Kim', 30, 'Master\'s Degree', 'F', 'Project Coordinator', '2018-07-23', 2),
(30, 'Patricia Lim', 26, 'Bachelor\'s Degree', 'F', 'Network Support', '2020-11-30', 2),
(31, 'Angela Lee', 28, 'Bachelor\'s Degree', 'F', 'Business Support Staff', '2020-02-19', 4),
(32, 'Rosa Garcia', 24, 'College Graduate', 'F', 'Customer Service Representative', '2022-05-21', 4),
(33, 'Ella Torres', 27, 'Bachelor\'s Degree', 'F', 'Systems Support', '2021-10-01', 2),
(34, 'Catherine Cruz', 31, 'Master\'s Degree', 'F', 'Senior Analyst', '2018-12-11', 2),
(35, 'Bea Mendoza', 23, 'Bachelor\'s Degree', 'F', 'Junior Developer', '2023-03-20', 2),
(36, 'Jenny Ramos', 28, 'Bachelor\'s Degree', 'F', 'Quality Assurance Associate', '2020-06-15', 2),
(37, 'Nicole Aquino', 30, 'Bachelor\'s Degree', 'F', 'Operations Assistant', '2019-08-28', 3),
(38, 'Diana Kim', 26, 'College Graduate', 'F', 'Sales Associate', '2022-07-05', 4),
(39, 'Karen Go', 27, 'Bachelor\'s Degree', 'F', 'IT Support Specialist', '2020-04-10', 2),
(40, 'Rachel Chan', 32, 'Master\'s Degree', 'F', 'Senior Specialist', '2017-10-18', 1),
(41, 'Faith Uy', 27, 'Bachelor\'s Degree', 'F', 'Data Analyst', '2021-07-27', 2),
(42, 'Joan Tan', 29, 'Bachelor\'s Degree', 'F', 'Logistics Assistant', '2019-12-06', 3),
(43, 'Hannah Cruz', 25, 'College Graduate', 'F', 'Marketing Assistant', '2022-08-02', 4),
(44, 'Ivy Ong', 31, 'Master\'s Degree', 'F', 'Engineer', '2018-03-29', 2),
(45, 'Olivia Dizon', 28, 'Bachelor\'s Degree', 'F', 'Procurement Assistant', '2020-12-21', 3),
(46, 'Sophia Perez', 26, 'Bachelor\'s Degree', 'F', 'HR Staff', '2022-02-18', 1),
(47, 'Clarisse Yu', 30, 'Bachelor\'s Degree', 'F', 'Accounting Staff', '2019-05-09', 1),
(48, 'Lara Sanchez', 27, 'College Graduate', 'F', 'Warehouse Clerk', '2020-09-03', 3),
(49, 'Mika Cruz', 26, 'Bachelor\'s Degree', 'F', 'Graphic Designer', '2021-11-12', 2),
(50, 'Erika Reyes', 31, 'Bachelor\'s Degree', 'F', 'Team Assistant', '2018-06-08', 3),
(9999, 'Juan Dela Cruz', 30, 'Bachelor Degree', 'M', 'Senior Analyst', '2023-01-15', 2);

-- --------------------------------------------------------
-- Dumping data for table `workplace_complaint` (50 records)
-- --------------------------------------------------------

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

COMMIT;
