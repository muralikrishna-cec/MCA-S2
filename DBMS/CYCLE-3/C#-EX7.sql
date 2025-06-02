
CREATE TABLE Emp_history ( emp_id INT,name VARCHAR(100),wrking_days int,desig VARCHAR(100),salary DECIMAL(10,2),Date_of_deletion DATE ) //

create Trigger delEmployee
    -> before delete on Employees for each row
    -> begin
    -> insert into Emp_history(emp_id,name,wrking_days,desig,salary,Date_of_deletion) values(old.emp_id,old.emp_name,old.no_wrk,old.desigination,old.salary,CURDATE());
    -> end //

delete from Employees where emp_id=1 //    

