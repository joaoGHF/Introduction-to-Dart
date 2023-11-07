// funcao que verifica se um numero é primo, com input de usuário
import 'dart:io';

void main() {
  print("Enter the number: ");
  int number = int.parse(stdin.readLineSync()!);

  print("$number is Prime: ${isPrime(number: number)}");
}

bool isPrime({required int number}) {
  for (var i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
