<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SISCO - Início</title>
    <link rel="stylesheet" href="{{ asset('css/index.css') }}">
</head>
<body>
    <header class="top-menu">
        <div class="logo">
            <img src="" alt="">
        </div>

        <button class="hamburger" id="hamburger">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </button>

        <nav class="nav-links" id="nav-links">
            <a href="#">Início</a>
            <a href="#">Manual do sistema</a>
            <a href="#">Contato</a>
        </nav>
    </header>

    <div class="main-login">
        <div class="left-login">
            <h1>Seja bem-vindo ao <br> SISCO</h1>
            <p>SIstema de gerenciamendo de ocorrências da EEEP José Maria Falcão</p>
        </div>

        <div class="right-login">
            <div class="card-login">
                <h1>Insira seus dados para continuar</h1>
                <form action="#" method="POST">
                    @csrf
                    @method('POST')
                    <div class="text-field">
                        <label for="usuario">Usuário</label>
                        <input type="text" name="usuario" placeholder="Usuário">
                    </div>
                    <div class="text-field">
                        <label for="senha">Senha</label>
                        <input type="password" name="senha" placeholder="Senha">
                    </div>
                    <button class="btn-login">Acessar</button>
                </form>
            </div>
        </div>
    </div>
    <!-- Script no final do body -->
    <script src="{{ asset('js/index.js') }}"></script>
</body>
</html>
