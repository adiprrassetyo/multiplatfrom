import 'Class.dart';

var dicodingCat = Animal('', 2, 4.2);

void main() {
    Animal('', 2, 4.2)
    ..name = 'Gray'
    ..eat();

    // sama seperti
    // dicodingCat.name = 'Gray';
    // dicodingCat.eat();

    /*
    final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = '415-555-0100')
        .build();

     */
}