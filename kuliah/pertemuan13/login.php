<?php
session_start();

if (isset($_SESSION['login'])) {
  header("Location: index.php");
  exit;
}
require 'function.php';

// ketika tombol login ditekan
if (isset($_POST['login'])) {
  $login = login($_POST);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
</head>

<body>
  <h3>Form Login</h3>
  <?php if (isset($login['error'])) : ?>
    <p><?= $login['pesan']; ?></p>
  <?php endif; ?>
  <form action="" method="POST"></form>
  <ul>
    <li>
      <label>
        Username :
        <input type="text" name="username" autofocus autocomplete="off" required>
      </label>
    </li>
    <li>
      <label>
        password :
        <input type="password" name="password" required>
      </label>
    </li>
    <li>
      <button type="submit" name="login">Login</button>
    </li>
    <a href="registrasi.php">Tambah User Baru</a>
    <li>
    </li>
  </ul>
</body>

</html>