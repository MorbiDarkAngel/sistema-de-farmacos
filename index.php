<html>
<head>
<title>Interação Medicamentosa</title>
<meta charset="UTF-8">
<?php include ('config.php');  ?>
</head>

<body>

<form action="index.php?botao=gravar" method="post" name="form1">
<table width="95%" height="12%" border="1" align="center">
  <tr bgcolor="skyblue">
    <td colspan=5 align="center">CONSULTA DE INTERAÇÕES MEDICAMENTOSAS</td>
  </tr>
  <tr>
  <tr>
    <td width="17%" align="center">Digite o nome do medicamento: </td>
    <td width="26%" align="center"><input type="text" name="nome_medicamento"  /></td>
    <td width="21%" align="center"><input type="submit" name="botao" value="Consultar" /></td>
  </tr>
</table>
</form>

<?php if (@$_REQUEST['botao'] == "Consultar") { ?>

<table width="95%" border="1" align="center">
  <tr bgcolor="skyblue ">
    <th width="6%">Classe medicamento: </th>
    <th width="15%">Nome do Medicamento:</th>
    <th width="20%">Interação medicamentosa: </th>
    <th width="30%">Tipo de interação:</th>
  </tr>

<?php

	$nome_medicamento = @$_POST['nome_medicamento'];

	 
	$query = "SELECT *
			  FROM classe 
			  WHERE id_classe > 0 ";
	$query .= ($nome_medicamento ? " AND nome_medicamento LIKE '%$nome_medicamento%' " : "");
	
	$query .= " ORDER by id_classe";
	$result = mysqli_query($con, $query);

/*	
	echo "<pre>";
	echo $query;
	echo mysql_error();
	echo "</pre>";
*/
	while ($coluna=mysqli_fetch_array($result)) 
	{
		
	?>    
    <tr>
      <th width="15%"><?php echo $coluna['nome_classe']; ?></th>
      <th width="15%"><?php echo $coluna['nome_medicamento']; ?></th>
      <th width="18%"><?php echo $coluna['interacao_com']; ?></th>
      <th width="27%"><?php echo $coluna['tipo_interacao']; ?></th>

    </tr>

    <?php
	// Fim do laço While
	} 
?>
</table>
<?php	
}
?>
</body>