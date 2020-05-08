<?php
session_start();

if (!isset($_SESSION['username'])) {
  header("Location: login.php");
  exit;
}
require 'function.php';

$id = $_GET['id'];
$bk = query("SELECT * FROM buku WHERE id = $id")[0];

// cek apakah tombol ubah sudah ditekan
if (isset($_POST['ubah'])) {
  if (ubah($_POST) > 0) {
    echo "<script>
            alert('Data berhasil diubah');
            document.location.href = 'admin.php';
          </script>";
  } else {
    echo "<script>
            alert('Data gagal diubah');
            document.location.href = 'admin.php';
          </script>";
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <h3>Form Ubah Data Barang</h3>
  <form action="" method="POST">
    <input type="hidden" name="id" id="id" value="<?= $bk['id']; ?>">
    <ul>
      <li>
        <label for="cover">cover</label><br>
        <input type="text" name="cover" id="cover" required><br><br>
      </li>
      <li>
        <label for="judul_buku">Judul buku</label><br>
        <input type="text" name="judul buku" id="judul buku" required><br><br>
      </li>
      <li>
        <label for="penulis">penulis</label><br>
        <input type="text" name="penulis" id="penulis" required><br><br>
      </li>
      <li>
        <label for="tema">tema</label><br>
        <input type="text" name="tema" id="tema" required><br><br>
      </li>
      <li>
        <label for="harga">Harga</label><br>
        <input type="text" name="harga" id="harga" required><br><br>
      </li>
      <br>
      <button type="submit" name="ubah">Ubah Data!</button>
      <button type="submit">
        <a href="index.php" style="text-decoration: none; color: black;">Kembali</a>
      </button>
    </ul>
  </form>
</body>

</html>