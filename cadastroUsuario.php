<html>
<head>
    <link rel=stylesheet type="text/css" href="cadastroUser.css">
    <title>Novo Cadastro</title>
<?php 
    include ('config.php');
     
?>
</head>

<body>

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
        echo $insere;
        $result_insere = mysqli_query($con, $insere);

        
        if ($result_insere)echo "<script>alert('Cadastro Realizado');top.location.href='login.php';</script>";
        
        else echo "<script>alert('Cadastro não realizado');top.location.href=cadastroUsuario.php';</script>"; 
        
    } else  
    {
        gravarLog ($id_usuario, $nome_usuario, $data, 'atualizou');

        $insere = "UPDATE usuario SET 1
                tipo = '{$_POST['tipo']}'
                    , nome_usuario = '{$_POST['nome_usuario']}'
                    , email = '{$_POST['email']}'
                    , criptografada = '{$_POST['senha']}'
                    , tipo = '{$_POST['tipo']}'
                    , email = '{$_POST['email']}'
                    , login = '{$_POST['login']}'
                    

                    WHERE id_usuario = '{$_REQUEST['id_usuario']}'
                ";
        $result_update = mysqli_query($con, $insere);

        if ($result_update) echo "<h2> Registro atualizado</h2>";
        else echo "<h2>Registro não atualizado</h2>";
        
    }
}


?>
    <div>
        <form action="usuario.php" method="post" name="usuario">
            <table>
                <tr>
                    <td class="title">Cadastro de Usuários</td>
                </tr>
                <tr>
                    <td width="131"><?php echo @$_POST['id_usuario']; ?>&nbsp;
                </tr>
                <tr>
                    <td>
                        <label for="log"> Log in</label>
                        <input type="text" id="log" required name="login">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name"> Nome</label>
                        <input type="text" id="name" required name="nome_usuario">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="email"> E-mail</label>
                        <input type="text" id="email" required name="email">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="password"> Senha</label>
                        <input type="password" required id="password " name="criptografada">
                    </td>
                </tr>

                <tr>
                    <td><input type="hidden" name="tipo" value="USER">
                </tr>
                <td>
                    <input type="submit" value="Gravar" name="botao" />
                    <input type="hidden" name="id_usuario" value="<?php echo @$_REQUEST['id_usuario'] ?>" />
                </td>
                </tr>
            </table>
            <table>

            </table>
        </form>
    </div>


</body>

</html>