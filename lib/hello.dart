import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  print("ต้องการกำหนดค่าสูงสุดของเลขสุ่มเป็นเท่าไหร่ ");
  var ipmaxR = stdin.readLineSync();
  var maxRandom = int.tryParse(ipmaxR!);
  if(maxRandom == null||maxRandom>100){
    maxRandom = 100;
  }
  var game = Game(maxRandom);
  int result = 2;
  int count = 0;
  int countplay =1;
  List<int> round = [];
  round.add(0);
  //var len = round.length;
  while (result!=1){
    stdout.write("Please guess the number between 1 and $maxRandom ");
    var inputguess = stdin.readLineSync();
    var guess = int.tryParse(inputguess!);

    if(guess == null){
      print("!!Please enter number only!!");
      continue;
    }
    result = game.doGuess(guess);
  }round.add(game.total);



  while (count==0){
    if(result==1) {
      print("คุณต้องการเริ่มเกมใหม่ไหม ");
      print('ถ้าใช่พิมพ์ "y" ถ้าไม่ใช่พิมพ์ "n"');
      result = 0;
      var inputagain = stdin.readLineSync();
      if (inputagain == 'y' || inputagain == 'Y') {
        countplay++;
        print("ต้องการกำหนดค่าสูงสุดของเลขสุ่มเป็นเท่าไหร่ ");
        var ipmaxR = stdin.readLineSync();
        var maxRandom = int.tryParse(ipmaxR!);
        if(maxRandom == null||maxRandom>100){
          maxRandom = 100;
        }
        var game = Game(maxRandom);
        while (result != 1) {
          stdout.write("Please guess the number between 1 and $maxRandom ");
          var input = stdin.readLineSync();
          var guess = int.tryParse(input!);
          if (guess == null) {
            print("!!Please enter number only!!");
            continue;
          }
          result = game.doGuess(guess);
        }round.add(game.total);
      } else if (inputagain == 'n' || inputagain == 'N') {
        count = 1;
        if (countplay == 1) {
          print("You have played $countplay game");
        } else {
          print("You have played $countplay games");

        }for(var i=1;i<round.length;i++){
          stdout.write("Game [$i] : ");
          print(round[i]);
        }
        print("END");

      }else {
        result = 1;
      }
    }
  }
}

