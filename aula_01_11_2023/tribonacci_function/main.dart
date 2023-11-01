// Calcular a sequência de Tribonacci
void main() {
  for (int i = 1; i <= 15; i++) {
    print('Tribonacci ($i) = ${tribonacci(i)}');
  }
}

int tribonacci(int t) {
  if (t <= 2) {
    return 1;
  } else if (t == 3) {
    return 2;
  }

  return tribonacci(t-1) + tribonacci(t-2) + tribonacci(t-3);
}