class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  // constructor lain
  Animal.Name(this._name);
  Animal.Age(this._age);
  Animal.Weight(this._weight);

  void eat() {
    print('$name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    _weight = _weight - 0.1;
  }

  // getter
  String get name => _name;
  int get age => _age;
  double get weight => _weight;

  // setter
  set name(String value) {
    _name = value;
  }

  set age(int value) {
    _age = value;
  }

  set weight(double value) {
    _weight = value;
  }
}