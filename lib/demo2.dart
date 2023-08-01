import 'package:flutter/foundation.dart';

void main(){
  /// if - else if範例
  handleCase();

  /// 三元運算子
  ternary();

  /// for 迴圈1
  forCircle();

  /// for 迴圈2
  forCircle2();
}

/// 印出console
void poLog(dynamic message){
  if(kDebugMode){
    print(message);
  }
}

/// if - else if範例
void handleCase(){
  poLog("-----if - else if範例-----");

  var a = 5;
  if(a > 10){
    poLog("a 大於 10!");
  } else if(a >= 0 && a <= 10){
    poLog("a 介於 0到10之間!");
  } else{
    poLog("a小於0");
  }
}

/// 三元運算子
void ternary(){
  poLog("-----三元運算子------");

  var age = 16;
  String verify = age >= 20 ? "滿20歲擁有投票權" : "未滿20歲不能投票";
  poLog(verify);
}

/// for迴圈
/// 第一種
void forCircle(){
  poLog("-----for 迴圈 1-----");

  for(var i = 0; i< 6; i++){
    poLog("Current value is $i.");
  }
}

///第二種
void forCircle2(){
  poLog("-----for 迴圈 2-----");

  var elements = [1, 2, 3, 4, 5];
  for(var element in elements){
    poLog("Current value is $element");
  }
}