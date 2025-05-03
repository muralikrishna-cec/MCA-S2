******************************** A *******************************

-- Create a new database named 'college'
create database college;

-- Select the 'college' database for use
use college;

-- Create a 'Student' table with fields like roll number, name, date of birth, etc.
create table Student(roll_no int,name varchar(20),dob date,address text(30),phone_no varchar(20),blood_grp varchar(20));

-- Describe the structure of the 'Student' table
desc Student;

-- Create a 'Course' table with ID, name, and duration of the course
create table Course(Course_id int,Course_name varchar(20),course_duration int);

-- Show all tables in the current database
show tables;

-- Describe the structure of the 'Course' table
desc Course;

-- Drop the column 'blood_grp' from the 'Student' table
alter table Student drop blood_grp;

-- Add a new column 'Adhaar_no' of type int to the 'Student' table
alter table Student add Adhaar_no int;

-- Modify 'phone_no' column type from varchar to int
alter table Student modify phone_no int;

-- Delete the 'Student' table
drop table Student;

-- Delete the 'Course' table
drop table Course;

-- Delete the 'college' database
drop database college;


*********************************** B *************************************

-- Create a new database named 'organization'
create database organization;

-- Select the 'organization' database for use
use organization;

-- Create an 'Employee' table with fields like emp_no, emp_name, DOB, etc.
create table Employee(emp_no varchar(10),emp_name varchar(20),dob date,address text(30),mobile_no int(10),dept_no varchar(20),salary int);

-- Describe the structure of the 'Employee' table
desc Employee;

-- Create a 'Department' table with department number, name, and location
create table Department(dept_no varchar(10),dept_name varchar(20),location varchar(20));

-- Describe the structure of the 'Department' table
desc Department;

-- Show all tables in the current database
show tables;

-- Describe both 'Employee' and 'Department' tables again
desc Employee;
desc Department;

-- Add a new column 'Desigination' to the 'Employee' table
alter table Employee add Desigination varchar(20);

-- Drop the column 'location' from the 'Department' table
alter table Department drop location;
