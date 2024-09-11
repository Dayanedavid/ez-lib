
DROP SCHEMA IF EXISTS `ecommerce`;

CREATE SCHEMA `ecommerce`;
USE `ecommerce` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`book_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

--
CREATE TABLE IF NOT EXISTS `ecommerce`.`book` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `author` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(400) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO book_category(category_name) VALUES ('Romance');
INSERT INTO book_category(category_name) VALUES ('Suspense');
INSERT INTO book_category(category_name) VALUES ('Programação');
INSERT INTO book_category(category_name) VALUES ('Educação');
INSERT INTO book_category(category_name) VALUES ('Historia');


/* romance  inicio*/

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Agora e Para Sempre',
'Sophie Love',
'E um romance muito bem escrito, que fala sobre a luta de uma mulher (Emily) ´
para encontrar sua verdadeira identidade. A autora fez um belo trabalho na criação 
dos personagens e ao descrever o ambiente em que se passa a história.', 
'assets/images/books/romance1.jpg',
17.40, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('So o amor machuca assim ...',
'Paige Toon e Adriana Fidalgo',
'Quando descobre que o noivo está apaixonado por outra pessoa, Wren acha que jamais vai se recuperar..', 
'assets/images/books/romance2.jpg',
22.00, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Dominada pela Máfia ',
'Bia Carvalho',
'Cínico, sarcástico e ciente do poder que possui, ele não tem medo de sujar as mãos quando necessário e gosta de ter tudo sob seu controle e domínio.', 
'assets/images/books/romance3.jpg',
27.50, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Imperfeitos: Uma lua de mel no paraiso',
'Christina Lauren',
'Olive se sente como a gêmea azarada da casa: dos acidentes estranhamente 
inexplicáveis ao fracasso na vida profissional e amorosa ― nada dá certo para ela.', 
'assets/images/books/romance4.jpg',
16.90, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Orgulho e Preconceito ',
'Jane Austen',
'Orgulho e Preconceito é um dos mais aclamados romances da escritora inglesa Jane Austen. Publicado em 1813, 
revela como era a sociedade da época, quando os relacionamentos se 
desenrolavam de maneira mais lenta e romântica, no ritmo das cartas levadas por mensageiros a cavalo. ', 
'assets/images/books/romance5.jpg',
13.30, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Sempre foi você: Livro 1 ',
'Elizabeth Grey',
'O futuro de Ethan Fraser é promissor. Sua carreira é planejada de forma detalhada 
 e o fato de trabalhar com Violet Archer, sua melhor amiga, todos os dias é a cereja no topo do bolo.  ', 
'assets/images/books/romance6.jpg',
29.90, 
1);
/* romance  fim*/

/* SUSPENSE inicio*/
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A cirurgiã: Um thriller psicológico eletrizante',
'Leslie Wolfe',
'Cirurgiã renomada, esposa amorosa e... assassina? Antes de seu mundo desabar, a doutora Anne Wiley tinha uma vida perfeita.', 
'assets/images/books/suspense1.jpg',
80.00, 
2);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A Esposa Perfeita: Livro 1',
'Blake Pierce ',
'Especialista em perfis criminais em formação, Jessie Hunt, de 29 anos, 
descobre que se escondem segredos obscuros em sua nova cidade suburbana;', 
'assets/images/books/suspense2.jpg',
100.00, 
2);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A garota do lago: Summit Lake',
'Charlie Donlea ',
'Summit Lake, uma pequena cidade entre montanhas, é esse tipo de lugar,
 bucólico e com encantadoras casas dispostas à beira de um longo trecho de água intocada ', 
'assets/images/books/suspense5.jpg',
35.15, 
2);

/* SUSPENSE fim*/

/* Programacao inicio*/
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Entendendo Algoritmos',
'Aditya Bhargava',
'Um guia ilustrado para programadores e outros curiosos.', 
'assets/images/books/programacao1.jpg',
200.00, 
3);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Arquitetura de Software',
'Neal Ford, Mark Richards e outros',
'Arquitetura de Software: As Partes Difíceis Não há decisões fáceis na arquitetura de software.
 Pelo contrário, há muitas partes difíceis – problemas ou questões desafiadoras sem práticas recomendadas  – que forçam você
 a escolher entre vários tipos de concessões.', 
'assets/images/books/programacao2.jpg',
82.00, 
3);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Lógica de Programação e Algoritmos com JavaScript',
'Edécio Fernando Iepsen',
'Os conteúdos abordados em Lógica de Programação e Algoritmos são fundamentais a todos aqueles que desejam ingressar no universo
 da Programação de Computadores. Esses conteúdos, no geral, impõem algumas dificuldades aos iniciantes. ', 
'assets/images/books/programacao3.jpg',
82.00, 
3);



INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Introdução à Linguagem SQL',
'Thomas Nield',
'Atualmente as empresas estão coletando dados a taxas exponenciais e mesmo assim poucas pessoas sabem 
como acessá-los de maneira relevante. Se você trabalha em uma empresa ou é profissional de TI, 
este curto guia prático lhe ensinará como obter e transformar dados com o SQL de maneira significativa.  ', 
'assets/images/books/programacao4.jpg',
41.80, 
3);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Introdução à Programação com Python',
'Nilo Ney Coutinho Menezes',
'Este livro se destina ao iniciante em programação e foi escrito para ajudar o leitor autodidata a aprender a 
programar. Também pode ser utilizado em cursos de introdução à computação e mesmo em cursos mais avançados, 
nos quais o domínio das técnicas básicas de programação e da linguagem Python sejam requeridos. ', 
'assets/images/books/programacao5.jpg',
105.61, 
3);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Programador Autodidata',
'Cory Althoff',
'Este livro não é apenas sobre aprender a programar.
É sobre todas as outras coisas que você precisa saber que as aulas e os livros não ensinam. 
Trata-se de um roteiro, um guia que o levará de escrever seu primeiro programa a passar 
em sua primeira entrevista técnica. ', 
'assets/images/books/programacao6.jpg',
29.99, 
3);


/* Programacao fim*/
/* Educacao */
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('O Cérebro da Criança',
'Daniel J. Siegel, Tina Payne Bryson, e outros.',
'O Cérebro da Criança, número 1 em vendas na Amazon e best-seller do New York Times, lançado pela nVersos Editora. ', 
'assets/images/books/educacao1.jpg',
47.50, 
4);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Alfabetização: Por onde começar',
'Luciana Brites.',
'Alfabetizar vai além de capacitar alguém para entender a correlação entre letra e som, a fim de formar sílabas, palavras, frases e textos. ', 
'assets/images/books/educacao2.jpg',
26.11, 
4);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Disciplina Sem Drama',
'Daniel J. Siegel',
'Daniel J. Siegel, autor dos livros best-sellers internacionais "O cérebro da criança" e
 "O cérebro adolescente" e, Tina Payne Bryson, coautora de "O cérebro da criança".', 
'assets/images/books/educacao3.jpg',
29.90, 
4);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Entendendo Algoritimos ',
'Marco A. Furlan de Souza, Marcelo Marques Gomes, e outros',
'Com linguagem simples e didática – sem, no entanto, fugir da complexidade do assunto , o livro procura tornar prática a lógica de programação, 
além de mostrar aos estudantes um caminho mais adequado na construção dos algoritmos. ', 
'assets/images/books/educacao4.jpg',
74.40, 
4);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Guia Básico de Análise e Métrica ',
'Marcelo A Leite',
'Muitas contas em redes sociais de vídeos curtos são abandonadas porque os usuários acham que o algoritmo o persegue, 
que tem um chinês que quer prejudicá-lo, enfim, que algo conspira no universo contra ele.', 
'assets/images/books/educacao5.jpg',
16.90, 
4);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Racismo e antirracismo na educação',
'Eliane Cavalleiro',
'De que forma o racismo se estrutura no cotidiano escolar de crianças e adolescentes? ', 
'assets/images/books/educacao6.jpg',
50.06, 
4);

/* Historia Inicio*/

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Biblioteca Mundo Antigo',
'Rubem Alves',
'A Biblioteca Mundo Antigo Box é um conjunto de três livros que exploram as 
civilizações antigas que ajudaram a moldar o mundo como o conhecemos hoje.', 
'assets/images/books/historia1.jpg',
71.76, 
5);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('1499 : O Brasil antes de Cabral ',
'Reinaldo José Lopes',
'Saiba como uma mulher das cavernas azarada, caciques com mania de grandeza e conquistadores canibais 
estão revolucionando o que sabemos sobre o Brasil antes de Cabral. ', 
'assets/images/books/historia2.jpg',
37.42, 
5);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Biblioteca Grandes Civilizações',
'Claudio Blanc e Camelot Editora',
'O Caibalion, que desde sua primeira publicação, em dezembro de 1908, é referência nos círculos esotéricos, 
é um tratado que encerra os mais significativos princípios do antigo Hermetismo ', 
'assets/images/books/historia3.jpg',
12.00, 
5);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Biblioteca Grandes Civilizações',
'Claudio Blanc e Camelot Editora',
'O Caibalion, que desde sua primeira publicação, em dezembro de 1908, é referência nos círculos esotéricos, 
é um tratado que encerra os mais significativos princípios do antigo Hermetismo ', 
'assets/images/books/historia4.jpg',
90.00, 
5);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('As cruzadas: A Historia oficial',
'Thomas Asbridge',
'A HISTÓRIA DEFINITIVA DE UM EVENTO QUE MARCOU UMA ERA. No século XI, um vasto exército cristão, 
convocado para a guerra santa pelo papa, invadiu o mundo muçulmano do Mediterrâneo oriental,
tomando posse de Jerusalém, uma cidade reverenciada por ambas as religiões. ', 
'assets/images/books/historia5.jpg',
69.93, 
5);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('História das Cruzadas ',
'Voltaire',
'Começa com um jovem, Cândido, que está vivendo uma vida protegida em um paraíso edênico e
 sendo doutrinado com otimismo leibniziano por seu mentor, o professor Pangloss. ', 
'assets/images/books/historia6.jpg',
69.93, 
5);


/* Inicio do Romance */
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Doce ou Travessura?',
'Gisele Souza',
'A autora Gisele Souza brinda seus leitores com um conto repleto de desejo e erotismo.', 
'assets/images/books/romance7.jpg',
99.40, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Na superfície: Entre destino e escolhas',
'Dani Mart',
'Quanto pode custar uma noite inocente, com uma amiga e shots de tequila?
Para Jessica Lopes, toda uma nova vida, um recomeço e problemas. Da noite de diversão se lembra apenas de alguns flashes 
vergonhosos e do sorriso de Fausto Braga, um homem que parece perfeito demais para ser verdade.', 
'assets/images/books/romance8.jpg',
200.00, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Olhos de Anjo: Parte 1',
'Mah Romarics',
'Aninha é uma adolescente de 16 anos. Daniel é seu melhor amigo desde a infância. Ela já nem lembrava 
desde quando se conheciam ou quando foi a primeira vez que se perdeu naqueles olhos de anjo. Como já disse a Clarice Lispector:
 Não me lembro mais qual foi nosso começo. Sei que não começamos pelo começo. Já era amor antes de ser.', 
'assets/images/books/romance9.jpg',
180.00, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Ao Menos Uma Vez',
'Diany Cardoso',
'Anna estava prestes a dar um passo importante em seu futuro quando o último homem que esperava ver retorna à sua vida...
Apenas para tentá-la.Apenas para destruí-la.', 
'assets/images/books/romance10.jpg',
89.00, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('The Vampire Prince ',
'Juliette N. Banks',
'Powerful vampire prince Brayden Moretti doesn’t want to be king, but his brother has fallen ill. With hostile
vampire rebels threatening the throne, and no cure in sight, Brayden distracts himself with sassy Willow. ', 
'assets/images/books/romance11.jpg',
189.00, 
1);


/* romance  fim*/

/* SUSPENSE inicio*/
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Em Busca de Heróis',
'Morgan Rice',
'O ANEL DO FEITICEIRO reúne todos os ingredientes para um sucesso instantâneo: tramas, intrigas, mistério,
 bravos cavaleiros e florescentes relacionamentos repletos de corações partidos, decepções e traições. 
 O livro manterá o leitor entretido por horas e agradará a pessoas de todas as idades.
 Recomendado para fazer parte da biblioteca permanente de todos os leitores do gênero de fantasia.', 
'assets/images/books/suspense7.jpg',
60.00, 
2);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A Garota do Lago',
'MARCIO ARDENGHE D. PERES',
'Olá, eu me chamo Christian. Tenho apenas vinte e poucos anos e gostaria de voltar no tempo, mudar o destino. Mas não posso!', 
'assets/images/books/suspense8.jpg',
69.00, 
2);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Arena Um: Traficantes De Escravos',
'Morgan Rice',
'Eu admito, antes de ARENA UM, eu nunca havia lido alguma coisa pós-apocalíptica antes. 
Eu nunca imaginei que seria algo que fosse me agradar…', 
'assets/images/books/suspense9.jpg',
50.00, 
2);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A garota do lago: Livro 2',
'MARCIO ARDENGHE D. PERES',
'Olhe eu aqui de novo...
Você chegou à segunda parte da história. Aconteceram algumas coisas que lhe deixaram curioso', 
'assets/images/books/suspense10.jpg',
10.00, 
2);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A Garota do Lago - Volume Único',
'MARCIO ARDENGHE D. PERES',
'Olá, eu me chamo Christian. Tenho apenas vinte e poucos anos e gostaria de voltar no tempo, mudar o destino. Mas não posso!
Fiquei encarregado de guardar um segredo que não pode ser revelado.', 
'assets/images/books/suspense11.jpg',
9.90, 
2);


/* SUSPENSE fim*/

/* Programacao inicio*/
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Mindset: A nova psicologia do sucesso',
'Carol S. Dweck',
'ph.D., professora de psicologia na Universidade Stanford e especialista internacional em sucesso e motivação, 
desenvolveu, ao longo de décadas de pesquisa, um conceito fundamental: a atitude mental com que encaramos a vida,
 que ela chama de “mindset”, é crucial para o sucesso', 
'assets/images/books/programacao7.jpg',
20.00, 
3);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('2h de Python: Guia Pratico',
'Marcelo Fabiano',
'Explore o fascinante mundo da programação em Python 
com nosso livro especializado, projetado para proporcionar
um aprendizado eficiente em apenas 2 horas! .', 
'assets/images/books/programacao8.jpg',
12.00, 
3);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Mais esperto que o Diabo',
'Napoleon Hill',
'Neste livro, inédito no Brasil, você vai descobrir, após 75 anos de segredo, por meio dessa entrevista exclusiva que Napoleon Hill fez,
 quebrando o código secreto da mente do Diabo: Quem é o Diabo? ', 
'assets/images/books/programacao9.jpg',
11.00, 
3);



INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Os Três Irmãos e a Busca pelo Tesouro Perdido ',
'Alice Castro',
'Os Três Irmãos e a Busca pelo Tesouro Escondido é uma emocionante aventura que acompanha três irmãos corajosos em uma jornada
 cheia de mistérios e desafios. Pedro, Sofia e Lucas vivem em uma pequena vila no meio da floresta, onde ouvem lendas sobre um
 tesouro escondido há séculos.  ', 
'assets/images/books/programacao10.jpg',
12.80, 
3);

/* Programacao fim*/
/* Educacao */
INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('O melhor alimento para a melhor idade',
'Codeagro',
'A alimentação adequada é responsável por auxiliar na manutenção da saúde e, consequentemente, 
na qualidade de vida em todos os estágios, principalmente na terceira idade.Esta edição mostra cuidados e dicas com a alimentação
 e receitas elaboradas e testadas na Cozinha Experimental da Codeagro.', 
'assets/images/books/educacao7.jpg',
22.50, 
4);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Alimentação saudável: mais cor e sabor no seu prato',
'Codeagro',
'O Governo do Estado de São Paulo, visando a promoção da segurança alimentar e nutricional, proporciona fácil acesso a informações,
 por meio de publicações, cursos e meios de comunicação. ', 
'assets/images/books/educacao8.jpg',
10.50,
4);


INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Alimentação escolar',
'Codeagro',
'O Governo do Estado de São Paulo, visando a promoção da segurança alimentar e nutricional,
 proporciona fácil acesso a informações, através de publicações, cursos e meios de comunicação.', 
'assets/images/books/educacao9.jpg',
19.90, 
4);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Alimentação Saudável  ',
'Codeagro',
'A alimentação adequada é um importante fator para a promoção e manutenção da saúde durante todas as fases da vida.
 Dessa forma, essa publicação objetiva incentivar práticas alimentares saudáveis e apresenta receitas elaboradas e 
 testadas na Cozinha Experimental da Codeagro. ', 
'assets/images/books/educacao10.jpg',
14.40, 
4);

 

/* Historia Inicio*/

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Histórias Curtas Para Crianças',
'Carl D Nuttall',
'Esta é a minha terceira seleção de contos para crianças e devo dizer que é tão agradável
 como se estivesse escrevendo minha primeira história. ', 
'assets/images/books/historia7.jpg',
11.76, 
5);
 
 INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Liberto da Religião',
'Paulo Bitencourt',
'Os melhores livros sobre Ateísmo são os escritos por Paulo Bittencourt, porque, diferentemente de Richard Dawkins,
Christopher Hitchens e Sam Harris, que nunca foram religiosos, ele foi criado na igreja, estudou Teologia e, portanto,
fala por experiência. ', 
'assets/images/books/historia8.jpg',
12.76, 
5);

 INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('Bíblia Sagrada NVT: ',
'Mundo Cristão',
'A NVT (Nova Versão Transformadora) resgata o prazer na leitura da Bíblia Sagrada, graças à cuidadosa escolha de palavras 
no português contemporâneo que expressam com a máxima fidelidade os textos escritos em suas línguas originais, proporcionando
 o entendimento da Palavra de Deus com extraordinária clareza.',
'assets/images/books/historia9.jpg',
11.76, 
5);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('O bebê, a secretária & o CEO ',
'Olívia Molinari',
'Julia Souza almeja a mesma coisa que todo mundo após sair da faculdade: encontrar o emprego dos sonhos e ser bem-sucedida.',
'assets/images/books/historia10.jpg',
10.76, 
1);

INSERT INTO book 
(name,
author, 
description, 
image_url,
price, 
category_id) 
VALUES 
('A babá virgem da filha do CEO ',
'Maria Amanda Dantas',
'Se você está procurando por mais uma história clichê que migrou da Wattpad para a Amazon, onde o CEO é lindo e só um pouquinho 
arrogante, e a mocinha, além de linda, inocente e virgem, vira a cabeça dele...',
'assets/images/books/historia11.jpg',
9.76, 
1);