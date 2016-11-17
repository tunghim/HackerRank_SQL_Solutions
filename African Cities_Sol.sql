SELECT city.name
FROM city
JOIN country
ON city.countryCode = country.code
WHERE continent = 'Africa';