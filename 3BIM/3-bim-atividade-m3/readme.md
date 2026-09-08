# Relatório – Omar Esfiharia Simulator

## Instituição

`ETEC Vasco Antônio Venchiarutti`

## Curso

`Informática para Internet`

## Disciplina

`DDM – Desenvolvimento para Dispositivos Móveis`

## Turma

`2°D`

## Integrantes

* `Alex dos Santos Apolinario`
* `Ana Carolina Bernal Santos`
* `Arthur Alexandre Dias Silva`
* `Helena Carriço Bianquini`

---

# Omar Esfiharia Simulator

## Objetivo do jogo

**Omar Esfiharia Simulator** é um jogo de sobrevivência baseado em ondas de inimigos, desenvolvido utilizando o **MIT App Inventor**.

O objetivo do jogador é eliminar a maior quantidade possível de inimigos, acumulando pontos e sobrevivendo às diferentes ondas do jogo. Conforme o jogador avança, os inimigos se movimentam pelo cenário, tornando necessário controlar constantemente o personagem e utilizar os ataques no momento correto.

A proposta do jogo combina uma mecânica simples de compreender com recursos específicos de dispositivos móveis, principalmente o **toque na tela** e o **acelerômetro**.

---

# Mecânicas

## Controle do personagem

O personagem principal pode ser movimentado diretamente pelo jogador através da tela do celular.

Para controlar o personagem, o jogador deve tocar e movimentar o dedo pela tela. O personagem acompanha a posição indicada pelo toque, permitindo que o jogador se desloque pelo cenário para fugir dos inimigos e se posicionar para realizar ataques.

Essa mecânica foi escolhida para tornar o controle simples e adequado para dispositivos móveis.

---

## Ataque com o acelerômetro

Uma das principais características do jogo é o sistema de ataque utilizando o **acelerômetro do celular**.

Para lançar uma esfiha contra os inimigos, o jogador deve **chacoalhar o celular**. O acelerômetro identifica a movimentação do aparelho e, quando o movimento atinge a condição determinada pelo jogo, uma esfiha é lançada.

Dessa maneira, o jogo utiliza uma característica física do dispositivo como parte da própria jogabilidade.

---

## Sistema de ondas

Os inimigos são organizados em **ondas**.

Ao eliminar todos os inimigos presentes na onda atual, uma nova onda é iniciada. O jogador precisa continuar eliminando os inimigos para aumentar sua pontuação e avançar no jogo.

A utilização de ondas permite que a partida continue progressivamente, criando um desafio de sobrevivência e pontuação.

---

## Inimigos

Os inimigos possuem movimentação pelo cenário, fazendo com que não permaneçam parados durante a partida.

Essa movimentação exige que o jogador acompanhe constantemente a posição dos inimigos, movimentando seu personagem e escolhendo o momento adequado para realizar os ataques.

---

## Sistema de pontuação

Cada inimigo eliminado concede pontos ao jogador.

A pontuação é apresentada na interface durante a partida, permitindo que o jogador acompanhe seu desempenho e tente alcançar uma pontuação cada vez maior.

O sistema de pontuação também funciona como um incentivo para que o jogador permaneça vivo pelo maior tempo possível.

---

# Identidade visual

A identidade visual do **Omar Esfiharia Simulator** foi desenvolvida utilizando principalmente a relação entre **azul e laranja**.

O personagem principal possui uma coloração azul, enquanto os inimigos são representados em laranja.

A escolha não foi apenas estética: o laranja utilizado nos inimigos é a **cor complementar do azul**. Dessa forma, os dois elementos possuem um contraste visual forte, permitindo que o jogador diferencie rapidamente o personagem dos inimigos durante uma partida.

### Paleta principal

