import 'dart:io';
import 'Matematika.dart';

class KelipatanPersukutuanTerbesar implements Matematika {
  int x;
  int y;

  KelipatanPersukutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    int min = x < y ? x : y;
    while (min >= 1) {
      if (x % min == 0 && y % min == 0) {
        return min;
      }
      min--;
    }
    return 1;
  }
}

void main() {
  Matematika operation;

  // KelipatanPersukutuanTerkecil
  print("Masukkan Nilai Untuk Kelipatan Persukutuan Terkecil adalah :");
  int x1 = int.parse(stdin.readLineSync()!);
  int y1 = int.parse(stdin.readLineSync()!);
  operation = KelipatanPersukutuanTerkecil(x1, y1);
  print(
    "Kelipatan Persukutuan Terkecil dari $x1 dan $y1: ${operation.hasil()}");

  // KelipatanPersukutuanTerbesar
  print("Masukkan Nilai Untuk Kelipatan Persukutuan Terbesar adalah :");
  int x2 = int.parse(stdin.readLineSync()!);
  int y2 = int.parse(stdin.readLineSync()!);
  operation = KelipatanPersukutuanTerbesar(x2, y2);
  print(
      "Kelipatan Persukutuan Terbesar dari $x2 dan $y2: ${operation.hasil()}");
}