DELIMITER //

CREATE PROCEDURE CheckArmstrong(IN num INT)
BEGIN
    DECLARE temp, rem, sum, digits INT DEFAULT 0;

    SET temp = num;

    -- Count digits
    WHILE temp > 0 DO
        SET temp = temp DIV 10;
        SET digits = digits + 1;
    END WHILE;

    SET temp = num;
    SET sum = 0;

    -- Calculate Armstrong sum
    WHILE temp > 0 DO
        SET rem = temp MOD 10;
        SET sum = sum + POW(rem, digits);
        SET temp = temp DIV 10;
    END WHILE;

    -- Output result
    SELECT CONCAT(num, IF(sum = num, ' is an Armstrong number.', ' is not an Armstrong number.')) AS Result;
END //

DELIMITER ;

---------------------------------------------------------------------------------------

DELIMITER //

CREATE PROCEDURE CheckPalindrome(IN num INT)
BEGIN
    DECLARE original, temp, rem, rev INT DEFAULT 0;

    SET original = num;
    SET temp = num;

    -- Reverse the number
    WHILE temp > 0 DO
        SET rem = temp MOD 10;
        SET rev = rev * 10 + rem;
        SET temp = temp DIV 10;
    END WHILE;

    -- Output result
    SELECT CONCAT(original, IF(rev = original, ' is a Palindrome.', ' is not a Palindrome.')) AS Result;
END //

DELIMITER ;
-------------------------------------------------------------------------------------------------------
DELIMITER //

CREATE PROCEDURE GetEmployeeDetails(IN empNo INT)
BEGIN
    SELECT Name, Salary
    FROM Employee
    WHERE EmployeeNumber = empNo;
END //

DELIMITER ;
--------------------------------------------------------------------------------------------------------
DELIMITER //

CREATE PROCEDURE CheckVowel(IN ch CHAR(1))
BEGIN
    IF LOWER(ch) IN ('a', 'e', 'i', 'o', 'u') THEN
        SELECT CONCAT(ch, ' is a vowel.') AS Result;
    ELSE
        SELECT CONCAT(ch, ' is not a vowel.') AS Result;
    END IF;
END //

DELIMITER ;

------------------------------------------------------------------------------------------------
DELIMITER //

CREATE FUNCTION CalculateCommission(empNo INT) 
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    DECLARE empSalary DECIMAL(10,2);

    SELECT salary INTO empSalary FROM Employee
    WHERE emp_no = empNo;

    RETURN empSalary * 0.10;
END //

DELIMITER ;

SELECT CalculateCommission(101) AS CommissionAmount;

----------------------------------------------------------------------



 