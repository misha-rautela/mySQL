select * from cust_info;
select * from cust_info where gov_id = 'ABC1234';

select * from cust_info where gov_id like 'ABC%'

select distinct cust_id from cust_info;

select count(*) from cust_info;

// order by default is asc
select cust_id, gov_id from cust_info order by firstname;

// order by desc order
select cust_id, gov_id from cust_info order by firstname desc;

// Using Limit keyword to restrict number of rows
select * from cust_info where gov_id like 'ABC%' limit 1,5 ;

// Using regular expression “rlike” in the like clause 
select * from cust_info where gov_id rlike '^A' limit 1,5 ;

// order by specific fields
select * from cust_info order by field (gov_id, cust_id)

//order by in a specific sequence of names
select * from cust_info order by field (firstname, 'NASH', 'EASH', 'JOHN', 'BASH')


// Query to list all the foreign keys in a table 
SELECT * FROM information_schema.TABLE_CONSTRAINTS 
WHERE information_schema.TABLE_CONSTRAINTS.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND information_schema.TABLE_CONSTRAINTS.TABLE_SCHEMA = 'test'
AND information_schema.TABLE_CONSTRAINTS.TABLE_NAME = 'relations_detail';

// Query to list all the foreign keys in a table 
SELECT i.TABLE_NAME, i.CONSTRAINT_TYPE, i.CONSTRAINT_NAME, k.REFERENCED_TABLE_NAME, k.REFERENCED_COLUMN_NAME FROM information_schema.TABLE_CONSTRAINTS i LEFT JOIN information_schema.KEY_COLUMN_USAGE k ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME WHERE i.CONSTRAINT_TYPE = 'FOREIGN KEY' AND i.TABLE_SCHEMA = DATABASE()AND i.TABLE_NAME = 'relations_detail';

----INNER JOIN: Returns records that have matching values in both tables
----LEFT JOIN: Returns all records from the left table, and the matched records from the right table
----RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
----CROSS JOIN: Returns all records from both tables


----INNER JOIN


SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

--------LEFT JOIN

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-------- RIGHT JOIN

SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

-------- MINUS Function using RIGHT JOIN

SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name
where table1.column_name is null ;



-------- CROSS JOIN
SELECT column_name(s)
FROM table1
CROSS JOIN table2;

-------- SELF JOIN
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

-------- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

------ The EXISTS operator is used to test for the existence of any record in a subquery.
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

---- CASE Conditions
SELECT column_name(s) , 
CASE
	WHEN <condition 1 on column_name1 > THEN 'Message1'
	WHEN <condition 2 on column_name2> THEN 'Message2'
	ELSE
END AS 'A'
FROM table 1;

--The MySQL IFNULL() function lets you return an alternative value if an expression is NULL.

SELECT column_name1, column_name2 * (column_name3 + IFNULL(column_name1, 0))
FROM table1;

---kow·uh·les Operator

SELECT column_name1, column_name2 * (column_name3 + COALESCE(column_name1, 0))
FROM table1;
