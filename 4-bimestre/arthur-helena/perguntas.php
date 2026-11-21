
<?php

header("Content-Type: application/json; charset=UTF-8");

require_once "conexao.php";

mysqli_set_charset($conexao, "utf8mb4");

$sql = "SELECT * FROM quiz_filosofia ORDER BY id ASC";

$resultado = mysqli_query($conexao, $sql);

if (!$resultado) {
    http_response_code(500);
    echo json_encode(["erro" => "Erro ao buscar perguntas."]);
    exit;
}

$perguntas = [];

while ($linha = mysqli_fetch_assoc($resultado)) {

    // Organiza as alternativas originais
    $alternativas = [
        "A" => $linha["alternativa_a"],
        "B" => $linha["alternativa_b"],
        "C" => $linha["alternativa_c"],
        "D" => $linha["alternativa_d"]
    ];

    // Identifica o texto da resposta correta
    $letraOriginal = strtoupper($linha["resposta_correta"]);
    $textoCorreto = $alternativas[$letraOriginal];

    // Embaralha as alternativas
    $opcoes = array_values($alternativas);
    shuffle($opcoes);

    // Distribui nas novas posições
    $novasAlternativas = [
        "A" => $opcoes[0],
        "B" => $opcoes[1],
        "C" => $opcoes[2],
        "D" => $opcoes[3]
    ];

    // Descobre a nova letra correta
    $novaResposta = array_search(
        $textoCorreto,
        $novasAlternativas,
        true
    );

    // Monta a pergunta
    $perguntas[] = [
        "id" => (int)$linha["id"],
        "pergunta" => $linha["pergunta"],
        "alternativas" => $novasAlternativas,
        "resposta_correta" => $novaResposta
    ];
}

// Retorna o JSON
echo json_encode(
    $perguntas,
    JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT
);

mysqli_close($conexao);

?>
