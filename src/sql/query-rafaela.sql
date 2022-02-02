-- Top 10 jogos mais vendidos-- 
SELECT name, owners, price
FROM steam
WHERE price != 0
ORDER BY owners DESC
LIMIT 10;

-- Top 10 jogos menos vendiddos--
SELECT name, owners
FROM steam
WHERE price != 0
ORDER BY owners
LIMIT 10;

-- Top 10 jogos gratuitos mais baixados--
SELECT name, owners, price
FROM steam
WHERE price = 0
ORDER BY owners DESC
LIMIT 10;