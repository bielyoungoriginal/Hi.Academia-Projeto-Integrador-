DROP DATABASE IF EXISTS hi_academia;
CREATE DATABASE Hi_Academia;
USE Hi_Academia;

CREATE TABLE aluno (
  id_aluno INT NOT NULL AUTO_INCREMENT,
  nome_aluno VARCHAR(45),
  mensalidade BIT(2) DEFAULT 0,
  cpf_aluno VARCHAR(45),
  treino VARCHAR(45),
  personal_trainer VARCHAR(45),
  valor VARCHAR(45),
  frequencia INT,
  PRIMARY KEY (id_aluno));

CREATE TABLE cargos (
  id_cargos INT NOT NULL AUTO_INCREMENT,
  nome_cargo VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_cargos));

CREATE TABLE funcionario (
  id_funcionario INT NOT NULL AUTO_INCREMENT,
  nome_funcionario VARCHAR(45),
  cpf_funcionario VARCHAR(45),
  cargo VARCHAR(45),
  senha VARCHAR(30),
  cargos_id_cargos INT NOT NULL,
  PRIMARY KEY (id_funcionario),
  INDEX fk_funcionario_cargos1_idx (cargos_id_cargos ASC),
  CONSTRAINT fk_funcionario_cargos1
    FOREIGN KEY (cargos_id_cargos)
    REFERENCES cargos (id_cargos)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE aluno_funcionario (
  id_aluno_funcionarios INT NOT NULL AUTO_INCREMENT,
  aluno_id_aluno INT NOT NULL,
  funcionario_id_funcionario INT NOT NULL,
  PRIMARY KEY (id_aluno_funcionarios),
  INDEX fk_aluno_treinos_aluno_idx (aluno_id_aluno ASC),
  INDEX fk_aluno_treinos_funcionario1_idx (funcionario_id_funcionario ASC),
  CONSTRAINT fk_aluno_treinos_aluno
    FOREIGN KEY (aluno_id_aluno)
    REFERENCES aluno (id_aluno)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_aluno_treinos_funcionario1
    FOREIGN KEY (funcionario_id_funcionario)
    REFERENCES funcionario (id_funcionario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE treinos (
  id_treinos INT NOT NULL AUTO_INCREMENT,
  nome_treino VARCHAR(45) NOT NULL,
  aluno_funcionario_id_aluno_funcionarios INT NOT NULL,
  PRIMARY KEY (id_treinos),
  INDEX fk_treinos_aluno_funcionario1_idx (aluno_funcionario_id_aluno_funcionarios ASC),
  CONSTRAINT fk_treinos_aluno_funcionario1
    FOREIGN KEY (aluno_funcionario_id_aluno_funcionarios)
    REFERENCES aluno_funcionario (id_aluno_funcionarios)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);