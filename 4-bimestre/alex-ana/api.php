
<?php

header("Content-Type: application/json; charset=utf-8");

$conexao = new mysqli("localhost", "root", "", "avaliacaosg");

if ($conexao->connect_error) {
    http_response_code(500);
    echo json_encode(["erro" => "Erro na conexão com o banco."]);
    exit;
}

$conexao->set_charset("utf8mb4");

$acao = $_GET["acao"] ?? "";

// GERAR A AVALIAÇÃO
if ($acao === "gerar") {

    $consulta = $conexao->query(
        "select id, pergunta, incorreta1, incorreta2,
         incorreta3, correta
         from perguntas order by rand() limit 10"
    );

    if ($consulta->num_rows < 10) {
        http_response_code(400);
        echo json_encode([
            "erro" => "Cadastre pelo menos 10 perguntas."
        ]);
        exit;
    }

    $perguntas = [];

    while ($linha = $consulta->fetch_assoc()) {

        $alternativas = [
            $linha["incorreta1"],
            $linha["incorreta2"],
            $linha["incorreta3"],
            $linha["correta"]
        ];

        shuffle($alternativas);

        $perguntas[] = [
            "id" => (int) $linha["id"],
            "pergunta" => $linha["pergunta"],
            "alternativas" => $alternativas
        ];
    }

    echo json_encode([
        "sucesso" => true,
        "perguntas" => $perguntas
    ], JSON_UNESCAPED_UNICODE);

    exit;
}

// CORRIGIR A AVALIAÇÃO
if ($acao === "corrigir") {

    if ($_SERVER["REQUEST_METHOD"] !== "POST") {
        http_response_code(405);
        echo json_encode(["erro" => "Utilize POST."]);
        exit;
    }

    $dados = json_decode(
        file_get_contents("php://input"),
        true
    );

    if (
        !is_array($dados) ||
        !isset($dados["respostas"]) ||
        !is_array($dados["respostas"]) ||
        count($dados["respostas"]) !== 10
    ) {
        http_response_code(400);
        echo json_encode([
            "erro" => "Envie exatamente 10 respostas."
        ]);
        exit;
    }

    $consulta = $conexao->prepare(
        "select pergunta, correta from perguntas where id = ?"
    );

    $acertos = 0;
    $resultados = [];
    $idsUtilizados = [];

    foreach ($dados["respostas"] as $item) {

        if (
            !is_array($item) ||
            !isset($item["id"], $item["resposta"]) ||
            !is_numeric($item["id"]) ||
            !is_string($item["resposta"])
        ) {
            http_response_code(400);
            echo json_encode(["erro" => "Resposta inválida."]);
            exit;
        }

        $id = (int) $item["id"];
        $resposta = $item["resposta"];

        if ($id <= 0 || isset($idsUtilizados[$id])) {
            http_response_code(400);
            echo json_encode([
                "erro" => "Perguntas repetidas ou inválidas."
            ]);
            exit;
        }

        $idsUtilizados[$id] = true;

        $consulta->bind_param("i", $id);
        $consulta->execute();
        $consulta->bind_result($enunciado, $correta);

        if (!$consulta->fetch()) {
            $consulta->free_result();
            http_response_code(400);
            echo json_encode([
                "erro" => "Pergunta não encontrada."
            ]);
            exit;
        }

        $consulta->free_result();

        $acertou = ($resposta === $correta);

        if ($acertou) {
            $acertos++;
        }

        $resultados[] = [
            "id" => $id,
            "pergunta" => $enunciado,
            "resposta" => $resposta,
            "correta" => $correta,
            "acertou" => $acertou
        ];
    }

    $nota = ($acertos / 10) * 10;

    echo json_encode([
        "sucesso" => true,
        "acertos" => $acertos,
        "erros" => 10 - $acertos,
        "nota" => $nota,
        "resultados" => $resultados
    ], JSON_UNESCAPED_UNICODE);

    exit;
}

http_response_code(400);

echo json_encode([
    "erro" => "Ação inválida. Utilize gerar ou corrigir."
]);

?>
