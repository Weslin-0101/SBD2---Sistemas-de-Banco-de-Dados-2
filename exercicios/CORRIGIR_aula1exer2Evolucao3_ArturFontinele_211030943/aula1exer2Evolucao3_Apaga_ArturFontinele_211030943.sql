-- ----------------   << Aula 1 Exercicio 2 Evolucao 3 >>   ---------------------------
--
--                    SCRIPT DE APAGA (DDL)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 04/11/2024
--   => 
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

DROP VIEW IF EXISTS VendasPorProduto;

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'admins'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'anamaria'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'ruicarlos'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'maria'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'paulo'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'jose'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'giovana'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'pedro'@'localhost';

DROP USER IF EXISTS 'admins'@'localhost';
DROP USER IF EXISTS 'anamaria'@'localhost';
DROP USER IF EXISTS 'ruicarlos'@'localhost';
DROP USER IF EXISTS 'maria'@'localhost';
DROP USER IF EXISTS 'paulo'@'localhost';
DROP USER IF EXISTS 'jose'@'localhost';
DROP USER IF EXISTS 'giovana'@'localhost';
DROP USER IF EXISTS 'pedro'@'localhost';

DROP ROLE IF EXISTS 'superior';
DROP ROLE IF EXISTS 'gerente';
DROP ROLE IF EXISTS 'empregado';

DROP TABLE contem;
DROP TABLE telefone;
DROP TABLE PRODUTO;
DROP TABLE AREA;
DROP TABLE VENDA;
DROP TABLE EMPREGADO;
DROP TABLE GERENTE;
DROP TABLE PESSOA;
