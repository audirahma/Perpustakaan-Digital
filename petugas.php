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

// Query untuk mengambil data buku
$sql = "SELECT * FROM buku";
$result = $conn->query($sql);

// Menutup koneksi setelah selesai
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perpustakaan Digital</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar {
            background-color: #003366;
        }

        .navbar-brand, .nav-link {
            color: white !important;
        }

        .hero-section {
            background-color: #004080;
            color: white;
            padding: 50px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
        }

        .hero-section p {
            font-size: 1.2rem;
        }

        .card {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        footer {
            background-color: #003366;
            color: white;
            padding: 15px 0;
            text-align: center;
            margin-top: auto;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Perpustakaan Digital</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#hero">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#books">Daftar Buku</a>
                    </li>
                    <li class="nav-item">
                        <a href="https://wa.me/087888013179" class="btn btn-success" style="background-color: #003366">Kontak</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="hero-section" id="hero">
        <h1>Selamat Datang di Perpustakaan Digital</h1>
        <p>Temukan buku favoritmu dan nikmati pengalaman membaca terbaik!</p>
        <a href="#books" class="btn btn-light btn-lg">Lihat Daftar Buku</a>
    </div>

    <!-- Book Section -->
    <div class="container mt-5" id="books">
        <h2 class="text-center mb-3">Daftar Buku</h2>
        <div class="d-flex justify-content-center mb-3">
            <a href="tambah.php" class="btn btn-success mx-3">Tambah Buku</a>
            <a href="peminjaman.php" class="btn btn-warning mx-3">Kelola Peminjaman</a>
        </div>

        <div class="row">
            <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <div class="col-md-3">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row['judul']; ?></h5>
                                <p class="card-text">Penulis: <?php echo $row['penulis']; ?></p>
                                <p class="card-text">Penerbit: <?php echo $row['penerbit']; ?></p>
                                <p class="card-text">Tahun Terbit: <?php echo $row['tahun_terbit']; ?></p>
                                <div class="d-flex justify-content-between mt-3">
                                    <a href="edit.php?id=<?php echo $row['judul']; ?>" class="btn btn-primary">Edit</a>
                                    <a href="hapus.php?id=<?php echo $row['judul']; ?>" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus buku ini?');">Hapus</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            <?php else: ?>
                <p class="text-center">Tidak ada buku tersedia.</p>
            <?php endif; ?>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Perpustakaan Digital</p>
    </footer>
</body>
</html>
