import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  /// 4.2.1 Dart語言基礎知識
  dateAndTimeCategory();

  /// 4.2.2 符號!,?和??的用法
  String abc = 'going home';
  String? def;
  poLog("This str length is ${getLength("")}");
  poLog(getLength(def ?? 'default'));

  /// 4.2.3 final和const使用區別
  finalConst();

  /// 4.2.4 dynamic和var的區別
  dynamicAndVar();

  /// 4.2.5 late的用法
  testLast();

  /// 4.2.6 List的用法
  testList();

  /// 4.2.7 ...的用法
  spreadOperator();

  /// 4.2.8 List循環輸出、匿名函數、箭頭函數
  processListItems();

  /// 4.2.9 List.generate的用法
  listGenerate();

  /// 4.2.10 Set的用法
  testSet();

  /// 4.2.11 Map的用法
  testMap();

  /// 4.2.12 fold的用法
  testFold();
}

/// 4.2.1 Dart語言基礎知識
void dateAndTimeCategory() {
  /// 日期時間類的用法
  var now = DateTime.now();
  poLog('現在是${now.year}年${now.month}月${now.day}日${now.hour}點${now.minute}分');

  var birthday = DateTime.parse("2021-09-15 01:18:01");
  Duration difference = now.difference(birthday);

  poLog('相差的天數為${difference.inDays}');

  var beijingTime = DateTime.utc(2022, DateTime.january, 9);
  poLog(beijingTime.weekday == DateTime.sunday);
  poLog("星期一：${DateTime.monday}");
  poLog("星期二：${DateTime.tuesday}");
  poLog("星期三：${DateTime.wednesday}");
  poLog("星期四：${DateTime.thursday}");
  poLog("星期五：${DateTime.friday}");
  poLog("星期六：${DateTime.saturday}");
  poLog("星期天：${DateTime.sunday}");

  /// 得到當前的時間
  TimeOfDay now2 = TimeOfDay.now();
  const TimeOfDay releaseTime = TimeOfDay(hour: 15, minute: 0);
  TimeOfDay roomBooked =
      TimeOfDay.fromDateTime(DateTime.parse("2018-10-20 16:30:04Z"));
  poLog(releaseTime);
  poLog(roomBooked);
}

/// 4.2.2 符號!, ?和??的用法
/// ?代表變數可為空
int getLength(String? str) {
  if (str == null) {
    return 0;
  }

  return str.length;
}

/// 4.2.3 final和const使用區別
void finalConst() {
  const address = 'tsunami wu';

  /// const now = DateTime.now();compile error
  /// 每次調用時，會取得當前的時間，每次都會變動，所以在編譯時期無法確定他的值是不變的，並且隨時都在改變，所以不能放在const
  final now = DateTime.now();

  /// final的值可以在運行時確定，但在被初始化後不能再更改，這使得final比const更家靈活 => 因為他允許你使用在編譯時無法確定的值
  /// now = DateTime.parse("2023-08-06");
  /// 這樣會導致Can't assign to the final variable 'now'.因final已經初始化 所以不能在將now的值做改變
}

/// 4.2.4 dynamic 和var的區別
void dynamicAndVar() {
  var a = 1;
  a = 2;

  /// a = '哈哈'; var 被賦予變數類型後，變數類型無法在改變
  /// a 已經被賦予為整數 => 不可再被改變成String

  dynamic b = 1;
  b = 2;
  b = 2.443;
  b = "嘿嘿";
  b = [1, "啊哈", 3.14];

  /// dynamic 可以在被賦予值後，再次地去改變型態
}

/// 4.2.5 late的用法
/// 加入late後會導致 user本來在創建時就要帶出 name 但卻在執行到user.getName();時才創建name變數
void testLast() {
  User user = User();
  poLog('begin');
  poLog(user.getName());
}

class User {
  late String name = getName();

  String getName() {
    poLog('......');
    return 'abc';
  }
}

/// 4.2.6 List初始化、添加元素、取值
void testList() {
  List<int> myList = [];
  myList.add(1);
  poLog(myList[0]);
}

/// 4.2.7 ...(spread operator)的用法
void spreadOperator() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  poLog(list2);
}

/// 4.2.8 List循環輸出、匿名函數、箭頭函數
void processListItems() {
  var myList = List<int>.filled(5, 0);

  /// 產生一個List<int> 長度5 資料初始都為0 的List
  myList[0] = 100;
  myList[1] = 200;
  myList[2] = 300;

  /// 第一種方法 for循環輸出List結果
  poLog("---one---");
  for (int element in myList) {
    ///stdout.write('$element '); 在純Dart 命令行應用程序中使用才會印在Run
    poLog(element);
  }

  /// 第二種方法 通過forEach輸出, => 代表箭頭函數
  poLog("---two---");
  myList.forEach((element) => poLog(element));

  /// 第三種方法 傳統的循環輸出方式
  poLog("---three---");
  for (int i = 0; i < myList.length; i++) {
    poLog(myList[i]);
  }
}

/// 4.2.9 List.generate的用法 產生10個數值，0~9 index = 0*0, 1*1 依此類推
void listGenerate() {
  var list3 = List<int>.generate(10, (index) => index * index);
  poLog(list3);

  ///  [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
}

/// 4.2.10 Set的用法
void testSet() {
  Set<String> companies = {'google', 'aws', 'tgl'};
  poLog(companies);

  ///  output : {google, aws, tgl}
  companies.add('google');
  poLog(companies);

  ///  output : {google, aws, tgl} Set中不能有相同的值

  /// 方法一：傳統輸出方式
  poLog("---方法一---");
  for (String company in companies) {
    poLog(company);
  }

  poLog("---方法二---");
  companies.forEach((element) => poLog(element));

  /// assert斷言 在測試環境跟開發環境中 => 他會去檢查是否條件為true
  /// 若結果為false則會中斷程式並且拋出錯誤AssertionError，注意! 他在正式生產環境中將被忽略也不會導致程式中斷。
  assert(companies.contains('google'));
}

/// 3.2.11 Map的用法
void testMap() {
  Map<String, String> companies = {};
  companies['one'] = "sina";
  companies['two'] = "baidu";
  companies['three'] = "sou";
  companies['four'] = "google";

  /// 輸出鍵的值
  poLog("---輸出鍵的值---");
  for (var key in companies.keys) {
    poLog("鍵的輸出：$key");
  }

  /// 輸出鍵對應的值
  poLog("---輸出鍵對應的值---");
  for (var value in companies.values) {
    poLog("值的輸出：$value");
  }

  ///輸出鍵 - 值
  poLog("---輸出鍵 - 值---");
  companies.forEach((key, value) => poLog("鍵：$key 值 : $value"));
}

/// 4.2.12 fold的用法
void testFold() {
  List<int> score = [1, 3, 5, 7, 9];
  var amount = 0;

  /// 0 = 總和的初始值, previousValue = 現在的累加值, element = 個別的值 => 每次都進行累加
  amount = score.fold(0, (previousValue, element) => previousValue + element);

  /// output : 25
  poLog(amount);
}

void poLog(dynamic logText) {
  if (kDebugMode) {
    print(logText);
  }
}
