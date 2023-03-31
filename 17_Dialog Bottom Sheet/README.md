# (17) Dialog Bottom Sheet

## Summaries


### Alert Dialog

Dalam flutter `AlertDialog` menginformasikan pengguna tentang situasi yang memerlukan pengakuan. Dialog peringatan memiliki judul opsional, konten opsional, dan daftar tindakan opsional. Judul ditampilkan di atas konten dan tindakan ditampilkan di bawah konten. Alert Dialog juga disediakan untuk tema iOS yaitu menggunakan class `CupertinoAlertDialog` hanya saja yang menjadi perbedaan ialah pada desainnya.

| AlertDialog       | CupertinoAlertDialog       |
|--     |--     |
| ![MaterialApp Alert Dialog](Screenshot/src/Alert_(1).png)        |![Cupetino Alert Dialog](Screenshot/src/Alert_(2).png)        |

### Bottom Sheet

__Bottom Sheet Material__ komponen yang bagus yang diberikan oleh desain. Widget ini seperti dialog yang terbuka dari bawah. Menggunakan Bottom Sheet ini dapat menunjukkan beberapa opsi kepada user untuk memilih. pada class widget `showModalBottomSheet` ia membutuhkan 2 properti yaitu `buildContext` dan `widgetBuilder`.

- __BuildContext__: BuildContext ini untuk widget tertentu yang dapat mengubah lokasi dari waktu ke waktu. Karena dapat membantu metode pembuatan untuk menentukan widget mana yang akan ditarik dan juga membantu dalam menentukan posisi widget yang akan ditarik di pohon widget.

- __WidgetBuilder__: WidgetBuilder ini memiliki fungsi yang mengembalikan sebuah widget.

ada juga class yang sama yaitu `showBottomSheet`, class ini berguna apabila untuk menampilkan isi konten dengan layar yang saat ini diakses dan tetap terlihat. Sedangkan `showModalBottomSheet` berguna untuk menampilkan konten yang memerlukan perhatian user dan sebelum user dapat berinteraksi dengan konten aplikasi yang selanjutnya.

### SnackBar

widget ini berguna untuk memberitahukan user secara singkat saat melakukan tindakan/action. Misalnya, saat user menghapus pesan dalam daftar/list, nanti aplikasinya ingin memberi tahu mereka bahwa pesan tersebut sudah telah dihapus. yang bahkan mungkin ingin memberikan user opsi untuk membatalkan tindakan/action tersebut.