// fibonacci de 0 a 100 com um loop while
void main() {
  int result = 1;
  int oldResult = 1;
  int iterations = 1;

  print('fibonacci(${iterations++}) = 1');

  while (result < 100) {
    //print('result = $result; old = $oldResult');
    print('fibonacci(${iterations++}) = $result');

    result = result + oldResult;
    oldResult = result - oldResult;

  }
}