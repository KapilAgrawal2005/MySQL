SELECT * FROM employees;

-- REGEX OPERATOR ----
-- ^ = beginning of a string
-- & = ending of a string
-- | = logical
-- [ahcd]
-- [a-z]

-- -------------------

SELECT * FROM employees WHERE jobTitle REGEXP "sale";

-- job which starts with word sale 
SELECT * FROM employees WHERE jobTitle REGEXP "^sale";

-- job which end with word rep
SELECT * FROM employees WHERE jobTitle REGEXP "rep$";

-- firstname begins with l or j
SELECT * FROM employees WHERE firstName REGEXP "^a|^b";

-- finding firstnames from a to h
SELECT * FROM employees WHERE firstName REGEXP "^[a-h]";

-- select firstname begins with a-h or ends with lie
SELECT * FROM employees WHERE firstName REGEXP "^[a-h]|lie$";

-- customers whose phone numbers ends with 55
SELECT * FROM customers WHERE phone REGEXP "55$";

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct city from station where city regexp "^[aeiou].*[aeiou]$"; --  .* this works for both and,or

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select distinct city from station where city not regexp "^[aeiou]" and city not regexp "[aeiou]$" ;
