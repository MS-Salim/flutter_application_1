abstract class Vehicle {
  void startEngine();
}

class Car extends Vehicle {
  String brand;
  double _speed = 0.0;

  Car(this.brand);

  @override
  void startEngine() {
    print("$brand engine started...");
  }

  double get currentSpeed => _speed;

  set accelerate(double amount) {
    if (amount > 0) {
      _speed += amount;
    }
  }
}

class Toyota extends Car {
  Toyota() : super("Toyota");

  @override
  void startEngine() {
    super.startEngine();
    print("Toyota hybrid system is ready!");
  }
}

void main() {
  Toyota myCar = Toyota();
  myCar.startEngine();

  myCar.accelerate = 60.0;
  print("Current speed: ${myCar.currentSpeed} km/h");
}
