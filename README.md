## 🏥 **SIMRS - UAS WEB 2**

### 📝 **Deskripsi Kasus**

Sebuah klinik kecil ingin sistem digital untuk:

* Mencatat **data pasien**
* Mengatur **jadwal dokter**
* Mendaftarkan pasien yang berobat
* Mencatat **keluhan dan diagnosa**
* Mencetak **tagihan pembayaran**

### 🎭 **Peran (User Role)**

1. **Admin** → kelola user & data dokter
2. **Petugas Pendaftaran** → daftarkan pasien & kunjungan
3. **Dokter** → isi diagnosa dan tindakan
4. **Kasir** → proses pembayaran pasien

---

## 💾 Struktur Tabel

* Silahakan lihat skema database pada gambar (sudah ada file import sqlnya cuma tidak direkomendasikan, jadi bisa buat sendiri untuk databasenya sesuai pada gambar)

## 🔄 Alur Sistem

### 🟢 **1. Pendaftaran Pasien**

* Petugas login → daftarkan pasien baru atau pilih yang lama.
* Pilih dokter dan jadwal → buat data **kunjungan**.

### 🟡 **2. Pemeriksaan Dokter**

* Dokter login → lihat daftar kunjungan hari ini.
* Klik pasien → isi **keluhan, diagnosa, dan tindakan** di `rekam_medis`.

### 🔵 **3. Pembayaran**

* Kasir login → lihat pasien yang statusnya “selesai”.
* Hitung tagihan → input ke tabel `pembayaran`.


## Tools
* Codeigniter 3 -> https://codeload.github.com/bcit-ci/CodeIgniter/zip/3.1.13
* Dashboard Admin -> https://github.com/startbootstrap/startbootstrap-sb-admin-2/archive/gh-pages.zip

## Tutorial
* Tutorial pasang dashboard admin di CI3 -> https://www.petanikode.com/codeigniter-bootstrap/
* Tutorial relasi database -> https://www.youtube.com/watch?v=399iegLhXYQ
* Tutorial sistem login lengkap -> https://www.youtube.com/watch?v=8ROgaHfLRq0&list=PLFIM0718LjIXU8ul9FiN-owk04cQKtHPw
