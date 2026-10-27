create database if not exists avaliacao;
use avaliacao;

create table perguntas (
    id int auto_increment primary key,
    pergunta varchar(500) not null,
    incorreta1 varchar(255) not null,
    incorreta2 varchar(255) not null,
    incorreta3 varchar(255) not null,
    correta varchar(255) not null
);

insert into perguntas (pergunta, incorreta1, incorreta2, incorreta3, correta) values
('Quanto é 2 + 2?', '3', '5', '6', '4'),
('Qual é a capital do Brasil?', 'São Paulo', 'Rio de Janeiro', 'Salvador', 'Brasília'),
('Qual linguagem é executada no servidor neste projeto?', 'HTML', 'CSS', 'JavaScript', 'PHP'),
('Qual linguagem é utilizada para estruturar páginas web?', 'CSS', 'PHP', 'SQL', 'HTML'),
('Qual linguagem é utilizada para estilizar páginas web?', 'HTML', 'SQL', 'Python', 'CSS'),
('Qual linguagem é utilizada para adicionar interatividade em páginas web?', 'SQL', 'PHP', 'HTML', 'JavaScript'),
('Qual comando SQL consulta dados de uma tabela?', 'insert', 'update', 'delete', 'select'),
('Qual comando SQL adiciona registros a uma tabela?', 'select', 'delete', 'update', 'insert'),
('Qual comando SQL altera registros existentes?', 'select', 'insert', 'create', 'update'),
('Qual comando SQL remove registros de uma tabela?', 'select', 'insert', 'update', 'delete'),
('Qual comando SQL cria uma tabela?', 'select', 'insert', 'update', 'create table'),
('Qual atributo HTML define o destino de um link?', 'src', 'alt', 'class', 'href'),
('Qual tag HTML cria um parágrafo?', '<h1>', '<div>', '<span>', '<p>'),
('Qual tag HTML cria uma lista não ordenada?', '<ol>', '<li>', '<table>', '<ul>'),
('Qual propriedade CSS altera a cor do texto?', 'background-color', 'font-size', 'margin', 'color'),
('Qual propriedade CSS altera o tamanho da fonte?', 'padding', 'border', 'display', 'font-size'),
('Qual símbolo inicia uma variável em PHP?', '#', '@', '&', '$'),
('Qual comando PHP exibe uma saída de texto?', 'input', 'select', 'return', 'echo'),
('Qual superglobal PHP recebe dados enviados por GET?', '$_POST', '$_SESSION', '$_COOKIE', '$_GET'),
('Qual superglobal PHP recebe dados enviados por POST?', '$_GET', '$_SERVER', '$_COOKIE', '$_POST'),
('Qual extensão é utilizada em arquivos PHP?', '.html', '.css', '.sql', '.php'),
('Qual sistema de gerenciamento de banco de dados é utilizado neste projeto?', 'Photoshop', 'Visual Studio Code', 'Bootstrap', 'MySQL'),
('O que significa a sigla SQL?', 'Simple Question Language', 'System Query Logic', 'Structured Quick Language', 'Structured Query Language'),
('Qual chave identifica unicamente cada registro de uma tabela?', 'foreign key', 'index comum', 'chave duplicada', 'primary key'),
('Qual comando SQL seleciona todos os registros de uma tabela chamada produtos?', 'select produtos', 'get * from produtos', 'show produtos', 'select * from produtos'),
('Qual operador SQL é utilizado para filtrar registros por uma condição?', 'order by', 'group by', 'join', 'where'),
('Qual função SQL conta a quantidade de registros?', 'sum()', 'avg()', 'max()', 'count()'),
('Qual protocolo é utilizado para acessar páginas web?', 'FTP', 'SMTP', 'SSH', 'HTTP'),
('Qual programa permite visualizar páginas da internet?', 'compilador', 'editor de texto', 'gerenciador de banco de dados', 'navegador'),
('Qual unidade representa 1024 bytes no padrão binário tradicional?', 'megabyte', 'gigabyte', 'terabyte', 'kibibyte');
