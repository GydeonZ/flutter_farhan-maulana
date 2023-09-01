class BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  int hitungVolume() {
    return panjang * lebar * tinggi;
  }
}