<?php require_once("../../BD/conexao/conexao.php") ?>

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
    <title>Sistemas - RLSOFT</title>

    <link href="../_css/estilo.css" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
</head>

<body background="../_assets/4907157.jpg">
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>

    </main>
    <?php include_once("../_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>