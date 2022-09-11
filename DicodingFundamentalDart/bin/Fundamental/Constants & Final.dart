import 'dart:io';

const num pi = 3.14;

void main() {
  var radius = 7;
  print('Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
  print('Hello $firstName $lastName');
}

num calculateCircleArea(num radius) => pi * radius * radius;

final firstName = stdin.readLineSync();
final lastName = stdin.readLineSync();

//  lastName = 'Dart'; Tidak bisa mengubah nilai

