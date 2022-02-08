-- 10 jogos de ação recomendados para 18 anos com melhor avaliação --
SELECT name, positive_ratings, required_age, genres
FROM steam
WHERE required_age >= 18 and genres = 'Action'
ORDER BY positive_ratings DESC
LIMIT 10;

-- 10 Jogos mais baratos com avaliações mais positivas --
SELECT name, price, positive_ratings 
FROM steam 
WHERE price > 0
ORDER BY price, positive_ratings  DESC 
LIMIT 10;

-- Jogos multi-player desenvolvidos pela Valve com maiores avaliações --
SELECT developer, name, categories, positive_ratings
FROM steam
WHERE categories NOT LIKE '%Single-player%'
AND categories LIKE '%Multi-Player%'
AND price = 0
AND developer LIKE '%Valve%'
ORDER BY positive_ratings DESC;