-- load csv files
.mode csv
.import users.csv users

.headers on
.mode column

.tables
SELECT * FROM users;


-- find values using WHERE
SELECT * FROM users WHERE age >= 30;

SELECT first_name FROM users WHERE age >= 30;

SELECT last_name, age FROM users
WHERE age >= 30 AND last_name = '김';


-- count values using COUNT
SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM users
WHERE age >= 30 AND last_name = '김';


-- imported calculate functions(AVG, SUM, MIN, MAX)
SELECT AVG(age) FROM users WHERE age >= 30;

SELECT first_name, MAX(balance) FROM users;

SELECT AVG(balance) FROM users WHERE age >= 30;


-- check pattern of value using LIKE(_ : there is more than one letter(?), % : there is letter or not(*))
SELECT COUNT(*) FROM users WHERE age LIKE '2_';

SELECT COUNT(*) FROM users WHERE phone LIKE '02-%';

SELECT COUNT(*) FROM users WHERE first_name LIKE '%준';

SELECT COUNT(*) FROM users WHERE phone LIKE '%-5114-%';


-- sort values using ORDER BY and ASC\DESC(sort, sort.reverse)
SELECT * FROM users ORDER BY age ASC LIMIT 10;

SELECT * FROM users ORDER BY age DESC LIMIT 10;

SELECT * FROM users ORDER BY age, last_name LIMIT 10;

SELECT last_name, first_name FROM users ORDER BY balance DESC LIMIT 10;


DROP TABLE users;
