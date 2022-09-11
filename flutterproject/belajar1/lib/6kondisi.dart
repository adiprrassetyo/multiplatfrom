void main() {
//   var umur = 17;

//   if (umur <17){
//     print('Tidak boleh dapat Sim');
//   }else if(umur == 17){
//     print('Harus Test dulu');
//   }else {
//     print('Boleh dapat sim');
//   }

  var username = 'budi';
  var password = '12374';
  var umur = 13;
  //2.True                                  1. True
  if (username == 'budi' && (password == '1234' || umur > 15)) {
    print('Anda berhasil login!');
  } else {
    print('Anda gagal login!');
  }
}
