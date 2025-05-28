Create Procedure Membership(IN crdt INT,OUT membership VARCHAR(200))
begin
  IF crdt > 5000 THEN
    SET membership ='Platinum';
  ELSEIF crdt >=1000 THEN
    SET membership ='Gold';
  ELSE
    SET membership ='Silver';
  END IF;
end //         
