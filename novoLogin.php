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
    <h1>Criar conta</h1>
    <div class="social-media">
    <a href="#">
      <img src="assets/pills.png" alt="pills">
    </a>
      <div class="alternative">
        <span></span>
      </div>

      <form action=""> 
        <label for="name">
          <span>Nome</span>
          <input type="text" id="name" name="name">
        </label>

        <label for="email">
          <span>E-mail</span>
          <input type="email" id="email" name="email">
        </label>
        <label for="password">
          <span>Senha</span>
          <input type="password" id="senha" name="senha">
        </label>

        <label for="login">
          <span>Login</span>
          <input type="text" id="login" name="login">
        </label>

        <input typ="submit" value="sign up">
      </form> 
    </main>
    <section class="images">
      <img src="assets/mobile.png" alt="mobile">
      <div class="circle"></div>
    </section>
</body>
</html>