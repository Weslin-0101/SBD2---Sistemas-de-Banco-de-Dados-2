-- ----------------   << Aula 1 Exercicio 2 Evolucao 3 >>   ---------------------------
--
--                    SCRIPT DE APAGA (DDL)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 15/11/2024
--   => Remoção dos Revokes dos privilégios, já que dropar o usuário já resolve.
--
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
--         => 03 Perfis
--         => 08 Usuários
-- 
-- ------------------------------------------------------------------------

USE aula1exer2Evolucao3;

DROP VIEW VendasPorProduto;

DROP USER 'admins';
DROP USER 'anamaria';
DROP USER 'ruicarlos';
DROP USER 'maria';
DROP USER 'paulo';
DROP USER 'jose';
DROP USER 'giovana';
DROP USER 'pedro';

DROP ROLE 'superior';
DROP ROLE 'gerente';
DROP ROLE 'empregado';

DROP TABLE contem;
DROP TABLE telefone;
DROP TABLE PRODUTO;
DROP TABLE AREA;
DROP TABLE VENDA;
DROP TABLE EMPREGADO;
DROP TABLE GERENTE;
DROP TABLE PESSOA;
