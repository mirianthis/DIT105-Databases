--SHOW THE NAMES OF ALL THE EMPLOYEES
select fname,lname
from EMPLOYEE;

--SHOW THE FNAME AND LNAME IN 1 COLLUMN WITH A DIEFFERENT NAME
select fname || ' ' || lname Fullname
from EMPLOYEE;

--SHOW THE NAMES AND LOCATIONS OF ALL PROJECTS
select pname,plocation
from project;

--SHOW PNAME AND PNUMBER OF PROJECTS THE THE LOCATION IS HOUSTON
select pname,pnumber
from project
where plocation = 'Houston';

--SHOW ALL EMPLOYESS THE WERE BORN AFTER 1965
select *
from employee
where bdate >= '1965-1-1';

select dependent_name, sex, relationship
from dependent
where essn = 333445555;

select essn,hours
from works_on
where pno=10;

select essn,hours,e.fname || ' ' || e.lname fullname
from works_on w JOIN employee e ON w.essn=e.ssn
where pno=10;

select fname
from employee
where bdate >= '1965-1-1'
UNION
select dependent_name
from dependent
where bdate >= '1965-1-1';

select ssn
from employee e join works_on w ON e.ssn=w.essn
where e.sex='M' and w.pno=30;

select ssn
from employee e
where e.sex='M'
INTERSECT
select essn
from works_on w
where w.pno=30;

select *
from dependent
where sex='F' and dependent_name like 'A%';

select dnumber
from dept_locations
where dlocation='Houston'
UNION 
select dno
from employee
where sex='F';

select distinct essn
from works_on
where (hours between 20 and 30) or (pno=10 and hours > 15);

commit;
