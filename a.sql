CREATE DATABASE escola;
USE escola;

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,                 
    especialidade VARCHAR(100),                
    salario DECIMAL(10,2),                    
    uf CHAR(2)                                   
);

CREATE TABLE disciplina (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT,                           
    carga_horaria INT,
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1),
    data_nascimento DATE,
    nota_final DECIMAL(4,2),
    ativo BOOLEAN
);

CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT,
    modalidade VARCHAR(50)
);

CREATE TABLE matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE login (
    id_login INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    data_hora DATETIME,
    ip VARCHAR(45),
    sucesso BOOLEAN,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

-- Professores
INSERT INTO professor (nome, especialidade, salario, uf) VALUES
('Maria Silva', 'Matemática', 5500.00, 'SP'),
('João Souza', 'História', 4800.00, 'RJ');

-- Disciplinas
INSERT INTO disciplina (nome, id_professor, carga_horaria) VALUES
('Álgebra Linear', 1, 60),
('História Geral', 2, 80);

-- Alunos
INSERT INTO aluno (nome, sexo, data_nascimento, nota_final, ativo) VALUES
('Carlos Andrade', 'M', '2002-05-10', 8.5, TRUE),
('Fernanda Lima', 'F', '2003-08-22', 9.2, TRUE);

-- Cursos
INSERT INTO curso (nome, carga_horaria, modalidade) VALUES
('Engenharia', 3600, 'Presencial'),
('Direito', 3000, 'EAD');

-- Matrículas
INSERT INTO matricula (id_aluno, id_curso, data_matricula) VALUES
(1, 1, '2024-02-01'),
(2, 2, '2024-02-10');

-- Logins
INSERT INTO login (id_aluno, data_hora, ip, sucesso) VALUES
(1, '2024-05-01 08:30:00', '192.168.1.10', TRUE),
(2, '2024-05-01 09:15:00', '192.168.1.11', FALSE);


SELECT * FROM aluno;

SELECT
	m.id_matricula,
    a.nome AS aluno,
    c.nome AS curso,
    m.data_matricula
FROM matricula m
JOIN aluno a ON m.id_aluno = a.id_aluno
JOIN curso c ON m.id_curso = c.id_curso;

-- Professores 
INSERT INTO professor (nome, especialidade, salario, uf) VALUES
('Robinho Alves', 'Educação Física', 8800.00, 'SP');


-- Disciplinas
INSERT INTO disciplina (nome, id_professor, carga_horaria) VALUES
('Educação Física', 3, 40);


-- Alunos
INSERT INTO aluno (nome, sexo, data_nascimento, nota_final, ativo) VALUES
('Oruam', 'M', '2000-03-01', 9.9, TRUE);


-- Cursos
INSERT INTO curso (nome, carga_horaria, modalidade) VALUES
('Direito', 3600, 'Presencial');

-- Matrículas
INSERT INTO matricula (id_aluno, id_curso, data_matricula) VALUES
(4, 1, '2024-02-01');


-- Logins
INSERT INTO login (id_aluno, data_hora, ip, sucesso) VALUES
(4, '2024-05-01 08:30:00', '192.168.1.12', TRUE);

-- Professores 
INSERT INTO professor (nome, especialidade, salario, uf) VALUES
('Ronaldinho', 'Química', 6700.00, 'RJ');


-- Disciplinas
INSERT INTO disciplina (nome, id_professor, carga_horaria) VALUES
('Química', 5, 40);


-- Alunos
INSERT INTO aluno (nome, sexo, data_nascimento, nota_final, ativo) VALUES
('Neymar', 'M', '1992-02-05', 7.5, TRUE);


-- Cursos
INSERT INTO curso (nome, carga_horaria, modalidade) VALUES
('Química', 3600, 'Presencial');

-- Matrículas
INSERT INTO matricula (id_aluno, id_curso, data_matricula) VALUES
(6, 1, '2024-02-01');


-- Logins
INSERT INTO login (id_aluno, data_hora, ip, sucesso) VALUES
(6, '2024-05-01 08:30:00', '192.168.1.13', TRUE);








