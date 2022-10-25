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
            <div id="header_saudacao">
                <h5>
                    <p>Seja bem vindo, <?php echo $nome ?> | <a href="../PROJETO CRT/login/login.php"> sair</p>
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