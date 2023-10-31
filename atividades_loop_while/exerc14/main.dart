// números ímpares de 1 a 100 com while
void main() {
  int num = 1;
  while (num <= 100) {
    if (num % 2 != 0) {
      print(num);
    }
    num++;
  }
}