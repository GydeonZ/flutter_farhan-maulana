import 'dart:io';
import 'Calculator.dart';

void main() {
  Calculator calculator = Calculator();

  print("Pilih operasi:");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");

  String input = stdin.readLineSync()!;
  int choice = int.tryParse(input) ?? 0; // Konversi ke int atau 0 jika tidak valid

  if (choice >= 1 && choice <= 4) {
    print("Masukkan angka pertama:");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Masukkan angka kedua:");
    double num2 = double.parse(stdin.readLineSync()!);

    double result = 0;

    switch (choice) {
      case 1:
        result = calculator.jumlah(num1, num2);
        break;
      case 2:
        result = calculator.kurang(num1, num2);
        break;
      case 3:
        result = calculator.kali(num1, num2);
        break;
      case 4:
        result = calculator.bagi(num1, num2);
        break;
    }

    print("Hasil: $result");
  } else {
    print("Pilihan tidak valid");
  }
}