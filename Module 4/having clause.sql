
-- having clause
 
-- offices having more than 4 employees

select officeCode, city, count(employeeNumber) as employeeCount from employees join offices using (officeCode) group by officeCode having employeeCount > 4;

-- having clause examples 

-- country wise count of orders
select country, count(orderNumber) as orderCount from orders join customers using (customerNumber) group by country having orderCount > 20;