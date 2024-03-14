USE hi_academia;

INSERT INTO cargos (nome_cargo)
VALUES ('Gerente'), ('Personal Trainer'), ('Recepicionista');

INSERT INTO funcionario (nome_funcionario, cpf_funcionario, cargo, senha, cargos_id_cargos)
VALUES ('Renato Roberto Lorenzo da Luz', '136.418.637-32', 'Gerente', '1qa2ws', 1), ('Vitória Flávia Barros', '403.542.516-86', 
'Personal Trainer', '1q2w3e', 2), ('Rosa Mariah Isabel das Neves', '070.720.982-08', 'Personal Trainer', '4r5t6y', 2), 
('Bryan Pedro Mendes', '620.563.437-62', 'Personal Trainer', '7u8i9o', 2), ('Kauê Enzo da Rocha', '715.436.896-98', 'Personal Trainer', 
'0p1q2w', 2), ('Luís Marcos Ian Costa', '026.421.920-16', 'Recepicionista', '34567', 3), ('Benedita Vitória Cavalcanti', '761.483.824-66', 
'Recepicionista', '89012', 3);

INSERT INTO aluno (nome_aluno, cpf_aluno, treino, personal_trainer, valor, frequencia)
VALUES ('Matheus Renato Heitor Figueiredo', '361.751.583-50', 'Cardio e Hipertrofia', 'Vitória Flávia Barros e Rosa Mariah Isabel',
'89,90', 5), ('Fábio Luís Nascimento', '087.434.043-83', 'Cardio e Crossfit', 'Vitória Flávia de Barros e Kauê Enzo da Rocha',
'109,90', 13), ('Antonio Bento Rodrigues', '521.311.251-00', 'Hipertrofia e Crossfit', 'Bryan Pedro Mendes', '109,90', 9), ('Elisa Regina Analu Moreira',
'480.003.494-93', 'Hipertrofia', 'Rosa Mariah Isabel das Neves', '89,90', 19), ('Maria Alícia Olivia da Cruz', '407.996.660-17',
'Cardio', 'Bryan Pedro Mendes', '89,90', 17);

INSERT INTO aluno_funcionario (aluno_id_aluno, funcionario_id_funcionario)
VALUES (1, 2), (1, 3), (2, 2), (2, 5), (3, 4), (4, 3), (5, 5);

INSERT INTO treinos (nome_treino, aluno_funcionario_id_aluno_funcionarios)
VALUES ('Cardio', 1), ('Hipertrofia', 2), ('Cardio', 3), ('Crossfit', 4), ('Hipertrofia e Crossfit', 5), ('Hipertrofia', 6),
('Cardio', 7);

SELECT*FROM aluno;
SELECT*FROM aluno_funcionario;
SELECT*FROM cargos;
SELECT*FROM funcionario;
SELECT*FROM treinos;