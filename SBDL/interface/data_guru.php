<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Halaman Guru</title>
</head>
<body>
    <h1 align="center">Data Guru</h1>
    <a href="tambah_guru.php">Tambah Data Guru</a>
    <table align="center" border="1" cellpadding="10" cellspacing="1">
        <tr>
            <th>No.</th>
            <th>Nama Guru</th>
            <th>NIP</th>
            <th>Alamat</th>
            <th>Jenis Kelamin</th>
            <th>No. Telepon</th>
            <th>Jabatan</th>
        </tr>
        <?php
        include('koneksi.php');
        $query = mysqli_query($koneksi, "SELECT * FROM d_guru");
        $no = 1;
        while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
            <td><?= $no++?></td>
            <td><?= $data['nama']; ?></td>
            <td><?= $data['nip']; ?></td>
            <td><?= $data['alamat']; ?></td>
            <td><?= $data['jns_kel']; ?></td>
            <td><?= $data['nohp']; ?></td>
            <td><?= $data['jabatan']; ?></td>
        </tr>
        <?php
             }
        ?>
    </table>
    <a href="index.php">Kembali</a>
</body>
</html>