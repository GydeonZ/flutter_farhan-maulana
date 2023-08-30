import 'hewan.dart';

class Mobil {
  int kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    int totalBeratMuatan = muatan.fold(0, (prev, curr) => prev + curr.berat) + hewan.berat;

    if (totalBeratMuatan <= kapasitas) {
      muatan.add(hewan);
      print("Hewan ditambahkan ke muatan mobil.");
    } else {
      print("Kapasitas muatan terlampaui, hewan tidak dapat ditambahkan.");
    }
  }

  int totalKapasitasMuatan() {
    int totalKapasitas = muatan.fold(0, (prev, curr) => prev + curr.berat);
    return totalKapasitas;
  }

  int totalMuatan() {
    return muatan.length;
  }
}