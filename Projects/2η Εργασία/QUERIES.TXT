--QUERIES

--EROTIMA I
SELECT c.country_name,COUNT(VC.COUNTRY) as EMVOLIASMI
FROM vaccinations v JOIN vaccination_centers vc ON v.vaccination_center=vc.facility_id
                    JOIN countries c ON c.country_code=vc.country
GROUP BY vc.country,c.country_name;


--EROTIMA II
SELECT c.country_name as ONOMA, COUNT(country) as ArithmosKentron
FROM vaccination_centers vc JOIN countries c ON c.country_code=vc.country
GROUP BY country,country_name;

--EROTIMA III
SELECT count(vaccination_id) as ArithmosEmvoliasmon
FROM vaccinations v JOIN vaccination_centers vc ON v.vaccination_center=vc.facility_id
                    JOIN countries c ON c.country_code=vc.country
WHERE c.country_name='Greece' AND v.first_dose='TRUE';

--EROTIMA IV
SELECT vaccine_type, COUNT(vaccine_type) emvoliasmi
FROM vaccinations
GROUP BY vaccine_type
HAVING COUNT(vaccine_type)>0;

--EROTIMA V
SELECT second_dose_date as IMERA, COUNT(second_dose_date) as DOSIS 
FROM vaccinations  GROUP BY second_dose_date 
HAVING COUNT (second_dose_date)=( 
SELECT MAX(mycount) 
FROM ( 
SELECT second_dose_date, COUNT(second_dose_date) mycount 
FROM vaccinations 
GROUP BY second_dose_date));

--EROTIMA VI
select count(vaccination_id) as PLIROSEMVOLIASMENOI
from vaccinations
where first_dose='TRUE' and second_dose='TRUE';

--EROTIMA VII
select count(vaccination_id)*100/10 pososto
from vaccinations
where first_dose='TRUE';

