-- subquery in from clause

-- write a query create the following view of payments table where difference > 0 (amount is higher than average)
select * 
from 
	(select *,
		(select avg(amount) from payments) as AverageAmount,
		amount - (select AverageAmount) as Difference
	from payments) as invoice -- it is important to give alias
where Difference > 0;