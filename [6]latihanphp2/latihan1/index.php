<html>
    <head>
        <title>BelajarPHP</title>
    </head>

    <body>
        <form action="proses.php" method="post">
            <table>
                <tr>
                    <td>NIM</td>
                    <td>:</td>
                    <td><input type="text" name="nim"></td>
                <tr>
                <tr>
                    <td>Prodi</td>
                    <td>:</td>
                    <td><select name="prodi">
                            <option value="S1 Teknik Informatika">S1 Teknik Informatika</option>
                            <option value="S1 Sistem Informasi">S1 Sistem Informasi</option>
                            <option value="D3 Teknik Informatika">D3 Teknik Informatika</option>
                    </td>
                <tr>
                <tr>
                    <td>Nilai Tugas</td>
                    <td>:</td>
                    <td><input type="text" name="ntugas"></td>
                <tr>
                <tr>
                    <td>Nilai UTS</td>
                    <td>:</td>
                    <td><input type="text" name="nuts"></td>
                <tr>
                <tr>
                    <td>Nilai UAS</td>
                    <td>:</td>
                    <td><input type="text" name="nuas"></td>
                <tr>
                <tr>
                    <td>Catatan Khusus</td>
                    <td>:</td>
                    <td><input type="checkbox" name="catatan[]" value="Kehadiran lebih dari 70%">Kehadiran lebih dari 70%
                        <br>
                        <input type="checkbox" name="catatan[]" value="Aktif di kelas">Aktif di kelas
                        <br>
                        <input type="checkbox" name="catatan[]" value="Tidak terlambat mengumpulkan tugas">Tidak terlambat mengumpulkan tugas
                        <br>                
                    </td>
                <tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><button type="submit" name="kirim">Submit</button></td>
                <tr>
            </table>

        </form>
    </body>
</html