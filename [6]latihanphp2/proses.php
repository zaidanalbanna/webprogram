<html>
    <head>
        <title>BelajarPHP</title>
        <style>
            .tabelhasil{
                text-align:center;
                width:20%;
            }
        </style>
    </head>
    <body>
        <?php
        if (isset($_POST['kirim'])) {
            $nim = $_POST['nim'];
            $prodi = $_POST['prodi'];
            $ntugas = $_POST['ntugas'];
            $nuts = $_POST['nuts'];
            $nuas = $_POST['nuas'];
            $nakhir = (0.4 * $ntugas) + (0.3 * $nuts) + (0.3 * $nuas);

            if ($nakhir > 84) {
                $status = 'Lulus';
            } elseif ($nakhir > 70) {
                $status = 'Lulus';
            } elseif ($nakhir > 60) {
                $status = 'Lulus';
            } elseif ($nakhir > 50) {
                $status = 'Tidak Lulus';
            } else {
                $status = 'Tidak Lulus';
            }

            $slccatatan = "";
            if (!empty($_POST['catatan'])) {
                foreach ($_POST['catatan'] as $catatan) {
                    $slccatatan .= $catatan . " <br> ";
                    
                }
            }

            echo "
            <table border=1 align=center width=50%>
                <thead>
                    <tr class=tabelhasil>
                        <td>Prodi</td>
                        <td>NIM</td>
                        <td>Nilai Akhir</td>
                        <td>Status</td>
                        <td>Catatan Khusus</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class=tabelhasil>
                        <td>$prodi</td>
                        <td>$nim</td>
                        <td>$nakhir</td>
                        <td>$status</td>
                        <td>$slccatatan</td>
                    </tr>
                </tbdoy
            </table>
            ";
        }
        ?>
    </body>
</html>