| Elemento   | Cor                                  | Função                           |
| ---------- | ------------------------------------ | -------------------------------- |
| Personagem | Azul                                 | Identificação do jogador         |
| Inimigos   | Laranja                              | Identificação dos adversários    |
| Cenário    | Cores complementares/neutras         | Destacar os elementos da partida |
| Interface  | Cores derivadas da identidade visual | Manter a unidade visual          |

Essa escolha de cores também contribui para a legibilidade do jogo, principalmente durante momentos em que existem vários inimigos simultaneamente na tela.

---

# Design do jogo

O design foi desenvolvido com uma proposta inspirada em jogos de estilo **pixel art**, buscando criar uma identidade visual simples e característica.

Os elementos do cenário, personagem, inimigos e interface foram desenvolvidos de maneira que os principais elementos da partida permaneçam facilmente identificáveis.

---

# Desenvolvimento

O jogo foi desenvolvido utilizando o **MIT App Inventor**, utilizando programação baseada em blocos.

Durante o desenvolvimento foram utilizados diferentes componentes e recursos disponíveis na plataforma, incluindo:

* Componentes de interface;
* Canvas;
* Sprites;
* Eventos de toque;
* Controle de posição dos objetos;
* Sistema de pontuação;
* Controle de ondas;
* Movimentação dos inimigos;
* Sensor de acelerômetro;
* Detecção de colisões;
* Transição entre telas.

A combinação desses recursos possibilitou a criação de um jogo que utiliza tanto controles tradicionais de toque quanto sensores presentes no dispositivo móvel.

---

# DECLARAÇÃO DE USO DE INTELIGÊNCIA ARTIFICIAL

Durante o desenvolvimento do projeto foi utilizado o **ChatGPT** como ferramenta de apoio, principalmente durante as etapas de planejamento e desenvolvimento visual do jogo.

A utilização da ferramenta ocorreu de maneira complementar ao trabalho dos integrantes, não substituindo a implementação, testes e decisões realizadas pelo grupo.

## Utilizações realizadas

O ChatGPT foi utilizado para:

* Realizar **brainstorming de ideias** para mecânicas e características do jogo;
* Auxiliar na elaboração de ideias para a **identidade visual**;
* Sugerir possibilidades de design e composição visual;
* Auxiliar na **geração de imagens**, incluindo a imagem do ícone do jogo.

As sugestões recebidas foram analisadas pelos integrantes e as ideias utilizadas foram adaptadas de acordo com as necessidades do projeto.

| Ferramenta | Etapa           | Finalidade                                                                                                 | Validação                                                                                           |
| ---------- | --------------- | ---------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| ChatGPT    | Planejamento    | Brainstorming de ideias para mecânicas, identidade visual e características do jogo                        | As sugestões foram analisadas e selecionadas pelos integrantes de acordo com a proposta do projeto  |
| ChatGPT    | Design          | Brainstorming de ideias para cores, identidade visual e apresentação do jogo                               | As propostas foram avaliadas e adaptadas pelos integrantes                                          |
| ChatGPT    | Produção visual | Geração de imagens utilizadas como referência e/ou elementos visuais do projeto, incluindo o ícone do jogo | As imagens foram analisadas pelos integrantes e utilizadas de acordo com as necessidades do projeto |

A utilização do ChatGPT ocorreu como ferramenta de apoio durante o desenvolvimento. As decisões finais sobre o funcionamento, design e implementação do jogo foram realizadas pelos integrantes do grupo.

Os integrantes permanecem responsáveis pelo conteúdo apresentado, pelo funcionamento do projeto e pela compreensão das soluções utilizadas.

---

## Tecnologias utilizadas

* **MIT App Inventor**
* **Programação por blocos**
* **Canvas**
* **Sprites**
* **Acelerômetro**
* **Componentes de interface**
* **GitHub**

---

## Relatório desenvolvido para fins educacionais

Projeto desenvolvido para a disciplina de **Desenvolvimento para Dispositivos Móveis (DDM)**, utilizando o **MIT App Inventor**.
