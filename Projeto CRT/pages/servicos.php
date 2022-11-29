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

<body background="../_assets/white-abstract-wallpaper_23-2148830026.png">
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>
        <div id="servicos">
           
            <script type="text/javascript" src="script.js"></script>

            <div class="slider_servicos">
                <div class="slides">
                    <!--Radio buttons-->
                    <input type="radio" name="radio-btn" id="radio1">
                    <input type="radio" name="radio-btn" id="radio2">
                    <input type="radio" name="radio-btn" id="radio3">
                    <input type="radio" name="radio-btn" id="radio4">
                    <!--Fim Radio buttons-->

                    <!--Slides imagens-->
                    <div class="slide first">
                        <img src="../pages/images/produtos_imagem/slides/Servico1.png" alt="empreendimento 1" />
                    </div>
                    <div class="slide">
                        <img src="../pages/images/produtos_imagem/slides/Servico2.png" alt="empreendimento 2" />
                    </div>
                    <div class="slide">
                        <img src="../pages/images/produtos_imagem/slides/Servico3.png" alt="empreendimento 3" />
                    </div>
                    <div class="slide">
                        <img src="../pages/images/produtos_imagem/slides/Servico4.png" alt="empreendimento 4" />
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

            <div id="redes_servidores">
                <h2>
                    <p>Oferecemos nossos serviços de instalação, manutenção e<br> atualização de servidores.<br> Para mais informações clique no botão "Saiba Mais".</p>
                    <a href="https://api.whatsapp.com/send/?phone=55085997946214&text&type=phone_number&app_absent=0"><button>Saiba Mais</button>
                    </a>
                </h2>
                <h3>
                    <p>Para compra de servidores do tipo Rack ou Torre <br> veja nosso estoque de servidores.</p>
                    <a href="http://localhost/Projeto%20CRT/pages/produtos.php?produto=Servidor&x=24&y=21"><button>Servidores</button></a>
                </h3>
            </div>

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