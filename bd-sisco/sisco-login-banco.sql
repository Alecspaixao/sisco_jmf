
-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS sisco DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE sisco;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS perfis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);

-- Tabela intermediária: usuario_perfil
CREATE TABLE IF NOT EXISTS usuario_perfil (
    usuario_id INT NOT NULL,
    perfil_id INT NOT NULL,
    PRIMARY KEY (usuario_id, perfil_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (perfil_id) REFERENCES perfis(id) ON DELETE CASCADE
);

-- Inserção de perfis padrão
INSERT INTO perfis (nome) VALUES 
('aluno'),
('professor'),
('gestor');
