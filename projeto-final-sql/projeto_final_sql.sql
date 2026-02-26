-- =====================================================
-- PROJETO FINAL SQL
-- Sistema de Gerenciamento de Cursos
-- Desenvolvido por: Paloma Vitória
-- =====================================================

-- Remove o banco caso já exista
DROP DATABASE IF EXISTS projeto_final_sql;

-- Cria o banco de dados
CREATE DATABASE projeto_final_sql;

-- Seleciona o banco
USE projeto_final_sql;

-- =====================================================
-- TABELA: alunos
-- Armazena informações dos alunos cadastrados
-- =====================================================
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE,
    sexo ENUM('M','F','Outro'),
    data_cadastro DATE DEFAULT (CURRENT_DATE)
);

-- =====================================================
-- TABELA: cursos
-- Armazena informações dos cursos disponíveis
-- =====================================================
CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    carga_horaria INT NOT NULL,
    nivel ENUM('Iniciante','Intermediario','Avancado'),
    valor DECIMAL(10,2),
    data_criacao DATE DEFAULT (CURRENT_DATE)
);

-- =====================================================
-- TABELA: matriculas
-- Relaciona alunos e cursos (N:N)
-- =====================================================
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    data_matricula DATE DEFAULT (CURRENT_DATE),
    status ENUM('Ativo','Concluido','Cancelado') DEFAULT 'Ativo',
    nota_final DECIMAL(5,2),
    certificado_emitido BOOLEAN DEFAULT FALSE,

    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- =====================================================
-- INSERÇÃO DE DADOS
-- =====================================================

INSERT INTO alunos (nome, email, data_nascimento, sexo) VALUES
('Ana Souza', 'ana@email.com', '2002-05-10', 'F'),
('Carlos Lima', 'carlos@email.com', '2000-09-22', 'M'),
('Marina Alves', 'marina@email.com', '2001-12-03', 'F');

INSERT INTO cursos (nome, descricao, carga_horaria, nivel, valor) VALUES
('MySQL do Zero', 'Curso completo de banco de dados MySQL', 40, 'Iniciante', 199.90),
('Modelagem de Dados', 'Aprenda modelagem relacional profissional', 30, 'Intermediario', 249.90),
('SQL Avancado', 'Consultas complexas e otimizacao', 50, 'Avancado', 299.90);

INSERT INTO matriculas (id_aluno, id_curso, status, nota_final, certificado_emitido) VALUES
(1, 1, 'Concluido', 9.5, TRUE),
(2, 1, 'Ativo', NULL, FALSE),
(3, 2, 'Concluido', 8.7, TRUE),
(1, 3, 'Ativo', NULL, FALSE);

-- =====================================================
-- CONSULTAS DE RELATORIO
-- =====================================================

-- Lista completa de matriculas com nome do aluno e curso
SELECT 
    alunos.nome AS aluno,
    cursos.nome AS curso,
    matriculas.status,
    matriculas.nota_final
FROM matriculas
INNER JOIN alunos 
    ON matriculas.id_aluno = alunos.id_aluno
INNER JOIN cursos 
    ON matriculas.id_curso = cursos.id_curso;

-- Media de notas por curso
SELECT 
    cursos.nome AS curso,
    AVG(matriculas.nota_final) AS media_notas
FROM matriculas
INNER JOIN cursos 
    ON matriculas.id_curso = cursos.id_curso
WHERE matriculas.nota_final IS NOT NULL
GROUP BY cursos.nome;

-- Faturamento por curso
SELECT 
    cursos.nome AS curso,
    COUNT(matriculas.id_matricula) AS total_matriculas,
    COUNT(matriculas.id_matricula) * cursos.valor AS faturamento
FROM matriculas
INNER JOIN cursos 
    ON matriculas.id_curso = cursos.id_curso
GROUP BY cursos.nome, cursos.valor
ORDER BY faturamento DESC;