// calcule a soma dos numeros de 1 a 100 com um while
void main() {
  int sum = 0;
  int count = 1;
  while (count <= 100) {
    sum += count;
    count++;
  }

  print(sum);
}