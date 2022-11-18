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
    <title>Home - RLSoft</title>

    <link href="_css/estilo.css" rel="stylesheet">
    <script type="text/Javascript" src="login/script.js"></script>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

</head>

<body background="_assets/white-abstract-wallpaper_23-2148830026.png">
    <?php include_once("_incluir/topoinicial.php") ?>
    <?php include_once("_incluir/funcoes.php") ?>
    <main>
        <div class="home">
            <img class="produtos" src="_assets/produtos (1).png">
            <div class="slider_home">
                <div class="slides">
                    <!--Radio buttons-->
                    <input type="radio" name="radio-btn" id="radio1">
                    <input type="radio" name="radio-btn" id="radio2">
                    <input type="radio" name="radio-btn" id="radio3">
                    <input type="radio" name="radio-btn" id="radio4">
                    <!--Fim Radio buttons-->

                    <!--Slides imagens-->
                    <div class="slide first">
                        <img src="pages/images/produtos_imagem/slides/Gabinete_slide1.png" alt="empreendimento 1" />
                    </div>
                    <div class="slide">
                        <img src="pages/images/produtos_imagem/slides/Monitor_slide2.png" alt="empreendimento 2" />
                    </div>
                    <div class="slide">
                        <img src="pages/images/produtos_imagem/slides/placa_slide3.png" alt="empreendimento 3" />
                    </div>
                    <div class="slide">
                        <img src="pages/images/produtos_imagem/slides/Mouse_slide4.png" alt="empreendimento 4" />
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

            <img class="download" src="_assets/Download (1).png">
            <div class="card" style="width: 14rem;">
                <img class="card-img-top" src="_assets/anydeskimg.png" alt="Imagem de capa do card">
                <div class="card-body">
                    <h5 class="card-title">Any Desk</h5>
                    <p class="card-text">Aplicativo de desktop remoto. O programa de software proprietário fornece acesso remoto independente de plataforma a computadores pessoais e outros dispositivos que executam o aplicativo host.</p>
                </div>
                <div class="card-body">
                    <a href="https://anydesk.com/pt/downloads/windows" class="card-link">Downloads</a>
                </div>
            </div>

            <img class="cada_produtos" src="_assets/cadastro_produtos (1).png">
            <div class="cadastro_produtos">
            <h1>Atualize seu estoque de produtos utilizando nosso formulário de cadastro de produtos.<br></h1>
            <a href="pages/cad_produtos.php"><img id="form1" src="_assets/formulario1.png"></a>
            </div>
        </div>

        </div>
    </main>

    <?php include_once("_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>