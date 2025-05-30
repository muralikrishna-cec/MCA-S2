--- **************************** EXAMPLE 1 ****************************************

Delimiter //

mysql> Create Procedure CreateUserTable()
    -> begin
    -> Create table if not exists User(userId int auto_increment Primary Key,first_Name Varchar(200),last_Name Varchar(200),City Varchar(200));
    -> insert into User(first_Name,last_Name,City) values('Sam','Bombay','Delhi');
    -> insert into User(first_Name,last_Name,City) values('Raju','Madrassi','Chennai');
    -> select * from User;
    -> end //

call CreateUserTable() //


--- **************************** EXAMPLE 2 ****************************************

 Create Procedure CountValue()
    -> begin
    -> declare count int;
    -> select COUNT(*) into count from User;
    -> select count;
    -> end //

call CountValue() //   

drop procedure CountValue //


--- **************************** EXAMPLE 3 ****************************************

create Procedure SelectByLastName(IN l_name VARCHAR(200))
    -> begin
    -> select * From User where last_name=l_name;
    -> end //

 call SelectByLastName('Krishna') //


--- **************************** EXAMPLE 4 ****************************************
    
create Procedure GetCountByLastName(IN l_name VARCHAR(255),OUT count int)
    -> begin
    -> select COUNT(*) into count from User Where last_name=l_name;
    -> end //

call GetCountByLastName('Bombay',@count) //

mysql> select @count //

show Procedure status where db='Procedures' //
