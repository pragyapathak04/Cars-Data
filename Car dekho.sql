create database cars;
use cars;
#READ DATA#
SELECT * FROM cars.`car dekho`;

#TOTAL CARS: TO GET COUNT OF TOTAL CARS#
select count(*) from cars.`car dekho`;

#NO. OF CARS AVAILABLE IN 2023#
select count(*) from cars.`car dekho` where year = 2023;

#NO. OF CARS AVAILABLE IN 2020,2021,2022#
select count(*) from cars.`car dekho` where year in (2020,2021,2022)
group by year;

#PRINT TOTAL OF ALL CARS BY YEAR#
select year, count(*) from cars.`car dekho` group by year;

#HOW MANY DIESEL CARS WILL BE THERE IN 2020#
select count(*) from cars.`car dekho` where fuel = "diesel" and year= 2020;

#HOW MANY PETROL CARS WILL BE THERE IN 2020#
select count(*) from cars.`car dekho` where fuel = "petrol" and year= 2020;

#PRINT ALL THE FUEL CARS COME BY ALL YEAR#
select year, count(*) from cars.`car dekho` where fuel="petrol" group by year;
select year, count(*) from cars.`car dekho` where fuel="diesel" group by year;
select year, count(*) from cars.`car dekho` where fuel="CNG" group by year;

#WHICH YEAR HAD MORE THAN 100 CARS#
select year, count(*) from cars.`car dekho` group by year having count(*)>100;

#ALL CARS COUNT DETAILS BETWEEN 2015 TO 2023#
select count(*) from cars.`car dekho` where year between 2015 and 2023;

#ALL CARS DETAILS BETWEEN 2015 TO 2023#
select * from cars.`car dekho` where year between 2015 and 2023;