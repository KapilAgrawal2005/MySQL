-- all keyword
-- find products costlier than all trucks using all keyword
select * 
from products 
where MSRP > all(
	select msrp 
    from products 
    where productLine regexp "truck"
);


--  find products which are costlier than the costliest truck
select * 
from products 
where MSRP > (
	select max(msrp) 
    from products 
    where productLine regexp "truck"
);