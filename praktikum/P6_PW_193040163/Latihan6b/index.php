  <?php
    // menghubungkan dengan file php lainnya
    require 'php/function.php';

    // melakukan query
    $buku = query("SELECT * FROM buku");
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
              <?php foreach ($buku as $book) : ?>
                  <p class="judul">
                      <a href="php/detail.php?id=<?= $book['id'] ?>">
                          <?= $book['judul_buku'] ?>
                      </a>
                  </p>
              <?php endforeach; ?>
          </div>
      </div>
  </body>

  </html>