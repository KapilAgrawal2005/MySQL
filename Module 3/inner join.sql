SELECT * FROM payments;

-- Inner join 

-- we are joining the payments table and customers table 
-- this query will return the data of customers which is present in the payments table and customers table for a condition we are using the customer.Number matching 
-- in this query we join two table with the help of inner join 
-- in inner join we can simply write it as join and then we have made condition that is written after on 

select payments.customerNumber, customerName, paymentDate, amount 
from payments 
inner join customers on payments.customerNumber = customers.customerNumber;

-- alias to the table names
select p.customerNumber, customerName, paymentDate, amount 
from payments p
inner join customers c on p.customerNumber = c.customerNumber;
