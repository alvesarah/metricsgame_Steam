-- Jogos entre 1998 e 2005 com avaliações mais positivas --
SELECT release_date,name,appid,positive_ratings FROM steam 
WHERE release_date BETWEEN '1998%' AND '2005%' ORDER BY positive_ratings DESC LIMIT 5;

-- Porcentagem de jogos single-player em relação a todos os jogos--
SELECT ROUND(((SELECT count(categories) FROM steam WHERE categories LIKE "Single-player")/count(categories) * 100),2)
AS porcentagem_categories FROM steam;

-- 10 jogos de ação recomendados para 18 anos mais jogados --
SELECT name, owners, required_age, genres
FROM steam
WHERE required_age >= 18 and genres = 'Action'
ORDER BY owners DESC
LIMIT 10;

-- Porcentagem de jogos de ação em relação a todos os jogos--
SELECT Round(((SELECT count(genres) AS action_genre FROM steam WHERE genres LIKE "action")/count(genres) * 100),2) 
AS action_percentage FROM steam;

-- Desenvolvedores com maior número de avaliações negativas dos jogos Multi-Player de 2014--
SELECT developer, name, categories, negative_ratings, release_date
FROM steam
WHERE categories NOT LIKE '%single-player%'
AND categories LIKE '%Multi-Player%'
AND release_date LIKE '2014%'
ORDER BY negative_ratings DESC;
