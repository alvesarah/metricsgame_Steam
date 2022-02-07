CREATE DATABASE steam;
USE steam;
SELECT name FROM steam;

ALTER TABLE steam ADD PRIMARY KEY (appid);

-- Top 5 jogos mais populares (Com base no tempo gasto jogando e segundo as avaliações positivas)
SELECT 
    name AS nome_do_jogo,
    positive_ratings AS avaliações_positivas,
    average_playtime AS horas_gastas_jogando
FROM
    steam
WHERE
    positive_ratings > 9000
        AND average_playtime > 10000
LIMIT 5;

-- Jogos que precisam ter idade mínima de 18 anos, do gênero ação e que rodam apenas em windows
SELECT 
    name AS nome_do_jogo,
    required_age AS idade_obrigatória,
    genres AS genero,
    platforms AS sistema_operacional
FROM
    steam
WHERE
    required_age = 18
        AND genres LIKE 'Action'
        AND platforms = 'windows'
ORDER BY name ASC LIMIT 15;

-- Quantidade em percentual de jogos disponibilizados gratuitamente em relação ao total de jogos
SELECT 
    ROUND(((SELECT 
                    COUNT(price)
                FROM
                    steam
                WHERE
                    price = 0) / COUNT(price) * 100),
            2) AS porcentagem_jogos_gratuitos
FROM
    steam; 


