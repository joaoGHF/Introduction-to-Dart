// fatorial de uma entrada de usuario
import 'dart:io';
void main() {
  print('Enter a number: ');
  int? num = int.parse(stdin.readLineSync()!);

  int fat = 1;
  for (int i = num; i > 1; i--) {
    fat *= i;
  }

  print('fat = $fat');

}