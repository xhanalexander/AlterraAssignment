# (11) Introduction Flutter Widget

## Summary

[Tautan Tugas Google Docs...](https://docs.google.com/document/d/1VuPiNE1LesrxS6cjpJxk2WFhCU-MU_wfZWuSX1HVtbs/edit?usp=sharing)

### Stateless & Stateful Widget
Stateless widget dan stateful widget merupakan dua jenis widget pada Flutter yang memiliki perbedaan. __Stateless widget__ adalah widget yang tidak memiliki state atau tidak berubah sepanjang waktu. Stateless widget hanya menghasilkan tampilan atau output berdasarkan input yang diberikan dan tidak dapat memperbarui tampilan jika ada perubahan. Sedangkan, __stateful widget__ adalah widget yang memiliki state atau dapat berubah sepanjang waktu. Stateful widget dapat memperbarui tampilan ketika ada perubahan pada data atau state yang dimilikinya. Dalam implementasinya, stateful widget membutuhkan lebih banyak kode dan perhatian pada manajemen state dibandingkan dengan stateless widget. Oleh karena itu, pemilihan jenis widget yang tepat harus dipertimbangkan terlebih dahulu sebelum mengimplementasikannya dalam pembuatan aplikasi Flutter.

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

### Builtin Widget
Banyak built-in widget yang disediakan oleh flutter seperti Widget __Container__ yang salah satu widget yang sering digunakan di Flutter untuk membuat layout dengan kontrol yang lebih besar dan mengatur tampilan di dalamnya dengan lebih fleksibel. Kemudian Widget __MaterialApp / CupertinoApp__ adalah widget yang digunakan sebagai root atau induk dari seluruh aplikasi Flutter. Widget ini menyediakan konfigurasi dan properti penting seperti judul aplikasi, tema, routing, dan sebagainya. Bedanyanya kalau cupertino untuk development IOS dan materialApp untuk android development. dan Widget __Scaffold__ yang digunakan sebagai kerangka umum untuk mengatur tata letak dan tampilan pada aplikasi Flutter. Widget ini mengatur elemen-elemen penting seperti AppBar, drawer, dan bottom navigation. Dan juga Widget __Text__ adalah salah satu widget dasar yang digunakan untuk menampilkan teks pada aplikasi Flutter. Widget ini menyediakan berbagai properti seperti ukuran font, gaya, warna, dan lain-lain untuk memformat tampilan teks dengan mudah.

![Container di tengah](/11_Introduction%20Flutter%20Widget/screenshot/assets/container_a.png)

_sumber_ : [Flutter Container](https://api.flutter.dev/flutter/widgets/Container-class.html)
```
Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.amber[600],
    width: 48.0,
    height: 48.0,
  ),
)
```
| MaterialApp      | CupertinoApp |
| ----------- | ----------- |
| ![Widget MaterialApp](/11_Introduction%20Flutter%20Widget/screenshot/assets/basic_material_app.png)      | ![Widget CupertinoApp](/11_Introduction%20Flutter%20Widget/screenshot/assets/basic_cupertino_app.png)       |

Perbedaan menggunakan class materialApp dan CupertinoApp.
```
MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
    ),
    debugShowCheckedModeBanner: false,
  ),
)
```
_sumber_ : [Flutter MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html)
```
const CupertinoApp(
  home: CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
      middle: Text('Home'),
    ),
    child: Center(child: Icon(CupertinoIcons.share)),
  ),
  debugShowCheckedModeBanner: false,
)
```
_sumber_ : [Flutter CupertinoApp](https://api.flutter.dev/flutter/cupertino/CupertinoApp-class.html)

![Widget Scaffold](/11_Introduction%20Flutter%20Widget/screenshot/assets/scaffold.png)
```
Scaffold(
    appBar: AppBar(
    title: const Text('Sample Code'),
    ),
    body: Center(child: Text('You have pressed the button $_count times.')),
    floatingActionButton: FloatingActionButton(
    onPressed: () => setState(() => _count++),
    tooltip: 'Increment Counter',
    child: const Icon(Icons.add),
    ),
);
```
_sumber_ : [Flutter Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

![](/11_Introduction%20Flutter%20Widget/screenshot/assets/text.png)
```
Text(
  'Hello, $_name! How are you?',
  textAlign: TextAlign.center,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(fontWeight: FontWeight.bold),
)
```
_sumber_ : [Flutter Text Widget](https://api.flutter.dev/flutter/widgets/Text-class.html)