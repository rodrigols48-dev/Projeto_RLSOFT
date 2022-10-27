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
    <?php include_once("_incluir/topoinicial.php") ?>
    <?php include_once("_incluir/funcoes.php") ?>
    <main>

        <div id="pm4r">
            <img id="pm4r" src="_assets/asset-management-jira-service-desk-1.png">
        </div>


    </main>

    <?php include_once("_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>