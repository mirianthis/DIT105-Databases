ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

CREATE TABLE department (
dname VARCHAR(40),
dnumber NUMBER(9) PRIMARY KEY,
mgrssn NUMBER(9),
mgrstartdate DATE
);

CREATE TABLE employee (
fname VARCHAR(40) NOT NULL,
minit VARCHAR(1),
lname VARCHAR(40),
ssn NUMBER(9),
bdate DATE NOT NULL,
sex CHAR(1),
gender VARCHAR(40),
salary NUMBER(9),
superssn NUMBER(9),
dno NUMBER(9) NOT NULL,
CONSTRAINT employee_pk PRIMARY KEY (ssn),
CONSTRAINT employee_department_fk FOREIGN KEY (dno) REFERENCES department(dnumber),
CONSTRAINT employee_employee_fk FOREIGN KEY (superssn) REFERENCES employee(ssn)
);

CREATE TABLE dept_location (
d_number NUMBER(9) ,
d_location VARCHAR(40),
CONSTRAINT dept_location_pk PRIMARY KEY (d_number,d_location),
CONSTRAINT deptlocation_department_fk FOREIGN KEY (d_number) REFERENCES department(dnumber)
);

CREATE TABLE dependent (
dependent_name VARCHAR(40),
essn NUMBER(9) ,
bdate DATE ,
sex VARCHAR(40),
relationship VARCHAR(40),
CONSTRAINT dependent_pk PRIMARY KEY (essn,dependent_name),
CONSTRAINT exartomenos_employee_fk FOREIGN KEY (essn) REFERENCES employee(ssn)
);

CREATE TABLE project (
pname VARCHAR(40),
pnumber NUMBER(4),
plocation VARCHAR(40),
dnum NUMBER(9),
CONSTRAINT project_pk PRIMARY KEY (pnumber),
CONSTRAINT project_department_fk FOREIGN KEY (dnum) REFERENCES department(dnumber)
);

CREATE TABLE works_on (
essn NUMBER(9),
pno NUMBER(9),
hours NUMBER(5,1),
CONSTRAINT works_on_pk PRIMARY KEY (essn,pno),
CONSTRAINT works_on_project_fk FOREIGN KEY (pno) REFERENCES project(pnumber),
CONSTRAINT works_on_employee_fk FOREIGN KEY (essn) REFERENCES employee(ssn)

);

ALTER TABLE department
ADD
CONSTRAINT dept_employee_fk FOREIGN KEY (mgrssn) REFERENCES employee (ssn);

----------------------------
--WE DELETE THE ARRAYS FROM HERE

ALTER TABLE department
DROP
CONSTRAINT dept_employee_fk;
DROP TABLE works_on;
DROP TABLE project;
DROP TABLE dependent;
DROP TABLE dept_location;
DROP TABLE employee;
DROP TABLE department; 

--INSERT VALUES INTO THE TABLES

INSERT INTO department VALUES('Research', 5, null, '22-05-1988');

UPDATE department SET mgrssn=33344555 WHERE dnumber = 5;

COMMIT;
