// Saudacao personalizada
import 'dart:io';

void main(List<String> args) {
  print("Enter your name [required]");
  String name = stdin.readLineSync()!;

  print("Enter your gretting [use '#skip' to skip]: ");
  String greeting = stdin.readLineSync()!;

  if (greeting != "#skip") {
    gettingGreet(name: name, greeting: greeting);
  } else {
    gettingGreet(name: name);
  }
}

void gettingGreet({required String name, String greeting = "Hello"}) {
  print("$greeting $name!");
}