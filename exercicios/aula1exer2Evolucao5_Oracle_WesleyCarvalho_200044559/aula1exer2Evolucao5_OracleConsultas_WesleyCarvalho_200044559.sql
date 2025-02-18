-- ----------------   << Aula 1 Exercicio 2 Evolucao 5 >>   ---------------------------
--
--                    SCRIPT DE CONSULTA (DDL e DML)
-- 
-- Data Criacao ...........: 25/11/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: ORACLE
-- Banco de Dados(nome) ...: VRVR
-- 
-- Data Ultima Alteracao ..:
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
-- 
-- ------------------------------------------------------------------------

-- A) Consultar todas as vendas feitas por um empregado 
--    específico que será definido pelo usuário através 
--    da chave primária do empregado nessa pesquisa
SELECT C.idVenda, V.dataVenda
FROM WLC_CONSTITUI C
JOIN WLC_VENDA V ON C.idVenda = V.idVenda
WHERE V.matricula = 1000000000;

-- B) Relacionar todos os dados de uma venda específica 
--    com todas as informações dos produtos comercializados
--    por esta venda e mostrar o preço total por item da venda
SELECT C.idVenda, C.idProduto, P.nome, V.dataVenda, (P.valorUnitario * C.quantidade) AS precoTotal
FROM WLC_CONSTITUI C
JOIN WLC_VENDA V ON C.idVenda = V.idVenda
JOIN WLC_PRODUTO P ON C.idProduto = P.idProduto
WHERE C.idVenda = 100000;

-- C) Mostrar todos os empregados da empresa que NÃO 
--    sejam gerentes em ordem alfabética crescente do nome do empregado;
SELECT E.matricula, P.nome, P.cpf
FROM WLC_EMPREGADO E
JOIN WLC_PESSOA P ON E.cpf = P.cpf
WHERE E.cpf NOT IN (SELECT cpf FROM WLC_GERENTE)
ORDER BY P.nome;

-- D) Consultar e mostrar a quantidade de CADA produto que foi vendido por 
--    esta empresa (lembrar que só o código do produto NÃO identifica qual
--    produto é para vários funcionários ou usuários finais da empresa, então
--    reflita de quais atributos deverão ser apresentados e em qual sequência
--    (ordenação) para atender o interesse do usuário final em suas atividades
--    diárias com melhor qualidade e eficiência). Esta consulta deverá ser implementada
--    como uma VIEW (visão em SQL) e logo abaixo da VIEW deverá existir o SELECT que aciona esta VIEW
CREATE VIEW VendasPorProduto AS
SELECT
    C.idProduto, C.idVenda, P.nome, V.dataVenda, COUNT(C.idVenda) as quantidadeVendas
FROM
    WLC_CONSTITUI C
LEFT JOIN WLC_PRODUTO P ON C.idProduto = P.idProduto
LEFT JOIN WLC_VENDA V ON C.idVenda = V.idVenda
GROUP BY C.idProduto, C.idVenda, P.nome, V.dataVenda
ORDER BY P.nome;

-- Consulta para buscar as informações da VIEW
SELECT * FROM VendasPorProduto


-- E) Solicitar ao usuário qualquer parte do nome de um produto e apresentar
--    seu código, nome e quantidade de vendas em ordem alfabética do nome do 
--    produto de forma decrescente.
SELECT 
	C.idProduto,
    P.nome, 
    COUNT(C.idProduto) AS quantidadeVendas
FROM
	WLC_CONSTITUI C
JOIN
	WLC_PRODUTO P ON C.idProduto = P.idProduto
WHERE
	P.nome LIKE '%a%'
GROUP BY C.idProduto, P.nome
ORDER BY P.nome DESC;