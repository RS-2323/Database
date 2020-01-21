-- 1. creating zooDB database
CREATE DATABASE zoodb;

-- 3. import data from zoo.csv

USE zoodb;

-- FULL SQL STATEMENT  

  -- 1.  SELECT
  -- 2.  FROM
  -- 3.  JOIN
  -- 4.  WHERE
  -- 5.  GROUP BY
  -- 6.  HAVING
  -- 7.  ORDER BY
  -- 8.  LIMIT
  
-- SQL operators


-- Question 1:
-- Display all columns data of all the rows from the zoo table ?

SELECT * FROM zoodb.zoo;

-- Question 2:
-- Display animal name and water needed of all the animals from the zoo table ?

SELECT animal,water_need FROM zoodb.zoo;

-- Question 3:
-- Display animal name of all the animals from the zoo table ?

SELECT animal FROM zoodb.zoo;

-- SQL WHERE operators

-- Question 1:
-- Select all animals, that are elephants  from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal LIKE "elephant";

-- Question 2:
-- Select all animals, that are zebra’s from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal LIKE "zebra";



-- SQL WHERE with comparison operators

-- comparison operators
-- =	  Equals to
-- <>	not equals to
-- !=	not equals to
-- <	  Less than
-- <=	Less-equal than
-- >	  Greater than
-- >=	Greater-equal than


-- Question 1:
-- Select all the animals, that are not zebras from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal != "zebra";

-- Question 2:
-- Select all the animals for whom the water needed is less than 300 from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE water_need <300;


-- SQL WHERE clause with LIKE operator

-- Question 1:
-- Select all animals whose name contains at least one e character from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal LIKE "%e%";

-- Question 2:
-- Select all animals whose name ends with ‘roo’  from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal LIKE "%roo";

-- Question 3:
-- Select all animals whose species name is exactly five characters long from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal LIKE "_____";


-- SQL WHERE clause with AND logical operator

-- Question 1:
-- Select only those animals  from the zoo table ? that:
-- •	have a name exactly five characters long
-- •	are not tigers
-- •	have a water_need more than 200

SELECT animal FROM zoodb.zoo WHERE animal LIKE "_____" AND animal !="tiger" AND water_need>200;

-- SQL WHERE clause with OR logical operator


-- AND returns every row where all the conditions are true.
-- OR returns every row where at least one of the conditions is true.

-- Question 1:
-- Select animals that are lions, plus all the animals that have less than 300 water_need  from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal LIKE "lion" OR water_need<300;


-- SQL IN operator

-- Question 1:
-- Select all the animals whose unique id is any of these: 
-- 1001, 1008, 1012, 1015, 1018 from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE uniq_id IN (1001, 1008, 1012, 1015, 1018 );


-- The SQL NOT operator

-- Question 1:
-- Select all the animals that are not 5 characters long  from the zoo table ?

SELECT animal FROM zoodb.zoo WHERE animal  NOT LIKE "_____";

-- The SQL  IS NULL operator
-- Select all the animals where water_need is null?

 SELECT animal FROM zoodb.zoo WHERE water_need IS NULL;
 
 
-- The SQL BETWEEN operator
-- Select all the animals where water_need is between 200 to 500?

SELECT animal FROM zoodb.zoo WHERE water_need BETWEEN 200 AND 500;

-- The SQL ORDER BY operator
-- sort all the animals according to their water needs.

SELECT * FROM zoodb.zoo ORDER BY water_need ASC;

