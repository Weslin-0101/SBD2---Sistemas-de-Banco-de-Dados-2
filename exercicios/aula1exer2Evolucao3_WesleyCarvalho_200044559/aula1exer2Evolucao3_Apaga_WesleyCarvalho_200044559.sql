-- << aula1exer2 evolução3>>
-- 
-- 			SCRIPT DE APAGA (DDL)
--
-- Data Criacao ...........: 23/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 01 Visão
--         => 09 tabelas
--         => 03 Perfis (role)
--         => 08 Usuarios
-- 
-- Ultimas Alteracoes
--   23/10/2024 => Correções levantadas pelo professor para a evolução 2, como: 
--                 remoção da entidade associativa em substituição para dois novos relacionamentos,
--                 remoção da entidade de formação escolar, correção das chaves estrangeiras e correções
--                 nos scripts.
--
--   23/10/2024 => Correções levantadas pelo professor para a evolução 2, como: 
--                 remoção da entidade associativa em substituição para dois novos relacionamentos,
--                 remoção da entidade de formação escolar, correção das chaves estrangeiras e correções
--                 nos scripts.
--
--   03/11/2024 => Adicionando o comando para dropar a mais nova tabela gerencia
--              => Adicionando os comandos para também remover os cargos e perfis da base de dados
-- ---------------------------------------------------------

USE aula1exer2evolucao3;

-- Apagar as tabelas
DROP TABLE participa;
DROP TABLE VENDA;
DROP TABLE PRODUTO;
DROP TABLE telefone;
DROP TABLE EMPREGADO;
DROP TABLE gerencia;
DROP TABLE AREA;
DROP TABLE GERENTE;
DROP TABLE PESSOA;

-- Apagar a VIEW que foi criada na consulta
DROP VIEW VendasPorProduto;

-- Revogando os privilégios
REVOKE 'superior' FROM 'admins'@'localhost';
REVOKE 'gerente' FROM 'anamaria'@'localhost', 'ruicarlos'@'localhost';
REVOKE 'empregado' FROM 'maria'@'localhost', 'paulo'@'localhost', 'jose'@'localhost', 'giovana'@'localhost', 'pedro'@'localhost';

-- Dropando os usuários
DROP USER 'admins'@'localhost';
DROP USER 'anamaria'@'localhost';
DROP USER 'ruicarlos'@'localhost';
DROP USER 'maria'@'localhost';
DROP USER 'paulo'@'localhost';
DROP USER 'jose'@'localhost';
DROP USER 'giovana'@'localhost';
DROP USER 'pedro'@'localhost';

-- Apagando as roles
DROP ROLE 'superior';
DROP ROLE 'gerente';
DROP ROLE 'empregado';