# (16) Assets

## Summaries

### Flutter Assets

Flutter menyediakan kode dan juga aset (atau biasa disebut dengan _resource_). Asset merupakan file yang dipaketkan di dalam aplikasi yang dibuat, hal ini akan memudahkan developer untuk menyertakan berbagai jenis file seperti gambar, font, dan file konfigurasi dalam aplikasi Flutter. Jenis aset-nya yang umum mencakup data statis (misalnya, file JSON), file konfigurasi, ikon, dan gambar (JPEG, WebP, GIF, WebP/GIF animasi, PNG, BMP, dan WBMP). Assets tersebut dapat diakses dan digunakan oleh aplikasi pada selama runtime.

### Fonts

Flutter memungkinkan untuk developer untuk mengubah jenis font yang digunakan dalam aplikasi-nya. Hal ini dapat dilakukan dengan menambahkan font file ke dalam folder 'fonts' dalam direktori aplikasi dan kemudian mengkonfigurasi pubspec.yaml. Setelah itu, font-file tersebut dapat digunakan pada widget Text dan sejenisnya.

Penggunaan font biasanya sudah disediakan di [Google Font](https://fonts.google.com/). library font ini dikatakan cukup lengkap dan gratis dengan berbagai font family yang disediakan oleh google. Untuk menambahkan-nya pada aplikasi, harus mendownload jenis font yang sudah dipilih lalu buat sebuah folder `Assets/Fonts/` lalu diselingi dengan folder fonts. Kemudian dikonfigurasikan di file `pubspec.yaml` untuk menambahkan kostum seperti weight dan kemiringannya (italic). Setelah itu font-file tersebut dapat digunakan pada widget Text dan sejenisnya.

### Images

Developer juga dapat menambahkan gambar ke dalam aplikasi Flutternya dan menggunakannya pada widget seperti `Image` dan sejenisnya. Ada beberapa cara untuk menambahkan gambar ke aplikasi Flutter, yaitu melalui direktori `assets/images/` atau direktori publik. Kedua cara tersebut dapat dikonfigurasi pada file `pubspec.yaml`, beberapa website menyediakan aset gambar gratis salah satunya [Unsplash](https://unsplash.com/). 

Di Flutter, terdapat dua jenis widget gambar, yaitu `Image.asset()` dan `Image.network()`. Perbedaan utama antara keduanya adalah:
- `Image.asset()` digunakan untuk menampilkan gambar dari file lokal (dalam proyek Flutter), sedangkan Image.network digunakan untuk menampilkan gambar dari jaringan atau URL.

Image.asset perlu ditempatkan dalam direktori "assets" yang telah diatur dalam pubspec.yaml, sedangkan Image.network memerlukan URL gambar. Saat menggunakan Image.asset, gambar akan diunggah ke memori pada saat aplikasi dimulai, sehingga dapat mempercepat waktu unggah ketika gambar tersebut ditampilkan kembali. Sementara itu, 

- `Image.network()` akan memuat gambar secara asinkron dari URL ketika ditampilkan, sehingga membutuhkan waktu lebih lama untuk ditampilkan. Image.asset dapat diatur untuk berbagai resolusi gambar berbeda yang disesuaikan dengan jenis perangkat yang berbeda, sedangkan Image.network hanya menampilkan gambar dalam ukuran aslinya dari URL.

