<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Cadastro novo medicamento</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" contento="IE-edge">
  <meta name=viewport content="width-device-width, initial=scale=1.0">
  <link rel="stylesheet" href="style2.css">

  <?php include ('config.php');
?>
</head> 

<body>
<main>
<?php
include('funcao.php');
$id_classe = @$_REQUEST['id_classe'];

if (@$_REQUEST['id_classe'] and !$_REQUEST['botao'])
{
    $query = "
        SELECT * FROM classe WHERE id_classe='{$_REQUEST['id_classe']}'
    ";
    $result = mysqli_query($con, $query);
    $row = mysqli_fetch_assoc($result);
    //echo "<br> $query";   
    foreach( $row as $key => $value )
    {
        $_POST[$key] = $value;
    }
}

if (@$_REQUEST['botao'] == "Gravar") 
{
    if (!$_REQUEST['id_classe'])
    {
        $insere = "INSERT into classe (nome_classe, nome_medicamento, interacao_com, tipo_interacao) VALUES 
        ('{$_POST['nome_classe']}','{$_POST['nome_medicamento']}', '{$_POST['interacao_com']}','{$_POST['tipo_interacao']}')";
        echo $insere;
        $result_insere = mysqli_query($con, $insere);

        
        if ($result_insere)echo "<script>alert('Cadastro Realizado');top.location.href='paginaAdministrador.php';</script>";
        
        else echo "<script>alert('Cadastro não realizado');top.location.href=paginaAdministrador.php';</script>"; 
        
    } 
}
?>

    <h1>Cadastrar novo medicamento</h1>
     <div class="social-media">
      <a href="#">
        <img src="assets/pills.png" alt="pills">
      </a>
    </div>
        <div class="alternative">
          <span></span>
        </div> 

      <form action="cadastroFarmaco.php" method="post" name="cadastroFarmaco"> 
        <label for="name">
          <span>Classe do medicamento</span>
          <input type="text" id="nome_classe" required name="nome_classe">
        </label>

        <label for="nome_medicamento">
          <span>Nome do medicamento</span>
          <input type="text" id="nome_medicamento" required name="nome_medicamento">
        </label>
        <label for="interacao_com">
          <span>Faz interação com</span>
          <input type="text" required id="interacao_com " name="interacao_com">
        </label>

        <label for="tipo_interacao">
          <span>Tipo de interação</span>
          <input type="text" id="tipo_interacao" required name="tipo_interacao">
        </label>

         <input type="submit" value="Gravar" name="botao" />
                    <input type="hidden" name="id_classe" value="<?php echo @$_REQUEST['id_classe'] ?>" />
      </form> 
    </main>
    <section class="images">
      <img src="assets/seringa.png" alt="seringa">
      <div class="circle"></div>
    </section>
</body>
</html>