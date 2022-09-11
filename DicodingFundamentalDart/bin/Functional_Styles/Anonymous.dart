void main() {
  var sum = (int num1, int num2) {
    return num1 + num2;
  };

  // fat arrow
  Function printLambda = () => print('This is lambda function');

  printLambda();
  print(sum(3,4));
}