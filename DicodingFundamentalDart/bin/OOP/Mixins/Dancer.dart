import 'Performer.dart';

class Dancer extends Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

class Singer extends Performer {
  @override
  void perform() {
    print('Singing');
  }
}