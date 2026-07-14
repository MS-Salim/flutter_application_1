class Vehicle {
  String brand = "Toyota";

  void startEngine() {
    print("Engine started...");
  }
}

class Car extends Vehicle {
  int numberOfDoors = 4;

  void drive() {
    print("The car is moving.");
  }
}

abstract class Animal {
  void makeMessage();
}

class Dog implements Animal {
  @override
  void makeMessage() {
    print("The dog says: Woof Woof!");
  }
}

class Shape {
  void draw() {
    print("Drawing a generic shape.");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a Circle ⭕");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a Square 🔲");
  }
}

void main() {
  Car myCar = Car();
  print(myCar.brand);
  myCar.startEngine();
  print(myCar.numberOfDoors);

  print("----------------------");

  Dog myDog = Dog();
  myDog.makeMessage();

  print("----------------------");

  Shape myShape1 = Circle();
  Shape myShape2 = Square();
  myShape1.draw();
  myShape2.draw();
}
