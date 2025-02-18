-- ----------------   << Aula 1 Exercicio 2 Evolucao 4 >>   ----------------
--
--                    SCRIPT DE POPULA (DDL)
-- 
-- Data Criacao ...........: 20/11/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: ORACLE APEX
-- Banco de Dados(nome) ...: VRVR
-- 
-- Data Ultima Alteracao ..: 04/11/2024
--   => Adicona mais Inserts nas tabelas para que tenha ao menos 10 tuplas por tabela seguindo o enunciado;

--   20/11/2024
--   => Alternado o script para que possa respeitar as regras e o funcionamento
--      utilizando o ORACLE.
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -------------------------------------------------------------------

INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (12345678909, 'Diogo Silva', 'senha123');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (98765432100, 'Marina Souza', 'senha456');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (45678912344, 'Pedro Santos', 'senha789');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (65432198766, 'Ana Oliveira', 'senhaabc');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (11223344550, 'Lucas Pereira', 'senhadef');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (99887766559, 'Carlos Mendes', 'senha1234');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (33445566771, 'João Lima', 'senha5678');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (77665544332, 'Mariana Lima', 'senha9999');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (22113344556, 'Fernando Silva', 'senha0000');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (66557788990, 'Paula Costa', 'senhaabcd');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (11122233344, 'Rafael Alves', 'senha111');
INSERT INTO WLC_PESSOA (cpf, nome, senha) VALUES (55566677788, 'Camila Ferreira', 'senha222');

INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Administração', 'diogo@empresa.com', 12345678909); 
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Marketing', 'marina@empresa.com', 98765432100);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Recursos Humanos', 'pedro@empresa.com', 45678912344);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Financeiro', 'ana@empresa.com', 65432198766);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Operações', 'carlos@empresa.com', 99887766559);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Tecnologia', 'joao@empresa.com', 33445566771);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Logística', 'mariana@empresa.com', 77665544332);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Vendas', 'lucas@empresa.com', 11223344550);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'RH', 'fernando@empresa.com', 22113344556);
INSERT INTO WLC_GERENTE (idGerente, formacao, email, cpf) VALUES (WLC_GERENTE_SEQ.NEXTVAL, 'Qualidade', 'paula@empresa.com', 66557788990);   

INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Avenida Paulista', 1000, 'Bela Vista', 'São Paulo', 'SP', 01310200, 65432198766);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'SQN 314', 201, 'Asa Norte', 'Brasília', 'DF', 70020180, 11223344550);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Avenida Atlântica', 300, 'Copacabana', 'Rio de Janeiro', 'RJ', 22021001, 99887766559);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Rua Augusta', 400, 'Consolação', 'São Paulo', 'SP', 01305000, 45678912344);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Avenida Beira Mar', 500, 'Meireles', 'Fortaleza', 'CE', 60165121, 98765432100);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Rua XV de Novembro', 600, 'Centro', 'Curitiba', 'PR', 80020300, 22113344556);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Avenida Sete de Setembro', 700, 'Centro', 'Salvador', 'BA', 40060000, 66557788990);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Csb4', 123, 'Sul', 'Taguatinga', 'DF', 70120000, 12345678909);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Avenida Brasil', 456, 'Santa Cruz', 'Rio de Janeiro', 'RJ', 23560000, 33445566771);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Rua Ipiranga', 789, 'Vila Mariana', 'São Paulo', 'SP', 04001000, 77665544332);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Rua das Flores', 123, 'Centro', 'Porto Alegre', 'RS', 90020000, 11122233344);
INSERT INTO WLC_EMPREGADO (matricula, rua, numero, bairro, cidade, estado, cep, cpf) VALUES (WLC_EMPREGADO_SEQ.NEXTVAL, 'Avenida Brasil', 456, 'Centro', 'Recife', 'PE', 50010000, 55566677788);


INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Eletrônicos', 1);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Vestuário', 2);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Alimentos', 3);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Finanças', 4);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Operações', 5);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Tecnologia da Informação', 6);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Logística', 7);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Vendas Online', 8);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Serviços', 9);
INSERT INTO WLC_AREA (idArea, nomeArea, idGerente) VALUES (WLC_AREA_SEQ.NEXTVAL, 'Atendimento ao Cliente', 4);

INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Smartphone', 1500.00, 1);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Camisa', 80.00, 2);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Pão', 5.00, 3);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Notebook', 2500.00, 1);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Calça Jeans', 120.00, 2);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Leite', 4.00, 3);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Monitor', 800.00, 1);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Bolsa', 200.00, 2);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Software ERP', 10000.00, 6);
INSERT INTO WLC_PRODUTO (idProduto, nomeProduto, precoUnitario, idArea) VALUES (WLC_PRODUTO_SEQ.NEXTVAL, 'Serviço de Transporte', 500.00, 7);

INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-20 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 11);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 12);
INSERT INTO WLC_VENDA (idVenda, dataVenda, matricula) VALUES (WLC_VENDA_SEQ.NEXTVAL, TO_TIMESTAMP('2024-10-19 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10);

INSERT INTO WLC_telefone (matricula, telefone) VALUES (1, 11999999999);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (1, 11988888888);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (2, 41977777777);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (2, 41988888888);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (3, 21966666666);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (4, 11955555555);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (5, 85944444444);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (6, 41933333333);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (7, 71922222222);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (8, 31911112222);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (9, 21933334444);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (10, 11955556666);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (11, 51977778888);
INSERT INTO WLC_telefone (matricula, telefone) VALUES (12, 81999990000);

INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (1, 1, 2);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (1, 4, 1);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (2, 2, 1);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (2, 5, 2);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (3, 3, 5);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (4, 6, 3);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (4, 7, 1);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (5, 8, 4);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (6, 9, 1);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (7, 10, 2);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (8, 2, 3);
INSERT INTO WLC_contem (idVenda, idProduto, quantidade) VALUES (8, 5, 1);