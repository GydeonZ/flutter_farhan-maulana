class Matematika {
  int hasil() {
    return 0;
  }
}

class KelipatanPersukutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersukutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    int max = x > y ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }
}
