--INSERT VALUES INTO THE TABLES

insert into COUNTRIES values(1,'Afghanistan');  
insert into COUNTRIES values(44,'Cyprus');   
insert into COUNTRIES values(59,'Ethiopia');   
insert into COUNTRIES values(68,'Greece');   
insert into COUNTRIES values(136,'Peru');   


insert into VACCINE_COMPANIES values(1,'Pfizer Inc. and BioNTech', 'Pfizer-BioNTech','BNT162b2'); 
insert into VACCINE_COMPANIES values(2,'ModernaTX Inc.', 'Moderna','mRNA-1273');  
insert into VACCINE_COMPANIES values(3,'Oxford/AstraZeneca', 'AstraZeneca','AZD1222');  
insert into VACCINE_COMPANIES values(4,'Johnson and Johnson', 'Johnson and Johnson COVID-19', '-');  
insert into VACCINE_COMPANIES values(5,'Gamaleya National Centre', 'Sputnik V','Gam-COVID-Vac'); 

ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YY';

insert into POPULATION values('000027ca-cc66-5e70-888d-7bc68721c645', 'WL 58802', 'Evan', 'Mendez', '18/01/1962', '(875) 404-6468',
'Inbim Drive 266', 56726,	'Nalvubit', 'RI', 1);
insert into POPULATION values('00002db9-2528-5ca6-8fc4-dd6e69648707', 'LL 92672', 'Peter', 'Mitchell', '19/07/1963', '(535) 455-1827',
'Unajep Plaza 33',	46352,	'Ujluvwa',	'LA',	44);
insert into POPULATION values('0000c9b3-f6f9-54a1-a406-d8b8d735ab33', 'JW 47611', 'Nellie',	'Clayton', '13/12/1960',	'(762) 805-7957',
'Cemjaz Circle 348', 40927,	'Fegizmip',	'SD', 59);
insert into POPULATION values('00014fa2-a15e-5e2c-9d41-4e985aec7c68',	'SU 2976',	'Virginia',	'Greene',	'03/11/2000',	'(629) 735-2236',
'Caav Lane 344',	99270,	'Kinsomu',	'OR',	68);
insert into POPULATION values('0001cf9e-05ef-586a-9724-f17d92f37796',	'WT 68275',	'Helen',	'Sparks',	'09/12/2001',	'(383) 444-7848',
'Fuda Plaza 491',	85922,	'Najjapzok',	'AL',	136);
insert into POPULATION values('0002188b-3097-5098-a688-fad26903ef14',	'RD 21713',	'Oscar',	'Holmes',	'29/06/1974',	'(332) 693-3155',
'Ejro Grove 77',	38337,	'Deumuura',	'ND',	1);
insert into POPULATION values('00025bcc-28da-580d-b8f1-b41308e79bcb',	'DO 16418',	'Lucile',	'Moreno',	'02/02/1979',	'(524) 839-1494',
'Ihiha Extension 436',	47393,	'Mefate',	'MT',	68);
insert into POPULATION values('0002d5ff-9a91-5e66-9b8b-e19b80e82314',	'ZO 61333',	'Ollie',	'Ross',	'06/06/1998',	'(689) 512-5818',
'Nabpor Highway 188',	64513,	'Duzevel',	'NC',	136);
insert into POPULATION values('0002f092-a1f2-535d-8107-66b59f2c133b',	'YW 23336',	'Floyd',	'Bowman',	'21/02/1979',	'(509) 851-7699',
'Wetewa Square 519',	6996,	'Wiotko',	'UT',	59);
insert into POPULATION values('00033d01-2f1a-5716-ba88-3e64aed08f78',	'EC 24508',	'Joe',	'Brooks',	'20/01/1956',	'(308) 342-4433',
'Iblu Heights 202',	60382,	'Tefetwus',	'MD',	44);

