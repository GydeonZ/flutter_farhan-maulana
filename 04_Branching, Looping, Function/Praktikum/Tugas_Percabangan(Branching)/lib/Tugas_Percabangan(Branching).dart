import 'dart:io';

String nilaiToKategori(int nilai) {
  if (nilai >= 70) {
    return "Nilai A";
  } else if (nilai >= 40) {
    return "Nilai B";
  } else if (nilai >= 0) {
    return "Nilai C";
  } else {
    return "";
  }
}

void main() {
  print("Masukkan nilai mahasiswa:");
  String input = stdin.readLineSync()!; // Membaca input dari pengguna
  int nilaiMahasiswa;

  try {
    nilaiMahasiswa = int.parse(input); // Mengonversi input menjadi angka
  } catch (e) {
    nilaiMahasiswa = -1; // Nilai negatif sebagai tanda "tidak valid"
  }

  String kategori = nilaiToKategori(nilaiMahasiswa);

  if (kategori.isNotEmpty) {
    print("Mahasiswa ini mendapatkan: $kategori");
  } else {
    print("Nilai tidak valid.");
  }
}