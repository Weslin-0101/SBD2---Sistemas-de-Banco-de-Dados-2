-- ----------------   << Aula 1 Exercicio 2 Evolucao 3 >>   ---------------------------
--
--                    SCRIPT DE CONTROLE (DDL e DCL)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 04/11/2024
--   => Criação script de controle
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 03 Perfis
--         => 08 Usuários
-- 
-- ------------------------------------------------------------------------

USE aula1exer2Evolucao3;

CREATE ROLE 'empregado';
CREATE ROLE 'gerente';
CREATE ROLE 'superior';

GRANT SELECT ON aula1exer2Evolucao3.* TO 'empregado';
GRANT INSERT ON aula1exer2Evolucao3.VENDA TO 'empregado';
GRANT INSERT ON aula1exer2Evolucao3.contem TO 'empregado';

GRANT SELECT ON aula1exer2Evolucao3.* TO 'gerente';
GRANT INSERT, UPDATE, DELETE ON aula1exer2Evolucao3.VENDA TO 'gerente';
GRANT INSERT, UPDATE, DELETE ON aula1exer2Evolucao3.AREA TO 'gerente';
GRANT INSERT, UPDATE, DELETE ON aula1exer2Evolucao3.PRODUTO TO 'gerente';
GRANT INSERT, UPDATE, DELETE ON aula1exer2Evolucao3.telefone TO 'gerente';
GRANT INSERT, UPDATE, DELETE ON aula1exer2Evolucao3.contem TO 'gerente';

GRANT ALL PRIVILEGES ON aula1exer2Evolucao3.* TO 'superior' WITH GRANT OPTION;

CREATE USER 'admins'@'localhost' IDENTIFIED BY '1admin';
CREATE USER 'anamaria'@'localhost' IDENTIFIED BY '2anam';
CREATE USER 'ruicarlos'@'localhost' IDENTIFIED BY '3ruic';
CREATE USER 'maria'@'localhost' IDENTIFIED BY '4maria';
CREATE USER 'paulo'@'localhost' IDENTIFIED BY '5paulo';
CREATE USER 'jose'@'localhost' IDENTIFIED BY '6jose';
CREATE USER 'giovana'@'localhost' IDENTIFIED BY '7giovana';
CREATE USER 'pedro'@'localhost' IDENTIFIED BY '8pedro';

GRANT 'superior' TO 'admins'@'localhost';
GRANT 'gerente' TO 'anamaria'@'localhost';
GRANT 'gerente' TO 'ruicarlos'@'localhost';
GRANT 'empregado' TO 'maria'@'localhost';
GRANT 'empregado' TO 'paulo'@'localhost';
GRANT 'empregado' TO 'jose'@'localhost';
GRANT 'empregado' TO 'giovana'@'localhost';
GRANT 'empregado' TO 'pedro'@'localhost';

SET DEFAULT ROLE 'superior' TO 'admins'@'localhost';
SET DEFAULT ROLE 'gerente' TO 'anamaria'@'localhost';
SET DEFAULT ROLE 'gerente' TO 'ruicarlos'@'localhost';
SET DEFAULT ROLE 'empregado' TO 'maria'@'localhost';
SET DEFAULT ROLE 'empregado' TO 'paulo'@'localhost';
SET DEFAULT ROLE 'empregado' TO 'jose'@'localhost';
SET DEFAULT ROLE 'empregado' TO 'giovana'@'localhost';
SET DEFAULT ROLE 'empregado' TO 'pedro'@'localhost';

