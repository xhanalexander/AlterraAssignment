# (6) Fundamental Dart

## Summary

### Dart

Dart merupakan bahasa pemrograman dengan tujuan yang dirancang untuk membangun aplikasi cepat di berbagai platform dan dikembangkan oleh perusahaan google yang pertama kali muncul pada tahun 2011 untuk menjadi alternatif dari bahasa pemrograman javascript. Dart ini memiliki **type safe** yang menjamin konsistensi tipe data tidak atau ambigu dan juga **null safety** yang memberikan keamanan pada data null atau data kosong.

### Fitur dari Dart

* **Multi-Platform** 📱💻
Dart adalah bahasa pemrograman yang Multi-Platform atau platform independen yang berarti dapat dijalankan pada sistem operasi yang berbeda seperti Windows, Linux, Unix dan MacOS, dll.

* **General Purpose**
Bahasa Dart dapat bersifat Multi-purpose (dengan tujuan umum) yang artinya dapat digunakan dalam mengembangkan berbagai jenis aplikasi dan program.

* **Object-Oriented**
Dart merupakan pemrograman berorientasi pada objek dan mengikuti seluruh konsep pendekatan pemrograman berorientasi objek seperti Class, inheritance, Abstaction, Encapsulation, dan polymorphism, dll.

* **Multi-Paradigm**
Dart juga dapat mendukung multi-paradigma yang berari pemrograman imperatif, fungsional, reflektif dan berorientasi pada objek.

* **Simple Syntax**
Sintaks dari Dart merupakan sintaksis dengan gaya-C sederhana. Programmer pemula dapat dengan mudah mempelajari sintaks Dart.

* **Automatic Garbage 🗑️ Collection**
Dart juga menyediakan fitur pengumpul sampah otomatis.

* **Open Source**
Dart merupakan bahasa pemrograman yang open source, dilisensikan oleh BDS.

* **Rich Standart Libraries**
Dart juga menyediakan berbagai macam dukungan library inbuilt.

### Dasar Pemrograman Dart

```
void main() {
    print("hello Dart");        // output "hello Dart" 👋
    // print("World");          // tidak menghasilkan output hanya komentar 

    var age;                    // mendeklarasikan variabel #1
    age = 21;                   // memberi nilai pada variabel #2 
    var age = 21;               // mendeklarasi dan memberikan nilai pada variabel #3

    final old = 21;             // mendeklarasikan konstanta variabel dengan nilai 21
    const old = 22;             // mendeklarasikan variabel konstanta dengan nilai 22
    
    int height = 145;           // bilangan bulat
    double weight = 45.0;       // bilangan pecahan 
    bool life = true;           // benar ✅ atau salah ❌
    string desc = 'i'm live';   // deskripsi teks 💬

    print(9 + 10);              // output = 19 (arithmetic)
    print(9 == 10);             // output = false (comparison)
    print(1 == 2 && 2 == 1);    // output = false (logical)

                                // tipe data <num> bisa menerima integer dan double
    
}
```
`void main` bagian yang pertama bakal dijalankan dan memiliki tipe data void atau int, perintah `print` yang digunakan untuk menampilkan data ke layar hingga menampilkan teks. Kemudian terdapat komentar dengan menggunakan `//` atau `/* */` untuk multiLine comment. Shortcut untuk comment line di visual studio dengan <kbd>Ctrl</kbd> + <kbd>/</kbd> untuk single comment line. Sedangkan untuk multiple comment line menggunakan <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>a</kbd>. Kemudian menginisiasi variabel yang digunakan untuk menyimpan data, memiliki tipe data, dan memiliki nama, seperti `var` yang mendeklarasikan jenis variabel dan `age` menamakan variabel, diiringi dengan ` = 21` yang berarti memberikan nilai pada variabel tersebut, apabila digabung `var age = 21` yang berarti variabel age memiliki nilai data angka 21. Kemudian terdapat konstanta yang digunakan untuk menyimpan data dengan nilai yang tetap, dengan menggunakan jenis variabel `final` atau bisa juga dengan `const` variabel nilai nya tidak bisa diubah. Jenis tipe data terdapat beberapa macam seperti `int` untuk menggantikan data ke bilangan bulat, kemudian `double` untuk tipe data yang menggunakan bilangan pecahan, dan `bool` tipe data yang harus true atau false, dan yang terakhir `string` tipe data berisi berupa teks yang diawali dengan tanda kutip. 



Dan terdapat juga operator yang digunakan untuk pengolahan data seperti Aritmetika seperti `+ - * / %`. Dan Assigment memberikan nilai pada variabel `= += -= *= /= %=`, dan perbandingan seperti menggunakan operator `== < <= > >=`, dan yang terakhir logical yang menggabungkan beberapa kondisi seperti `&& || !`.