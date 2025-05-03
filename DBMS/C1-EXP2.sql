-- Create a 'Persons' table with constraints: 'Person_Id' is the primary key, 'name' cannot be null, 'Aadhar' must be unique and not null, and 'age' must be greater than 18 (Note: CHECK constraint may be ignored in some MySQL versions) 
create table Persons(Person_Id int PRIMARY KEY,name varchar(20) NOT NULL,Aadhar int NOT NULL UNIQUE,age int CHECK(age>18)); 

-- Create an 'Orders' table with 'Order_Id' as primary key and a foreign key 'Person_Id' referencing 'Persons' table 
create table Orders(Order_Id int PRIMARY KEY,OrderNumber int NOT NULL,Person_Id int, FOREIGN KEY(Person_Id) REFERENCES Persons(Person_Id)); 

-- Describe the structure of 'Persons' table 
desc Persons; 

-- Describe the structure of 'Orders' table 
desc Orders; 

-- Add a primary key constraint to 'emp_no' column of 'Employee' table (ensure values are unique before running) 
alter table Employee add PRIMARY KEY (emp_no); 

-- Add a primary key constraint to 'dept_no' column of 'Department' table 
alter table Department add PRIMARY KEY(dept_no); 

-- Add a foreign key on 'dept_no' in 'Employee' that references 'Department' and enables cascading delete 
alter table Employee add FOREIGN KEY(dept_no) REFERENCES Department(dept_no) on delete cascade; 

-- Remove the primary key constraint from the 'Orders' table (ensure it's safe before running) 
alter table Orders drop PRIMARY KEY;
