drop database db_generation_game_online;
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);
INSERT INTO tb_classes (descricao)
VALUES ("pedreiro supremo" );

INSERT INTO tb_classes (descricao)
VALUES ("engenheiro master");

INSERT INTO tb_classes (descricao)
VALUES ("feiticeiro maliguino ");



CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int, 
sexo varchar(255) NOT NULL,
poder int,
defesa int,
vitalidade int,
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome,idade, sexo , poder ,  defesa, vitalidade, classe_id)
VALUES("loderval", 20, "masculino ","200",10 ,100, 1 );
INSERT INTO tb_personagens(nome,idade, sexo , poder ,  defesa, vitalidade, classe_id)
VALUES("Jujuagiota ", 20, "masculino ",3000 ,10 ,100, 1 );
INSERT INTO tb_personagens(nome,idade, sexo , poder ,  defesa, vitalidade, classe_id)
VALUES(" vpx ", 20, "masculino ",400 ,10 ,1200, 2 );
INSERT INTO tb_personagens(nome,idade, sexo , poder ,  defesa, vitalidade, classe_id)
VALUES("thiagobrabo  ", 20, "masculino ",6000 ,1000 ,1000, 3 );
INSERT INTO tb_personagens(nome,idade, sexo , poder ,  defesa, vitalidade, classe_id)
VALUES("slarlet ", 20, "feminino ",300,3000 ,3000, 3 );
INSERT INTO tb_personagens(nome,idade, sexo , poder ,  defesa, vitalidade, classe_id)
VALUES(" lulu ", 20, "feminino ",300,1200 ,10000, 2 );
-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

select * from tb_personagens where poder > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome

SELECT * FROM tb_personagens where nome like "%l%";
SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_personagens.classe_id = tb_classes.id and tb_classes.id =2;







