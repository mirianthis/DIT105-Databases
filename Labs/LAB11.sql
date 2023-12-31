--1 ????????? ?? ??????? ???? ??? ????????? ??? ??? ????? ???? ?? ??? ????? ?? ??? ?????: JAMES - 55000
SELECT lname || ' - $' || salary AS LastName_Salary 
FROM employee;

--2 ????????? ??? ?? ???????? ??? ????????? ??? ?????????? ??? ???? ?? ?????? 1 ? 2
SELECT *
FROM employee e JOIN works_on w ON ssn=essn
WHERE w.pno=1 or w.pno=2;

--3 ????????? ??? ???????? ?????? ??????????? ??? ???????? ??? ?????
SELECT count(e.ssn) AS Plithos,d.dname AS Onoma
FROM employee e JOIN department d ON d.dnumber=e.dno 
GROUP BY d.dname;

--4 ????????? ??? ?? ???????? ??? ???????? ??? ?????????? ??? HOUSTON
SELECT * 
FROM department d JOIN dept_locations dl ON d.dnumber=dl.dnumber
WHERE dl.dlocation='Houston';

--5 ????????? ??? ?????? ??? ?????????, ??? ???? ??? ????? ???????? ??? ??? ?????? ??? ????? ??? ????? ????? ????????
--  ?? ?????? ????? ???????? ???????????? ??? 20 ???? ??? ????????? ??? 30 ???? ? ????? ???????? ???????????? ??? 15 ???? ??? ???? 10
SELECT e.ssn,w.hours,w.pno
FROM employee e JOIN works_on w ON e.ssn=w.essn
WHERE (w.hours>=20 AND w.hours<=30) OR (w.hours>15 AND w.pno=10);


--6 ????????? ?? ??????? ??? ??????????? ????? ?? ????? ????? ?????? ??? ?? ????? ??? ????????? ??? ?
SELECT dependent_name
FROM dependent
WHERE sex='M' and dependent_name LIKE 'M%';

--7 ????????? ?? ?????, ?? ???? ??? ?? ????? ??? ??????????? ????? ??? ????????? ?? ?????? 333445555
SELECT e.fname,e.sex,d.relationship 
FROM employee e JOIN dependent d ON e.ssn=d.essn
WHERE e.ssn=333445555;

--8 ????????? ??? ?? ???????? ??? ????????? ??? ?? ???? ???????? ???? ????? ??? ?? 1966 ??? ????
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';
SELECT *  
FROM employee
WHERE bdate >= '01-01-1966';

--9 ????????? ?? ??????? ??? ????????? ??? ??? ??????????? ????? ??? ????? ???????? ???? ?? 1965
SELECT e.fname,d.dependent_name
FROM employee e JOIN dependent d ON e.ssn=d.essn
WHERE e.bdate >= '01-01-1965' AND d.bdate >= '01-01-1965';

--10 ????????? ???? ??????? ??? ?????? ????????? ??? ?????????? ??? ???? ?? ?????? 10
SELECT e.ssn
FROM employee e JOIN works_on w ON e.ssn=w.essn
WHERE w.pno=10 AND e.sex='M';

COMMIT;