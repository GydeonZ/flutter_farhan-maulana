import 'dart:io';
import 'BangunRuang.dart';

class Kubus extends BangunRuang {
  int sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);
  // panjang = sisi
  // lebar = sisi
  // tinggi = sisi
  @override
  int hitungVolume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(int panjang, int lebar, int tinggi)
      : super(panjang, lebar, tinggi);

  @override
  int hitungVolume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  BangunRuang bangun;

  print("Masukkan Sisi Kubus:");
  int sisiKubus = int.parse(stdin.readLineSync()!);
  Kubus kubus = Kubus(sisiKubus);
  bangun = kubus;
  print("Volume Kubus: ${bangun.hitungVolume()}");

  print("Masukkan Panjang Balok:");
  int pjgBalok = int.parse(stdin.readLineSync()!);
  print("Masukkan Tinggi Balok:");
  int tinggiBalok = int.parse(stdin.readLineSync()!);
  print("Masukkan Lebar Balok:");
  int lebarBalok = int.parse(stdin.readLineSync()!);
  Balok balok = Balok(pjgBalok, lebarBalok, tinggiBalok);
  bangun = balok;
  print("Volume Balok: ${bangun.hitungVolume()}");
}