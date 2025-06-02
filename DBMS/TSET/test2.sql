SELECT COUNT(*) AS Customers_Above_Bangalore_Avg
FROM CUSTOMER
WHERE Grade > (
    SELECT AVG(Grade)
    FROM CUSTOMER
    WHERE City = 'Bangalore'
);


SELECT S.Salesman_id, S.Name, COUNT(C.Customer_id) AS Num_Customers
FROM SALESMAN S
JOIN CUSTOMER C ON S.Salesman_id = C.Salesman_id
GROUP BY S.Salesman_id, S.Name
HAVING COUNT(C.Customer_id) > 1;


SELECT S.Name,
       CASE 
           WHEN EXISTS (
               SELECT 1 FROM CUSTOMER C
               WHERE C.Salesman_id = S.Salesman_id AND C.City = S.City
           ) THEN 'Has Customer in Same City'
           ELSE 'No Customer in Same City'
       END AS City_Customer_Status
FROM SALESMAN S;


CREATE VIEW TopSalesmanPerDay AS
SELECT O.Ord_Date, S.Salesman_id, S.Name, C.Cust_Name, O.Purchase_Amt
FROM ORDERS O
JOIN CUSTOMER C ON O.Customer_id = C.Customer_id
JOIN SALESMAN S ON O.Salesman_id = S.Salesman_id
WHERE (O.Ord_Date, O.Purchase_Amt) IN (
    SELECT Ord_Date, MAX(Purchase_Amt)
    FROM ORDERS
    GROUP BY Ord_Date
);


DELIMITER //

CREATE PROCEDURE InsertCustomerInfo (IN c_name VARCHAR(50),IN c_city VARCHAR(50),IN c_grade INT)
BEGIN
    INSERT INTO CUSTOMER (Cust_Name, City, Grade)VALUES (c_name, c_city, c_grade);
   
END //

DELIMITER ;


