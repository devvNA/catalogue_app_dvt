# Tech-Specs / PRD: Simple Product Catalog App

Dokumen ini menguraikan spesifikasi teknis dan fungsional untuk aplikasi katalog produk sederhana.

**Tanggal:** 31 Oktober 2025
**Versi:** 1.0

## 1. Objektif

Membangun aplikasi katalog produk (Flutter) yang menampilkan data dari API publik, dengan fungsionalitas *infinite scroll*, *cart* (keranjang) berbasis *local storage*, dan pencarian produk. Aplikasi ini **wajib** diimplementasikan menggunakan **Clean Architecture** dan **BLoC Freezed** untuk *state management*.

## 2. Sumber Data

* **API (Master Data):** FakeStoreAPI
* **Base URL:** `https://fakestoreapi.com`
* **Endpoints:**
    * `GET /products`: Mengambil semua produk (untuk list & infinite scroll).
    * `GET /products/{id}`: Mengambil detail produk spesifik.

## 3. Fitur Fungsional (Wajib)

### F-01: Product List
* **Deskripsi:** Menampilkan daftar produk dalam (minimal) `GridView` atau `ListView`.
* **Data Tampil:** Gambar, Nama Produk, Harga.
* **Fungsionalitas:**
    * **Infinite Scroll:** List harus otomatis memuat produk baru saat pengguna *scroll* ke bagian bawah (implementasi *pagination*).
    * Saat di-klik, navigasi ke halaman **Detail Produk (F-02)**.

### F-02: Product Detail
* **Deskripsi:** Menampilkan detail lengkap dari satu produk yang dipilih.
* **Data Tampil:** Gambar (lebih besar), Nama, Harga, Deskripsi, Kategori.
* **Fungsionalitas:**
    * Terdapat tombol "Add to Cart" untuk menambahkan item ke **Keranjang (F-04)**.

### F-03: Product Search
* **Deskripsi:** Fitur pencarian produk berdasarkan nama.
* **Fungsionalitas:**
    * Input pencarian (misal: `TextField` di atas *list*).
    * List produk (F-01) harus secara reaktif memfilter hasil berdasarkan *query* pencarian.
    * *Catatan Teknis: Terapkan debounce (penundaan) untuk menghindari request API berlebihan saat mengetik.*

### F-04: Add to Cart (Local Storage)
* **Deskripsi:** Kemampuan menyimpan produk ke keranjang belanja.
* **Fungsionalitas:**
    * Menyimpan data keranjang (ID produk, kuantitas) di **Local Storage** (e.g., `shared_preferences` atau `hive`).
    * Data keranjang harus *persisten* (tidak hilang saat aplikasi ditutup).
    * (Opsional/Nice-to-have): Menampilkan jumlah item di *icon* keranjang.

## 4. Spesifikasi Teknis & Arsitektur

### T-01: Arsitektur
* **Pola:** Clean Architecture.
* **Lapisan:**
    1.  **Domain:** Entitas, *Use Cases*, *Abstract Repositories*. (Pure Dart, tidak ada dependensi Flutter).
    2.  **Data:** *Models* (DTO dgn Freezed), *Data Sources* (Remote/API & Local/Storage), Implementasi *Repository*.
    3.  **Presentation:** Pages/UI, *Widgets*, dan BLoC.

### T-02: State Management
* **Library:** `flutter_bloc`.
* **Boilerplate:** `freezed` (untuk *Events*, *States*, dan *Models*).
* **Pola:** Event -> BLoC -> State -> UI.

### T-03: Error Handling & States
* **Loading State (UX):** Wajib menampilkan *loading indicator* (cth: `CircularProgressIndicator`) saat *fetching* data awal atau *pagination*.
* **Error State (UX):** Wajib menampilkan pesan error yang jelas (cth: `Snackbar` atau *widget* khusus) jika API *fail* atau tidak ada koneksi.
* **Data Handling (Teknis):** Repository wajib mengembalikan `Either<Failure, Success>` (dari library `dartz`) untuk memisahkan logika sukses dan gagal.

### T-Ai-04: Dependensi Kunci (Core Stack)
* `flutter_bloc`: State Management.
* `freezed` / `freezed_annotation`: Union/Sealed class & Immutability.
* `dio`: Klien HTTP (Networking).
* `dartz`: Fungsional (Either type) untuk Error Handling.
* `get_it` / `injectable`: Service Locator (Dependency Injection).
* `shared_preferences` / `hive`: Local Storage (Cart).

## 5. Prioritas & Bobot Penilaian
Sesuai permintaan, fokus pengembangan dibagi sebagai berikut:

1.  **Struktur Kode & Arsitektur (30%):** Ketaatan pada Clean Architecture.
2.  **Fungsionalitas & Logika (30%):** BLoC, Infinite Scroll, dan logika Cart berfungsi.
3.  **UI/UX (20%):** Tampilan *usable*, responsif, dan *handling* *loading/error state*.
4.  **Error Handling (10%):** Aplikasi tidak *crash* dan memberi *feedback* error.
5.  **Dokumentasi & Kerapihan (10%):** *Code comments* dan konsistensi.
