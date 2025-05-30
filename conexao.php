<?php
$host = 'localhost';
$dbname = 'sisco';
$user = 'root'; // troque se necessário
$pass = 'bdjmf';     // troque se necessário

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erro na conexão: " . $e->getMessage());
}
?>
