# (8) Advance Function - Async-Await - Collection

## Summary

### Function 2

```
void main() {
    var sum = (int num1, int num2) => num1 + num2;
    var greet = (String name) => "Greetings 👋 ${name}";

    print(sum(2, 5));             // output 7
    print(greet("Adam"));         // output Greetings 👋 Adam
}
```

Selanjutnya terdapat beberapa fungsi yang kegunaannya juga sama, seperti anonymous function. Anonymous function ini fungsi yang berperilaku sama seperti dengan fungsi biasa namun tidak memiliki nama. Namun fungsi ini juga bisa diberikan variabel kemudian juga dapat bisa mengambil atau mengakses nilai penutupan berdasarkan kebutuhannya. Selain itu apabila fungsi ini diberikan tanda panah `=>` akan mengembalikan nilai.

### Async-Await

Kata `async` dan `await` merupakan kata yang menyediakan cara untuk membuat operasi program asinkron yang terlihat secara sinkron. Saat menggunakan async-await in, maka menunggu proses pada asynchronous selesai lebih duluan, baru kemudian akan menjalankan baris yang selanjutnya. Jika tidak menggunakan async-await, maka yang akan dijalankan baris selanjutnya tanpa menunggu proses asynchronous tersebut selesai. Apabila script yang dibawah dijalankan maka yang keluar dulu itu yang pertama lalu setelah 3 detik itu kedua dan baru yang terakhir. Tipe data `Future<...>` merupakan tippe data yang dapat ditunggu dan juga membawa data return dari fungsi async.

```
void main() {
    countDown(3);
}

countDown(int x) async{
    print("first");
    await Future.delayed(Duration(seconds: x)).then((value) {
        print("second");
    });
    print("Last");
}
```

### Collection

Collection merupakan kumpulan data yang mewakili sekelompok objek, yang biasa disebut elemen. dalam Collection ini bisa memiliki data yang nihil atau null, atau juga bisa berisi banyak elemen yang tergantung pada tujuannya, Collection ini dapat memiliki struktur dan implementasi yang berbeda. Contoh beberapa jenis koleksi yang paling umum ialah seperti `List` yang membaca elemen berdasarkan indeks, serta menyimpan data secara baris. Kemudian `Set` yang digunakan untuk memuat elemen yang bakal muncul sekali, dan yang terakhir `Map` yang menyimpan data secara key-value.

- __List__

```
var animalList = ["cat", "dog", "hamster", "parrot", "sheep"];

for (var list in animalList) {
    print(list);
}

print(animalList.length);       // output 5
```
[All List Method](https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d)
- __Map__

```

```

- __Set__

```

```