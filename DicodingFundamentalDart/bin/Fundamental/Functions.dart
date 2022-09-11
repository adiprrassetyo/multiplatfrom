void main() {
  greet('Dicoding', 2015);  // output : Halo Dicoding! Tahun ini Anda berusia 5 tahun
  greetNewUser('Widy', 20, true);
  greetNewUser('Widy', 20);
  greetNewUser('Widy');
  greetNewUser();
  greetNewUser(null, null, true);
  var firstNumber = 7;
  var secondNumber = 10;
  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}

void greet(String name, bornYear) {
  var age = 2020 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

double average2(num num1, num num2) => (num1 + num2) / 2;
void greeting() => print('Hello');

// optional parameter
void greetNewUser([String? name, int? age, bool  = false]) {}
void greetNewUser2({required String names, required int ages, required bool isVerifieds}) {}