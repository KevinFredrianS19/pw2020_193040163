  <?php
    // menghubungkan dengan file php lainnya
    require 'php/function.php';

    if (isset($_GET['cari'])) {
        $keyword = $_GET['keyword'];
        $buku = query("SELECT * FROM buku WHERE
                    judul_buku LIKE '%$keyword%' OR
                    penulis LIKE '%$keyword%' OR
                    tema LIKE '%$keyword%' OR
                    harga LIKE '%$keyword%' ");
    } else {
        $buku = query("SELECT * FROM buku");
    }
    ?>

  <!DOCTYPE html>
  <html lang="en">

  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="css/style.css">
  </head>

  <body>
      <div id="page-wrap">
          <div class="content">
              <h3 align="center">INSPIRATION BOOK</h3>
              <form action="" method="GET">
                  <input type="text" name="keyword" size="20" autocomplete="off" autofocus>
                  <button type="submit" name="cari" style="width: auto">Cari</button>
              </form>
              <?php if (empty($buku)) : ?>
                  <tr>
                      <td colspan="7">
                          <p style="color: red; font-style:italic">Data tidak ditemuka</p>
                      </td>
                  </tr>
              <?php endif; ?>
              <?php foreach ($buku as $book) : ?>
                  <p class="judul">
                      <a href="php/detail.php?id=<?= $book['id'] ?>">
                          <?= $book['judul_buku'] ?>
                      </a>
                  </p>
              <?php endforeach; ?>
          </div>
          <a href="php/admin.php">
              <button>Masuk ke halaman admin</button>
          </a>
      </div>
  </body>

  </html>