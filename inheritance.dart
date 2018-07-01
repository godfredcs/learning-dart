// Inheritance

class Person {
  String name, lastname, nationality;
  int age;

  void showName() => print(this.name);
}

class Godfred extends Person {
  bool playsFootball = true;
}

class Larry extends Person {
  bool playsFootball = false;

  @override
  showName() => print("My name is ${this.name}");
}

// Inheritance with constructor
class Animal {
  String food, habitat;

  Animal(this.food, this.habitat); // This is the constructor of the parent class.

  // You can also have a named constructor.
  Animal.create(this.food); // Then to call this named constructor inside the child use super and the name you gave the constructor in this case super.create
}

class Cow extends Animal {
  String type;
  Cow(String food, String habitat, this.type) : super(food, habitat); // notice the syntax.


}

// Everything in dart is an object and all objects and classes extend the super Object class.
// So in theory all classes implicitly extend the parent Object class.
// Every class has access to the super Object class' properties and methods through inheritance.
// When you override the toString() method of the super Object class in a class the instance of that class returns the return value of the toString() method.

main(List<String> args) {
 /*  var godfred = new Godfred();
  godfred.name = "Godfred";
  godfred.showName();
  print("${godfred.name} plays footaball: ${godfred.playsFootball}");


  var larry = new Larry();
  larry.name = "Larry";
  larry.showName();
  print("${larry.name} plays football: ${larry.playsFootball}"); */

  var cow = new Cow('grass', 'land');
  print(cow.food);
}
