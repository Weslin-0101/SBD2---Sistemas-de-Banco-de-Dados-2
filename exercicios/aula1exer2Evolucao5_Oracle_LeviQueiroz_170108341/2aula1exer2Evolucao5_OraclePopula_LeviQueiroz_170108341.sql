-- -------------------< aula1exer2Evolucao5_Oracle > ------------------------------------
--
--                      SCRIPT POPULA (DML)
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
-- 28/10/2023 => Adiciona novas tuplas.
-- 04/11/2024 => 
--      - Mudança no nome da base de dados para aula1exer2evolucao3;
--      - Adição de idGerente;
--      - Adicionando novas tuplas seguindo as recomendações do professor.
-- 16/11/2024 => 
--          - Adição da quantidade de view;  
--          - Adição de mais tuplas;
-- 18/11/2024 =>
--          - Adaptação do script de MySQL para Oracle
-- 21/11/2024 => 
--          - Ajustando script para ser cooperativo com todos envolvidos no projeto
-- 25/11/2024 => 
--          - Ajustando script para inserir 8 instruções de insert.
--          - Ajustando script para ter assinatura.
-- 26/11/2024 => 
--          - Adequacao de INSERTs coerentes para eficiencia do processo em no SGBD;
--          - Ajustes para uso de insercoes nas tabelas que usam Sequencias;
--          - Exemplo de instrucao INSERT ALL guardando dados em mais que uma tabela;
--          - Correcao na documentacao do projeto que tem 1 view;
--          - Dados NAO compreende as exigencias da disciplina, por exemplo, nome de pessoa nao tem so o primeiro nome
--          - Maioria das instrucoes INSERT nem funcionam e tiveram que ser reescritas.
-- 
-- --------------------------------------------------------------------------

-- INSERCOES
INSERT ALL
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (12345678901, 'João Silva', 'senha123')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (98765432109, 'Maria Melo Aguiar', 'senha456')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (34567890123, 'Pedro Henrique Sase', 'senha789')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (11122233344, 'Ana Clara Lima', 'senha101')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (55566677788, 'Carlos Augusto Roce', 'senha202')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (99988877766, 'Paula Maria Trindade', 'senha303')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (33344455566, 'Marcos Aurelio Cury', 'senha404')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (44455566677, 'Julia Ruis Mediana', 'senha505')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (66677788899, 'Lucas Rossi', 'senha606')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (88899900011, 'Fernanda Alista Braquia', 'senha707')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (22233344455, 'Luiza Maria Cleumar', 'senha808')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (77788899900, 'Gustavo Pereira', 'senha909')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (88811122233, 'Clara Sobrinha Leite', 'senha010')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (99922233344, 'Rafael Carlos Brosio', 'senha111')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (33322211100, 'Rodrigo Felipe Neves', 'senha112')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (44433322211, 'Tatiana Ribeiro', 'senha223')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (55544433322, 'André Silva Rego', 'senha334')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (66655544433, 'Gabriela Predicate', 'senha445')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (77766655544, 'Felipe Alvino Messias', 'senha556')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (88877766655, 'Bianca Beatriz Cunha', 'senha667')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (99988954766, 'Thiago Ribeiro Alberto', 'senha778')
    INTO VRVR2_PESSOA (cpf, nome, senha) VALUES (11122233300, 'Larissa Cintia Solves', 'senha889')
SELECT * FROM DUAL;


INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (12345, 'SP', 'São Paulo', 'Centro', 'Avenida 1', 123, 12345678901);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (54321, 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua 2', 456, 98765432109);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (98765, 'MG', 'Belo Horizonte', 'Savassi', 'Avenida 3', 789, 34567890123);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (11223, 'SP', 'São Paulo', 'Jardins', 'Rua 4', 101, 11122233344);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (33445, 'RJ', 'Niterói', 'Icaraí', 'Rua 5', 202, 55566677788);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (55667, 'MG', 'Uberlândia', 'Centro', 'Avenida 6', 303, 99988877766);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (77889, 'RS', 'Porto Alegre', 'Moinhos', 'Avenida 7', 404, 33344455566);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (44556, 'SP', 'Campinas', 'Centro', 'Rua 8', 105, 44455566677);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (66778, 'RJ', 'Petrópolis', 'Quitandinha', 'Rua 9', 206, 66677788899);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (88990, 'MG', 'Uberaba', 'Santa Marta', 'Rua 10', 307, 88899900011);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (99876, 'PE', 'Recife', 'Boa Viagem', 'Rua 11', 208, 22233344455);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (88765, 'BA', 'Salvador', 'Barra', 'Rua 12', 109, 77788899900);
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (12346, 'SP', 'São Paulo', 'Centro', 'Rua A', 1, 33322211100); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (54322, 'RJ', 'Rio de Janeiro', 'Barra', 'Avenida B', 2, 44433322211); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (98766, 'MG', 'Belo Horizonte', 'Lourdes', 'Rua C', 3, 55544433322); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (11224, 'SP', 'São Paulo', 'Vila Mariana', 'Rua D', 4, 66655544433); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (33446, 'RJ', 'Niterói', 'Centro', 'Rua E', 5, 77766655544); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (55668, 'MG', 'Uberlândia', 'Santa Mônica', 'Rua F', 6, 88877766655); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (77890, 'RS', 'Porto Alegre', 'Cidade Baixa', 'Rua G', 7, 99988954766); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (44557, 'SP', 'Campinas', 'Cambuí', 'Rua H', 8, 11122233300); 
INSERT INTO VRVR2_EMPREGADO (cep, estado, cidade, bairro, rua, numero, cpf) VALUES (71939, 'DF', 'Águas Claras', 'Sul', 'Rua 13', 0, 88811122233);



INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('joao@email.com', 'Bacharelado em Administração', 12345678901); 
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('maria@email.com', 'Mestrado em Finanças', 98765432109);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('pedro@email.com', 'Doutorado em Marketing', 34567890123);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('ana@email.com', 'Bacharelado em Economia', 11122233344);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('carlos@email.com', 'Engenharia de Produção', 55566677788);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('paula@email.com', 'MBA em Gestão', 99988877766);    
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('lucas@email.com', 'Bacharelado em TI', 66677788899);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('fernanda@email.com', 'MBA em Logística', 88899900011);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('luiza@email.com', 'Bacharelado em Comércio Exterior', 22233344455);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('gustavo@email.com', 'Mestrado em Engenharia', 77788899900);
INSERT INTO VRVR2_GERENTE (email, formacaoEscolar, cpf) VALUES ('raphabros@gmail.com', 'Médio completo', 99922233344);


INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Alimentos', 1);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Laticínios', 2);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Papelaria', 3);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Higiene Pessoal', 4);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Açougue', 5);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Padaria', 6);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Bebidas', 1);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Congelados', 1); 
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Informática', 5);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Limpeza', 9);
INSERT INTO VRVR2_AREA (nomeArea, idGerenteArea) VALUES ('Vestuário', 10);


INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Arroz', 10.50, 1);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Tablet', 20.75, 9 );
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Macarrão', 5.99, 1);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Coca-cola', 15.00, 7 );
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Guaraná', 35.25, 7 );
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Chocolate', 45.75, 7 );
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Meia', 12.40, 11);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Blusa', 22.30, 11);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Calça', 17.60, 11);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Sapato', 27.90, 11);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Notebook', 1500.00, 9);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Caderno', 15.50, 3);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Queijo Mussarela', 25.00, 2); 
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Leite', 6.50, 2);    
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Caneta', 1.50, 3);   
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Sabonete', 2.99, 4);    
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Shampoo', 15.00, 4);    
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Carne Bovina', 35.00, 5); 
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Frango Congelado', 18.50, 5); 
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Pão', 9.00, 6);  
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Bolo de Chocolate', 35.00, 6); 
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Pizza Congelada', 22.50, 8); 
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Sorvete', 19.90, 8);    
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Detergente', 2.50, 10);  
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Esponja de Aço', 3.99, 10);
INSERT INTO VRVR2_PRODUTO (nomeProd, precoUnitario, idArea) VALUES ('Picolé', 1.15, 1);


INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('01-09-24', 45.50, 101);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('02-09-24', 62.50, 102);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('03-09-24', 100.00, 103);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('04-09-24', 150.75, 104);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('05-09-24', 75.00, 105);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('06-09-24', 180.00, 106);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('07-09-24', 120.40, 107);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('08-09-24', 95.60, 108);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('09-09-24', 80.00, 110);
INSERT INTO VRVR2_VENDA (dataVenda, precoTotal, matricula) VALUES ('10-09-24', 130.30, 110);


INSERT ALL
    INTO VRVR2_telefone (matricula, telefone) VALUES (101, 994457812)
    INTO VRVR2_telefone (matricula, telefone) VALUES (102, 968547232)
    INTO VRVR2_telefone (matricula, telefone) VALUES (103, 845236912)
    INTO VRVR2_telefone (matricula, telefone) VALUES (104, 889776655)
    INTO VRVR2_telefone (matricula, telefone) VALUES (105, 887766554)
    INTO VRVR2_telefone (matricula, telefone) VALUES (106, 998877665)
    INTO VRVR2_telefone (matricula, telefone) VALUES (107, 556644332)
    INTO VRVR2_telefone (matricula, telefone) VALUES (108, 445566778)
    INTO VRVR2_telefone (matricula, telefone) VALUES (109, 665544332)
    INTO VRVR2_telefone (matricula, telefone) VALUES (110, 556677889)
    INTO VRVR2_telefone (matricula, telefone) VALUES (111, 556606889)
    INTO VRVR2_telefone (matricula, telefone) VALUES (112, 541307889)
    INTO VRVR2_telefone (matricula, telefone) VALUES (113, 987654321)
    INTO VRVR2_telefone (matricula, telefone) VALUES (114, 912345678)
    INTO VRVR2_telefone (matricula, telefone) VALUES (115, 998765432)
    INTO VRVR2_telefone (matricula, telefone) VALUES (116, 911223344)
    INTO VRVR2_telefone (matricula, telefone) VALUES (116, 922334455)
    INTO VRVR2_telefone (matricula, telefone) VALUES (117, 933445566)
    INTO VRVR2_telefone (matricula, telefone) VALUES (118, 944556677)
    INTO VRVR2_telefone (matricula, telefone) VALUES (118, 955667788)
    INTO VRVR2_telefone (matricula, telefone) VALUES (119, 966778899)
    INTO VRVR2_telefone (matricula, telefone) VALUES (120, 977889900)
SELECT * FROM DUAL;



INSERT ALL
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (11, 21, 2)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (13, 21, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (15, 22, 3)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (14, 22, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (12, 23, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (17, 23, 2)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (28, 23, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (30, 24, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (31, 24, 2)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (34, 24, 2)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (22, 25, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (25, 25, 2)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (33, 25, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (27, 25, 3)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (16, 26, 4)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (18, 27, 3)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (19, 28, 2)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (20, 29, 1)
    INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (21, 30, 1)
SELECT * FROM DUAL;


INSERT ALL
  INTO VRVR2_telefone (matricula, telefone) VALUES (121, 35346784)
  INTO VRVR2_possui (codigo, idVenda, quantidadeProduto) VALUES (21, 29, 2)  
SELECT * FROM DUAL;


