-- self outer join


select emp.employeeNumber,
	emp.firstName,
	mngr.firstName as "Manager Name", 
    emp.jobTitle as "Manager Title",
    mngr.jobTitle 
from employees emp 
left join employees mngr on emp.reportsTo = mngr.employeeNumber;
