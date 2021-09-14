SELECT COUNT(*) FROM Customers;

SELECT name, address FROM Customers;

SELECT COUNT (manager_id) FROM Employees; 

SELECT customer_id, name, address 
From customers
Where name = 'Mosaic';

SELECT list_price * 1.05 AS "New Price"
From products
ORDER BY list_price DESC;

SELECT employee_id, first_name, last_name
FROM employees
WHERE first_name LIKE '%s%e';