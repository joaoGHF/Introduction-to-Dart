void main() {
  int idade = 26;
  print('idade: $idade');

  if (idade >= 0 && idade <= 12) {
    print('criança');
  } else if (idade >= 13 && idade <= 17) {
    print('adolescente');
  } else if (idade >= 18 && idade <= 60) {
    print('adulto');
  } else {
    print('idoso');
  }

  print('\n---TEMPERATURA---\n');

  double temperatura = 0.3;
  print('temperatura: $temperatura');

  if (temperatura >= -30 && temperatura <= 0) {
    print('muito frio');
  } else if (temperatura > 0 && temperatura <= 12) {
    print('frio');
  } else if (temperatura > 12 && temperatura <= 20) {
    print('temperado');
  } else if (temperatura > 20 && temperatura <= 31) {
    print('quente');
  } else if (temperatura > 31) {
    print('muito quente');
  } else {
    print('ERRO, valor não deve ser menor que -30');
  }
}
