<?php 
$acao = (isset($_POST['acao'])) ? $_POST['acao'] : '' ;
$pdo = new PDO("mysql:host=localhost;dbname=blog;charset=utf8", 'root', '');

if($acao == 'carregar_json'):
	$sql = 'SELECT descricao FROM tab_cidade';
	$stm = $pdo->prepare($sql);
	$stm->execute();
	$dados = $stm->FetchAll(PDO::FETCH_OBJ);

	sleep(2);
	echo json_encode($dados);
endif;

?>