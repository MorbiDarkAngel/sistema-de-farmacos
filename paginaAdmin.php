<html>

<head>
    <title>Administrador</title>
    <?php include ('config.php');  
        require('cadastrar.php');
        
        ?>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>

</head>

<body>

    <?php
    
        $sql = "Select * from produto where id_produto > 0";
        $result = mysqli_query($con, $sql);

        ?>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="pgAdm.php"><?php echo $_SESSION["login"]; ?> </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="index.php">Voltar</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="logout.php">Sair</a>
        </li>
    </ul>

    <?php
        
        while (@$coluna=mysqli_fetch_array($result)) 
            {
                $id_produto = $coluna['id_produto'];
                $nome_produto = $coluna['nome_produto'];
                $preco = $coluna['preco'];
                $descricao = $coluna['descricao'];
        ?>

    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                <h5 class="card-title"><?php echo $coluna['id_produto']?></h5>
                    <h5 class="card-title"><?php echo $coluna['nome_produto']?></h5>
                    <p class="card-text"><?php echo $coluna['descricao']?></p>
                    <p class="card-text"><?php echo $coluna['preco']?></p>
                    <form action=# method="post" name="">
        <input type="submit" value="Aprovar" class="btn btn-primary" name="botao">
        <input type="hidden" name="id_produto" value="<?php echo @$_REQUEST['id_produto'] ?>" />
       
    </form>

                </div>
            </div>
        </div>

    </div>

    <?php  } 
    if (!@$_REQUEST['id_produto'])
    {
        $insere = "UPDATE produto SET estado  = 1
       WHERE id_produto = '$id_produto'
        ";
$result_update = mysqli_query($con, $insere);
}
    ?>

</body>
</html>