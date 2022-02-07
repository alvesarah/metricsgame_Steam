-- Quais os 5 setups para os jogos mais bem avaliados da steam?

SELECT srd.steam_appid , s.positive_ratings as avaliacoes_positivas , s.name as jogos , srd.minimum as setup
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
ORDER BY s.positive_ratings DESC
LIMIT 5;

--Quais os 5 setups para os jogos mais jogados da steam?

SELECT  s.appid , s.owners as quantidade_de_downloads, s.name as jogos , srd.minimum as setup 
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
ORDER BY s.owners DESC
LIMIT 5;

--Quais os 3 setups dos jogos mais jogados da categoria multi-player?

SELECT srd.steam_appid , s.name, s.average_playtime,srd.minimum, s.categories
FROM steam AS s
INNER JOIN steam_requirements_data as srd
ON srd.steam_appid = s.appid
where categories like 'Multi-player'
order by average_playtime desc
LIMIT 3 ;

