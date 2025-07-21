-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS sistema_web;
USE sistema_web;

-- Criar a tabela usuario
CREATE TABLE IF NOT EXISTS usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);