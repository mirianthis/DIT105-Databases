/* GIA NA DO TIN DOMI */
DESC employee;

/* GIA TA PERIOXOMENA */
SELECT * FROM employee;

/* GIA NA PROSTHESO MIA STILI */
ALTER TABLE employee
ADD (department NUMBER(3));

/*TROPOS 1 PROSTHESI IPORXREOTIKIS STILIS */
ALTER TABLE employee
ADD (salary NUMBER(6,2) DEFAULT 0 NOT NULL);

--TROPOS 2 GIA NA KANO ADD TO SALARY KAI NA EINAI NOT NULL
ALTER TABLE employee
ADD salary NUMBER(6,2);
UPDATE employee set salary = 500;

--TROPOS 3 GIA NA KANO ADD TO SALARY KAI NA EINAI NOT NULL
ALTER TABLE employee
ADD salary NUMBER(6,2);
ALTER TABLE employee
MODIFY (salary NOT NULL);

--DIPLASIASMO TIS TIMIS POSITION
ALTER TABLE employee
MODIFY (employeeposition VARCHAR2(100));

--DELETE SALARY COMLUMN
ALTER TABLE employee
DROP (salary);

--DELETE CITY
ALTER TABLE employee
DROP (city);

--CHANGE COYNTRY SIZE TO 3 AND AND SET THE VALUE TO USA
ALTER TABLE employee
MODIFY (country VARCHAR2(3) DEFAULT 'USA');


--SECOND PROGRAM
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

DROP TABLE employee;

CREATE TABLE employee (
employeeid NUMBER(4) PRIMARY KEY,
employeename VARCHAR(60) NOT NULL,
position VARCHAR(60) DEFAULT 'Worker' NOT NULL,
title CHAR(6) ,
birthdate DATE NOT NULL,
hiredate DATE ,
address VARCHAR(60),
city VARCHAR(20),
country VARCHAR(20),
deptno NUMBER(3) NOT NULL,
CONSTRAINT employee_department_fk
FOREIGN KEY (deptno) REFERENCES department(department_id)
);

CREATE TABLE department (
department_id NUMBER(3) PRIMARY KEY,
department_name VARCHAR(20) NOT NULL,
department_location VARCHAR(20) NOT NULL
);

INSERT INTO department VALUES (101, 'HQ', 'Athens');

INSERT INTO employee VALUES
(19, 'Cathi Payne', 'Sales Representative',
'Ms.', '1-5-1992', '1-01-2018', 'Apt. 2A', 'Seattle', 'USA', 101 );

SELECT * FROM employee;
SELECT * FROM department;

COMMIT;
