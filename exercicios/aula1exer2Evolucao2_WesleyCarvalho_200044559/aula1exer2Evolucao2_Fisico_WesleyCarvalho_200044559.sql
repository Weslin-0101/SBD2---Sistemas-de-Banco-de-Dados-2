-- << aula1exer2 evolução3>>
-- 
-- 			SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 23/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 tabelas
-- 
-- Ultimas Alteracoes
--   22/10/2024 => Correcao na Sintese do projeto que apresentava
--                 objetos do banco de dados NAO implmentados (Perfis
--                 e Usuarios);
--              => Ajuste para melhor apresentacao do script;
--
--   23/10/2024 => Correções levantadas pelo professor para a evolução 2, como: 
--                 remoção da entidade associativa em substituição para dois novos relacionamentos,
--                 remoção da entidade de formação escolar, correção das chaves estrangeiras e correções
--                 nos scripts.
--   03/11/2024 => Das 8 tabelas que existiam no projeto antigo agora possuem 9
--              => O relacionamento entre as tabelas GERENTE e AREA geram uma nova tabela por conta da cardinalidade (n:m)
--                 de seu relacionamento.
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS aula1exer2evolucao3;

USE aula1exer2evolucao3;

-- TABELAS
CREATE TABLE PESSOA (
    cpfPessoa BIGINT NOT NULL,
    nomePessoa VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL, 
   CONSTRAINT USUARIO_PK PRIMARY KEY (cpfPessoa)
) ENGINE=InnoDB ;

CREATE TABLE GERENTE(
	idGerente INT NOT NULL AUTO_INCREMENT,
    cpfPessoa BIGINT NOT NULL,
    email VARCHAR(100) NOT NULL,
    formacao ENUM('BASICO', 'MEDIO', 'SUPERIOR') NOT NULL,
	
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT GERENTE_UK UNIQUE KEY (cpfPessoa),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpfPessoa)
    REFERENCES PESSOA (cpfPessoa) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE AREA (
    idArea INT NOT NULL AUTO_INCREMENT,
	nomeArea VARCHAR(100) NOT NULL,
    
    CONSTRAINT AREA_PK PRIMARY KEY (idArea)
) ENGINE=InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE gerencia (
	idArea INT NOT NULL,
    idGerente INT NOT NULL,
    cpfPessoa BIGINT NOT NULL,
	
    CONSTRAINT gerencia_AREA_FK FOREIGN KEY (idArea)
    REFERENCES AREA (idArea) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT gerencia_GERENTE_FK FOREIGN KEY (idGerente)
    REFERENCES GERENTE (idGerente) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT gerencia_PESSOA_FK FOREIGN KEY (cpfPessoa)
    REFERENCES PESSOA (cpfPessoa) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE EMPREGADO (
	matricula INT NOT NULL AUTO_INCREMENT,
    cpfPessoa BIGINT NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep BIGINT NOT NULL,
    complemento VARCHAR(100),
    
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_UK UNIQUE KEY (cpfPessoa),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpfPessoa)
    REFERENCES PESSOA (cpfPessoa) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE telefone (
	matricula INT NOT NULL,
    telefone BIGINT NOT NULL,
    
    CONSTRAINT telefone_UK UNIQUE KEY (matricula),
    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula)
    REFERENCES EMPREGADO (matricula) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE PRODUTO (
	codigoProduto INT NOT NULL AUTO_INCREMENT,
    idArea INT NOT NULL,
    precoUnitario DECIMAL(10,2) NOT NULL,
    nomeProduto VARCHAR(100) NOT NULL,
    descricaoProduto VARCHAR(100),
    
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoProduto),
    CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea)
    REFERENCES AREA (idArea) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE VENDA (
	codigoVenda INT NOT NULL AUTO_INCREMENT,
    matricula INT NOT NULL,
    cpfPessoa BIGINT NOT NULL,
    dtVenda DATE NOT NULL,
    
    CONSTRAINT VENDA_PK PRIMARY KEY (codigoVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
    REFERENCES EMPREGADO (matricula) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT VENDA_PESSOA_FK FOREIGN KEY (cpfPessoa)
    REFERENCES PESSOA (cpfPessoa) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE participa (
    codigoVenda INT NOT NULL,
    codigoProduto INT NOT NULL,
    quantidade INT NOT NULL,
    
    CONSTRAINT participa_VENDA_FK FOREIGN KEY (codigoVenda)
    REFERENCES VENDA (codigoVenda) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT participa_PRODUTO_FK FOREIGN KEY (codigoProduto)
    REFERENCES PRODUTO (codigoProduto) ON UPDATE RESTRICT ON DELETE RESTRICT
);