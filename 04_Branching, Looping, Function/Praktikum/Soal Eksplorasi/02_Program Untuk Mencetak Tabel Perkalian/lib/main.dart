import 'dart:io';

void main() {
  print("Masukkan Angka: ");
  int input = int.parse(stdin.readLineSync() ?? "0"); // null check operator

  printMultiplicationTable(input, input); // call function
}

void printMultiplicationTable(int numRows, int numColumns) {
  for (int i = 1; i <= numRows; i++) { // outer loop
    String rowOutput = ""; // reset row output

    for (int j = 1; j <= numColumns; j++) { // inner loop
      int result = i * j; // calculate result
      // add result to row output
      rowOutput += "   " + result.toString().padLeft(3); 
    }

    print(rowOutput); // print row output
  }
}