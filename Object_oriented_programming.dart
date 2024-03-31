import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Parent class
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Child class implementing interface and inheriting parent class
class Dog extends LivingBeing implements Animal {
  String name;

  Dog(this.name);

  @override
  void makeSound() {
    print('$name barks: Woof Woof!');
  }

  // Method to demonstrate loop
  void wagTail(int times) {
    for (var i = 0; i < times; i++) {
      print('$name is wagging tail...');
    }
  }
}

void main() {
  // Creating an instance of Dog class and initializing with data from file
  final dogFile = File('dog_data.txt');
  final dogName = dogFile.readAsStringSync().trim();
  final dog = Dog(dogName);

  // Calling methods
  dog.breathe();
  dog.makeSound();
  dog.wagTail(3);
}
