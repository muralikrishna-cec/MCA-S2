create table regions(region_id varchar(10) Primary Key,region_name varchar(20));

create table countries(country_id varchar(10) primary key,country_name varchar(30),region_id varchar(10),Foreign Key(region_id) References regions (region_id));

CREATE TABLE locations (location_id INT PRIMARY KEY,street_address VARCHAR(255),postal_code VARCHAR(20),city VARCHAR(255),state_province VARCHAR(255),country_id VARCHAR(2),FOREIGN KEY (country_id) REFERENCES countries(country_id));

create table departments(department_id varchar(10) primary key,department_name varchar(20),location_id int,Foreign Key(location_id) References locations(location_id));

CREATE TABLE jobs (job_id INT PRIMARY KEY,job_title VARCHAR(255),min_salary DECIMAL(10, 2),max_salary DECIMAL(10, 2));

CREATE TABLE employees (employee_id INT PRIMARY KEY,first_name VARCHAR(255),last_name VARCHAR(255),email VARCHAR(255),phone_number VARCHAR(20),hire_date DATE,salary DECIMAL(10, 2),manager_id INT,FOREIGN KEY (manager_id) REFERENCES employees(employee_id),department_id varchar(20),FOREIGN KEY (department_id) REFERENCES departments(department_id),job_id INT,FOREIGN KEY (job_id) REFERENCES jobs(job_id));

CREATE TABLE dependents (dependent_id INT PRIMARY KEY,first_name VARCHAR(255),last_name VARCHAR(255),relationship VARCHAR(255), employee_id INT,FOREIGN KEY (employee_id) REFERENCES employees(employee_id));

INSERT INTO regions (region_id, region_name) 
VALUES (1, 'Asia'),(2, 'Americas'),(3, 'Europe');

INSERT INTO countries (country_id, country_name, region_id) 
VALUES ('IN', 'India', 3),('US','United States', 2),('UK', 'United Kingdom', 2);

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) 
VALUES (1700, '123 Main St', '12345', 'Delhi', 'DL', 'IN'),(1701, '456 Elm St','54321', 'Mumbai', 'MH', 'IN'),(1702, '789 Oak St', '67890', 'Bangalore', 'KA', 'IN');

INSERT INTO departments (department_id, department_name, location_id) 
VALUES (1, 'Finance', 1700),(2, 'Engineering', 1701),(3, 'Sales', 1702);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary) 
VALUES (1, 'Manager', 50000, 100000),(2, 'Software Engineer', 40000, 80000),(3, 'Sales Representative', 30000, 60000),(4, 'HR Specialist', 35000, 70000);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '123456789', '2023-01-01', 1, 50000, NULL, 1),(2, 'Jane', 'Smith', 'jane.smith@example.com', '987654321', '2023-01-15', 2, 60000, 1, 1),(3, 'Michael', 'Taylor', 'michael.taylor@example.com', '555555555', '2023-02-01', 3, 70000, 2, 2),(4, 'Emily', 'Brown', 'emily.brown@example.com', '333333333', '2023-02-15', 3, 80000, 1, 2),(5, 'David', 'Johnson', 'david.johnson@example.com', '111111111', '2023-03-01', 4, 90000, 2, 3);

INSERT INTO dependents (dependent_id, first_name, last_name, relationship,employee_id) 
VALUES (1, 'Alice', 'Doe', 'Child', 1),(2, 'Bob', 'Doe', 'Child', 1),(3, 'Emma', 'Smith', 'Spouse', 2),(4, 'Olivia', 'Taylor', 'Child', 3),(5, 'Noah', 'Brown', 'Child', 4);

select e.first_name,e.last_name from employees e JOIN departments d ON e.department_id=d.department_id JOIN locations l ON d.location_id=l.location_id where l.location_id=1700;
select * from employees where department_id=(select department_id from departments where location_id=1700);
select e.first_name,e.last_name,l.location_id from employees e JOIN departments d ON e.department_id=d.department_id JOIN locations l ON d.location_id=l.location_id where l.location_id=1700;

select e.first_name,e.last_name,l.location_id from employees e JOIN departments d ON e.department_id=d.department_id JOIN locations l ON d.location_id=l.location_id where l.location_id!=1700;

select * from employees where salary=(select max(salary) from employees);

select first_name,last_name,salary from employees where salary > (select avg(salary) from employees);

select DISTINCT d.department_id,d.department_name from departments d JOIN employees e ON d.department_id=e.department_id where e.salary >10000;
SELECT d.department_id, d.department_name FROM departments d WHERE EXISTS ( SELECT * FROM employees e WHERE e.department_id = d.department_id AND e.salary > 10000);

