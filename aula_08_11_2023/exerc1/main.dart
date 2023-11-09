// calc idade com ano
import 'dart:io';

void main(List<String> args) {
  print("Enter your year of birth:");
  int yearBirth = int.parse(stdin.readLineSync()!);

  print("You are ${calcAge(yearBirth: yearBirth)} years old");
  print(
      "(In next year, 2024) You are ${calcAge(yearBirth: yearBirth, yearActual: 2024)} years old");
}

int calcAge({required int yearBirth, int yearActual = 2023}) {
  return yearActual - yearBirth;
}
