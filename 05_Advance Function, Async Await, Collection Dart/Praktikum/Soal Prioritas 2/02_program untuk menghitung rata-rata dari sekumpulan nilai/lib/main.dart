void main() {
  List<int> values = [7, 5, 3, 5, 2, 1];

  double sum = 0;
  for (var value in values) {
    sum += value; // penjumlahan
  }

  double average = sum / values.length; // rata-rata
  int pembulatan = average.ceil(); // pembulatan ke atas

  print("Input Values: $values");
  print("Rata -rata : $pembulatan");
}
