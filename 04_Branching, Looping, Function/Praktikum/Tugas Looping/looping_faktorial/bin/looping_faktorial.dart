void main() {
  List<int> values = [10, 40, 50];

  for (int value in values) {
    int Faktorial = hitungFaktorial(value);
    print("Faktorial dari $value adalah $Faktorial");
  }
}

int hitungFaktorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}