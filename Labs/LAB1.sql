/* START PROGRAM */

CREATE TABLE employee (
employeeid NUMBER(4),
employeename VARCHAR(50),
employeeposition VARCHAR(50),
title VARCHAR(6),
birthdate DATE,
hiredate DATE,
address VARCHAR(50),
city VARCHAR(50),
country VARCHAR(50)
);

DESC employee;

/* SHOW SOMETHING FROM THE TABLE */
SELECT * FROM employee;

/* INSERT A ROW IN THE TABLE */ 
INSERT INTO employee VALUES (19, 'Cathi Payne', null, 'Ms', null, null, null, 'Seattle', 'USA' );

SELECT * FROM employee;

/* TO DELETE THE TABLE */
DROP TABLE employee;

/* SHOW ALL THE TABLES IN BASE*/
SELECT table_name FROM user_tables;

/*SAVE TABLE*/
COMMIT;