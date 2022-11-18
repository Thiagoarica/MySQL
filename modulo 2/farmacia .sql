

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
promocao varchar(255) NOT NULL,
controlado varchar(255) NOT NULL,

PRIMARY KEY (id)
);
CREATE TABLE  tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
finalidade varchar(255) NOT NULL,
valor decimal(6,2),
indicado varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- tabela 1 
INSERT INTO tb_categorias(promocao,controlado)
VALUES("10%"," tarjado  ");

INSERT INTO tb_categorias(promocao,controlado)
VALUES("14%","tarjado ");

INSERT INTO tb_categorias(promocao,controlado)
VALUES("15%","tarjado ");

INSERT INTO tb_categorias(promocao,controlado)
VALUES("17%","tarjado ");

INSERT INTO tb_categorias(promocao,controlado)
VALUES("18%","tarjado");
-- tabela 2
INSERT INTO tb_produtos (nome,finalidade ,valor,indicado,categoria_id)
VALUES ("lesotan", "calmante" ,300, "ädulto" , 1);

INSERT INTO tb_produtos (nome,finalidade ,valor,indicado,categoria_id)
VALUES ("lesotan", "calmante" ,300, "ädulto" , 1);


INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Adacneclean","Creme Contra acne",8.00,"Acne",1);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Eudora","Hidratante",8.00,"cremes",2);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Roacutan","comprimido",200.00,"Acne",2);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Dipirona","comprimido",10.00,"Dor",3);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Velija","comprimido",8.00,"fibromialgia",3);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Cloridrato de ciclobenzaprina","comprimido",8.00,"relaxante muscular",1);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Eutirox","comprimido",8.00,"Tireóide",2);

INSERT INTO tb_produtos(nome,finalidade ,valor,indicado,categoria_id)
VALUES("Coversiu","comprimido",8.00,"Pressão",1);
INSERT INTO tb_tb_produtos (nome,finalidade ,valor,indicado,categoria_id)
VALUES ("dipirona infantil", "febre " ,300, "crianca " , 2);

INSERT INTO tb_tb_produtos (nome,finalidade ,valor,indicado,categoria_id)
VALUES ("lufital", "febre " ,300, "crianca " , 2);




select * from tb_produtos where poder > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_produtos WHERE defesa BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome

SELECT * FROM tb_produtos where nome like "%l%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias on tb_produtos .categorias_id = tb_categorias.id and tb_categorias.id =2;










INSERT INTO tb_produtos (nome,finalidade ,valor,indicado,categoria_id)
VALUES ("rivotril ", "calmante" ,300, "ädulto" , 1);


INSERT INTO tb_produtos (nome,finalidade ,valor,indicado,categoria_id)
VALUES ("sorine ", "nariz " ,300, "ädulto" , 2);



