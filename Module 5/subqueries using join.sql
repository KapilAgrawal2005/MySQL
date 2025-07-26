-- subquery with joins

-- customer who have never placed an order (subqueries and joins)
select count(customerNumber) from customers where customerNumber not in (select distinct customerNumber from orders);

-- same query using join
select count(customerNumber)
from customers c
left join orders using (customerNumber)
where orderNumber is null
order by customerNumber;


-- expmple where join is prefered rather than subquery
-- customers who have ordered the product with product code "S18_1749"
-- joins
select customerNumber 
from orderdetails
join orders using (orderNumber)
where productCode = "S18_1749";