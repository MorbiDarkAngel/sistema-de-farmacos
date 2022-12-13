<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>`Página do administrador</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="imagens/icons8-pílula-48.png" type="image/x-icon">

    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="estilo/style.css">
    
  <?php include ('config.php');  
        require('cadastrar.php');
  ?>
</head>

</head>

<body>
      <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">LabHub</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="index.php">Home</a>
                    </li>
                    
                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Novo Administrador
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="cadastroAdministrador.php">Administrador</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-primary" href="logoff.php"><b>Sair</b></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br>

    <main >
        <img class="mb-4" src="imagens/logo.png" alt="" width="72" height="57"><br>
        <h1>Página do administrador</h1><br>
       
    

 <div class="right-login">
        <H1><b name=botao href="paginaAdmin.php"><?php echo "Bem vindo ". $_SESSION["login"]; ?> </b></H1>

        <button class="btn-login" type=submit name=botao href="cadastroFarmaco.php">  <a class="nav-link active" aria-current="page" href="cadastroFarmaco.php"><h2>Cadastrar novo fármaco</h2></a></button>

        <button class="btn-login" type=submit name=botao href="cadastroAdministrador.php">  <a class="nav-link active" aria-current="page" href="cadastroAdministrador.php"><h2>Cadastrar novo Administrador</h2></a></button><br>        
     
        <button class="btn-login" type=submit name=botao href="logoff.php">  <a class="nav-link active" aria-current="page" href="logoff.php"><h2>Sair agora</h2></a></button>  
            
        </li>
    </ul>

  

</body>
</html>