abstract class Performer {
  void perform();
}

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