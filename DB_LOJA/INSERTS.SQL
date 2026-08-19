------------------------------------------------------------
-- POPULAÇÃO COMPLETA DO BANCO DB_LOJA
------------------------------------------------------------

USE DB_LOJA;
GO

------------------------------------------------------------
-- 1. ENDEREÇOS
------------------------------------------------------------
INSERT INTO ENDERECOS (PAIS, ESTADO, CIDADE, ENDERECO, CEP) VALUES
('Brasil', 'SP', 'São Paulo', 'Av Paulista, 1000', '01311000'),
('Brasil', 'RJ', 'Rio de Janeiro', 'Rua das Laranjeiras, 55', '22240003'),
('Brasil', 'MG', 'Belo Horizonte', 'Av Amazonas, 500', '30180000'),
('Brasil', 'PR', 'Curitiba', 'Rua XV de Novembro, 900', '80020000'),
('Brasil', 'RS', 'Porto Alegre', 'Av Ipiranga, 3000', '90610000'),
('Brasil', 'SC', 'Florianópolis', 'Rua Felipe Schmidt, 200', '88010000');

------------------------------------------------------------
-- 2. CLIENTES
------------------------------------------------------------
INSERT INTO CLIENTES (CPF, NOME, COMPLETO, ID_ENDERECO) VALUES
('12345678901', 'João Silva', 'Cliente desde 2020', 1),
('98765432100', 'Maria Oliveira', 'Cliente VIP', 2),
('45678912300', 'Carlos Souza', 'Cliente recorrente', 3),
('78912345600', 'Ana Santos', 'Cliente novo', 4),
('32165498700', 'Paulo Mendes', 'Cliente recorrente', 5);

------------------------------------------------------------
-- 3. CLIENTES TELEFONES
------------------------------------------------------------
INSERT INTO CLIENTES_TELEFONES (TELEFONE, ID_CLIENTE) VALUES
('11988887777', 1),
('11999998888', 1),
('21977776666', 2),
('31966665555', 3),
('41955554444', 4),
('51944443333', 5);

------------------------------------------------------------
-- 4. CLIENTES EMAILS
------------------------------------------------------------
INSERT INTO CLIENTES_EMAILS (EMAIL, ID_CLIENTE) VALUES
('joao@gmail.com', 1),
('maria@hotmail.com', 2),
('carlos@yahoo.com', 3),
('ana@gmail.com', 4),
('paulo@outlook.com', 5);

------------------------------------------------------------
-- 5. MÉTODOS DE PAGAMENTO
------------------------------------------------------------
INSERT INTO METODOS_PAGAMENTOS (ID_CLIENTE, TIPO, NUMERO, BANDEIRA) VALUES
(1, 'Crédito', '5555444433332222', 'Visa'),
(1, 'Débito', '4444333322221111', 'Master'),
(2, 'Crédito', '1111222233334444', 'Elo'),
(3, 'Pix', 'carlos@pix.com', 'PIX'),
(4, 'Crédito', '9999888877776666', 'Visa'),
(5, 'Débito', '2222333344445555', 'Master');

------------------------------------------------------------
-- 6. FORNECEDORES
------------------------------------------------------------
INSERT INTO FORNECEDORES (CNPJ, RAZAO_SOCIAL, REGIME_TRIBUTARIO, ID_ENDERECO, COMPLETO) VALUES
('12345678000199', 'Tech Distribuidora', 'Simples Nacional', 1, 'Fornecedor de eletrônicos'),
('98765432000188', 'Casa dos Games', 'Lucro Presumido', 2, 'Fornecedor de consoles'),
('45678912000177', 'Mega Eletro', 'Simples Nacional', 3, 'Fornecedor de eletrodomésticos');

------------------------------------------------------------
-- 7. FORNECEDORES TELEFONES
------------------------------------------------------------
INSERT INTO FORNECEDORES_TELEFONES VALUES
('1133334444', 1),
('2132221111', 2),
('3131112222', 3);

------------------------------------------------------------
-- 8. FUNCIONÁRIOS
------------------------------------------------------------
INSERT INTO FUNCIONARIOS (MATRICULA, CTPS, NOME, CARGO, ID_ENDERECO, COMPLETO) VALUES
(1001, '12345678900', 'Roberto Lima', 'Vendedor', 4, 'Funcionário desde 2019'),
(1002, '98765432100', 'Fernanda Costa', 'Gerente', 5, 'Funcionária desde 2018'),
(1003, '55566677700', 'Lucas Pereira', 'Atendente', 6, 'Funcionário desde 2021');

