// multiplicação dos numeros de 1 a 100
void main() {
  double product = 1;
  for (var i = 1; i <= 100; i++) {
    print('$product * $i');
    product *= i;
  }
}

/*
void main() {
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print('$i * $j = ${i * j}');
    }
    print('--------');
  }
}
*/