<?php
session_start();
if (!isset($_SESSION['usuario_id']) || !isset($_SESSION['perfis'])) {
    header("Location: index.html");
    exit;
}
?>


<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Selecione seu perfil</title>
</head>
<body>
  <h2>Olá, <?php echo $_SESSION['nome']; ?>! Selecione seu perfil:</h2>
  <form action="definir_perfil.php" method="POST">
    <?php foreach ($_SESSION['perfis'] as $perfil): ?>
      <button type="submit" name="perfil" value="<?php echo $perfil; ?>">
        <?php echo ucfirst($perfil); ?>
      </button>
    <?php endforeach; ?>
  </form>
</body>
</html>
