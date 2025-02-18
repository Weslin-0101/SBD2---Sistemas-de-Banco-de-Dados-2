-- ----------------   << Aula 1 Exercicio 2 Evolucao 3 >>   ---------------------------
--
--                    SCRIPT DE CONSULTA (DDL e DML)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 15/11/2024
--   => Correção das consultas, tirando informações desnecessárias e melhorando a eficiência
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
--         => 03 Perfis
--         => 08 Usuários
-- 
-- ------------------------------------------------------------------------

USE aula1exer2Evolucao3;

-- A) Consultar todas as vendas feitas por um empregado específico
SELECT V.idVenda, V.dataVenda
FROM VENDA V
WHERE V.matricula = 4;

-- B) Relacionar dados de uma venda específica com informações dos produtos vendidos e total por item
SELECT C.idVenda, PR.nomeProduto, PR.precoUnitario, C.quantidade,
       (PR.precoUnitario * C.quantidade) AS TotalPorItem
FROM contem C
JOIN PRODUTO PR ON C.idProduto = PR.idProduto
WHERE C.idVenda = 1;

-- C) Mostrar todos os empregados que NÃO sejam gerentes em ordem alfabética crescente do nome
SELECT P.nome, E.*
FROM EMPREGADO E
JOIN PESSOA P ON E.cpf = P.cpf
WHERE E.cpf NOT IN (SELECT cpf FROM GERENTE)
ORDER BY P.nome ASC;

-- D) Criar VIEW com a quantidade de cada produto vendido
CREATE OR REPLACE VIEW VendasPorProduto AS
SELECT C.idProduto, PR.nomeProduto, SUM(C.quantidade) AS TotalQuantidadeVendida
FROM contem C
JOIN PRODUTO PR ON C.idProduto = PR.idProduto
GROUP BY C.idProduto, PR.nomeProduto
ORDER BY PR.nomeProduto ASC;

-- E) Consultar produtos por parte do nome e quantidade de vendas em ordem alfabética decrescente
SELECT PR.idProduto, PR.nomeProduto, count(C.idVenda)
FROM PRODUTO PR
LEFT JOIN contem C ON PR.idProduto = C.idProduto
WHERE PR.nomeProduto LIKE '%a%'
group by PR.idProduto
ORDER BY PR.nomeProduto DESC;

