-- Data Criacao ...........: 05/11/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Matrícula --------------: 200044559
--
-- Nome da base de dados: metacritic
-- Quantidade de tabelas na base de dados: 3
-- Quantidade de tuplas em cada tabela da base de dados:
-- ------------------------------
-- |   TABELA    |    TUPLAS    |
-- | ----------- | ------------ |
-- |   GAME		 |	  12043		|
-- |   GENRE	 |	   12		|
-- |  PUBLISHER	 |	  1696		|
-- ---------------------------------------------------------

-- 1) Restaurar o backup da base de dados:
CREATE DATABASE IF NOT EXISTS metacritic;

USE metacritic;

-- mysql -u root -p metacritic < "C:\Users\wesle\OneDrive\Área de Trabalho\projetoBaseDados_Jogos_2020\projetoBaseDados_Jogos\SqlDump_baseDados_Jogos.sql"

-- 2) Inserir na tabela GAME somente mais 1 tupla nova com o novo jogo sendo War Thunder 
--    com os demais dados somente OBRIGATÓRIOS sendo preenchidos com dados fictícios nesta tabela, 
--    mas respeitando as possíveis regras de negócio existentes e com o gênero devendo ser informado 
--    como de COMBATE (fighting): Inserindo 1 Tupla nova na tabela GAME

INSERT INTO GENRE(description) VALUES ('fighting');

INSERT INTO PUBLISHER(publisher_name) VALUES ('FGA Games');

INSERT INTO GAME (name, id_genre, id_publisher, year_of_release, developer, platform, na_sales, eu_sales, jp_sales, other_sales, critic_score, critic_count, user_score, user_count, rating) 
VALUES ('Baldurs Gate 3', 16, 6142, '2023', 'Larian Studios', 'PC', 100.00, 200.00, 300.00, 600.00, NULL, NULL, NULL, NULL, '4');


-- 3) Comando que faz um novo backup desta base de dados contendo uma nova tupla incluída pela instrução anterior (questão 2):

-- mysqldump -u root -p metacritic > "C:\Users\wesle\OneDrive\Área de Trabalho\projetoBaseDados_Jogos_2020\dump\sql_dump_metacritic.sql"