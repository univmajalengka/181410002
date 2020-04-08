<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Halaman Dashboard</title>
</head>
<body>
    <h1 align="center">Selamat datang di Website</h1>
    <h3 align="center">List Halaman yang bisa dikunjungi</h3>
    <table align="center" border="1" cellpadding="10" cellspacing="0" width="800px">
        <tr>
            <th>No.</th>
            <th>Halaman</th>
        </tr>
        <tr>
            <th><?php $no = 1; echo $no++; ?></th>
            <th><a href="data_guru.php">Data Guru</a></th>
        </tr>
        <tr>
            <th><?php echo $no++; ?></th>
            <th><a href="data_siswa.php">Data Siswa</a></th>
        </tr>
    </table>
</body>
</html>