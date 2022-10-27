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
    <title>Serviços - RLSOFT</title>

    <link href="../_css/estilo.css" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
</head>

<body background="../_assets/4907157.jpg">
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>

        <div class="slider">
            <div class="slides">
                <!--Radio buttons-->
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">
                <!--Fim Radio buttons-->

                <!--Slides imagens-->
                <div class="slide first">
                    <img src="../_assets/Jira@2x.png" alt="empreendimento 1" />
                </div>
                <div class="slide">
                    <img src="../_assets/jira-854x760-1.png" alt="empreendimento 2" />
                </div>
                <div class="slide">
                    <img src="../_assets/asset-management-atlassian-marketplace-600x320-@2x.png" alt="empreendimento 3" />
                </div>
                <div class="slide">
                    <img src="../_assets/asset-management-jira-service-desk-1.png" alt="empreendimento 4" />
                </div>
                <!-- Fim Slides imagens-->
                
                <!--Navigation Auto-->
                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                </div>

            </div>
            
            <div class="manual-navigation">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
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