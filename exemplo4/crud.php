<?php 
error_reporting(E_ALL);
ini_set("display_errors", 1);
$acao     = (isset($_POST['acao'])) ? $_POST['acao'] : '';
$nome     = (isset($_POST['nome'])) ? $_POST['nome'] : '';
$email    = (isset($_POST['email'])) ? $_POST['email'] : '';
$telefone = (isset($_POST['telefone'])) ? $_POST['telefone'] : '';
$pdo = new PDO("mysql:host=localhost;dbname=blog;charset=utf8", 'root', '');

if ($acao == 'incluir'):
	$sql = "INSERT INTO tab_cliente (nome, email, telefone)VALUES('$nome', '$email', '$telefone')";
	$stm = $pdo->prepare($sql);
	$retorno = $stm->execute();

	sleep(2);
	echo $retorno;
endif;


if ($acao == 'ver'):
	$sql = "SELECT id, nome, email, telefone FROM tab_cliente";
	$stm = $pdo->prepare($sql);
	$stm->execute();
	$dados = $stm->fetchAll(PDO::FETCH_OBJ);

	$tabela = "<table style=width:95%>
				<thead>
					<tr>
						<th>ID</th>
						<th>NOME</th>
						<th>E-MAIL</th>
						<th>TELEFONE</th>
					</tr>
				</thead>
				<tbody>";

	foreach($dados as $reg):
		$tabela .= "<tr>";
		$tabela .= "<td style=text-align:center>{$reg->id}</td>";
		$tabela .= "<td>{$reg->nome}</td>";
		$tabela .= "<td>{$reg->email}</td>";
		$tabela .= "<td style=text-align:right>{$reg->telefone}</td>";
		$tabela .= "</tr>";
	endforeach;

	$tabela .= "</tbody></table>";

	sleep(2);
	echo $tabela;
endif;

?>