select e.employee_id,e.first_name,e.last_name from employees e where salary >(select min(salary) from employees where department_id=e.department_id);

SELECT d.department_id, d.department_name FROM departments d WHERE NOT EXISTS ( SELECT * FROM employees e WHERE e.department_id = d.department_id AND e.salary > 10000);

select e.first_name,e.last_name from employees e where salary >(select min(salary) from employees where department_id=e.department_id);

select first_name,last_name from employees where salary >(select MIN(min_salary) from (select MIN(salary) as min_salary from employees group by department_id)as minsalary);
SELECT employee_id, first_name, last_name, salary FROM employees WHERE salary > (SELECT MIN(min_salary) FROM (SELECT MIN(salary) AS min_salary FROM employees GROUP BY department_id ) AS dept_min_salaries);

SELECT first_name, last_name FROM employees WHERE salary > (SELECT MAX(max_salary) FROM (SELECT MAX(salary) AS max_salary FROM employees GROUP BY department_id ) AS dept_max_salaries);

select AVG(avg_sal) from(select department_id,avg(salary) as avg_sal from employees group by department_id) as total_sal;

select employee_id,first_name,last_name,salary,(salary-(select AVG(salary) from employees))as diff from employees;

select e.employee_id,e.first_name,e.last_name,e.salary from employees e where salary >(select avg(salary) from employees where department_id=e.department_id);

select e.employee_id,e.first_name,e.last_name from employees e  LEFT JOIN dependents d ON e.employee_id=d.employee_id where d.employee_id IS NULL;

select e.first_name,e.last_name,d.department_name from employees e JOIN departments d ON e.department_id=d.department_id where d.department_id in(1,2,3);

select e.first_name,e.last_name,d.department_name,j.job_title from employees e JOIN departments d ON e.department_id=d.department_id JOIN jobs j ON e.job_id=j.job_id where d.department_id in(1,2,3) and e.salary>10000;

select d.department_name,l.street_address,l.postal_code,c.country_name,r.region_name From departments d JOIN locations l ON d.location_id=l.location_id JOIN countries c ON l.country_id=c.country_id JOIN regions r ON r.region_id=c.region_id;

---The COALESCE() function returns the first non-null value in the list of arguments. 

select e.first_name,e.last_name,d.department_id,COALESCE(department_name,'no dept') as dept_name from employees e LEFT JOIN departments d ON d.department_id=e.department_id;  
select e.first_name,e.last_name,d.department_id,d.department_name from employees e LEFT JOIN departments d ON d.department_id=e.department_id;

select e.first_name,e.last_name,d.department_name,l.city,l.state_province from employees e JOIN departments d ON d.department_id=e.department_id JOIN locations l ON l.location_id=d.location_id;

select e.first_name,e.last_name,d.department_name,l.city,l.state_province from employees e JOIN departments d ON d.department_id=e.department_id JOIN locations l ON l.location_id=d.location_id where e.first_name LIKE '%m%';


select e.first_name,e.last_name,d.department_id,d.department_name from departments d LEFT JOIN employees e ON e.department_id=d.department_id;

select e.first_name,COALESCE(m.first_name,'NO MANAGER') from employees e LEFT JOIN employees m ON e.manager_id=m.employee_id;

select first_name,last_name,department_id from employees where department_id =(select department_id from employees where last_name="Taylor");

select j.job_title,CONCAT(e.first_name," ",e.last_name) as name,(j.max_salary-e.salary)as salary_diff from employees e JOIN jobs j On e.job_id=j.job_id;

select d.department_name,avg(e.salary)as average ,count(e.employee_id) from employees e LEFT JOIN departments d ON d.department_id=e.department_id Group by d.department_id;

CREATE VIEW EmployeeInDelhi as select e.employee_id,CONCAT(e.first_name," ",e.last_name) as Employee_name,e.phone_number,j.job_title,d.department_name,CONCAT(m.first_name,"",m.last_name)as manager from employees e JOIN departments
d ON e.department_id=d.department_id JOIN jobs j ON j.job_id=e.job_id LEFT JOIN employees m ON e.manager_id=m.employee_id JOIN locations l On d.location_id=l.location_id where l.city='Delhi';

select Employee_name from EmployeeInDelhi where job_title='Manager' and department_name='finance';

---------update not possible on view

select e.employee_id,e.first_name,e.last_name from employees e LEFT JOIN dependents d ON e.employee_id=d.employee_id where d.employee_id IS NULL;

select *from employees where manager_id=1 UNION select * from employees where manager_id=3;

select*from employees where employee_id in(select distinct(employee_id) from dependents);




