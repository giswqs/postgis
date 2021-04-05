# postgis

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/giswqs/postgis/master)

Spatial Data Management with PostgreSQL and PostGIS https://gishub.org/sdm

## Sample Datasets

- https://github.com/giswqs/data
- [cities.csv](https://github.com/giswqs/postgis/blob/master/data/cities.csv)

## Useful Resources

- https://www.w3schools.com/sql/default.asp

## SQL Tutorial

### Change column type

```
ALTER TABLE cities
ALTER COLUMN population TYPE INT
USING population::integer
```

### SQL queries for non-spatial data

The examples below use the sample dataset - [cities.csv](https://github.com/giswqs/postgis/blob/master/data/cities.csv)

- `SELECT * FROM cities`
- `SELECT * FROM cities LIMIT 10`
- `SELECT name, country FROM cities`
- `SELECT DISTINCT country FROM cities`
- `SELECT COUNT(DISTINCT country) FROM cities`
- `SELECT MAX(population) FROM cities`
- `SELECT SUM(population) FROM cities`
- `SELECT AVG(population) FROM cities`
- `SELECT * FROM cities ORDER BY country`
- `SELECT * FROM cities ORDER BY country ASC, population DESC`
- `SELECT * FROM cities WHERE country='USA'`
- `SELECT * FROM cities WHERE country='USA' OR country='CAN'`
- `SELECT * FROM cities WHERE country='USA' AND population>1000000`
- `SELECT * FROM cities WHERE country LIKE 'U%'`
- `SELECT * FROM cities WHERE country LIKE '%A'`
- `SELECT * FROM cities WHERE country LIKE '_S_'`
- `SELECT * FROM cities WHERE country IN ('USA', 'CAN', 'CHN')`
- `SELECT * FROM cities WHERE population BETWEEN 1000000 AND 10000000`
