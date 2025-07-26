-- any keyword
-- select all the customers who have made atleast two payments
-- using in keyword
select * 
from customers
where customerNumber in (
	select customerNumber
	from payments
	group by customerNumber
	having count(*) >= 2
);

-- any keyword
select * 
from customers
where customerNumber = any (
	select customerNumber
	from payments
	group by customerNumber
	having count(*) >= 2
);