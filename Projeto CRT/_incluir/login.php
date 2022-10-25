<?php require_once("../../BD/conexao/conexao.php"); ?>

<?php 
    // iniciar variavel de sessao
    session_start();

    if( isset( $_POST["usuario"])) {
        $usuario    = $_POST["usuario"];
        $senha      = $_POST["senha"];

        $login  = "SELECT * ";
        $login .= " FROM clientes ";
        $login .= " WHERE usuario = '{$usuario}' and senha = '{$senha}'";

        $acesso = mysqli_query($conecta,$login);

        if (!$acesso) {
            die("Falha na consulta ao banco");
        }

        $informacao = mysqli_fetch_assoc($acesso);

        if ( empty($informacao) ) {
            $mensagem = "login sem sucesso";
        } else {
            $_SESSION["user_portal"] = $informacao["clienteID"];
            header("location:listagem.php");
        }
    }



?>

<!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Curso PHP Integração com MySQL</title>

    <!-- estilo -->
    <link href="../_css/estilo.css" rel="stylesheet">
    <link href="../_css/login.css" rel="stylesheet">
</head>

<body>
    <?php include_once("../_incluir/topo.php"); ?>
    <?php include_once("../_incluir/funcoes.php"); ?>

    <main>
    <div id="janela_login">
        <form action="login.php" method="post">
        <h2>Tela de Login</h2>
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="password" name="senha" placeholder="Senha">
        <input type="submit" value="Login">

        <?php
        if ( isset( $mensagem)) {
        ?>
        <p><?php echo $mensagem ?>
        <?php
        }
        ?>
</form>
</div>
    </main>

    <?php include_once("../_incluir/rodape.php"); ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>