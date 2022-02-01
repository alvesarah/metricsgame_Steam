-- Top 18 temas mais baixados
SELECT steamspy_tags as tema, count(steamspy_tags) as quant_jogos, owners as downloads
FROM steam.steam
GROUP BY steamspy_tags
ORDER BY owners DESC
LIMIT 18;

-- Top 10 jogos de multiplayer mais jogados
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%Multiplayer%"
ORDER BY owners DESC
LIMIT 10;


-- Top 10 jogos de terror mais jogados
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%horror%"
ORDER BY owners DESC
LIMIT 10;

-- Top 10 jogos de zumbies mais jogados
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%Zombies%"
ORDER BY owners DESC
LIMIT 10;


-- Top 10 jogos de FPS mais jogados
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%FPS%"
ORDER BY owners DESC
LIMIT 10;

-- Top 10 jogos de ação mais jogados (Sem o sci-fi)
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%Action%" AND steamspy_tags NOT LIKE "%Sci-fi%"
ORDER BY owners
DESC LIMIT 10;

-- Top 10 jogos de Sci-fi mais jogados
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%Sci-fi%"
ORDER BY owners DESC
LIMIT 10;


-- Top 10 jogos de RPG mais jogados
SELECT name, genres, steamspy_tags, owners
FROM steam.steam
WHERE steamspy_tags LIKE "%RPG%"
ORDER BY owners DESC
LIMIT 10;