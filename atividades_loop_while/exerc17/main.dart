// numeros entre 1000 e 2000 que produzem (inclusive) resto = 2 quando divididos por 11
void main() {
  int count = 1000;
  while (count <= 2000) {
    if (count % 11 == 2) {
      print('Number $count; $count % 11 = ${count % 11}');
    }

    count++;
  }
}