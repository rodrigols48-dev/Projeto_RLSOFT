<?php require_once("../../BD/conexao/conexao.php") ?>

<?php
// iniciar variavel de sessao
session_start();
?>

<?php
// insercao no banco
if (isset($_POST["codigobarra"])) {
    $nomeproduto      = $_POST["nomeproduto"];
    $descricao        = $_POST["descricao"];
    $codigobarra      = $_POST["codigobarra"];
    $tempoentrega     = $_POST["tempoentrega"];
    $precorevenda     = $_POST["precorevenda"];
    $precounitario    = $_POST["precounitario"];
    $estoque          = $_POST["estoque"];
    $imagemgrande     = $_POST["imagemgrande"];
    $imagempequena    = $_POST["imagempequena"];
    $categoriaID      = $_POST["categoriaID"];

    $inserir     = "INSERT INTO produtos ";
    $inserir    .= " ('nomeproduto', 'descricao', 'codigobarra', 'tempoentrega', 'precorevenda', 'precounitario', 'estoque', 'imagemgrande', 'imagempequena', 'categoriaID')";
    $inserir    .= " VALUES ('$nomeproduto','$descricao','$codigobarra', $tempoentrega,'$precorevenda','$precounitario', '$estoque', $imagemgrande, $imagempequena,$categoriaID)";

    $operacao_inserir = mysqli_query($conecta, $inserir);
    if (!$operacao_inserir) {
        die("Falha na inserção");
    } else {
        header("location:produtos.php");
    }
}

// selecao de estados
$categoriaID = "SELECT nomecategoria, categoriaID FROM categorias";
$linha_categoriaID = mysqli_query($conecta, $categoriaID);
if (!$linha_categoriaID) {
    die("erro no banco");
}


?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Produto - RLSOFT</title>
    <link href="../_css/estilo.css" rel="stylesheet">
    <link href="../_css/cadastro.css" rel="stylesheet">

    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
</head>

<body>
    <?php include_once("../_incluir/topo.php") ?>
    <?php include_once("../_incluir/funcoes.php") ?>
    <main>
        <div id="janela_cad_prod">
            <form action="cad_produtos.php" method="post">
                <h2>CADASTRAR PRODUTO</h2>

                <label class="produto">Nome do Produto:</label><input type="text" name="nomeproduto" placeholder="Nome do Produto" required><br>
                <label class="produto">Descrição:</label><input class="produto" type="text" name="descricao" placeholder="Descrição" required><br>
                <label class="produto">Código de barra:</label><input type="text" name="codigobarra" placeholder="Código de Barra" required><br>
                <label class="produto">tempo de entrega:</label><input type="number" name="tempoentrega" placeholder="Tempo entrega" required><br>
                <label class="produto">Preço de revenda:</label><input type="text" name="precorevenda" placeholder="preço Revenda" required><br>
                <label class="produto">Preço Unitário:</label><input type="text" name="precounitario" placeholder="Preço Unitario" required><br>
                <label class="produto">Estoque:</label><input type="text" name="estoque" placeholder="Estoque" required><br>
                <label class="produto">Imagem inicial:</label><input type="file" name="imagemgrande" placeholder="Imagem Grande"><br>
                <label class="produto">Imagem detalhe:</label><input type="file" name="imagempequena" placeholder="Imagem Pequena"><br>
                <label class="produto">Categoria:</label><select name="categoriaID">

                    <?php while ($linha = mysqli_fetch_assoc($linha_categoriaID)) { ?>
                        <option value="<?php echo $linha["categoriaID"]; ?>">
                            <?php echo $linha["nomecategoria"]; ?>
                        </option>
                    <?php } ?>
                </select><br>

                <input type="submit" value="Cadastrar">
                <input type="button" value="Voltar" onclick="window.location.replace('produtos.php')">

        </div>
        </form>
    </main>
    <?php include_once("../_incluir/rodape.php") ?>
</body>

</html>

<?php
// Fechar conexao
mysqli_close($conecta);
?>