--  << aula1exer2 evolução3 >>
-- 
-- 			SCRIPT DE POPULA (DML)
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
--                 objetos do banco de dadosNAO implmentados (Perfis
--                 e Usuarios);
--              => Ajuste para melhor apresentacao do script;
--
--   23/10/2024 => Correções levantadas pelo professor para a evolução 2, como: 
--                 remoção da entidade associativa em substituição para dois novos relacionamentos,
--                 remoção da entidade de formação escolar, correção das chaves estrangeiras e correções
--                 nos scripts;
--
--   04/11/2024 => Adicionando novas tuplas em todas as tabelas e também na tabela nova: gerencia;
--              => Toda tabela agora possui 10 tuplas inseridas;

-- ---------------------------------------------------------

USE aula1exer2evolucao3;

INSERT INTO PESSOA (cpfPessoa, nomePessoa, senha) VALUES
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

INSERT INTO GERENTE (cpfPessoa, email, formacao) VALUES
(12398765400, 'Lucas@gmail.com', 'SUPERIOR'),
(98732165400, 'Cláudia@gmail.com', 'SUPERIOR'),
(11122244400, 'Gabriel@gmail.com', 'SUPERIOR'),
(44455577700, 'Larissa@gmail.com', 'SUPERIOR'),
(77788844400, 'Ricardo@gmail.com', 'SUPERIOR'),
(99988822200, 'Aline@gmail.com', 'SUPERIOR'),
(55566644400, 'Júlio@gmail.com', 'SUPERIOR'),
(22233355500, 'Paula@gmail.com', 'SUPERIOR'),
(66677711100, 'André@gmail.com', 'SUPERIOR'),
(88877744400, 'Camila@gmail.com', 'SUPERIOR');

INSERT INTO EMPREGADO (cpfPessoa, rua, numero, bairro, cidade, estado, cep, complemento) VALUES
(12398765400, 'Rua Almirante Barroso', 32, 'Maria Farinha', 'Paulista', 'PE', 53427635, NULL),
(66677711100, 'Travessa Trinta e Cinco', 72, 'Loteamento Jardim Florença', 'Gravataí', 'RS', 94160090, NULL),
(88877744400, 'Travessa Trinta e Cinco', 727, 'Navegantes', 'Porto Alegre', 'RS', 90240560, NULL),
(32132132100, 'Rua Padre Vitório Galiane', 592, 'Provedor', 'Santana', 'AP', 68927435, NULL),
(45665445600, 'Rua João Neto da Silva', 286, 'Nova Esperança', 'Rio Branco', 'AC', 69915244, NULL),
(78998778900, 'Rua Antonio Gomes de Carvalho', 255, 'Gramame', 'João Pessoa', 'PB', 58069455, NULL),
(11223366700, 'Rua Nelson Cavaquinho', 14, 'Curicica', 'Rio de Janeiro', 'RJ', 22711130, NULL),
(55667722100, 'Avenida Fioravante Cypriano', 54, 'Marbrasa', 'Cachoeiro de Itapemirim', 'RS', 29313691, NULL),
(99900033300, 'Travessa dos Bondes', 226, 'Vila Ferroviária I', 'Ponta Porã', 'MS', 79904002, NULL),
(88899933300, 'Rua Planície do Tabajara', 400, 'Pajuçara', 'Natal', 'RN', 59123465, NULL);

INSERT INTO telefone (matricula, telefone) VALUES
(1, 6736693527),
(2, 6838227852),
(3, 2738560254),
(4, 27983389695),
(5, 3139163703),
(6, 31988677500),
(7, 2726337906),
(8, 8436872013),
(9, 84999463257),
(10, 9428230149);

INSERT INTO AREA (nomeArea) VALUES
('Vendas'),
('Marketing'),
('Produção'),
('Operações'),
('Estoque'),
('Distribuição'),
('Logísticaa'),
('Compras'),
('Varejo'),
('Financeiro');

INSERT INTO gerencia (idArea, idGerente, cpfPessoa) VALUES
(1, 1, 12398765400),
(1, 2, 98732165400),
(2, 3, 11122244400),
(4, 3, 11122244400),
(3, 4, 44455577700),
(5, 5, 77788844400),
(6, 6, 99988822200),
(7, 6, 99988822200),
(8, 7, 55566644400),
(9, 9, 66677711100),
(10, 10, 88877744400);

INSERT INTO PRODUTO (idArea, precoUnitario, nomeProduto, descricaoProduto) VALUES
(4, 16.60, 'Desodorante', NULL),
(4, 25.00, 'Shampoo', 'Shampoo para cabelos lisos'),
(3, 12.30, 'Caderno', NULL),
(3, 8.50, 'Caneta BIC', 'Caneta esfereográfica azul'),
(4, 10.00, 'Sabonete DOVE', NULL),
(4, 5.20, 'Escova de dentes', 'Escova de dentes do flamengo'),
(4, 20.10, 'Perfume', 'Perfume do homem-aranha'),
(3, 18.90, 'Lápis de cor', 'Caixa de lápis de cor com 24 unidades'),
(5, 35.50, 'Bolsa feminina', 'Bolsa feminina de couro sintético'),
(7, 45.00, 'Calculadora científica', 'Calculadora científica com funções avançadas');

INSERT INTO VENDA (matricula, cpfPessoa, dtVenda) VALUES
(1, 12398765400, '2024-05-20'),
(1, 12398765400, '2024-05-20'),
(2, 66677711100, '2024-01-20'),
(3, 88877744400, '2024-01-25'),
(4, 32132132100, '2024-06-06'),
(4, 32132132100, '2024-06-06'),
(5, 45665445600, '2024-08-10'),
(6, 78998778900, '2024-08-25'),
(6, 78998778900, '2024-08-25'),
(7, 11223366700, '2024-09-01');

INSERT INTO participa (codigoVenda, codigoProduto, quantidade) VALUES
(1, 1, 5),
(2, 1, 4),
(3, 3, 4),
(4, 4, 4),
(5, 4, 2),
(6, 5, 10),
(7, 6, 20),
(8, 6, 10),
(9, 7, 5),
(10, 10, 2);