var firstNumber = 4;
var secondNumber = 13;
var c = 0;
var sum = firstNumber + secondNumber;

void main(){
  firstNumber++;
  secondNumber++;
  print(sum);
  print(5 + 2);   // int add = 7
  print(5 - 2);   // int subtract = 3
  print(5 * 2);   // int multiply = 10
  print(5 / 2);   // double divide = 2.5
  print(5 ~/ 2);  // int intDivide = 2
  print(5 % 2);   // int modulo = 1
  c += 5;
  print(c);

  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print('2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if (false || true || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }
}