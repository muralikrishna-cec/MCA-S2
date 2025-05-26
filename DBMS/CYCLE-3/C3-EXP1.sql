
create table Account (acc_Id int auto_increment Primary Key,name Varchar(200),amount int);

insert into Account (name,amount) values('RAM',10000),('John Doe',5000),('Jane Smith',7500),('sara',30),('Emily',400),('David',9000),('lisa',10000),('tom',8000),('alice',500),('mike',600),('bob',10000);


Delimiter //

create Procedure Withdraw(IN id INT , IN amt INT)
    begin

     declare acc_exists INT;
     declare curr_bal INT ;

     select COUNT(*) into acc_exists from Account Where acc_Id = id;

     IF acc_exists != 1 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "ACCOUNT DOES NOT EXISTS......";
     ELSE
        select amount into curr_bal from Account Where acc_Id = id ;
        IF curr_bal - amt < 1000 THEN
           SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "INSUFFICIENT BALANCE .... (MINIMUM BALANCE 1000 )" ;
        ELSE
           Update Account set amount = amount-amt Where acc_Id = id;
           select "Withrdrawal Succesfull....!" AS message, amount as `NEW BALANCE` from Account where acc_Id = id;
        END IF;
     END IF;
    end //
     
