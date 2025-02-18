-- ----------------   << Aula 1 Exercicio 2 Evolucao 3>>   ---------------------------
--
--                    SCRIPT DE POPULAR (DML)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Artur Jackson Leal Fontinele
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2Evolucao3
-- 
-- Data Ultima Alteracao ..: 04/11/2024
--   => Adicona mais Inserts nas tabelas para que tenha ao menos 10 tuplas por tabela seguindo o enunciado;
--   =>
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -------------------------------------------------------------------------

USE aula1exer2Evolucao3;

INSERT INTO PESSOA (cpf, nome, senha) VALUES
(12345678909, 'Diogo Silva', 'senha123'),
(98765432100, 'Marina Souza', 'senha456'),
(45678912344, 'Pedro Santos', 'senha789'),
(65432198766, 'Ana Oliveira', 'senhaabc'),
(11223344550, 'Lucas Pereira', 'senhadef'),
(99887766559, 'Carlos Mendes', 'senha1234'),
(33445566771, 'João Lima', 'senha5678'),
(77665544332, 'Mariana Lima', 'senha9999'),
(22113344556, 'Fernando Silva', 'senha0000'),
(66557788990, 'Paula Costa', 'senhaabcd'),
(11122233344, 'Rafael Alves', 'senha111'),
(55566677788, 'Camila Ferreira', 'senha222');

INSERT INTO GERENTE (formacao, email, cpf) VALUES
('Administração', 'diogo@empresa.com', 12345678909), 
('Marketing', 'marina@empresa.com', 98765432100),     
('Recursos Humanos', 'pedro@empresa.com', 45678912344), 
('Financeiro', 'ana@empresa.com', 65432198766),      
('Operações', 'carlos@empresa.com', 99887766559),    
('Tecnologia', 'joao@empresa.com', 33445566771),     
('Logística', 'mariana@empresa.com', 77665544332),
('Vendas', 'lucas@empresa.com', 11223344550),
('RH', 'fernando@empresa.com', 22113344556),
('Qualidade', 'paula@empresa.com', 66557788990);   

INSERT INTO EMPREGADO (rua, numero, bairro, cidade, estado, cep, cpf) VALUES
('Avenida Paulista', 1000, 'Bela Vista', 'São Paulo', 'SP', 01310200, 65432198766), -- Ana Oliveira (também Gerente)
('SQN 314', 201, 'Asa Norte', 'Brasília', 'DF', 70020180, 11223344550),         
('Avenida Atlântica', 300, 'Copacabana', 'Rio de Janeiro', 'RJ', 22021001, 99887766559), -- Carlos Mendes (também Gerente)
('Rua Augusta', 400, 'Consolação', 'São Paulo', 'SP', 01305000, 45678912344),       
('Avenida Beira Mar', 500, 'Meireles', 'Fortaleza', 'CE', 60165121, 98765432100),   
('Rua XV de Novembro', 600, 'Centro', 'Curitiba', 'PR', 80020300, 22113344556),     
('Avenida Sete de Setembro', 700, 'Centro', 'Salvador', 'BA', 40060000, 66557788990),
('Csb4', 123, 'Sul', 'Taguatinga', 'DF', 70120000, 12345678909),
('Avenida Brasil', 456, 'Santa Cruz', 'Rio de Janeiro', 'RJ', 23560000, 33445566771),
('Rua Ipiranga', 789, 'Vila Mariana', 'São Paulo', 'SP', 04001000, 77665544332),
('Rua das Flores', 123, 'Centro', 'Porto Alegre', 'RS', 90020000, 11122233344),
('Avenida Brasil', 456, 'Centro', 'Recife', 'PE', 50010000, 55566677788);       


INSERT INTO AREA (nomeArea, idGerente) VALUES
('Eletrônicos', 1),
('Vestuário', 2),
('Alimentos', 3),
('Finanças', 4),
('Operações', 5),
('Tecnologia da Informação', 6),
('Logística', 7),
('Vendas Online', 8),
('Serviços', 9),
('Atendimento ao Cliente', 4);

INSERT INTO PRODUTO (nomeProduto, precoUnitario, idArea) VALUES
('Smartphone', 1500.00, 1),
('Camisa', 80.00, 2),
('Pão', 5.00, 3),
('Notebook', 2500.00, 1),
('Calça Jeans', 120.00, 2),
('Leite', 4.00, 3),
('Monitor', 800.00, 1),
('Bolsa', 200.00, 2),
('Software ERP', 10000.00, 6),
('Serviço de Transporte', 500.00, 7);

INSERT INTO VENDA (dataVenda, matricula) VALUES
('2024-10-19 10:00:00', 1),
('2024-10-19 11:00:00', 2),
('2024-10-19 12:00:00', 3),
('2024-10-19 13:00:00', 4),
('2024-10-19 14:00:00', 5),
('2024-10-19 15:00:00', 6),
('2024-10-19 16:00:00', 7),
('2024-10-19 17:00:00', 8),
('2024-10-19 18:00:00', 9),
('2024-10-20 14:00:00', 4),
('2024-10-19 17:00:00', 11),
('2024-10-19 18:00:00', 12),
('2024-10-19 19:00:00', 10);

INSERT INTO telefone (matricula, telefone) VALUES
(1, 11999999999),
(1, 11988888888),
(2, 41977777777),
(2, 41988888888),
(3, 21966666666),
(4, 11955555555),
(5, 85944444444),
(6, 41933333333),
(7, 71922222222),
(8, 31911112222),
(9, 21933334444),
(10, 11955556666),
(11, 51977778888),
(12, 81999990000);

INSERT INTO contem (idVenda, idProduto, quantidade) VALUES
(1, 1, 2),
(1, 4, 1),
(2, 2, 1),
(2, 5, 2),
(3, 3, 5),
(4, 6, 3),
(4, 7, 1),
(5, 8, 4),
(6, 9, 1),
(7, 10, 2),
(8, 2, 3),
(8, 5, 1);