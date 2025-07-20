-- implicit join syntax
-- in the implicit join we don't need to write the join keyword we can write table names using comma and in this where clause is used

select p.customerNumber, customerName, paymentDate, amount 
from payments p, customers c 
where p.customerNumber = c.customerNumber;



-- this is the example of the explicit join below
select payments.customerNumber, customerName, paymentDate, amount 
from payments 
inner join customers on payments.customerNumber = customers.customerNumber;