SELECT * FROM products;

-- group by clause along with aggregate functions
select count(*) from products;

-- query 2
select distinct productline from products;

-- grouping all these queries
-- no. of products in each product line
select distinct productLine, count(*) as ProductCount from products group by productLine;