<?php require_once("../BD/conexao/conexao.php") ?>

<?php
// iniciar variavel de sessao
session_start();
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RLSoft</title>

    <link href="_css/estilo.css" rel="stylesheet">

    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

</head>

<body>
    <?php include_once("_incluir/topo.php") ?>
    <?php include_once("_incluir/funcoes.php") ?>
    <main>
        <ul class="slider">
            <li>
                <input type="radio" id="slide1" name="slide" checked>
                <label for="slide1"></label>
                <img src="_assets/R (11).png">
            </li>
            <li>
                <input type="radio" id="slide2" name="slide">
                <label for="slide2"></label>
                <img src="_assets/2451031-gradiente-azul-fundo-grátis-vetor.jpg">
            </li>
            <li>
                <input type="radio" id="slide3" name="slide">
                <label for="slide3"></label>
                <img src="_assets/Jira@2x.png">
            </li>
        </ul>


    </main>

    <?php include_once("_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>