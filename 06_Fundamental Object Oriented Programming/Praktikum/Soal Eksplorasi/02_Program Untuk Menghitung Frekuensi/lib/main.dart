import 'dart:io';

void main() {
  print("Masukkan data (pisahkan dengan spasi):");
  String userInput = stdin.readLineSync()!;
  List<String> inputData = userInput.split(" ");

  Map<String, int> frequencyMap = {};

  for (String data in inputData) {
    frequencyMap[data] = (frequencyMap[data] ?? 0) + 1;
  }

  frequencyMap.forEach((data, frequency) {
    print("$data: $frequency");
  });
}