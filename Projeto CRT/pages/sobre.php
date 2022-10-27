<?php require_once("../../BD/conexao/conexao.php") ?>

<?php
// iniciar variavel de sessao
session_start();
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre - RLSOFT</title>

    <link href="../_css/estilo.css" rel="stylesheet">

</head>

<body>
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>
        <div class="texto1">
            <h1>Quem somos?</h1>
        </div>
        <div class="texto2">
            <h3>
                <p>Somos uma empresa especializada na<br> criação e venda<br> de hardwares e softwares para
                    deixar sua empresa,<br> loja ou serviço mais sofisticado.</p>
            </h3>
        </div>

        <div id="pm4r">
            <img id="pm4r" src="../_assets/asset-management-jira-service-desk-1.png">
        </div>
    </main>
    <?php include_once("../_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>