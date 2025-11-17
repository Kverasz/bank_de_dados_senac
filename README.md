# Banco de Dados — Projeto SENAC (Tema: Academia SenacFit)

Este repositório contém a criação de um banco de dados fictício para uma academia chamada **SenacFit**, desenvolvido para praticar comandos SQL DDL e DML.

## Objetivo do Projeto
- Compreender e aplicar comandos SQL DDL (Data Definition Language).  
- Inserir, atualizar e manipular dados usando comandos DML (Data Manipulation Language).  
- Organizar um projeto no GitHub com boas práticas de documentação.  

---

# DDL — Data Definition Language
Usado para **criar, alterar e excluir** estruturas do banco de dados.

### Comandos usados no projeto:
- `CREATE DATABASE`  
- `CREATE TABLE`  

### Exemplo utilizado:
```sql
CREATE TABLE Instrutores (
    instrutor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);
```

---

# DML — Data Manipulation Language
Comandos usados para inserir, consultar, alterar e remover dados.

### Comandos usados no projeto:
- `INSERT ` 
- `UPDATE ` 
- `DELETE ` 
- `SELECT ` 

### Exemplos utilizados:

```sql
-- INSERT
INSERT INTO Planos (nome_plano, valor_mensal) VALUES
('Premium', 149.90),
('Básico', 79.90),
('Intermediário', 109.90);

-- SELECT
SELECT * FROM Planos;

-- UPDATE
UPDATE Planos 
SET valor_mensal = 159.90 
WHERE nome_plano = 'Premium';

-- DELETE
DELETE FROM Planos
WHERE nome_plano = 'Básico';

```

---

# Estrutura do Repositório

```
bank_de_dados_senac/
│
├── README.md
└── AcademiaSenacFit.sql
```

---

## Como executar o script

1. Abra seu programa SQL (MySQL Workbench, DBeaver, HeidiSQL, etc.).
2. Abra o arquivo `AcademiaSenacFit.sql` ou copie seu conteúdo.
3. Execute o script completo no seu servidor MySQL/MariaDB.
4. O banco **academia_SenacFit** será criado automaticamente com as tabelas e dados de exemplo.

Se preferir, execute apenas partes do script (por exemplo, apenas as instruções `CREATE TABLE`) para testar etapas específicas.\

---

## Comandos úteis de verificação

- **Ver bancos existentes:**

```
SHOW DATABASES;
```

- **Ver tabelas de um banco (após USE academia_SenacFit;):**

```
SHOW TABLES;
```

- **Ver estrutura de uma tabela:**

```
DESCRIBE Alunos;
```

- **Deletar banco** (cuidado — remove tudo)**:**

```
DROP DATABASE IF EXISTS academia_powerfit;
```

---

## Sobre o Banco de Dados

Este projeto contém as seguintes tabelas principais:

- **Planos**: Tipos de planos da academia (Básico, Intermediário, Premium).
- **Alunos**: Cadastro dos alunos e vínculo com planos.
- **Instrutores**: Lista de instrutores e suas especialidades.
- **Treinos**: Registros de treinos vinculados a alunos e instrutores.

As tabelas trazem exemplos de **chaves primárias** (`PRIMARY KEY`) e **chaves estrangeiras** (`FOREIGN KEY`) para demonstrar relacionamentos simples.

---

## Conclusão

Este projeto serviu para praticar:

- Criação de bancos e tabelas (DDL).
- Inserção e manipulação de dados (DML).
- Organização de um repositório GitHub com documentação clara.

---
