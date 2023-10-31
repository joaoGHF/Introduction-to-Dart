// sequência de fibonacci de 0 a 100
void main() {
  int n1 = 1;
  int n2 = 1;

  int count = 1;

  for (int i = 1; i < 7; i++) {
    if (n1 > 100) {
      break;
    }
    
    print('f(${count++}) = $n1');

    if (n2 > 100) {
      break;
    }

    print('f(${count++}) = $n2');

    n1 = n1 + n2;
    n2 = n1 + n2;
  }
}