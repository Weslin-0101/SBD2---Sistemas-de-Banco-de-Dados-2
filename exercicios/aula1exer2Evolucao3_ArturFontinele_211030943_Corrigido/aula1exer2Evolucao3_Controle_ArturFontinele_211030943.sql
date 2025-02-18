-- ----------------   << Aula 1 Exercicio 2 Evolucao 3 >>   ---------------------------
--
--                    SCRIPT DE CONTROLE (DDL e DCL)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 15/11/2024
--   => Remoção do "@localhost" da intrução de criação dos usuarios
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
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

CREATE USER 'admins' IDENTIFIED BY '1admin';
CREATE USER 'anamaria' IDENTIFIED BY '2anam';
CREATE USER 'ruicarlos' IDENTIFIED BY '3ruic';
CREATE USER 'maria' IDENTIFIED BY '4maria';
CREATE USER 'paulo' IDENTIFIED BY '5paulo';
CREATE USER 'jose' IDENTIFIED BY '6jose';
CREATE USER 'giovana' IDENTIFIED BY '7giovana';
CREATE USER 'pedro' IDENTIFIED BY '8pedro';

GRANT 'superior' TO 'admins';
GRANT 'gerente' TO 'anamaria';
GRANT 'gerente' TO 'ruicarlos';
GRANT 'empregado' TO 'maria';
GRANT 'empregado' TO 'paulo';
GRANT 'empregado' TO 'jose';
GRANT 'empregado' TO 'giovana';
GRANT 'empregado' TO 'pedro';

SET DEFAULT ROLE 'superior' TO 'admins';
SET DEFAULT ROLE 'gerente' TO 'anamaria';
SET DEFAULT ROLE 'gerente' TO 'ruicarlos';
SET DEFAULT ROLE 'empregado' TO 'maria';
SET DEFAULT ROLE 'empregado' TO 'paulo';
SET DEFAULT ROLE 'empregado' TO 'jose';
SET DEFAULT ROLE 'empregado' TO 'giovana';
SET DEFAULT ROLE 'empregado' TO 'pedro';

