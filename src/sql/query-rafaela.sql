-- Top 10 jogos mais vendidos-- 
SELECT name, owners, price
FROM steam
WHERE price != 0
ORDER BY owners DESC
LIMIT 10;