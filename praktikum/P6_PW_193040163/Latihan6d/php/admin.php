<?php
// menghubungkan dengan file php lainnya
require 'function.php';

// melakukan query
$buku = query("SELECT * FROM buku");

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <style>
    body {
      background-color: #00FFFF;
    }
  </style>
</head>

<body>

  <div class="add">
    <a href="tambah.php">Tambah Data</a>
  </div>
  <table border="1" cellpadding="10" cellspacing="0">
    <tr>
      <th>ID</th>
      <th>OPSI</th>
      <th>COVER</th>
      <th>JUDUL BUKU</th>
      <th>PENULIS</th>
      <th>TEMA</th>
      <th>HARGA</th>
    </tr>

    <?php $i = 1;
    foreach ($buku as $bk) :
    ?>
      <tr>
        <td><?= $i; ?></td>
        <td>
          <a href="ubah.php?id=<?= $bk['id'] ?>"><button>Ubah</button></a>
          <a href="hapus.php?id=<?= $bk['id'] ?>" onclick="return confirm('Hapus Data??')"><button>Hapus</button></a>
        </td>
        <td><img width="100px" src="../assets/img/<?= $bk["cover"]; ?>"></td>
        <td><?= $bk["judul_buku"] ?></td>
        <td><?= $bk["penulis"] ?></td>
        <td><?= $bk["tema"] ?></td>
        <td><?= $bk["harga"] ?></td>
      </tr>
      <?php $i++; ?>
    <?php endforeach; ?>
  </table>
</body>

</html>