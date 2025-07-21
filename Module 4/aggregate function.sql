
-- aggregate functions in mysql
-- max(), min(), avg(), sum(), count() etc.

-- query 1
select max(amount), min(amount), avg(amount), sum(amount) from payments;

-- query 2
select 	count(*) as totalorders,
		count(requiredDate) as Totalorders,
		count(shippedDate) as shippedOrders
  from orders;
  

-- query 3 
select count(*) as "Under processing" from orders where status = "in process";

-- query 4
select max(paymentDate), min(paymentDate) from payments;

-- query 5
select max(checkNumber), min(checkNumber) from payments;