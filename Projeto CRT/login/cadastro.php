<?php require_once("../../BD/conexao/conexao.php"); ?>

<?php
// insercao no banco
if (isset($_POST["cidade"])) {
    $nomecompleto   = $_POST["nomecompleto"];
    $usuario        = $_POST["usuario"];
    $senha          = $_POST["senha"];
    $email          = $_POST["email"];
    $cidade         = $_POST["cidade"];
    $estados        = $_POST["estados"];
    $telefone       = $_POST["telefone"];

    $inserir     = "INSERT INTO clientes ";
    $inserir    .= " (nomecompleto, usuario, senha, email, cidade, estados, telefone)";
    $inserir    .= " VALUES ('$nomecompleto','$usuario','$senha','$email','$cidade','$estados','$telefone'";

    $operacao_inserir = mysqli_query($conecta, $inserir);
    if (!$operacao_inserir) {
        die("Falha na inserção");
    } else {
        echo ("Usuario cadastrado com sucesso!");
    }
}


// selecao de estados
$estados = "SELECT nome, estadoID FROM estados";
$linha_estados = mysqli_query($conecta, $estados);
if (!$linha_estados) {
    die("erro no banco");
}

?>

<!DOCTYPE html>
<html>

<head>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
    <div class="logo">
        <a href="../../Projeto CRT/index.php">
            <img src="/Projeto CRT/_assets/RLSOFT(1).png"></a>
    </div>
    <meta charset="UTF-8">

    <title>RLSOFT-Cadastro</title>
    <link href="../_css/estilo.css" rel="stylesheet">
    <link href="../_css/cadastro.css" rel="stylesheet">

</head>

<body background="../_assets/167-1677324_simple-dark-blue-background-images-dark-blue-background.jpg">


    <?php include_once("../_incluir/funcoes.php"); ?>

    <main>
        <div style="background-color: rgba(0, 0, 20, 0.5)" id="janela_cadastro">
            <form action="cadastro.php" method="post">
                <h2>CADASTRO</h2>

                <label class="conta">Nome Completo:</label><input type="text" name="nomecompleto" placeholder="Nome Completo" required><br>
                <label class="conta">Usuário:</label><input type="text" name="usuario" placeholder="Usuario" required><br>
                <label class="conta">Senha:</label><input type="password" name="senha" placeholder="Senha" required><br>
                <label class="conta">Email:</label><input type="email" name="email" placeholder="Email" required><br>
                <label class="conta">Telefone:</label><input type="text" name="telefone" placeholder="Telefone" required><br>
                <label class="conta">Cidade:</label><input type="text" name="cidade" placeholder="Cidade" required><br>
                <label class="conta">Estado:</label><select name="estados">

                    <?php while ($linha = mysqli_fetch_assoc($linha_estados)) { ?>
                        <option value="<?php echo $linha["estadoID"]; ?>">
                            <?php echo $linha["nome"]; ?>
                        </option>
                    <?php } ?>
                </select><br>
                
                <label class="conta"><input type="radio" name="nivel1" value="admin"  >admin</label><br>
                <label class="conta"><input type="radio" name="nivel2" value="user" >user</label>

                <input type="submit" value="Cadastrar">
                <input type="button" value="Voltar" onclick="window.location.replace('login.php')">


            </form>
        </div>
    </main>
    <?php include_once("../login/rodape_login.php"); ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>