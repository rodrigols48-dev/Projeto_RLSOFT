<?php

function UploadImage($caminho, $nome, $variacao)
{
	// verifica se foi enviado um arquivo 
	if (isset($_FILES[$variacao]['name']) && $_FILES[$variacao]["error"] == 0) {

		echo "Você enviou o arquivo: <strong>" . $_FILES[$variacao]['name'] . "</strong><br />";
		echo "Este arquivo é do tipo: <strong>" . $_FILES[$variacao]['type'] . "</strong><br />";
		echo "Temporáriamente foi salvo em: <strong>" . $_FILES[$variacao]['tmp_name'] . "</strong><br />";
		echo "Seu tamanho é: <strong>" . $_FILES[$variacao]['size'] . "</strong> Bytes<br /><br />";

		$arquivo_tmp = $_FILES[$variacao]['tmp_name'];
		$arquivo = $_FILES[$variacao]['name'];

		// Pega a extensao
		$extensao = strrchr($arquivo, '.');

		// Converte a extensao para mimusculo
		$extensao = strtolower($extensao);

		// Somente imagens, .jpg;.jpeg;.gif;.png
		// Aqui eu enfilero as extesões permitidas e separo por ';'
		// Isso server apenas para eu poder pesquisar dentro desta String
		if (strstr('.jpg;.jpeg;.gif;.png', $extensao)) {
			// Cria um nome único para esta imagem
			// Evita que duplique as imagens no servidor.
			$novoNome = strtolower(trim($nome . $extensao));

			// Concatena a pasta com o nome
			$destino = $caminho . $novoNome;

			// tenta mover o arquivo para o destino
			if (move_uploaded_file($arquivo_tmp, $destino)) {
				echo "Arquivo salvo com sucesso em : <strong>" . $destino . "</strong><br />";
				return true;
			} else {
				echo "Erro ao salvar o arquivo. Aparentemente você não tem permissão de escrita.<br />";
				return false;
			}
		} else {
			echo "Você poderá enviar apenas arquivos \"*.jpg;*.jpeg;*.gif;*.png\"<br />";
			return false;
		}
	} else {
		return false;
	}
}
