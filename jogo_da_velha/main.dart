void main(List<String> args) {
  JogoDaVelha game = JogoDaVelha();
  game.setPosix(1, 1, game.player1);
  game.setPosix(0, 1, game.player2);

  game.printTable();
}

class JogoDaVelha {
  String player1 = "X";
  String player2 = "O";

  List<List<String>> table = [
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ];

  bool setPosix(int row, int colm, String player) {
    if (table[row][colm] == " ") {
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
        line += "[" + table[i][j] + "]";
      }
      print(line);
    }
  }

  bool haveWinner(String player) {
    for (var i = 0; i < table.length; i++) {
      //verifica a linha
      if (table[i][0] == player &&
          table[i][1] == player &&
          table[i][2] == player) {
        return true;
      }

      //verifica a coluna
      if (table[0][i] == player &&
          table[1][i] == player &&
          table[2][i] == player) {
        return true;
      }
    }

    // verifica a diagonal 1
    if (table[0][0] == player &&
        table[1][1] == player &&
        table[2][2] == player) {
      return true;
    }

    // verifica a diagonal 2
    if (table[0][2] == player &&
        table[1][1] == player &&
        table[2][0] == player) {
      return true;
    }

    return false;
  }
}
