# (21) Flutter Animation

## Summaries

### Flutter Animation

Animasi yang didesain dengan baik membuat UI terasa lebih intuitif, dan juga sangat berkontribusi pada tampilan dari aplikasinya, serta meningkatkan pengalaman pada user. Dukungan animasi Flutter memudahkan penerapan berbagai jenis animasi. Terutama widget pada Material, yang hadir dengan efek gerakan standar yang sudah ditentukan dalam spesifikasi desainnya, tetapi juga bisa dikostumisasi pada efek animasinya.

### Implicit Animation

Flutter menyediakan widget yang memberikan versi animasi dari widget yang ada yang mungkin sudah digunakan di aplikasi, seperti versi `AnimatedContainer` dari widget `Container` dan versi` AnimatedPositioned` dari widget `Positioned`. Widget ini secara otomatis menganimasikan perubahan pada propertinya. Pada saat membuat ulang widgetnya dan dengan menggunakan nilai properti baru, seperti dengan menggunakan setState StatefulWidget, widget ini menangani penggerak animasi dari nilai sebelumnya ke nilai baru.

### Transition Animation

Route pada halaman aplikasi Flutter seringkali perlu berpindah dari satu halaman ke halaman lainnya. Tetapi untuk membuat transisi ini lebih lancar, Animasi transisi dapat digunakan. Animasi transisi ini dapat digunakan untuk membuat kurva atau tween objek Animation dari kelas `PageRouteBuilder` untuk mengubah animasi dari transisinya. Banyak class widget yang memebrikan transisi contohnya seperti

 - ScaleTransition
 - FadeTransition
 - AlignTransition
 - RotationTransition
 - PositionedTransition
 - SizeTransition
