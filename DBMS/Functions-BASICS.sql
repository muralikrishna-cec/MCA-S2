delimiter //
mysql> create Function mutiply_in(num1 int,num2 int)
    -> returns int deterministic
    -> begin
    -> declare res int;
    -> set res=num1*num2;
    -> return res;
    -> end //

select mutiply_in(1,2)//

