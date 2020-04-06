<html>
    <head>
        <title>BelajarPHP</title>
        <style>
            .bodybag{
                text-align:center
            }
        </style>
    </head>

    <body class="bodybag">
        <?php
            if (isset($_POST['hitung'])){

                $bil1 = $_POST['bil1'];
                $bil2 = $_POST['bil2'];
                $operasi = $_POST['operasi'];

                switch($operasi){
                    case 'tambah':
                        $hasil = $bil1 + $bil2;
                    break;
                    case 'kurang':
                        $hasil = $bil1 - $bil2;
                    break;
                    case 'kali':
                        $hasil = $bil1 * $bil2;
                    break;
                    case 'bagi':
                        $hasil = $bil1 / $bil2;
                    break;
                }
            }
        ?>

        <form action="index.php" method="post">
            <input type="text" name="bil1" placeholder="Angka Pertama">
            <br>
            <input type="text" name="bil2" placeholder="Angka Kedua">
            <br>
            <br>
            Operasi
            <select name="operasi">
                <option value="tambah">Tambah</option>
                <option value="kurang">Kurang</option>
                <option value="kali">Kali</option>
                <option value="bagi">Bagi</option>
            </select>
            <br>
            <input type="submit" name="hitung" value="Jumlahkan">
        </form>
        
        <?php if (isset($_POST['hitung'])) { ?>
            <input type="text" value="<?php echo $hasil; ?>">
        <?php } else { ?>
            <input type="text" value="0">
        <?php } ?>
        
    </body>
</html>
