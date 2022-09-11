class Manusia {
  String? nama;
  int? umur;

  //Constructor -> NamaClass(isiAtribut)
  Manusia({this.nama, this.umur});

  //enum
  Manusia.lansia(this.nama) {
    umur = 60;
  }
}

void main() {
//   String nama = 'Andi';
//   int umur =17;

  var m1 = Manusia(nama: 'Andi', umur: 17);
//   var m2 = Manusia();

//   m2.nama = 'Budi';
  print(m1.nama);
  print(m1.umur);
//   print(m2.nama);
//   print(m1);

  var m3 = Manusia.lansia('arto');
  print(m3.nama);
  print(m3.umur);
}
