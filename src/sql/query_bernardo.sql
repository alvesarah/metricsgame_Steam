CREATE DATABASE steam;
USE steam;
SELECT * FROM steam;

-- Top 5 jogos mais populares (Com base no tempo gasto jogando e segundo as avaliações positivas)
SELECT name AS nome_do_jogo, positive_ratings AS avaliações_positivas, average_playtime AS tempo_gasto_jogando FROM steam WHERE positive_ratings > 9000 AND average_playtime > 10000;

-- Quantidade de jogos oferecidos gratuitamente
SELECT name AS nome_do_jogo, price AS preco_do_jogo FROM steam WHERE price = 0.00;

-- Quantidade de jogos comercializados
SELECT name AS nome_do_jogo FROM steam;

-- Jogo mais caro comercializado
SELECT max(price) FROM steam;

-- Quantidade em percentual de jogos disponibilizados gratuitamente em relação ao total de jogos
SELECT ROUND(((SELECT count(price) FROM steam WHERE price like 0) / count(price) * 100), 2) 
AS porcentagem_jogos_gratuitos FROM steam;

-- Jogos que o usuário precisa ter entre 16 e 18 anos para jogar
SELECT name AS nome_do_jogo, required_age AS idade_para_jogar FROM steam WHERE required_age BETWEEN 16 AND 18;



