import 'dart:io';

void main(){
  print('----- Konversi Suhu Fahrenheit -----');
  print('1. Fahrenheit ke Celcius ');
  print('2. Fahrenheit ke Reamur ');
  print('3. Fahrenheit ke Kelvin ');

  stdout.write('Masukkan pilihan anda : ');
  var pilihan = int.parse(stdin.readLineSync()!);
  if(pilihan == 1){
    stdout.write('Masukkan suhu dalam Fahrenheit: ');
    var fahrenheit = num.parse(stdin.readLineSync()!);
    var celcius = (fahrenheit - 32) * 5/9;
    print('$fahrenheit derajat Fahrenheit = $celcius derajat celcius');
  } else if (pilihan == 2){
    stdout.write('Masukkan suhu dalam Fahrenheit: ');
    var fahrenheit = num.parse(stdin.readLineSync()!);
    var reamur = (fahrenheit - 32) * 4/9;
    print('$fahrenheit derajat Fahrenheit = $reamur derajat reamur');
  } else if (pilihan == 3){
    stdout.write('Masukkan suhu dalam Fahrenheit: ');
    var fahrenheit = num.parse(stdin.readLineSync()!);
    var kelvin = (fahrenheit - 32) * 5/9 + 273;
    print('$fahrenheit derajat Fahrenheit = $kelvin derajat kelvin');
  }


}