-- -------- < aula1exer2 evolução3 > --------
--
--                    SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 23/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO 	=> 01 Base de Dados
--         	=> 09 Tabelas
-- 			=> 03 Perfis (role)
-- 			=> 08 Usuarios
--
-- Últimas alterações
--          23/10/2024 => Adiciona os perfis e usuários do sistema.
--
--          04/11/2024 => Deixei o script mais organizado na criação e definição
--                        dos objetos e privilégios da base
-- ---------------------------------------------------------

USE aula1exer2evolucao3;

-- Criando os Perfis com os seus privilégios

-- Perfil Superior
CREATE ROLE 'superior';
GRANT ALL PRIVILEGES ON `aula1exer2evolucao3`.* TO 'superior';

-- Perfil Gerente
CREATE ROLE 'gerente';
GRANT SELECT ON `aula1exer2evolucao3`.PESSOA TO 'gerente';
GRANT SELECT ON `aula1exer2evolucao3`.EMPREGADO TO 'gerente';
GRANT SELECT ON `aula1exer2evolucao3`.GERENTE TO 'gerente';

GRANT SELECT, INSERT, UPDATE, DELETE ON `aula1exer2evolucao3`.* TO 'gerente';
REVOKE INSERT, UPDATE, DELETE ON `aula1exer2evolucao3`.PESSOA FROM 'gerente';
REVOKE INSERT, UPDATE, DELETE ON `aula1exer2evolucao3`.EMPREGADO FROM 'gerente';
REVOKE INSERT, UPDATE, DELETE ON `aula1exer2evolucao3`.GERENTE FROM 'gerente';

-- Perfil Empregado;
CREATE ROLE 'empregado';
GRANT SELECT ON `aula1exer2evolucao3`.* TO 'empregado';
GRANT INSERT ON `aula1exer2evolucao3`.VENDA TO 'empregado';
GRANT INSERT ON `aula1exer2evolucao3`.PRODUTO TO 'empregado';



-- Criando os usuários e atribuindo as suas ROLES

-- Usuário com perfil Superior
CREATE USER 'admins'@'localhost' IDENTIFIED BY '1admin';
GRANT 'superior' TO 'admins'@'localhost';

-- Usuários com perfil Gerente
CREATE USER 'anamaria'@'localhost' IDENTIFIED BY '2anam';
CREATE USER 'ruicarlos'@'localhost' IDENTIFIED BY '3ruic';
GRANT 'gerente' TO 'anamaria'@'localhost', 'ruicarlos'@'localhost';

-- Usuários com o perfil Empregado
CREATE USER 'maria'@'localhost' IDENTIFIED BY '4maria';
CREATE USER 'paulo'@'localhost' IDENTIFIED BY '5paulo';
CREATE USER 'jose'@'localhost' IDENTIFIED BY '6jose';
CREATE USER 'giovana'@'localhost' IDENTIFIED BY '7giovana';
CREATE USER 'pedro'@'localhost' IDENTIFIED BY '8pedro';
GRANT 'empregado' TO 'maria'@'localhost', 'paulo'@'localhost', 'jose'@'localhost', 'giovana'@'localhost', 'pedro'@'localhost';