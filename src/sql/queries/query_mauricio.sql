-- TOP 10 DESENVOLVEDORES COM OS JOGOS MAIS JOGADOS

SELECT 
    developer AS desenvolvedores,
    name AS nome_jogo,
    average_playtime AS tempo_jogado
FROM
    steam
WHERE
    average_playtime > 0
GROUP BY developer
LIMIT 10;	

-- JOGOS CO-OP COM AVALIACOES POSITIVAS MAIORES QUE NEGATIVAS

SELECT 
    steam.name AS jogos_co_op,
    steam.positive_ratings AS avaliacoes_positivas
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.co_op > 0
        AND steam.positive_ratings > steam.negative_ratings
ORDER BY steam.positive_ratings DESC
LIMIT 15;


-- JOGOS SINGLE-PLAYER COM AVALIACOES NEGATIVAS MAIORES QUE POSITIVAS

SELECT 
    steam.name AS jogos_single_player,
    steam.negative_ratings AS avaliacoes_negativas
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.singleplayer > 0
        AND steam.positive_ratings < steam.negative_ratings
ORDER BY steam.negative_ratings DESC
LIMIT 15;

-- JOGOS QUE MAIS ESTAO PRESENTES NOS ESPORTS (ESPORTE ELETRONICO)

SELECT 
    steam.name as jogos_esports,
    steamspy_tag_data.e_sports 
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.e_sports > 0;
