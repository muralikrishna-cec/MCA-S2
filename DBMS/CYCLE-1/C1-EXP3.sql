-- Insert sample data into the 'Department' table
insert into Department values
('DO1','CSE'),
('DO2','MCA'),
('DO3','MECH'),
('DO4','ECE'),
('DO5','EC'),
('DO6','Civil'),
('DO7','Arch'),
('DO8','BCA'),
('DO9','BSC'),
('D10','MATHS');

-- Insert sample data into the 'Employee' table
insert into Employee values('emp2','Aby','1988-01-01','SHA Venue',9874563310,'Do1',35000,'Computer');
insert into Employee values('emp1','John','1996-01-01','Adoor',787878783,'DO2',150000,'Manager');
insert into Employee values('emp3','Abraham','1983-01-01','SH Avenue',9874563310,'DO3',180000,'Computer Assistant');
insert into Employee values('emp4','Aiswarya','1983-01-01','SH Avenue',9874563310,'DO4',45000,'Computer Assistant');
insert into Employee values('emp5','Aisu','1983-01-01','SH Avenue',9874563310,'DO5',45000,'Manager');
insert into Employee values('emp6','Ram','1983-01-01','SH Avenue',9874563310,'DO6',7000,'Clerk');
insert into Employee values('emp7','Raj','1983-01-01','SH Avenue',9874563310,'DO7',8000,'Clerk');
insert into Employee values('emp8','Rohan','1983-01-01','NY Avenue',9874563310,'DO8',18000,'TL');
insert into Employee values('emp9','Rohith','1983-01-01','NY Avenue',9874563310,'DO9',70000,'TL');
insert into Employee values('emp10','Renju','1983-01-01','NY Avenue',9874563310,'D10',70000,'TL');
insert into Employee values('emp11','Rohith','1983-01-01','NY Avenue',9874563310,'DO9',4000,'TL');

-- Select employee number and name where department number is 'Do2'
select emp_no, emp_name from Employee where dept_no='Do2';

-- Display all employee details ordered by salary in descending order
select emp_no, emp_name, Desigination, dept_no, salary from Employee order by salary desc;

-- Select employees whose salary is between 2000 and 5000
select emp_no, emp_name from Employee where salary between 2000 and 5000;

-- Get distinct designations from Employee table
select distinct(Desigination) from Employee;

-- Update salary for all employees with designation 'Manager' to 45000
update Employee set salary=45000 where Desigination='Manager';

-- Update mobile number for employee named 'John'
update Employee set mobile_no=679046345 where emp_name='John';

-- Delete employees with salary equal to 7000
delete from Employee where salary=7000;

-- Select employees whose names start with 'A'
select emp_name, mobile_no from Employee where emp_name like 'A%';

-- Select all employee records where name length is at least 3 and salary is greater than 20000
select * from Employee where length(emp_name) >= 3 and salary > 20000;

-- Select specific employees by employee number
select * from Employee where emp_no in ('emp1', 'emp2', 'emp6');

-- Select employees with salaries between 120000 and 300000
select emp_name, emp_no from Employee where salary between 120000 and 300000;

-- Select all employees whose designation is either 'Manager' or 'Computer Assistant'
select * from Employee where Desigination in ('Manager', 'Computer Assistant');

--  count employees per department name
select d.dept_name, COUNT(*) AS emp_count from Employee e JOIN Department d ON e.dept_no = d.dept_no GROUP BY e.dept_no;
select dept_no,COUNT(*) from Employee Group By dept_no;

--  calculate average salary by department name
select d.dept_name, AVG(salary) as avg_salary from Employee e JOIN Department d ON e.dept_no = d.dept_no GROUP BY d.dept_name;
select dept_no,AVG(salary) from Employee Group by dept_no;

-- Displays total salary of employees in each department
select dept_no, sum(salary) from Employee group by dept_no;
select e.dept_no,d.dept_name,SUM(salary) AS TOTAL_SALARY from Employee e JOIN Department d ON e.dept_no=d.dept_no Group By dept_no;

--  Department-wise MIN and MAX salary 
SELECT e.dept_no, d.dept_name, MIN(salary) AS MIN_SALARY, MAX(salary) AS MAX_SALARY FROM Employee e JOIN Department d ON e.dept_no = d.dept_no GROUP BY e.dept_no;
SELECT dept_no, MIN(salary) AS MIN_SALARY, MAX(salary) AS MAX_SALARY FROM Employee GROUP BY dept_no;

-- . Average salary per department excluding 'DO5' 
SELECT dept_no, AVG(salary) FROM Employee WHERE dept_no != 'DO5' GROUP BY dept_no;
SELECT dept_no, AVG(salary) FROM Employee WHERE dept_no <> 'DO5' GROUP BY dept_no;
-- Note: != and <> are functionally equivalent in MySQL

-- Departments excluding 'Do1' with average salary > 20000, ordered by average salary
SELECT dept_no, AVG(salary) FROM Employee WHERE dept_no != 'Do1' GROUP BY dept_no HAVING AVG(salary) > 20000 ORDER BY AVG(salary);
-- Note: SQL clause execution order: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

