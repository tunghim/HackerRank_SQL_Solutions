SELECT SUM(city.population)
FROM city
JOIN country
ON city.countryCode = country.code
WHERE continent = 'Asia';