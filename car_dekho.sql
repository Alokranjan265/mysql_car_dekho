-- create schema
create schema project;
use project;
-- import csv file
-- read data
select*from car_dekho;
-- count of total cars
select count(*) from car_dekho;
-- count of cars in 2023
select count(*) from car_dekho where year=2022;
-- count of cars in 2020,2021, and, 2022
select count(*) from car_dekho where year in(2020,2021,2022);
select count(*) from car_dekho where year between 2020 and 2022;
-- count of cars by year
select year,count(*) from car_dekho group by year;
-- count of diesel cars in year 2020;
select count(*) from car_dekho where year=2020 and fuel='diesel';
-- count of petrol cars in year 2020;
select count(*) from car_dekho where year=2020 and fuel='petrol';
-- count of cars by year and fuel;
select year,fuel,count(*) from car_dekho group by year,fuel;
-- show years those sold more than 100 cars in a year
select year,count(*) as total from car_dekho group by year having total>100;
-- count of cars between 2015 and 2023
select year,count(*) from car_dekho group by year having year between 2015 and 2023;
-- show all details of cars between 2015 and 2023
select * from car_dekho where year between 2015 and 2023;