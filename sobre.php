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

<body background="../_assets/4907157.jpg">
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>
        <div id="sobre">
           
                <div class="texto1">
                    <h2>
                        <p></p>
                    </h2>

                </div>
           

            <div style="background-color: rgba(0, 0, 20, 0.5)" id="texto2">
                <h3>
                    <p>
                    </p>
                </h3>
            </div>

            <div id="pm4r">
                <img id="pm4r" src="../_assets/asset-management-jira-service-desk-1.png">
            </div>
        </div>
    </main>
    <?php include_once("../_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>