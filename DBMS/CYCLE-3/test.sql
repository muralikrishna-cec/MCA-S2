
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
