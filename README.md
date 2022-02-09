<p align="center">
    <img src="./src/assets/logo-animada.gif" width="350" title="hover text">
</p>
<h1 align="center">Metrics Game</h1>

<h4 align="center"> 
	🚧  Metrics Game 🎮📏 Em andamento  🚧
</h4>

## 💻 Sobre o Projeto
Este projeto teve como desafios para nosso grupo:

Análisar banco de dados cedido a partir tema escolhido (<a href="https://store.steampowered.com/app/353380/Steam_Link/">Steam</a>) e a após a análise: criar gráficos que facilitem a visualização de questões criadas e pensadas pelo time, lembrando que esse processo foi concluído exclusivamente de acordo com os dados.

• Soft Skills: Scrum, Kanban e Trello

---
## ⚙️ Funcionalidades
- [x] Os usuários tem acesso ao site por meio do computador, onde podem:
    - [x] Acesso ao jogo com todas as salas e seus respectivos gráficos.
    - [x] Definir o caminho que será seguido durante o jogo.
    - [x] Entrar nas salas onde se encontram os gráficos.
    - [x] Acesso aos gráficos baseando-se no banco de dados do steam.

---

## 🎨 Layout

O layout da aplicação está disponível no Figma:

<a href="https://www.figma.com/file/D41nbP0LDvkQfpi2z7JcjL/Hades-%7C-Barber-Lounge?node-id=1%3A2">
  <img alt="Made by sashamoon and rafaeladns" src="https://img.shields.io/badge/Acessar%20Layout%20-Figma-%2304D361">
</a>

### Web
<!-- PRINT dO SITE NO COMPUTADOR -->
<p align="center" style="display: flex; align-items: flex-start; justify-content: center;">
  <img alt="" title="#" src="" width="400px">

  <img alt="" title="#" src="" width="400px">
</p>

---

## 🚀 Como executar o projeto

### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com). 
Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)

#### 🧭 Rodando a aplicação web (Frontend)

```bash

# Clone este repositório
$ git clone https://github.com/alvesarah/metricsgame_Steam.git

# Acesse a pasta do projeto no seu terminal/cmd
$ cd metricsgame_Steam

# Abrir projeto no vscode
$ code .

# A aplicação será aberta na porta:3000 - acesse http://localhost:3000

```
---
## 🛠 Tecnologias

Utilizamos um banco de dados sql para carregar os dados fornecidos em um documento csv e a partir dele montamos as query utilizando o MySQL Workbench, depois carregamos as query no PowerBI fornecido pela Resilia.

As seguintes ferramentas foram usadas na construção do projeto:
#### **Website**

