<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Interação Medicamentosa</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" contento="IE-edge">
  <meta name=viewport content="width-device-width, initial=scale=1.0">
  <link rel="stylesheet" href="style2.css">

  <?php include ('config.php');  ?>
</head>

<body>
  <main>
<?php
include('funcao.php');
$id_usuario = @$_REQUEST['id_usuario'];

if (@$_REQUEST['id_usuario'] and !$_REQUEST['botao'])
{

    gravarLog ($id_log,date("Y-m-d",time()),$id_usuario, 'criou');
    $query = "
        SELECT * FROM usuario WHERE id_usuario='{$_REQUEST['id_usuario']}'
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
    if (!$_REQUEST['id_usuario'])
    {
        $criptografada = base64_encode($_POST['criptografada']);
        $insere = "INSERT into usuario (nome_usuario,senha,tipo, email, login) VALUES 
        ('{$_POST['nome_usuario']}', '$criptografada', '{$_POST['tipo']}', '{$_POST['email']}','{$_POST['login']}')";
        // echo $insere;
        $result_insere = mysqli_query($con, $insere);

        
        if ($result_insere)echo "<script>alert('Cadastro Realizado');top.location.href='login.php';</script>";
        
        else echo "<script>alert('Cadastro não realizado');top.location.href=cadastroUsuario.php';</script>"; 
        
    } 
}
?>

    <h1>Criar conta</h1>
    <div class="social-media">
      <a href="#">
        <img src="assets/pills.png" alt="pills">
      </a>
        <div class="alternative">
          <span></span>
        </div> 

      <form action="cadastroUsuario.php" method="post" name="cadastroUsuario"> 
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
                    <input type="hidden" name="id_usuario" value="<?php echo @$_REQUEST['id_usuario'] ?>" />
      </form> 
    </main>
    <section class="images">
      <img src="assets/seringa.png" alt="seringa">
      <div class="circle"></div>
    </section>
</body>
</html>