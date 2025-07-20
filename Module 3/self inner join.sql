SELECT * FROM employees;

-- self join => joinnig table to itself

select emp.employeeNumber,
	emp.firstName,
	mngr.firstName as "Manager Name", 
    emp.jobTitle as "Manager Title",
    mngr.jobTitle 
from employees emp 
join employees mngr on emp.reportsTo = mngr.employeeNumber;