void main() {
  List<List<int>> dataList = [
    [1, 10],
    [2, 20],
    [3, 30],
    [4, 40],
    [5, 50],
  ];

  Map<int, int> dataMap = {}; 

  for (var data in dataList) { 
    if (data.length == 2) {  
      dataMap[data[0]] = data[1]; 
    }
  }

  print("Data List: $dataList");
  print("Data Map: $dataMap");
}