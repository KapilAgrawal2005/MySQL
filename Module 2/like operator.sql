SELECT * FROM employees;

-- like operator 
-- using the like operator for searching some words

SELECT * FROM employees WHERE jobTitle LIKE "%vp%";

SELECT * FROM employees WHERE jobTitle LIKE "%sale";

SELECT * FROM employees WHERE firstName LIKE "%y";

SELECT * FROM employees WHERE firstName LIKE "_y"; -- underscore means exactly one letter before y

SELECT * FROM employees WHERE firstName LIKE "____y"; -- underscore means exactly one letter before y

-- it means the numbers of underscores that number of letters can happen before or after depends on where it is used