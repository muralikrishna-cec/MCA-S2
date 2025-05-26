create table Customer(Customer_id int auto_increment PRIMARY KEY,name varchar(20),city varchar(30),credits decimal(10,2)) //

INSERT INTO Customer (name, city, credits) VALUES('Alice', 'New York', 7500.00),('Bob', 'Los Angeles', 3000.00),('Charlie', 'Chicago', 900.00),('Diana', 'Houston', 5200.00),('Ethan', 'Miami', 1500.00),('Fiona', 'Seattle', 10000.00);    

create Procedure GetDetailsByName(IN val VARCHAR(200))
begin
  declare flag int ;
  select COUNT(*) into flag from Customer Where name = val;
  IF flag = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "NO USER FOUND......";
  ELSE
    select * from Customer Where name =val;
  END IF;
  end // 