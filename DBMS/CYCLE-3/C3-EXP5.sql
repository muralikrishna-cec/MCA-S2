create table Employees(emp_id int primary key Auto_Increment,emp_name varchar(20),no_wrk int,desigination varchar(20),salary decimal(10,2)) //

insert into Employees (emp_name,no_wrk,desigination,salary) values("samuel",30,"Assistance Professor",0.00) //
insert into Employees (emp_name,no_wrk,desigination,salary) values("john",30,"Clerk",0.00) //
insert into Employees (emp_name,no_wrk,desigination,salary) values("ram",30,"Programmer",0.00) //

create procedure CalculateSalary()
    -> begin
    -> declare finished int default 0;
    -> declare id int;
    -> declare days int;
    -> declare desig varchar(20);
    -> declare sal decimal(10,2);
    -> declare cur cursor for select emp_id,no_wrk,desigination from Employees;
    -> declare continue handler for not found set finished=1;
    -> open cur;
    -> loop1:loop fetch cur into id,days,desig;
    -> if finished then leave loop1;
    -> end if;
    -> if desig='Assistance Professor' Then
    -> set sal=days*1750;
    -> ELSEIF desig='Clerk' THEN
    -> set sal=days*750;
    -> ELSE
    -> set sal=days*1250;
    -> end if;
    -> update Employees set salary=sal where emp_id=id;
    -> end loop;
    -> close cur;
    -> select "Salary updated" as message;
    -> end //
