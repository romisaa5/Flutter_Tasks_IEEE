import 'dart:io';
import 'dart:math';

void main() {
  print(r"""
   _______         ________             _______        
  |__   __|       |__    __|           |__   __|       
     | |   _  ___     | | ____  ____      | | ___   ______
     | |  | |/ ___\   | |/ _  |/  __\     | |/ _ \ /  __  \
     | |  | | |___    | | (_| |  |___     | |  __/|  (__)  |
     |_|  |_|\____/   |_|\__,_|\____/     |_|\___| \______/ 
  """);

  print('To play with your friend Enter 1 :-');
  print('To play with a computer Enter 2 :-');
  int mode = int.parse(stdin.readLineSync() ?? '1');

  List<List<int>> winIndexes = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  List<String> board = List.filled(9, "");
  String currentPlayer = "X";

  void displayBoard() {
    print(
        "\n ${board[0] == "" ? "1" : board[0]} | ${board[1] == "" ? "2" : board[1]} | ${board[2] == "" ? "3" : board[2]}");
    print("---|---|---");
    print(
        " ${board[3] == "" ? "4" : board[3]} | ${board[4] == "" ? "5" : board[4]} | ${board[5] == "" ? "6" : board[5]}");
    print("---|---|---");
    print(
        " ${board[6] == "" ? "7" : board[6]} | ${board[7] == "" ? "8" : board[7]} | ${board[8] == "" ? "9" : board[8]}\n");
  }

  bool checkWinner(String player) {
    for (var win in winIndexes) {
      if (board[win[0]] == player &&
          board[win[1]] == player &&
          board[win[2]] == player) {
        return true;
      }
    }
    return false;
  }

  void playComputer() {
    for (var win in winIndexes) {
      if (board[win[0]] == board[win[1]] &&
          board[win[0]] == "O" &&
          board[win[2]] == "") {
        board[win[2]] = "O";
        return;
      }
      if (board[win[0]] == board[win[2]] &&
          board[win[0]] == "O" &&
          board[win[1]] == "") {
        board[win[1]] = "O";
        return;
      }
      if (board[win[1]] == board[win[2]] &&
          board[win[1]] == "O" &&
          board[win[0]] == "") {
        board[win[0]] = "O";
        return;
      }
    }

    List<int> availableMoves = [];
    for (int i = 0; i < board.length; i++) {
      if (board[i] == "") {
        availableMoves.add(i);
      }
    }
    if (availableMoves.isNotEmpty) {
      board[availableMoves[Random().nextInt(availableMoves.length)]] = "O";
    }
  }

  while (true) {
    displayBoard();
    print("$currentPlayer's turn. Enter a position (1-9):");
    int move = int.parse(stdin.readLineSync() ?? '1') - 1;

    if (move < 0 || move > 8 || board[move] != "") {
      print("Invalid move! Try again.");
      continue;
    }

    board[move] = currentPlayer;

    if (checkWinner(currentPlayer)) {
      displayBoard();
      print("$currentPlayer wins!");
      break;
    }

    if (!board.contains("")) {
      displayBoard();
      print("It's a draw!");
      break;
    }

    currentPlayer = (currentPlayer == "X") ? "O" : "X";

    if (mode == 2 && currentPlayer == "O") {
      playComputer();
      if (checkWinner("O")) {
        displayBoard();
        print("Computer wins!");
        break;
      }
      currentPlayer = "X";
    }
  }
}
