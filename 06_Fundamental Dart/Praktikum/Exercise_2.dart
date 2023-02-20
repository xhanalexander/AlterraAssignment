import 'dart:io';
import 'dart:math';

void main() {
  callBack();
  // tubeVolume();
}

void callBack() {
  print(">> Masukkan nama Lengkap Anda \t\t=...!!! ");
  String? x = stdin.readLineSync();
  print(">> Masukkan Asal Kota Anda Tinggal \t=...!!! ");
  String? y = stdin.readLineSync();
  print(">> Program Kelas yang sedang Diikuti \t=...!!!");
  String? z = stdin.readLineSync();

  print("\n(++) Halo $x, Selamat Datang di $y, di kelas program $z");
}

void tubeVolume() {
  double r = 7;
  double t = 21;
  double volume = pi * pow(r, 2) * t;

  int x = r.round();
  int y = t.round();
  print(">> Jari-jari tabung adalah \t =... $x");
  print(">> Tinggi tabung adalah \t =... $y");
  print(">> Total Volume Tabung adalah \t =... $volume");
}