// numeros primos de 1 a 100
void main() {
  for (int i = 2; i <= 100; i++) {
    if(isPrimo(i)) {
      print('Number $i is prime');
    }
  }
}

bool isPrimo(int num) {
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}