-   HTML 5
-   CSS 3
-   **[JavaScript](https://www.javascript.com/)**

#### **Banco de dados e gráficos**
- MySQL
- Workbench
- PowerBI

#### **Utilitários**

-   Protótipo:  **[Figma](https://www.figma.com/)**  →  **[Protótipo (Metrics Game)](https://www.figma.com/file/U7q60nvZTSnQifSkoHPq8h/Layout-Jogo-Metrics-Game?node-id=0%3A1)**
-   Editor:  **[Visual Studio Code](https://code.visualstudio.com/)**
-   Markdown:  **[StackEdit](https://stackedit.io/)**,  **[Markdown Emoji](https://gist.github.com/rxaviers/7360908)**
-   Ícones:  **[Feather Icons](https://feathericons.com/)**,  **[Font Awesome](https://fontawesome.com/)**
-   Fontes:  **[VT323](https://fonts.google.com/specimen/VT323?query=vt)**

---

## 📋 Sprints
<img src="https://media.discordapp.net/attachments/940805763398516826/940807113171685406/fcd187a8-9104-43ae-a30f-bd518628a510.png?width=967&height=452" width="350" title="hover text">
<img src="https://media.discordapp.net/attachments/940805763398516826/940807166246387722/9aba9079-8ffa-40c5-be4b-818fd4ac649b.png?width=973&height=452" width="350" title="hover text">
<img src="https://media.discordapp.net/attachments/940805763398516826/940807324820463696/41df08ef-3726-4ae1-87c9-b769f460b8b7.png?width=680&height=452" width="350" title="hover text">
<img src="https://media.discordapp.net/attachments/940805763398516826/940807409486688326/91248cb0-e07d-4202-b4b0-addd285f38f1.png?width=770&height=452" width="350" title="hover text">
<img src="https://media.discordapp.net/attachments/940805763398516826/940807546460061766/896c703b-1ebd-4dce-b11a-ade7fba99fba.png?width=826&height=452" width="350" title="hover text">
<img src="https://media.discordapp.net/attachments/940805763398516826/940807768313569361/unknown.png?width=827&height=452" width="350" title="hover text">
<img src="https://media.discordapp.net/attachments/940805763398516826/940809559319122011/unknown.png?width=824&height=452" width="350" title="hover text">
---
## ❓ Perguntas
### Pergunta 1 

- Top 5 jogos mais populares (Com base no tempo gasto jogando e segundo as avaliações positivas)

```sql
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
```
![image](https://media.discordapp.net/attachments/939971983536439368/940449470611587113/Top_5_jogos_mais_populares_Com_base_no_tempo_gasto_jogando_e_segundo_as_avaliacoes_positivas_page-0001.jpg?width=781&height=452)

### Pergunta 2

- Jogos que precisam ter idade mínima de 18 anos, do gênero ação e que rodam apenas em windows

```sql
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
ORDER BY 
    name ASC 
LIMIT 15;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940449684793729065/jogos_18.png?width=783&height=452)

### Pergunta 3

- Quantidade em percentual de jogos disponibilizados gratuitamente em relação ao total de jogos

```sql
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
```
![image](https://media.discordapp.net/attachments/939971983536439368/940449623825350738/Porcentagem_jogos_gratuitos.png?width=781&height=452)

### Pergunta 4

- Quais os 5 setups para os jogos mais bem avaliados da steam?

```sql
SELECT 
    srd.steam_appid, 
    s.positive_ratings as avaliacoes_positivas, 
    s.name as jogos, 
    srd.minimum as setup
FROM 
    steam AS s
INNER JOIN 
    steam_requirements_data as srd
ON 
    srd.steam_appid = s.appid
ORDER BY 
    s.positive_ratings DESC
LIMIT 5;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940787136867729478/setup_dos_jogos_com_melhor_rating_1.jpg)

### Pergunta 5

- Quais os 5 setups para os jogos mais jogados da steam?

```sql
SELECT  s.appid, 
        s.owners as quantidade_de_downloads,
        s.name as jogos, 
        srd.minimum as setup 
FROM 
    steam AS s
INNER JOIN 
    steam_requirements_data as srd
ON 
    srd.steam_appid = s.appid
ORDER BY 
    s.owners DESC
LIMIT 5;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940415442177130516/GRAFICO_QTD_DOWNLOADS_E_SETUPS_BRUNO_page-0001.jpg?width=781&height=452)

### Pergunta 6

- Quais os 3 setups dos jogos mais jogados da categoria multi-player?

```sql
SELECT srd.steam_appid, 
       s.name, 
       s.average_playtime,
       srd.minimum, 
       s.categories
FROM 
    steam AS s
INNER JOIN 
    steam_requirements_data as srd
ON 
    srd.steam_appid = s.appid
WHERE 
    categories LIKE 'Multi-player'
ORDER BY 
    average_playtime DESC
LIMIT 3;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940415442906914886/SETUPS_DOS_JOGOS_MULTI-PLAYERSBRUNO_page-0001.jpg?width=781&height=452)

### Pergunta 7

- Top 10 desenvolvedores com jogos mais jogados

```sql
SELECT 
    developer AS desenvolvedores,
    name AS nome_jogo,
    average_playtime AS tempo_jogado
FROM
    steam
WHERE
    average_playtime > 0
GROUP BY 
    developer
LIMIT 10;	
```
![image](https://media.discordapp.net/attachments/939971983536439368/940788537681412166/grafico_developers_jogos_mais_jogados_1_page-0001.jpg?width=781&height=452)

### Pergunta 8

- Jogos co-op com avaliações positivas maiores que negativas

```sql
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
ORDER BY 
    steam.positive_ratings DESC
LIMIT 15;

```
![image](https://media.discordapp.net/attachments/939971983536439368/940788538373451776/query_jogos_cop_avaliacoes_positivas_maiores_que_negativas_1_page-0001.jpg?width=781&height=452)

### Pergunta 9

- Jogos single-player com avaliações negativas maiores que positivas

```sql
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
ORDER BY 
    steam.negative_ratings DESC
LIMIT 15;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940788538847420436/query_jogos_single-player_avaliacoes_negativa_maiores_que_positivas_1_page-0001.jpg?width=781&height=452)

### Pergunta 10

- Jogos que mais estão presentes nos e-sports(esporte eletrônico)

```sql
SELECT 
    steam.name as jogos_esports,
    steamspy_tag_data.e_sports 
FROM
    steam
INNER JOIN
    steamspy_tag_data 
ON 
    steam.appid = steamspy_tag_data.appid
WHERE
    steamspy_tag_data.e_sports > 0;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940788538033709137/grafico_jogos_esports_2_page-0001.jpg?width=781&height=452)

### Pergunta 11

- 10 jogos de ação recomendados para 18 anos com melhor avaliação

```sql
SELECT 
    name,
    positive_ratings, 
    required_age, 
    genres
FROM 
    steam
WHERE 
    required_age >= 18 
    AND genres = 'Action'
ORDER BY 
    positive_ratings DESC
LIMIT 10;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940450880031957043/graficoAvaliacaoPositiva.png?width=783&height=452)

### Pergunta 12

- 10 Jogos mais baratos com avaliações mais positivas

```sql
SELECT 
    name, 
    price, 
    positive_ratings 
FROM 
    steam 
WHERE 
    price > 0
ORDER BY 
    price, 
    positive_ratings DESC 
LIMIT 10;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940451226326278175/jogosbaratosavaliacaopositiva.png?width=755&height=452)

### Pergunta 13

- Jogos multi-player desenvolvidos pela Valve com maiores avaliações

```sql
SELECT 
    developer, 
    name, 
    categories, 
    positive_ratings
FROM 
    steam
WHERE 
    categories NOT LIKE '%Single-player%'
    AND categories LIKE '%Multi-Player%'
    AND price = 0
    AND developer LIKE '%Valve%'
ORDER BY 
    positive_ratings DESC;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940473374981898290/jogosgratisvalve.png?width=784&height=452)

### Pergunta 14

- Todos os temas de jogos, ordenados por melhores avaliações

```sql
SELECT 
    count(name) as jogos, 
    steamspy_tags as tema, 
    positive_ratings as melhores_avaliacoes
FROM 
    steam
GROUP BY 
    steamspy_tags
ORDER BY 
    melhores_avaliacoes desc
LIMIT 15;
```
![image](https://media.discordapp.net/attachments/939971983536439368/940550926127738890/todos_os_temas_de_jogos__ordenados_por_melhores_avaliacoes.jpg?width=781&height=452)

### Pergunta 15

- Avaliação de temas mais famosos e o jogo com melhor avaliação entre eles

```sql
(SELECT 
    name as jogo, 
    steamspy_tags as tema, 
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%Multiplayer%" 
    AND steamspy_tags NOT LIKE "%FPS%"
GROUP BY 
    jogo
ORDER BY 
    melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de FPS com melhor avaliação
(SELECT 
    name as jogo, 
    steamspy_tags as tema, 
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%FPS%"
GROUP BY 
    jogo
ORDER BY 
    melhor_avaliacao DESC
LIMIT 1)

union all

-- Top jogos de ação com melhor avaliação (Sem o sci-fi)
(SELECT 
    name as jogo, 
    steamspy_tags as tema, 
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%Action%" 
    AND steamspy_tags NOT LIKE "%Sci-fi%"
GROUP BY 
    jogo
ORDER BY 
    melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de Sci-fi com melhor avaliação
(SELECT 
    name as jogo, 
    steamspy_tags as tema, 
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%Sci-fi%"
GROUP BY 
    jogo
ORDER BY 
    melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de RPG com melhor avaliação
(SELECT 
    name as jogo,
    steamspy_tags as tema,
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%RPG%"
GROUP BY 
    jogo
ORDER BY 
    melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de terror com melhor avaliação
(SELECT 
    name as jogo,
    steamspy_tags as tema,
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%horror%"
GROUP BY 
    jogo
ORDER BY 
    melhor_avaliacao DESC
LIMIT 1)

union all

-- Top 1 jogos de zumbies com melhor avaliação
(SELECT 
    name as jogo, 
    steamspy_tags as tema, 
    positive_ratings as melhor_avaliacao
FROM 
    steam
WHERE 
    steamspy_tags LIKE "%Zombies%"
GROUP BY 
    jogo
ORDER BY 
    owners DESC
LIMIT 1);
```
![image](https://media.discordapp.net/attachments/939971983536439368/940550925720903700/avaliacao_de_temas_mais_famosos_e_o_jogo_com_melhor_avaliacao_entre_eles.png?width=803&height=452)

## 🦸 Autores

<table>
<tr>
<td>
<a href="https://github.com/sashamoon">
    <img style="border-radius: 50%;" src="./src/assets/integrantes/bernardo-moura.jpg" width="100px;" alt="">
    <br>
    <sub><b>Bernardo Moura</b></sub>
</a> 
<a href="https://github.com/bernardobdr">🐻</a>
<br>

[![Linkedin Badge](https://img.shields.io/badge/-Bernardo-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/bernardomoura/)](https://www.linkedin.com/in/bernardomoura/) 
[![Gmail Badge](https://img.shields.io/badge/-rafaeladiasneves95@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:rafaeladiasneves95@gmail.com)](mailto:rafaeladiasneves95@gmail.com)

</td>
<td>
<p><stong>Experiência: Esse projeto foi desafiador desde o início, contudo o grupo se organizou e separou com clareza todos os tópicos que deveriam ter mais atenção, e nas dailys as falhas eram corrigidas de acordo com o decorrer do projeto. Além disso, sempre mantivemos os membros atualizados quando não podiam participar das reuniões. Assim sendo, foi uma experiência que me fez crescer e desenvolver bastante ao trabalhar em grupo.</stong></p>
</td>
</tr>
</table>

<br>

<table>
<tr>
<td>
<a href="https://github.com/sashamoon">
    <img style="border-radius: 50%;" src="./src/assets/integrantes/bruno-santana-de-sa.jpg" width="100px;" alt="">
    <br>
    <sub><b>Bruno Santana de Sá</b></sub>
</a> 
<a href="https://github.com/brunosa91">🙈</a>
<br>

[![Linkedin Badge](https://img.shields.io/badge/-Bruno-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/brunoasantanadesa/)](https://www.linkedin.com/in/brunoasantanadesa/) 
[![Gmail Badge](https://img.shields.io/badge/-rafaeladiasneves95@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:rafaeladiasneves95@gmail.com)](mailto:rafaeladiasneves95@gmail.com)

</td>
<td>
<p><stong>Experiência:</stong></p>
</td>
</tr>
</table>

<br>

<table>
<tr>
<td>
<a href="https://github.com/sashamoon">
    <img style="border-radius: 50%;" src="./src/assets/integrantes/mauricio-oliveira.jpg" width="100px;" alt="">
    <br>
    <sub><b>Mauricio Oliveira</b></sub>
</a> 
<a href="https://github.com/Mauriciiow">🐭</a>
<br>

[![Linkedin Badge](https://img.shields.io/badge/-Mauricio-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/mauricio-oliveira-vila-nova-86922b214/)](https://www.linkedin.com/in/mauricio-oliveira-vila-nova-86922b214/) 
[![Gmail Badge](https://img.shields.io/badge/-rafaeladiasneves95@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:rafaeladiasneves95@gmail.com)](mailto:rafaeladiasneves95@gmail.com)

</td>
<td>
<p><stong>Experiência:</stong></p>
</td>
</tr>
</table>

<br>

<table>
<tr>
<td>
<a href="https://github.com/sashamoon">
    <img style="border-radius: 50%;" src="./src/assets/integrantes/rafaela-dias.jpeg" width="100px;" alt="">
    <br>
    <sub><b>Rafaela Dias</b></sub>
</a> 
<a href="https://github.com/rafaeladns">👽</a>
<br>

[![Linkedin Badge](https://img.shields.io/badge/-Rafaela-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rafaela-sousa-8305a7224/)](https://www.linkedin.com/in/rafaela-sousa-8305a7224/) 
[![Gmail Badge](https://img.shields.io/badge/-rafaeladiasneves95@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:rafaeladiasneves95@gmail.com)](mailto:rafaeladiasneves95@gmail.com)

</td>
<td>
<p><stong>Experiência: Foi uma experiência muito desafiadora mas com ela eu pude me desenvolver melhor trabalhando em equipe e usando novas ferramentas onde eu nunca tinha tido um contato prévio. 
Tiveram momentos em que eu me senti insegura mas ao ver todos os integrantes do meu grupo e eu trabalhando em equipe e um ajudando o outro fui me sentindo mais segura. 
Em relação as ferramentas utilizadas eu tive uma familiaridade com o MySQL, gostei de ter aprendido a mexer nessa ferramenta e gostei muito dos resultados que eu e meu grupo obtivemos. 
Além disso pude aprimorar as minhas softskills.</stong></p>
</td>
</tr>
</table>

<br>

<table>
<tr>
<td>
<a href="https://github.com/sashamoon">
    <img style="border-radius: 50%;" src="./src/assets/integrantes/sarah-alves.jpg" width="100px;" alt="">
    <br>
    <sub><b>Sarah Alves</b></sub>
</a>
<a href="https://github.com/sashamoon">🦕</a>
<br>

[![Linkedin Badge](https://img.shields.io/badge/-Sarah-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/sarahalvesoliveira/)](https://www.linkedin.com/in/sarahalvesoliveira/) 
[![Gmail Badge](https://img.shields.io/badge/-salves726@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:salves726@gmail.com)](mailto:salves726@gmail.com)

</td>
<td>
<p><stong>Experiência:</stong></p>
</td>
</tr>
</table>

<br>

---

## 📝 Licença

Este projeto esta sobe a licença [MIT](./LICENSE).

Feito com ❤️ por Bernardo Moura, Bruno Santana de Sá, Mauricio Oliveira, Rafaela Dias e Sarah Alves 👋🏽

---