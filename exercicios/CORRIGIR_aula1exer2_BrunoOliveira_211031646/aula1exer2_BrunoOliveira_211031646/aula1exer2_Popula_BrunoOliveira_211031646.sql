--  << aula1exer2 >>
-- 
-- 			SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 21/10/2024
-- Autor(es) ..............: Bruno Medeiros de Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- PROJETO => 01 Base de Dados
--         => 10 tabelas
--         => 03 Perfis
--         => 08 Usuarios
--
-- Ultimas Alteracoes
--   22/10/2024 => Correcao na Sintese do projeto que apresentava
--                 objetos do banco de dadosNAO implmentados (Perfis
--                 e Usuarios);
--              => Ajuste para melhor apresentacao do script;
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula1exer2;


-- INSERCOES
-- Inserir dados na tabela AREA
INSERT INTO AREA (nomeArea)
VALUES
    ('Tecnologia'),
    ('Moda'),
    ('Alimentos e Bebidas'),
    ('Móveis e Decoração'),
    ('Esportes e Lazer'),
    ('Saúde e Beleza'),
    ('Livraria'),
    ('Veículos'),
    ('Brinquedos'),
    ('Acessórios para Casa');


-- Inserir dados na tabela PESSOA
INSERT INTO PESSOA (cpfPessoa, nomePessoa, senha)
VALUES
    (12398765400, 'Lucas Martins', 'senha321'),
    (98732165400, 'Cláudia Lima', 'senha654'),
    (11122244400, 'Gabriel Mendes', 'senha987'),
    (44455577700, 'Larissa Souza', 'senha102'),
    (77788844400, 'Ricardo Figueiredo', 'senha202'),
    (99988822200, 'Aline Rocha', 'senha404'),
    (55566644400, 'Júlio Alves', 'senha505'),
    (22233355500, 'Paula Duarte', 'senha707'),
    (66677711100, 'André Pereira', 'senha808'),
    (88877744400, 'Camila Silva', 'senha909'),
    (32132132100, 'Fernanda Oliveira', 'senha010'),
    (45665445600, 'Carlos Matos', 'senha111'),
    (78998778900, 'Rafaela Souza', 'senha222'),
    (11223366700, 'Otávio Nunes', 'senha313'),
    (55667722100, 'Isabella Castro', 'senha414'),
    (99900033300, 'Felipe Miranda', 'senha515'),
    (77766622200, 'Mariana Ribeiro', 'senha616'),
    (44433355500, 'Eduardo Mendes', 'senha717'),
    (88899933300, 'Daniel Gonçalves', 'senha818');


-- Inserir dados na tabela EMPREGADO
INSERT INTO EMPREGADO (cpfPessoa, estado, rua, numero, bairro, cep, cidade, complemento)
VALUES
    (12398765400, 'SP', 'Rua X', 100, 'Centro', 12398765, 'São Paulo', 'Apto 501'),
    (98732165400, 'RJ', 'Avenida Y', 200, 'Botafogo', 23419876, 'Rio de Janeiro', NULL),
    (11122244400, 'MG', 'Rua Z', 300, 'Savassi', 34529876, 'Belo Horizonte', 'Cobertura'),
    (44455577700, 'RS', 'Avenida K', 400, 'Centro', 45639876, 'Porto Alegre', NULL),
    (77788844400, 'PR', 'Rua L', 500, 'Centro', 56749876, 'Curitiba', 'Casa 2'),
    (99988822200, 'BA', 'Avenida M', 600, 'Ondina', 67859876, 'Salvador', NULL),
    (55566644400, 'SP', 'Rua N', 700, 'Mooca', 12387654, 'São Paulo', 'Apto 201'),
    (22233355500, 'RJ', 'Avenida O', 800, 'Ipanema', 23427654, 'Rio de Janeiro', 'Cobertura 2'),
    (66677711100, 'MG', 'Rua P', 900, 'Centro', 34535476, 'Belo Horizonte', NULL),
    (88877744400, 'RS', 'Avenida Q', 1000, 'Cidade Baixa', 45643298, 'Porto Alegre', 'Casa de Esquina');


