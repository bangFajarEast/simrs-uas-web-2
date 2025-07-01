CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255),
  `password` varchar(255),
  `role` varchar(255)
);

CREATE TABLE `pasien` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nama` varchar(255),
  `tanggal_lahir` date,
  `no_hp` varchar(255)
);

CREATE TABLE `dokter` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nama` varchar(255),
  `spesialis` varchar(255),
  `hari_praktek` varchar(255),
  `jam_mulai` time,
  `jam_selesai` time
);

CREATE TABLE `kunjungan` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `pasien_id` int,
  `dokter_id` int,
  `tanggal_kunjungan` date,
  `status` varchar(255)
);

CREATE TABLE `rekam_medis` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `kunjungan_id` int,
  `keluhan` text,
  `diagnosa` text,
  `tindakan` text
);

CREATE TABLE `pembayaran` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `kunjungan_id` int,
  `total_tagihan` decimal,
  `status_bayar` varchar(255)
);

ALTER TABLE `kunjungan` ADD FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`);

ALTER TABLE `kunjungan` ADD FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`id`);

ALTER TABLE `rekam_medis` ADD FOREIGN KEY (`kunjungan_id`) REFERENCES `kunjungan` (`id`);

ALTER TABLE `pembayaran` ADD FOREIGN KEY (`kunjungan_id`) REFERENCES `kunjungan` (`id`);
