SELECT * FROM payments;

-- logical operators : - AND, OR, NOT

-- printing the data where the amount is greater that 20000 and smaller than 60000
SELECT * FROM payments WHERE amount >= 20000 AND amount <= 60000 ORDER BY amount;

-- printing the data where the amount is not greater that 20000 and smaller than 60000
SELECT * FROM payments WHERE NOT(amount >= 20000 AND amount <= 60000) ORDER BY amount;

SELECT * FROM payments WHERE NOT(amount >= 40000 AND amount <= 60000) AND paymentDate >= 2005-05-25 ORDER BY amount;