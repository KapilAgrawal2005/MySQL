SELECT * FROM orders;

-- joining multiple tables

select orderNumber,
	o.customerNumber,
	customerName,
	status,
    salesRepEmployeeNumber,
    firstName as "Sales Persorn Name",
    jobTitle
 from orders o 
 join customers c on o.customerNumber = c.customerNumber
 join employees e on c.salesRepEmployeeNumber = e.employeeNumber;