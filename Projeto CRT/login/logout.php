<?php require_once("../../BD/conexao/conexao.php") ?>

<?php
    session_start();
    unset($_SESSION["user_portal"]);
    header("location:login.php");
?>


<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <title>logout</title>
    <link href="../_css/estilo.css">
</head>

<body>
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>

</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>