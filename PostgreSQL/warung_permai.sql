CREATE TABLE pelanggan (
    id_plgn SERIAL PRIMARY KEY,
    nama VARCHAR(50),
    no_telp VARCHAR(13)
);

SELECT * FROM produk;

INSERT INTO pelanggan (nama, no_telp)
VALUES ('Sora', '081251154795');

SELECT * FROM pelanggan;