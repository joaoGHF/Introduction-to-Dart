// multiplicação dos numeros de 1 a 100
void main() {
  double product = 1;
  for (var i = 1; i <= 100; i++) {
    print('$product * $i');
    product *= i;
  }
}