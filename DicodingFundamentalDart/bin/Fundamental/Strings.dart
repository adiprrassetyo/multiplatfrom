String singleQuote = 'Ini adalah String';
String doubleQuote = "Ini juga String";

void main(){
  print('"I think it\'s great!" I answered confidently');
  print("Windows path: C:\\Program Files\\Dart");

  var name = 'Messi';
  print('Hello $name, nice to meet you.');
  print('1 + 1 = ${1 + 1}');
  print(r'Dia baru saja membeli komputer seharga $1,000.00');
  print('Hi \u2665');

  // Huruf ‘r’ sebelum String akan memberitahu Dart
  // untuk menganggap String sebagai raw,
  // yang berarti akan mengabaikan interpolation.
}
