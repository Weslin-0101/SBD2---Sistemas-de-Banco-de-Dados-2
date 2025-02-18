-- ----------------   << Aula 1 Exercicio 2 Evolucao 4 >>   ----------------
--
--                    SCRIPT DE APAGA (DDL)
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
--     => Removendo a parte do código em que remove os privilégios, view e 
--        os usuários.
--     => Adicionando as linhas para dropar as sequences que foram criadas
--        no script de popula. 
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -------------------------------------------------------------------

-- Excluindo as tabelas
DROP TABLE WLC_contem;
DROP TABLE WLC_telefone;
DROP TABLE WLC_PRODUTO;
DROP TABLE WLC_AREA;
DROP TABLE WLC_VENDA;
DROP TABLE WLC_EMPREGADO;
DROP TABLE WLC_GERENTE;
DROP TABLE WLC_PESSOA;

-- Excluindo as Sequences
DROP SEQUENCE WLC_PRODUTO_SEQ;
DROP SEQUENCE WLC_AREA_SEQ;
DROP SEQUENCE WLC_VENDA_SEQ;
DROP SEQUENCE WLC_EMPREGADO_SEQ;
DROP SEQUENCE WLC_GERENTE_SEQ;