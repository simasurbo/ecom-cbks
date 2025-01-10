USE ecom_cb;

-- check data
SELECT * FROM ecom_cb;

/*
Data cleaning step:
 1. Update Date field to datetime type
 2. Remove unnecessary columns
*/

-- 1. update date to datetime type
UPDATE ecom_cb
SET date = STR_TO_DATE(date, '%Y-%m-%d %H:%i:%s');

-- check type
DESCRIBE ecom_cb;

-- alter type for datetime
ALTER TABLE ecom_cb
MODIFY COLUMN date DATETIME;

-- check data again
SELECT * FROM ecom_cb;

-- 2. remove unnecessary column
-- create view
CREATE VIEW view1_ecom_cb AS
SELECT
	`Card Number`,
    date,
    Amount,
    CBK
FROM
	ecom_cb;

-- check data
SELECT 
	*
FROM
	view1_ecom_cb;


-- Data quality tests
/*
Data quality test
1. Check if there are 11127 records (row count) --- passed
2. Check if there are 4 columns (column count) --- passed
3. Username must be string, other columns must be numeric (data type check) --- passed

Expectations
Row count = 11127
Column count = 4

Data types
Card Number = text
date = datetime
Amount = double
CBK = text

Duplicates = 0 
*/

-- 1. Row count check
SELECT
	COUNT(*) AS num_of_rows
FROM
	view1_ecom_cb;
    
-- 2. Column count check
SELECT
	COUNT(*) AS num_of_columns
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_Name= 'view1_ecom_cb';

-- 3. Data type check
DESCRIBE view1_ecom_cb;



	






    
    
    
    
    
    
    
    
    