------------------------------------------------------------
-- 9. FUNCIONÁRIOS TELEFONES
------------------------------------------------------------
INSERT INTO FUNCIONARIOS_TELEFONES VALUES
('11911112222', 1001),
('21922223333', 1002),
('31933334444', 1003);

------------------------------------------------------------
-- 10. PRODUTOS
------------------------------------------------------------
INSERT INTO PRODUTOS (NOME, ESPECICACAO, PRECO, QUANTIDADE, PRECO_CUSTO, PESO, ID_FORNECEDOR) VALUES
('Notebook Lenovo', 'i5, 8GB RAM, SSD 256GB', 3500, 20, 2500, 2.0, 1),
('Mouse Gamer', 'RGB, 7200 DPI', 150, 100, 80, 0.2, 1),
('PlayStation 5', 'Console Sony', 4500, 10, 3500, 4.5, 2),
('Geladeira Brastemp', 'Frost Free 400L', 3200, 5, 2500, 60, 3),
('Air Fryer Mondial', '3.5L Preta', 350, 30, 200, 3, 3);

------------------------------------------------------------
-- 11. AVALIAÇÕES
------------------------------------------------------------
INSERT INTO AVALIACAO (ID_CLIENTE, ID_PRODUTOR, NOTA, DESCRICAO) VALUES
(1, 1, 5, 'Excelente notebook'),
(2, 3, 4, 'Console muito bom'),
(3, 5, 5, 'Air Fryer ótima'),
(4, 2, 3, 'Mouse razoável'),
(5, 4, 4, 'Geladeira boa');

------------------------------------------------------------
-- 12. PEDIDOS
------------------------------------------------------------
INSERT INTO PEDIDOS (ID_CLIENTE, ID_FUNCIONARIO, FRETE, VALOR_TOTAL, IMPOSTO, QUANTIDADE_ITENS, COMPLEMENTO, ID_ENDERECO) VALUES
(1, 1001, 20, 3520, 200, 1, 'Entrega rápida', 1),
(2, 1002, 30, 4530, 300, 1, 'Urgente', 2),
(3, 1003, 15, 365, 25, 2, 'Retirar na loja', 3),
(4, 1001, 25, 175, 10, 1, 'Entrega normal', 4),
(5, 1002, 40, 3240, 200, 1, 'Agendado', 5);

------------------------------------------------------------
-- 13. PRODUTOS X PEDIDO
------------------------------------------------------------
INSERT INTO PRODUTOS_X_PEDIDO (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, VALOR_UNITARIO) VALUES
(1, 1, 1, 3500),
(2, 3, 1, 4500),
(3, 2, 2, 150),
(4, 5, 1, 350),
(5, 4, 1, 3200);

------------------------------------------------------------
-- 14. PAGAMENTOS X PEDIDOS
------------------------------------------------------------
INSERT INTO PGMT_X_PEDIDOS (ID_PAGAMENTO, ID_PEDIDO) VALUES
(1, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5);

------------------------------------------------------------
-- FIM DO SCRIPT
------------------------------------------------------------
------------------------------------------------------------
-- MAIS ENDEREÇOS
------------------------------------------------------------
INSERT INTO ENDERECOS (PAIS, ESTADO, CIDADE, ENDERECO, CEP) VALUES
('Brasil', 'GO', 'Goiânia', 'Av Goiás, 1200', '74000000'),
('Brasil', 'BA', 'Salvador', 'Rua da Bahia, 300', '40000000'),
('Brasil', 'PE', 'Recife', 'Av Boa Viagem, 900', '51000000');

------------------------------------------------------------
-- MAIS CLIENTES
------------------------------------------------------------
INSERT INTO CLIENTES (CPF, NOME, COMPLETO, ID_ENDERECO) VALUES
('11122233344', 'Bruno Rocha', 'Cliente com muitos pedidos', 7),
('55566677788', 'Juliana Alves', 'Cliente com divergências', 8),
('99988877766', 'Marcos Tavares', 'Cliente com vários itens', 9);

------------------------------------------------------------
-- MAIS TELEFONES DE CLIENTES
------------------------------------------------------------
INSERT INTO CLIENTES_TELEFONES (TELEFONE, ID_CLIENTE) VALUES
('62999998888', 6),
('71988887766', 7),
('81977776655', 8);

------------------------------------------------------------
-- MAIS EMAILS DE CLIENTES
------------------------------------------------------------
INSERT INTO CLIENTES_EMAILS (EMAIL, ID_CLIENTE) VALUES
('bruno@gmail.com', 6),
('juliana@hotmail.com', 7),
('marcos@yahoo.com', 8);

