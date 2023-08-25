import 'dart:io';

void main() {
  print("Masukkan sebuah bilangan:");
  int number = int.parse(stdin.readLineSync() ?? "");

  if (isPrime(number)) {
    print("Bilangan prima");
  } else {
    print("Bukan bilangan prima");
  }
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}