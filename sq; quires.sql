show databases;
use world;
select * from city;
select * from country;
select * from countrylanguage;


SELECT * FROM country WHERE Continent='Europe' AND Population>5000000;
  
SELECT * FROM city WHERE Population BETWEEN 1000000 AND 5000000 LIMIT 20;

SELECT co.Name, c.Name FROM country co INNER JOIN city c ON co.Capital=c.ID;


SELECT Language, COUNT(*) FROM countrylanguage GROUP BY Language;

SELECT Continent, COUNT(*), AVG(Population) FROM country GROUP BY Continent;

SELECT Continent, COUNT(*) FROM country GROUP BY Continent HAVING COUNT(*)>10;

SELECT * FROM city WHERE Population > (SELECT AVG(Population) FROM city);

SELECT co.Name, (SELECT COUNT(*) FROM city WHERE CountryCode=co.Code) FROM country;


SELECT * FROM country_analysis;

SELECT Continent FROM country WHERE Population>1000000 GROUP BY Continent HAVING COUNT(*)>5;




SELECT co.Name AS Country, cl.Language
FROM country co
LEFT JOIN countrylanguage cl ON co.Code=cl.CountryCode
LIMIT 10;

SELECT co.Name AS Country, cl.Language
FROM country co
LEFT JOIN countrylanguage cl ON co.Code=cl.CountryCode;


CREATE VIEW top_cities AS
SELECT Name, CountryCode, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

SELECT * FROM top_cities;
