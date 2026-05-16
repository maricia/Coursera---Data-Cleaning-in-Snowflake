-- ********************************** TASK 8 : Eliminate Duplications ********************************** 


-- Step 8.1 Setup the right context for your worksheet ---

/* IMPORTANT : Make Sure to setup the right context for this SQL Worksheet.
			The current role determines which operations can be performed on Snowflake objects based on the access control privileges granted to the role. 
			First select a role, then select a warehouse that the role has privileges to use. Then Select Database and the Schema.

*/ 

-- YOU CAN USE UI to setup the context OR run SQL SCRIPT BELOW : 

-- USE ROLE ACCOUNTADMIN; -- Or the same role you used to load the data. 
-- USE WAREHOUSE COMPUTE_WH; -- Or any other Virtual WAREHOUSE you can use. 
-- USE DATABASE COURSERA;
-- USE SCHEMA PUBLIC;



-- Step 8.2 Find Duplicated Customers based on email ---
/* 
	DOCUMENTATION  :https://docs.snowflake.com/en/sql-reference/functions/count.html 
	SYNTAX : SELECT ... COUNT(<expr1>) FROM ... GROUP BY ... HAVING <predicate>
		** NOTE : Add a having clause to filter rows produced by GROUP BY
*/

-- <Your SQL Script Here> 


-- Step 8.3 Eliminate Duplicated Customers and keep the record with the latest Transaction Date ---
/* 
	DOCUMENTATION  :https://docs.snowflake.com/en/sql-reference/functions/rank.html 
	SYNTAX : RANK() OVER ( [ PARTITION BY <expr1> ] ORDER BY <expr2> [ { ASC | DESC } ] [ <window_frame> ] )
	** NOTE : Additional use QUALIFY instead of WHERE https://docs.snowflake.com/en/sql-reference/constructs/qualify.html 
*/

-- <Your SQL Script Here>