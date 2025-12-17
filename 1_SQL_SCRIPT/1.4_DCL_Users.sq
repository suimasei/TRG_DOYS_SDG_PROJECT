-- PURPOSE: Security and Access Control for SDG 5 Database
-- ==========================================================

-- 1. CREATE AN ADMINISTRATIVE USER
-- This user has full access to manage the entire database.
CREATE USER 'sdg5_admin'@'localhost' IDENTIFIED BY 'AdminPass123!';
GRANT ALL PRIVILEGES ON sdg5_db.* TO 'sdg5_admin'@'localhost';


-- 2. CREATE A RESTRICTED HR STAFF USER
-- This user can only manage records and run reports but cannot delete tables.
CREATE USER 'hr_staff'@'localhost' IDENTIFIED BY 'HRStaff2025!';

-- Grant basic data entry permissions (SELECT, INSERT, UPDATE)
GRANT SELECT, INSERT, UPDATE ON sdg5_db.employee TO 'hr_staff'@'localhost';
GRANT SELECT, INSERT, UPDATE ON sdg5_db.workplace_complaint TO 'hr_staff'@'localhost';
GRANT SELECT ON sdg5_db.department TO 'hr_staff'@'localhost';
GRANT SELECT ON sdg5_db.company TO 'hr_staff'@'localhost';

-- IMPORTANT: Grant permission to run your FR3 Procedure
-- Without this, the HR user cannot add employees via your procedure.
GRANT EXECUTE ON PROCEDURE sdg5_db.Add_New_Employee TO 'hr_staff'@'localhost';

-- IMPORTANT: Grant permission to see your FR4 Analytical Views
-- This allows the HR user to generate the reports you created.
GRANT SELECT ON sdg5_db.comprehensive_complaint_position_analysis TO 'hr_staff'@'localhost';
GRANT SELECT ON sdg5_db.employee_position_levels TO 'hr_staff'@'localhost';


-- 3. APPLY PERMISSIONS
FLUSH PRIVILEGES;

-- Verification (Optional)
-- SHOW GRANTS FOR 'hr_staff'@'localhost';
