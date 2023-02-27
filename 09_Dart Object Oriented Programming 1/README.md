# (9) Dart Object Oriented Programming 1

## Summary

### Object Oriented Programming
Dart merupakan termasuk bahasa Object Oriented Programming yang mendukung class, object, dan konsep OOP standar lainnya. Program ini biasa disusun dalam bentuk abstraksi object, data dan proses diletakkan pada abstraksi tersebut. Keuntungan menggunakan oop ini mudah di troubleshoot atau diatasi kalau ada masalah, kemudian kode program dapat mudah digunakan ulang. Bahasa lain selain dart sudah juga menggunakan OOP seperti java, c++, javascript, dan python. Terdapat beberapa komponen yang dimiliki OOP diantaranya seperti **class**, **object**, **property**, **inheritance**, **polymorphism**, dan **encapsulation**.


###  Class, Object, & Property
Sebagai contoh penggunaan dari komponen OOP di Dart, kita dapat membuat sebuah class bernama "Person" yang memiliki properti nama dan umur. Kemudian, kita dapat membuat object dari class tersebut dengan menentukan nilai nama dan umur pada saat pembuatan object. Object adalah turunan dari class yang dapat menyimpan data tertentu dan mengeksekusi metode.

```
class Person {
    String? nama;
    int umur = 0;
}

void main() {
  var Adwin = Person();
  print(Adwin.umur);        // output 0
  Adwin.nama = "adwin";
  Adwin.umur = 17;
  print(Adwin.nama);        // output "Adwin"
  print(Adwin.umur);        // output 17
}
```

### Method

Method merupakan sifat suatu class, aktivitasnya dapat dikerjakan dari suatu class, dan juga memiliki sifat seperti fungsi. Membuat method sama aja seperti membuat fungsi tapi terletak di dalam class. Untuk menjalankan sebuah method sama seperti menggunakan fungsi tetapi melalui object.

```
class Person {
    String? nama;
    int umur = 0;

    void salam() {
        print("Hallo...👋");
    }
}

void main() {
  var henry = Person();
  henry.salam();        // output Hallo...👋
}
```