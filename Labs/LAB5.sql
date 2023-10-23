alter table DEPARTMENT
DROP CONSTRAINT FK_empl_dep;

drop table WORKS_ON;
drop table DEPENDENT;
drop table DEPT_LOCATIONS;
drop table project;
drop table EMPLOYEE;
drop table DEPARTMENT;



create table DEPARTMENT(
Dname         VARCHAR2(50),
Dnumber       NUMBER(5),
MGRSSN        NUMBER(10),
MGRSTARTDATE  DATE,
CONSTRAINT p_key PRIMARY KEY (Dnumber)
);

create table EMPLOYEE(
Fname     VARCHAR2(50),
Minit     VARCHAR2(50),
Lname     VARCHAR2(50),
SSN       NUMBER(10),
Bdate     DATE,
Address   VARCHAR2(50),
Sex       VARCHAR2(50),
Salary    NUMBER(7),
SUPERSSN  NUMBER(10),
Dno       NUMBER(5),
CONSTRAINT pri_key PRIMARY KEY (SSN), 
CONSTRAINT FK_employee_department FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber), 
CONSTRAINT FK_employee FOREIGN KEY (SUPERSSN) REFERENCES EMPLOYEE(SSN)
);

create table PROJECT(
Pname     VARCHAR2(50),
Pnumber   NUMBER(5),
Plocation VARCHAR2(50),
Dnum NUMBER(5),
CONSTRAINT pr_key PRIMARY KEY (Pnumber),
CONSTRAINT FK_proj_dep FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber)
);


create table DEPENDENT(
ESSN            NUMBER(10),
Dependent_Name  VARCHAR2(50),
Sex             VARCHAR2(50),
Bdate           DATE,
Relationship    VARCHAR2(50),
CONSTRAINT prim_key PRIMARY KEY (ESSN, Dependent_Name), 
CONSTRAINT FK_employee_dependent FOREIGN KEY (ESSN) REFERENCES EMPLOYEE(SSN)
);

create table DEPT_LOCATIONS(
Dnumber   NUMBER(5),
Dlocation VARCHAR2(50),
CONSTRAINT prima_key PRIMARY KEY (Dnumber, Dlocation), 
CONSTRAINT FK_location_department FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)
);

create table WORKS_ON(
ESSN    NUMBER(10),
Pno     NUMBER(5),
Hours   NUMBER(5),
CONSTRAINT primar_key PRIMARY KEY (ESSN, Pno), 
CONSTRAINT FK_employee_works FOREIGN KEY (ESSN) REFERENCES EMPLOYEE(SSN), 
CONSTRAINT FK_employee__project FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber)
);

alter table DEPARTMENT
ADD CONSTRAINT FK_empl_dep FOREIGN KEY (MGRSSN) REFERENCES EMPLOYEE(SSN);


desc DEPARTMENT;

ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD';

insert into EMPLOYEE values('James','E','Borg',888665555,'1937-11-10','450 Stone Houston TX','M',55000,null,null);        
insert into DEPARTMENT values('Headquarters',1,888665555,'1981-06-19');

update DEPARTMENT set MGRSSN=888665555 where dnumber=1;

insert into EMPLOYEE values('Franklin','T','Wong',333445555,'1955-12-08','638 Voss Houston TX','M',40000,888665555,null);
insert into DEPARTMENT values('Research',5,333445555,'1988-05-22');

update DEPARTMENT set MGRSSN=333445555 where dnumber=5;

insert into EMPLOYEE values('Jennifer','S','Wallace',987654321,'1955-12-08','291 Berry Bellaire TX','F',43000,888665555,1);
insert into EMPLOYEE values('John','B','Smith',123456789,'1965-01-09','731 Fondren Houston TX','M',30000,333445555,5);
insert into EMPLOYEE values('Ramesh','K','Narayan',666884444,'1962-09-15','975 Fire Oak Humble TX','M',38000,333445555,5);
insert into EMPLOYEE values('Joyce','A','English',453453453,'1972-07-31','5631 Rice Houston TX','M',25000,333445555,5);

update EMPLOYEE set SEX='F' where SSN=453453453;
update EMPLOYEE set DNO=5 where SSN=333445555;
update EMPLOYEE set DNO=1 where SSN=888665555;

insert into DEPARTMENT values('Administration',4,987654321,'1995-01-01');

update DEPARTMENT set MGRSSN=987654321 where dnumber=4;

insert into EMPLOYEE values('Alicia','J','Zelaya',999887777,'1968-07-19','3321 Castle Spring TX','F',25000,987654321,4);
insert into EMPLOYEE values('Ahmad','V','Jabbar',987987987,'1969-03-29','980 Dallas Houston TX','M',25000,987654321,4);

insert into DEPT_LOCATIONS values(1,'Houston');
insert into DEPT_LOCATIONS values(4,'Stafford');
insert into DEPT_LOCATIONS values(5,'Bellaire');
insert into DEPT_LOCATIONS values(5,'Sugarland');
insert into DEPT_LOCATIONS values(5,'Houston');

insert into PROJECT values('ProductX',1,'Bellaire',5);
insert into PROJECT values('ProductY',2,'Sugarland',5);
insert into PROJECT values('ProductZ',3,'Houston',5);
insert into PROJECT values('Computerization',10,'Stafford',4);
insert into PROJECT values('Reorganization',20,'Houston',1);
insert into PROJECT values('Newbenefits',30,'Stafford',4);

insert into DEPENDENT values(333445555,'Alice','F','1986-04-05','DAUGHTER');
insert into DEPENDENT values(333445555,'Theodore','M','1983-10-25','SON');
insert into DEPENDENT values(333445555,'Joy','F','1958-05-03','SPOUSE');
insert into DEPENDENT values(987654321,'Abner','M','1942-02-28','SPOUSE');
insert into DEPENDENT values(123456789,'Michael','M','1988-01-04','SON');
insert into DEPENDENT values(123456789,'Alice','F','1988-12-30','DAUGHTER');
insert into DEPENDENT values(123456789,'Elizabeth','F','1967-05-05','SPOUSE');

insert into WORKS_ON values(123456789,1,32.5);
insert into WORKS_ON values(123456789,2,7.5);
insert into WORKS_ON values(666884444,3,40.0);
insert into WORKS_ON values(453453453,1,20.0);
insert into WORKS_ON values(453453453,2,20.0);
insert into WORKS_ON values(333445555,2,10.0);
insert into WORKS_ON values(333445555,3,10.0);
insert into WORKS_ON values(333445555,10,10.0);
insert into WORKS_ON values(333445555,20,10.0);
insert into WORKS_ON values(999887777,30,30.0);
insert into WORKS_ON values(999887777,10,10.0);
insert into WORKS_ON values(987987987,10,35.0);
insert into WORKS_ON values(987987987,30,5.0);
insert into WORKS_ON values(987654321,30,20.0);
insert into WORKS_ON values(987654321,20,15.0);
insert into WORKS_ON values(888665555,20,null);



select * from DEPARTMENT;
select * from EMPLOYEE;
select * from PROJECT;
select * from DEPT_LOCATIONS;
select * from DEPENDENT;
select * from WORKS_ON;