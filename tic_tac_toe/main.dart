import 'dart:io';

void main(List<String> args) {
  TicTacToe game;

  while (true) {
    print("================================\n" +
          "=========TIC__TAC__TOE==========\n" +
          "================================");
    game = TicTacToe();

    while (!game.haveWinner(game.player1) || !game.haveWinner(game.player2)) {
      game.tryMove(game.player1);

      if (game.haveWinner(game.player1)) {
        print("Player 1 (${game.player1}) is win");
        break;
      }

      game.tryMove(game.player2);

      if (game.haveWinner(game.player2)) {
        print("Player 2 (${game.player2}) is win");
        break;
      }
    }

    print("Do you want to play again? [Y/any]: ");
    String wantPlay = stdin.readLineSync()!;

    if (wantPlay == "Y" || wantPlay == "y") {
      print("Continuating game...\n\n\n\n");
    } else {
      print("==================\n" + 
            "=====END GAME=====\n" +
            "==================");
      break;
    }
  }
}

class TicTacToe {
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

  bool playerMove({required String player}) {
    print("player $player > enter a row: ");
    int row = int.parse(stdin.readLineSync()!);

    print("player $player > enter a column: ");
    int column = int.parse(stdin.readLineSync()!);

    if (this.setPosix(row, column, player)) {
      this.printTable();
      return true;
    } else {
      print("---- Error on setPosix(), verify your coordinates ----");
      this.printTable();
      return false;
    }
  }

  void tryMove(String player) {
    if (!this.playerMove(player: player)) {
      return tryMove(player);
    }
  }
}
