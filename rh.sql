CREATE DATABASE db_RH;
USE db_RH;

CREATE TABLE tb_colaborador(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    MATRICULA INT,
    SALARIO int,
    cargo VARCHAR(155) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_colaborador(nome, matricula, salario, cargo) 
VALUES("pedro", 122345, 2000, "auxiliar ");

INSERT INTO tb_colaborador(nome, matricula, salario, cargo) 
VALUES("roberto", 122345, 2000, "auxiliar ");

INSERT INTO tb_colaborador(nome, matricula, salario, cargo) 
VALUES("RODRIGO", 122345, 1000, "auxiliar1 ");

INSERT INTO tb_colaborador(nome, matricula, salario, cargo) 
VALUES("roBERVAL", 122345, 3000, "gerente  ");
SELECT * FROM tb_colaborador;

SELECT * FROM tb_colaborador WHERE salario > 2000;
SELECT * FROM tb_colaborador WHERE salario < 2000;
UPDATE tb_colaborador SET nome =  "ëvariotondo" WHERE id = 1;




