-- SISTEMA DE GESTÃO E ANÁLISE DE LEADS
-- Loja de vendas de automóveis

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE veiculos (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    placa VARCHAR(7) NOT NULL UNIQUE,
    preco DECIMAL(10,2) NOT NULL,
    semi_novo BOOLEAN NOT NULL
);

CREATE TABLE vendedores (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    ativo BOOLEAN NOT NULL
);

CREATE TABLE status_leads (
    id_status INT PRIMARY KEY AUTO_INCREMENT,
    nome_status VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE leads (
    id_lead INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    id_vendedor INT,
    id_status INT NOT NULL,
    data_criacao DATETIME NOT NULL,

  -- Referências
    FOREIGN KEY id_cliente REFERENCES clientes(id_cliente),
    FOREIGN KEY id_veiculo REFERENCES veiculos(id_veiculo),
    FOREIGN KEY id_vendedor REFERENCES vendedores(id_vendedor),
    FOREIGN KEY id_status REFERENCES status_leads(id_status)
);

CREATE TABLE interacoes_leads (
    id_interacao INT PRIMARY KEY AUTO_INCREMENT,
    id_lead INT NOT NULL,
    id_vendedor INT,
    tipo_interacao VARCHAR(30) NOT NULL,
    data_interacao DATETIME NOT NULL,
    observacao VARCHAR(255),

  -- Referencias
    FOREIGN KEY id_lead REFERENCES leads(id_lead),
    FOREIGN KEY id_vendedor REFERENCES vendedores(id_vendedor)
);
