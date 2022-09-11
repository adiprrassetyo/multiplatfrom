import 'dart:io';

void main(){
  for (int i = 11; i < 20; i++) {
    if (i % 11 == 0) {
      continue;
    }
    stdout.write('$i ');
    if (i % 5 == 0) {
      break;
    }
  }


  var x = 11;

  if (x * 2 + 1 < 23 && x % 2 == 1) {
    print('x');
  } else if (x != 0) {
    print('y');
  } else {
    print('z');
  }
}