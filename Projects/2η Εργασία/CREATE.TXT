--CREATE THE TABLES

create table VACCINE_COMPANIES(
Brand_Id              NUMBER(2),
Company_Name          VARCHAR(60),
Vaccine_Name          VARCHAR(45),
Vaccine_Code          VARCHAR(45),
CONSTRAINT p_key PRIMARY KEY (Brand_Id)
);

create table COUNTRIES(
Country_code          NUMBER(3),
Country_Name          VARCHAR(45),
CONSTRAINT pr_key PRIMARY KEY (Country_code)
);

create table POPULATION(
U_Id                  VARCHAR(45),
ID_Number             VARCHAR(10),
First_Name            VARCHAR(45),
Last_Name             VARCHAR(45),
Birthday              DATE,
Phone                 VARCHAR(15),
Street                VARCHAR(45),
Zip_code              NUMBER(7),
City                  VARCHAR(25),
State                 CHAR(3),
Country               NUMBER(3),
CONSTRAINT pri_key PRIMARY KEY (U_Id),
CONSTRAINT FK_coun_popu FOREIGN KEY (Country) REFERENCES COUNTRIES(Country_code)
);

create table VACCINATION_CENTERS(
Object_Id             NUMBER(6),
Facility_Id           NUMBER(10),
Facility_Name         VARCHAR(60),
Address               VARCHAR(45),
City                  VARCHAR(25),
State                 CHAR(3),
Zip_code              NUMBER(7),
Phone_Number          VARCHAR(15),
County                VARCHAR(10),
Country               NUMBER(3),
Latitude              NUMBER,
Longitute             NUMBER,
Website               VARCHAR(65),
Helipad               CHAR(1),
CONSTRAINT prim_key PRIMARY KEY (Facility_Id),
CONSTRAINT FK_coun_vace FOREIGN KEY (Country) REFERENCES COUNTRIES(Country_code)
);

create table VACCINATIONS(
Vaccination_Id        NUMBER(5),
U_Id                  VARCHAR(45),
Vaccine_Type          NUMBER(2),
First_Dose            CHAR(5),
First_Dose_Date       DATE,
Second_Dose           CHAR(5),
Second_Dose_Date      DATE,
Vaccination_center    NUMBER(10),
CONSTRAINT prima_key PRIMARY KEY (Vaccination_Id),
CONSTRAINT FK_popu_vac FOREIGN KEY (U_Id) REFERENCES POPULATION(U_Id),
CONSTRAINT FK_vaco_vac FOREIGN KEY (Vaccine_Type) REFERENCES VACCINE_COMPANIES(Brand_Id),
CONSTRAINT FK_coun_vac FOREIGN KEY (Vaccination_center) REFERENCES VACCINATION_CENTERS(Facility_Id)
);