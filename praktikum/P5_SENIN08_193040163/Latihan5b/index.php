<?php
// menghubungkan dengan file php lainnya
require 'php/function.php';

// melakukan query
$buku = query("SELECT * FROM buku");
?>
<html>

<head>
    <title>Document</title>
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
            <?php foreach ($buku as $row) : ?>
                <tr>
                    <td><?= $row["id"]; ?></td>
                    <td><img width="100px" src="assets/img/<?= $row['cover']; ?>"></td>
                    <td><?= $row["judul buku"]; ?></td>
                    <td><?= $row["penulis"]; ?></td>
                    <td><?= $row["tema"]; ?></td>
                    <td><?= $row["harga"]; ?></td>
                </tr>
                <?php $i++ ?>
            <?php endforeach; ?>

        </tbody>
    </table>
</body>

</html>