# (19) Flutter State Management (Provider)

## Summaries

### State

State di Flutter merupakan data yang disimpan di dalam widget yang dapat dimodifikasi yang tergantung pada status saat ini. State di aplikasi dapat diperbarui dan juga dapat diubah seluruhnya pada aplikasi saat diluncurkan, atau saat halaman dimuat ulang (reload). Yang berarti seluruh widget memerlukan penanganan data yang diambil dari user dan meneruskannya di antara widget-widget untuk melakukan satu atau beberapa operasi. Flutter juga dapat menggunakan state untuk menampilkan sebuah potongan informasi kepada user.

### Global State

Global State memungkinkan data pada aplikasi flutter dapat dibagikan dan mudah diakses dari berbagai widget.

### Provider

flutter menyediakan package plugin [provider](https://pub.dev/packages/provider), plugin Ini pada dasarnya merupakan pembungkus di turunan Widgets untuk penerapan dan pengelolaan data yang mudah.