#--------------MYSQL PROJECT : - SECOND HAND CAR DEALER ------------

# Read cars Data 
# Total Cars : to get a count of total Records 
# The manager asked the employee How many cars will be available in 2023 ?
# The manager asked the employee . how many cars is available in 202 , 2021 , 2022 .
# Client asked me to print the total of all cars by year .
# client asked to car dealer agent . How many Diesel Car will  be there in 2020 ?  
# client asked to car dealer agent . How many Petrol Car will  be there in 2020 ?
# The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year . 
# Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
# The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.
# The manager said to the employee All cars details between 2015 to 2023 we need complete list




create schema cars;
use cars;
# Read cars Data 
select * from car_dekho;
# Total Cars : to get a count of total Records 
select count(*) from car_dekho;
# The manager asked the employee How many cars will be available in 2023 ?
select count(*) from car_dekho where year = 2023;
# The manager asked the employee . how many cars is available in 202 , 2021 , 2022 .
select count(*) from car_dekho where year = 2020; # 74 
select count(*) from car_dekho where year = 2021; # 7 
select count(*) from car_dekho where year = 2022; # 7 
#--- we can use group By . 
select count(*) from car_dekho where 
year in (2020,2021,2023) group by year ;
# Client asked me to print the total of all cars by year .
select year , count(*)  from car_dekho group by year ;
# client asked to car dealer agent . How many Diesel Car will  be there in 2020 ?  
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
# client asked to car dealer agent . How many Petrol Car will  be there in 2020 ?
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";
# The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year . 
select year, count(*) from car_dekho where fuel ="Petrol" group by year;
select year, count(*) from car_dekho where fuel ="Diesel" group by year;
select year, count(*) from car_dekho where fuel ="CNG" group by year;
# Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
Select year,count(*) from car_dekho group by year having count(*) >100;
Select year,count(*) from car_dekho group by year having count(*) <50;
# The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.
select count(*) car_dekho where year between 2015 and 2023 ;
# The manager said to the employee All cars details between 2015 to 2023 we need complete list
select * from car_dekho where year between 2015 and 2023 ; 