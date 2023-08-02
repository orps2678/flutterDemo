import 'package:flutter/foundation.dart';

void main() {
  /// if - else if範例
  handleCase();

  /// 三元運算子
  ternary();

  /// for 迴圈1
  forCircle();

  /// for 迴圈2
  forCircle2();

  /// while 迴圈
  whileCircle();

  /// do while  迴圈
  whileDoCircle();

  /// switch
  performActionBasedOnInput();

  /// 例外處理
  accessListElement();
}

/// 印出console
void poLog(dynamic message) {
  if (kDebugMode) {
    print(message);
  }
}

/// if - else if範例
void handleCase() {
  poLog("-----if - else if範例-----");

  var a = 5;
  if (a > 10) {
    poLog("a 大於 10!");
  } else if (a >= 0 && a <= 10) {
    poLog("a 介於 0到10之間!");
  } else {
    poLog("a小於0");
  }
}

/// 三元運算子
void ternary() {
  poLog("-----三元運算子------");

  var age = 16;
  String verify = age >= 20 ? "滿20歲擁有投票權" : "未滿20歲不能投票";
  poLog(verify);
}

/// for迴圈
/// 第一種
void forCircle() {
  poLog("-----for 迴圈 1-----");

  for (var i = 0; i < 6; i++) {
    poLog("Current value is $i.");
  }
}

/// 第二種
void forCircle2() {
  poLog("-----for 迴圈 2-----");

  var elements = [1, 2, 3, 4, 5];
  for (var element in elements) {
    poLog("Current value is $element");
  }
}

/// while 迴圈
void whileCircle() {
  var a = 5;
  while (a > 0) {
    poLog("while 迴圈 $a");
    a--;

    ///等同於a = a -1(將a-1的意思)
  }

  poLog("while迴圈結束");
}

/// do-while  迴圈
void whileDoCircle() {
  var i = 5;
  do {
    poLog("do while迴圈:$i");
    i--;
  } while (i > 0);
}

/// Switch 能夠依照不同的狀態進行不同的處理，有點類似於if但更為直觀並擁有更好的效能。
void performActionBasedOnInput() {
  var fruit = 'apple';

  switch (fruit) {
    case 'banana':
      poLog("You have a banana");
      break;
    case 'cherry':
      poLog("You have a cherry");
      break;
    case 'apple':
      poLog("You hava an apple");
      break;

    default:

      /// 若沒有符合的case就會執行default
      poLog("Wow, I don;t know what fruit it is.");
  }
}

/// 例外處理
void accessListElement() {
  List<int> numbers = [1, 2, 3];

  try {
    var element = numbers[4];
    poLog("元素：$element");
  } catch (e) {
    poLog("捕獲例外：$e");
  } finally {
    poLog("finally!例外處理結束!");
  }
}
