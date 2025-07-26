-- subquery in select clause

-- write a query create the following view of payments table
select *,
		(select avg(amount) from payments) as AverageAmount,
        amount - (select AverageAmount) as Difference
from payments ;