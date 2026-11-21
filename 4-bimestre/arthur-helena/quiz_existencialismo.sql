-- phpMyAdmin SQL Dump
-- Banco de dados: `quizfilosofia`

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET NAMES utf8mb4;

CREATE TABLE `quiz_filosofia` (
  `id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `alternativa_a` text NOT NULL,
  `alternativa_b` text NOT NULL,
  `alternativa_c` text NOT NULL,
  `alternativa_d` text NOT NULL,
  `resposta_correta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `quiz_filosofia` (`id`, `pergunta`, `alternativa_a`, `alternativa_b`, `alternativa_c`, `alternativa_d`, `resposta_correta`) VALUES
(1, 'O que significa a afirmação existencialista de que a existência precede a essência?', 'O ser humano nasce com uma natureza e um destino totalmente definidos.', 'O ser humano primeiro existe e constrói sua identidade por meio de escolhas.', 'A essência humana é determinada exclusivamente pela sociedade.', 'A existência depende de uma definição divina imutável.', 'B'),
(2, 'Qual filósofo é associado à frase “a existência precede a essência”?', 'Jean-Paul Sartre', 'Platão', 'Immanuel Kant', 'Aristóteles', 'A'),
(3, 'Para o existencialismo de Sartre, o que significa dizer que o ser humano está “condenado a ser livre”?', 'Que todas as escolhas são feitas sem consequências.', 'Que a liberdade é uma ilusão criada pela sociedade.', 'Que não podemos evitar escolher e assumir a responsabilidade por nossas ações.', 'Que devemos obedecer a um destino previamente estabelecido.', 'C'),
(4, 'O que é a angústia no pensamento existencialista?', 'A certeza de que todas as decisões já foram tomadas.', 'Um sentimento que surge da consciência da liberdade e da responsabilidade.', 'A prova de que a vida não possui qualquer valor.', 'A impossibilidade de refletir sobre o futuro.', 'B'),
(5, 'O que Sartre chama de má-fé?', 'A atitude de reconhecer os próprios limites.', 'A busca por compreender a liberdade dos outros.', 'A recusa de assumir a própria liberdade, fingindo não ter escolha.', 'A decisão consciente de construir os próprios valores.', 'C'),
(6, 'Qual é uma ideia central do existencialismo?', 'A vida de cada pessoa é definida integralmente antes de seu nascimento.', 'A liberdade, as escolhas e a responsabilidade participam da construção da existência.', 'A razão científica resolve todas as questões sobre o sentido da vida.', 'Os indivíduos não influenciam a própria identidade.', 'B'),
(7, 'Quem escreveu a obra “O Ser e o Nada”?', 'Albert Camus', 'Søren Kierkegaard', 'Martin Heidegger', 'Jean-Paul Sartre', 'D'),
(8, 'Qual pensador é frequentemente considerado um precursor do existencialismo?', 'Søren Kierkegaard', 'Auguste Comte', 'Thomas Hobbes', 'John Locke', 'A'),
(9, 'Em Kierkegaard, qual tema ocupa lugar central na reflexão sobre a existência?', 'A organização econômica do Estado.', 'A experiência individual, a escolha e a relação com a fé.', 'A classificação das espécies naturais.', 'A defesa de que a vida é totalmente previsível.', 'B'),
(10, 'O que significa a responsabilidade individual em Sartre?', 'Transferir as consequências das escolhas para outras pessoas.', 'Agir apenas conforme regras impostas.', 'Assumir as consequências das próprias escolhas e ações.', 'Evitar tomar decisões importantes.', 'C'),
(11, 'Qual é o tema central de “O Mito de Sísifo”, de Albert Camus?', 'A origem das instituições políticas.', 'O problema do absurdo e a busca humana por sentido.', 'A defesa de uma essência humana fixa.', 'A explicação científica da consciência.', 'B'),
(12, 'O que caracteriza o absurdo na filosofia de Camus?', 'A existência de um sentido universal evidente para todos.', 'A impossibilidade de fazer perguntas sobre a vida.', 'O conflito entre a busca humana por sentido e a ausência de uma resposta definitiva do universo.', 'A certeza de que a vida é controlada por um destino conhecido.', 'C'),
(13, 'Como Camus propõe lidar com o absurdo?', 'Reconhecendo-o e continuando a viver de forma consciente e revoltada.', 'Abandonando toda reflexão sobre a existência.', 'Esperando que uma resposta absoluta seja revelada.', 'Aceitando que nenhuma ação humana tem importância.', 'A'),
(14, 'Na filosofia de Heidegger, o que significa “Dasein”?', 'Um princípio que explica a origem do universo.', 'O ser-aí, modo de ser próprio do humano que compreende e questiona sua existência.', 'A negação de toda experiência humana.', 'Uma teoria sobre a organização da sociedade.', 'B'),
(15, 'O que Heidegger entende por ser-para-a-morte?', 'A obrigação de pensar somente no fim da vida.', 'A ideia de que a existência não envolve escolhas.', 'A consciência da finitude como parte fundamental da existência humana.', 'A crença de que a morte pode ser evitada por decisões individuais.', 'C'),
(16, 'O que é autenticidade na reflexão existencial de Heidegger?', 'Viver apenas segundo as expectativas do grupo.', 'Evitar reconhecer a própria finitude.', 'Repetir automaticamente os comportamentos da maioria.', 'Assumir as próprias possibilidades e viver de modo consciente da própria existência.', 'D'),
(17, 'Qual é o papel das escolhas na visão existencialista de Sartre?', 'Elas contribuem para construir quem somos.', 'Elas apenas revelam uma identidade pronta desde o nascimento.', 'Elas não possuem relação com a responsabilidade.', 'Elas são determinadas integralmente por outras pessoas.', 'A'),
(18, 'O que significa dizer que o ser humano é um projeto, em Sartre?', 'Que sua vida segue um roteiro fixo.', 'Que ele se constrói por meio de suas ações e escolhas ao longo da existência.', 'Que sua identidade depende somente de sua origem familiar.', 'Que ele não pode mudar suas atitudes.', 'B'),
(19, 'Qual é a relação entre liberdade e responsabilidade no existencialismo?', 'A liberdade elimina qualquer responsabilidade.', 'A responsabilidade pertence somente às autoridades.', 'Quanto mais conscientes somos de nossa liberdade, mais devemos responder por nossas escolhas.', 'A liberdade existe apenas quando não há alternativas.', 'C'),
(20, 'Qual obra de Albert Camus apresenta a figura de Meursault e aborda o absurdo?', 'A Náusea', 'O Ser e o Nada', 'O Processo', 'O Estrangeiro', 'D'),
(21, 'Quem escreveu o romance “A Náusea”, associado ao existencialismo?', 'Jean-Paul Sartre', 'Albert Camus', 'Martin Heidegger', 'Søren Kierkegaard', 'A'),
(22, 'Em “A Náusea”, de Sartre, a experiência de Roquentin está relacionada a quê?', 'À descoberta de uma ordem moral universal.', 'À percepção inquietante e contingente da existência das coisas.', 'À comprovação de que cada pessoa possui um destino fixo.', 'À defesa de que a vida não pode ser questionada.', 'B'),
(23, 'O que é contingência no pensamento existencialista?', 'A necessidade de que tudo aconteça de uma única maneira.', 'A existência de um plano universal conhecido.', 'O fato de que as coisas existem sem uma razão necessária que as determine.', 'A certeza de que a identidade humana nunca muda.', 'C'),
(24, 'Como o existencialismo compreende a identidade humana?', 'Como algo completamente definido antes das experiências.', 'Como resultado exclusivo da herança biológica.', 'Como uma característica determinada apenas pela sociedade.', 'Como algo construído ao longo da vida por escolhas, ações e experiências.', 'D'),
(25, 'Qual é a importância da situação concreta para a liberdade humana?', 'As escolhas acontecem em circunstâncias reais, que impõem limites sem eliminar necessariamente a liberdade.', 'A existência de limites prova que ninguém é livre.', 'A situação concreta não interfere em nenhuma decisão.', 'A liberdade exige ausência total de condições externas.', 'A'),
(26, 'O que Simone de Beauvoir destaca em sua reflexão existencialista?', 'Que a liberdade é exclusiva de alguns indivíduos.', 'A liberdade situada e a necessidade de reconhecer a liberdade das outras pessoas.', 'Que a identidade de uma pessoa é imutável.', 'Que as escolhas individuais não têm dimensão ética.', 'B'),
(27, 'Qual obra de Simone de Beauvoir discute a condição da mulher e sua construção social?', 'O Mito de Sísifo', 'A Náusea', 'O Segundo Sexo', 'O Ser e o Nada', 'C'),
(28, 'O que significa a ideia de liberdade situada, relacionada a Beauvoir?', 'Que somos livres apenas quando estamos isolados.', 'Que todas as condições sociais podem ser ignoradas.', 'Que a liberdade é determinada exclusivamente pelo passado.', 'Que a liberdade é exercida dentro de condições históricas e sociais concretas.', 'D'),
(29, 'Qual é uma diferença importante entre o pensamento de Sartre e o de Camus?', 'Sartre desenvolve uma filosofia da liberdade e da responsabilidade, enquanto Camus enfatiza o absurdo e a revolta diante dele.', 'Sartre nega a liberdade, enquanto Camus defende um destino fixo.', 'Ambos afirmam que existe uma essência humana imutável.', 'Camus considera que o absurdo pode ser eliminado por uma explicação científica.', 'A'),
(30, 'O que é o desespero na reflexão de Kierkegaard?', 'A simples tristeza causada por acontecimentos cotidianos.', 'Uma condição ligada à relação problemática do indivíduo consigo mesmo.', 'A prova de que as escolhas não existem.', 'A rejeição de toda experiência individual.', 'B'),
(31, 'Qual é a relação entre fé e existência em Kierkegaard?', 'A fé elimina a necessidade de escolhas pessoais.', 'A existência individual não tem relação com a fé.', 'A fé envolve uma relação subjetiva e um compromisso pessoal que não se reduz a uma demonstração racional.', 'A fé é apresentada como uma regra social obrigatória.', 'C'),
(32, 'O que caracteriza a existência inautêntica em Heidegger?', 'A consciência plena das próprias possibilidades.', 'A aceitação consciente da finitude.', 'A escolha refletida de um projeto pessoal.', 'A tendência de viver absorvido pelas opiniões e comportamentos impessoais da maioria.', 'D'),
(33, 'Por que a morte é importante na filosofia de Heidegger?', 'Porque a consciência da finitude pode levar o indivíduo a assumir sua existência de maneira mais própria.', 'Porque ela determina antecipadamente todas as escolhas.', 'Porque torna impossível atribuir significado à vida.', 'Porque elimina a necessidade de refletir sobre a existência.', 'A'),
(34, 'O que significa “projeto” no existencialismo?', 'Um plano que precisa ser escolhido por outras pessoas.', 'O conjunto de possibilidades que o indivíduo constrói e assume por meio de suas ações.', 'Uma essência pronta que não pode ser modificada.', 'Uma previsão exata de tudo o que acontecerá.', 'B'),
(35, 'Como o existencialismo entende os valores morais em Sartre?', 'Como regras naturais e imutáveis que dispensam escolhas.', 'Como normas que não envolvem responsabilidade.', 'Como valores que o ser humano assume e constrói por meio de suas escolhas, respondendo por elas.', 'Como decisões tomadas exclusivamente pelo Estado.', 'C'),
(36, 'O que a frase “o homem é aquilo que faz de si mesmo” expressa no pensamento de Sartre?', 'Que a identidade é definida somente pela origem familiar.', 'Que as ações não interferem na formação pessoal.', 'Que cada pessoa possui uma essência totalmente pronta.', 'Que o indivíduo se define por seus atos e escolhas.', 'D'),
(37, 'Qual é o significado de transcendência no pensamento existencialista?', 'A capacidade humana de ultrapassar o que já está dado, projetando possibilidades.', 'A aceitação passiva de uma identidade fixa.', 'A impossibilidade de transformar a própria situação.', 'A negação de qualquer projeto futuro.', 'A'),
(38, 'O que é a facticidade na reflexão existencialista?', 'A liberdade ilimitada que elimina todas as circunstâncias.', 'O conjunto de condições e fatos concretos que compõem a situação de uma pessoa.', 'A certeza de que o futuro já está determinado.', 'A recusa de reconhecer a própria história.', 'B'),
(39, 'Qual alternativa resume melhor a relação entre existência e sentido no existencialismo?', 'O sentido da vida é idêntico e obrigatório para todas as pessoas.', 'O sentido é determinado exclusivamente por uma tradição.', 'O sentido pode ser construído pelo indivíduo a partir de suas escolhas e de sua maneira de viver.', 'A busca por sentido não faz parte da experiência humana.', 'C'),
(40, 'Qual afirmação representa adequadamente uma questão fundamental do existencialismo?', 'Como provar que todos possuem a mesma personalidade?', 'Como organizar uma classificação universal das ciências?', 'Como descobrir uma essência humana fixa e anterior à vida?', 'Como o indivíduo pode viver, escolher e assumir responsabilidade em uma existência marcada pela liberdade e pela finitude?', 'D');

ALTER TABLE `quiz_filosofia`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `quiz_filosofia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

COMMIT;