insert into VACCINATION_CENTERS values(1, 5793230,	'CENTRAL VALLEY GENERAL HOSPITAL',	'1025 NORTH DOUTY STREET',	'HANFORD',	'CA',
93230,	'(501) 219-7000',	'KINGS',	1,	'36.33615885',	'-119.6456673',	'http://www.hanfordhealth.com',	'N');
insert into VACCINATION_CENTERS values(2,	53391362, 'LOS ROBLES HOSPITAL', '150 VIA MERIDA', 'WESTLAKE VILAGE', 'CA',
91362,	'(870) 972-4100',	'VENTURA',	44,	'34.15493887',	'-118.8157364',	'http://www.losrobleshospital.com',	'N');
insert into VACCINATION_CENTERS values(3,	11190023,	'EAST LOS ANGELES DOCTORS HOSPITAL',	'4060 WHITTIER BOULEVARD',	'LOS ANGELES', 'CA',
90023,	'(319) 268-3000',	'ORANGE',	59,	'34.0236473',	'-118.1841648',	'http://www.elalax.com',	'N');
insert into VACCINATION_CENTERS values(4,	17090028,	'SOUTHERN CALIFORNIA HOSPITAL AT HOLLYWOOD',	'6245 DE LONGPRE AVENUE', 'HOLLYWOOD',	'CA',
90028,	'(323) 462-2271',	'TULARE',	68,	'34.09639136',	'-118.3252349',	'http://sch-hollywood.com/',	'N');
insert into VACCINATION_CENTERS values(5,	23691706,	'KINDRED HOSPITAL BALDWIN PARK',	'14148 FRANCISQUITO AVENUE',	'BALDWIN PARK',	'CA',
91706,	'(701) 256-6100',	'ORANGE',	136,	'34.06303893',	'-117.9674378',	'http://www.khbaldwinpark.com',	'N');
insert into VACCINATION_CENTERS values(6,	25190712,	'LAKEWOOD REGIONAL MEDICAL CENTER',	'3700 EAST SOUTH STREET',	'LAKEWOOD',	'CA',
90712,	'(419) 291-7463',	'TULARE',	136,	'33.85970662',	'-118.148403',	'http://www.lakewoodregional.com',	'N');
insert into VACCINATION_CENTERS values(7,	30791016,	'MONROVIA MEMORIAL HOSPITAL',	'323 SOUTH HELIOTROPE AVENUE',	'MONROVIA',	'CA',
91016,	'(660) 726-3941',	'FRANKLIN',	44,	'34.14875866',	'-117.9926677',	'http://www.monroviamemorial.com',	'N');
insert into VACCINATION_CENTERS values(8,	30891754,	'MONTEREY PARK HOSPITAL',	'900 SOUTH ATLANTIC BOULEVARD',	'MONTEREY PARK',	'CA',
91754,	'(931) 738-9211',	'CONCORDIA',	59,	'34.04946606',	'-118.1382622',	'http://www.montereyparkhosp.com',	'N');
insert into VACCINATION_CENTERS values(9,	47090505,	'STAR VIEW ADOLESCENT - P H F',	'4025 WEST 226 STREET',	'TORRANCE',	'CA',
90505,	'(715) 762-7500',	'UNION',	68,	'33.82391446',	'-118.3560969',	'http://www.starsinc.com/',	'N');
insert into VACCINATION_CENTERS values(10,	9092879,	'CORONA REGIONAL MEDICAL CENTER-MAGNOLIA',	'730 MAGNOLIA AVENUE',	'CORONA',	'CA',
92879,	'(415) 600-6000',	'RIVERSIDE',	136, '33.85808331',	'-117.553858',	'http://www.coronaregional.com',	'N');


insert intO VACCINATIONS values(1,'000027ca-cc66-5e70-888d-7bc68721c645',  2,	'TRUE',	'09/02/2021',	'TRUE',	'13/03/2021',	5793230);
insert intO VACCINATIONS values(2,'00002db9-2528-5ca6-8fc4-dd6e69648707',  3,	'TRUE',	'13/02/2021',	'FALSE','2/1/2021',	9092879);
insert intO VACCINATIONS values(3,'0000c9b3-f6f9-54a1-a406-d8b8d735ab33',  1,	'FALSE','1/01/2021',		'FALSE', '2/1/2021',5793230);
insert intO VACCINATIONS values(4,'00014fa2-a15e-5e2c-9d41-4e985aec7c68',  	1,	'FALSE','1/01/2021',		'FALSE', '2/1/2021',5793230);
insert intO VACCINATIONS values(5,'0001cf9e-05ef-586a-9724-f17d92f37796',	1,	'FALSE','1/01/2021',		'FALSE', '2/1/2021',5793230);
insert intO VACCINATIONS values(6,'0002188b-3097-5098-a688-fad26903ef14',	3,	'TRUE',	'22/02/2021',	'FALSE', '5/5/2021',		47090505);
insert intO VACCINATIONS values(7,'00025bcc-28da-580d-b8f1-b41308e79bcb',	3,	'TRUE',	'08/02/2021',	'TRUE',	'09/03/2021',	30791016);
insert intO VACCINATIONS values(8,'0002d5ff-9a91-5e66-9b8b-e19b80e82314',	1,	'TRUE',	'26/02/2021',	'TRUE',	'08/03/2021',	11190023);
insert intO VACCINATIONS values(9,'0002f092-a1f2-535d-8107-66b59f2c133b',	2,	'TRUE',	'04/02/2021',	'TRUE',	'08/03/2021',	25190712);
insert intO VACCINATIONS values(10,'00033d01-2f1a-5716-ba88-3e64aed08f78',	1,	'FALSE','1/01/2021',		'FALSE', '2/1/2021',5793230);

update VACCINATIONS set vaccine_type=NULL where first_dose='FALSE';
update VACCINATIONS set first_dose_date=NULL where first_dose='FALSE';
update VACCINATIONS set second_dose_date=NULL where second_dose='FALSE';
update VACCINATIONS set vaccination_center=NULL where first_dose='FALSE' AND second_dose='FALSE';


