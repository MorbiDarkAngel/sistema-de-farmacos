<!doctype html>
<html lang="pt-br">

<head>
    <title>HOME</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="imagens/icons8-pílula-48.png" type="image/x-icon">

    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="estilo/style.css">
</head>

<body>
<?php
?>
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
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Consultar
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="consulta.php">Consulta de Interações</a></li>
                           
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Relátorio/Cadastrar
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="rel_usuario.html">Usuário</a></li>
                            <li><a class="dropdown-item" href="rel_medicamento.html">Medicamentos</a></li>
                            <li><a class="dropdown-item" href="rel_interacoes.html">Interações</a></li>
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

    <main>
        <h1>Consultas de medicamentos e suas interações</h1><br>
        <p>Sistema online para verificar a posologia do medicamento e sua interação com outros medicamentos. Interação
            Medicamentosa (I.M.) é uma resposta farmacológica ou clínica resultante de uma combinação de medicamentos,
            diferente dos efeitos dos dois dados individualmente. A interação fármaco-fármaco pode aumentar ou diminuir
            os efeitos de um ou ambos os fármacos, levando a uma ineficácia terapêutica ou aparecimento de reações
            adversas.</p>
        <p>Dados demonstram que em torno de 4,4 a 25% de situações relacionadas a eventos adversos a medicamentos
            decorrem de interações medicamentosas I.M., consequentemente levando indivíduos a setores de emergência.
            Logo, a redução ou potencialização de um efeito farmacológico advindo da administração simultânea de
            fármacos caracteriza um dos tipos de I.M</p>
        <p>Como consequência da utilização do trato gastrointestinal para a realização do processo de absorção, a via
            oral aplicada tanto para a administração de medicamentos quanto para a ingestão de alimentos, quando
            utilizada sem os devidos cuidados, acaba por provocar interações com efeitos não esperáveis no nosso
            organismo, sendo esse tipo a interação entre nutriente e fármaco. Salienta-se que embora alimentos sejam
            capazes de impactar na absorção de fármacos, determinados nutrientes tornam-se essenciais para a completa
            eficácia do medicamento.Os mecanismos de interação podem englobar vários fatores como a fisiologia,
            administração e propriedades físico-químicas dos medicamentos e ou dos alimentos.</p>
    </main>
    <br>
    <footer>
        <p><strong>© 2022</strong></p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>
