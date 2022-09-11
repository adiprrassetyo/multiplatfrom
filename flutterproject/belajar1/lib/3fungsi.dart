// tipeData namaFunction(..){}

void cetakTambah({angka1, angka2}) {
  print(angka1 + angka2);
}

int penambahan(int a1, int a2) {
  print('Fungsi penambahan sedang berjalan');
  return a1 + a2;
}

void main() {
  //print('Sebelum');
  cetakTambah(angka1: 6, angka2: 4);

  int hasil = 50;

//   hasil += cetakTambah(angka1:10,angka2:20);
  //print('Sesudah');
  // hasil = hasil(50) + penambahan(10+15);
  hasil += penambahan(10, 15);

  print(hasil);
}
