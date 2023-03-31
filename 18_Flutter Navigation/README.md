# (18) Flutter Navigation

## Summaries

### Navigation

Dalam Flutter juga menyediakan sistem untuk menavigasi antar layar atau halaman yang dalam. Untuk Aplikasi yang skala kecil  tanpa harus halaman yang kompleks dapat menggunakan class `Navigator`, navigator dapat digunakan untuk menampilkan dialog dengan memposisikan widget dialog di atas halaman saat ini. Sedangkan untuk aplikasi dengan persyaratan deep linking dan navigasi yang komplek tertentu juga harus menggunakan `Router` untuk menangani deep link dengan benar di Android dan iOS, dan tetap sinkron dengan _address bar_ apabila saat aplikasi dijalankan di website.

```
Navigator.push();                   // menavigasikan ke halaman selanjutnya
Navigator.pop();                    // manavigasi Kembali ke halaman yang sebelumnya
Navigator.popAndPushNamed();        // keluar dari halaman dan menavigasikan ke alamat halaman
Navigator.pushReplacementNamed();   // Mengganti alamat rute yang saat ini dengan mengganti rute yang bernama [routeName] dan kemudian membuang rute sebelumnya.
```

### Route Navigation

Apabila aplikasi yang dikembangkan sudah memiliki banyak halaman dan konten yang kompleks maka rute navigasi memerlukan nama alamat untuk navigasi. Pada property `initialRoute` yang menginisiasi alamat utama pada halaman, kemudian untuk alamat yang lainnya bisa dipaparkan dalam property `routes` contohnya pada dibawah ini.

```
@override
Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
            '/': (context) => HomeScreen(),
            '/details': (context) => DetailScreen(),
        },
    );
}
```
apabila ingin digunakan halaman rutenya hanya dengan menggunakan 
```
Navigator.pushNamed(context, routeName);
```

### Passing Data on Navigation

sebuah aplikasi akan berguna apabila halaman dapat mengirimkan berbagai data ke halaman lain, penggunaannya biasanya dengan `args`.

```
// A Widget that extracts the necessary arguments from
// the ModalRoute.
class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
```

___

### Flutter Navigation Task Documentation

Flutter Navigation diterapkan 2 halaman yaitu untuk login dan homepage, folder project-nya terdapat pada di folder [16_Materi Assets](https://github.com/xhanalexander/Flutter_Alexander-Achmad-Khan/tree/main/16_Assets/galleryapp) dan diterapkan pada file `main.dart` yang terdapat dari dalam isi [project-nya](https://github.com/xhanalexander/Flutter_Alexander-Achmad-Khan/blob/main/16_Assets/galleryapp/lib/main.dart).

