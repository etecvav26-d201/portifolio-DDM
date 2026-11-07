
<?php
header("Content-Type: application/json; charset=UTF-8");

// Mesmo princípio de autenticação simples da Agenda Server
$chave = "avaliacao123";

if (!isset($_GET["search"]) || $_GET["search"] !== $chave) {
    http_response_code(403);
    echo json_encode(
        ["erro" => "Acesso não autorizado"],
        JSON_UNESCAPED_UNICODE
    );
    exit;
}

// Conexão com o banco de dados
$conexao = new mysqli(
    "localhost",
    "root",
    "",
    "avaliacao"
);

if ($conexao->connect_error) {
    http_response_code(500);
    echo json_encode(
        ["erro" => "Falha na conexão com o banco"],
        JSON_UNESCAPED_UNICODE
    );
    exit;
}

$conexao->set_charset("utf8mb4");

// Sorteia 10 perguntas diferentes
$sql = "SELECT id, pergunta, incorreta1, incorreta2,
               incorreta3, correta
        FROM perguntas
        ORDER BY RAND()
        LIMIT 10";

$consulta = $conexao->query($sql);

if (!$consulta || $consulta->num_rows < 10) {
    http_response_code(500);
    echo json_encode(
        ["erro" => "Cadastre pelo menos 10 perguntas"],
        JSON_UNESCAPED_UNICODE
    );
    $conexao->close();
    exit;
}

$avaliacao = [];

while ($linha = $consulta->fetch_assoc()) {

    // Monta as quatro alternativas
    $alternativas = [
        $linha["incorreta1"],
        $linha["incorreta2"],
        $linha["incorreta3"],
        $linha["correta"]
    ];

    // Embaralha a ordem das alternativas
    shuffle($alternativas);

    $avaliacao[] = [
        "id" => (int) $linha["id"],
        "pergunta" => $linha["pergunta"],
        "alternativas" => $alternativas,
        "correta" => $linha["correta"]
    ];
}

// Devolve os dados em JSON
echo json_encode(
    $avaliacao,
    JSON_UNESCAPED_UNICODE
);

$conexao->close();
?>
