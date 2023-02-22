# (7) Branching - Looping - Function

## Summary

### Pengambilan Keputusan - Branching

```
void main() {
  beli(1000);   // output "uang cukup👍..."
  beli(-500);   // output "uang tidak ada..."
  beli(500);    // output "uang tidak cukup...❌❌❌"
}

int beli (int uang) {
  if (uang > 900) {
    print("uang cukup👍...");
  } else if (uang < 0) {
    print("uang tidak ada...");
  } else {
    print("uang tidak cukup...❌❌❌");
  }

  uang > 900
    ? print("uang cukup👍...")
    : (uang < 0)
        ? print("uang tidak ada...")
        : print("uang tidak cukup...❌❌❌");     // bisa juga menggunakan ternary operator

  return uang;
}
```

Dalam program adanya sebuah penting adanya pengambilan keputusan, supaya program dapat menentukan alurnya pada kondisi yang tertentu. Seperti `if (condition)` yang diisi dengan kondisi jika bool tersebut bernilai true lalu akan diproses didalam kurung, kemudian apabila kondisi pertama sudah dijalankan maka akan ada kondisi yang selanjutnya yaitu `else if (condition)` yang sebagai menambah jika ingin menguji nilai bool lain, dan yang terakhir ialah `if else (condition)` yang menambah jika nilai pertama bool itu false.

### Perulangan - Looping

```
void main() {

    for (var i = 0; i < 10; i+= 1) {
        if (i == 8) {
            break;      // menghentikan perulangan jika diangka 8
        }
        print(i);       // output 0 - 8
    }

    int i = 0;
    while (i < 10) {
        print(i);       // output 0 - 9
        i++;
    }

    int j = 0;
    do {
        print(j);       // output 0 - 11
        j++;
    } while (j < 12);

    int k = 0;
    for (var k = 0; k < 29; k+= 1) {
        if (k == 8) {
            continue;   // melanjutkan perulangan jika diangka 8
        }
        print(k);       // output 0 - 7 & 9 - 28
    }
}


```

Perulangan akan menjalan proses secara berulang kali. Ada berberapa operator seperti `for (initialisation; condition; updater)` yang harus memerlukan nilai awal, nilai bool apabila true maka akan dilanjutkan, dan nilai pengubah. Kemudian ada `while (condition)` perulangan ini tidak diketahui berapa kali perulangan, dan memerulukan nilai bool jika benar maka perulangan akan dilanjutkan. Dan ada operator `do while (condition)` perulangan yang dijalankan dengan minimum sekali dan akan diteruskan apabila nilai bool tersebut true. Dalam perulangan tersebut ada caranya untuk menghentikan program perulangan tersebut yaitu dengan operator `break` dan `continue`. Kedua operator ini akan menghentikan perulangan dengan mengabaikan nilai boolean, untuk continue hanya dapat menghentikan satu kali proses.

### Fungsi - Function

```

void main() {
    greetings();                // output "Greetings 👋"
    show("Senyorita");          // output "Senyorita"

    var total = sum(9 , 10);
    print(total)                // output 19
}

void greetings () {
    print("Greetings 👋");
}

void show (String text) {
    print(text);
}

int sum (int x, int y) {
    return x + y;
}

```

Fungsi itu kumpulan kode yang dapat digunakan/dipanggil ulang. Fungsi ini berisi kumpulan perintah cukup mengubah fungsi sekali, pengguna lainnya akan ikut berubah. Untuk membuat fungsi pertama harus mendklarasikan 2 yaitu tipe data dan nama fungsinya seperti `int sum ()` kemudian diisi dengan perintah dalam fungsi tersebut, lalu nanti akan dipanggil di fungsi main dengan nama fungsinya. Untuk menambah paramater dalam fungsi diisikan dengan jenis tipe data dan nama panggilannya seperti `int sum (int a, int b)`. Dan yang terakhir memberi nilai pada fungsi yang akan dipanggil dengan `return` disikan dengan perintah dalam fungsi tersebut dan dilanjutkan dengan return yang akan mengembalikan nilainya, sisanya menambahkan nilai di fungsi mainnya seperti `sum(5, 6)` outputnya mengeluarkan nilai 11.