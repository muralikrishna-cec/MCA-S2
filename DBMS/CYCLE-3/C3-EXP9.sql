
CREATE TABLE students (student_id INT PRIMARY KEY,name VARCHAR(100),sub1 INT,sub2 INT,sub3 INT,sub4 INT,sub5 INT,TOTAL INT,PER_MARKS DECIMAL(5,2), GRADE VARCHAR(20) ) //

INSERT INTO students (student_id, name, sub1, sub2, sub3, sub4, sub5) VALUES (1, 'John Doe', 85, 90, 77, 92, 88) //


 CREATE TRIGGER On_Update
    ->      BEFORE UPDATE ON students FOR EACH ROW 
    ->      BEGIN
    ->      SET NEW.TOTAL=NEW.sub1+NEW.sub2+NEW.sub3+NEW.sub4+NEW.sub5;
    ->      SET NEW.PER_MARKS=NEW.TOTAL/5;
    ->      IF NEW.PER_MARKS >= 90 THEN
    ->      SET NEW.GRADE='EXCELLENT';
    ->      ELSEIF NEW.PER_MARKS >= 75 THEN
    ->      SET NEW.GRADE='VERY GOOD';
    ->      ELSEIF NEW.PER_MARKS >= 60 THEN
    ->      SET NEW.GRADE='GOOD';
    ->      ELSEIF NEW.PER_MARKS >= 40 THEN
    ->      SET NEW.GRADE='AVERAGE';
    ->      ELSE
    ->      SET NEW.GRADE='NOT PROVED';
    ->      END IF ;
    ->      END //

update students set sub1=86 where student_id=1 //    


