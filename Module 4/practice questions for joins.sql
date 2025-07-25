-- practice questions => total number of payments from each customer after a certain date
select c.customerNumber, 
		contactFirstName, 
        count(checkNumber), 
        sum(amount) as "Total Amount" 
from payments 
join customers c using (customerNumber) 
where paymentDate > "2003-06-13" 
group by customerNumber;


-- value of each unique order sorted by total order value
select o.orderNumber, 
		sum(quantityOrdered * priceEach) as perOrderValue 
from orders o
join orderdetails using (orderNumber) 
group by orderNumber 
order by perOrderValue;


-- value of each unique order and it's customernumber, customer name sorted by total order value
select  customerNumber,
		contactFirstName,
		orderNumber,
        sum(quantityOrdered * priceEach) as perOrderValue
from orders 
join customers using (customerNumber)
join orderdetails using (orderNumber)
group by orderNumber
order by perOrderValue;


-- value of each unique order and it's customernumber, customer name and sales employee sorted by total order value
select customerNumber,
		contactFirstName,
		o.orderNumber,
        sum(quantityOrdered * priceEach) as perOrderValue,
		employeeNumber,
        firstName
from customers c
join employees e
	on c.salesRepEmployeeNumber = e.employeeNumber
join orders o using (customerNumber)
join orderdetails using (orderNumber)
group by orderNumber
order by perOrderValue desc;
 
