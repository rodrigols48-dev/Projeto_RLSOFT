<?php require_once("../../BD/conexao/conexao.php") ?>
<?php include_once("../_incluir/funcoes.php") ?>
<?php include_once("../_incluir/Upload.php") ?>

<?php
// iniciar variavel de sessao
session_start();
?>

<?php
// insercao no banco
try {

    if (isset($_POST["codigobarra"])) {
        $nomeproduto      = $_POST["nomeproduto"];
        $descricao        = $_POST["descricao"];
        $codigobarra      = $_POST["codigobarra"];
        $tempoentrega     = $_POST["tempoentrega"];
        $precorevenda     = $_POST["precorevenda"];
        $precounitario    = $_POST["precounitario"];
        $estoque          = $_POST["estoque"];
        $categorias       = $_POST["categorias"];

        $inserir     = "INSERT INTO produtos ";
        $inserir    .= " ( nomeproduto, descricao, codigobarra, tempoentrega, precorevenda, precounitario, estoque, categoriaID)";
        $inserir    .= " VALUES ('$nomeproduto','$descricao','$codigobarra', $tempoentrega, $precorevenda, $precounitario, $estoque, $categorias)";
        $operacao_inserir = mysqli_query($conecta, $inserir);

        if (!$operacao_inserir) {
            die("Falha na inserção");
        } else {
            $ProdutoID = "SELECT Max(produtoID) FROM produtos";
            $linha_result = mysqli_query($conecta, $ProdutoID);
            if (!$linha_result) {
                die("erro no banco");
            } else {

                while ($fetch = mysqli_fetch_row($linha_result)) {
                    $ProdutoID = $fetch[0];
                }

                if ($ProdutoID != '') {
                    echo "<script>alert($ProdutoID)</script>";
                }

                for ($i = 1; $i < 3; $i++) {
                    echo "<script>alert($i)</script>";

                    if ($i == 1) {
                        $tamanho = strlen($_FILES['arquivo-imagem-g']['name']) - 4;
                        $nome_completo = "images/produtos_imagem/" . $_FILES['arquivo-imagem-g']['name'];
                        $nome_produto = substr($_FILES['arquivo-imagem-g']['name'], 0, $tamanho);
                        $variacao = 'arquivo-imagem-g';

                        $clausula = "imagemgrande='" . $nome_completo . "'";
                    } else {
                        $tamanho = strlen($_FILES['arquivo-imagem-p']['name']) - 4;
                        $nome_completo = 'images/produtos_imagem/' . $_FILES['arquivo-imagem-p']['name'];
                        $nome_produto = substr($_FILES['arquivo-imagem-p']['name'], 0, $tamanho);
                        $variacao = 'arquivo-imagem-p';

                        $clausula = "imagempequena='" . $nome_completo . "'";
                    }

                    if (UploadImage('images/produtos_imagem/', $nome_produto, $variacao) == true) {
                        $alterar = "UPDATE produtos set $clausula where produtoID=" . $ProdutoID;
                        $operacao_alterar = mysqli_query($conecta, $alterar);
                    };
                }

                header("location:produtos.php");
            }
        }
    }
} catch (Exception $e) {
    echo 'Exceção capturada: ',  $e->getMessage(), "\n";
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

<body background="../_assets/background-pc.jpg">
    <?php include_once("../_incluir/topo.php") ?>

    <main>
        <div id="janela_cad_prod">
            <form action="cad_produtos.php" method="post" enctype="multipart/form-data">
                <h2>CADASTRAR PRODUTO</h2>

                <label class="produto">Nome do Produto:</label><input type="text" name="nomeproduto" placeholder="Nome do Produto" required><br>
                <label class="produto">Descrição:</label><input type="text" name="descricao" placeholder="Descrição" required><br>
                <label class="produto">Código de barra:</label><input type="text" name="codigobarra" placeholder="Código de Barra" required><br>
                <label class="produto">tempo de entrega:</label><input type="number" name="tempoentrega" placeholder="Tempo entrega(em dia)" required><br>
                <label class="produto">Preço de revenda:</label><input type="number" name="precorevenda" placeholder="preço Revenda" required><br>
                <label class="produto">Preço Unitário:</label><input type="number" name="precounitario" placeholder="Preço Unitario" required><br>
                <label class="produto">Estoque:</label><input type="number" name="estoque" placeholder="Estoque" required><br>
                <input type="file" name="arquivo-imagem-g" accept="image/png, image/jpeg, image/gif"><br>
                <input type="file" name="arquivo-imagem-p" accept="image/png, image/jpeg, image/gif"><br>

                <input type="hidden" name="MAX_FILE_SIZE" value="45000000">
                <label class="produto">Categoria:</label><select name="categorias">

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