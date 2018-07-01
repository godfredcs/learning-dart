// Functions

main(List<String> args) {
  sayHi();
  saySmile();

  int something = calcSomething();
  print(something);

  print(printName('John', 'Boo'));

  print(calcAmount(50));

  print(describeMe("Thomas", "Spaghetti", 20));

  print(describeMe("Jefferson", "Pizza"));

}

// Unlike other programming languages, funcitons in dart are declared without the function keyword.
sayHi() {
  print('Hi');
  saySmile(); // Functions can be called in other functions
}

// Functions that do not return anything are declared as straight forwared like sayHi above or prefixed with void like below
void saySmile() {
  print("smile");
}

// This function returns an int, we can have other functions also returning the other types.
int calcSomething() {
  return 5 * 2;
}

// We can pass parameters to functions like below NB: when calling the function, all the arguments must be supplied.
String printName(String firstname, String lastname) {
  return "$firstname $lastname";
}

// If a function returns one thing we can convert it into a function body like below.
double calcAmount(int price) => price * 24.36;

// We can have a function accept optional arguments by using the square brackets like below.
String describeMe(String firstname, String fav_food, [int age]) {
  if (age != null) return "Your name is $firstname and your favorite food is $fav_food, you are $age years old";
  return "Your name is $firstname and your favorite food is $fav_food";
}

// Lexical scope in dart
// Dart variables declared at the top outside of the main function can be accessed by all functions.
// Variables declared inside of a function are only available to the function and the other functions declared inside it.
