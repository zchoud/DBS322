-- ***********************
-- Name: Zian Choudhury
-- ID: 131048209
-- Date: 09/21/2021
-- Purpose: Lab 01 DBS311
-- ***********************

-- Q1 SOLUTION --
SELECT 
    to_char(sysdate + 1, 'MONTH DD') || ' of year ' || to_char(sysdate + 1, 'YYYY') AS "tomarrow" 
FROM 
    DUAL;

-- Q2 Solution –-
SELECT
	product_id,
	product_name,
	list_price,
	round(list_price * 1.02) AS "NEW price",
	round(list_price * 1.02) - list_price AS "price difference" 
FROM
	products 
WHERE
	category_id IN 
	(
		2,
		3,
		5
	)
ORDER BY
	category_id,
	product_id;

-- Q3 Solution --
SELECT
	e.employee_id,
	o.salesman_id,
	o.customer_id,
	e.first_name || ', ' || e.last_name || 'is a ' || e.job_title AS "employee information" 
FROM
	orders o 
	JOIN
		employees e 
		ON o.salesman_id = e.employee_id 
ORDER BY
	e.employee_id;
  
-- Q4 Solution --
SELECT
	last_name,
	hire_date,
	round((sysdate - hire_date) / 30) AS "number OF months employed" 
FROM
	employees 
ORDER BY
	"number OF months employed",
	hire_date;
  
--Q5 Solution --
SELECT
	c.name,
	c.address,
	o.order_id 
FROM
	customers c 
	JOIN
		orders o 
		ON c.customer_id = o.customer_id 
WHERE
	UPPER(c.name) LIKE UPPER('&search');
  
--Q6 Solution --
SELECT
	w.warehouse_id,
	w.warehouse_name,
	w.location_id,
	l.city,
	nvl(l.state, 'unknown') 
FROM
	warehouses w 
	LEFT JOIN
		locations l 
		ON w.location_id = l.location_id 
ORDER BY
	w.warehouse_id;
  
--Q7 Solution --
SELECT
	employee_id,
	first_name,
	last_name,
	to_char(hire_date, 'MM/YY') AS "MONTH 
	AND YEAR hired" 
FROM
	employees 
WHERE
	first_name LIKE '%a' 
	AND last_name LIKE 'H%';



