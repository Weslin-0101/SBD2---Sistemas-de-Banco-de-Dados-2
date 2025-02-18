-- ﻿-------------   << aula13Triggers >>   ---------------
--
--                SCRIPT DE CRIACAO (DDL)
--
-- Data de Criacao ........: 09/03/2020
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySql 8.0
-- Base de Dados (nome) ...: aula13Triggers
--
-- Alteracoes no Script
--   06/06/2020 - ajustes na organizacao do script
--   04/01/2025 => Na tabela tbl_compra foi alterado para que
--                 as colunas cliente_id e produto_id não possam
--                 ser nulos
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 03 Triggers
--
-- -------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE
 IF NOT EXISTS aula13Triggers;

USE aula13Triggers;

-- TABELAS
CREATE TABLE `tbl_cliente` (
   `cliente_id`    INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
   `cliente_nome`  VARCHAR(80)      NOT NULL,
   `cliente_email` VARCHAR(80)      NOT NULL,
   `dt_cadastro`   TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT tbl_cliente_PK PRIMARY KEY (cliente_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_produto` (
   `produto_id`   INT(10)     UNSIGNED NOT NULL AUTO_INCREMENT,
   `produto_nome` VARCHAR(80)          NOT NULL,
  CONSTRAINT tbl_produto_PK PRIMARY KEY (`produto_id`)
) ENGINE=MyISAM  AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_compra` (
   `dt_cadastro` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `cliente_id`  INT(11) NOT NULL,
   `produto_id`  INT(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_newsletter` (
   `news_id`    INT(11)     NOT NULL AUTO_INCREMENT,
   `news_email` VARCHAR(80) NOT NULL,
  CONSTRAINT tbl_newsletter_PK PRIMARY KEY (`news_id`,`news_email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;