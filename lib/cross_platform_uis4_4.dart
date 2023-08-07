import 'package:flutter/foundation.dart';

/// 4.4異步操作
void main(List<String> args) {
  poLog('start');
  getCount();
  poLog('end');
  printDateTime();
}

/// 4.4.2 Future異步的表現
void getCount() {
  poLog('Before future');
  final result = Future<int>.delayed(
    const Duration(seconds: 3),
    () => 100,
  )
      .then(
        (value) => poLog('Value: $value'),

        /// then表示異步操握完成後，返回執行結果，此處為3s後執行
      )
      .catchError(
        (error) => poLog('Error:$error'),

        ///  catchError表示捕獲錯誤
      )
      .whenComplete(() => poLog('Future is complete')

          ///  whenComplete不管有沒有異常，都會被執行，類似finally
          );
  poLog('After future');
}

/// 4.4.2 回傳結果
Future<int> getCount2() async {
  final result =
      await Future<int>.delayed(const Duration(seconds: 3), () => 100);
  return result;
}

/// 4.4.3 Streams流操作
void printDateTime() async {
  Stream source = Stream<String>.periodic(const Duration(seconds: 1), (value) {
    var now = DateTime.now().toString();
    return now;
  }).take(10);
  await for (var event in source) {
    poLog(event);
  }
}

void poLog(dynamic logText) {
  if (kDebugMode) {
    print(logText);
  }
}
