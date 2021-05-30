-- In this file we are learning about select statement and its uses.
show databases; -- show all the databases 
use world; -- use the database
show tables; -- show all the tables in the database
-- display all the data
select * from city;

select count(*) from city; -- excluding null
-- display selected columns
select name, population from city;

-- let us find the cities where population is < 1000
select * from city where population < 1000;

-- could you help me find the cities from india?
select * from city where countrycode = 'IND';

-- let us find the cities where id is between 5 and 12
select * from city where id >= 5 and id<=12; -- logical operator (and) 

select * from city where id between 20 and 25; -- range operator

-- let us find the cities where ic matches with 7,17,77
select * from city where id=7 or id=17 or id=77;

select * from city where id in (8,18,88);

select distinct countrycode from city; -- distinct to remove duplicates from output

-- let us sort the data
select * from city order by population desc; -- order by <column> <order>

select * from city order by population desc limit 7;

-- let us practice aggregation function: MAX, MIN, AVG, SUM, COUNT
select max(population) from city;

-- subquery
select * from city where population in (select max(population) from city);

-- grouping part 
-- let us try to find how many cities are there in each country
select count(countrycode) as no_of_city, countrycode from city group by countrycode;

select * from country;
-- find the total surface area of each continent
select continent, sum(surfacearea) as tsa from country group by continent order by tsa desc;
