DELIMITER //

CREATE PROCEDURE Calculate_Electricity_Bill()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE c_id INT;
    DECLARE c_name VARCHAR(100);
    DECLARE pre_read INT;
    DECLARE cur_read INT;
    DECLARE units INT;
    DECLARE amt DECIMAL(10,2);

    -- Cursor to fetch all customers
    DECLARE cur CURSOR FOR SELECT customer_id, name, pre_reading, cur_reading FROM Bill;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO c_id, c_name, pre_read, cur_read;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SET units = cur_read - pre_read;

        -- Calculate amount based on slabs
        IF units <= 100 THEN
            SET amt = units * 2;
        ELSEIF units <= 200 THEN
            SET amt = (100 * 2) + ((units - 100) * 2.5);  
        ELSEIF units <= 300 THEN
            SET amt = (100 * 2) + (100 * 2.5) + ((units - 200) * 3);  
        ELSE
            SET amt = (100 * 2) + (100 * 2.5) + (100 * 3) + ((units - 300) * 4); 
        END IF;

        -- Update the table with units and amount
        UPDATE Bill
        SET unit = units,
            amount = amt
        WHERE customer_id = c_id;

    END LOOP;

    CLOSE cur;
END;
//

DELIMITER ;

CREATE TABLE Bill (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    pre_reading INT,
    cur_reading INT,
    unit INT,
    amount DECIMAL(10,2)
);



INSERT INTO Bill (customer_id, name, pre_reading, cur_reading, unit, amount) VALUES
(1, 'Alice', 1000, 1100, NULL, NULL),   -- Consumed 100 units
(2, 'Bob', 1500, 1650, NULL, NULL),     -- Consumed 150 units
(3, 'Charlie', 2000, 2350, NULL, NULL), -- Consumed 350 units
(4, 'David', 500, 750, NULL, NULL);     -- Consumed 250 units


CALL Calculate_Electricity_Bill();

-------------------MY OWN -----------------------------


CREATE PROCEDURE CalculateBill()
     begin
     declare finished int default 0;
     declare id int;
     declare pre int;
     declare cur int;
     declare uni int;
     declare amt int;
     declare curs cursor for select customer_id,pre_reading,cur_reading from Bill;
     declare continue handler for not found set finished=1;
     open curs;
     loop1: loop fetch curs into id,pre,cur;
     if finished THEN leave loop1;
     end if ;
     set uni=cur-pre;
     IF uni <=100 THEN
     set amt=uni*2;
     ELSEIF uni <=200 THEN
     set amt=(100*2)+((uni-100)*2.5);
     ELSEIF uni <=300 THEN
     set amt=(100*2)+(100*2.5)+((uni-200)*3);
     ELSE
     set amt=(100*2)+(100*2.5)+(100*3)+((uni-300)*4);
     END IF;
     Update Bill set unit=uni,amount=amt where customer_id=id;
     end loop ;
     select "BIll caluculated " as message;
     close curs ;
     end //
