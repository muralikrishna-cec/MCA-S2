create table employee (id int primary key,name varchar(20),position varchar(20)) //

insert into employee values(1,"sam","clerk") //
insert into employee values(2,"ram","manager")//


create Function GetCountByName(val varchar(20))
    -> RETURNS int
    -> DETERMINISTIC
    -> begin
    -> declare res int;
    -> select COUNT(*) into res from employee where name=val;
    -> return res;
    -> end //

create Procedure UpdateByName(IN val varchar(20),newPos varchar(20))
    -> begin
    -> declare empCount int;
    -> set empCount=(GetCountByName(val));
    -> IF empCount = 0 THEN
    -> select "No user found..." as message;
    -> ELSEIF empCount=1 THEN
    -> Update employee set position=newPos where name=val;
    -> select "updated succesfully.." as message , name,position from employee where name=val;
    -> ELSE
    -> select "More the 1 user.." as message;
    -> END IF ;
    -> end //

call UpdateByName("sam","test")//    
