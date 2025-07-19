USE classicmodels;

-- select statements

-- select all columns
SELECT * From customers WHERE postalCode = 60528 ORDER BY customerName;

-- select few column statement
select contactLastName, contactFirstName FROM customers ORDER BY contactFirstName;

-- selecting a new table 
SELECT productCode, productName, buyPrice, MSRP AS "selling Price",(MSRP*0.90) AS "Discounted Price" FROM products ORDER BY buyPrice;
