SELECT * FROM customers;

-- use of between operator
SELECT * FROM customers WHERE creditLimit >=20000 AND creditLimit <= 40000;

SELECT * FROM customers WHERE creditLimit BETWEEN 20000 AND 40000;


SELECT * FROM payments WHERE paymentDate BETWEEN '2003-10-19' AND '2006-04-18' ORDER BY paymentDate;