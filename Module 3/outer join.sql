
-- outer join => two types -> 1.left join  2.right join	

-- query => customer -> what orders have been placed by each customers

-- firstly with inner join
 select c.customerNumber,
		customerName,
        orderNumber,
        orderDate,
        status
 from orders o
 join customers c
 on o.customerNumber = c.customerNumber;

-- problem with inner join is we don't get customers who haven't placed any order.

-- for every customer show the orders that a customer has placed
select c.customerNumber,
		customerName,
        orderNumber,
        orderDate,
        status
 from customers c                         -- now the orders table is a left table 
 left join orders o				  -- now the orders table is a right table 
 on o.customerNumber = c.customerNumber; 
 
 select c.customerNumber,
		customerName,
        orderNumber,
        orderDate,
        status
 from customers c                         -- now the orders table is a right table 
 right join orders o				  -- now the orders table is a left table 
 on o.customerNumber = c.customerNumber;   -- now this query will return the same output as the inner join
 