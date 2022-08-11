import 'dart:math';

class Game{
  int answer=0; // instance field
  int total =0;
  int maxRandom =100;

  Game(int maxRandom){
    var r = Random();
    answer = r.nextInt(maxRandom)+1;
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
      return 1;
    }total=0;
  }

}