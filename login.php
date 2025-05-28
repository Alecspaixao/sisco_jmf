<?php
session_start();
require_once 'conexao.php';

// 1. Captura dados do formulário
$usuario = $_POST['usuario'];
$senha = $_POST['senha'];

// 2. Busca o usuário
$sql = "SELECT * FROM usuarios WHERE usuario = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$usuario]);
$user = $stmt->fetch();

if (!$user || !password_verify($senha, $user['senha'])) {
    die("Usuário ou senha inválidos.");
}

$_SESSION['usuario_id'] = $user['id'];
$_SESSION['nome'] = $user['nome'];

// 3. Verifica quantos perfis o usuário tem
$sql = "SELECT p.nome FROM perfis p
        JOIN usuario_perfil up ON up.perfil_id = p.id
        WHERE up.usuario_id = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$user['id']]);
$perfis = $stmt->fetchAll(PDO::FETCH_COLUMN);

if (count($perfis) == 1) {
    $_SESSION['perfil'] = $perfis[0];
    header("Location: dashboard.php");
    exit;
} else {
    $_SESSION['perfis'] = $perfis;
    header("Location: select-profile.php");
    exit;
}
