import 'dart:io';
import 'hewan.dart';
import 'mobil.dart';

void main() {
  final Mobil mobilSaya = Mobil(1000);
  print("Masukkan jumlah hewan yang akan ditambahkan:");
  int jumlahHewan = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlahHewan; i++) {
    print("Masukkan berat hewan ke-${i + 1}:");
    int beratHewan = int.parse(stdin.readLineSync()!);

    Hewan hewan = Hewan(beratHewan);
    mobilSaya.tambahMuatan(hewan);
  }

  print("Total Muatan: ${mobilSaya.totalMuatan()}");
  print("Total Kapasitas Muatan: ${mobilSaya.totalKapasitasMuatan()}kg dari (${mobilSaya.kapasitas}kg)");
}