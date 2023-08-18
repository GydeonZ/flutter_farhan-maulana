// Palindrome

bool Palindrom(String str) {
  str = str.replaceAll(' ', '').toLowerCase();
  return str == str.split('').reversed.join('');
}

void main() {
  List<String> inputs = ["kasur rusak", "mobil balap"];
  for (String input in inputs) {
    if (Palindrom(input)) {
      print("$input adalah Palindrom.");
    } else {
      print("$input bukan Palindrom.");
    }
  }

  // Faktor dari 24
  int number = 24;
  List<int> factors = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      factors.add(i);
    }
  }
  for (int factor in factors) {
    print(factor);
  }
}
