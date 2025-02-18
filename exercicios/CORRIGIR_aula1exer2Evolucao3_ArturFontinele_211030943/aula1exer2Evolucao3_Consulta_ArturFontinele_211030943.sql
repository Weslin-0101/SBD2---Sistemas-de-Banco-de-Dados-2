-- ----------------   << Aula 1 Exercicio 2 Extra 1 >>   ---------------------------
--
--                    SCRIPT DE CONSULTA
-- 
-- Data Criacao ...........: 17/11/2024
-- Autor(es) ..............: Wwesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 17/11/2024
--   => Criação script de consulta
--
--   => Alteração na consulta do exercício E aonde em vez de usar a
--      VIEW vendasporproduto na consulta, a gente acaba usando as tabelas
--      contem e PRODUTO para trazer o identificado do produto, nome do produto
--      e a quantidade de vendas.
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
--         => 03 Perfis
--         => 08 Usuários
-- 
-- ------------------------------------------------------------------------

USE aula1exer2Evolucao3;

-- E) Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu 
--    código, nome e quantidade de vendas em ordem alfabética do nome do produto de forma decrescente.

SELECT 
	P.idProduto, P.nomeProduto, count(C.idProduto) as quantidadeVendas
FROM
	contem C
JOIN
	PRODUTO P ON C.idProduto = P.idProduto
WHERE
	P.nomeProduto LIKE '%a%'
GROUP BY C.idProduto
ORDER BY P.nomeProduto DESC;

-- Querie's que comprovam que a consulta acima está correta de acordo com o que pede.
SELECT * FROM contem WHERE idProduto = 5;

-- Em relação se é necessário a criação de um INDICE para melhorar o desempenho da consulta, e a
-- resposta para isso seria "Não!". O motivo é porque que a tabela principal para que possamos
-- utilizar como base e trazer os resultados que queremos já possui os indíces necessários para
-- localizar. Assim já permite um acesso mais direto.