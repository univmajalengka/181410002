<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Halaman Siswa</title>
</head>
<body>
    <h1 align="center">Data Siswa</h1>
    <a href="tambah_siswa.php">Tambah Data Siswa</a>
    <table align="center" border="1" cellpadding="10" cellspacing="1">
        <tr>
            <th>No.</th>
            <th>Nama Siswa</th>
            <th>NIS</th>
            <th>Alamat</th>
            <th>Tempat Lahir</th>
            <th>Tanggal Lahir</th>
            <th>Jenis Kelamin</th>
            <th>Agama</th>
            <th>No. Telepon</th>
            <th>Tahun Masuk</th>
        </tr>
        <?php
        include('koneksi.php');
        $query = mysqli_query($koneksi, "SELECT * FROM d_siswa");
        $no = 1;
        while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
            <td><?= $no++?></td>
            <td><?= $data['nama']; ?></td>
            <td><?= $data['nis']; ?></td>
            <td><?= $data['alamat']; ?></td>
            <td><?= $data['tmp_lahir']; ?></td>
            <td><?= $data['tgl_lahir']; ?></td>
            <td><?= $data['jns_kel']; ?></td>
            <td><?= $data['agama']; ?></td>
            <td><?= $data['nohp']; ?></td>
            <td><?= $data['tahun_masuk']; ?></td>
        </tr>
        <?php
             }
        ?>
    </table>
    <a href="index.php">Kembali</a>
</body>
</html>