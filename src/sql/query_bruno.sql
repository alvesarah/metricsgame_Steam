-- Quais os 10 setups para os jogos mais bem avaliados?

SELECT s.positive_ratings, s.name, s.release_date, srd.minimum 
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
ORDER BY s.positive_ratings DESC
LIMIT 10;

--Quais os 10 setups para os jogos mais jogados?

SELECT s.owners, s.name, s.release_date, srd.minimum 
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
ORDER BY s.owners DESC
LIMIT 10;

--Quais os 10 setups para linux dos jogos mais jogados?

SELECT s.owners, s.name, s.release_date, srd.linux_requirements
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
ORDER BY s.owners DESC
LIMIT 10;

