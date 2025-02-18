-- ----------------   << Aula 1 Exercicio 2 Evolucao 4 >>   ----------------
--
--                    SCRIPT DE CRIAÇÃO (DDL)
-- 
-- Data Criacao ...........: 20/11/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: ORACLE APEX
-- Banco de Dados(nome) ...: VRVR
-- 
-- Data Ultima Alteracao ..: 15/11/2024
--     => Adição do ON DELETE CASCADE para garantir integridade referencial
--
--     20/11/2024
--     => Modificação no Script Físico para que possa respeitar
--        a lógica de criação das tabelas e as suas restrições fundamentais
--        das tabelas no ORACLE APEX 
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -------------------------------------------------------------------

CREATE SEQUENCE WLC_GERENTE_SEQ
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE WLC_EMPREGADO_SEQ
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE WLC_VENDA_SEQ
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE WLC_AREA_SEQ
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE WLC_PRODUTO_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE WLC_PESSOA (
    cpf NUMBER NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(30) NOT NULL,

    CONSTRAINT WLC_PESSOA_PK PRIMARY KEY (cpf)
);

CREATE TABLE WLC_GERENTE (
    idGerente NUMBER NOT NULL,
    formacao VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cpf NUMBER NOT NULL,

    CONSTRAINT WLC_GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT WLC_GERENTE_PESSOA_FK FOREIGN KEY (cpf) REFERENCES WLC_PESSOA (cpf) ON DELETE CASCADE
);

CREATE TABLE WLC_EMPREGADO (
    matricula NUMBER NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero NUMBER NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep NUMBER NOT NULL,
    cpf NUMBER NOT NULL,

    CONSTRAINT WLC_EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT WLC_EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) REFERENCES WLC_PESSOA (cpf) ON DELETE CASCADE
);

CREATE TABLE WLC_VENDA (
    idVenda NUMBER NOT NULL,
    dataVenda TIMESTAMP NOT NULL,
    matricula NUMBER NOT NULL,

    CONSTRAINT WLC_VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT WLC_VENDA_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES WLC_EMPREGADO (matricula) ON DELETE CASCADE
);

CREATE TABLE WLC_AREA (
    idArea NUMBER NOT NULL,
    nomeArea VARCHAR(50) NOT NULL,
    idGerente NUMBER NOT NULL,

    CONSTRAINT WLC_AREA_PK PRIMARY KEY (idArea),
    CONSTRAINT WLC_AREA_GERENTE_FK FOREIGN KEY (idGerente) REFERENCES WLC_GERENTE (idGerente) ON DELETE CASCADE
);

CREATE TABLE WLC_PRODUTO (
    idProduto NUMBER NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
    precoUnitario DECIMAL(7,2) NOT NULL,
    idArea NUMBER NOT NULL,

    CONSTRAINT WLC_PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT WLC_PRODUTO_AREA_FK FOREIGN KEY (idArea) REFERENCES WLC_AREA (idArea) ON DELETE CASCADE
);

CREATE TABLE WLC_telefone (
    matricula NUMBER NOT NULL,
    telefone NUMBER NOT NULL,

    CONSTRAINT WLC_telefone_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES WLC_EMPREGADO (matricula) ON DELETE CASCADE,
    CONSTRAINT WLC_telefone_UK UNIQUE (matricula, telefone)
);

CREATE TABLE WLC_contem (
    idVenda NUMBER NOT NULL,
    idProduto NUMBER NOT NULL,
    quantidade NUMBER NOT NULL,

    CONSTRAINT WLC_contem_VENDA_FK FOREIGN KEY (idVenda) REFERENCES WLC_VENDA (idVenda) ON DELETE CASCADE,
    CONSTRAINT WLC_contem_PRODUTO_FK FOREIGN KEY (idProduto) REFERENCES WLC_PRODUTO (idProduto) ON DELETE CASCADE
);