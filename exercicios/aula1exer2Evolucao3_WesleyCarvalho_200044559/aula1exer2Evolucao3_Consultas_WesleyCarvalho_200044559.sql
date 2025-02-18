--  << aula1exer2 evolução3 >>
--
--                    SCRIPT DE CONSULTA (DDL)
--
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 01 Visoes

-- 
-- Ultimas Alteracoes
--   04/11/2024 => Criação do script de consulta
-- ---------------------------------------------------------

USE aula1exer2evolucao3;

-- Consultas:

-- A) Consultar todas as vendas feitas por um empregado específico que será definido
--    pelo usuário através da chave primária do empregado nessa pesquisa 
--    (usuário definirá um empregado específico na consulta);

SELECT p.nomeProduto, v.cpfPessoa from PRODUTO P
JOIN participa pa on p.codigoProduto = pa.codigoProduto
JOIN VENDA v on v.codigoVenda = pa.codigoVenda
WHERE v.matricula = 1;

-- B) Relacionar todos os dados de uma venda específica
--    com todas as informações dos produtos comercializados
--    por esta venda e mostrar o preço total por item da venda 
--    (usuário definirá uma venda específica na consulta);  

SELECT 
	p.nomeProduto, 
    p.descricaoProduto, 
    p.precoUnitario, 
    v.matricula,
    v.cpfPessoa,
    v.dtVenda,
    pa.quantidade,
    (pa.quantidade * p.precoUnitario) as valorTotal
FROM PRODUTO p
JOIN participa pa on p.codigoProduto = pa.codigoProduto
JOIN VENDA v on v.codigoVenda = pa.codigoVenda
WHERE p.nomeProduto = 'Caneta BIC';


-- C) Mostrar todos os empregados da empresa que NÃO sejam 
--    gerentes em ordem alfabética crescente do nome do empregado;

SELECT * FROM PESSOA p
JOIN EMPREGADO e on p.cpfPessoa = e.cpfPessoa
WHERE p.cpfPessoa NOT IN (SELECT cpfPessoa from GERENTE)
ORDER BY p.nomePessoa ASC;

-- D) Consultar e mostrar a quantidade de CADA produto que foi vendido por esta empresa 
--   (lembrar que só o código do produto NÃO identifica qual produto é para vários funcionários 
--   ou usuários finais da empresa, então reflita de quais atributos deverão ser apresentados e 
--   em qual sequência (ordenação) para atender o interesse do usuário final em suas atividades 
--   diárias com melhor qualidade e eficiência). **Esta consulta deverá ser implementada como uma
--   VIEW** (visão em SQL);

CREATE VIEW VendasPorProduto AS
SELECT
	p.codigoProduto,
    p.nomeProduto,
    p.descricaoProduto,
    SUM(pa.quantidade) as quantidadeVendida
FROM PRODUTO P
JOIN participa pa on p.codigoProduto = pa.codigoProduto
JOIN VENDA v on pa.codigoVenda = v.codigoVenda
GROUP BY p.codigoProduto, p.nomeProduto, p.descricaoProduto
ORDER BY quantidadeVendida DESC, p.nomeProduto ASC;

SELECT * FROM VendasPorProduto;


-- E) Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu código, nome e 
--    quantidade de vendas em ordem alfabética do nome do produto de forma **decrescente**.

SELECT 
	p.codigoProduto, 
    p.nomeProduto, 
    SUM(pa.quantidade) as quantidadeVendas
FROM PRODUTO P
JOIN participa pa on p.codigoProduto = pa.codigoProduto
JOIN VENDA v on v.codigoVenda = pa.codigoVenda
WHERE p.nomeProduto LIKE CONCAT('%', 'BIC', '%') -- Dentro das aspas simples é onde vai poder adicionar o nome de qualquer parte do produto.
GROUP BY p.codigoProduto, p.nomeProduto
ORDER BY p.nomeProduto DESC;