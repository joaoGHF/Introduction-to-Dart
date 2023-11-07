// Calcular imc, com input de usuário
import 'dart:io';

void main() {
  print("Enter the height: ");
  double height = double.parse(stdin.readLineSync()!);

  print("Enter the weight: ");
  double weight = double.parse(stdin.readLineSync()!);

  print("The IMC is ${getIMC(height: height, weight: weight)}");
}

double getIMC({required double height, required double weight}) {
  return weight / (height * height);
}
