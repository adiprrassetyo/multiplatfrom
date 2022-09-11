import 'dart:io';

var i = 1;
String? username;
bool notValid = false;

void main(){
  while (i <= 100) {
    print(i);
    i++;
  }

  do{
    print(i);
    i++;
  }while (i <= 100);

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync()!;

    if (username!.length < 6 ) {
      notValid = true;
      print('Username Anda tidak valid');
    } else{
      print('Username Anda $username');
      notValid = false;
    }
  } while (notValid);
}
