CRIAR BANCO DE  DADOS  db_games ;

-- Selecionado o banco de dados para uso
USE db_games;

-- Cria a tabela Categorias
CRIAR  TABELA  tb_categorias (
  id BIGINT  NOT NULL AUTO_INCREMENT,
  tipo VARCHAR ( 255 ) NÃO NULO ,
  CHAVE PRIMÁRIA (id)
  );

-- Inserir dados na tabela Categorias
INSERT INTO tb_categorias (tipo) VALUES ( " E-Sports " );
INSERT INTO tb_categorias (tipo) VALUES ( " Ação " );
INSERT INTO tb_categorias (tipo)value ( " Aventura " );
INSERT INTO tb_categorias (tipo) VALUES ( " Estratégia " );
INSERT INTO tb_categorias (tipo) VALUES ( " RPG " );
INSERT INTO tb_categorias (tipo) VALUES ( " Simulação " );
INSERT INTO tb_categorias (tipo) VALUES ( " Outros " );

-- Lista todas as categorias
SELECT  *  FROM tb_categorias;

-- Cria a tabela Usuários
CRIAR  TABELA  tb_usuários (
  id BIGINT  NOT NULL AUTO_INCREMENT,
  usuário VARCHAR ( 255 ) NOT NULL ,
  nome VARCHAR ( 255 ) NÃO NULO ,
VARCHAR ( 255 ) NÃO NULL   senha ,
  foto VARCHAR ( 255 ),
  data_nascimento DATE  NOT NULL ,
  CHAVE PRIMÁRIA ( ` id` )
  );

-- Insere dados na tabela Usuários
INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " admin@email.com.br " , " Administrador " , " 123a456*78 " , " https://i.imgur.com/FETvs2O.jpg " , " 2001-11-22 " );

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " mariana@email.com.br " , " Mariana Maria da Silva " , " 123@456&78 " , " https://i.imgur.com/mB3VM2N.jpg " , " 22-11-2001 " );

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " adriana@email.com.br " , " Adriana Kaylany de Souza " , " 123l456t78 " , " https://i.imgur.com/5M2p5Wb.jpg " , " 26-12-2002 " );

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " quico@email.com.br " , " Frederico Santos " , " 123b456#78 " , " https://i.imgur.com/Sk5SjWE.jpg " , " 26-12-2003 " );

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " florinda@email.com.br " , " Florinda Mezza " , " 123!456?78 " , " https://i.imgur.com/NtyGneo.jpg " , " 26-12-2002 " );

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " evelise@email.com.br " , " Evelise Franco " , " 123f456v78 " , " https://i.imgur.com/EcJG8kB.jpg " , " 2001-12-26 " );

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento)
VALORES ( " julmiara@email.com.br " , " Julmiara Correa " , " 123@!456g78 " , " https://i.imgur.com/T12NIp9.jpg " , " 26-12-2000 " );

-- Lista de todos os usuários
SELECT  *  FROM tb_usuários;

-- Cria a tabela Produtos
CRIE  TABELA  tb_produtos (
  id BIGINT  NOT NULL AUTO_INCREMENT,
  nome VARCHAR ( 255 ) NÃO NULO ,
  descrição VARCHAR ( 500 ),
  console VARCHAR ( 255 ) NÃO NULO ,
  volume INT ,
  preco DECIMAL ( 19 , 2 ) NÃO NULO ,
  foto VARCHAR ( 255 ),
  categoria_id BIGINT ,
  usuario_id BIGINT ,
  CHAVE PRIMÁRIA (id),
  FOREIGN KEY (usuario_id) REFERÊNCIAS tb_usuarios (id),
  FOREIGN KEY (categoria_id) REFERÊNCIAS tb_categorias (id)
  );

-- Inserir dados na tabela Produtos
INSERT INTO tb_produtos (nome, descrição, console, quantidade, preço, foto, categoria_id, usuario_id)
VALORES ( " Kena: Bridge of Spirits " , " Kena: Bridge of Spirits é o projeto de estreia da Ember Lab e impressiona ainda mais a cada replay do trailer. O estilo único de arte mistura elementos marcantes da Pixar e do Studio Ghibli, resultou em uma incrível animação. " , " PS5 " , 50 , 500. 00 , " https://i.imgur.com/YqasKzX.jpg " , 3 , 2 ) ;

INSERT INTO tb_produtos (nome, descrição, console, quantidade, preço, foto, categoria_id, usuario_id)
VALORES ( " Returnal " , " um shooter com uma pegada um pouco diferente do habitual. A visão da câmera um pouco mais próxima da protagonista promete uma experiência singular com narrativa assustadora " , " PS5 " , 10 , 400. 00 , " https : //i.imgur.com/Xd9vF7t.jpg " , 6 , 3 );

INSERT INTO tb_produtos (nome, descrição, console, quantidade, preço, foto, categoria_id, usuario_id)
VALUES ( " Resident Evil Village " , " Novo game da franquia de zumbis da Capcom e promete dar uma continuação majestosa ao legado do survival horror. Mais uma vez ficaremos no controle de Ethan Winters e escaparemos com a vida de um misterioso vilarejo do interior europeu . " , " PS5 " , 20 , 800.00 , " https://i.imgur.com/iQMTaVC.jpg " , 3 , 4 ) ; _

INSERT INTO tb_produtos (nome, descrição, console, quantidade, preço, foto, categoria_id, usuario_id)
VALORES ( " God of War Ragnarok " , " God of War Ragnarok promete dar continuidade à história de Kratos e Atreus. O Deus da Guerra se encaixou muito bem nos moldes da mitologia nórdica e conquistou até o GoTY em 2018 — em disputa acirrada contra Red Dead Redemption 2. " , " PS5 " , 100 ,   700.00 , " https://i.imgur.com/8qnAKwO.jpg " , 3 , 5 ) ;

INSERT INTO tb_produtos (nome, descrição, console, quantidade, preço, foto, categoria_id)
VALUES ( " Halo Infinite " , " O jogo colocará os jogadores de volta na sagrada armadura espartana de Master Chief, enquanto ele combate os Banidos, uma nova ameaça à humanidade, e promete mais liberdade do que qualquer jogo recente da série, com níveis intensos . " , " XBOX " , 80 , 1000. 00 , " https://i.imgur.com/ZnDckc2.jpg " , 3 ) ;

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preço, foto)
VALUES ( " Flight Simulator " , " O Flight Simulator promete aos jogadores a liberdade de criar seus próprios planos de vôo e decolar em qualquer lugar do mundo, voando dia e noite em condições climáticas realistas. " , " XBOX " , 15 , 250 . 00 , " https://i.imgur.com/cYl5vhh.jpg " );

-- Lista de todos os produtos
SELECT  *  FROM tb_produtos;