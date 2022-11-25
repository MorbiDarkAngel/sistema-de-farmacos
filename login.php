<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Login</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="viewport" content="width-device-width, initial=scale=1.0">
   <link rel="stylesheet" href="style.css">
  <?php include ('config.php');  ?>
</head>

<body>
  <div class="main-login">
    <div class="left-login">
      <h1>Faça seu login<br>E registre suas consultas</h1>
      <img src="imagem.svg" class="imagem" alt="imagem">
    </div>
    <div class="right-login">
      <div class="card-login">
        <h1>Insira seus dados aqui</h1>
        <div class="textfield">
          <label for="usuario">Usuário</label>
          <input type="text" name="usuario" placeholder="Usuário">
        </div>
         <div class="textfield">
          <label for="senha">Senha</label>
          <input type="password" name="senha" placeholder="Senha">
        </div>
        <button class="btn-login">Login</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
