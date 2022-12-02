<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Cadastro novo usuário</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" contento="IE-edge">
  <meta name=viewport content="width-device-width, initial=scale=1.0">
  <link rel="stylesheet" href="style2.css">

  <?php include ('config.php');  
    // include('verifica.php')
  ?>
</head>

<body>
    <main>
        <?php
include('funcao.php');

if (@$_REQUEST['botao'] == "Gravar") 
{
    if (!$_REQUEST['id_classe'])
    {
         $insere = "INSERT into classe (nome_classe, nome_medicamento, interacao_com, tipo_interacao) VALUES 
          ('{$_POST['nome_classe']}', '{$_POST['nome_medicamento']}','{$_POST['interacao_com']}','{$_POST['tipo_interacao']}')";
            
            $result_insere = mysqli_query($con, $insere);
            if ($result_insere) {
                echo  "<script>alert('Novo medicamento inserido');</script>"; 
                header('location: index.php');
            }
        // echo $insere;
        $result_insere = mysqli_query($con, $insere);

        
        if ($result_insere)
            {
                echo "<script>alert('Novo fármaco cadastrado');
                top.location.href='novoCadastroFarmaco.php';</script>";
            }
        
        else {
            echo "<script>alert('Cadastro não realizado');
            top.location.href=novoCadastroFarmaco.php';</script>"; 
        }
        
    } 
}
?>

    <h1>Cadastrar novo medicamento</h1>
    <div class="social-media">
      <a href="#">
        <img src="assets/pills.png" alt="pills">
      </a>
        <div class="alternative">
          <span></span>
        </div> 

      <form action="novoCadastroFarmaco.php" method="post" name="novoCadastroFarmaco"> 
        <label for="name">
          <span>Nome</span>
          <input type="text" id="name" required name="nome_usuario">
        </label>

        <label for="email">
          <span>E-mail</span>
          <input type="email" id="email" required name="email">
        </label>
        <label for="password">
          <span>Senha</span>
          <input type="password" required id="password " name="criptografada">
        </label>

        <label for="login">
          <span>Login</span>
          <input type="text" id="login" required name="login">
        </label>
         <tr>
            <td><input type="hidden" name="tipo" value="USER">
         </tr>


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