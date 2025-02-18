-- -------- < aula1exer2 - Evolução 4 Oracle > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
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
--   22/10/2024 => Retirada de instrucoes que NAO sao SQL no script
--   28/10/2024 => Adicionando as novas tabelas
--   04/11/2024 => Retirada da tabela inserido
-- 				=> Adição das tabelas GERENTE, EMPREGADO
-- 				=> Adição da exclusão dos perfis e dos usuários
--   20/11/2024 => Mudança do script de MySQL para Oracle
--   21/11/2024 => Ajuste para realizacao de script coerente com a solicitacao
--                 e NAO complicando a realizacao do que foi solicitado
--              => Remocao de instrucoes que removiam objetos do banco que nem foram criados como Usuarios e Roles
--   25/11/2024 => Adicionando a assinatura no nome dos tabelas e view
--
-- ---------------------------------------------------------

-- TABELAS
DROP TABLE WLC_CONSTITUI;
DROP TABLE WLC_GERENCIA;
DROP TABLE WLC_TELEFONE;
DROP TABLE WLC_PRODUTO;
DROP TABLE WLC_VENDA;
DROP TABLE WLC_AREA;
DROP TABLE WLC_GERENTE;
DROP TABLE WLC_EMPREGADO;
DROP TABLE WLC_PESSOA;

-- VIEW
DROP VIEW VendasPorProduto;

-- SEQUENCIAS
DROP SEQUENCE WLC_SEQ_AREA;
DROP SEQUENCE WLC_SEQ_EMPREGADO;
DROP SEQUENCE WLC_SEQ_GERENTE;
DROP SEQUENCE WLC_SEQ_PRODUTO;
DROP SEQUENCE WLC_SEQ_VENDA;
