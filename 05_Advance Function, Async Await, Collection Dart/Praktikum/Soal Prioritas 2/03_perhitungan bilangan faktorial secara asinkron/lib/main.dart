import 'dart:async';

Future<int> calculateFactorialAsync(int n) async {
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  return factorial;
}

Future<void> main() async {
  int inputNumber = 5;
  
  int result = await calculateFactorialAsync(inputNumber);
  print("Faktorial dari $inputNumber adalah $result");
}