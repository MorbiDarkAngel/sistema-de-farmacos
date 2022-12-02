<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>
    <title>Cadastrar Produto</title>
    <?php include ('config.php');  
        include('verifica.php')
        ?>
</head>

<body>
    <?php
        $sql = "Select * from produto where id_produto > 0";
        $result = mysqli_query($con, $sql);

        ?>
    <nav>
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.php"> X</a>
            </li>


        </ul>
    </nav>
    <?php
    include('funcao.php');
    $id_usuario = @$_REQUEST['id_produto'];
    if (@$_REQUEST['botao'] == "Gravar") 
    {
        if (!@$_REQUEST['id_produto'])
        {

          $insere = "INSERT into classe (nome_classe, nome_medicamento, interacao_com, tipo_interacao) VALUES 
          ('{$_POST['nome_classe']}', '{$_POST['nome_medicamento']}','{$_POST['interacao_com']}','{$_POST['tipo_interacao']}'x')";
            
		    $result_insere = mysqli_query($con, $insere);
            if ($result_insere) {
                echo  "<script>alert('Novo medicamento inserido');</script>"; 
                header('location: index.php');
            }
            
        }
    }
    ?>
    <form action="cadastroFarmaco.php" method="post" name="classe">
        <div><?php echo @$_POST['id_classe']; ?>&nbsp;</div>


        <div class="mb-3">
            <label for="nome_classe" class="form-label">Nome do produto</label>
            <input type="text" name="nome_classe" class="form-control" id="nome_classe" aria-describedby="emailHelp"
                value="<?php echo @$_POST['nome_classe']; ?>" required>
        </div>
        <div class="mb-3">
            <label for="valor" class="form-label">Valor</label>
            <input type="number" value="<?php echo @$_POST['preco']; ?>" step="0.01" name="preco" min="0.01"
                class="form-control" id="valor">
        </div>
        <div class="mb-3">
            <label for="descricao" class="form-label">Descrição</label>
            <textarea name="descricao" class="form-control" id="descricao" maxlength="220" cols="80"
                rows="10"></textarea>
        </div>
        <tr>

            <div><?php echo @$_POST['categoria_fk']; ?>&nbsp;</div>

        <tr>
            <div>
                <td>Categoria:</td>
                <td>
                    <select type="text" name="categoria" value="<?php echo @$_POST['categoria']; ?>">
                        <?php 
	$result_tipos = "SELECT * FROM categoria";
	$resultado_tipos = mysqli_query($con, $result_tipos);
	while($row_tipos = mysqli_fetch_assoc($resultado_tipos)) { ?>
                        <option value="<?php echo $row_tipos[ 'nome_categoria']; ?>">
                            <?php echo $row_tipos['nome_categoria']; ?>
                        </option> <?php 
	}
	?>
                    </select><br><br>
        </tr>




        <div>
            <td>Status:</td>
            <td name="estado" value="<?php echo @$_POST['estado']; ?>">

                <div class="form-check">
                    <input class="form-check-input" type="radio" checked value="0" name="estado" id="flexRadioDefault1">
                    <label class="form-check-label" value='0'> Pendente </label>
                </div>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" checked value="<?php echo $_SESSION["id_usuario"]; ?>"
                name="criador_fk" id="flexRadioDefault1">
            <label class="form-check-label"> <?php echo $_SESSION["id_usuario"]; ?> </label>
        </div>
        <input type="submit" value="Gravar" name="botao" class="btn btn-primary">
        <input type="hidden" name="id_usuario" value="<?php echo @$_REQUEST['id_usuario'] ?>" />




    </form>



</body>

</html>