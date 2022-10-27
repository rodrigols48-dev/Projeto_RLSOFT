<?php require_once("../../BD/conexao/conexao.php"); ?>

<?php
// iniciar variavel de sessao
session_start();
if (!isset($_SESSION["user_portal"])) {
    header("Location:../index.php");
}

// Determinar localidade BR
setlocale(LC_ALL, 'pt_BR');

// Consulta ao banco de dados
$produtos = "SELECT produtoID, nomeproduto, tempoentrega, precounitario, imagempequena, imagemgrande ";
$produtos .= "FROM produtos ";
if (isset($_GET["produto"])) {
    $nome_produto = $_GET["produto"];
    $produtos .= "WHERE nomeproduto LIKE '%{$nome_produto}%' ";
}
$resultado = mysqli_query($conecta, $produtos);
if (!$resultado) {
    die("Falha na consulta ao banco");
}
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
    <link href="../_css/produtos.css" rel="stylesheet">
    <link href="../_css/produto_pesquisa.css" rel="stylesheet">
</head>

<body>
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>
        <div id="janela_pesquisa">
            <form action="produtos.php" method="get">
                <input type="text" name="produto" placeholder="Pesquisa">
                <input type="image" src="../_assets/botao_search.png">
            </form>
        </div>

        <div id="listagem_produtos">
            <?php

            while ($linha = mysqli_fetch_assoc($resultado)) {
            ?>
                <ul>
                    <li class="imagem">
                        <a href="detalhe.php?codigo=<?php echo $linha['produtoID'] ?>">
                            <img src="<?php echo $linha["imagempequena"] ?>">
                        </a>
                    </li>
                    <li>
                        <h3><?php echo $linha["nomeproduto"] ?></h3>
                    </li>
                    <li>Tempo de Entrega : <?php echo $linha["tempoentrega"] ?></li>
                    <li>Preço unitário : <?php echo real_format($linha["precounitario"]) ?></li>
                </ul>
            <?php
            }
            ?>
        </div>



    </main>
    <?php include_once("../_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>