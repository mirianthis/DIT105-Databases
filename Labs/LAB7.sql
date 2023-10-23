--EROTIMA 1
SELECT DISTINCT DNO
FROM EMPLOYEE 
WHERE SEX = 'F'
UNION
SELECT DNUMBER
FROM DEPT_LOCATIONS
WHERE DLOCATION='HOUSTON';

--EROTIMA 1 ME JOIN
SELECT distinct d.dnumber
FROM employee e JOIN department d ON e.dno=d.dnumber
                JOIN dept_locations d1 ON d.dnumber=d1.dnumber
WHERE dlocation='Houston' OR sex='F'
ORDER BY d.dnumber asc;

--EROTIMA 2
SELECT distinct fname || ' ' || lname fullname
FROM employee e JOIN works_on w ON e.ssn=w.essn                
WHERE (w.hours BETWEEN 20 and 30) OR (w.pno=10 and w.hours>15);

--EROTIMA 2 A
SELECT distinct fname || ' ' || lname fullname, p.pname, p.plocation, w.hours
FROM employee e JOIN works_on w ON e.ssn=w.essn 
                JOIN project p ON pnumber=w.pno
WHERE (w.hours BETWEEN 20 and 30) OR (w.pno=10 and w.hours>15);

--EROTIMA 3
SELECT dname,pname
FROM department d join project p ON d.dnumber=p.dnum;

--EROTIMA 3A
SELECT distinct dname,pname
FROM department d JOIN project p ON d.dnumber=p.dnum
                  JOIN dept_locations d1 ON d1.dnumber=d.dnumber
WHERE plocation<>dlocation;

--EROTIMA 4
--DEN VGAXEI APOTELESMATA EPD DEN IPARXI YFISTAMEN POY NA
--PERNAI PIO POLLA APO TON PROISTAMEN
SELECT yf.lname YF,yf.salary YFSALARY, pro.lname PRO, pro.salary PROSALARY
FROM employee yf  JOIN employee pro ON pro.ssn=yf.superssn
WHERE yf.salary>pro.salary;

--EROTIMA 5
SELECT e.fname || ' ' || e.lname FULLNAME, dependent_name 
FROM employee e LEFT OUTER JOIN dependent dP ON e.ssn=dP.essn
WHERE dp.relationship='SPOUSE' or dp.relationship is null;

--EROTIMA 5 B TROPOS
SELECT fname,lname, dependent_name
FROM employee e LEFT OUTER JOIN(    SELECT *
                                    FROM dependent dp
                                    WHERE dp.relationship='SPOUSE') sp ON e.ssn = sp.essn;

--EROTIMA 6
SELECT d.dnumber,d.dname, count(e.ssn) ypaliloi
FROM employee e JOIN department d ON e.dno=d.dnumber
                  JOIN dept_locations dl ON dl.dnumber=d.dnumber
WHERE dl.dlocation='Houston'
GROUP BY d.dnumber,d.dname;

--EROTIMA 6 A
SELECT d.dnumber,d.dname, count(e.ssn) ypaliloi
FROM employee e JOIN department d ON e.dno=d.dnumber
                  JOIN dept_locations dl ON dl.dnumber=d.dnumber
WHERE dl.dlocation='Houston'
GROUP BY d.dnumber,d.dname
HAVING count(e.ssn)>=2;

--EROTIMA 6 B
SELECT ssn, fname, lname, count(*) paidia
FROM employee e LEFT OUTER JOIN dependent dP ON e.ssn=dP.essn
WHERE dp.relationship IN ('SON', 'DAUGHTER')
GROUP BY ssn, fname, lname
HAVING count(*)=2;

--EROTIMA 7
create view mesosmisthos (mesos,synolikos) as
SELECT avg(salary), sum(salary)
FROM employee;

drop view mesosmisthos;

select * from mesosmisthos;

SELECT fname,lname,salary
FROM employee
WHERE salary>(select mesos from mesosmisthos);

--EROTIMA 7A
create view mesosmisthosanatmima (dno, mesos, synolikos) as
SELECT dno, avg(salary), sum(salary)
FROM employee
GROUP BY dno;

select * from mesosmisthosanatmima;

SELECT fname,lname,salary
FROM employee e JOIN mesosmisthosanatmima m ON e.dno=m.dno
WHERE salary>m.mesos;