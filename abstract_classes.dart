// Abstract classes
// In dart, interfaces are Deprecated so we're stuck with abstract class since they're almost the same

// Abstract classes have abstract methods and they can have methods that have body too.

abstract class Person {
  void smile();

  bool canEat();

  void walking() {
    print('The person is walking');
  }
}

class Male implements Person {
  void smile() {
    print("The male is smiling");
  }

  bool canEat() => true;

  void walking() {
    print("The male is walking");
  }
}

class Female implements Person {
  void smile() {
    print("The female is smiling");
  }

  bool canEat() => false;

  void walking() {
    print("The female is walking");
  }
}

class Boy extends Male {

}

class Girl extends Female {

}

main(List<String> args) {
  var male = new Male();

  male.smile();
  print(male.canEat());
  male.walking();

  var girl = new Girl();
  print(girl.canEat());
}