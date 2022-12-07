
<?php
function gravarLog ($id_log, $criador_fk, $data, $acao)
{
	include ('config.php'); //sempre buscar o banco para incluir os dados
	
	//Inserindo dados no banco de acordo com os parÂmetros estabelecidos no "gravarLog"
	$query = "INSERT INTO log (id_log, criador_fk, data, acao) values 
	('$id_log', '$criador_fk', '$data', '$acao')";
	
	$result = mysqli_query($con,$query);
}
?>
