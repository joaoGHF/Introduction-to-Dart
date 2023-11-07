// func soma dois nums, input do usuário
import 'dart:io';

void main() {
  print("Enter the number 1: ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter the number 2: ");
  int num2 = int.parse(stdin.readLineSync()!);

  print("$num1 + $num2 = ${sum(a: num1, b: num2)}");
}

int sum({required int a, required int b}) {
  return a + b;
}
