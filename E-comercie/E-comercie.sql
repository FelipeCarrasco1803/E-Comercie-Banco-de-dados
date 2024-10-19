-- Cria o banco de dados
CREATE DATABASE E_comercie;

-- Usa o banco de dados criado
USE E_comercie;

-- Cria a tabela de Usuários
CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(50) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

-- Cria a tabela de Categorias
CREATE TABLE Categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

-- Cria a tabela de Produtos
CREATE TABLE Produtos (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id)
);

-- Cria a tabela de Pedidos
CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    data_pedido DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);

-- Cria a tabela de Detalhes do Pedido
CREATE TABLE Detalhes_Pedido (
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (pedido_id, produto_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);


-- Inserindo usuários
INSERT INTO Usuarios (nome, email, senha, endereco) VALUES 
('Maria Silva', 'maria.silva@example.com', 'senha123', 'Rua A, 123'),
('João Pereira', 'joao.pereira@example.com', 'senha456', 'Rua B, 456'),
('Ana Costa', 'ana.costa@example.com', 'senha789', 'Rua C, 789');

-- Inserindo categorias
INSERT INTO Categorias (nome) VALUES 
('Eletrônicos'),
('Roupas'),
('Alimentos');

-- Inserindo produtos
INSERT INTO Produtos (nome, descricao, preco, categoria_id) VALUES 
('Smartphone', 'Smartphone de última geração', 2999.99, 1),
('Camiseta', 'Camiseta de algodão', 49.90, 2),
('Chocolate', 'Chocolate ao leite', 4.50, 3);

-- Inserindo pedidos
INSERT INTO Pedidos (usuario_id, data_pedido, total) VALUES 
(1, '2024-10-01', 2999.99),
(2, '2024-10-02', 54.40);

-- Inserindo detalhes do pedido
INSERT INTO Detalhes_Pedido (pedido_id, produto_id, quantidade) VALUES 
(1, 1, 1),  -- Pedido 1 contém 1 Smartphone
(2, 2, 1),  -- Pedido 2 contém 1 Camiseta
(2, 3, 2);  -- Pedido 2 contém 2 Chocolates