-- Inserir dados na tabela GERENTE
INSERT INTO GERENTE (cpfPessoa, email, idArea)
VALUES
    (32132132100, 'gerente01@email.com', 1),
    (45665445600, 'gerente02@email.com', 2),
    (78998778900, 'gerente03@email.com', 3),
    (11223366700, 'gerente04@email.com', 4),
    (55667722100, 'gerente05@email.com', 5),
    (99900033300, 'gerente06@email.com', 6),
    (77766622200, 'gerente07@email.com', 7),
    (44433355500, 'gerente08@email.com', 8),
    (88899933300, 'gerente09@email.com', 9);


-- Inserir dados na tabela GERENTE (pessoa que é gerente e empregado ao mesmo tempo)
INSERT INTO GERENTE (cpfPessoa, email, idArea)
VALUES
    (12398765400, 'gerente10@email.com', 10);


-- Inserir dados na tabela FORMACAO
INSERT INTO FORMACAO (nomeFormacao)
VALUES
    ('Ensino Fundamental'),
    ('Ensino Médio'),
    ('Curso Técnico'),
    ('Graduação'),
    ('Pós-Graduação'),
    ('MBA'),
    ('Mestrado'),
    ('Doutorado'),
    ('Certificação Profissional'),
    ('Curso Livre');


-- Inserir dados na tabela PRODUTO
INSERT INTO PRODUTO (nomeProduto, precoUnitario, descricaoProduto, idArea)
VALUES
    ('Laptop Gamer', 3500.00, 'Laptop com placa de vídeo dedicada e 16GB de RAM', 1),
    ('Jaqueta Jeans', 150.00, 'Jaqueta unissex, tamanho G', 2),
    ('Suco de Laranja', 6.99, 'Suco natural, 1 litro', 3),
    ('Cama Queen', 2000.00, 'Cama de casal, tamanho queen', 4),
    ('Bicicleta', 700.00, 'Bicicleta esportiva, aro 26', 5),
    ('Perfume', 250.00, 'Perfume importado, 100ml', 6),
    ('Enciclopédia', 300.00, 'Enciclopédia completa, 5 volumes', 7),
    ('Motocicleta', 18000.00, 'Motocicleta seminova, 250 cilindradas', 8),
    ('Boneca', 50.00, 'Boneca articulada, edição limitada', 9),
    ('Mesa de Jantar', 500.00, 'Mesa de jantar para 6 pessoas', 10);


-- Inserir dados na tabela VENDA
INSERT INTO VENDA (matricula, dataVenda)
VALUES
    (1, '2024-10-10'),
    (2, '2024-10-11'),
    (3, '2024-10-12'),
    (4, '2024-10-13'),
    (5, '2024-10-14'),
    (6, '2024-10-15'),
    (7, '2024-10-16'),
    (8, '2024-10-17'),
    (9, '2024-10-18'),
    (10, '2024-10-19');


-- Inserir dados na tabela telefone
INSERT INTO telefone (matricula, telefone)
VALUES
    (1, 11987654321),
    (2, 21987654321),
    (3, 31987654321),
    (4, 41987654321),
    (5, 51987654321),
    (6, 61987654321),
    (7, 71987654321),
    (8, 81987654321),
    (9, 91987654321),
    (10, 10198765432);


-- Inserir dados na tabela possui
INSERT INTO possui (idFormacao, idGerente)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);


-- Inserir dados na tabela comercializa
INSERT INTO comercializa (codigoVenda, codigoProduto, qtdProduto)
VALUES
    (1, 1, 2),
    (1, 2, 4),
    (2, 3, 3),
    (3, 4, 1),
    (4, 5, 5),
    (5, 6, 1),
    (6, 7, 4),
    (7, 8, 2),
    (8, 9, 1),
    (9, 10, 3);
