void main(){
  // Luas dan Keliling Persegi
  int sisi = 5;
  int luas = sisi * sisi;
  int keliling = 4 * sisi;
  print('Luas Persegi = $luas');
  print('Keliling Persegi = $keliling');

  // Luas dan Keliling Persegi Panjang
  int panjang = 10;
  int lebar = 5;
  int luasPersegiPanjang = panjang * lebar;
  int kelilingPersegiPanjang = 2 * (panjang + lebar);
  print('Luas Persegi Panjang = $luasPersegiPanjang');
  print('Keliling Persegi Panjang = $kelilingPersegiPanjang');

  // Luas Dan Keliling Lingkaran
  double phi = 3.14;
  int jariJari = 7;
  double luasLingkaran = phi * jariJari * jariJari;
  double kelilingLingkaran = 2 * phi * jariJari;
  print('Luas Lingkaran = $luasLingkaran');
  print('Keliling Lingkaran = $kelilingLingkaran');
}
