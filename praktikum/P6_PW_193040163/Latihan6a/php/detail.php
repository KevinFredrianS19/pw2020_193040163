<?php

// Mengecek apakah ada id yang dikirimkan
// jika tidak ada maka akan dikembalikan ke index.php
if (!isset($_GET['id'])) {
  header("location: ../index.php");
}

require 'function.php';

// Mengambil id dari url
$id = $_GET['id'];

// Melakukan query dengan parameter id yang diambil dari url
$buku = query("SELECT * FROM buku WHERE id = $id")[0];
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <div>
    <h3 align="center">BOOK INSPIRATION</h3>
    <div>
      <img width="100px" src="../assets/img/<?= $buku['cover']; ?>">
    </div>
    <div class="isi">
      <p><?= $buku['judul buku']; ?></p>
      <p><?= $buku["penulis"]; ?></p>
      <p><?= $buku["tema"]; ?></p>
      <p><?= $buku["harga"]; ?></p>
    </div>
    <div class="clear"></div>

    <button class="back"><a href="../assets/img/">Kembali</a></button>
  </div>

</body>

</html>