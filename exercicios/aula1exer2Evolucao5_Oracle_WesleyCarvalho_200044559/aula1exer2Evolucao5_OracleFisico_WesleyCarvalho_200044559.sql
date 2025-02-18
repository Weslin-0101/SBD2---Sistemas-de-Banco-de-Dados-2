-- -------- < aula1exer2 - Evolução 4 Oracle > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: Oracle
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--         => 01 View
--        
-- Ultimas Alteracoes
--   22/10/2024 => Ajusta para melhor apresentacao do script;
--              => Retirada de instrucoes que NAO sao SQL no script
--                 que nao aceita outras instrucoes que nao sejam SQL;
--              => Correcao para nomenclatura das restricoes de integridade
--                 para o padrao exigido na disciplina;
--              => Definicao completa do comportamento das FKs no script 
--   28/10/2024 => Criação das tabelas Area Gerencia e constitui;
--              => Correção das restrições
--   04/11/2024 => Alteração do nome da base de dados para aula1exer2evolucao3
-- 				=> Exclusão da tabela inserido
-- 				=> Criação das tabelas GERENTE e EMPREGADO
-- 				=> Alteração nos atributos das tabelas
-- 				=> Adição do auto_increment 
--   20/11/2024 => Alteração do nome da base de dados para VRVR3
-- 		=> Mudança do script de MySQL para Oracle
--   21/11/2024 => Ajustando script para ser cooperativo com todos envolvidos no projeto
--              => Correcao para implementacao mais simples usando recursos exigidos, sem complicar a solucao.
--   25/11/2024 => Adicionando a assinatura nas tabelas e constraints, e removendo as linhas de código que possuem trigger
-- ---------------------------------------------------------


-- SEQUENCIAS
CREATE SEQUENCE WLC_SEQ_GERENTE
  START WITH 10000 INCREMENT BY 1;

CREATE SEQUENCE WLC_SEQ_EMPREGADO
  START WITH 1000000000 INCREMENT BY 1;

CREATE SEQUENCE WLC_SEQ_AREA
  START WITH 100 INCREMENT BY 1;

CREATE SEQUENCE WLC_SEQ_PRODUTO
  START WITH 100000 INCREMENT BY 1;

CREATE SEQUENCE WLC_SEQ_VENDA
  START WITH 100000 INCREMENT BY 1;


-- TABELAS
CREATE TABLE WLC_PESSOA (
    cpf VARCHAR2(11) NOT NULL,
    senha VARCHAR2(8) NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT WLC_PESSOA_PK PRIMARY KEY (cpf)
);


CREATE TABLE WLC_GERENTE (
    idGerente NUMBER(5)  DEFAULT WLC_SEQ_GERENTE.nextval NOT NULL,
    email VARCHAR2(255) NOT NULL,
    formacao VARCHAR2(255) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    CONSTRAINT WLC_GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT WLC_GERENTE_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES WLC_PESSOA(cpf)
);


CREATE TABLE WLC_EMPREGADO (
    matricula NUMBER(10) DEFAULT WLC_SEQ_EMPREGADO.nextval NOT NULL,
    cep VARCHAR2(8) NOT NULL,
    numero NUMBER(6) NOT NULL,
    complemento VARCHAR2(255),
    bairro VARCHAR2(255) NOT NULL,
    cidade VARCHAR2(255) NOT NULL,
    estado CHAR(2) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    CONSTRAINT WLC_EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT WLC_EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES WLC_PESSOA(cpf)
);


CREATE TABLE WLC_AREA (
    idArea NUMBER(3) DEFAULT WLC_SEQ_AREA.nextval NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT WLC_AREA_PK PRIMARY KEY (idArea)
);


CREATE TABLE WLC_PRODUTO (
    idProduto NUMBER(6) DEFAULT WLC_SEQ_PRODUTO.nextval NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    valorUnitario NUMBER(10, 2) NOT NULL,
    idArea NUMBER(3) NOT NULL,
    CONSTRAINT WLC_PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT WLC_PRODUTO_AREA_FK FOREIGN KEY (idArea)
        REFERENCES WLC_AREA(idArea)
);


CREATE TABLE WLC_VENDA (
    idVenda NUMBER(6) DEFAULT  WLC_SEQ_VENDA.nextval NOT NULL,
    dataVenda DATE NOT NULL,
    matricula NUMBER(10) NOT NULL,
    CONSTRAINT WLC_VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT WLC_VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES WLC_EMPREGADO(matricula)
);


CREATE TABLE WLC_TELEFONE (
    telefone VARCHAR2(11) NOT NULL,
    matricula NUMBER(10) NOT NULL,
    CONSTRAINT WLC_TELEFONE_UK UNIQUE (telefone, matricula),
    CONSTRAINT WLC_TELEFONE_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES WLC_EMPREGADO(matricula)
        ON DELETE CASCADE
);


CREATE TABLE WLC_GERENCIA (
    idGerente NUMBER(5) NOT NULL,
    idArea NUMBER(3) NOT NULL,
    CONSTRAINT WLC_GERENCIA_GERENTE_FK FOREIGN KEY (idGerente)
        REFERENCES WLC_GERENTE(idGerente),
    CONSTRAINT WLC_GERENCIA_AREA_FK FOREIGN KEY (idArea)
        REFERENCES WLC_AREA(idArea)
);


CREATE TABLE WLC_CONSTITUI (
    idProduto NUMBER(6) NOT NULL,
    idVenda NUMBER(6) NOT NULL,
    quantidade NUMBER(5) NOT NULL,
    CONSTRAINT WLC_CONSTITUI_UK UNIQUE (idProduto, idVenda),
    CONSTRAINT WLC_CONSTITUI_PRODUTO_FK FOREIGN KEY (idProduto)
        REFERENCES WLC_PRODUTO(idProduto),
    CONSTRAINT WLC_CONSTITUI_VENDA_FK FOREIGN KEY (idVenda)
        REFERENCES WLC_VENDA(idVenda)
);