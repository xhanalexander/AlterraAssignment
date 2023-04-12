# (23) Introduction REST API – JSON serialization

## Summaries

### REST API Client
Application Programming Interface (API), merupakan perangkat lunak yang memungkinkan developer untuk mengintegrasikan dan menghubungkan dua aplikasi yang berbeda secara bersamaan. Tujuan penggunaan pada API adalah untuk bertukar data antara aplikasi yang berbeda. selain itu Tujuan penggunaan API ialah untuk mempercepat proses develop aplikasi dengan menyediakan fungsi tertentu yang sudah disediakan, sehingga developer tidak perlu lagi untuk membuat fitur yang sama.

Jadi, Nantinya data yang diberikan oleh REST server itu bisa berupa format data text, JSON atau XML. Dan saat ini format yang paling populer dan paling banyak digunakan adalah format JSON. Adapun metode HTTP yang secara umum dipakai dalam REST api adalah:

__GET__, berfungsi untuk membaca data/resource dari REST server
__POST__, berfungsi untuk membuat sebuah data/resource baru di REST server
__PUT__, berfungsi untuk memperbaharui data/resource di REST server
__DELETE__, berfungsi untuk menghapus data/resource dari REST server
__-__, berfungsi untuk mendapatkan operasi yang disupport pada resource dari REST server.


### Http client flutter package 

Terdapat beberapa package http client yang tersedia di pub.dev salah satunya seperti :

- #### http
**http** adalah Future-based library flutter dan juga menggunakan fitur _async_ dan _await_. Fitur ini menyediakan banyak metode seperti read, get, post, put, head, dan delete untuk mengirim dan menerima data, Metode ini menyederhanakan developer untuk mendeveop aplikasi berbasis REST.

- #### dio
**Dio** merupajan package HTTP client fflutter yang tangguh. Package ini memiliki dukungan seperti `interceptors`, `global configuration`, `FormData`, `request cancellation`, `file downloading`, dan `timeout`, dibanding dengan http. Flutter sendiri menawarkan package `http` yang bagus untuk melakukan tugas network yang dasar tetapi tidak cukup untuk digunakan saat menangani fitur-fitur yang kompleks. Sebagai perbandingan, Dio menyediakan API intuitif untuk melakukan tugas network dengan tingkat lanjut yang mudah. [Package ini dapat diakses di pub.dev](https://pub.dev/packages/dio)

### Serialisasi & Deserialisasi JSON

JSON (JavaScript Object Notation) adalah sejenis format data objek yang dapat dijadikan string. Jenis data ini  mudah diterjemahkan antara server dan browser, dan server ke server. **Serialisasi** adalah proses yang mengubah objek struktur data menjadi string. Sedangkan untuk deserialisasi ialah Proses dimana format JSON diubah ke tingkat yang rendah (misalnya untuk transferan jaringan data, atau disimpan dalam penyimpanan data) diterjemahkan ke dalam objek yang dapat dibaca atau struktur data lainnya.