class Flyable {
  void fly() {
    print("Can fly.");
  }
}

class Swimmable {
  void swim() {
    print("Can swim.");
  }
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck can fly.");
  }

  @override
  void swim() {
    print("Duck can swim.");
  }
}

void main() {
  Duck duck = Duck();

  duck.fly();
  duck.swim();
}