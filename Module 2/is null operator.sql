SELECT * FROM orders;

-- is null operator
SELECT * FROM orders WHERE comments IS NULL;

SELECT * FROM orders WHERE shippedDate IS NULL;

SELECT * FROM orders WHERE shippedDate IS NOT NULL;
