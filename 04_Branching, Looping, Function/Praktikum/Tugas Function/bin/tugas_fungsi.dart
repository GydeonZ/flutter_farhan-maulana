import 'dart:io';
import 'dart:math';

double hitungLuasLingkaran(double r) {
  return pi * r * r;
}

void main() {
  print("Masukkan Jari - Jari Lingkaran : ");
  String input = stdin.readLineSync()!; // Membaca input dari pengguna
  double jariJari = double.tryParse(input)!; // Mengubah input menjadi double
  double luasLingkaran = hitungLuasLingkaran(jariJari); // Memanggil fungsi

  print("Luas Lingkaran dengan jari - jari $jariJari adalah $luasLingkaran");
}
