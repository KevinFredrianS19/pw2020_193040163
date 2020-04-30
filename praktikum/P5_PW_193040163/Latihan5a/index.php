<?php
// Melakukan koneksi ke database
$conn = mysqli_connect("localhost", "root", "") or die("Koneksi ke DB Gagal");

// Memilih Database
mysqli_select_db($conn, "tubes_193040163") or die("Database salah!");

// query mengambil objek dari tabel didalam database
$result = mysqli_query($conn, "SELECT * FROM buku");
?>
<html>

<head>
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>

<body>
    <h3 align="center">INSPIRATION BOOK</h3>
    <table border=1 cellpadding=3 cellspacing=3 align=center>
        <tr>
            <th>id</th>
            <th>cover</th>
            <th>judul buku</th>
            <th>penulis</th>
            <th>tema</th>
            <th>harga</th>
        </tr>
        <tbody>
            <?php $i = 1 ?>
            <?php while ($row = mysqli_fetch_assoc($result)) : ?>
                <tr>
                    <td><?= $row["id"]; ?></td>
                    <td><img width="100px" src="assets/img/<?= $row['cover']; ?>"></td>
                    <td><?= $row["judul buku"]; ?></td>
                    <td><?= $row["penulis"]; ?></td>
                    <td><?= $row["tema"]; ?></td>
                    <td><?= $row["harga"]; ?></td>
                </tr>
                <?php $i++ ?>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>

</html>