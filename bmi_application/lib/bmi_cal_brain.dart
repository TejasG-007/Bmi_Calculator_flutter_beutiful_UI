import 'dart:math';
class Calculator {
  Calculator({this.height,this.weight});
  final int weight;
  final int height;
  double _bmi;
  String BmiCal(){
     _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getresult(){
    if(_bmi>=25.0){
      return "Overweight";
    }else if (_bmi>18.5){
      return "Normal";
    }else{
      return "Underweight";
    }
  }
  String getInt(){
    if(_bmi>=25){
      return "You have Higher than Normal body weight ,\n Try to Excercise more ";
    }else if (_bmi>18.5){
      return "You have Normal body weight ,\n GooD Job!";
    }else{
      return "You have Lower than Normal body weight ,\n Try to Eat more";
    }
  }
}