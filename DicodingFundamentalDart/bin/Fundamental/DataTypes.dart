import 'dart:io';

var greetings = 'Hello Dart!';  // String
var myAge = 20;                 // integers
String greetings2 = 'Hello Dart!';
int myAge2 = 20;


void main(){
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');
}

