select * from locations
where city NOT in ('Munich', 'Toronto');

select * 
from customers
where (customer_id between 35 and 50) and (credit_limit IN (400, 600, 900));

SELECT *
FROM product_categories
WHERE category_id not in (2, 6, 7);

select *
from locations
where state IS NOT NULL;

select last_name || ' s jo%b title is ' || job_title
From employees;
--if ' is wated to be used u need to use q' and [...] 

select distinct state
from locations
where state is not null;

select p.product_id, p.product_name, c.category_name
FROM products p
INNER JOIN product_categories c
ON p.category_id = c.category_id
ORDER BY p.product_id;

SeLECT l.city, c.country_name
from countries c full outer join locations l
on c.countries_ID = l.countries_ID;

select c.category_name
from products p join product_categories c
on p.product_id = c.category_id
where c.category_id in (1,2,8);


