# (12) Flutter Command Line Interface (CLI) and Flutter package management

## Summary

### Package Management
Package Management dalam Flutter adalah proses mengelola package atau dependensi yang digunakan dalam proyek Flutter. Dalam Flutter, package diatur oleh sistem package manager bernama Pub. Dalam `Pub` memungkinkan user untuk download menggunakan package-nya secara efisien, sehingga mendevelop aplikasi Flutter menjadi lebih mudah dan efisien. Dan ada beberapa contoh package-package dalam flutter yang sering digunakan salah satunya seperti:

* `http`: Package ini memudahkan penggunaan HTTP requests di Flutter. Package ini sangat berguna ketika pengembang ingin mengambil data dari API atau melakukan permintaan HTTP ke server.

* `shared_preferences`: Package ini memungkinkan pengguna untuk menyimpan data pada perangkat yang dapat diakses kembali di kemudian hari. Package ini sangat berguna ketika pengembang ingin menyimpan preferensi pengguna atau data aplikasi lainnya pada perangkat.

* `flutter_bloc`: Package ini memudahkan penggunaan arsitektur Bloc dalam Flutter, termasuk manajemen state dan event. Package ini sangat populer di kalangan pengembang Flutter dan digunakan dalam banyak proyek.

_sumber_ : [Flutter Packages Pub Popularity](https://pub.dev/packages?sort=popularity)

### Perintah CLI Flutter
Beberapa perintah CLI yang dibutuhkan untuk mendevelop flutter, dan perintah yang paling sering digunakan ada dalam tabel dibawah ini. 
| Perintah                          | Fungsi  |
|   ---                             | ---     |
| flutter doctor                    | Menampilkan sebuah informasi software yang dibutuhkan untuk develop aplikasi flutter  |
| flutter create <nama_project>     | Perintah yang membuat project aplikasi baru flutter dari directory yang ada |
| flutter run                       | Sebuah perintah untuk menjalankan projek aplikasi flutter di device yang tersedia    |
| flutter pub add                   | Perintah untuk menambahkan package ke file dependencies yang ada di project flutter yaitu pubspec.yaml     |
| flutter pub get                   | perintah untuk mendownload seluruh package yang ada di flutter project pubspec.yaml   |
| flutter build <apk/ios>           | yaitu perintah untuk membuat sebuah file aplkasi yang akan di deploy di AppStore, dan playstore   |
| flutter clean                     | sebuah perintah yang akan membersihkan atau menghapus folder build dan unnecesarry file pada saat build di flutter.        |
### App Results

![](/12_Installation%20Command%20Line%20Interface%20and%20Package%20Management%20in%20Flutter/Screenshot/Soal%20Prioritas%202.png)
Diberikan instruksi dari soal prioritas 2 dengan ketentuan :
* Modifikasi projek dengan mengubah `AppBar` dengan tulisan __Hallo Alterra__
* Kemudian di halaman pada body berisi tulisan __Nama saya adalah {NamaKalian}__.


![](/12_Installation%20Command%20Line%20Interface%20and%20Package%20Management%20in%20Flutter/Screenshot/Hasil%20Soal%20Prioritas%202.png)
