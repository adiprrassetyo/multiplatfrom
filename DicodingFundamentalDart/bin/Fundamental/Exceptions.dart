void main(){
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on IntegerDivisionByZeroException {
    print('Can not divided by zero.');
  }

  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch(e,s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}
