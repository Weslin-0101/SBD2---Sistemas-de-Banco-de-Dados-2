-- ----------------   << Aula 1 Exercicio 2 Evolucao 3 >>   ----------------
--
--                    SCRIPT DE CRIAÇÃO (DDL)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 15/11/2024
--     => Adição do ON DELETE CASCADE para garantir integridade referencial
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
--         => 03 Perfis
--         => 08 Usuários
-- 
-- -------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2Evolucao3;
USE aula1exer2Evolucao3;

CREATE TABLE PESSOA (
    cpf BIGINT(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(30) NOT NULL,

    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE = InnoDB;

CREATE TABLE GERENTE (
    idGerente INT(5) AUTO_INCREMENT NOT NULL,
    formacao VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cpf BIGINT(11) NOT NULL,

    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE EMPREGADO (
    matricula INT(5) AUTO_INCREMENT NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero INT(5) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep INT(8) NOT NULL,
    cpf BIGINT(11) NOT NULL,

    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE VENDA (
    idVenda INT(5) AUTO_INCREMENT NOT NULL,
    dataVenda DATETIME NOT NULL,
    matricula INT(5) NOT NULL,

    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AREA (
    idArea INT(5) AUTO_INCREMENT NOT NULL,
    nomeArea VARCHAR(50) NOT NULL,
    idGerente INT(5) NOT NULL,

    CONSTRAINT AREA_PK PRIMARY KEY (idArea),
    CONSTRAINT AREA_GERENTE_FK FOREIGN KEY (idGerente) REFERENCES GERENTE (idGerente) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    idProduto INT(5) AUTO_INCREMENT NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
    precoUnitario DECIMAL(7,2) NOT NULL,
    idArea INT(5) NOT NULL,

    CONSTRAINT PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea) REFERENCES AREA (idArea) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE telefone (
    matricula INT(5) NOT NULL,
    telefone BIGINT(13) NOT NULL,

    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula) ON DELETE CASCADE,
    CONSTRAINT telefone_UK UNIQUE (matricula, telefone)
) ENGINE = InnoDB;

CREATE TABLE contem (
    idVenda INT(5) NOT NULL,
    idProduto INT(5) NOT NULL,
    quantidade INT(3) NOT NULL,

    CONSTRAINT contem_VENDA_FK FOREIGN KEY (idVenda) REFERENCES VENDA (idVenda) ON DELETE CASCADE,
    CONSTRAINT contem_PRODUTO_FK FOREIGN KEY (idProduto) REFERENCES PRODUTO (idProduto) ON DELETE CASCADE
) ENGINE = InnoDB;

