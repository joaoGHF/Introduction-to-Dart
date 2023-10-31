// Exercício Chico e Zé
void main() {
  int chico = 150;
  int crescimentoChico = 2;

  int ze = 110;
  int crescimentoZe = 3;

  int anos = 0;

  while (chico >= ze) {
    chico += crescimentoChico;
    ze += crescimentoZe;
    anos++;
  }

  print('Depos de $anos anos, Chico terá $chico cm de altura e Zé terá $ze cm de altura');
}