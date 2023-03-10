--Part 1 -- Select - Distinct - Where - Order By - Like - Group By - Having
-- 1. List all the employees first and last name with their salary in employees
--table
-- 2. How many employees have salary less than 5000?
-- 3. How many employees have salary between 6000 and 7000?
-- 4. List all the different region_ids in countries table
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,
--firstName: Douglas)
-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
-- 7. display the maximum salary in employees table
-- 8. display the the minimum salary in employees table
-- 9. display the average salary of the employees;
-- 10. count the total numbers of the departments in departs table
-- 11. sort the start_date in ascending order in job_history's table
-- 12. sort the start_date in descending order in job_history's table
-- 13. display all records whose last name contains 2 lowercase 'a's
-- 14. display all the employees whose first name starts with 'A'
-- 15. display all the employees whose job_ID contains 'IT'
-- 16. display all  unique job_id that end with CLERK in employee table
-- 17.display all  employees first name starts with A and have exactly 4 characters
--Total
-- 18. display all the employees whose department id in 50, 80, 100
-- 19. display all employees who does not work in any one of these department id
--90, 60,  100, 130, 120
-- 20. divide employees into groups by using thier job id
-- 1 display the maximum salaries in each groups
-- 2 display the minium salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum
--salary of 5000 ?
-- 5 display the total budgests of each groups
-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,
--SA_REP, FI_ACCOUNT, AD_VP
-- 22.display max salary  for each department
-- 23. display total salary for each department except department_id 50, and where
--total salary >30000

-- 1. display full addresses from locations table in a single column
-- 2. display all informations of the employee who has the minimum salary
--in employees table
-- 3. display the second minimum salary from the employees
-- 4. display all informations of the employee who has the second minimum
--salary
-- 5. list all the employees who are making above the average salary;
-- 6. list all the employees who are making less than the average salary
-- 7. display manager name of 'Neena'
-- 8. find the 3rd maximum salary from the employees table (do not include
--duplicates)
-- 9. find the 5th maximum salary from the employees table (do not include
--duplicates)
-- 10. find the 7th maximum salary from the employees table (do not
--include duplicates)
-- 11. find the 10th maximum salary from the employees table (do not
--include duplicates)
-- 12. find the 3rd minimum salary from the employees table (do not
--include duplicates)
-- 13. find the 5th minimum salary from the employees table (do not
--include duplicates)

-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
-- 3. FIND OUT DEPARTMENT_NAME AND CITY
-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES
-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME  FOR DEPARTMENT ID 80 OR 40

-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE.
--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT
--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT
--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES