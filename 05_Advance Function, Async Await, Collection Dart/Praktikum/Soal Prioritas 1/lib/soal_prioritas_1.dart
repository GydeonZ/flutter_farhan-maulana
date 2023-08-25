Future<List<int>> multiplyListAsync(List<int> data, int pengali) async {
  List<int> result = [];

  await Future.forEach(data, (int value) async {
    int hasilPengali = value * pengali;
    result.add(hasilPengali);
  });

  return result;
}

void main() async {
  List<int> inputData = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> result = await multiplyListAsync(inputData, pengali); 
  print("List Original : $inputData");
  print("List Perkalian : $result");
}