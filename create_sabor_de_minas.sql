CREATE DATABASE sabor_de_minas;
USE sabor_de_minas;

-- Criação das tabelas
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

