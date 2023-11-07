void main(List<String> args) {
  JogoDaVelha game = JogoDaVelha();
  game.setPosix(1, 1, game.player1);
  game.setPosix(0, 1, game.player2);

}

class JogoDaVelha {
  String player1 = "X";
  String player2 = "O";

  List<List<String>> table = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];

  bool setPosix(int row, int colm, String player) {
    if (table[row][colm] == "") {
      table[row][colm] = player;
      return true;
    } else {
      return false;
    }
  }

  void printTable() {
    for (var i = 0; i < table.length; i++) {
      String line = "";
      for (var j = 0; j < table[i].length; j++) {
         // TODO: continue here, imprimir cada char e depois um separdor de linha
      }
    }
  }

}