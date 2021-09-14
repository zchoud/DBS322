SELECT LOWER(job_title) AS "lower",
  Upper(first_name) as "upper",
  initcap(email) as "initcap"
  FROM Employees 
  where manager_id = 2;
  
SELECT *
FROM Employees
WHERE LOWER(FIRST_NAME) LIKE LOWER('elli%');

SELECT ' The job title for ' || Upper(first_name) || ' is ' || Lower(job_title)
AS "first names's job title",
'The length of the first name is ' || LENGTH(First_name) as "first name length"
from Employees;

SELECT employee_id, last_name
FROM employees
WHERE LOWER(last_name) = lower('&Last_name');

SELECT p.PRODUCT_ID, p.PRODUCT_NAME, c.CATEGORY_NAME
FROM products p JOIN product_categories c
ON p.category_id = c.CATEGORY_ID
where p.PRODUCT_ID = '&p_id';

select concat('database', 'systems')
from dual;

select substr('databasesystems', 1, 4)
from dual;

select substr('databasesystems', -3)
from dual;

SELECT INSTR('databasesystems', 'a')
FROM DUAL;

Select Length(
LPAD('TOMMY', 20, '*'))
from Dual;

SELECT REPLACE('Jack and Jue', 'J', 'Bl')
from dual;

Select Trim('D' FROM 'Database')
FROM dual;

SELECT REPLACE (last_name, 'Ford', 'BMW'), SUBSTR(last_name,'1','4')
FROM employees;

SELECT first_name || ' ' || last_name AS "NAME", job_title,LENGTH(last_name) LENGTH, INSTR(last_name,'a') AS "Contains a letter a"
FROM employees;

SELECT round(5.2365,2) FROM DUAL;

SELECT TRUNC(5.216354,2) FROM DUAL;

SELECT TRUNC(5.678,1) FROM DUAL;

--SELCT MOD ie modulus

SELECT round(10.96) FROM DUAL;

SELECT * FROM products;
SELECT product_id, MOD(product_id,2),
list_price, ROUND(list_price,1), ROUND(list_price),
TRUNC(list_price,1), TRUNC(list_price)
FROM products
WHERE list_price < 50
ORDER BY product_id;

SELECT last_name, ROUND((sysdate - hire_date)/7,2) "Weeks Employed"
FROM employees;

SELECT last_name, TRUNC((sysdate - hire_date)/7,2) "Weeks Employed"
FROM employees;