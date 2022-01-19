void main() {
  Engine engine = Engine('5000', 'BMW');
  Driver driver = Driver('Bek', '40 years');
  Car audi = Car("Audi", "A4", 4500.0, driver, engine);
  audi.printCarSetting();
}

class Engine {
  String power = '';
  String manufacture = '';

  Engine(String power, String manufacture) {
    this.power = power;
    this.manufacture = manufacture;
  }
}

class Driver {
  String full_name = '';
  String work_experience = '';

  Driver(String full_name, String work_experience) {
    this.full_name = full_name;
    this.work_experience = work_experience;
  }
}

class Car {
  String car_brand = '';
  double weight = 0.0;
  late Driver driver;
  late Engine engine;
  String class_auto = '';

  Car(
    String car_brand,
    class_auto,
    double weight,
    Driver driver,
    Engine engine,
  ) {
    this.class_auto = class_auto;
    this.car_brand = car_brand;
    this.driver = driver;
    this.engine = engine;
    this.weight = weight;
  }

  start() {
    print("Поехали");
  }

  stop() {
    print('Останавливаемся');
  }

  turnRight() {
    print('Поворот направо');
  }

  turnLeft() {
    print('Поворот налево');
  }

  printCarSetting() {
    print("Марка авто: $car_brand, Класс авто: $class_auto, Вес: $weight");
  }
}

class Lorry extends Car {
  Lorry(
      String car_brand, class_auto, double weight, Driver driver, Engine engine)
      : super(car_brand, class_auto, weight, driver, engine);
}

class SportCar extends Car {
  SportCar(
      String car_brand, class_auto, double weight, Driver driver, Engine engine)
      : super(car_brand, class_auto, weight, driver, engine);
}

class Persom extends Driver {
  Persom(String full_name, String work_experience)
      : super(full_name, work_experience);
}
