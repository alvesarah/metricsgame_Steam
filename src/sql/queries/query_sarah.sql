-- QUERY UM
-- Todos os temas de jogos, ordenados por melhores avaliações.
select count(name) as jogos, steamspy_tags as tema, positive_ratings as melhores_avaliacoes
from steam
group by steamspy_tags
order by melhores_avaliacoes desc
limit 15;


-- QUERY DOIS
-- Avaliação de temas mais famosos e o jogo com melhor avaliação entre eles.
-- Top 1 jogo de multiplayer com melhor avaliação
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%Multiplayer%" AND steamspy_tags NOT LIKE "%FPS%"
GROUP BY jogo
ORDER BY melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de FPS com melhor avaliação
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%FPS%"
GROUP BY jogo
ORDER BY melhor_avaliacao DESC
LIMIT 1)

union all

-- Top jogos de ação com melhor avaliação (Sem o sci-fi)
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%Action%" AND steamspy_tags NOT LIKE "%Sci-fi%"
GROUP BY jogo
ORDER BY melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de Sci-fi com melhor avaliação
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%Sci-fi%"
GROUP BY jogo
ORDER BY melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de RPG com melhor avaliação
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%RPG%"
GROUP BY jogo
ORDER BY melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de terror com melhor avaliação
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%horror%"
GROUP BY jogo
ORDER BY melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de zumbies com melhor avaliação
(SELECT name as jogo, steamspy_tags as tema, positive_ratings as melhor_avaliacao
FROM steam
WHERE steamspy_tags LIKE "%Zombies%"
GROUP BY jogo
ORDER BY owners DESC
LIMIT 1);