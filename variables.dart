// Variables

main(List<String> args) {
  var name = "Godfred"; // var is used for dynamic variables.
  print(name);

  name = "Larry";
  print(name);

  // Then there are the static variables.
  num some_number = 2; // num is for "int" and "double".
  print(some_number);

  int number = 4;
  print(number);

  double another_number = 4.2;
  print(another_number);

  String gender = "male";
  print(gender);

  bool isTrue = true;
  print(isTrue);

  // var
  // num
  // int
  // double
  // String
  // bool

  // Then we have "const" and "final" Ok so final and const behave almost the same in they can't be reassigned.
  const pie = 3.142;
  final dream = 'viscious';
  print(dream);
  print(pie);

  // We also have the "is" and "is!" and these are called the type checking operators.
  bool isInt = pie is int;
  print(isInt);

  bool notString = dream is! String;
  print(notString);


  // Concatenation
  // You can concatenate strings and other data types by using the dollar sign in the quotes like blow
  print("Pie is: $pie"); // This done by placing the dollar sign infront of the variable pie inside the string.

  // However if you'd want to perform other expressions on the variables during concatenation the you need to wrap the variable inside curly braces like below
  print("my dream is very ${dream.toUpperCase()}");
  print("Pie has been changed to ${pie * 5}");
}