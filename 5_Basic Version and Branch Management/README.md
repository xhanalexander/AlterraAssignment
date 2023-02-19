# (5) Basic Version and Branch Management (Git)

## Git
 
**git** ini sebuah salah satu tools VCS (version control system) atau  diibaratkan sosial medianya di kalangan developer, Git ini juga  memilki sistem yang terdistribusi dan memiliki fungsi untuk mengelola source code dalam sebuah projek. Pentingnya ada tools versioning supaya developer mudah untuk melacak perubahan dan bisa berkolaborasi dalam  projek yang sama. salah satu contoh perintah `git commit`, yaitu untuk merekam dan menyimpan setiap perubahan yang dilakukan pada source code tersebut, yang dimana setiap commit ini memiliki sebuah message atau pesan yang menjelaskan perubahan (changes) yang sudah dilakukan pada projek tersebut.

##  Cara Kerja Git

![Staging Area Steps](/5_Basic%20Version%20and%20Branch%20Management/StageArea.png)

git memiliki cara kerja dengan disebut dengan staging area, terdapat 3 yang bekerja dalam local kita, yang pertama terdapat tahap **Working directory**, yaitu sebuah checkout dari satu versi projek. Kumpulan file ini akan ditarik dari database yang sudah di-zip-kan dalam direktori Git. Kedua terdapat **Staging Area**, pada tahap ini umumnya berada pada direktori Git kita, yang menyimpan informasi tentang apa yang akan dicommit  selanjutnya. Terkadang disebut juga sebagai index, tetapi sering disebut sebagai staging area,contohnya menggunakan CLI seperti `git add`. Sehingga seluruh perubahan code tersebut apabila sudah siap ada maka sisanya menggunakan CLI yaitu `git push` untuk mengupload ke git **repository** tujuannya.

## Contoh-Contoh perintah git dan fungsinya

| git       | Deskripsi |
| -------   | -------   |
| init      | membuat repo Git kosong di direktori yang ditentukan. Jalankan tanpa argumen untuk menginisialisasi direktori saat ini sebagai repositori git. |
| clone     | mengcopy repo ke dalam mesin lokal. Repo asli dapat ditemukan di sistem file lokal atau di mesin jarak jauh melalui HTTP atau SSH. |
| config    | menentukan nama penulis yang akan digunakan untuk semua commit dalam repo saat ini. Developer biasanya menggunakan flag `--global` untuk setting opsi konfigurasi untuk pengguna saat ini. |
| add       | menyatat semua perubahan di direktorinya yang untuk commit selanjutnya. |
| commit    | mengcommit snapshot bertahap, tetapi alih-alih meluncurkan editor teks, gunakan `-m` sebagai pesan untuk commit. |
| status    | melihat daftar riwayat file mana yang sudah diubah, dan tidak diubah. |
| log       | menampilkan seluruh riwayat commit |