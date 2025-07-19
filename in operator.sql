SELECT * FROM employees;

-- IN operator
-- how to use the IN operator

SELECT * FROM employees WHERE officeCode IN (1,2,4) ORDER BY officeCode;

SELECT * FROM employees WHERE officeCode=1 OR officeCode=2 OR officeCode=4 ORDER BY officeCode;

-- both queries are same but the first one is shorter and more concise

SELECT * FROM employees WHERE officeCode NOT IN (1,2,4) ORDER BY officeCode;