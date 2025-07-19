-- where clauses
SELECT * FROM orders WHERE status = "Shipped";

SELECT * FROM orders WHERE status != "Shipped";

SELECT * FROM payments WHERE amount >= 40000 ORDER BY amount;