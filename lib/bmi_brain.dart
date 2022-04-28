
import 'dart:math';

class BMIBrain {
  int weight;
  int height;

  double bmi = 0;

  BMIBrain({
    required this.weight,
    required this.height,
  });

  double calculateBMI() {
    //bmi
    bmi = weight / pow(height/100, 2);
    return bmi;
  }

  //
  //Overweight >= 25
  //Normal < 25 y > 18
  //Underweight <= 18

  String getResult(){
    if(calculateBMI() >= 25){
      return "Overweight";
    }else if(calculateBMI() > 18){
      return "Normal";
    }else{
      return "Underweight";
    }
  }

  //Overweight -> Try to excercise more.
  //Normal -> You have a normal body, good job.
  //Underweight -> ...

  String getInterpretation(){
    if(calculateBMI() >= 25){
      return "Try to exercise more.";
    }else if(calculateBMI() > 18){
      return "You have a normal body, good job!";
    }else{
      return "You should eat a little more.";
    }
  }

}
