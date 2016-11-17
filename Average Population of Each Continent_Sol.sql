SELECT country.continent, FLOOR(AVG(city.population))
FROM city
JOIN country
ON city.countryCode = country.code
GROUP BY country.continent;