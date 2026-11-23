## Instituição

`ETEC Vasco Antônio Venchiarutti`

---

## Curso

`Informática para Internet`

---

## Turma

`2°D`

---

## Autores

* `Arthur Alexandre Dias Silva`
* `Helena Bianquini Carriço`

---

# Projeto – Aplicativo de Perguntas sobre a Segunda Guerra Mundial

## Objetivo do aplicativo

O objetivo deste aplicativo é auxiliar os usuários nos estudos sobre a **Segunda Guerra Mundial**, oferecendo um material de apoio em PDF e um questionário interativo. O aplicativo utiliza uma API para obter perguntas armazenadas em um banco de dados, permitindo que o usuário pratique os conteúdos estudados de maneira dinâmica e realize o questionário quantas vezes desejar.

## Funcionamento

Ao iniciar o aplicativo, o usuário pode acessar um material de estudos sobre a Segunda Guerra Mundial, disponibilizado em PDF. Para abrir o documento, é utilizado o componente **Activity Starter** do MIT App Inventor, que direciona o usuário para a visualização do arquivo.

A parte do questionário utiliza o componente **Web** do App Inventor para realizar a comunicação com uma API. Essa API consulta um banco de dados que contém **30 perguntas** sobre o tema e disponibiliza os dados para o aplicativo.

A cada tentativa, são selecionadas **10 perguntas** entre as 30 disponíveis. A seleção e a ordem das perguntas são aleatórias, fazendo com que cada realização do questionário possa apresentar uma sequência diferente. O usuário pode responder ao questionário quantas vezes desejar.

Após responder às perguntas, o aplicativo apresenta o resultado por meio de indicações visuais com cores, diferenciando as respostas corretas das incorretas. Dessa forma, o usuário consegue identificar seu desempenho e reconhecer os conteúdos que precisam ser revisados.

## Tecnologias e componentes utilizados

* **MIT App Inventor:** plataforma utilizada para desenvolver a interface e a lógica do aplicativo.
* **Activity Starter:** componente utilizado para abrir o material de estudos em PDF.
* **Web:** componente utilizado para realizar requisições à API e obter as perguntas.
* **API e banco de dados:** utilizados para armazenar e disponibilizar as 30 perguntas sobre a Segunda Guerra Mundial.

---

## Prints das telas do aplicativo

### Design da Tela Inicial
![Design da tela inicial](imagens/inter1.png)

### Blocos da Tela Inicial
![Blocos da tela inicial](imagens/blocos1.png)

### Blocos 2
![Blocos 2](imagens/blocos2.png)

### Blocos 3
![Blocos 3](imagens/blocos3.png)

### Blocos 4
![Blocos 4](imagens/blocos4.png)

### Blocos 5
![Blocos 5](imagens/blocos5.png)

### Blocos 6
![Blocos 6](imagens/blocos6.png)

### Blocos 7
![Blocos 7](imagens/blocos7.png)

### Blocos 8
![Blocos 8](imagens/blocos8.png)

### Blocos 9
![Blocos 9](imagens/blocos9.png)

### Blocos 10
![Blocos 10](imagens/blocos10.png)

### Blocos 11
![Blocos 11](imagens/blocos11.png)

---

## DECLARAÇÃO DE USO DE INTELIGÊNCIA ARTIFICIAL

Durante o desenvolvimento do aplicativo, foram utilizadas ferramentas de Inteligência Artificial como apoio à compreensão de códigos, à criação de imagens e ao desenvolvimento dos procedimentos do MIT App Inventor.

| Ferramenta | Etapa | Finalidade | Validação |
|---|---|---|---|
| Claude | Desenvolvimento | Auxílio no entendimento do código relacionado à agenda e de sua lógica de funcionamento. | As explicações foram analisadas e utilizadas como apoio à compreensão do código. |
| ChatGPT | Desenvolvimento visual | Auxílio na criação de imagens utilizadas no aplicativo. | As imagens geradas foram analisadas e selecionadas de acordo com a proposta visual do aplicativo. |
| ChatGPT | Desenvolvimento | Auxílio na compreensão e elaboração de códigos e procedimentos utilizados no aplicativo. | As sugestões foram revisadas e adaptadas quando necessário; os procedimentos devem ser conferidos por meio de testes no MIT App Inventor. |

As ferramentas de Inteligência Artificial foram utilizadas como recursos de apoio durante o desenvolvimento. As sugestões e os materiais gerados foram analisados pelos autores, que permanecem responsáveis pelo conteúdo, pelo funcionamento e pelas decisões tomadas durante a construção do aplicativo.

**Atenção:** mantenha na declaração apenas os usos que realmente ocorreram neste projeto. A validação também deve descrever os testes que foram efetivamente realizados.

---

*Relatório desenvolvido para fins educacionais no curso de Informática para Internet.*
