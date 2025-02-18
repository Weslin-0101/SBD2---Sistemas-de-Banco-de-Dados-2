-- --------     << Controle de Vendas >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2
-- 
-- Data Ultima Alteracao ..: 20/10/2024
--   => Criacao do script físico
-- 
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2;

USE aula1exer2;

CREATE TABLE PESSOA (
    cpf BIGINT(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
);

CREATE TABLE GERENTE (
    idGerente INTEGER NOT NULL AUTO_INCREMENT,
    cpf BIGINT(11) NOT NULL,
    formacaoEscolar VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente, cpf),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf)
) AUTO_INCREMENT = 1 ENGINE = InnoDB;

CREATE TABLE EMPREGADO (
    matricula INTEGER(6) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    quadra VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep INTEGER(8) NOT NULL,
    complemento VARCHAR(100),
    
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula, cpf),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf)
);

CREATE TABLE PRODUTO (
    idProduto INTEGER NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(4,2) NOT NULL,
    
    CONSTRAINT PRODUTO_PK PRIMARY KEY (idProduto)
) AUTO_INCREMENT = 1 ENGINE=InnoDB;

CREATE TABLE PROCESSO (
    idProcesso INTEGER NOT NULL AUTO_INCREMENT,
    quantidade INTEGER NOT NULL,
    precoUnitario DECIMAL(4,2) NOT NULL,
    
    CONSTRAINT PROCESSO_PK PRIMARY KEY (idProcesso)
) AUTO_INCREMENT = 1 ENGINE=InnoDB;

CREATE TABLE VENDA (
    idVenda INTEGER NOT NULL AUTO_INCREMENT,
    idProcesso INTEGER NOT NULL,
    matricula INTEGER(6) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    idProduto INTEGER NOT NULL,
    dtVenda DATE NOT NULL,
    precoTotal DECIMAL(4,2) NOT NULL,
    
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_PROCESSO_FK FOREIGN KEY (idProcesso) REFERENCES PROCESSO (idProcesso)
) AUTO_INCREMENT = 1 ENGINE=InnoDB;

CREATE TABLE HABILIDADE (
    idHabilidade INTEGER NOT NULL AUTO_INCREMENT,
    area VARCHAR(100) NOT NULL,
    
    CONSTRAINT HABILIDADE_PK PRIMARY KEY (idHabilidade)
) AUTO_INCREMENT = 1 ENGINE=InnoDB;

CREATE TABLE telefone (
    matricula INTEGER(6),
    cpf BIGINT(11),
    telefone BIGINT(10) NOT NULL,
    
    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula, cpf) REFERENCES EMPREGADO (matricula, cpf)
);

CREATE TABLE supervisiona (
    idGerente INTEGER NOT NULL,
    cpfGerente BIGINT(11) NOT NULL,
    matricula INTEGER(6) NOT NULL,
    cpfEmpregado BIGINT(11) NOT NULL,
    
    CONSTRAINT supervisiona_GERENTE_FK FOREIGN KEY (idGerente, cpfGerente) REFERENCES GERENTE (idGerente, cpf),
    CONSTRAINT supervisiona_EMPREGADO_FK FOREIGN KEY (matricula, cpfEmpregado) REFERENCES EMPREGADO (matricula, cpf)
);

CREATE TABLE tem (
    matricula INTEGER(6) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    idHabilidade INTEGER NOT NULL,
    
    CONSTRAINT tem_EMPREGADO_FK FOREIGN KEY (matricula, cpf) REFERENCES EMPREGADO (matricula, cpf),
    CONSTRAINT tem_HABILIDADE_FK FOREIGN KEY (idHabilidade) REFERENCES HABILIDADE (idHabilidade)
);