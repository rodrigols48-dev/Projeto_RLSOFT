<?php
if (session_status() !== PHP_SESSION_ACTIVE) { //Verificar se a sessão não já está aberta.
    session_cache_expire(60); //Definindo o prazo para a cache expirar em 60 minutos.
    session_start(); //inicia a sessão.

    if ($_SESSION['user_portal'] == '') {
        // Código para redirecionar para pagina de login
        echo "<script> window.location.href ='login/login.php';</script>";;
    }
}

require_once("BD/conexao/conexao.php");
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - RLSoft</title>

    <link href="_css/estilo.css" rel="stylesheet">
    <script type="text/Javascript" src="pages/script.js"></script>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <?php include_once("_incluir/topoinicial.php");
    include_once("_incluir/funcoes.php"); ?>
</head>

<body background="_assets/white-abstract-wallpaper_23-2148830026.png">
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
                <a href="pages/cad_produtos.php"><img id="form1" src="_assets/formulario1.png" title="Clique aqui para ir ao formulário!"></a>
            </div>

            <img id="sobre" src="_assets/quem_somos (1).png">

            <div class="sobre">
                <h3>A RLSoft é especializada na criação e venda de produtos de alta qualidade, de gabinetes a servidores de última geração.</h3>
                <h4>Oferecemos também nosso sistema de cadastro de produtos e nossos serviços de manutenção de softwares, instalação e atualização de programas. </h4>
            </div>

            <img id="contato" src="_assets/contato_entrar-removebg-preview.png">

            <div class="contato">
                <h4>whatsapp:(85) 99794-6214<br>
                    ou<br>com nosso telefone: (85) 3482-1547
                </h4>

            </div>

            <img class="servicosimg" src="_assets/Servicos (1).png">

            <div class="serv">
                <img id="monitor48" src="_assets/icons8-monitor-48.png">
                <h2>Instalação e Manutenção <br> de computadores</h2>

                <div class="servidorgrp">
                    <img id="gservidor" src="_assets/icons8-suporte-ao-cliente-100.png">
                    <h3>Suporte ao Cliente</h3>
                </div>


            </div>

        </div>

    </main>

    <?php include_once("_incluir/rodape.php") ?>
</body>

</html>
<?php
// Fechar conexao
mysqli_close($conecta); ?>