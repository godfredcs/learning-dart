class Car {
  String name;
  String model;
  bool isOneDoor;
  int wheels;

  // This the class constructor and as you can see it has the same name as the class.
  // It follows a minimalistic approach where it uses the this keyword to initialize instance variables in the class.
  Car(this.name, this.model, this.isOneDoor, this.wheels);

  // We can also have named constructors like below.
  Car.initialize(this.name, this.model);

  void describeCar() {
    print("$name $model $wheels wheels");
  }

  // Setters and getters.
  // notice the use of the "get" and "set" keywords.
  // NB: Getters and setters are not invoked. They are rather treated like variables.

  // Getters. Getters declared like variables that return something.
  String get getName => name;

  // Setters. Setters on the other hand are declared like normal functions that accept a value and assigns that value to an instance variable.
  set setName(String value ) => name = value;
}


main(List<String> args) {
  var toyota = new Car("toyota", "Camry", true, 4);
  toyota.describeCar();
  toyota.setName = "Nissan"; // Setter is assigned a value just like an instance variable.
  print(toyota.getName); // Getter is treated like an instance variable.

  var benz = new Car.initialize("Benz", "C-class");
  print(benz);
  benz.describeCar();
  benz.setName = "Honda";
  print(benz.getName);

}