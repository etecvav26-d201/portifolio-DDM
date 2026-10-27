<?php
session_start();

$conexao = new mysqli("localhost", "root", "", "avaliacao");

if ($conexao->connect_error) {
    die("Erro na conexão: " . $conexao->connect_error);
}

$conexao->set_charset("utf8mb4");

$etapa = "inicio";
$perguntas = [];
$resultados = [];
$acertos = 0;
$total = 0;
$nota = 0;

// GERAR A AVALIAÇÃO
if (isset($_POST["gerar"])) {

    $consulta = $conexao->query(
        "select * from perguntas order by rand() limit 10"
    );

    if ($consulta->num_rows < 10) {
        die("Cadastre pelo menos 10 perguntas no banco de dados.");
    }

    while ($linha = $consulta->fetch_assoc()) {
        $perguntas[] = $linha;
    }

    $_SESSION["avaliacao"] = [];

    foreach ($perguntas as $p) {
        $_SESSION["avaliacao"][$p["id"]] = [
            "pergunta" => $p["pergunta"],
            "correta" => $p["correta"],
            "alternativas" => [
                $p["incorreta1"],
                $p["incorreta2"],
                $p["incorreta3"],
                $p["correta"]
            ]
        ];

        shuffle($_SESSION["avaliacao"][$p["id"]]["alternativas"]);
    }

    $etapa = "avaliacao";
}

// FINALIZAR E CORRIGIR A AVALIAÇÃO
if (isset($_POST["finalizar"])) {

    if (
        !isset($_SESSION["avaliacao"]) ||
        !isset($_POST["respostas"]) ||
        !is_array($_POST["respostas"])
    ) {
        die("Avaliação inválida ou não encontrada.");
    }

    $avaliacao = $_SESSION["avaliacao"];
    $respostas = $_POST["respostas"];

    $total = count($avaliacao);

    foreach ($avaliacao as $id => $p) {

        $respostaUsuario = $respostas[$id] ?? "";

        $acertou = (
            is_string($respostaUsuario) &&
            $respostaUsuario === $p["correta"]
        );

        if ($acertou) {
            $acertos++;
        }

        $resultados[] = [
            "pergunta" => $p["pergunta"],
            "resposta" => is_string($respostaUsuario)
                ? $respostaUsuario
                : "",
            "correta" => $p["correta"],
            "acertou" => $acertou
        ];
    }

    $nota = ($total > 0) ? ($acertos / $total) * 10 : 0;

    unset($_SESSION["avaliacao"]);

    $etapa = "resultado";
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Sistema de Avaliação</title>
</head>
<body>

<h1>Avaliação</h1>

<?php if ($etapa === "inicio") { ?>

    <p>Clique pra gerar a avaliação.</p>

    <form method="post">
        <button type="submit" name="gerar" value="1">
            Gerar avaliação
        </button>
    </form>

<?php } elseif ($etapa === "avaliacao") { ?>

    <h2>Responda às questões</h2>

    <form method="post">

        <?php foreach ($_SESSION["avaliacao"] as $id => $p) { ?>

            <h3>
                <?= htmlspecialchars($id ? $p["pergunta"] : "") ?>
            </h3>

            <?php foreach ($p["alternativas"] as $alternativa) { ?>

                <label>
                    <input
                        type="radio"
                        name="respostas[<?= (int) $id ?>]"
                        value="<?= htmlspecialchars($alternativa, ENT_QUOTES, 'UTF-8') ?>"
                        required
                    >
                    <?= htmlspecialchars($alternativa) ?>
                </label>

                <br>

            <?php } ?>

        <?php } ?>

        <br>

        <button type="submit" name="finalizar" value="1">
            Finalizar avaliação
        </button>

    </form>

<?php } elseif ($etapa === "resultado") { ?>

    <h2>Resultado da avaliação</h2>

    <p>Acertos: <?= $acertos ?> de <?= $total ?></p>

    <p>Erros: <?= $total - $acertos ?></p>

    <p>Nota final: <?= number_format($nota, 1, ',', '.') ?> / 10</p>

    <hr>

    <h2>Correção das questões</h2>

    <?php foreach ($resultados as $indice => $r) { ?>

        <h3>
            <?= ($indice + 1) . ". " .
            htmlspecialchars($r["pergunta"]) ?>
        </h3>

        <p>
            Sua resposta:
            <?= htmlspecialchars($r["resposta"]) ?>
        </p>

        <p>
            Resposta correta:
            <?= htmlspecialchars($r["correta"]) ?>
        </p>

        <p>
            <?= $r["acertou"] ? "Correto!" : "Incorreto!" ?>
        </p>

        <hr>

    <?php } ?>

    <form method="post">
        <button type="submit" name="reiniciar" value="1">
            Voltar ao início
        </button>
    </form>

<?php } ?>

</body>
</html>
