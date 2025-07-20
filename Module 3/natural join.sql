-- natural join

-- int the natural joint we don't specify the columns on which we have to join it will automatically figures it out
-- generally we don't use the natural join beacuse by doing loose the control over the join condition and sometimes it gives the unexpected results

select orderNumber, customerNumber, customerName 
from orders
natural join customers;
