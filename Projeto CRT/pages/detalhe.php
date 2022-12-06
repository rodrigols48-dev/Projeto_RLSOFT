<?php require_once("../../BD/conexao/conexao.php") ?>

<?php
// iniciar variavel de sessao
session_start();
?>

<?php
if (isset($_GET["codigo"])) {
    $produto_id = $_GET["codigo"];
} else {
    Header("Location: inicial.php");
}

// Consulta ao banco de dados
$consulta = "SELECT * ";
$consulta .= "FROM produtos ";
$consulta .= "WHERE produtoID = {$produto_id} ";
$detalhe    = mysqli_query($conecta, $consulta);

// Testar erro
if (!$detalhe) {
    die("Falha no Banco de dados");
} else {
    $dados_detalhe = mysqli_fetch_assoc($detalhe);
    $produtoID      = $dados_detalhe["produtoID"];
    $nomeproduto    = $dados_detalhe["nomeproduto"];
    $descricao      = $dados_detalhe["descricao"];
    $codigoproduto    = $dados_detalhe["codigoproduto"];
    $tempoentrega   = $dados_detalhe["tempoentrega"];
    $precorevenda   = $dados_detalhe["precorevenda"];
    $precounitario  = $dados_detalhe["precounitario"];
    $estoque        = $dados_detalhe["estoque"];
    $imagemgrande   = $dados_detalhe["imagemgrande"];
}
?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $nomeproduto ?></title>

    <link href="../_css/estilo.css" rel="stylesheet">
    <link href="../_css/produto_detalhe.css" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />

</head>

<body>
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>
        <div id="detalhe_produto">
            <ul>
                <li class="imagem"><img src="<?php echo $imagemgrande ?>"></li>
                <li>
                    <h2><?php echo $nomeproduto ?></h2>
                </li>
                <li class="descricao"><b>Descrição: </b><br><?php echo $descricao ?></li>
                <br><br><br><br><br><br><br>
                <li><b>Código do Produto: </b><?php echo $codigoproduto ?></li>
                <li><b>Tempo de Entrega(em dia): </b><?php echo $tempoentrega ?></li>
                <li><b>Preço Revenda: </b><?php echo real_format($precorevenda) ?></li>
                <li><b>Preço Unitário: </b><?php echo real_format($precounitario) ?></li>
                <li><b>Estoque: </b><?php echo $estoque ?></li>
            </ul>
            <input type="button" value="Voltar" onclick="window.location.replace('produtos.php')">
        </div>


    </main>

    <?php include_once("../_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>