<!doctype html>
<html lang="pt-br">

<head>
    <title>Consulta de Interações</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="imagens/icons8-pílula-48.png" type="image/x-icon">

    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="estilo/style.css">
    
  <?php include ('config.php');  ?>
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
                        <a class="nav-link " aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Consultar
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item active" href="cons_interacoes.html">Interações</a></li>
                            <li><a class="dropdown-item" href="cons_medicamento.html">Posologia</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Relátorio/Cadastrar
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="rel_usuario.html">Usuário</a></li>
                            <li><a class="dropdown-item " href="rel_medicamento.html">Medicamentos</a></li>
                            <li><a class="dropdown-item " href="rel_interacoes.html">Interações</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-primary" href="login.php">LOGIN</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br>

    <main >
        <img class="mb-4" src="imagens/logo.png" alt="" width="72" height="57"><br>
        <h1>Consulta de Interações</h1><br>
       
        <form action="" method="post" class="container text-center">
            <div class="row g-3">
                
                <div class="col-sm-3">
                    <input type="text" class="form-control" placeholder="Classe" name="nome_medicamento" >
                  </div>
                <div class="col-sm">
                    <button type="submit" class="btn btn-primary" name="botao" value="Consultar">Consultar</button>
                </div>
              </div>
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

    <!-- Optional JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>

</html>