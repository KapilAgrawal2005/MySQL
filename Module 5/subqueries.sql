-- subqueries starting

-- find product that have same product line as of "1917 Grand Turing Sedan" 

select * from products where productLine = (select productline from products where productName  = "1917 Grand Touring Sedan");

-- find the car that are costlier than "1936 Mercedes-Benz 500K special roadstar"
select productName, productLine from products where productLine regexp "car" and msrp > (select msrp from products where productName = "1936 Mercedes-Benz 500K special roadster");

-- find the cars which are costlier than the average cost of all cars
select productName, productLine, msrp from products where productLine regexp "car" and msrp > (select avg(msrp) from products where productLine regexp "car"); 