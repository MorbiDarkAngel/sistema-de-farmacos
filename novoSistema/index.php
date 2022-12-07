<html>
<head>
<title>Bem vindo ao nossos Sistema</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" contento="IE-edge">
  <meta name=viewport content="width-device-width, initial=scale=1.0">
  <link rel="stylesheet" href="style.css">
  

  <?php include ('config.php');  ?>
</head>

<body>
 <main>
  <h1 class="card-login"><p>Consulta simples de interações</h1>
    <a class="btn-login" href="login.php">Login / Novo Cadastro</a>
                <br><br><br>
                <a class="btn-login" href="logoff.php">Sair agora</a>
                <br><br><br>

<form action="index.php?botao=gravar" method="post" name="form1">
<table width="95%" height="33%" border="4" align="center">

  <tr bgcolor="paleturquoise">
    <td colspan=5 align="center"> <h1><b>CONSULTA DE INTERAÇÕES MEDICAMENTOSAS</b> </h1> </td>
  </tr>

  <tr>
  <tr align="center">

    <td width="17%" class="" align="center"><b>Digite o nome do medicamento: </b></td>
    <td width="45%" align="center"><input type="text" name="nome_medicamento" width="" /></td>
    <td width="21%" align="center"><input type="submit"  name="botao" value="Consultar" /></td>
  </tr>
</table>
</form>
</main>
<?php if (@$_REQUEST['botao'] == "Consultar") { ?>

<table width="95%" border="4" align="center">
  <tr bgcolor="forestgreen ">
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