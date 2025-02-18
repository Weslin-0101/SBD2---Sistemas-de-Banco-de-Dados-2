-- --------     << aula4extra1 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 24/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula4extra1
-- 
-- Data Ultima Alteracao ..: 24/10/2024
--   => Criacao do script implementar
-- 
-- PROJETO => 01 Base de Dados
--         => 2 Tabelas
-- 
-- -----------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS aula4extra1;

USE aula4extra1;

CREATE TABLE ESTADO (
	sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(20) NOT NULL,
    
    CONSTRAINT ESTADO_PK PRIMARY KEY (sigla)
);

CREATE TABLE CIDADE (
	codigo INTEGER(5) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    habitantes INTEGER,
    
    CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
    CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla) REFERENCES ESTADO (sigla),
    CONSTRAINT CIDADE_UK UNIQUE (sigla, nome),
    CONSTRAINT CIDADE_CK CHECK (habitantes > 1000)
);

-- SCRIPT PARA INSERÇÃO DAS TUPLAS NAS TABELAS --------
INSERT INTO ESTADO (sigla, nome) VALUES
('DF', 'Distrito Federal'),
('SP', 'São Paulo'),
('BA', 'Bahia');

INSERT INTO CIDADE(codigo, nome, sigla, habitantes) VALUES
(1, 'Santa Maria', 'DF', 114000),
(2, 'Gama', 'DF', 200000),
(3, 'Guarulhos', 'SP', 200000),
(4, 'Campinas', 'SP', 300000),
(5, 'Salvador', 'BA', 100000),
(6, 'Camaçari', 'BA', 299000),
(7, 'Itacaré', 'BA', 200000);