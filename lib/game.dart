import 'dart:math';

class Game{
  int answer=0; // instance field
  int total =0;
  Game(){
    var r = Random();
    answer = r.nextInt(100)+1;
    var isCorrect = false;
  }
  int doGuess(int num){
    if(num > answer){
      total++;
      print("$num is Too high");
      return 0 ;
    }else if(num < answer){
      total++;
      print("$num is Too low");
      return 0;
    }else{
      total++;
      print("$num is Correct , total guesses $total");
      total=0;
      return 1;
    }
  }

}