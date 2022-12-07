<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>`Página do administrador</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" contento="IE-edge">
  <meta name=viewport content="width-device-width, initial=scale=1.0">
  <link rel="stylesheet" href="style2.css">
  <?php include ('config.php');  
        require('cadastrar.php');
  ?>
</head>

</head>

<body>

    <main><div class="right-login">
        <H1><b name=botao href="paginaAdmin.php"><?php echo "Bem vindo ". $_SESSION["login"]; ?> </b></H1>

        <button class="btn-login" type=submit name=botao href="cadastroFarmaco.php">  <a class="nav-link active" aria-current="page" href="cadastroFarmaco.php"><h2>Cadastrar novo fármaco</h2></a></button>

        <button class="btn-login" type=submit name=botao href="cadastroAdministrador.php">  <a class="nav-link active" aria-current="page" href="cadastroAdministrador.php"><h2>Cadastrar novo Administrador</h2></a></button><br>        
     
        <button class="btn-login" type=submit name=botao href="logoff.php">  <a class="nav-link active" aria-current="page" href="logoff.php"><h2>Sair agora</h2></a></button>  
            
        </li>
    </ul>

  

</body>
</html>