# (13) Platform Widget & Layout

## Summary

### Struktur MaterialApp
Dalam Flutter penggunaan materialApp biasanya untuk mobile development seperti enviroment sistem Android, widget-widget pada materialApp ini bisa diimport dari built-in flutter. MaterialApp memberikan banyak method seperti pada gambar dibawah ini
|![method yang disediakan oleh MaterialApp](/13_Platform%20Widget%20and%20Layout/Screenshot/src/1.png)|![method yang disediakan oleh MaterialApp](/13_Platform%20Widget%20and%20Layout/Screenshot/src/2.png)       |
|---                    |---    |

namun dari keseluruhan method tersebut, hanya ada beberapa method dari pengalaman saya yang sering dipakai seperti `home`, `routes`, `title`, `theme`, `darkTheme`, `debugShowCheckedModeBanner` untuk menambah elemen dan selebihnya itu setelah method _home_ dan disisipkan method class yang disediakan, contohnya seperti `Scaffold` untuk membuat halaman.

<p style="text-align:center">
    <img src="/13_Platform%20Widget%20and%20Layout/Screenshot/src/ex.png" width="480">
</p>

### Struktur CupertinoApp
Sedangkan dalam `CupertinoApp` seringnya untuk IOS development. Dengan widget-widget yang disediakan oleh flutter built-in. Masih sama beberapa method yang digunakan pada CupertinoApp seperti `home`, `color`, `debugShowCheckedModeBanner`, `routes`, `theme`, dan `title`.

<p style="text-align:center">
    <img src="/13_Platform%20Widget%20and%20Layout/Screenshot/src/ex3.png" width="480">
</p>

untuk mengisi halaman sedikit berbeda dengan MaterialApp, soalnya ia hanya penambahan kata __Cupertino...__ yang menjadi `CuperinoPageScaffold()` dan itu diinisialisasikan setelah home pada CupertinoApp, contohnya pada gambar dibawah ini.

<p style="text-align:center">
    <img src="/13_Platform%20Widget%20and%20Layout/Screenshot/src/ex2.png" width="480">
</p>

### 