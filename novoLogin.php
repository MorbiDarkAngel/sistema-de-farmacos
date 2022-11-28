<html>
<head>
<title>Interação Medicamentosa</title>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<?php include ('config.php');  ?>
</head>

<body>
<ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">Consulta simples de interações</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login / Novo Cadastro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logoff.php">Sair agora</a>
                </li>
                
            </ul>

<form action="index.php?botao=gravar" method="post" name="form1">
<table width="95%" height="12%" border="4" align="center">
  <tr bgcolor="forestgreen">
    <td colspan=5 align="center"> <b>CONSULTA DE INTERAÇÕES MEDICAMENTOSAS</b>  </td>
  </tr>
  <tr>
  <tr align="center">
    <td width="17%" align="center">Digite o nome do medicamento: </td>
    <td width="45%" align="center"><input type="text" name="nome_medicamento" width="" /></td>

    <td width="21%" align="center"><input type="submit"  name="botao" value="Consultar" /></td>
  </tr>
</table>
</form>

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