class Animal {
  String name = '';
  String food = '';
  String location = '';

  Animal(String name, food, location) {
    this.name = name;
    this.food = food;
    this.location = location;
  }

  void makeNoise() {
    print(' "Такое то животное спит"');
  }

  void sleep() {}
  void eat() {}
}

class Dog extends Animal {
  Dog(String name, String food, String location) : super(name, food, location);

  void makeNoise() {
    print('$name лает');
  }

  void eat() {
    print('$name ест кость');
  }
}

class Cat extends Animal {
  Cat(String name, String food, String location) : super(name, food, location);

  void makeNoise() {
    print('$name  мяукает');
  }

  void eat() {
    print('$name ест кость');
  }
}

class Horse extends Animal {
  Horse(String name, String food, String location)
      : super(name, food, location);

  void makeNoise() {
    print('$name бежит');
  }

  void eat() {
    print('$name ест траву');
  }
}

void main() {}
