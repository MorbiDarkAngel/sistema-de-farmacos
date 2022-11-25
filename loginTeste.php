<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Login</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="viewport" content="width-device-width, initial=scale=1.0">
   <link rel="stylesheet" href="style.css">
  <?php include ('config.php'); //Função de conexão ao Banco de Dados  ?>
</head>

<body>
<?php
session_start(); // Inicia a sessão
if (@$_REQUEST['botao']=="Entrar")
{
  
  $login = $_POST['login'];
  $senha = $_POST['senha'];
     $criptografada = base64_encode($senha);
  
  $decriptografada = base64_decode($criptografada);
  echo "Linha 24 criptografada::::: \n $criptografada";
  echo "Linha 25 decriptografada::::: \n $decriptografada";

  $query = "SELECT * FROM usuario WHERE login = '$login' AND senha = '$criptografada' ";
  $result = mysqli_query($con, $query);
  echo "\nFora do While";
  while ($coluna=mysqli_fetch_array($result)) 
  {
    echo "Entrou no While";
    
    $_SESSION["id_usuario"]= $coluna["id_usuario"]; 
    $_SESSION["login"] = $coluna["login"]; 
    $_SESSION["tipo"] = $coluna["tipo"];
    $niv = $coluna['tipo'];
    if($niv == true)
    {
      if($niv == "ADMIN"){ 
      header("Location: paginaAdmin.php"); 
      exit; 
      }

      if($niv == "USER"){ 
      header("Location: index.php"); 
      exit; 
      }
    }
  } 
}
?>
  <div class="main-login">
    <div class="left-login">
      <h1>Faça seu login<br>E registre suas consultas</h1>
      <img src="imagem.svg" class="imagem" alt="imagem">
    </div>
    <div class="right-login">
      <div class="card-login">
        <h1>Insira seus dados aqui</h1>
        <form action=# method=post class="textfield">
        <div class="textfield">
          <label for="usuario">Usuário</label>
          <input type=text name=login placeholder="Usuário">
        </div>

         <div class="textfield">
          <label for="senha">Senha</label>
          <input type=password name=senha placeholder="Senha">
        </div>
         <input class="btn-login" type=submit name=botao value=Entrar>
      </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
