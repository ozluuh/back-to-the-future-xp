-- CHARACTERS
insert into t_btf_character(id_character, nm_character, dt_birth, in_age, nm_actor, in_relevance, in_importance, ds_character, im_profile) values(sq_btf_character.nextval, 'Marty McFly', '1968-12-06', 17, 'Michael J. Fox', 1, 1, 'Marty McFly é um residente americano de Hill Valley, Califórnia. Ele é o segundo viajante do tempo do mundo (depois de Einstein), o primeiro a viajar ao passado e o primeiro humano a viajar no tempo. Ele também era um estudante do ensino médio na Hill Valley High School em 1985. Ele é o melhor amigo do Dr. Emmett Brown, que revelou sua primeira invenção de trabalho para ele. Enquanto ele estava em 1955, ele usou o pseudônimo Calvin Klein.', 'pf-michael-j-fox.jpg');
insert into t_btf_character(id_character, nm_character, dt_birth, in_age, nm_actor, in_relevance, in_importance, ds_character, im_profile) values(sq_btf_character.nextval, 'Dr. Emmett Brown', '1968', 77, 'Christopher Lloyd', 1, 2, 'O Dr. Emmett Brown é um residente americano de Hill Valley, Califórnia. Ele foi o inventor da máquina do tempo DeLorean. Ele é o terceiro viajante no tempo do mundo (depois de Einstein e Marty McFly), o segundo a viajar para a frente no tempo (depois de Einstein), o primeiro humano a viajar para a frente no tempo e o segundo humano a viajar no tempo (depois de Marty).', 'pf-christopher-lloyd.jpg');
insert into t_btf_character(id_character, nm_character, dt_birth, in_age, nm_actor, in_relevance, in_importance, ds_character, im_profile) values(sq_btf_character.nextval, 'Lorraine Baines McFly', '1938', 47, 'Lea Thompson', 1, 2, 'Lorraine Baines McFly é a mãe de Dave, Linda e Marty McFly e esposa de George McFly. Lorraine gostava da atenção dos meninos quando estava na escola, e muitos deles eram atraídos por ela, incluindo George McFly e Biff Tannen.', 'pf-lea-thompson.jpg');
insert into t_btf_character(id_character, nm_character, dt_birth, in_age, nm_actor, in_relevance, in_importance, ds_character, im_profile) values(sq_btf_character.nextval, 'Jennifer Jane Parker McFly', '1967-10-29', 17, 'Claudia Wells', 2, 2, 'Jennifer Jane Parker McFly era a namorada, e mais tarde a esposa, de Marty McFly. Jennifer foi a quarta viajante do tempo do mundo e a terceira humana. Ela era filha de Danny Parker Jr. e Betty Parker, e neta de Danny Parker e sua esposa Betty Lapinski. Jennifer e Marty pareciam ser "sérios" o suficiente para que ele a apresentasse a seu melhor amigo, o inventor local Dr. Emmett Brown, a quem ela primeiro considerou excêntrico e estranho. Jennifer é principalmente uma pessoa positiva, sabendo o que dizer a Marty se ele precisasse de ânimo e imaginando que vida feliz ela poderia ter no futuro.', 'pf-claudia-wells.jpg');
insert into t_btf_character(id_character, nm_character, dt_birth, in_age, nm_actor, in_relevance, in_importance, ds_character, im_profile) values(sq_btf_character.nextval, 'George McFly', '1938-04-01', 47, 'Crispin Glover', 2, 2, 'George e Lorraine se casaram em 7 de dezembro de 1958, em 1963 seu primeiro filho, Dave, nasceu. Linda o seguiu em 1966 e Marty em 1968. Apesar dessas mudanças, em 1985, George permaneceu praticamente o mesmo de quando tinha 17 anos. Ele era dominado por seu agora supervisor Biff, a maioria de seus colegas e até mesmo seus vizinhos, e até manteve os mesmos hairstylers. George não teve coragem de se defender de si mesmo ou mesmo de sua esposa, o que a deprimiu tanto que ela se tornou alcoólatra, fumante e obesa. A história da vida de George seria reescrita quando Marty viajasse de volta ao passado.', 'pf-crispin-glover.jpg');
insert into t_btf_character(id_character, nm_character, dt_birth, in_age, nm_actor, in_relevance, in_importance, ds_character, im_profile) values(sq_btf_character.nextval, 'Biff Tannen', '1937-03-27', 48, 'Tom Wilson', 2, 2, 'Biff Howard Tannen nasceu em 1937, filho de Irving Thomas "Kid" Tannen e Myra Benson em Hill Valley, Califórnia. Kid e Myra se casaram em 6 de dezembro de 1936, simplesmente com o propósito de fazer parecer que Biff não nasceu fora do casamento. Os dois se separaram imediatamente após o casamento, e nenhum dos pais queria Biff. Por causa disso, a mãe de Tannen, Gertrude Tannen, ficou com a custódia dele. Antes de deixar o filho, Kid deu a Gertrude uma certidão de nascimento falsa, informando que era datada para o mês seguinte, embora a data não seja mostrada. Biff era bisneto de Buford "Mad Dog" Tannen. Ele não era muito inteligente e só conseguiu terminar o ensino médio intimidando George McFly para fazer o dever de casa por ele. Biff costumava ter prazer em chamar George de "inseto irlandês". Ele era temido pela maioria de seus colegas de escola. A única pessoa de quem temia era o Sr. Strickland. Em 1955, ele se cercou de uma gangue composta por (Match, Skinhead e 3-D).', 'pf-tom-wilson.jpg');
-- EVENTS
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty falha na Batalha das Bandas', 'Marty faz o teste junto a sua banda mas é interrompido por "barulho excessivo"', '1985');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty encontra o carro danificado', 'Marty testemunha Biff intimidar seu pai e é informado que o carro está danificado. Ele é informado por sua irmã que Jennifer tentou chamá-lo três vezes, com Lorraine, sua mãe, explicando que ela nunca fez o que ele estava fazendo com George', '1985');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Dr. Brown liga para Marty', 'Dr. Brown pede para Marty encontrar ele 1:15am no Shopping Dois Pinheiros e levar a camera para filmar a sua maior invenção', '1985');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'A primeira viagem no tempo', 'McFly testemunha a primeira viagem no tempo pelo Einstein (cachorro do Dr. Brown)', '1985');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Dr. Brown morre', 'Dr. Brown é baleado por terroristas líbios', '1985');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty volta ao passado', 'Marty viaja no tempo para 5 de novembro 1955 após acidentalmente atingir 88mph (140km/h)', '1985');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty chega em 1955', 'Marty chega em 1955 do 1985 original, na fazenda de Otis Peabody (também conhecida como Rancho Dois Pinheiros) no futuro local do Shopping Dois Pinheiros. O filho de Peabody, Sherman, pensa que Marty é um alienígena e Otis o expulsa. Marty derruba um dos dois pinheiros do Velho Peabody. Peabody mais tarde relatou que viu um "estrangeiro", mas foi declarado louco e foi enviado para o County Asylum', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty impede o primeiro contato dos seus pais', 'Marty acidentalmente evita o primeiro encontro de seus futuros pais, George McFly e Lorraine Baines, sendo atropelado no lugar de George', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty encontra o Dr. Brown', 'Marty encontra o Dr. Brown e mostra a sua invenção da máquina do tempo no DeLorean', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty fica sabendo sobre os perigos de interferir em eventos', 'Dr. Brown percebe que Marty interferiu no primeiro encontro de seus pais e que ele e seus irmãos serão apagados da existência, a menos que Marty consiga colocá-los juntos', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Primeira tentativa de unir os pais', 'Marty, conhecido como "Calvin Klein", vai para a Hill Valley High School para tentar juntar George e Lorraine, mas ela tem uma queda por Marty em vez de George', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty se disfarça e confronta George', 'Marty, vestindo um traje de radiação e se descrevendo como "Darth Vader, um extraterrestre do planeta Vulcano", visita George no meio da noite, para tentar convencê-lo a levar Lorraine ao baile naquele sábado', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Marty derrota Biff', 'Marty derrota Biff Tannen em uma perseguição de skate em torno da Courthouse Square, fazendo com que Biff e sua gangue colidam com um caminhão de esterco estacionado', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'Lorraine segue Marty', 'Lorraine segue Marty e pergunta se ele convidaria ela para o baile Encantamento no fundo do mar', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'O plano para o baile', 'Marty e George bolam um plano para sábado à noite, que fará com que George se torne um "lutador" por Lorraine', '1955');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'O plano para o baile', 'Marty e George bolam um plano para sábado à noite, que fará com que George se torne um "lutador" por Lorraine', '1955');
-- CHAR-EVENT
insert into t_btf_character_event(id_event, id_character, in_age) values(1, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(1, 4, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(2, 5, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(2, 6, 48);
insert into t_btf_character_event(id_event, id_character, in_age) values(3, 2, 77);
insert into t_btf_character_event(id_event, id_character, in_age) values(3, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(4, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(4, 2, 77);
insert into t_btf_character_event(id_event, id_character, in_age) values(5, 2, 77);
insert into t_btf_character_event(id_event, id_character, in_age) values(6, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(7, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(8, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(8, 5, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(9, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(9, 2, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(10, 2, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(10, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(11, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(11, 5, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(11, 3, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(12, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(12, 5, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(13, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(13, 6, 18);
insert into t_btf_character_event(id_event, id_character, in_age) values(14, 3, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(14, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(14, 2, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(15, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(15, 5, 17);
-- CORRECTION: EVENTS DUPLICATE
UPDATE t_btf_event
SET nm_event = 'A volta no tempo',
    ds_event = 'Marty McFly decide voltar no tempo 10min antes do horário original de viagem no tempo, para evitar que o Dr. Brown seja morto'
WHERE id_event = 16
-- EVENTS: 17
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'O Pinheiro Solitário', 'Marty chega no "futuro" mas o carro para de funcionar e ele avista os Líbios indo em direção ao doutor, chegando ao Shopping é possível ver que agora ele é conhecido como Shopping Pinheiro Solitário e novamente avista a morte do Dr. Brown', '1985A');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'E quanto a estragar aos fatos futuros?', 'Marty se aproxima do Dr. Brown, logo após ver ele mesmo voltando ao passado, em prantos e descobre que o Dr. Brown está vivo, após ler a carta que McFly havia escrito "no passado" para ele', '1985A');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'A virada', 'Marty descobre que toda a sua família obtém sucesso na vida e deixam de ser desajeitados, medrosos e afins', '1985A');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'O carro danificado?', 'Marty é questionado por sua mãe se não vai ao encontro de Jennifer durante a noite mas Marty diz que não há como já que o carro está quebrado. Todos ficam surpresos e é possível ver que agora o perdedor é o Biff, encerando o carro', '1985A');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'O sucesso de George', 'George finalmente publica o seu primeiro livro', '1985A');
insert into t_btf_event(id_event, nm_event, ds_event, in_temporal_position) values(sq_btf_event.nextval, 'O futuro?', 'Marty ganha a caminhonete que tanto desejava e finalmente reencontra Jennifer quando são interrompidos pelo Dr. Brown que os informa que precisam ir para o futuro "dar um jeito" nos filhos deles', '1985A');
-- CHAR-EVENT
insert into t_btf_character_event(id_event, id_character, in_age) values(16, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(17, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(17, 2, 77);
insert into t_btf_character_event(id_event, id_character, in_age) values(18, 2, 77);
insert into t_btf_character_event(id_event, id_character, in_age) values(18, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(19, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(19, 5, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(19, 3, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(20, 5, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(20, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(20, 6, 48);
insert into t_btf_character_event(id_event, id_character, in_age) values(21, 5, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(21, 3, 47);
insert into t_btf_character_event(id_event, id_character, in_age) values(22, 1, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(22, 4, 17);
insert into t_btf_character_event(id_event, id_character, in_age) values(22, 2, 47);
-- COMMIT ALL TRANSACTIONS
commit;