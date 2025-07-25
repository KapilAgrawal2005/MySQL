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


-- the number of orders placed by each customers and it's  sales employee
select customerNumber as "Customer ID",
		contactFirstName as "Customer Name",
		count(orderNumber) as "Order Count",
        employeeNumber,
        firstName
from customers
join orders using (customerNumber)
join employees 
	on customers.salesRepEmployeeNumber = employees.employeeNumber
group by customerNumber;


-- count of orders through each sales representative
select 	employeeNumber,
		firstName,
        count(orderNumber)
from employees
join customers
	on employees.employeeNumber = customers.salesRepEmployeeNumber
join orders using (customerNumber)
group by employeeNumber
order by employeeNumber;


-- country wise => count of orders from each country 
select 	country,
		count(*) as "Total orders from the country"
from orders
join customers using (customerNumber)
group by country;



-- country wise => count of orders from each country on each date
select 	country,
		count(*) as "Total orders from the country",
        orderDate
from orders
join customers using (customerNumber)
group by country, orderDate
order by orderDate;


-- find customers whose total order value > 80,000 across all the orders
select 	customerNumber,
		contactFirstName,
		count(orderNumber) as "Total orders",
        sum(quantityOrdered*priceEach) as totalOrderPrice
from orders
join customers using (customerNumber)
join orderdetails using (orderNumber)
where country = "france"
group by customerNumber
having totalOrderPrice > 80000
order by totalOrderPrice;