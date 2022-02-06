-- TOP 10 DESENVOLVEDORES COM JOGOS MAIS BAIXADOS:

SELECT 
    developer, owners
FROM
    steam
ORDER BY developer DESC
LIMIT 10;

-- QUANTOS JOGOS DE FPS SAO EM PRIMEIRA PESSOA:

SELECT 
    COUNT(steam.name) AS qtd_jogos,
    steam.steamspy_tags,
    steamspy_tag_data.first_person
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.first_person > 0
        AND steam.steamspy_tags LIKE '%FPS%';


-- QUAIS JOGOS CO-OP POSSUI AVALIACOES POSITIVAS MAIORES QUE NEGATIVAS:     

SELECT 
    steam.name AS jogos_co_op,
    steamspy_tag_data.co_op,
    steam.positive_ratings
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.co_op > 0
        AND steam.positive_ratings > steam.negative_ratings
ORDER BY steam.positive_ratings DESC;


-- TOP 5 JOGOS SINGLEPLAYERSPOSSUEM AVALIACOES NEGATIVAS MAIORES QUE POSITIVAS:

SELECT 
    steam.name AS jogos_single_player,
    steamspy_tag_data.singleplayer,
    steam.negative_ratings
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.singleplayer > 0
        AND steam.positive_ratings < steam.negative_ratings
ORDER BY steam.negative_ratings DESC
LIMIT 5;


-- QUAIS JOGOS ESTAO INCLUSOS NOS E-SPORTS:

SELECT 
    steam.name AS jogos_esports,
    steamspy_tag_data.e_sports
FROM
    steam
        INNER JOIN
    steamspy_tag_data ON steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.e_sports > 0;