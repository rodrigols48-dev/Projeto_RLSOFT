<?php
// PASSO 1
$servidor = "crtsistemas.com.br";
$usuario = "crtsis22_andes_rodrigo";
$senha = "RO3258946147";
$banco = "crtsis22_andes_rodrigo";
$conecta = mysqli_connect($servidor, $usuario, $senha, $banco);

// PASSO 2
if (mysqli_connect_errno()) {
    die("Conexão falhou:" . mysqli_connect_errno());
}
