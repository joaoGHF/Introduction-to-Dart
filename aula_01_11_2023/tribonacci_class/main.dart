// Criar uma classe para calcular a sequência de tribonacci
void main() {
  Tribonacci tribonacci = Tribonacci();
  tribonacci.calcTribonacciSequenceToLenght(8);

  tribonacci.printTribonacciToLenght(10);

  print('- - - - - - - - - -');

  tribonacci.printTribonacciToLenght(8);

  print('- - - - I N D E X - - - - - -');

  tribonacci.printTribonacciIndex(3);
  tribonacci.printTribonacciIndex(12);

  print('\n- - - -  S E Q U E N C E - - - - - -');
  tribonacci.printTribonacciSequence();
}

class Tribonacci {
  List<int> tribonacciSequence = [1, 1, 2];

  void calcNextTribonaci() {
    int next = tribonacciSequence[tribonacciSequence.length - 3] +
        tribonacciSequence[tribonacciSequence.length - 2] +
        tribonacciSequence[tribonacciSequence.length - 1];

    tribonacciSequence.add(next);
  }

  void calcTribonacciSequenceToLenght(int len) {
    while (tribonacciSequence.length < len) {
      this.calcNextTribonaci();
    }
  }

  void printTribonacciSequence() {
    for (var i = 0; i < tribonacciSequence.length; i++) {
      print('Tribonacci(${i + 1}) = ${tribonacciSequence[i]}');
    }
  }

  void printTribonacciToLenght(int len) {
    if (len > tribonacciSequence.length) {
      calcTribonacciSequenceToLenght(len);
    }

    for (var i = 0; i < len; i++) {
      print('Tribonacci(${i + 1}) = ${tribonacciSequence[i]}');
    }
  }

  void printTribonacciIndex(int index) {
    if (index > tribonacciSequence.length) {
      calcTribonacciSequenceToLenght(index);
    }

    print('Tribonacci(${index}) = ${tribonacciSequence[index-1]}');
  }
}
