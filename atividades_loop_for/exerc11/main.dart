// DESAFIO: ler 5 numeros e encontar o maior e o menor deles, exibir os resultados
import 'dart:io';
void main() {
  List<int> numbers = [];

  for (int i = 0; i < 5; i++) {
    print('Enter the number for position $i: ');
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int maxNum = numbers[0];
  int minNum = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxNum) {
      maxNum = numbers[i];
    }

    if (numbers[i] < minNum) {
      minNum = numbers[i];
    }
  }

  print('numbers list = $numbers');

  print('Maximum is: $maxNum');
  print('Minimum is: $minNum');
}