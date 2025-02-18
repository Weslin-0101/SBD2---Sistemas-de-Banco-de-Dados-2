-- -------- < P1A > --------
--
--                    SCRIPT DE CONSULTA (DDL)
--
-- Data Criacao ...........: 12/01/2025
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: organizacao
--
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
--         => 01 Visoes
-- 
-- Ultimas Alteracoes
--
-- ---------------------------------------------------------

USE organizacao;

-- 3° Questão -> Criação da View
-- Ao fazer do uso do EXPLAIN e do ANALYZE foi possível perceber que
-- a consulta pode ser mas otimizada ainda por conta do Nested Loop Join
-- entre BOLETIM_OCORRENCIA, DELEGACIA e DEPARTAMENTO, além da criação
-- de uma tabela temporária para calcular a agregação.

-- Por conta disso foi necessária a criação de dois indíces: um índice composto
-- na tabela BOLETIM_OCORRENCIA com as colunas idDelegacia e numBO para otimizar
-- o join entre BOLETIM_OCORRENCIA e DELEGACIA, e o filtro por numBO. O outro
-- indíce é para otimizar o JOIN entre DELEGACIA e DEPARTAMENTO.

CREATE INDEX idx_bo_delegacia ON boletim_ocorrencia(idDelegacia, numBO);
CREATE INDEX idx_de_departamento ON delegacia(idDepartamento);

CREATE VIEW P1AT2 AS
SELECT
	D.idDepartamento,
    D.nomeDepartamento,
    DE.idDelegacia,
    DE.nomeSeccional,
    BO.idOcorrencia,
    BO.numBO,
    BO.anoBO
FROM DEPARTAMENTO D
JOIN DELEGACIA DE ON D.idDepartamento = D.idDepartamento
JOIN BOLETIM_OCORRENCIA BO ON DE.idDelegacia = BO.idDelegacia;

-- 4° Questão -> Consulta para retornar os dois resultados de 2015 com
--               39 números de boletins e 2016 com 17 números de boletins

-- A consulta utiliza da função MIN para que possa selecionar um valor
-- representativo de idDelegacia e nomeSeccional sem interferir na contagem
-- total dos boletins.

-- A comparação de antes e depois da criação dos índices o ANALYZE mostrava que o tempo total de execução
-- da consulta era de 42.7ms e caiu para 1.82ms; O custo do Index Range no filtro do "numBo < 10"
-- era de 12.3 e caiu para 6.17; Join com a DELEGACIA tinha custo 73.9 e decaiu para 0.0126; O Nested Loop
-- Join foi substituído por um Inner Hash Join melhorando a combinação de registros de tabelas grandes;

-- Dessa forma, os índices melhoraram a consulta e eliminou a necessidade de varreduras completas.
EXPLAIN
ANALYZE
SELECT
	MIN(idDelegacia) AS idDelegacia,
    MIN(nomeSeccional) AS nomeSeccional,
    anoBO,
    COUNT(numBO) AS totalBO
FROM
	P1AT2
WHERE
	numBO < 10
GROUP BY
    anoBO
ORDER BY
	anoBO;
    
    
-- Para caso quisermos acessar a visão gráfica da nossa consulta, o 
-- Workbench pode nos trazer isso. Basta seguinr esses passos:

-- 1° Escreva somente a consulta sem o uso do EXPLAIN/ANALYZE e
-- selecione a consulta. Depois vá até Query -> Explain Current Statement.
-- Isso era mostrar para nós a visão gráfica da nossa consulta em
-- Plano Visual com um fluxo de operações no formato de representação 
-- gráfica do plano de execução.