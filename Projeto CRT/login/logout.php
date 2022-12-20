<?php
session_destroy('user_portal');
unset($_SESSION["user_portal"]);
require_once("../BD/conexao/conexao.php");
echo "<script>window.location.href ='login.php';</script>";
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