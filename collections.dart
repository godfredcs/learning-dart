// Collections

// Collections are used to contain a set of values

// In dart list is the same as array [1, 2, 5] but all the values have to be of the same type.

// And we have map which is basically just like JSON


class Person {
  String name;
  Person(this.name);
}

main(List<String> args) {
  var someList = [1, 5, 10]; // So this is the normal way of creating a list just like arrays in javascript.
  // The type that the list above is supposed to contain is determined by the first element in the list.

  print(someList[2]);

  // We also have generic way of creating list in dart as shown below.
  var anotherList = new List<String>(); // Notice the syntax. The String means the list accepts only strings.
  // Then we can add unto the list with the add() method.

  anotherList.add("Godfred");
  anotherList.add("Boateng");
  anotherList.add("Addai");

  for (int i = 0; i < anotherList.length; i++) {
    print(anotherList[i]);
  }

  // List has methods and properties eg. length which returns the length of the list.

  // The type of a list can be anything, even a user defined object.

  var shuga = new Person("Shuga");
  var akwasi = new Person("Akwasi");

  var personList = new List<Person>(); // Now the list will only accept Person object types.
  personList.add(shuga);
  personList.add(akwasi);
  print(personList[0].name);


  // Now map
  // Map variables are created like below.
  var someMap = {
    "first": "This is the first",
    "second": "Second is this",
    3: "And this is the third", // Notice there's no strings around the key because it is a number.
    "fourth": 4
  };

  // To iterate through a map we can use the foreach method
  someMap.forEach((k, v) => print(k)); // k is the key and v is the value.

  // We also have some properties on maps eg. keys and values properties.
  print(someMap.keys);
  print(someMap.values);

}