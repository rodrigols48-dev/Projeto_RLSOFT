<?php
if (session_status() !== PHP_SESSION_ACTIVE) { //Verificar se a sessão não já está aberta.
    session_cache_expire(60); //Definindo o prazo para a cache expirar em 60 minutos.
    session_start(); //inicia a sessão.
}

require_once("../BD/conexao/conexao.php");

if (isset($_POST["usuario"])) {

    $usuario    = $_POST['usuario'];
    $senha      = $_POST['senha'];


    // Remove os caracteres ilegais, caso tenha
    $usuario = filter_var($usuario, FILTER_SANITIZE_EMAIL);

    // Valida o e-mail
    if (filter_var($usuario, FILTER_VALIDATE_EMAIL)) {
        $email   = $usuario;
        $usuario = '';
    } else {
        $email   = '';
    }
    $login  = "SELECT *";
    $login .= " FROM clientes";
    $login .= " WHERE (usuario ='{$usuario}' OR email='{$email}') AND senha = '{$senha}'";

    $acesso = mysqli_query($conecta, $login);

    if (!$acesso) {
        die("Falha na conexão do banco");
    }

    $informacao = mysqli_fetch_assoc($acesso);
    $_SESSION["user_portal"] = '';

    if (empty($informacao)) {
        $mensagem = "ERRO: Usuário ou senha inválido!";

        /*if (session_unset('user_portal')) {
            session_destroy('user_portal');
        }*/
    } else {
        $_SESSION["user_portal"] = $informacao["clienteID"];
        echo "<script> window.location.href ='../index.php';</script>";
        //header("Location:../index.php");
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
    <div class="logo">
        <img src="../_assets/RLSOFT(1).png">
    </div>

    <meta charset="UTF-8">

    <title>RLSOFT-Login</title>
    <link href="../_css/estilo.css" rel="stylesheet">
    <link href="../_css/login.css" rel="stylesheet">
</head>

<body background="../_assets/167-1677324_simple-dark-blue-background-images-dark-blue-background.jpg">
    <main>
        <div style="background-color: rgba(0, 0, 20, 0.5)" id="janela_login">
            <form action="login.php" method="post">
                <h2>LOGIN</h2>
                <label class="conta">Usuario/<br>Email:</label><input type="text" name="usuario" placeholder="Usuario/email" required="required"><br>
                <label class="conta">Senha:</label><input type="password" name="senha" placeholder="Senha" required="required"><br>
                <input type="submit" value="Acessar">


                <div id="botao_cadastro">
                    <h4>
                        <p>Não possui login?<a href="cadastro.php">Cadastrar-se</a></p>
                    </h4>

                </div>
                <?php
                if (isset($mensagem)) {
                ?>
                    <p><?php echo $mensagem ?>
                    <?php
                }
                    ?>
                    <img id="R" src="../_assets/R (11).png">
            </form>
        </div>
    </main>

</body>

</html>
<?php
// Fechar conexao
mysqli_close($conecta); ?>