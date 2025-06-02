
create table EMPLOYEE1(emp_id int primary key AUTO_INCREMENT,first_name varchar(30),last_name varchar(30), job_id varchar(20)) //

CREATE TRIGGER Bfore_insert
    -> BEFORE INSERT ON EMPLOYEE1 FOR EACH ROW
    -> begin
    -> SET NEW.first_name=TRIM(NEW.first_name);
    -> SET NEW.last_name=TRIM(NEW.last_name);
    -> SET NEW.job_id=UPPER(NEW.job_id);
    -> end //

INSERT INTO EMPLOYEE1 (first_name, last_name, job_id) VALUES ('   alice   ', '  smith ', 'qa_analyst');


OLD. – Refers to the values before the change
Only used in DELETE and UPDATE triggers.
Represents the row that is being deleted or updated.

NEW. – Refers to the values after the change
Used in INSERT and UPDATE triggers.
Represents the new row that is being inserted or updated.