# (14) Flutter Layout

## Summary

### Flutter Layout

Dalam Flutter layout (tata letak) termasuk juga dikatakan widget. Gambar, ikon, dan teks yang dilihat di dalam aplikasi Flutter semuanya merupakan termasuk widget. Namun ada widget yang tidak bisa dilihat juga merupakan widget, seperti `rows`, `column`, dan `grids` , `constrain`, dan termasuk widget `align` untuk merapihkan tampilan tata letak pada widget. 

Terdapat beberapa jenis layout yang dapat digunakan dalam Flutter, antara lain: 
* __Container__: Widget ini digunakan untuk membuat kotak yang dapat diisi dengan widget lainnya. 
* __Row dan Column__: Digunakan untuk menata widget secara horizontal (Row) atau vertikal (Column) dalam suatu container. 
* __Stack dan Positioned__: Widget Stack dapat digunakan untuk menumpuk widget secara relatif, sedangkan Positioned digunakan untuk mengatur posisi widget dalam stack. 
* __ListView dan GridView__: Digunakan untuk menampilkan widget dalam bentuk daftar (ListView) atau grid (GridView). 
* __Flex__: Digunakan untuk menata widgetnya secara fleksibel, baik secara horizontal maupun vertikal.

### Single Child Layout

Seperti dengan namanya, widget ini memiliki satu widget anak di dalam widget tata letak induk. Ada banyak widget _Single Child Layout_ yang tersedia di Flutter. Tidak perlu harus mengingat keseluruhan widget tersebut namun dapat melihat [dokumentasinya pada website flutter.](https://docs.flutter.dev/development/ui/widgets/layout#Single-child%20layout%20widgets) 

### Multiple Child Layout

Multi-child layout di Flutter adalah konsep untuk menampilkan lebih dari satu widget di dalam layout tunggal. Dalam Flutter, beberapa widget dapat dikelompokkan bersama dan ditempatkan dalam sebuah layout menggunakan widget yang disebut sebagai `container` seperti `Row`, `Column`, `Stack`, `Wrap`, dan `Flow`. Widget keseluruhannya dapat dilihat di [dokumentasi websitennya.](https://docs.flutter.dev/development/ui/widgets/layout#Multi-child%20layout%20widgets)