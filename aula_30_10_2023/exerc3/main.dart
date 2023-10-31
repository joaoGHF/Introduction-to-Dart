// Soma dos números de 1 a 10
void main() {
  int sum = 0;
  for (var i = 1; i <= 10; i++) {
    print('$sum + $i');
    sum += i;
  }

  print('Sum: $sum');
}