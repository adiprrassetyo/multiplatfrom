import 'dart:io';

void main(){
  for (int i = 1; i <= 100; i++) {
    print(i);
  }

  for(int j= 1; j<= 10; j++){
    for(int k= 1; k<=j; k++){
      stdout.write('*');
    }
    stdout.write('\n');
  }

  int rows=8;
  for (int i= 0; i<= rows-1; i++){
    for (int j=0; j<=i; j++){
      stdout.write(" ");
    }
    for (int k=0; k<=rows-1-i; k++){
      stdout.write("* ");
    }
    print(" ");
  }
}
