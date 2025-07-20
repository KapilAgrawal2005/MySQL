-- using clause

-- for every customer show the orders that a customer has placed
select c.customerNumber,
		customerName,
        orderNumber,
        orderDate,
        status
 from customers c                         -- now the orders table is a left table 
 left join orders o				  -- now the orders table is a right table 
using (customerNumber);  
-- we can use the using clause only when the column name in both of the tables are same  


-- in the below example we can't use the using caluse because we are comparing the reportsTo column with employeeNumber where the column name is different
select emp.employeeNumber,
	emp.firstName,
	mngr.firstName as "Manager Name", 
    emp.jobTitle as "Manager Title",
    mngr.jobTitle 
from employees emp 
join employees mngr on emp.reportsTo = mngr.employeeNumber;



-- joining multiple tables with using caluse
select orderNumber,
	o.customerNumber,
    
	customerName,
	status,
    salesRepEmployeeNumber,
    firstName as "Sales Persorn Name",
    jobTitle
 from orders o 
 join customers c using(customerNumber)
 join employees e on c.salesRepEmployeeNumber = e.employeeNumber;