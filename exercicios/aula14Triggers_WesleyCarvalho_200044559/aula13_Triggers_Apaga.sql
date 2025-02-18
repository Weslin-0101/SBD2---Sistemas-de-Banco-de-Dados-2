-- ﻿-------------   << aula13Triggers >>   ---------------
--
--                  SCRIPT APAGA (DML)
--
-- Data de Criacao ........: 09/03/2020
-- Autor(es) ..............: Carlos Veloso Rodrigues
-- Banco de Dados .........: MySql 8.0
-- Base de Dados (nome) ...: aula13Triggers
--
-- Alteracoes no Script
--   06/06/2020 - ajustes na organizacao do script
--   04/01/2025 => adicionado as linhas para apagar as triggers
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 03 Triggers
--
-- -------------------------------------------------------

-- BASE DE DADOS
USE aula13Triggers;


-- TABELAS
DROP TABLE tbl_newsletter;
DROP TABLE tbl_compra;
DROP TABLE tbl_produto;
DROP TABLE tbl_cliente;

-- Triggers
DROP TRIGGER trg_1;
DROP TRIGGER trg_2;
DROP TRIGGER trg_3;
