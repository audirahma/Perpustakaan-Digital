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

// Mengambil id buku dari URL (parameter query string)
if (isset($_GET['id'])) {
    $id_buku = $_GET['id'];

    // Menyiapkan query untuk menghapus buku berdasarkan id
    $sql = "DELETE FROM buku WHERE judul = ?";
    
    // Persiapkan dan ikuti query
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $id_buku);

    // Eksekusi query
    if ($stmt->execute()) {
        // Jika berhasil, kembali ke halaman utama
        echo "<script>alert('Buku berhasil dihapus'); window.location.href = 'petugas.php';</script>";
    } else {
        // Jika gagal, tampilkan pesan error
        echo "Error: " . $stmt->error;
    }

    // Tutup statement
    $stmt->close();
} else {
    // Jika tidak ada id, tampilkan pesan error
    echo "<script>alert('ID buku tidak ditemukan'); window.location.href = 'petugas.php';</script>";
}

// Menutup koneksi
$conn->close();
?>
