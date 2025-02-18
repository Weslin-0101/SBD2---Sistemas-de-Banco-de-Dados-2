-- ------------------ < aula1exer2Evolucao5_Oracle > ------------------------------------
--
--                      SCRIPT APAGA (DDL)
--
-- Data Criacao ...........: 17/10/2024
-- Autor(es) ..............: Marina Márcia Costa de Souza
--                           Mylena Angélica Silva Farias
--                           Bruno Martins Valério Bomfim
--                           Levi de Oliveira Queiroz
-- Banco de Dados .........: Oracle APEX
-- Base de Dados (nome) ...: vrvr
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 05 Sequencias
--         => 01 Visao
--
-- Ultimas Alteracoes
-- 28/10/2023 => Adiciona a remocao da nova tabela area;
-- 				 Adiciona a remocao das roles e dos usuários.
-- 04/11/2024 => Mudança no nome da base de dados para aula1exer2evolucao3
-- 16/11/2024 => 
--          - Adição da quantidade de view;  
--          - Adição da deleção de view;
--          - Adição nos comandos o IF EXISTS;
-- 18/11/2024 =>
--          - Adaptação do script de MySQL para Oracle
--          - Remove drops desnecessários (roles e users)
-- 21/11/2024 => 
--          - Ajustando script para ser cooperativo com todos envolvidos no projeto
-- 25/11/2024 => 
--          - Ajustando script para ter assinatura.
-- 26/11/2024 => 
--          - Correcao da documentacao do projeto que tem 1 view.
--          - Remocao da view exigida neste script.
-- 
-- --------------------------------------------------------------------------

-- VISOES
DROP VIEW  VRVR2_V_QTDE_PRODUTO_VENDIDO;


-- TABELAS
DROP TABLE VRVR2_possui;
DROP TABLE VRVR2_telefone;
DROP TABLE VRVR2_VENDA;
DROP TABLE VRVR2_PRODUTO;
DROP TABLE VRVR2_AREA;
DROP TABLE VRVR2_GERENTE;
DROP TABLE VRVR2_EMPREGADO;
DROP TABLE VRVR2_PESSOA;


-- SEQUENCIAS
DROP SEQUENCE VRVR2_SEQ_GERENTE;
DROP SEQUENCE VRVR2_SEQ_AREA;
DROP SEQUENCE VRVR2_SEQ_VENDA;
DROP SEQUENCE VRVR2_SEQ_PRODUTO;
DROP SEQUENCE VRVR2_SEQ_EMPREGADO;