String? favoriteFood = null;
Null age = null; // Compile error

void main() {
  String name = 'John Doe';
  int age = 23;
  String? favoriteFood = null;

  buyAMeal(favoriteFood!); // Compile error
  buyAMeal2(favoriteFood);
}

void buyAMeal(String favoriteFood) {
  print('bought a $favoriteFood');
}

void buyAMeal2(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Bought Nasi Goreng');
  } else {
    print('Bought $favoriteFood');
  }
}
