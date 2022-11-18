<header>
    <div id="header_central">
        <?php
        if (isset($_SESSION["user_portal"])) {

            $user = $_SESSION["user_portal"];

            $saudacao       = "SELECT nomecompleto ";
            $saudacao      .= " FROM clientes ";
            $saudacao      .= " WHERE clienteID = {$user}";
            $saudacao_login = mysqli_query($conecta, $saudacao);
            if (!$saudacao_login) {
                die("Falha no banco de dados");
            }

            $saudacao_login = mysqli_fetch_assoc($saudacao_login);
            $nome = $saudacao_login["nomecompleto"];
        ?>
            <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
            <script type="text/javascript" src="js.js"></script>
            <nav>
                <ul>
                    <li><a href="../../Projeto CRT/index.php">Home</a></li>
                    <li><a href="../../Projeto CRT/pages/sobre.php">Sobre</a></li>
                    <li><a href="javascript://" class="bt1">Produtos<img src="../_assets/icons8-para-baixo-com-quadrado-20.png"></a>
                        <ul class="ul-produtos">
                            <li><a href="../../Projeto CRT/pages/produtos.php">Produtos</a></li>
                            <li><a href="../pages/cad_produtos.php">Cadastrar Produto</a></li>
                        </ul>
                    </li>
                    <li><a href="../../Projeto CRT/pages/servicos.php">Serviços</a></li>
                    <li><a href="https://api.whatsapp.com/send/?phone=55085997946214&text&type=phone_number&app_absent=0">Contato</a></li>
                </ul>

            </nav>
            <div id="header_saudacao">
                <h5>
                    <p><?php echo $nome ?> |
                        <a href="../../Projeto CRT/login/logout.php"> sair
                    </p>
                </h5>
            </div>
        <?php
        }

        ?>
        <div class="logo">
            <a href="../../Projeto CRT/index.php">
                <img src="/Projeto CRT/_assets/RLSOFT(1).png"></a>
        </div>

    </div>

</header>