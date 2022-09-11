void main() {
  void myHigherOrderFunction(String message, Function myFunction) {
    print(message);
    print(myFunction(3, 4));

    // Opsi 1
    Function sum = (int num1, int num2) => num1 + num2;
    myHigherOrderFunction('Hello', sum);


    // Opsi 2
    myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);

    var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13];
    fibonacci.forEach((item) {
      print(item);
    });
  }
}

