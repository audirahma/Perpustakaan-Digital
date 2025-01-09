<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perpustakaan";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Mengecek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Query untuk mengambil data peminjaman
$sql = "
    SELECT 
        anggota.nama AS nama_anggota,
        buku.judul AS judul_buku,
        peminjaman.tanggal_pinjam,
        pengembalian.tanggal_pengembalian,
        pengembalian.denda,
        petugas.nama AS nama_petugas
    FROM 
        peminjaman
    JOIN 
        anggota ON peminjaman.id_anggota = anggota.id_anggota
    JOIN 
        buku ON peminjaman.id_buku = buku.id_buku
    LEFT JOIN 
        pengembalian ON peminjaman.id_peminjaman = pengembalian.id_peminjaman
    JOIN 
        petugas ON peminjaman.id_petugas = petugas.id_petugas
";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kelola Peminjaman</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7fc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #495057;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #007bff;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #dee2e6;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            vertical-align: middle;
        }

        th {
            background-color: #f8f9fa;
            color: #343a40;
            font-size: 1rem;
        }

        td {
            background-color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        tr:hover {
            background-color: #e9ecef;
        }

        .no-data {
            text-align: center;
            font-style: italic;
            color: #6c757d;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Kelola Peminjaman</h1>
        <a href="petugas.php" class="btn btn-primary mb-3">Kembali ke Beranda</a>
        <table class="table">
            <thead>
                <tr>
                    <th>No</th> <!-- Added No column -->
                    <th>Nama Anggota</th>
                    <th>Judul Buku</th>
                    <th>Tanggal Pinjam</th>
                    <th>Tanggal Kembali</th>
                    <th>Denda</th>
                    <th>Nama Petugas</th>
                </tr>
            </thead>
            <tbody>
                <?php if ($result->num_rows > 0): ?>
                    <?php $no = 1; // Initialize a counter variable ?>
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <tr>
                            <td><?php echo $no++; ?></td> <!-- Display the serial number -->
                            <td><?php echo $row['nama_anggota']; ?></td>
                            <td><?php echo $row['judul_buku']; ?></td>
                            <td><?php echo $row['tanggal_pinjam']; ?></td>
                            <td><?php echo $row['tanggal_pengembalian'] ?: '-'; ?></td>
                            <td><?php echo $row['denda'] ?: '0'; ?></td>
                            <td><?php echo $row['nama_petugas']; ?></td>
                        </tr>
                    <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="7" class="no-data">Tidak ada data peminjaman.</td> <!-- Adjusted colspan -->
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</body>

</html>

<?php
// Menutup koneksi
$conn->close();
?>