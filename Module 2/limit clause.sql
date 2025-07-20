SELECT * FROM customers;

-- limit clause
SELECT * FROM customers	LIMIT 20,30;

-- select top 5 customers with highest credit limit
select * from customers order by creditLimit desc limit 5;