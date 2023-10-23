--CREATE A TABLE CONTAINING ONLY MALE EMPLOYEES
create table MALE_EMP(
ssn number(10) primary key,
fname varchar(20),
lname varchar(20)
);

INSERT into MALE_EMP (ssn,fname,lname)
(
select ssn,fname ,lname 
from employee
where sex = 'M'
);

select * from male_emp;

--CREATE INDEX FOR MALE_EMP ON SSN AND FNAME
CREATE INDEX male_emp_fname ON male_emp(fname);
CREATE INDEX male_emp_ssn ON male_emp(ssn);


--CREATE FUNCTION 
create or replace function bonus(ssn int) return float is   
        numprojects int;
        bonus float;
    BEGIN
        bonus:=100;
        select count(essn)
        into numprojects
        from works_on
        where ssn=essn;
        
        if numprojects >=3 then
        bonus:=1000;
        end if;
        return bonus;
    END;
    /

select fname,lname,salary+bonus(888665555) from employee;

create or replace trigger male_emp
before insert on employee
for each row
BEGIN
    bonus:=bonus(ssn)
    insert into male_emp 
END;


 