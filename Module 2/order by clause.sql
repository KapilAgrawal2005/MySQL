SELECT * FROM customers;

-- order by clause
-- firstname with alphabetical order
SELECT * FROM customers ORDER BY contactFirstName;

SELECT * FROM customers ORDER BY city DESC;

SELECT * FROM customers ORDER BY city DESC, contactFirstName;