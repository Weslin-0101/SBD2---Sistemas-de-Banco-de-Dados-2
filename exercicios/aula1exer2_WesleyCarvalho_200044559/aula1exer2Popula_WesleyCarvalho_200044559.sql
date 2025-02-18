-- --------     << Controle de Vendas >>     ------------
-- 
--                    SCRIPT DE POPULA (DDL)
-- 
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2
-- 
-- Data Ultima Alteracao ..: 20/10/2024
--   => Criacao do script de popular o banco
-- 
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula1exer2;

INSERT INTO PESSOA (cpf, nome, senha) VALUES 
(01791689086, 'Daniel Breno Bernado', 'daniel.bernado'),
(56692332044, 'Aparecida Nair', 'aparecida.nair'),
(55355711561, 'Larissa Eliane Ayla', 'larissa.ayla'),
(56735135008, 'Betina Marcela Lúcia', 'betina.lucia'),
(08191914697, 'Rebeca Isabela Amanda', 'rebeca.amanda'),
(73321045800, 'Rita Vera Nascimento', 'rita.nascimento');

INSERT INTO GERENTE (cpf, formacaoEscolar, email) VALUES
(01791689086, 'Ensino Superior Completo', 'danielbreno@gmail.com'),
(56692332044, 'Ensino Superior Completo', 'aparecidanair@gmail.com'),
(55355711561, 'Ensino Superior Completo', 'larissaayla@gmail.com');

INSERT INTO EMPREGADO (matricula, cpf, quadra, cidade, bairro, cep, complemento) VALUES
(145768, 56735135008, 'Rua Raposo 256', 'Criciúma', 'Santa Catarina', 88810226, NULL),
(144665, 08191914697, 'Rua lara 1000', 'Campo Grande', 'Centro', 79020330, NULL),
(188998, 73321045800, 'Rua Araras 763', 'Imperatriz', 'Santa Inês', 65919388, NULL);

INSERT INTO PRODUTO (nome, preco) VALUES
('Biscoito Oreo', 1.50),
('Detergente Neutro', 8.10),
('Coca-Cola Zero', 10.50);

INSERT INTO PROCESSO (quantidade, precoUnitario) VALUES
(1, 1.50),
(2, 8.10),
(1, 10.50);

INSERT INTO VENDA (idProcesso, matricula, cpf, idProduto, dtVenda, precoTotal) VALUES
(1, 145768, 56735135008, 1, '2024-10-10', 1.50),
(2, 144665, 08191914697, 2, '2024-05-10', 16.20),
(3, 188998, 73321045800, 3, '2024-04-10', 10.50);

INSERT INTO HABILIDADE (area) VALUES
('Vendas'),
('Marketing'),
('Produto');

INSERT INTO telefone (matricula, cpf, telefone) VALUES
(145768, 56735135008, 9828073746),
(144665, 08191914697, 6935941142),
(188998, 73321045800, 6526434860);

INSERT INTO supervisiona (idGerente, cpfGerente, matricula, cpfEmpregado) VALUES
(1, 01791689086, 145768, 56735135008),
(2, 56692332044, 144665, 08191914697),
(3, 55355711561, 188998, 73321045800);

INSERT INTO tem (matricula, cpf, idHabilidade) VALUES
(145768, 56735135008, 1),
(144665, 08191914697, 2),
(188998, 73321045800, 3);