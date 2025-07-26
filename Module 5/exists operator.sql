-- exists operator

-- select customers who have made any payment
select * 
from customers 
where customerNumber in (
	select distinct customerNumber 
    from payments
);

-- using exist operator
select * 
from customers c
where exists (
	select customerNumber 
    from payments
    where customerNumber = c.customerNumber
);