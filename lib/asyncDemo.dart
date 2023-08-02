import 'dart:async';

import 'package:flutter/foundation.dart';

/// Async 非同步
/*
Future<void> introduction(){
  return Future.delayed(Duration(seconds: 2), () => poLog("Dart tutorial"));
}

void main(){
  /// log 輸出的順序為"Before intorduction" -> "After intorduction" -> "Dart tutorial"
  poLog("Before introduction");
  introduction();
  poLog("After introduction");
}
*/

/// 加入await後程式會等待introduction執行完成取得回傳值後繼續執行下去
Future<String> introduction() {
  return Future<String>.delayed(Duration(seconds: 2), () => "Dart tutorial");
}

void main() async {
  /// log 輸出結果變成"Before intorduction" -> "Dart tutorial" -> "After intorduction"
  poLog("Before introduction");
  poLog(await introduction());
  poLog("After introduction");
}

void poLog(dynamic log) {
  if (kDebugMode) {
    print(log);
  }
}
