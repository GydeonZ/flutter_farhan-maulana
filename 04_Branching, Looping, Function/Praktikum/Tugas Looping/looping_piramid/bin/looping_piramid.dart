import 'dart:io';

// void main() {
//   int rows = 6;
//   for (int i = 0; i < rows; i++) {
//     for (int j = (rows - i); j > 1; j--) {
//       stdout.write(" ");
//     }
//     for (int j = 0; j <= i; j++) {
//       stdout.write("* ");
//     }
//     stdout.writeln();
//   }
// }


void main() {
  int i, j, k, n = 6;
  for (i = 0; i <= n - 1; i++) {
    for (j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("*" + " ");
    }
    stdout.writeln("");
  }
  for (i = n - 1; i >= 0; i--) {
    for (j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (k = i; k <= n - 1; k++) {
      stdout.write("*" + " ");
    }
    stdout.writeln("");
  }
}