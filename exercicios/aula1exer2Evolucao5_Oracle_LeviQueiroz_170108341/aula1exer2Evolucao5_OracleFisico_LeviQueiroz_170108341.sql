-- -------------------< aula1exer2Evolucao5_Oracle > ------------------------------------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 17/10/2024
-- Autor(es) ..............: Marina Márcia Costa de Souza
--                           Mylena Angélica Silva Farias
--                           Bruno Martins Valério Bomfim
--                           Levi de Oliveira Queiroz
-- Banco de Dados .........: Oracle APEX
-- Base de Dados (nome) ...: vrvr
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 05 Sequencias
--         => 01 Visao
--
-- Ultimas Alteracoes
-- 28/10/2023 => Adiciona tabela area e as alterações relacionadas a ela.
-- 04/11/2024 => 
--          - Mudança no nome da base de dados para aula1exer2evolucao3; 
--          - Adição de idGerente;  
--          - A matricula em empregado não é mais UK;
--          - Na área tem o idGerente como FK.
-- 16/11/2024 => 
--          - Adição da quantidade de view;  
-- 18/11/2024 => 
--          - Conversão do script do MySQL para Oracle, adaptando a sintaxe e tipos de dados;
--          - Cria 3 sequences;
-- 21/11/2024 => 
--          - Ajustando script para ser cooperativo com todos envolvidos no projeto
--          - Correcoes da criacao de PK para depois realizar FK em EMPREGADO e GERENTE 
--          - Criacao primeiro da UK em telefone para depois FK
-- 25/11/2024 => 
--          - Ajustando script para ter a assinatura.
-- 26/11/2024 => 
--          - Inclusao de FK com CASCADE para telefone
--          - Revisao e ajuste para uso de sequencias para todos os valores
--            de identificacao controlados pelo SGBD (empregado e produto estavam sem).
--          - Correcao de atributo PK com geracao por Sequence ser necessario para Empregado e Produto.
--          - Correcao da documentacao do projeto que tem 1 view.
-- --------------------------------------------------------------------------

-- SEQUENCIAS
CREATE SEQUENCE VRVR2_SEQ_GERENTE
 START WITH 1;
 
CREATE SEQUENCE VRVR2_SEQ_AREA
 START WITH 1;

CREATE SEQUENCE VRVR2_SEQ_VENDA
 START WITH 21;

CREATE SEQUENCE VRVR2_SEQ_EMPREGADO
 START WITH 101;

CREATE SEQUENCE VRVR2_SEQ_PRODUTO
 START WITH 11;



-- TABELAS
CREATE TABLE VRVR2_PESSOA (
    cpf NUMBER(11) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    senha VARCHAR2(50) NOT NULL,
   CONSTRAINT VRVR2_PESSOA_PK PRIMARY KEY (cpf)
);


CREATE TABLE VRVR2_EMPREGADO (
    matricula NUMBER(10) DEFAULT VRVR2_SEQ_EMPREGADO.nextval NOT NULL,
    cep NUMBER(10) NOT NULL,
    estado VARCHAR2(50) NOT NULL,
    cidade VARCHAR2(50) NOT NULL,
    bairro VARCHAR2(50) NOT NULL,
    rua VARCHAR2(50) NOT NULL,
    numero NUMBER(10) NOT NULL,
    cpf NUMBER(11) NOT NULL,
   CONSTRAINT VRVR2_EMPREGADO_PK PRIMARY KEY (matricula),
   CONSTRAINT VRVR2_EMPREGADO_VRVR2_PESSOA_FK FOREIGN KEY (cpf)
      REFERENCES VRVR2_PESSOA (cpf)
);


CREATE TABLE VRVR2_GERENTE (
    idGerente NUMBER(10) DEFAULT VRVR2_SEQ_GERENTE.nextval NOT NULL,
    cpf NUMBER(11) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    formacaoEscolar VARCHAR2(50) NOT NULL,
   CONSTRAINT VRVR2_GERENTE_PK PRIMARY KEY (idGerente),
   CONSTRAINT VRVR2_GERENTE_VRVR2PESSOA_FK FOREIGN KEY (cpf)
      REFERENCES VRVR2_PESSOA (cpf)
);


CREATE TABLE VRVR2_AREA (
    idArea NUMBER(10) DEFAULT VRVR2_SEQ_AREA.nextval NOT NULL,
    nomeArea VARCHAR2(50) NOT NULL,
    idGerenteArea NUMBER(10) NOT NULL,
   CONSTRAINT VRVR2_AREA_PK PRIMARY KEY (idArea),
   CONSTRAINT VRVR2_AREA_VRVR2_GERENTE_FK FOREIGN KEY (idGerenteArea)
      REFERENCES VRVR2_GERENTE (idGerente)
);


CREATE TABLE VRVR2_PRODUTO (
    codigo NUMBER(10) DEFAULT VRVR2_SEQ_PRODUTO.nextval NOT NULL,
    nomeProd VARCHAR2(50) NOT NULL,
    precoUnitario NUMBER(10, 2) NOT NULL,
    idArea NUMBER(10) NOT NULL,
   CONSTRAINT VRVR2_PRODUTO_PK PRIMARY KEY (codigo),
   CONSTRAINT VRVR2_PRODUTO_VRVR2_AREA_FK FOREIGN KEY (idArea)
      REFERENCES VRVR2_AREA (idArea)
);


CREATE TABLE VRVR2_VENDA (
    idVenda NUMBER(10) DEFAULT VRVR2_SEQ_VENDA.nextval NOT NULL,
    dataVenda DATE NOT NULL,
    precoTotal NUMBER(10, 2) NOT NULL,
    matricula  NUMBER(10) NOT NULL,
   CONSTRAINT VRVR2_VENDA_PK PRIMARY KEY (idVenda),
   CONSTRAINT VRVR2_VENDA_VRVR2_EMPREGADO_FK FOREIGN KEY (matricula)
      REFERENCES VRVR2_EMPREGADO (matricula)
);


CREATE TABLE VRVR2_telefone (
    matricula NUMBER(10) NOT NULL,
    telefone NUMBER(11) NOT NULL,
   CONSTRAINT VRVR2_telefone_UK UNIQUE (telefone, matricula),
   CONSTRAINT VRVR2_telefone_VRVR2_EMPREGADO_FK FOREIGN KEY (matricula)
      REFERENCES VRVR2_EMPREGADO (matricula)
      ON DELETE CASCADE
);


CREATE TABLE VRVR2_possui (
    codigo NUMBER(10) NOT NULL, 
    idVenda NUMBER(10) NOT NULL,
    quantidadeProduto NUMBER(10) NOT NULL,
   CONSTRAINT VRVR2_possui_VRVR2_PRODUTO_FK FOREIGN KEY (codigo)
      REFERENCES VRVR2_PRODUTO (codigo),
   CONSTRAINT VRVR2_possui_VRVR2_VENDA_FK FOREIGN KEY (idVenda)
      REFERENCES VRVR2_VENDA (idVenda)
);