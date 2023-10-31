// números primos e 1 a 1000 com while
void main() {
  int num = 2;
  while (num <= 1000) {
    if (isPrime(num)) {
      print(num);
    }
    num++;
  }
}

bool isPrime(int num) {
  int div = 2;
  int stop = (num/2).ceil()+1;
  while (div < stop) {
    if (num % div == 0) {
      return false;
    }
    div++;
  }
  return true;
}