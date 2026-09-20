# Integrantes
`Alex dos Santos Apolinario`

`Ana Carolina Bernal Santos`

`Arthur Alexandre Dias Silva`

`Helena Bianquini Carriço`

## Introdução

O MIT App Inventor é uma plataforma para desenvolvimento de aplicativos
para celular desenvolvido pelo MIT, que entre seus componentes possui o TinyDB,
que é utilizado para armazenar dados localmente no celular, permitindo que
as informações permaneçam disponíveis mesmo após o aplicativo ser
fechado. 

## 1. O que é o MIT App Inventor?

O MIT App Inventor é um ambiente de programação visual criado pelo
Massachusetts Institute of Technology (MIT), com seu objetivo sendo facilitar o
desenvolvimento de aplicativos móveis por meio de blocos,como o Scratch, com o programa 
possuindo uma interface intuitiva e programação em blocos, sendo ideal para 
iniciantes e para o ensino de lógica de programação, além de ser completamente gratuíto.

## 2. O que é o TinyDB?

O TinyDB é um componente de armazenamento local que salva informações permanentemente na 
memória interna do dispositivo, funcionando sem internet, ficando apenas no aparelho.

![Componente TinyDB](imagens/tinydb.png)

## 3. Funcionamento do TinyDB

O TinyDB trabalha com Tags(chaves) e Values(valores).

Exemplo:

  Tag        | Valor
  -----------| --------
  nome       | Arthur
  pontuacao  | 1500

Operações: - Gravação: StoreValue. - Leitura: GetValue. - Atualização:
StoreValue novamente usando a mesma Tag. - Remoção: ClearTag.

## 4. Componentes relacionados

  Bloco       | Função
  ------------|------------------------
  StoreValue  | Salva um valor
  GetValue    | Recupera um valor
  ClearTag    | Remove uma Tag
  ClearAll    | Remove todos os dados

## 5. Aplicações práticas

O TinyDB pode ser utilizado em: - Lista de tarefas; - Agenda de
contatos; - Cadastro de clientes; - Lista de compras; - Aplicativos de
anotações; - Controle financeiro; - Jogos com armazenamento de
pontuação.

Essas aplicações utilizam pequenas quantidades de dados armazenadas
localmente.

## 6. TinyDB × TinyWebDB

  Característica     | TinyDB  | TinyWebDB
  -------------------|---------|---------------------
  Local              | Sim     | Não
  Internet           | Não     | Sim
  Compartilha dados  | Não     | Sim
  Velocidade         | Alta    | Depende da conexão

## 7. Boas práticas

Usar Tags padronizadas, evitar nomes repetidos, excluir dados desnecessários, 
atualizar informações sempre que necessário e organizar os dados de forma lógica
funcionam muito bem com o TinyDB.

## 8. Conclusão

O TinyDB é um dos principais componentes do MIT App Inventor para
armazenamento local de dados, com sua simplicidade facilitando o
desenvolvimento de aplicativos educacionais e comerciais de pequeno
porte. Durante esta pesquisa foi possível compreender seu funcionamento,
suas limitações e quando utilizar TinyDB ou TinyWebDB.
