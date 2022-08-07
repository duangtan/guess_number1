import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  var game = Game();
  int result = 0;
  int count = 0;
  while (result!=1){
    stdout.write("Please guess the number between 1 and 100 ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if(guess == null){
      print("Please enter number only");
      continue;
    }
    result = game.doGuess(guess);
  }


  while (count==0){
    if(result==1){
      print("คุณต้องการเริ่มเกมใหม่ไหม ");
      print('ถ้าใช่พิมพ์ "y" ถ้าไม่ใช่พิมพ์ "n"');
      result=0;
      var input2 = stdin.readLineSync();
      if(input2 == 'y'){
        while (result!=1){
          stdout.write("Please guess the number between 1 and 100 ");
          var input = stdin.readLineSync();
          var guess = int.tryParse(input!);

          if(guess == null){
            print("Please enter number only");
            continue;
          }
          result = game.doGuess(guess);
        }
      }else{
        count=1;
        stdout.write("END");
      }
  }
  }
}

