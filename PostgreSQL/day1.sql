CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY,
    nama_pelanggan VARCHAR(50),
    kategori_produk VARCHAR(50),
    harga_total INT,
    tanggal_pembelian DATE
);

INSERT INTO transaksi (id_transaksi, nama_pelanggan, kategori_produk, harga_total, tanggal_pembelian)
VALUES
(1, 'Budi', 'Elektronik', 5000000, '2026-08-01'),
(2, 'Ani', 'Pakaian', 250000, '2026-08-01'),
(3, 'Caca', 'Elektronik', 7500000, '2026-08-02'),
(4, 'Doni', 'Buku', 150000, '2026-08-02'),
(5, 'Eka', 'Pakaian', 300000, '2026-08-02'),
(6, 'Fani', 'Elektronik', 3000000, '2026-08-03');

--Soal: Pihak panitia memintamu mencari tahu siapa saja pembeli barang 'Elektronik'.
--Tampilkan nama_pelanggan dan harga_total dari tabel transaksi, dengan syarat kategori_produk adalah 'Elektronik'.
--Urutkan hasilnya dari harga_total yang paling mahal, dan tampilkan hanya 2 data teratas saja.

SELECT nama_pelanggan, harga_total
FROM transaksi
WHERE kategori_produk = 'Elektronik'
ORDER BY harga_total DESC
LIMIT 2;

SELECT SUM(harga_total) AS total_omzet, AVG(harga_total) AS rata_rata_harga
FROM transaksi;
