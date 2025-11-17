CREATE DATABASE academia_SenacFit;
USE academia_SenacFit;

CREATE TABLE Planos (
    plano_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_plano VARCHAR(100) NOT NULL,
    valor_mensal DECIMAL(10,2) NOT NULL
);

CREATE TABLE Alunos (
    aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    telefone VARCHAR(20),
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
);

CREATE TABLE Instrutores (
    instrutor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

CREATE TABLE Treinos (
    treino_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    instrutor_id INT,
    descricao VARCHAR(255),
    data_treino DATE,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (instrutor_id) REFERENCES Instrutores(instrutor_id)
);

INSERT INTO Planos (nome_plano, valor_mensal) VALUES
('Básico', 79.90),
('Intermediário', 99.90),
('Premium', 129.90);

INSERT INTO Alunos (nome, idade, telefone, plano_id) VALUES
('Carlos Eduardo', 28, '8199684-4402', 1),
('Ana Gabriela', 22, '8197856-2345', 3),
('Marcos Alberto', 35, '8198503-3144', 2);

INSERT INTO Instrutores (nome, especialidade) VALUES
('João Ferreira', 'Musculação'),
('Paula Maria', 'Cardio'),
('Ricardo Costas', 'Crossfit');

INSERT INTO Treinos (aluno_id, instrutor_id, descricao, data_treino) VALUES
(1, 1, 'Treino de musculação - peito e tríceps', '2025-02-10'),
(2, 2, 'Treino de cardio - aeróbico intenso', '2025-02-11'),
(3, 3, 'Treino funcional - crossfit iniciante', '2025-02-12');

SELECT * FROM Planos;
SELECT nome_plano, valor_mensal 
FROM Planos 
WHERE valor_mensal > 100;

UPDATE Planos 
SET valor_mensal = 159.90 
WHERE nome_plano = 'Premium';

DELETE FROM Planos
WHERE nome_plano = 'Básico';

