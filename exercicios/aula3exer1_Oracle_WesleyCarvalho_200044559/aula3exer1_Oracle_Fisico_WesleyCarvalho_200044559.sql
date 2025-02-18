-- -------- < ESCALAS DE PLANTONISTAS > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 10/12/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: ORACLE APEX
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas

-- 
-- Ultimas Alteracoes
-- ---------------------------------------------------------

CREATE TABLE WLC_PLANTONISTA (
    matriculaFuncional NUMBER(5) NOT NULL,
    nomeCompleto VARCHAR(100) NOT NULL,
    sexo CHAR(1) NOT NULL CHECK (sexo IN ('F', 'M')),

    CONSTRAINT WLC_PLANTONISTA_PK PRIMARY KEY (matriculaFuncional)
);

CREATE TABLE WLC_SETOR (
    idSetor NUMBER(5) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100),

    CONSTRAINT WLC_SETOR_PK PRIMARY KEY (idSetor)
);

CREATE TABLE WLC_ESPECIALIDADE (
    idEspecialidade NUMBER(5) NOT NULL,
    nome VARCHAR(100) NOT NULL,

    CONSTRAINT WLC_ESPECIALIDADE_PK PRIMARY KEY (idEspecialidade)
);

CREATE TABLE WLC_possui (
    matriculaFuncional NUMBER(5) NOT NULL,
    idEspecialidade NUMBER(5) NOT NULL,

    CONSTRAINT WLC_possui_PLANTONISTA_FK FOREIGN KEY (matriculaFuncional)
    REFERENCES WLC_PLANTONISTA (matriculaFuncional) ON DELETE CASCADE,
    CONSTRAINT WLC_possui_ESPECIALIDADE_FK FOREIGN KEY (idEspecialidade)
    REFERENCES WLC_ESPECIALIDADE (idEspecialidade) ON DELETE CASCADE
);

CREATE TABLE WLC_alocado (
    matriculaFuncional NUMBER(5) NOT NULL,
    idSetor NUMBER(5) NOT NULL,
    horarioEntrada TIMESTAMP NOT NULL,
    horarioSaida TIMESTAMP NOT NULL,

    CONSTRAINT WLC_alocado_PLANTONISTA_FK FOREIGN KEY (matriculaFuncional)
    REFERENCES WLC_PLANTONISTA (matriculaFuncional) ON DELETE CASCADE,
    CONSTRAINT WLC_alocado_SETOR_FK FOREIGN KEY (idSetor)
    REFERENCES WLC_SETOR (idSetor) ON DELETE CASCADE 
);