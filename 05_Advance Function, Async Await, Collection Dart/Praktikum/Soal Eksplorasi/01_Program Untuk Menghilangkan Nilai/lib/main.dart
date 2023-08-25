void main() {
  List<String> inputData = [
"amuse",
"tommy kaira",
"spoon",
"HKS",
"litchfield",
"amuse",
"HKS"
  ];

  // toSet() digunakan untuk mengubah List menjadi Set, karena Set tidak 
  //mengizinkan duplikasi data, kemudian toList() digunakan untuk mengubah Set 
  //menjadi List kembali.
  List<String> uniqueData = inputData.toSet().toList(); 

  print("Input Data: $inputData");
  print("Unique Data: $uniqueData");
}