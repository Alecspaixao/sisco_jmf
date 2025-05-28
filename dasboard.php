<?php
session_start();

if (!isset($_SESSION['usuario_id'], $_SESSION['perfil'])) {
    header("Location: index.html");
    exit;
}

echo "<h1>Bem-vindo, {$_SESSION['nome']}!</h1>";
echo "<p>Você está logado como: <strong>{$_SESSION['perfil']}</strong></p>";
?>

<a href="logout.php">Sair</a>
