CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
promocao varchar(255) NOT NULL,
integral varchar(255) NOT NULL,

PRIMARY KEY (id)
);
CREATE TABLE  tb_cursos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
finalidade varchar(255) NOT NULL,
valor decimal(6,2),
classe varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(promocao,integral)
VALUES("10%"," full ");

INSERT INTO tb_categorias(promocao,integral)
VALUES("14%"," full ");

INSERT INTO tb_categorias(promocao,integral)
VALUES("14%"," full ");
INSERT INTO tb_produtos (nome,finalidade ,valor,classe,categoria_id)
VALUES ("informatica ", "ead" ,300, "ädulto" , 1);
INSERT INTO tb_produtos (nome,finalidade ,valor,classe,categoria_id)
VALUES (" gerente ", "ead" ,400, "ädulto" , 2);
INSERT INTO tb_produtos (nome,finalidade ,valor,classe,categoria_id)
VALUES ("informatica ", "ead" ,400, "ädulto" , 1);
INSERT INTO tb_produtos (nome,finalidade ,valor,classe,categoria_id)
VALUES ("informatica ", "ead" ,500, "ädulto" , 1);
INSERT INTO tb_produtos (nome,finalidade ,valor,classe,categoria_id)
VALUES ("informatica ", "ead" ,6000, "ädulto" , 1);
INSERT INTO tb_produtos (nome,finalidade ,valor,classe,categoria_id)
VALUES ("informatica ", "ead" ,7000, "ädulto" , 1);
select * from tb_cursos  where valor > 2000;


SELECT * FROM tb_cursos WHERE valor BETWEEN 1000 AND 2000;


SELECT * FROM tb_cursos where nome like "%l%";
SELECT * FROM tb_cursos INNER JOIN tb_categorias on tb_cursos .categorias_id = tb_categorias.id and tb_categorias.id =2;