------------------------------------------------------------
-- MAIS MÉTODOS DE PAGAMENTO
------------------------------------------------------------
INSERT INTO METODOS_PAGAMENTOS (ID_CLIENTE, TIPO, NUMERO, BANDEIRA) VALUES
(6, 'Crédito', '1111222233334444', 'Visa'),
(6, 'Pix', 'bruno@pix.com', 'PIX'),
(7, 'Débito', '5555666677778888', 'Master'),
(8, 'Crédito', '9999000011112222', 'Elo');

------------------------------------------------------------
-- MAIS FUNCIONÁRIOS
------------------------------------------------------------
INSERT INTO FUNCIONARIOS (MATRICULA, CTPS, NOME, CARGO, ID_ENDERECO, COMPLETO) VALUES
(1004, '22233344455', 'Mariana Duarte', 'Vendedora', 7, 'Funcionária desde 2022'),
(1005, '33344455566', 'Thiago Ramos', 'Supervisor', 8, 'Funcionário desde 2020');

------------------------------------------------------------
-- MAIS PRODUTOS
------------------------------------------------------------
INSERT INTO PRODUTOS (NOME, ESPECICACAO, PRECO, QUANTIDADE, PRECO_CUSTO, PESO, ID_FORNECEDOR) VALUES
('Teclado Mecânico', 'Switch Blue RGB', 250, 50, 150, 0.8, 1),
('Monitor LG 24"', 'Full HD, HDMI', 850, 40, 600, 3.5, 1),
('Xbox Series X', 'Console Microsoft', 4700, 15, 3500, 5.0, 2),
('Microondas Electrolux', '20L Branco', 450, 25, 300, 12, 3),
('Ventilador Arno', 'Turbo Silencioso', 200, 60, 120, 4, 3);

------------------------------------------------------------
-- MAIS AVALIAÇÕES (incluindo divergências)
------------------------------------------------------------
INSERT INTO AVALIACAO (ID_CLIENTE, ID_PRODUTOR, NOTA, DESCRICAO) VALUES
(6, 1, 4, 'Bom notebook, mas poderia ser mais rápido'),
(6, 3, 5, 'Excelente console'),
(7, 2, 2, 'Mouse veio com defeito'),
(7, 5, 5, 'Air Fryer perfeita'),
(8, 3, 3, 'Console ok, mas caro'),
(8, 1, 5, 'Notebook muito bom');

------------------------------------------------------------
-- MAIS PEDIDOS (com divergências de itens)
------------------------------------------------------------
INSERT INTO PEDIDOS (ID_CLIENTE, ID_FUNCIONARIO, FRETE, VALOR_TOTAL, IMPOSTO, QUANTIDADE_ITENS, COMPLEMENTO, ID_ENDERECO) VALUES
(6, 1004, 35, 5100, 300, 3, 'Entrega expressa', 7),
(6, 1005, 20, 400, 20, 2, 'Retirar na loja', 7),
(7, 1004, 50, 9000, 500, 4, 'Entrega premium', 8),
(8, 1005, 15, 1050, 60, 3, 'Entrega normal', 9),
(8, 1001, 25, 250, 15, 1, 'Entrega rápida', 9);

------------------------------------------------------------
-- PRODUTOS X PEDIDO (divergências reais)
------------------------------------------------------------
INSERT INTO PRODUTOS_X_PEDIDO (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, VALOR_UNITARIO) VALUES
-- Pedido 6 (3 itens diferentes)
(6, 1, 1, 3500),
(6, 2, 2, 150),
(6, 6, 1, 250),

-- Pedido 7 (2 itens, um repetido)
(7, 2, 3, 150),
(7, 5, 1, 350),

-- Pedido 8 (4 itens diferentes)
(8, 3, 1, 4500),
(8, 10, 1, 850),
(8, 11, 1, 4700),
(8, 12, 1, 450),

-- Pedido 9 (3 itens)
(9, 6, 2, 250),
(9, 7, 1, 850),
(9, 13, 1, 200),

-- Pedido 10 (1 item)
(10, 13, 1, 200);

------------------------------------------------------------
-- PAGAMENTOS X PEDIDOS (incluindo múltiplos pagamentos)
------------------------------------------------------------
INSERT INTO PGMT_X_PEDIDOS (ID_PAGAMENTO, ID_PEDIDO) VALUES
(7, 6),
(8, 6), -- pedido 6 pago com 2 métodos
(9, 7),
(10, 8),
(11, 9),
(12, 10);
