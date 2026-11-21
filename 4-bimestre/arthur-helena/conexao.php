<?php

$servidor = "localhost";
$usuario = "root";
$senha = "";
$banco = "quizfilosofia";

$conexao = mysqli_connect(
    $servidor,
    $usuario,
    $senha,
    $banco
);

if (!$conexao) {
    die("Erro ao conectar ao banco: " . mysqli_connect_error());
}

mysqli_set_charset($conexao, "utf8mb4");

?>