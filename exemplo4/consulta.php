<?php 

$nome = (isset($_GET['nome'])) ? $_GET['nome'] : '';
$pdo = new PDO("mysql:host=localhost;dbname=blog;charset=utf8", 'root', '');

if(empty($nome)):
	$sql = "SELECT id, nome, email, telefone FROM tab_cliente";
	$stm = $pdo->prepare($sql);
	$stm->execute();
	$dados = $stm->fetchAll(PDO::FETCH_OBJ);
else:
	$sql = "SELECT id, nome, email, telefone FROM tab_cliente WHERE nome LIKE '$nome%'";
	$stm = $pdo->prepare($sql);
	$stm->execute();
	$dados = $stm->fetchAll(PDO::FETCH_OBJ);
endif;

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
?>