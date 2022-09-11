import '../Abstract.dart';
import 'Flyable.dart';

class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(String name, int age, double weight, this.featherColor) : super();

  @override
  void fly() {
    print('$name is flying');
  }

}