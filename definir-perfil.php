<?php
session_start();

if (!isset($_POST['perfil'])) {
    die("Perfil não selecionado.");
}

$_SESSION['perfil'] = $_POST['perfil'];
header("Location: dashboard.php");
exit;
